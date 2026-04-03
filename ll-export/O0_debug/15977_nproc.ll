; ModuleID = 'src/nproc.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.cpu_set_t = type { [16 x i64] }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [285 x i8] c"Print the number of processing units available to the current process,\0Awhich may be less than the number of online processors.\0AIf the 'OMP_NUM_THREADS' or 'OMP_THREAD_LIMIT' environment variables are set,\0Athen they will determine the minimum and maximum returned value respectively.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nproc\00", align 1
@.str.4 = private unnamed_addr constant [135 x i8] c"      --all\0A         print the number of installed processors,\0A         disregarding any OpenMP environment variables, or CPU quotas.\0A\00", align 1
@.str.5 = private unnamed_addr constant [120 x i8] c"      --ignore=N\0A         if possible, exclude N processing units.\0A         The result is guaranteed to be at least 1.\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 1, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1
@optarg = external global i8*, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@optind = external global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !41
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), align 8, !dbg !62
@file_name = internal global i8* null, align 8, !dbg !67
@ignore_EPIPE = internal global i8 0, align 1, !dbg !72
@.str.58 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.59 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.60 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !75
@stderr = external global %struct._IO_FILE*, align 8
@.str.62 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !104
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !81
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !100
@.str.1.68 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.69 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.70 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !102
@.str.4.63 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.64 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.65 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@.str.1.78 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1
@.str.2.79 = private unnamed_addr constant [18 x i8] c"/proc/self/cgroup\00", align 1
@.str.3.80 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4.81 = private unnamed_addr constant [5 x i8] c"0::/\00", align 1
@.str.5.82 = private unnamed_addr constant [13 x i8] c"%s%s/cpu.max\00", align 1
@.str.6.83 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.7.84 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str.8.85 = private unnamed_addr constant [34 x i8] c"/sys/fs/cgroup/cgroup.controllers\00", align 1
@.str.9.86 = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1
@.str.10.87 = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1
@.str.11.88 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !109
@.str.93 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.94 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !115
@.str.97 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.98 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.99 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.100 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.101 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.102 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.103 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.104 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.105 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.106 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.99, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.100, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.101, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.104, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.105, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.106, i32 0, i32 0), i8* null], align 8, !dbg !126
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !155
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !173
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !188
@nslots = internal global i32 1, align 4, !dbg !195
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !175
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !197
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !161
@.str.10.107 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.108 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.109 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !180
@.str.117 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.118 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.119 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.120 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.121 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.122 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.123 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.124 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.125 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.126 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.127 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.128 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.129 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.130 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.131 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.132 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.133 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.138 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.139 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.140 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.141 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.142 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.143 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.144 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !203
@exit_failure = dso_local global i32 1, align 4, !dbg !211
@.str.157 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.155 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.156 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.189 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !217
@.str.200 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.201 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !557 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !560, metadata !DIExpression()), !dbg !561
  %3 = load i32, i32* %2, align 4, !dbg !562
  %4 = icmp ne i32 %3, 0, !dbg !564
  br i1 %4, label %5, label %12, !dbg !565

5:                                                ; preds = %1
  br label %6, !dbg !566

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !567
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #19, !dbg !567
  %9 = load i8*, i8** @program_name, align 8, !dbg !567
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !567
  br label %11, !dbg !567

11:                                               ; preds = %6
  br label %23, !dbg !567

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)) #19, !dbg !569
  %14 = load i8*, i8** @program_name, align 8, !dbg !571
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !572
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([285 x i8], [285 x i8]* @.str.2, i64 0, i64 0)) #19, !dbg !573
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !573
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !573
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @.str.4, i64 0, i64 0)) #19, !dbg !574
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !574
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0)) #19, !dbg !575
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !575
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !576
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !576
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !577
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !577
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !578
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32, i32* %2, align 4, !dbg !579
  call void @exit(i32 noundef %24) #20, !dbg !580
  unreachable, !dbg !580
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !43 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !581, metadata !DIExpression()), !dbg !582
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !583, metadata !DIExpression()), !dbg !584
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !585
  %15 = icmp eq i32 %14, -1, !dbg !587
  br i1 %15, label %16, label %30, !dbg !588

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !589, metadata !DIExpression()), !dbg !591
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #19, !dbg !592
  store i8* %17, i8** %5, align 8, !dbg !591
  %18 = load i8*, i8** %5, align 8, !dbg !593
  %19 = icmp ne i8* %18, null, !dbg !593
  br i1 %19, label %20, label %27, !dbg !594

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !595
  %22 = load i8, i8* %21, align 1, !dbg !596
  %23 = icmp ne i8 %22, 0, !dbg !596
  br i1 %23, label %24, label %27, !dbg !597

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !598
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)), !dbg !599
  br label %27, !dbg !597

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !597
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !600
  br label %30, !dbg !601

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !602
  %32 = icmp ne i32 %31, 0, !dbg !602
  br i1 %32, label %33, label %37, !dbg !604

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !605
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !605
  br label %274, !dbg !607

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !608, metadata !DIExpression()), !dbg !609
  store i8 1, i8* %6, align 1, !dbg !609
  call void @llvm.dbg.declare(metadata i8** %7, metadata !610, metadata !DIExpression()), !dbg !611
  %38 = load i8*, i8** %4, align 8, !dbg !612
  %39 = load i8*, i8** %4, align 8, !dbg !613
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #21, !dbg !614
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !615
  store i8* %41, i8** %7, align 8, !dbg !611
  call void @llvm.dbg.declare(metadata i8** %8, metadata !616, metadata !DIExpression()), !dbg !617
  %42 = load i8*, i8** %4, align 8, !dbg !618
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #21, !dbg !619
  store i8* %43, i8** %8, align 8, !dbg !617
  %44 = load i8*, i8** %8, align 8, !dbg !620
  %45 = icmp ne i8* %44, null, !dbg !620
  br i1 %45, label %48, label %46, !dbg !622

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !623
  store i8* %47, i8** %8, align 8, !dbg !625
  store i8 0, i8* %6, align 1, !dbg !626
  br label %89, !dbg !627

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !628
  %50 = load i8*, i8** %7, align 8, !dbg !630
  %51 = icmp ne i8* %49, %50, !dbg !631
  br i1 %51, label %52, label %88, !dbg !632

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !633, metadata !DIExpression()), !dbg !635
  %53 = load i8*, i8** %7, align 8, !dbg !636
  store i8* %53, i8** %9, align 8, !dbg !635
  call void @llvm.dbg.declare(metadata i64* %10, metadata !637, metadata !DIExpression()), !dbg !638
  store i64 0, i64* %10, align 8, !dbg !638
  br label %54, !dbg !639

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !640
  %56 = load i8*, i8** %8, align 8, !dbg !641
  %57 = icmp ult i8* %55, %56, !dbg !642
  br i1 %57, label %58, label %61, !dbg !643

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !644
  %60 = icmp ult i64 %59, 2, !dbg !645
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !646
  br i1 %62, label %63, label %82, !dbg !639

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #22, !dbg !647
  %65 = load i16*, i16** %64, align 8, !dbg !647
  %66 = load i8*, i8** %9, align 8, !dbg !647
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !647
  store i8* %67, i8** %9, align 8, !dbg !647
  %68 = load i8, i8* %66, align 1, !dbg !647
  %69 = zext i8 %68 to i32, !dbg !647
  %70 = sext i32 %69 to i64, !dbg !647
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !647
  %72 = load i16, i16* %71, align 2, !dbg !647
  %73 = zext i16 %72 to i32, !dbg !647
  %74 = and i32 %73, 8192, !dbg !647
  %75 = icmp ne i32 %74, 0, !dbg !648
  %76 = xor i1 %75, true, !dbg !648
  %77 = xor i1 %76, true, !dbg !649
  %78 = zext i1 %77 to i32, !dbg !649
  %79 = sext i32 %78 to i64, !dbg !649
  %80 = load i64, i64* %10, align 8, !dbg !650
  %81 = add i64 %80, %79, !dbg !650
  store i64 %81, i64* %10, align 8, !dbg !650
  br label %54, !dbg !639, !llvm.loop !651

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !653
  %84 = icmp eq i64 %83, 2, !dbg !655
  br i1 %84, label %85, label %87, !dbg !656

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !657
  store i8* %86, i8** %8, align 8, !dbg !659
  store i8 0, i8* %6, align 1, !dbg !660
  br label %87, !dbg !661

87:                                               ; preds = %85, %82
  br label %88, !dbg !662

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !663, metadata !DIExpression()), !dbg !664
  %90 = load i8*, i8** %8, align 8, !dbg !665
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #21, !dbg !666
  store i64 %91, i64* %11, align 8, !dbg !664
  call void @llvm.dbg.declare(metadata i8** %12, metadata !667, metadata !DIExpression()), !dbg !668
  %92 = load i8*, i8** %8, align 8, !dbg !669
  %93 = load i64, i64* %11, align 8, !dbg !670
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !671
  store i8* %94, i8** %12, align 8, !dbg !668
  br label %95, !dbg !672

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !673
  %97 = load i8, i8* %96, align 1, !dbg !674
  %98 = zext i8 %97 to i32, !dbg !674
  %99 = icmp ne i32 %98, 0, !dbg !674
  br i1 %99, label %100, label %105, !dbg !675

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !676
  %102 = load i8, i8* %101, align 1, !dbg !677
  %103 = zext i8 %102 to i32, !dbg !677
  %104 = icmp ne i32 %103, 10, !dbg !678
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !679
  br i1 %106, label %107, label %164, !dbg !672

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !680
  %109 = load i8, i8* %108, align 1, !dbg !683
  %110 = zext i8 %109 to i32, !dbg !683
  %111 = icmp eq i32 %110, 45, !dbg !684
  br i1 %111, label %112, label %119, !dbg !685

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !686
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !687
  %115 = load i8, i8* %114, align 1, !dbg !688
  %116 = zext i8 %115 to i32, !dbg !688
  %117 = icmp eq i32 %116, 45, !dbg !689
  br i1 %117, label %118, label %119, !dbg !690

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !691
  br label %119, !dbg !692

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #22, !dbg !693
  %121 = load i16*, i16** %120, align 8, !dbg !693
  %122 = load i8*, i8** %12, align 8, !dbg !693
  %123 = load i8, i8* %122, align 1, !dbg !693
  %124 = zext i8 %123 to i32, !dbg !693
  %125 = sext i32 %124 to i64, !dbg !693
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !693
  %127 = load i16, i16* %126, align 2, !dbg !693
  %128 = zext i16 %127 to i32, !dbg !693
  %129 = and i32 %128, 8192, !dbg !693
  %130 = icmp ne i32 %129, 0, !dbg !693
  br i1 %130, label %131, label %161, !dbg !695

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !696
  %133 = load i8, i8* %132, align 1, !dbg !699
  %134 = zext i8 %133 to i32, !dbg !699
  %135 = icmp eq i32 %134, 9, !dbg !700
  br i1 %135, label %149, label %136, !dbg !701

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #22, !dbg !702
  %138 = load i16*, i16** %137, align 8, !dbg !702
  %139 = load i8*, i8** %12, align 8, !dbg !702
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !702
  %141 = load i8, i8* %140, align 1, !dbg !702
  %142 = zext i8 %141 to i32, !dbg !702
  %143 = sext i32 %142 to i64, !dbg !702
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !702
  %145 = load i16, i16* %144, align 2, !dbg !702
  %146 = zext i16 %145 to i32, !dbg !702
  %147 = and i32 %146, 8192, !dbg !702
  %148 = icmp ne i32 %147, 0, !dbg !702
  br i1 %148, label %149, label %150, !dbg !703

149:                                              ; preds = %136, %131
  br label %164, !dbg !704

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !705
  %152 = trunc i8 %151 to i1, !dbg !705
  br i1 %152, label %160, label %153, !dbg !707

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !708
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !709
  %156 = load i8, i8* %155, align 1, !dbg !710
  %157 = zext i8 %156 to i32, !dbg !710
  %158 = icmp ne i32 %157, 45, !dbg !711
  br i1 %158, label %159, label %160, !dbg !712

159:                                              ; preds = %153
  br label %164, !dbg !713

160:                                              ; preds = %153, %150
  br label %161, !dbg !714

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !715
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !715
  store i8* %163, i8** %12, align 8, !dbg !715
  br label %95, !dbg !672, !llvm.loop !716

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !718
  %166 = load i8*, i8** %7, align 8, !dbg !718
  %167 = load i8*, i8** %4, align 8, !dbg !718
  %168 = ptrtoint i8* %166 to i64, !dbg !718
  %169 = ptrtoint i8* %167 to i64, !dbg !718
  %170 = sub i64 %168, %169, !dbg !718
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !718
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !718
  call void @llvm.dbg.declare(metadata i8** %13, metadata !719, metadata !DIExpression()), !dbg !720
  %173 = load i8*, i8** %3, align 8, !dbg !721
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)), !dbg !722
  br i1 %174, label %175, label %176, !dbg !722

175:                                              ; preds = %164
  br label %232, !dbg !722

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !723
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)), !dbg !724
  br i1 %178, label %179, label %180, !dbg !724

179:                                              ; preds = %176
  br label %230, !dbg !724

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !725
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)), !dbg !726
  br i1 %182, label %183, label %184, !dbg !726

183:                                              ; preds = %180
  br label %228, !dbg !726

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !727
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)), !dbg !728
  br i1 %186, label %187, label %188, !dbg !728

187:                                              ; preds = %184
  br label %226, !dbg !728

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !729
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)), !dbg !730
  br i1 %190, label %191, label %192, !dbg !730

191:                                              ; preds = %188
  br label %224, !dbg !730

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !731
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)), !dbg !732
  br i1 %194, label %195, label %196, !dbg !732

195:                                              ; preds = %192
  br label %222, !dbg !732

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !733
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !734
  br i1 %198, label %199, label %200, !dbg !734

199:                                              ; preds = %196
  br label %220, !dbg !734

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !735
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !736
  br i1 %202, label %203, label %204, !dbg !736

203:                                              ; preds = %200
  br label %218, !dbg !736

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !737
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !738
  br i1 %206, label %207, label %208, !dbg !738

207:                                              ; preds = %204
  br label %216, !dbg !738

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !739
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)), !dbg !740
  br i1 %210, label %211, label %212, !dbg !740

211:                                              ; preds = %208
  br label %214, !dbg !740

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !741
  br label %214, !dbg !740

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !740
  br label %216, !dbg !738

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !738
  br label %218, !dbg !736

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !736
  br label %220, !dbg !734

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !734
  br label %222, !dbg !732

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !732
  br label %224, !dbg !730

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !730
  br label %226, !dbg !728

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !728
  br label %228, !dbg !726

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !726
  br label %230, !dbg !724

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !724
  br label %232, !dbg !722

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !722
  store i8* %233, i8** %13, align 8, !dbg !720
  %234 = load i8*, i8** %8, align 8, !dbg !742
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i64 noundef 6) #21, !dbg !742
  %236 = icmp eq i32 %235, 0, !dbg !742
  br i1 %236, label %241, label %237, !dbg !744

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !745
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i64 noundef 9) #21, !dbg !745
  %240 = icmp eq i32 %239, 0, !dbg !745
  br i1 %240, label %241, label %248, !dbg !746

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !747
  %243 = load i8*, i8** %13, align 8, !dbg !749
  %244 = load i64, i64* %11, align 8, !dbg !750
  %245 = trunc i64 %244 to i32, !dbg !751
  %246 = load i8*, i8** %8, align 8, !dbg !752
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !753
  br label %254, !dbg !754

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !755
  %250 = load i64, i64* %11, align 8, !dbg !757
  %251 = trunc i64 %250 to i32, !dbg !758
  %252 = load i8*, i8** %8, align 8, !dbg !759
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !760
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !761
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !762
  %259 = load i8*, i8** %7, align 8, !dbg !763
  %260 = load i8*, i8** %12, align 8, !dbg !763
  %261 = load i8*, i8** %7, align 8, !dbg !763
  %262 = ptrtoint i8* %260 to i64, !dbg !763
  %263 = ptrtoint i8* %261 to i64, !dbg !763
  %264 = sub i64 %262, %263, !dbg !763
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !763
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !764
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !764
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !765
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !765
  %271 = load i8*, i8** %12, align 8, !dbg !766
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !766
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !766
  br label %274, !dbg !767

274:                                              ; preds = %254, %33
  ret void, !dbg !767
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !768 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !771, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !773, metadata !DIExpression()), !dbg !782
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !782
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !782
  call void @llvm.dbg.declare(metadata i8** %4, metadata !783, metadata !DIExpression()), !dbg !784
  %9 = load i8*, i8** %2, align 8, !dbg !785
  store i8* %9, i8** %4, align 8, !dbg !784
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !786, metadata !DIExpression()), !dbg !788
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !789
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !788
  br label %11, !dbg !790

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !791
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !792
  %14 = load i8*, i8** %13, align 8, !dbg !792
  %15 = icmp ne i8* %14, null, !dbg !791
  br i1 %15, label %16, label %23, !dbg !793

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !794
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !795
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !796
  %20 = load i8*, i8** %19, align 8, !dbg !796
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !797
  %22 = xor i1 %21, true, !dbg !798
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !799
  br i1 %24, label %25, label %28, !dbg !790

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !800
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !800
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !800
  br label %11, !dbg !790, !llvm.loop !801

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !802
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !804
  %31 = load i8*, i8** %30, align 8, !dbg !804
  %32 = icmp ne i8* %31, null, !dbg !802
  br i1 %32, label %33, label %37, !dbg !805

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !806
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !807
  %36 = load i8*, i8** %35, align 8, !dbg !807
  store i8* %36, i8** %4, align 8, !dbg !808
  br label %37, !dbg !809

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !810
  call void @llvm.dbg.declare(metadata i8** %6, metadata !811, metadata !DIExpression()), !dbg !812
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #19, !dbg !813
  store i8* %38, i8** %6, align 8, !dbg !812
  %39 = load i8*, i8** %6, align 8, !dbg !814
  %40 = icmp ne i8* %39, null, !dbg !814
  br i1 %40, label %41, label %49, !dbg !816

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !817
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i64 noundef 3) #21, !dbg !817
  %44 = icmp ne i32 %43, 0, !dbg !817
  br i1 %44, label %45, label %49, !dbg !818

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.47, i64 0, i64 0)) #19, !dbg !819
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !819
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !819
  br label %49, !dbg !821

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !822, metadata !DIExpression()), !dbg !823
  %50 = load i8*, i8** %2, align 8, !dbg !824
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)), !dbg !825
  br i1 %51, label %52, label %53, !dbg !825

52:                                               ; preds = %49
  br label %55, !dbg !825

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !826
  br label %55, !dbg !825

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !825
  store i8* %56, i8** %7, align 8, !dbg !823
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0)) #19, !dbg !827
  %58 = load i8*, i8** %7, align 8, !dbg !828
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef %58), !dbg !829
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i64 0, i64 0)) #19, !dbg !830
  %61 = load i8*, i8** %4, align 8, !dbg !831
  %62 = load i8*, i8** %4, align 8, !dbg !832
  %63 = load i8*, i8** %2, align 8, !dbg !833
  %64 = icmp eq i8* %62, %63, !dbg !834
  %65 = zext i1 %64 to i64, !dbg !832
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !832
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !835
  ret void, !dbg !836
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i8* @setlocale(i32 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: nounwind
declare i8* @getenv(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strspn(i8* noundef, i8* noundef) #7

; Function Attrs: nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) #7

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #8

; Function Attrs: nounwind readonly willreturn
declare i64 @strcspn(i8* noundef, i8* noundef) #7

declare i64 @fwrite_unlocked(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !837 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !841, metadata !DIExpression()), !dbg !842
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata i64* %6, metadata !845, metadata !DIExpression()), !dbg !846
  store i64 0, i64* %6, align 8, !dbg !846
  %10 = load i8**, i8*** %5, align 8, !dbg !847
  %11 = getelementptr inbounds i8*, i8** %10, i64 0, !dbg !847
  %12 = load i8*, i8** %11, align 8, !dbg !847
  call void @set_program_name(i8* noundef %12), !dbg !848
  %13 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !849
  %14 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !850
  %15 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !851
  %16 = call i32 @atexit(void ()* noundef @close_stdout) #19, !dbg !852
  call void @llvm.dbg.declare(metadata i32* %7, metadata !853, metadata !DIExpression()), !dbg !854
  store i32 2, i32* %7, align 4, !dbg !854
  br label %17, !dbg !855

17:                                               ; preds = %2, %37
  call void @llvm.dbg.declare(metadata i32* %8, metadata !856, metadata !DIExpression()), !dbg !858
  %18 = load i32, i32* %4, align 4, !dbg !859
  %19 = load i8**, i8*** %5, align 8, !dbg !860
  %20 = call i32 @getopt_long(i32 noundef %18, i8** noundef %19, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #19, !dbg !861
  store i32 %20, i32* %8, align 4, !dbg !858
  %21 = load i32, i32* %8, align 4, !dbg !862
  %22 = icmp eq i32 %21, -1, !dbg !864
  br i1 %22, label %23, label %24, !dbg !865

23:                                               ; preds = %17
  br label %38, !dbg !866

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4, !dbg !867
  switch i32 %25, label %36 [
    i32 -2, label %26
    i32 -3, label %27
    i32 256, label %31
    i32 257, label %32
  ], !dbg !868

26:                                               ; preds = %24
  call void @usage(i32 noundef 0) #23, !dbg !869
  unreachable, !dbg !869

27:                                               ; preds = %24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !871
  %29 = load i8*, i8** @Version, align 8, !dbg !871
  %30 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)), !dbg !871
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef %29, i8* noundef %30, i8* noundef null), !dbg !871
  call void @exit(i32 noundef 0) #20, !dbg !871
  unreachable, !dbg !871

31:                                               ; preds = %24
  store i32 0, i32* %7, align 4, !dbg !872
  br label %37, !dbg !873

32:                                               ; preds = %24
  %33 = load i8*, i8** @optarg, align 8, !dbg !874
  %34 = call i8* @gettext(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #19, !dbg !875
  %35 = call i64 @xnumtoumax(i8* noundef %33, i32 noundef 10, i64 noundef 0, i64 noundef -1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* noundef %34, i32 noundef 0, i32 noundef 2), !dbg !876
  store i64 %35, i64* %6, align 8, !dbg !877
  br label %37, !dbg !878

36:                                               ; preds = %24
  call void @usage(i32 noundef 1) #23, !dbg !879
  unreachable, !dbg !879

37:                                               ; preds = %32, %31
  br label %17, !dbg !855, !llvm.loop !880

38:                                               ; preds = %23
  %39 = load i32, i32* %4, align 4, !dbg !882
  %40 = load i32, i32* @optind, align 4, !dbg !884
  %41 = icmp ne i32 %39, %40, !dbg !885
  br i1 %41, label %42, label %50, !dbg !886

42:                                               ; preds = %38
  %43 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !887
  %44 = load i8**, i8*** %5, align 8, !dbg !887
  %45 = load i32, i32* @optind, align 4, !dbg !887
  %46 = sext i32 %45 to i64, !dbg !887
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46, !dbg !887
  %48 = load i8*, i8** %47, align 8, !dbg !887
  %49 = call i8* @quote(i8* noundef %48), !dbg !887
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %43, i8* noundef %49), !dbg !887
  call void @usage(i32 noundef 1) #23, !dbg !889
  unreachable, !dbg !889

50:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata i64* %9, metadata !890, metadata !DIExpression()), !dbg !891
  %51 = load i32, i32* %7, align 4, !dbg !892
  %52 = call i64 @num_processors(i32 noundef %51), !dbg !893
  store i64 %52, i64* %9, align 8, !dbg !891
  %53 = load i64, i64* %6, align 8, !dbg !894
  %54 = load i64, i64* %9, align 8, !dbg !896
  %55 = icmp ult i64 %53, %54, !dbg !897
  br i1 %55, label %56, label %60, !dbg !898

56:                                               ; preds = %50
  %57 = load i64, i64* %6, align 8, !dbg !899
  %58 = load i64, i64* %9, align 8, !dbg !900
  %59 = sub i64 %58, %57, !dbg !900
  store i64 %59, i64* %9, align 8, !dbg !900
  br label %61, !dbg !901

60:                                               ; preds = %50
  store i64 1, i64* %9, align 8, !dbg !902
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i64, i64* %9, align 8, !dbg !903
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 noundef %62), !dbg !904
  ret i32 0, !dbg !905
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !906 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !907, metadata !DIExpression()), !dbg !908
  %3 = load i8*, i8** %2, align 8, !dbg !909
  store i8* %3, i8** @file_name, align 8, !dbg !910
  ret void, !dbg !911
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !912 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !915, metadata !DIExpression()), !dbg !916
  %4 = load i8, i8* %2, align 1, !dbg !917
  %5 = trunc i8 %4 to i1, !dbg !917
  %6 = zext i1 %5 to i8, !dbg !918
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !918
  ret void, !dbg !919
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !920 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !921
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !923
  %4 = icmp ne i32 %3, 0, !dbg !924
  br i1 %4, label %5, label %28, !dbg !925

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !926
  %7 = trunc i8 %6 to i1, !dbg !926
  br i1 %7, label %8, label %12, !dbg !927

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #22, !dbg !928
  %10 = load i32, i32* %9, align 4, !dbg !928
  %11 = icmp eq i32 %10, 32, !dbg !929
  br i1 %11, label %28, label %12, !dbg !930

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !931, metadata !DIExpression()), !dbg !933
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.59, i64 0, i64 0)) #19, !dbg !934
  store i8* %13, i8** %1, align 8, !dbg !933
  %14 = load i8*, i8** @file_name, align 8, !dbg !935
  %15 = icmp ne i8* %14, null, !dbg !935
  br i1 %15, label %16, label %22, !dbg !937

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #22, !dbg !938
  %18 = load i32, i32* %17, align 4, !dbg !938
  %19 = load i8*, i8** @file_name, align 8, !dbg !938
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !938
  %21 = load i8*, i8** %1, align 8, !dbg !938
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.60, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !938
  br label %26, !dbg !938

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #22, !dbg !939
  %24 = load i32, i32* %23, align 4, !dbg !939
  %25 = load i8*, i8** %1, align 8, !dbg !939
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.61, i64 0, i64 0), i8* noundef %25), !dbg !939
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !940
  call void @_exit(i32 noundef %27) #23, !dbg !941
  unreachable, !dbg !941

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !942
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !944
  %31 = icmp ne i32 %30, 0, !dbg !945
  br i1 %31, label %32, label %34, !dbg !946

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !947
  call void @_exit(i32 noundef %33) #23, !dbg !948
  unreachable, !dbg !948

34:                                               ; preds = %28
  ret void, !dbg !949
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !950 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !953, metadata !DIExpression()), !dbg !954
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !955, metadata !DIExpression()), !dbg !954
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !956, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !957, metadata !DIExpression()), !dbg !954
  call void @flush_stdout(), !dbg !958
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !959
  %10 = icmp ne void ()* %9, null, !dbg !959
  br i1 %10, label %11, label %13, !dbg !961

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !962
  call void %12(), !dbg !963
  br label %17, !dbg !963

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !964
  %15 = call i8* @getprogname() #21, !dbg !966
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8* noundef %15), !dbg !967
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !968
  %19 = load i32, i32* %6, align 4, !dbg !968
  %20 = load i8*, i8** %7, align 8, !dbg !968
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !968
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !968
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !968
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !968
  ret void, !dbg !969
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !970 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !971, metadata !DIExpression()), !dbg !972
  store i32 1, i32* %1, align 4, !dbg !973
  %2 = load i32, i32* %1, align 4, !dbg !974
  %3 = icmp sle i32 0, %2, !dbg !976
  br i1 %3, label %4, label %11, !dbg !977

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !978
  %6 = call i32 @is_open(i32 noundef %5), !dbg !979
  %7 = icmp ne i32 %6, 0, !dbg !979
  br i1 %7, label %8, label %11, !dbg !980

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !981
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !981
  br label %11, !dbg !981

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !982
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !983 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !984, metadata !DIExpression()), !dbg !985
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !986, metadata !DIExpression()), !dbg !985
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !987, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !988, metadata !DIExpression()), !dbg !985
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !989
  %10 = load i8*, i8** %7, align 8, !dbg !990
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !991
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !991
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !991
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !991
  %14 = load i32, i32* @error_message_count, align 4, !dbg !992
  %15 = add i32 %14, 1, !dbg !992
  store i32 %15, i32* @error_message_count, align 4, !dbg !992
  %16 = load i32, i32* %6, align 4, !dbg !993
  %17 = icmp ne i32 %16, 0, !dbg !993
  br i1 %17, label %18, label %20, !dbg !995

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !996
  call void @print_errno_message(i32 noundef %19), !dbg !997
  br label %20, !dbg !997

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !998
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !998
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !999
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !999
  %25 = load i32, i32* %5, align 4, !dbg !1000
  %26 = icmp ne i32 %25, 0, !dbg !1000
  br i1 %26, label %27, label %29, !dbg !1002

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1003
  call void @exit(i32 noundef %28) #20, !dbg !1004
  unreachable, !dbg !1004

29:                                               ; preds = %20
  ret void, !dbg !1005
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1006 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1007, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1009, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1011, metadata !DIExpression()), !dbg !1015
  %5 = load i32, i32* %2, align 4, !dbg !1016
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1017
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #19, !dbg !1018
  store i8* %7, i8** %3, align 8, !dbg !1019
  %8 = load i8*, i8** %3, align 8, !dbg !1020
  %9 = icmp ne i8* %8, null, !dbg !1020
  br i1 %9, label %12, label %10, !dbg !1022

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.64, i64 0, i64 0)) #19, !dbg !1023
  store i8* %11, i8** %3, align 8, !dbg !1024
  br label %12, !dbg !1025

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1026
  %14 = load i8*, i8** %3, align 8, !dbg !1027
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.65, i64 0, i64 0), i8* noundef %14), !dbg !1028
  ret void, !dbg !1029
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1030 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1033, metadata !DIExpression()), !dbg !1034
  %3 = load i32, i32* %2, align 4, !dbg !1035
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1036
  %5 = icmp sle i32 0, %4, !dbg !1037
  %6 = zext i1 %5 to i32, !dbg !1037
  ret i32 %6, !dbg !1038
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1039 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1042, metadata !DIExpression()), !dbg !1043
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1044, metadata !DIExpression()), !dbg !1045
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1046, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1048, metadata !DIExpression()), !dbg !1049
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1050
  call void @llvm.va_start(i8* %9), !dbg !1050
  %10 = load i32, i32* %4, align 4, !dbg !1051
  %11 = load i32, i32* %5, align 4, !dbg !1051
  %12 = load i8*, i8** %6, align 8, !dbg !1051
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1051
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1051
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1051
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #24, !dbg !1051
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1052
  call void @llvm.va_end(i8* %15), !dbg !1052
  ret void, !dbg !1053
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !83 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1054, metadata !DIExpression()), !dbg !1055
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1056, metadata !DIExpression()), !dbg !1055
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1057, metadata !DIExpression()), !dbg !1055
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1058, metadata !DIExpression()), !dbg !1055
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1059, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1060, metadata !DIExpression()), !dbg !1055
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1061
  %14 = icmp ne i32 %13, 0, !dbg !1061
  br i1 %14, label %15, label %38, !dbg !1063

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1064
  %17 = load i32, i32* %10, align 4, !dbg !1067
  %18 = icmp eq i32 %16, %17, !dbg !1068
  br i1 %18, label %19, label %35, !dbg !1069

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1070
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1071
  %22 = icmp eq i8* %20, %21, !dbg !1072
  br i1 %22, label %34, label %23, !dbg !1073

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1074
  %25 = icmp ne i8* %24, null, !dbg !1075
  br i1 %25, label %26, label %35, !dbg !1076

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1077
  %28 = icmp ne i8* %27, null, !dbg !1078
  br i1 %28, label %29, label %35, !dbg !1079

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1080
  %31 = load i8*, i8** %9, align 8, !dbg !1081
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #21, !dbg !1082
  %33 = icmp eq i32 %32, 0, !dbg !1083
  br i1 %33, label %34, label %35, !dbg !1084

34:                                               ; preds = %29, %19
  br label %61, !dbg !1085

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1086
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1087
  %37 = load i32, i32* %10, align 4, !dbg !1088
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1089
  br label %38, !dbg !1090

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1091
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1092
  %40 = icmp ne void ()* %39, null, !dbg !1092
  br i1 %40, label %41, label %43, !dbg !1094

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1095
  call void %42(), !dbg !1096
  br label %47, !dbg !1096

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1097
  %45 = call i8* @getprogname() #21, !dbg !1099
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.68, i64 0, i64 0), i8* noundef %45), !dbg !1100
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1101
  %49 = load i8*, i8** %9, align 8, !dbg !1102
  %50 = icmp ne i8* %49, null, !dbg !1103
  %51 = zext i1 %50 to i64, !dbg !1102
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.70, i64 0, i64 0), !dbg !1102
  %53 = load i8*, i8** %9, align 8, !dbg !1104
  %54 = load i32, i32* %10, align 4, !dbg !1105
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1106
  %56 = load i32, i32* %7, align 4, !dbg !1107
  %57 = load i32, i32* %8, align 4, !dbg !1107
  %58 = load i8*, i8** %11, align 8, !dbg !1107
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1107
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1107
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1107
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1107
  br label %61, !dbg !1108

61:                                               ; preds = %47, %34
  ret void, !dbg !1108
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1109 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1112, metadata !DIExpression()), !dbg !1113
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1114, metadata !DIExpression()), !dbg !1115
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1116, metadata !DIExpression()), !dbg !1117
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1118, metadata !DIExpression()), !dbg !1119
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1120, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1122, metadata !DIExpression()), !dbg !1123
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1124
  call void @llvm.va_start(i8* %13), !dbg !1124
  %14 = load i32, i32* %6, align 4, !dbg !1125
  %15 = load i32, i32* %7, align 4, !dbg !1125
  %16 = load i8*, i8** %8, align 8, !dbg !1125
  %17 = load i32, i32* %9, align 4, !dbg !1125
  %18 = load i8*, i8** %10, align 8, !dbg !1125
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1125
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1125
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #24, !dbg !1125
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1126
  call void @llvm.va_end(i8* %21), !dbg !1126
  ret void, !dbg !1127
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1128 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1131
  ret i8* %1, !dbg !1132
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @num_processors(i32 noundef %0) #4 !dbg !1133 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1136, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1138, metadata !DIExpression()), !dbg !1139
  store i64 -1, i64* %4, align 8, !dbg !1139
  %9 = load i32, i32* %3, align 4, !dbg !1140
  %10 = icmp eq i32 %9, 2, !dbg !1142
  br i1 %10, label %11, label %34, !dbg !1143

11:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1144, metadata !DIExpression()), !dbg !1146
  %12 = call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i64 0, i64 0)) #19, !dbg !1147
  %13 = call i64 @parse_omp_threads(i8* noundef %12), !dbg !1148
  store i64 %13, i64* %5, align 8, !dbg !1146
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1149, metadata !DIExpression()), !dbg !1150
  %14 = call i8* @getenv(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.78, i64 0, i64 0)) #19, !dbg !1151
  %15 = call i64 @parse_omp_threads(i8* noundef %14), !dbg !1152
  store i64 %15, i64* %6, align 8, !dbg !1150
  %16 = load i64, i64* %6, align 8, !dbg !1153
  %17 = icmp ne i64 %16, 0, !dbg !1153
  br i1 %17, label %19, label %18, !dbg !1155

18:                                               ; preds = %11
  store i64 -1, i64* %6, align 8, !dbg !1156
  br label %19, !dbg !1157

19:                                               ; preds = %18, %11
  %20 = load i64, i64* %5, align 8, !dbg !1158
  %21 = icmp ne i64 %20, 0, !dbg !1158
  br i1 %21, label %22, label %32, !dbg !1160

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8, !dbg !1161
  %24 = load i64, i64* %6, align 8, !dbg !1161
  %25 = icmp ult i64 %23, %24, !dbg !1161
  br i1 %25, label %26, label %28, !dbg !1161

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8, !dbg !1161
  br label %30, !dbg !1161

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8, !dbg !1161
  br label %30, !dbg !1161

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ], !dbg !1161
  store i64 %31, i64* %2, align 8, !dbg !1162
  br label %68, !dbg !1162

32:                                               ; preds = %19
  %33 = load i64, i64* %6, align 8, !dbg !1163
  store i64 %33, i64* %4, align 8, !dbg !1164
  store i32 1, i32* %3, align 4, !dbg !1165
  br label %34, !dbg !1166

34:                                               ; preds = %32, %1
  %35 = load i32, i32* %3, align 4, !dbg !1167
  %36 = icmp eq i32 %35, 1, !dbg !1169
  br i1 %36, label %37, label %51, !dbg !1170

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8, !dbg !1171
  %39 = icmp ugt i64 %38, 1, !dbg !1172
  br i1 %39, label %40, label %51, !dbg !1173

40:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1174, metadata !DIExpression()), !dbg !1176
  %41 = call i64 @cpu_quota(), !dbg !1177
  store i64 %41, i64* %7, align 8, !dbg !1176
  %42 = load i64, i64* %7, align 8, !dbg !1178
  %43 = load i64, i64* %4, align 8, !dbg !1178
  %44 = icmp ult i64 %42, %43, !dbg !1178
  br i1 %44, label %45, label %47, !dbg !1178

45:                                               ; preds = %40
  %46 = load i64, i64* %7, align 8, !dbg !1178
  br label %49, !dbg !1178

47:                                               ; preds = %40
  %48 = load i64, i64* %4, align 8, !dbg !1178
  br label %49, !dbg !1178

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ], !dbg !1178
  store i64 %50, i64* %4, align 8, !dbg !1179
  br label %51, !dbg !1180

51:                                               ; preds = %49, %37, %34
  %52 = load i64, i64* %4, align 8, !dbg !1181
  %53 = icmp ugt i64 %52, 1, !dbg !1183
  br i1 %53, label %54, label %66, !dbg !1184

54:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1185, metadata !DIExpression()), !dbg !1187
  %55 = load i32, i32* %3, align 4, !dbg !1188
  %56 = call i64 @num_processors_available(i32 noundef %55), !dbg !1189
  store i64 %56, i64* %8, align 8, !dbg !1187
  %57 = load i64, i64* %8, align 8, !dbg !1190
  %58 = load i64, i64* %4, align 8, !dbg !1190
  %59 = icmp ult i64 %57, %58, !dbg !1190
  br i1 %59, label %60, label %62, !dbg !1190

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8, !dbg !1190
  br label %64, !dbg !1190

62:                                               ; preds = %54
  %63 = load i64, i64* %4, align 8, !dbg !1190
  br label %64, !dbg !1190

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ], !dbg !1190
  store i64 %65, i64* %4, align 8, !dbg !1191
  br label %66, !dbg !1192

66:                                               ; preds = %64, %51
  %67 = load i64, i64* %4, align 8, !dbg !1193
  store i64 %67, i64* %2, align 8, !dbg !1194
  br label %68, !dbg !1194

68:                                               ; preds = %66, %30
  %69 = load i64, i64* %2, align 8, !dbg !1195
  ret i64 %69, !dbg !1195
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_omp_threads(i8* noundef %0) #4 !dbg !1196 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1199, metadata !DIExpression()), !dbg !1200
  %6 = load i8*, i8** %3, align 8, !dbg !1201
  %7 = icmp eq i8* %6, null, !dbg !1203
  br i1 %7, label %8, label %9, !dbg !1204

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !1205
  br label %65, !dbg !1205

9:                                                ; preds = %1
  br label %10, !dbg !1206

10:                                               ; preds = %22, %9
  %11 = load i8*, i8** %3, align 8, !dbg !1207
  %12 = load i8, i8* %11, align 1, !dbg !1208
  %13 = zext i8 %12 to i32, !dbg !1208
  %14 = icmp ne i32 %13, 0, !dbg !1209
  br i1 %14, label %15, label %20, !dbg !1210

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8, !dbg !1211
  %17 = load i8, i8* %16, align 1, !dbg !1212
  %18 = zext i8 %17 to i32, !dbg !1212
  %19 = call i1 @c_isspace(i32 noundef %18), !dbg !1213
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ false, %10 ], [ %19, %15 ], !dbg !1214
  br i1 %21, label %22, label %25, !dbg !1206

22:                                               ; preds = %20
  %23 = load i8*, i8** %3, align 8, !dbg !1215
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !1215
  store i8* %24, i8** %3, align 8, !dbg !1215
  br label %10, !dbg !1206, !llvm.loop !1216

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8, !dbg !1217
  %27 = load i8, i8* %26, align 1, !dbg !1219
  %28 = zext i8 %27 to i32, !dbg !1219
  %29 = call i1 @c_isdigit(i32 noundef %28), !dbg !1220
  br i1 %29, label %30, label %64, !dbg !1221

30:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1222, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1225, metadata !DIExpression()), !dbg !1226
  %31 = load i8*, i8** %3, align 8, !dbg !1227
  %32 = call i64 @strtoul(i8* noundef %31, i8** noundef %4, i32 noundef 10) #19, !dbg !1228
  store i64 %32, i64* %5, align 8, !dbg !1226
  br label %33, !dbg !1229

33:                                               ; preds = %45, %30
  %34 = load i8*, i8** %4, align 8, !dbg !1230
  %35 = load i8, i8* %34, align 1, !dbg !1231
  %36 = zext i8 %35 to i32, !dbg !1231
  %37 = icmp ne i32 %36, 0, !dbg !1232
  br i1 %37, label %38, label %43, !dbg !1233

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8, !dbg !1234
  %40 = load i8, i8* %39, align 1, !dbg !1235
  %41 = zext i8 %40 to i32, !dbg !1235
  %42 = call i1 @c_isspace(i32 noundef %41), !dbg !1236
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ], !dbg !1237
  br i1 %44, label %45, label %48, !dbg !1229

45:                                               ; preds = %43
  %46 = load i8*, i8** %4, align 8, !dbg !1238
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !1238
  store i8* %47, i8** %4, align 8, !dbg !1238
  br label %33, !dbg !1229, !llvm.loop !1239

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8, !dbg !1240
  %50 = load i8, i8* %49, align 1, !dbg !1242
  %51 = zext i8 %50 to i32, !dbg !1242
  %52 = icmp eq i32 %51, 0, !dbg !1243
  br i1 %52, label %53, label %55, !dbg !1244

53:                                               ; preds = %48
  %54 = load i64, i64* %5, align 8, !dbg !1245
  store i64 %54, i64* %2, align 8, !dbg !1246
  br label %65, !dbg !1246

55:                                               ; preds = %48
  %56 = load i8*, i8** %4, align 8, !dbg !1247
  %57 = load i8, i8* %56, align 1, !dbg !1249
  %58 = zext i8 %57 to i32, !dbg !1249
  %59 = icmp eq i32 %58, 44, !dbg !1250
  br i1 %59, label %60, label %62, !dbg !1251

60:                                               ; preds = %55
  %61 = load i64, i64* %5, align 8, !dbg !1252
  store i64 %61, i64* %2, align 8, !dbg !1253
  br label %65, !dbg !1253

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62
  br label %64, !dbg !1254

64:                                               ; preds = %63, %25
  store i64 0, i64* %2, align 8, !dbg !1255
  br label %65, !dbg !1255

65:                                               ; preds = %64, %60, %53, %8
  %66 = load i64, i64* %2, align 8, !dbg !1256
  ret i64 %66, !dbg !1256
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpu_quota() #4 !dbg !1257 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !1260, metadata !DIExpression()), !dbg !1261
  store i64 -1, i64* %1, align 8, !dbg !1261
  %2 = call i32 @sched_getscheduler(i32 noundef 0) #19, !dbg !1262
  switch i32 %2, label %4 [
    i32 -1, label %3
    i32 1, label %3
    i32 2, label %3
    i32 6, label %3
  ], !dbg !1263

3:                                                ; preds = %0, %0, %0, %0
  store i64 -1, i64* %1, align 8, !dbg !1264
  br label %6, !dbg !1266

4:                                                ; preds = %0
  %5 = call i64 @get_cgroup2_cpu_quota(), !dbg !1267
  store i64 %5, i64* %1, align 8, !dbg !1268
  br label %6, !dbg !1269

6:                                                ; preds = %4, %3
  %7 = load i64, i64* %1, align 8, !dbg !1270
  ret i64 %7, !dbg !1271
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @num_processors_available(i32 noundef %0) #4 !dbg !1272 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1273, metadata !DIExpression()), !dbg !1274
  %8 = load i32, i32* %3, align 4, !dbg !1275
  %9 = icmp eq i32 %8, 1, !dbg !1277
  br i1 %9, label %10, label %23, !dbg !1278

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1279, metadata !DIExpression()), !dbg !1282
  %11 = call i64 @num_processors_via_affinity_mask(), !dbg !1283
  store i64 %11, i64* %4, align 8, !dbg !1282
  %12 = load i64, i64* %4, align 8, !dbg !1284
  %13 = icmp ugt i64 %12, 0, !dbg !1286
  br i1 %13, label %14, label %16, !dbg !1287

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8, !dbg !1288
  store i64 %15, i64* %2, align 8, !dbg !1289
  br label %45, !dbg !1289

16:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1290, metadata !DIExpression()), !dbg !1292
  %17 = call i64 @sysconf(i32 noundef 84) #19, !dbg !1293
  store i64 %17, i64* %5, align 8, !dbg !1292
  %18 = load i64, i64* %5, align 8, !dbg !1294
  %19 = icmp sgt i64 %18, 0, !dbg !1296
  br i1 %19, label %20, label %22, !dbg !1297

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8, !dbg !1298
  store i64 %21, i64* %2, align 8, !dbg !1299
  br label %45, !dbg !1299

22:                                               ; preds = %16
  br label %44, !dbg !1300

23:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1301, metadata !DIExpression()), !dbg !1304
  %24 = call i64 @sysconf(i32 noundef 83) #19, !dbg !1305
  store i64 %24, i64* %6, align 8, !dbg !1304
  %25 = load i64, i64* %6, align 8, !dbg !1306
  %26 = icmp eq i64 %25, 1, !dbg !1308
  br i1 %26, label %30, label %27, !dbg !1309

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8, !dbg !1310
  %29 = icmp eq i64 %28, 2, !dbg !1311
  br i1 %29, label %30, label %38, !dbg !1312

30:                                               ; preds = %27, %23
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1313, metadata !DIExpression()), !dbg !1315
  %31 = call i64 @num_processors_via_affinity_mask(), !dbg !1316
  store i64 %31, i64* %7, align 8, !dbg !1315
  %32 = load i64, i64* %7, align 8, !dbg !1317
  %33 = load i64, i64* %6, align 8, !dbg !1319
  %34 = icmp ugt i64 %32, %33, !dbg !1320
  br i1 %34, label %35, label %37, !dbg !1321

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8, !dbg !1322
  store i64 %36, i64* %6, align 8, !dbg !1323
  br label %37, !dbg !1324

37:                                               ; preds = %35, %30
  br label %38, !dbg !1325

38:                                               ; preds = %37, %27
  %39 = load i64, i64* %6, align 8, !dbg !1326
  %40 = icmp sgt i64 %39, 0, !dbg !1328
  br i1 %40, label %41, label %43, !dbg !1329

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8, !dbg !1330
  store i64 %42, i64* %2, align 8, !dbg !1331
  br label %45, !dbg !1331

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %22
  store i64 1, i64* %2, align 8, !dbg !1332
  br label %45, !dbg !1332

45:                                               ; preds = %44, %41, %20, %14
  %46 = load i64, i64* %2, align 8, !dbg !1333
  ret i64 %46, !dbg !1333
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @num_processors_via_affinity_mask() #4 !dbg !1334 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpu_set_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_set_t, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1335, metadata !DIExpression()), !dbg !1337
  store i32 1024, i32* %2, align 4, !dbg !1337
  br label %8, !dbg !1338

8:                                                ; preds = %49, %0
  call void @llvm.dbg.declare(metadata %struct.cpu_set_t** %3, metadata !1339, metadata !DIExpression()), !dbg !1353
  %9 = load i32, i32* %2, align 4, !dbg !1354
  %10 = zext i32 %9 to i64, !dbg !1354
  %11 = call %struct.cpu_set_t* @__sched_cpualloc(i64 noundef %10) #19, !dbg !1354
  store %struct.cpu_set_t* %11, %struct.cpu_set_t** %3, align 8, !dbg !1353
  %12 = load %struct.cpu_set_t*, %struct.cpu_set_t** %3, align 8, !dbg !1355
  %13 = icmp eq %struct.cpu_set_t* %12, null, !dbg !1357
  br i1 %13, label %14, label %15, !dbg !1358

14:                                               ; preds = %8
  br label %50, !dbg !1359

15:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1360, metadata !DIExpression()), !dbg !1361
  %16 = load i32, i32* %2, align 4, !dbg !1362
  %17 = zext i32 %16 to i64, !dbg !1362
  %18 = add i64 %17, 64, !dbg !1362
  %19 = sub i64 %18, 1, !dbg !1362
  %20 = udiv i64 %19, 64, !dbg !1362
  %21 = mul i64 %20, 8, !dbg !1362
  %22 = trunc i64 %21 to i32, !dbg !1362
  store i32 %22, i32* %4, align 4, !dbg !1361
  %23 = load i32, i32* %4, align 4, !dbg !1363
  %24 = zext i32 %23 to i64, !dbg !1363
  %25 = load %struct.cpu_set_t*, %struct.cpu_set_t** %3, align 8, !dbg !1365
  %26 = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef %24, %struct.cpu_set_t* noundef %25) #19, !dbg !1366
  %27 = icmp eq i32 %26, 0, !dbg !1367
  br i1 %27, label %28, label %36, !dbg !1368

28:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1369, metadata !DIExpression()), !dbg !1371
  %29 = load i32, i32* %4, align 4, !dbg !1372
  %30 = zext i32 %29 to i64, !dbg !1372
  %31 = load %struct.cpu_set_t*, %struct.cpu_set_t** %3, align 8, !dbg !1372
  %32 = call i32 @__sched_cpucount(i64 noundef %30, %struct.cpu_set_t* noundef %31) #19, !dbg !1372
  store i32 %32, i32* %5, align 4, !dbg !1371
  %33 = load %struct.cpu_set_t*, %struct.cpu_set_t** %3, align 8, !dbg !1373
  call void @__sched_cpufree(%struct.cpu_set_t* noundef %33) #19, !dbg !1373
  %34 = load i32, i32* %5, align 4, !dbg !1374
  %35 = zext i32 %34 to i64, !dbg !1374
  store i64 %35, i64* %1, align 8, !dbg !1375
  br label %62, !dbg !1375

36:                                               ; preds = %15
  %37 = call i32* @__errno_location() #22, !dbg !1376
  %38 = load i32, i32* %37, align 4, !dbg !1376
  %39 = icmp ne i32 %38, 22, !dbg !1378
  br i1 %39, label %40, label %42, !dbg !1379

40:                                               ; preds = %36
  %41 = load %struct.cpu_set_t*, %struct.cpu_set_t** %3, align 8, !dbg !1380
  call void @__sched_cpufree(%struct.cpu_set_t* noundef %41) #19, !dbg !1380
  store i64 0, i64* %1, align 8, !dbg !1382
  br label %62, !dbg !1382

42:                                               ; preds = %36
  %43 = load %struct.cpu_set_t*, %struct.cpu_set_t** %3, align 8, !dbg !1383
  call void @__sched_cpufree(%struct.cpu_set_t* noundef %43) #19, !dbg !1383
  %44 = load i32, i32* %2, align 4, !dbg !1384
  %45 = mul i32 %44, 2, !dbg !1384
  store i32 %45, i32* %2, align 4, !dbg !1384
  %46 = load i32, i32* %2, align 4, !dbg !1385
  %47 = icmp eq i32 %46, 0, !dbg !1387
  br i1 %47, label %48, label %49, !dbg !1388

48:                                               ; preds = %42
  store i64 0, i64* %1, align 8, !dbg !1389
  br label %62, !dbg !1389

49:                                               ; preds = %42
  br label %8, !dbg !1390, !llvm.loop !1391

50:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.cpu_set_t* %6, metadata !1394, metadata !DIExpression()), !dbg !1396
  %51 = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, %struct.cpu_set_t* noundef %6) #19, !dbg !1397
  %52 = icmp eq i32 %51, 0, !dbg !1399
  br i1 %52, label %53, label %61, !dbg !1400

53:                                               ; preds = %50
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1401, metadata !DIExpression()), !dbg !1403
  %54 = call i32 @__sched_cpucount(i64 noundef 128, %struct.cpu_set_t* noundef %6) #19, !dbg !1404
  %55 = sext i32 %54 to i64, !dbg !1404
  store i64 %55, i64* %7, align 8, !dbg !1405
  %56 = load i64, i64* %7, align 8, !dbg !1406
  %57 = icmp ugt i64 %56, 0, !dbg !1408
  br i1 %57, label %58, label %60, !dbg !1409

58:                                               ; preds = %53
  %59 = load i64, i64* %7, align 8, !dbg !1410
  store i64 %59, i64* %1, align 8, !dbg !1411
  br label %62, !dbg !1411

60:                                               ; preds = %53
  br label %61, !dbg !1412

61:                                               ; preds = %60, %50
  store i64 0, i64* %1, align 8, !dbg !1413
  br label %62, !dbg !1413

62:                                               ; preds = %61, %58, %48, %40, %28
  %63 = load i64, i64* %1, align 8, !dbg !1414
  ret i64 %63, !dbg !1414
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) #2

; Function Attrs: nounwind
declare %struct.cpu_set_t* @__sched_cpualloc(i64 noundef) #2

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, %struct.cpu_set_t* noundef) #2

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64 noundef, %struct.cpu_set_t* noundef) #2

; Function Attrs: nounwind
declare void @__sched_cpufree(%struct.cpu_set_t* noundef) #2

; Function Attrs: nounwind
declare i32 @sched_getscheduler(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_cgroup2_cpu_quota() #4 !dbg !1415 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [4096 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  %16 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1416, metadata !DIExpression()), !dbg !1417
  store i64 -1, i64* %2, align 8, !dbg !1417
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1418, metadata !DIExpression()), !dbg !1472
  %17 = call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.80, i64 0, i64 0)), !dbg !1473
  store %struct._IO_FILE* %17, %struct._IO_FILE** %3, align 8, !dbg !1472
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1474
  %19 = icmp ne %struct._IO_FILE* %18, null, !dbg !1474
  br i1 %19, label %22, label %20, !dbg !1476

20:                                               ; preds = %0
  %21 = load i64, i64* %2, align 8, !dbg !1477
  store i64 %21, i64* %1, align 8, !dbg !1478
  br label %154, !dbg !1478

22:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1479, metadata !DIExpression()), !dbg !1480
  store i8* null, i8** %4, align 8, !dbg !1480
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1481, metadata !DIExpression()), !dbg !1482
  store i8* null, i8** %5, align 8, !dbg !1482
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1483, metadata !DIExpression()), !dbg !1484
  store i64 0, i64* %6, align 8, !dbg !1484
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1485, metadata !DIExpression()), !dbg !1489
  br label %23, !dbg !1490

23:                                               ; preds = %45, %22
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1491
  %25 = call i64 @getline(i8** noundef %5, i64* noundef %6, %struct._IO_FILE* noundef %24), !dbg !1492
  store i64 %25, i64* %7, align 8, !dbg !1493
  %26 = icmp ne i64 %25, -1, !dbg !1494
  br i1 %26, label %27, label %46, !dbg !1490

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8, !dbg !1495
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.81, i64 0, i64 0), i64 noundef 4) #21, !dbg !1498
  %30 = icmp eq i32 %29, 0, !dbg !1499
  br i1 %30, label %31, label %45, !dbg !1500

31:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1501, metadata !DIExpression()), !dbg !1503
  %32 = load i8*, i8** %5, align 8, !dbg !1504
  %33 = load i64, i64* %7, align 8, !dbg !1505
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !1506
  %35 = getelementptr inbounds i8, i8* %34, i64 -1, !dbg !1507
  store i8* %35, i8** %8, align 8, !dbg !1503
  %36 = load i8*, i8** %8, align 8, !dbg !1508
  %37 = load i8, i8* %36, align 1, !dbg !1510
  %38 = zext i8 %37 to i32, !dbg !1510
  %39 = icmp eq i32 %38, 10, !dbg !1511
  br i1 %39, label %40, label %42, !dbg !1512

40:                                               ; preds = %31
  %41 = load i8*, i8** %8, align 8, !dbg !1513
  store i8 0, i8* %41, align 1, !dbg !1514
  br label %42, !dbg !1515

42:                                               ; preds = %40, %31
  %43 = load i8*, i8** %5, align 8, !dbg !1516
  %44 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !1517
  store i8* %44, i8** %4, align 8, !dbg !1518
  br label %46, !dbg !1519

45:                                               ; preds = %27
  br label %23, !dbg !1490, !llvm.loop !1520

46:                                               ; preds = %42, %23
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1522
  %48 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %47), !dbg !1523
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1524, metadata !DIExpression()), !dbg !1525
  store i8* null, i8** %9, align 8, !dbg !1525
  %49 = load i8*, i8** %4, align 8, !dbg !1526
  %50 = icmp ne i8* %49, null, !dbg !1526
  br i1 %50, label %51, label %55, !dbg !1528

51:                                               ; preds = %46
  %52 = call i8* @cgroup2_mount(), !dbg !1529
  store i8* %52, i8** %9, align 8, !dbg !1530
  %53 = icmp ne i8* %52, null, !dbg !1530
  br i1 %53, label %55, label %54, !dbg !1531

54:                                               ; preds = %51
  store i8* null, i8** %4, align 8, !dbg !1532
  br label %55, !dbg !1533

55:                                               ; preds = %54, %51, %46
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1534, metadata !DIExpression()), !dbg !1535
  store i8* null, i8** %10, align 8, !dbg !1535
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1536, metadata !DIExpression()), !dbg !1537
  store i64 0, i64* %11, align 8, !dbg !1537
  br label %56, !dbg !1538

56:                                               ; preds = %148, %55
  %57 = load i8*, i8** %4, align 8, !dbg !1539
  %58 = icmp ne i8* %57, null, !dbg !1539
  br i1 %58, label %59, label %64, !dbg !1540

59:                                               ; preds = %56
  %60 = load i8*, i8** %4, align 8, !dbg !1541
  %61 = load i8, i8* %60, align 1, !dbg !1542
  %62 = zext i8 %61 to i32, !dbg !1542
  %63 = icmp ne i32 %62, 0, !dbg !1540
  br label %64

64:                                               ; preds = %59, %56
  %65 = phi i1 [ false, %56 ], [ %63, %59 ], !dbg !1543
  br i1 %65, label %66, label %149, !dbg !1538

66:                                               ; preds = %64
  call void @llvm.dbg.declare(metadata [4096 x i8]* %12, metadata !1544, metadata !DIExpression()), !dbg !1549
  %67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0, !dbg !1550
  %68 = load i8*, i8** %9, align 8, !dbg !1551
  %69 = load i8*, i8** %4, align 8, !dbg !1552
  %70 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %67, i64 noundef 4096, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5.82, i64 0, i64 0), i8* noundef %68, i8* noundef %69) #19, !dbg !1553
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0, !dbg !1554
  %72 = call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %71, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.80, i64 0, i64 0)), !dbg !1556
  store %struct._IO_FILE* %72, %struct._IO_FILE** %3, align 8, !dbg !1557
  %73 = icmp ne %struct._IO_FILE* %72, null, !dbg !1557
  br i1 %73, label %74, label %121, !dbg !1558

74:                                               ; preds = %66
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1559
  %76 = call i64 @getline(i8** noundef %10, i64* noundef %11, %struct._IO_FILE* noundef %75), !dbg !1560
  %77 = icmp ne i64 %76, -1, !dbg !1561
  br i1 %77, label %78, label %121, !dbg !1562

78:                                               ; preds = %74
  %79 = load i8*, i8** %10, align 8, !dbg !1563
  %80 = call i32 @strncmp(i8* noundef %79, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.83, i64 0, i64 0), i64 noundef 3) #21, !dbg !1564
  %81 = icmp ne i32 %80, 0, !dbg !1565
  br i1 %81, label %82, label %121, !dbg !1566

82:                                               ; preds = %78
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1567, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1570, metadata !DIExpression()), !dbg !1571
  %83 = load i8*, i8** %10, align 8, !dbg !1572
  %84 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %83, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7.84, i64 0, i64 0), i64* noundef %13, i64* noundef %14) #19, !dbg !1574
  %85 = icmp eq i32 %84, 2, !dbg !1575
  br i1 %85, label %86, label %120, !dbg !1576

86:                                               ; preds = %82
  %87 = load i64, i64* %14, align 8, !dbg !1577
  %88 = icmp ne i64 %87, 0, !dbg !1577
  br i1 %88, label %89, label %120, !dbg !1578

89:                                               ; preds = %86
  call void @llvm.dbg.declare(metadata double* %15, metadata !1579, metadata !DIExpression()), !dbg !1581
  %90 = load i64, i64* %13, align 8, !dbg !1582
  %91 = sitofp i64 %90 to double, !dbg !1583
  %92 = load i64, i64* %14, align 8, !dbg !1584
  %93 = sitofp i64 %92 to double, !dbg !1584
  %94 = fdiv double %91, %93, !dbg !1585
  store double %94, double* %15, align 8, !dbg !1581
  %95 = load i64, i64* %2, align 8, !dbg !1586
  %96 = icmp eq i64 %95, -1, !dbg !1588
  br i1 %96, label %102, label %97, !dbg !1589

97:                                               ; preds = %89
  %98 = load double, double* %15, align 8, !dbg !1590
  %99 = load i64, i64* %2, align 8, !dbg !1591
  %100 = uitofp i64 %99 to double, !dbg !1591
  %101 = fcmp olt double %98, %100, !dbg !1592
  br i1 %101, label %102, label %119, !dbg !1593

102:                                              ; preds = %97, %89
  %103 = load double, double* %15, align 8, !dbg !1594
  %104 = fadd double %103, 5.000000e-01, !dbg !1594
  %105 = fptosi double %104 to i64, !dbg !1594
  %106 = icmp sgt i64 1, %105, !dbg !1594
  br i1 %106, label %107, label %108, !dbg !1594

107:                                              ; preds = %102
  br label %112, !dbg !1594

108:                                              ; preds = %102
  %109 = load double, double* %15, align 8, !dbg !1594
  %110 = fadd double %109, 5.000000e-01, !dbg !1594
  %111 = fptosi double %110 to i64, !dbg !1594
  br label %112, !dbg !1594

112:                                              ; preds = %108, %107
  %113 = phi i64 [ 1, %107 ], [ %111, %108 ], !dbg !1594
  store i64 %113, i64* %2, align 8, !dbg !1596
  %114 = load i64, i64* %2, align 8, !dbg !1597
  %115 = icmp eq i64 %114, 1, !dbg !1599
  br i1 %115, label %116, label %118, !dbg !1600

116:                                              ; preds = %112
  %117 = load i8*, i8** %4, align 8, !dbg !1601
  store i8 0, i8* %117, align 1, !dbg !1602
  br label %118, !dbg !1603

118:                                              ; preds = %116, %112
  br label %119, !dbg !1604

119:                                              ; preds = %118, %97
  br label %120, !dbg !1605

120:                                              ; preds = %119, %86, %82
  br label %121, !dbg !1606

121:                                              ; preds = %120, %78, %74, %66
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1607
  %123 = icmp ne %struct._IO_FILE* %122, null, !dbg !1607
  br i1 %123, label %124, label %127, !dbg !1609

124:                                              ; preds = %121
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1610
  %126 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %125), !dbg !1611
  br label %127, !dbg !1611

127:                                              ; preds = %124, %121
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1612, metadata !DIExpression()), !dbg !1613
  %128 = load i8*, i8** %4, align 8, !dbg !1614
  %129 = call i8* @strrchr(i8* noundef %128, i32 noundef 47) #21, !dbg !1615
  store i8* %129, i8** %16, align 8, !dbg !1613
  %130 = load i8*, i8** %16, align 8, !dbg !1616
  %131 = icmp ne i8* %130, null, !dbg !1616
  br i1 %131, label %133, label %132, !dbg !1618

132:                                              ; preds = %127
  br label %149, !dbg !1619

133:                                              ; preds = %127
  %134 = load i8*, i8** %16, align 8, !dbg !1620
  %135 = load i8*, i8** %4, align 8, !dbg !1622
  %136 = icmp eq i8* %134, %135, !dbg !1623
  br i1 %136, label %137, label %146, !dbg !1624

137:                                              ; preds = %133
  %138 = load i8*, i8** %4, align 8, !dbg !1625
  %139 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !1626
  %140 = load i8, i8* %139, align 1, !dbg !1627
  %141 = zext i8 %140 to i32, !dbg !1627
  %142 = icmp ne i32 %141, 0, !dbg !1627
  br i1 %142, label %143, label %146, !dbg !1628

143:                                              ; preds = %137
  %144 = load i8*, i8** %4, align 8, !dbg !1629
  %145 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !1630
  store i8 0, i8* %145, align 1, !dbg !1631
  br label %148, !dbg !1632

146:                                              ; preds = %137, %133
  %147 = load i8*, i8** %16, align 8, !dbg !1633
  store i8 0, i8* %147, align 1, !dbg !1634
  br label %148

148:                                              ; preds = %146, %143
  br label %56, !dbg !1538, !llvm.loop !1635

149:                                              ; preds = %132, %64
  %150 = load i8*, i8** %10, align 8, !dbg !1637
  call void @free(i8* noundef %150) #19, !dbg !1638
  %151 = load i8*, i8** %9, align 8, !dbg !1639
  call void @free(i8* noundef %151) #19, !dbg !1640
  %152 = load i8*, i8** %5, align 8, !dbg !1641
  call void @free(i8* noundef %152) #19, !dbg !1642
  %153 = load i64, i64* %2, align 8, !dbg !1643
  store i64 %153, i64* %1, align 8, !dbg !1644
  br label %154, !dbg !1644

154:                                              ; preds = %149, %20
  %155 = load i64, i64* %1, align 8, !dbg !1645
  ret i64 %155, !dbg !1645
}

declare i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cgroup2_mount() #4 !dbg !1646 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.mntent*, align 8
  %5 = call i32 @access(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8.85, i64 0, i64 0), i32 noundef 0) #19, !dbg !1648
  %6 = icmp eq i32 %5, 0, !dbg !1650
  br i1 %6, label %7, label %9, !dbg !1651

7:                                                ; preds = %0
  %8 = call noalias i8* @strdup(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9.86, i64 0, i64 0)) #19, !dbg !1652
  store i8* %8, i8** %1, align 8, !dbg !1653
  br label %34, !dbg !1653

9:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i8* null, i8** %2, align 8, !dbg !1655
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1656, metadata !DIExpression()), !dbg !1657
  %10 = call %struct._IO_FILE* @setmntent(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.80, i64 0, i64 0)) #19, !dbg !1658
  store %struct._IO_FILE* %10, %struct._IO_FILE** %3, align 8, !dbg !1657
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1659
  %12 = icmp ne %struct._IO_FILE* %11, null, !dbg !1659
  br i1 %12, label %14, label %13, !dbg !1661

13:                                               ; preds = %9
  store i8* null, i8** %1, align 8, !dbg !1662
  br label %34, !dbg !1662

14:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.mntent** %4, metadata !1663, metadata !DIExpression()), !dbg !1674
  br label %15, !dbg !1675

15:                                               ; preds = %29, %14
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1676
  %17 = call %struct.mntent* @getmntent(%struct._IO_FILE* noundef %16) #19, !dbg !1677
  store %struct.mntent* %17, %struct.mntent** %4, align 8, !dbg !1678
  %18 = icmp ne %struct.mntent* %17, null, !dbg !1679
  br i1 %18, label %19, label %30, !dbg !1675

19:                                               ; preds = %15
  %20 = load %struct.mntent*, %struct.mntent** %4, align 8, !dbg !1680
  %21 = getelementptr inbounds %struct.mntent, %struct.mntent* %20, i32 0, i32 2, !dbg !1683
  %22 = load i8*, i8** %21, align 8, !dbg !1683
  %23 = call i1 @streq(i8* noundef %22, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.88, i64 0, i64 0)), !dbg !1684
  br i1 %23, label %24, label %29, !dbg !1685

24:                                               ; preds = %19
  %25 = load %struct.mntent*, %struct.mntent** %4, align 8, !dbg !1686
  %26 = getelementptr inbounds %struct.mntent, %struct.mntent* %25, i32 0, i32 1, !dbg !1688
  %27 = load i8*, i8** %26, align 8, !dbg !1688
  %28 = call noalias i8* @strdup(i8* noundef %27) #19, !dbg !1689
  store i8* %28, i8** %2, align 8, !dbg !1690
  br label %30, !dbg !1691

29:                                               ; preds = %19
  br label %15, !dbg !1675, !llvm.loop !1692

30:                                               ; preds = %24, %15
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1694
  %32 = call i32 @endmntent(%struct._IO_FILE* noundef %31) #19, !dbg !1695
  %33 = load i8*, i8** %2, align 8, !dbg !1696
  store i8* %33, i8** %1, align 8, !dbg !1697
  br label %34, !dbg !1697

34:                                               ; preds = %30, %13, %7
  %35 = load i8*, i8** %1, align 8, !dbg !1698
  ret i8* %35, !dbg !1698
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @setmntent(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare %struct.mntent* @getmntent(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @endmntent(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1699 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1700, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1702, metadata !DIExpression()), !dbg !1703
  %5 = load i8*, i8** %2, align 8, !dbg !1704
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #21, !dbg !1705
  store i8* %6, i8** %3, align 8, !dbg !1703
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1706, metadata !DIExpression()), !dbg !1707
  %7 = load i8*, i8** %3, align 8, !dbg !1708
  %8 = icmp ne i8* %7, null, !dbg !1708
  br i1 %8, label %9, label %12, !dbg !1708

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1709
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1710
  br label %14, !dbg !1708

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1711
  br label %14, !dbg !1708

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1708
  store i8* %15, i8** %4, align 8, !dbg !1707
  %16 = load i8*, i8** %4, align 8, !dbg !1712
  %17 = load i8*, i8** %2, align 8, !dbg !1714
  %18 = ptrtoint i8* %16 to i64, !dbg !1715
  %19 = ptrtoint i8* %17 to i64, !dbg !1715
  %20 = sub i64 %18, %19, !dbg !1715
  %21 = icmp sle i64 7, %20, !dbg !1716
  br i1 %21, label %22, label %36, !dbg !1717

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1718
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1719
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i64 0, i64 0), i64 noundef 7), !dbg !1720
  br i1 %25, label %26, label %36, !dbg !1721

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1722
  store i8* %27, i8** %2, align 8, !dbg !1724
  %28 = load i8*, i8** %4, align 8, !dbg !1725
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.94, i64 0, i64 0), i64 noundef 3) #21, !dbg !1727
  %30 = icmp eq i32 %29, 0, !dbg !1728
  br i1 %30, label %31, label %35, !dbg !1729

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1730
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1730
  store i8* %33, i8** %4, align 8, !dbg !1730
  %34 = load i8*, i8** %4, align 8, !dbg !1732
  store i8* %34, i8** %2, align 8, !dbg !1733
  br label %35, !dbg !1734

35:                                               ; preds = %31, %26
  br label %36, !dbg !1735

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1736
  store i8* %37, i8** @program_name, align 8, !dbg !1737
  %38 = load i8*, i8** %2, align 8, !dbg !1738
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1739
  %39 = load i8*, i8** %4, align 8, !dbg !1740
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1741
  ret void, !dbg !1742
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !117 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1743, metadata !DIExpression()), !dbg !1744
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1745, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1747, metadata !DIExpression()), !dbg !1748
  %9 = load i8*, i8** %4, align 8, !dbg !1749
  %10 = call i8* @gettext(i8* noundef %9) #19, !dbg !1750
  store i8* %10, i8** %6, align 8, !dbg !1748
  %11 = load i8*, i8** %6, align 8, !dbg !1751
  %12 = load i8*, i8** %4, align 8, !dbg !1753
  %13 = icmp ne i8* %11, %12, !dbg !1754
  br i1 %13, label %14, label %16, !dbg !1755

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1756
  store i8* %15, i8** %3, align 8, !dbg !1757
  br label %26, !dbg !1757

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1758, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1764, metadata !DIExpression()), !dbg !1775
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1776
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #19, !dbg !1777
  %18 = icmp eq i64 %17, 2, !dbg !1779
  br i1 %18, label %19, label %24, !dbg !1780

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1781
  %21 = icmp eq i32 %20, 2047, !dbg !1782
  br i1 %21, label %22, label %24, !dbg !1783

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1784
  store i8* %23, i8** %3, align 8, !dbg !1785
  br label %26, !dbg !1785

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1786
  store i8* %25, i8** %3, align 8, !dbg !1787
  br label %26, !dbg !1787

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1788
  ret i8* %27, !dbg !1788
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1789 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1793, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1795, metadata !DIExpression()), !dbg !1796
  %5 = call i32* @__errno_location() #22, !dbg !1797
  %6 = load i32, i32* %5, align 4, !dbg !1797
  store i32 %6, i32* %3, align 4, !dbg !1796
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1798, metadata !DIExpression()), !dbg !1799
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1800
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1800
  br i1 %8, label %9, label %11, !dbg !1800

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1801
  br label %12, !dbg !1800

11:                                               ; preds = %1
  br label %12, !dbg !1800

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1800
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1800
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #25, !dbg !1802
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1802
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1799
  %17 = load i32, i32* %3, align 4, !dbg !1803
  %18 = call i32* @__errno_location() #22, !dbg !1804
  store i32 %17, i32* %18, align 4, !dbg !1805
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1806
  ret %struct.quoting_options* %19, !dbg !1807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1808 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1813, metadata !DIExpression()), !dbg !1814
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1815
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1815
  br i1 %4, label %5, label %7, !dbg !1815

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1816
  br label %8, !dbg !1815

7:                                                ; preds = %1
  br label %8, !dbg !1815

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1815
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1817
  %11 = load i32, i32* %10, align 8, !dbg !1817
  ret i32 %11, !dbg !1818
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1819 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1822, metadata !DIExpression()), !dbg !1823
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1824, metadata !DIExpression()), !dbg !1825
  %5 = load i32, i32* %4, align 4, !dbg !1826
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1827
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1827
  br i1 %7, label %8, label %10, !dbg !1827

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1828
  br label %11, !dbg !1827

10:                                               ; preds = %2
  br label %11, !dbg !1827

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1827
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1829
  store i32 %5, i32* %13, align 8, !dbg !1830
  ret void, !dbg !1831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1832 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1835, metadata !DIExpression()), !dbg !1836
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1837, metadata !DIExpression()), !dbg !1838
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1841, metadata !DIExpression()), !dbg !1842
  %11 = load i8, i8* %5, align 1, !dbg !1843
  store i8 %11, i8* %7, align 1, !dbg !1842
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1844, metadata !DIExpression()), !dbg !1846
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1847
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1847
  br i1 %13, label %14, label %16, !dbg !1847

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1848
  br label %17, !dbg !1847

16:                                               ; preds = %3
  br label %17, !dbg !1847

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1847
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1849
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1850
  %21 = load i8, i8* %7, align 1, !dbg !1851
  %22 = zext i8 %21 to i64, !dbg !1851
  %23 = udiv i64 %22, 32, !dbg !1852
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1853
  store i32* %24, i32** %8, align 8, !dbg !1846
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1854, metadata !DIExpression()), !dbg !1855
  %25 = load i8, i8* %7, align 1, !dbg !1856
  %26 = zext i8 %25 to i64, !dbg !1856
  %27 = urem i64 %26, 32, !dbg !1857
  %28 = trunc i64 %27 to i32, !dbg !1856
  store i32 %28, i32* %9, align 4, !dbg !1855
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1858, metadata !DIExpression()), !dbg !1859
  %29 = load i32*, i32** %8, align 8, !dbg !1860
  %30 = load i32, i32* %29, align 4, !dbg !1861
  %31 = load i32, i32* %9, align 4, !dbg !1862
  %32 = lshr i32 %30, %31, !dbg !1863
  %33 = and i32 %32, 1, !dbg !1864
  store i32 %33, i32* %10, align 4, !dbg !1859
  %34 = load i32, i32* %6, align 4, !dbg !1865
  %35 = and i32 %34, 1, !dbg !1866
  %36 = load i32, i32* %10, align 4, !dbg !1867
  %37 = xor i32 %35, %36, !dbg !1868
  %38 = load i32, i32* %9, align 4, !dbg !1869
  %39 = shl i32 %37, %38, !dbg !1870
  %40 = load i32*, i32** %8, align 8, !dbg !1871
  %41 = load i32, i32* %40, align 4, !dbg !1872
  %42 = xor i32 %41, %39, !dbg !1872
  store i32 %42, i32* %40, align 4, !dbg !1872
  %43 = load i32, i32* %10, align 4, !dbg !1873
  ret i32 %43, !dbg !1874
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1875 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1878, metadata !DIExpression()), !dbg !1879
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1880, metadata !DIExpression()), !dbg !1881
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1882
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1882
  br i1 %7, label %9, label %8, !dbg !1884

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1885
  br label %9, !dbg !1886

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1887, metadata !DIExpression()), !dbg !1888
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1889
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1890
  %12 = load i32, i32* %11, align 4, !dbg !1890
  store i32 %12, i32* %5, align 4, !dbg !1888
  %13 = load i32, i32* %4, align 4, !dbg !1891
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1892
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1893
  store i32 %13, i32* %15, align 4, !dbg !1894
  %16 = load i32, i32* %5, align 4, !dbg !1895
  ret i32 %16, !dbg !1896
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1897 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1900, metadata !DIExpression()), !dbg !1901
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1902, metadata !DIExpression()), !dbg !1903
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1904, metadata !DIExpression()), !dbg !1905
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1906
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1906
  br i1 %8, label %10, label %9, !dbg !1908

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1909
  br label %10, !dbg !1910

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1911
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1912
  store i32 10, i32* %12, align 8, !dbg !1913
  %13 = load i8*, i8** %5, align 8, !dbg !1914
  %14 = icmp ne i8* %13, null, !dbg !1914
  br i1 %14, label %15, label %18, !dbg !1916

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1917
  %17 = icmp ne i8* %16, null, !dbg !1917
  br i1 %17, label %19, label %18, !dbg !1918

18:                                               ; preds = %15, %10
  call void @abort() #20, !dbg !1919
  unreachable, !dbg !1919

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1920
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1921
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1922
  store i8* %20, i8** %22, align 8, !dbg !1923
  %23 = load i8*, i8** %6, align 8, !dbg !1924
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1925
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1926
  store i8* %23, i8** %25, align 8, !dbg !1927
  ret void, !dbg !1928
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1929 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1932, metadata !DIExpression()), !dbg !1933
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1934, metadata !DIExpression()), !dbg !1935
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1936, metadata !DIExpression()), !dbg !1937
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1938, metadata !DIExpression()), !dbg !1939
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1940, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1942, metadata !DIExpression()), !dbg !1943
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1944
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1944
  br i1 %15, label %16, label %18, !dbg !1944

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1945
  br label %19, !dbg !1944

18:                                               ; preds = %5
  br label %19, !dbg !1944

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1944
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1943
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1946, metadata !DIExpression()), !dbg !1947
  %21 = call i32* @__errno_location() #22, !dbg !1948
  %22 = load i32, i32* %21, align 4, !dbg !1948
  store i32 %22, i32* %12, align 4, !dbg !1947
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1949, metadata !DIExpression()), !dbg !1950
  %23 = load i8*, i8** %6, align 8, !dbg !1951
  %24 = load i64, i64* %7, align 8, !dbg !1952
  %25 = load i8*, i8** %8, align 8, !dbg !1953
  %26 = load i64, i64* %9, align 8, !dbg !1954
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1955
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1956
  %29 = load i32, i32* %28, align 8, !dbg !1956
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1957
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1958
  %32 = load i32, i32* %31, align 4, !dbg !1958
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1959
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1960
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1959
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1961
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1962
  %38 = load i8*, i8** %37, align 8, !dbg !1962
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1963
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1964
  %41 = load i8*, i8** %40, align 8, !dbg !1964
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1965
  store i64 %42, i64* %13, align 8, !dbg !1950
  %43 = load i32, i32* %12, align 4, !dbg !1966
  %44 = call i32* @__errno_location() #22, !dbg !1967
  store i32 %43, i32* %44, align 4, !dbg !1968
  %45 = load i64, i64* %13, align 8, !dbg !1969
  ret i64 %45, !dbg !1970
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1971 {
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca i8, align 1
  %36 = alloca i8, align 1
  %37 = alloca i64, align 8
  %38 = alloca i8, align 1
  %39 = alloca %struct.__mbstate_t, align 4
  %40 = alloca i32, align 4
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1976, metadata !DIExpression()), !dbg !1977
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1978, metadata !DIExpression()), !dbg !1979
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1980, metadata !DIExpression()), !dbg !1981
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1982, metadata !DIExpression()), !dbg !1983
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1984, metadata !DIExpression()), !dbg !1985
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1986, metadata !DIExpression()), !dbg !1987
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1988, metadata !DIExpression()), !dbg !1989
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1990, metadata !DIExpression()), !dbg !1991
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1992, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1994, metadata !DIExpression()), !dbg !1995
  %44 = call i64 @__ctype_get_mb_cur_max() #19, !dbg !1996
  %45 = icmp eq i64 %44, 1, !dbg !1997
  %46 = zext i1 %45 to i8, !dbg !1995
  store i8 %46, i8* %20, align 1, !dbg !1995
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1998, metadata !DIExpression()), !dbg !1999
  store i64 0, i64* %21, align 8, !dbg !1999
  call void @llvm.dbg.declare(metadata i64* %22, metadata !2000, metadata !DIExpression()), !dbg !2001
  store i64 0, i64* %22, align 8, !dbg !2001
  call void @llvm.dbg.declare(metadata i8** %23, metadata !2002, metadata !DIExpression()), !dbg !2003
  store i8* null, i8** %23, align 8, !dbg !2003
  call void @llvm.dbg.declare(metadata i64* %24, metadata !2004, metadata !DIExpression()), !dbg !2005
  store i64 0, i64* %24, align 8, !dbg !2005
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2006, metadata !DIExpression()), !dbg !2007
  store i8 0, i8* %25, align 1, !dbg !2007
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2008, metadata !DIExpression()), !dbg !2009
  %47 = load i32, i32* %16, align 4, !dbg !2010
  %48 = and i32 %47, 2, !dbg !2011
  %49 = icmp ne i32 %48, 0, !dbg !2012
  %50 = zext i1 %49 to i8, !dbg !2009
  store i8 %50, i8* %26, align 1, !dbg !2009
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2013, metadata !DIExpression()), !dbg !2014
  store i8 0, i8* %27, align 1, !dbg !2014
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2015, metadata !DIExpression()), !dbg !2016
  store i8 1, i8* %28, align 1, !dbg !2016
  br label %51, !dbg !2017

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !2018), !dbg !2019
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2020, metadata !DIExpression()), !dbg !2021
  store i8 0, i8* %29, align 1, !dbg !2021
  %52 = load i32, i32* %15, align 4, !dbg !2022
  switch i32 %52, label %137 [
    i32 6, label %53
    i32 5, label %54
    i32 7, label %71
    i32 8, label %72
    i32 9, label %72
    i32 10, label %72
    i32 3, label %112
    i32 1, label %113
    i32 4, label %114
    i32 2, label %119
    i32 0, label %136
  ], !dbg !2023

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !2024
  store i8 1, i8* %26, align 1, !dbg !2026
  br label %54, !dbg !2027

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !2028
  %56 = trunc i8 %55 to i1, !dbg !2028
  br i1 %56, label %70, label %57, !dbg !2030

57:                                               ; preds = %54
  br label %58, !dbg !2031

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !2032
  %60 = load i64, i64* %12, align 8, !dbg !2032
  %61 = icmp ult i64 %59, %60, !dbg !2032
  br i1 %61, label %62, label %66, !dbg !2035

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !2032
  %64 = load i64, i64* %21, align 8, !dbg !2032
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !2032
  store i8 34, i8* %65, align 1, !dbg !2032
  br label %66, !dbg !2032

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !2035
  %68 = add i64 %67, 1, !dbg !2035
  store i64 %68, i64* %21, align 8, !dbg !2035
  br label %69, !dbg !2035

69:                                               ; preds = %66
  br label %70, !dbg !2035

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !2036
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), i8** %23, align 8, !dbg !2037
  store i64 1, i64* %24, align 8, !dbg !2038
  br label %138, !dbg !2039

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2040
  store i8 0, i8* %26, align 1, !dbg !2041
  br label %138, !dbg !2042

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !2043
  %74 = icmp ne i32 %73, 10, !dbg !2046
  br i1 %74, label %75, label %80, !dbg !2047

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !2048
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.108, i64 0, i64 0), i32 noundef %76), !dbg !2050
  store i8* %77, i8** %18, align 8, !dbg !2051
  %78 = load i32, i32* %15, align 4, !dbg !2052
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), i32 noundef %78), !dbg !2053
  store i8* %79, i8** %19, align 8, !dbg !2054
  br label %80, !dbg !2055

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !2056
  %82 = trunc i8 %81 to i1, !dbg !2056
  br i1 %82, label %108, label %83, !dbg !2058

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !2059, metadata !DIExpression()), !dbg !2061
  %84 = load i8*, i8** %18, align 8, !dbg !2062
  store i8* %84, i8** %30, align 8, !dbg !2061
  br label %85, !dbg !2063

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !2064
  %87 = load i8, i8* %86, align 1, !dbg !2066
  %88 = icmp ne i8 %87, 0, !dbg !2067
  br i1 %88, label %89, label %107, !dbg !2067

89:                                               ; preds = %85
  br label %90, !dbg !2068

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !2069
  %92 = load i64, i64* %12, align 8, !dbg !2069
  %93 = icmp ult i64 %91, %92, !dbg !2069
  br i1 %93, label %94, label %100, !dbg !2072

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !2069
  %96 = load i8, i8* %95, align 1, !dbg !2069
  %97 = load i8*, i8** %11, align 8, !dbg !2069
  %98 = load i64, i64* %21, align 8, !dbg !2069
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2069
  store i8 %96, i8* %99, align 1, !dbg !2069
  br label %100, !dbg !2069

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !2072
  %102 = add i64 %101, 1, !dbg !2072
  store i64 %102, i64* %21, align 8, !dbg !2072
  br label %103, !dbg !2072

103:                                              ; preds = %100
  br label %104, !dbg !2072

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !2073
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !2073
  store i8* %106, i8** %30, align 8, !dbg !2073
  br label %85, !dbg !2074, !llvm.loop !2075

107:                                              ; preds = %85
  br label %108, !dbg !2076

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !2077
  %109 = load i8*, i8** %19, align 8, !dbg !2078
  store i8* %109, i8** %23, align 8, !dbg !2079
  %110 = load i8*, i8** %23, align 8, !dbg !2080
  %111 = call i64 @strlen(i8* noundef %110) #21, !dbg !2081
  store i64 %111, i64* %24, align 8, !dbg !2082
  br label %138, !dbg !2083

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2084
  br label %113, !dbg !2085

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !2086
  br label %114, !dbg !2087

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !2088
  %116 = trunc i8 %115 to i1, !dbg !2088
  br i1 %116, label %118, label %117, !dbg !2090

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !2091
  br label %118, !dbg !2092

118:                                              ; preds = %117, %114
  br label %119, !dbg !2088

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !2093
  %120 = load i8, i8* %26, align 1, !dbg !2094
  %121 = trunc i8 %120 to i1, !dbg !2094
  br i1 %121, label %135, label %122, !dbg !2096

122:                                              ; preds = %119
  br label %123, !dbg !2097

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !2098
  %125 = load i64, i64* %12, align 8, !dbg !2098
  %126 = icmp ult i64 %124, %125, !dbg !2098
  br i1 %126, label %127, label %131, !dbg !2101

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !2098
  %129 = load i64, i64* %21, align 8, !dbg !2098
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !2098
  store i8 39, i8* %130, align 1, !dbg !2098
  br label %131, !dbg !2098

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !2101
  %133 = add i64 %132, 1, !dbg !2101
  store i64 %133, i64* %21, align 8, !dbg !2101
  br label %134, !dbg !2101

134:                                              ; preds = %131
  br label %135, !dbg !2101

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), i8** %23, align 8, !dbg !2102
  store i64 1, i64* %24, align 8, !dbg !2103
  br label %138, !dbg !2104

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !2105
  br label %138, !dbg !2106

137:                                              ; preds = %51
  call void @abort() #20, !dbg !2107
  unreachable, !dbg !2107

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !2108, metadata !DIExpression()), !dbg !2110
  store i64 0, i64* %31, align 8, !dbg !2110
  br label %139, !dbg !2111

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !2112
  %141 = icmp eq i64 %140, -1, !dbg !2114
  br i1 %141, label %142, label %150, !dbg !2112

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !2115
  %144 = load i64, i64* %31, align 8, !dbg !2116
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !2115
  %146 = load i8, i8* %145, align 1, !dbg !2115
  %147 = zext i8 %146 to i32, !dbg !2115
  %148 = icmp eq i32 %147, 0, !dbg !2117
  %149 = zext i1 %148 to i32, !dbg !2117
  br label %155, !dbg !2112

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !2118
  %152 = load i64, i64* %14, align 8, !dbg !2119
  %153 = icmp eq i64 %151, %152, !dbg !2120
  %154 = zext i1 %153 to i32, !dbg !2120
  br label %155, !dbg !2112

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !2112
  %157 = icmp ne i32 %156, 0, !dbg !2121
  %158 = xor i1 %157, true, !dbg !2121
  br i1 %158, label %159, label %996, !dbg !2122

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !2123, metadata !DIExpression()), !dbg !2125
  store i8 0, i8* %32, align 1, !dbg !2125
  call void @llvm.dbg.declare(metadata i8* %33, metadata !2126, metadata !DIExpression()), !dbg !2127
  store i8 0, i8* %33, align 1, !dbg !2127
  call void @llvm.dbg.declare(metadata i8* %34, metadata !2128, metadata !DIExpression()), !dbg !2129
  store i8 0, i8* %34, align 1, !dbg !2129
  %160 = load i8, i8* %25, align 1, !dbg !2130
  %161 = trunc i8 %160 to i1, !dbg !2130
  br i1 %161, label %162, label %197, !dbg !2132

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !2133
  %164 = icmp ne i32 %163, 2, !dbg !2134
  br i1 %164, label %165, label %197, !dbg !2135

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !2136
  %167 = icmp ne i64 %166, 0, !dbg !2136
  br i1 %167, label %168, label %197, !dbg !2137

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !2138
  %170 = load i64, i64* %24, align 8, !dbg !2139
  %171 = add i64 %169, %170, !dbg !2140
  %172 = load i64, i64* %14, align 8, !dbg !2141
  %173 = icmp eq i64 %172, -1, !dbg !2142
  br i1 %173, label %174, label %180, !dbg !2143

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !2144
  %176 = icmp ult i64 1, %175, !dbg !2145
  br i1 %176, label %177, label %180, !dbg !2141

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !2146
  %179 = call i64 @strlen(i8* noundef %178) #21, !dbg !2147
  store i64 %179, i64* %14, align 8, !dbg !2148
  br label %182, !dbg !2141

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !2149
  br label %182, !dbg !2141

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !2141
  %184 = icmp ule i64 %171, %183, !dbg !2150
  br i1 %184, label %185, label %197, !dbg !2151

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !2152
  %187 = load i64, i64* %31, align 8, !dbg !2153
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !2154
  %189 = load i8*, i8** %23, align 8, !dbg !2155
  %190 = load i64, i64* %24, align 8, !dbg !2156
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !2157
  br i1 %191, label %192, label %197, !dbg !2158

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !2159
  %194 = trunc i8 %193 to i1, !dbg !2159
  br i1 %194, label %195, label %196, !dbg !2162

195:                                              ; preds = %192
  br label %1078, !dbg !2163

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !2164
  br label %197, !dbg !2165

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !2166, metadata !DIExpression()), !dbg !2167
  %198 = load i8*, i8** %13, align 8, !dbg !2168
  %199 = load i64, i64* %31, align 8, !dbg !2169
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !2168
  %201 = load i8, i8* %200, align 1, !dbg !2168
  store i8 %201, i8* %35, align 1, !dbg !2167
  %202 = load i8, i8* %35, align 1, !dbg !2170
  %203 = zext i8 %202 to i32, !dbg !2170
  switch i32 %203, label %542 [
    i32 0, label %204
    i32 63, label %325
    i32 7, label %419
    i32 8, label %420
    i32 12, label %421
    i32 10, label %422
    i32 13, label %423
    i32 9, label %424
    i32 11, label %425
    i32 92, label %426
    i32 123, label %460
    i32 125, label %460
    i32 35, label %474
    i32 126, label %474
    i32 32, label %479
    i32 33, label %480
    i32 34, label %480
    i32 36, label %480
    i32 38, label %480
    i32 40, label %480
    i32 41, label %480
    i32 42, label %480
    i32 59, label %480
    i32 60, label %480
    i32 61, label %480
    i32 62, label %480
    i32 91, label %480
    i32 94, label %480
    i32 96, label %480
    i32 124, label %480
    i32 39, label %488
    i32 37, label %541
    i32 43, label %541
    i32 44, label %541
    i32 45, label %541
    i32 46, label %541
    i32 47, label %541
    i32 48, label %541
    i32 49, label %541
    i32 50, label %541
    i32 51, label %541
    i32 52, label %541
    i32 53, label %541
    i32 54, label %541
    i32 55, label %541
    i32 56, label %541
    i32 57, label %541
    i32 58, label %541
    i32 65, label %541
    i32 66, label %541
    i32 67, label %541
    i32 68, label %541
    i32 69, label %541
    i32 70, label %541
    i32 71, label %541
    i32 72, label %541
    i32 73, label %541
    i32 74, label %541
    i32 75, label %541
    i32 76, label %541
    i32 77, label %541
    i32 78, label %541
    i32 79, label %541
    i32 80, label %541
    i32 81, label %541
    i32 82, label %541
    i32 83, label %541
    i32 84, label %541
    i32 85, label %541
    i32 86, label %541
    i32 87, label %541
    i32 88, label %541
    i32 89, label %541
    i32 90, label %541
    i32 93, label %541
    i32 95, label %541
    i32 97, label %541
    i32 98, label %541
    i32 99, label %541
    i32 100, label %541
    i32 101, label %541
    i32 102, label %541
    i32 103, label %541
    i32 104, label %541
    i32 105, label %541
    i32 106, label %541
    i32 107, label %541
    i32 108, label %541
    i32 109, label %541
    i32 110, label %541
    i32 111, label %541
    i32 112, label %541
    i32 113, label %541
    i32 114, label %541
    i32 115, label %541
    i32 116, label %541
    i32 117, label %541
    i32 118, label %541
    i32 119, label %541
    i32 120, label %541
    i32 121, label %541
    i32 122, label %541
  ], !dbg !2171

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !2172
  %206 = trunc i8 %205 to i1, !dbg !2172
  br i1 %206, label %207, label %318, !dbg !2175

207:                                              ; preds = %204
  br label %208, !dbg !2176

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !2178
  %210 = trunc i8 %209 to i1, !dbg !2178
  br i1 %210, label %211, label %212, !dbg !2181

211:                                              ; preds = %208
  br label %1078, !dbg !2178

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !2181
  %213 = load i32, i32* %15, align 4, !dbg !2182
  %214 = icmp eq i32 %213, 2, !dbg !2182
  br i1 %214, label %215, label %255, !dbg !2182

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !2182
  %217 = trunc i8 %216 to i1, !dbg !2182
  br i1 %217, label %255, label %218, !dbg !2181

218:                                              ; preds = %215
  br label %219, !dbg !2184

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2186
  %221 = load i64, i64* %12, align 8, !dbg !2186
  %222 = icmp ult i64 %220, %221, !dbg !2186
  br i1 %222, label %223, label %227, !dbg !2189

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2186
  %225 = load i64, i64* %21, align 8, !dbg !2186
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2186
  store i8 39, i8* %226, align 1, !dbg !2186
  br label %227, !dbg !2186

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2189
  %229 = add i64 %228, 1, !dbg !2189
  store i64 %229, i64* %21, align 8, !dbg !2189
  br label %230, !dbg !2189

230:                                              ; preds = %227
  br label %231, !dbg !2184

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2190
  %233 = load i64, i64* %12, align 8, !dbg !2190
  %234 = icmp ult i64 %232, %233, !dbg !2190
  br i1 %234, label %235, label %239, !dbg !2193

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2190
  %237 = load i64, i64* %21, align 8, !dbg !2190
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2190
  store i8 36, i8* %238, align 1, !dbg !2190
  br label %239, !dbg !2190

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2193
  %241 = add i64 %240, 1, !dbg !2193
  store i64 %241, i64* %21, align 8, !dbg !2193
  br label %242, !dbg !2193

242:                                              ; preds = %239
  br label %243, !dbg !2184

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2194
  %245 = load i64, i64* %12, align 8, !dbg !2194
  %246 = icmp ult i64 %244, %245, !dbg !2194
  br i1 %246, label %247, label %251, !dbg !2197

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2194
  %249 = load i64, i64* %21, align 8, !dbg !2194
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2194
  store i8 39, i8* %250, align 1, !dbg !2194
  br label %251, !dbg !2194

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2197
  %253 = add i64 %252, 1, !dbg !2197
  store i64 %253, i64* %21, align 8, !dbg !2197
  br label %254, !dbg !2197

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !2184
  br label %255, !dbg !2184

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2181

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2198
  %258 = load i64, i64* %12, align 8, !dbg !2198
  %259 = icmp ult i64 %257, %258, !dbg !2198
  br i1 %259, label %260, label %264, !dbg !2201

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2198
  %262 = load i64, i64* %21, align 8, !dbg !2198
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2198
  store i8 92, i8* %263, align 1, !dbg !2198
  br label %264, !dbg !2198

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2201
  %266 = add i64 %265, 1, !dbg !2201
  store i64 %266, i64* %21, align 8, !dbg !2201
  br label %267, !dbg !2201

267:                                              ; preds = %264
  br label %268, !dbg !2181

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2202
  %270 = icmp ne i32 %269, 2, !dbg !2204
  br i1 %270, label %271, label %317, !dbg !2205

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !2206
  %273 = add i64 %272, 1, !dbg !2207
  %274 = load i64, i64* %14, align 8, !dbg !2208
  %275 = icmp ult i64 %273, %274, !dbg !2209
  br i1 %275, label %276, label %317, !dbg !2210

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2211
  %278 = load i64, i64* %31, align 8, !dbg !2212
  %279 = add i64 %278, 1, !dbg !2213
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2211
  %281 = load i8, i8* %280, align 1, !dbg !2211
  %282 = zext i8 %281 to i32, !dbg !2211
  %283 = icmp sle i32 48, %282, !dbg !2214
  br i1 %283, label %284, label %317, !dbg !2215

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2216
  %286 = load i64, i64* %31, align 8, !dbg !2217
  %287 = add i64 %286, 1, !dbg !2218
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2216
  %289 = load i8, i8* %288, align 1, !dbg !2216
  %290 = zext i8 %289 to i32, !dbg !2216
  %291 = icmp sle i32 %290, 57, !dbg !2219
  br i1 %291, label %292, label %317, !dbg !2220

292:                                              ; preds = %284
  br label %293, !dbg !2221

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2223
  %295 = load i64, i64* %12, align 8, !dbg !2223
  %296 = icmp ult i64 %294, %295, !dbg !2223
  br i1 %296, label %297, label %301, !dbg !2226

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2223
  %299 = load i64, i64* %21, align 8, !dbg !2223
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2223
  store i8 48, i8* %300, align 1, !dbg !2223
  br label %301, !dbg !2223

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2226
  %303 = add i64 %302, 1, !dbg !2226
  store i64 %303, i64* %21, align 8, !dbg !2226
  br label %304, !dbg !2226

304:                                              ; preds = %301
  br label %305, !dbg !2227

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2228
  %307 = load i64, i64* %12, align 8, !dbg !2228
  %308 = icmp ult i64 %306, %307, !dbg !2228
  br i1 %308, label %309, label %313, !dbg !2231

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2228
  %311 = load i64, i64* %21, align 8, !dbg !2228
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2228
  store i8 48, i8* %312, align 1, !dbg !2228
  br label %313, !dbg !2228

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2231
  %315 = add i64 %314, 1, !dbg !2231
  store i64 %315, i64* %21, align 8, !dbg !2231
  br label %316, !dbg !2231

316:                                              ; preds = %313
  br label %317, !dbg !2232

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !2233
  br label %324, !dbg !2234

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2235
  %320 = and i32 %319, 1, !dbg !2237
  %321 = icmp ne i32 %320, 0, !dbg !2237
  br i1 %321, label %322, label %323, !dbg !2238

322:                                              ; preds = %318
  br label %993, !dbg !2239

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !2240

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2241
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2242

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !2243
  %329 = trunc i8 %328 to i1, !dbg !2243
  br i1 %329, label %330, label %331, !dbg !2246

330:                                              ; preds = %327
  br label %1078, !dbg !2247

331:                                              ; preds = %327
  br label %418, !dbg !2248

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2249
  %334 = and i32 %333, 4, !dbg !2251
  %335 = icmp ne i32 %334, 0, !dbg !2251
  br i1 %335, label %336, label %417, !dbg !2252

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !2253
  %338 = add i64 %337, 2, !dbg !2254
  %339 = load i64, i64* %14, align 8, !dbg !2255
  %340 = icmp ult i64 %338, %339, !dbg !2256
  br i1 %340, label %341, label %417, !dbg !2257

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2258
  %343 = load i64, i64* %31, align 8, !dbg !2259
  %344 = add i64 %343, 1, !dbg !2260
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2258
  %346 = load i8, i8* %345, align 1, !dbg !2258
  %347 = zext i8 %346 to i32, !dbg !2258
  %348 = icmp eq i32 %347, 63, !dbg !2261
  br i1 %348, label %349, label %417, !dbg !2262

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2263
  %351 = load i64, i64* %31, align 8, !dbg !2264
  %352 = add i64 %351, 2, !dbg !2265
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2263
  %354 = load i8, i8* %353, align 1, !dbg !2263
  %355 = zext i8 %354 to i32, !dbg !2263
  switch i32 %355, label %416 [
    i32 33, label %356
    i32 39, label %356
    i32 40, label %356
    i32 41, label %356
    i32 45, label %356
    i32 47, label %356
    i32 60, label %356
    i32 61, label %356
    i32 62, label %356
  ], !dbg !2266

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !2267
  %358 = trunc i8 %357 to i1, !dbg !2267
  br i1 %358, label %359, label %360, !dbg !2270

359:                                              ; preds = %356
  br label %1078, !dbg !2271

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2272
  %362 = load i64, i64* %31, align 8, !dbg !2273
  %363 = add i64 %362, 2, !dbg !2274
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2272
  %365 = load i8, i8* %364, align 1, !dbg !2272
  store i8 %365, i8* %35, align 1, !dbg !2275
  %366 = load i64, i64* %31, align 8, !dbg !2276
  %367 = add i64 %366, 2, !dbg !2276
  store i64 %367, i64* %31, align 8, !dbg !2276
  br label %368, !dbg !2277

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2278
  %370 = load i64, i64* %12, align 8, !dbg !2278
  %371 = icmp ult i64 %369, %370, !dbg !2278
  br i1 %371, label %372, label %376, !dbg !2281

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2278
  %374 = load i64, i64* %21, align 8, !dbg !2278
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2278
  store i8 63, i8* %375, align 1, !dbg !2278
  br label %376, !dbg !2278

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2281
  %378 = add i64 %377, 1, !dbg !2281
  store i64 %378, i64* %21, align 8, !dbg !2281
  br label %379, !dbg !2281

379:                                              ; preds = %376
  br label %380, !dbg !2282

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2283
  %382 = load i64, i64* %12, align 8, !dbg !2283
  %383 = icmp ult i64 %381, %382, !dbg !2283
  br i1 %383, label %384, label %388, !dbg !2286

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2283
  %386 = load i64, i64* %21, align 8, !dbg !2283
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2283
  store i8 34, i8* %387, align 1, !dbg !2283
  br label %388, !dbg !2283

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2286
  %390 = add i64 %389, 1, !dbg !2286
  store i64 %390, i64* %21, align 8, !dbg !2286
  br label %391, !dbg !2286

391:                                              ; preds = %388
  br label %392, !dbg !2287

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2288
  %394 = load i64, i64* %12, align 8, !dbg !2288
  %395 = icmp ult i64 %393, %394, !dbg !2288
  br i1 %395, label %396, label %400, !dbg !2291

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2288
  %398 = load i64, i64* %21, align 8, !dbg !2288
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2288
  store i8 34, i8* %399, align 1, !dbg !2288
  br label %400, !dbg !2288

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2291
  %402 = add i64 %401, 1, !dbg !2291
  store i64 %402, i64* %21, align 8, !dbg !2291
  br label %403, !dbg !2291

403:                                              ; preds = %400
  br label %404, !dbg !2292

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2293
  %406 = load i64, i64* %12, align 8, !dbg !2293
  %407 = icmp ult i64 %405, %406, !dbg !2293
  br i1 %407, label %408, label %412, !dbg !2296

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2293
  %410 = load i64, i64* %21, align 8, !dbg !2293
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2293
  store i8 63, i8* %411, align 1, !dbg !2293
  br label %412, !dbg !2293

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2296
  %414 = add i64 %413, 1, !dbg !2296
  store i64 %414, i64* %21, align 8, !dbg !2296
  br label %415, !dbg !2296

415:                                              ; preds = %412
  br label %416, !dbg !2297

416:                                              ; preds = %349, %415
  br label %417, !dbg !2298

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2299

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2300

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2301
  br label %454, !dbg !2303

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2304
  br label %454, !dbg !2305

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2306
  br label %454, !dbg !2307

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2308
  br label %446, !dbg !2309

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2310
  br label %446, !dbg !2311

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2312
  br label %446, !dbg !2313

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2314
  br label %454, !dbg !2315

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2316
  store i8 %427, i8* %36, align 1, !dbg !2317
  %428 = load i32, i32* %15, align 4, !dbg !2318
  %429 = icmp eq i32 %428, 2, !dbg !2320
  br i1 %429, label %430, label %435, !dbg !2321

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2322
  %432 = trunc i8 %431 to i1, !dbg !2322
  br i1 %432, label %433, label %434, !dbg !2325

433:                                              ; preds = %430
  br label %1078, !dbg !2326

434:                                              ; preds = %430
  br label %942, !dbg !2327

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2328
  %437 = trunc i8 %436 to i1, !dbg !2328
  br i1 %437, label %438, label %445, !dbg !2330

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2331
  %440 = trunc i8 %439 to i1, !dbg !2331
  br i1 %440, label %441, label %445, !dbg !2332

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2333
  %443 = icmp ne i64 %442, 0, !dbg !2333
  br i1 %443, label %444, label %445, !dbg !2334

444:                                              ; preds = %441
  br label %942, !dbg !2335

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2333

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2336), !dbg !2337
  %447 = load i32, i32* %15, align 4, !dbg !2338
  %448 = icmp eq i32 %447, 2, !dbg !2340
  br i1 %448, label %449, label %453, !dbg !2341

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2342
  %451 = trunc i8 %450 to i1, !dbg !2342
  br i1 %451, label %452, label %453, !dbg !2343

452:                                              ; preds = %449
  br label %1078, !dbg !2344

453:                                              ; preds = %449, %446
  br label %454, !dbg !2342

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2345), !dbg !2346
  %455 = load i8, i8* %25, align 1, !dbg !2347
  %456 = trunc i8 %455 to i1, !dbg !2347
  br i1 %456, label %457, label %459, !dbg !2349

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2350
  store i8 %458, i8* %35, align 1, !dbg !2352
  br label %880, !dbg !2353

459:                                              ; preds = %454
  br label %849, !dbg !2354

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2355
  %462 = icmp eq i64 %461, -1, !dbg !2357
  br i1 %462, label %463, label %469, !dbg !2358

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2359
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2359
  %466 = load i8, i8* %465, align 1, !dbg !2359
  %467 = zext i8 %466 to i32, !dbg !2359
  %468 = icmp eq i32 %467, 0, !dbg !2360
  br i1 %468, label %473, label %472, !dbg !2355

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2361
  %471 = icmp eq i64 %470, 1, !dbg !2362
  br i1 %471, label %473, label %472, !dbg !2358

472:                                              ; preds = %469, %463
  br label %849, !dbg !2363

473:                                              ; preds = %469, %463
  br label %474, !dbg !2364

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2365
  %476 = icmp ne i64 %475, 0, !dbg !2367
  br i1 %476, label %477, label %478, !dbg !2368

477:                                              ; preds = %474
  br label %849, !dbg !2369

478:                                              ; preds = %474
  br label %479, !dbg !2370

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2371
  br label %480, !dbg !2372

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2373
  %482 = icmp eq i32 %481, 2, !dbg !2375
  br i1 %482, label %483, label %487, !dbg !2376

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2377
  %485 = trunc i8 %484 to i1, !dbg !2377
  br i1 %485, label %486, label %487, !dbg !2378

486:                                              ; preds = %483
  br label %1078, !dbg !2379

487:                                              ; preds = %483, %480
  br label %849, !dbg !2380

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2381
  store i8 1, i8* %34, align 1, !dbg !2382
  %489 = load i32, i32* %15, align 4, !dbg !2383
  %490 = icmp eq i32 %489, 2, !dbg !2385
  br i1 %490, label %491, label %540, !dbg !2386

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2387
  %493 = trunc i8 %492 to i1, !dbg !2387
  br i1 %493, label %494, label %495, !dbg !2390

494:                                              ; preds = %491
  br label %1078, !dbg !2391

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2392
  %497 = icmp ne i64 %496, 0, !dbg !2392
  br i1 %497, label %498, label %503, !dbg !2394

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2395
  %500 = icmp ne i64 %499, 0, !dbg !2395
  br i1 %500, label %503, label %501, !dbg !2396

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2397
  store i64 %502, i64* %22, align 8, !dbg !2399
  store i64 0, i64* %12, align 8, !dbg !2400
  br label %503, !dbg !2401

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2402

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2403
  %506 = load i64, i64* %12, align 8, !dbg !2403
  %507 = icmp ult i64 %505, %506, !dbg !2403
  br i1 %507, label %508, label %512, !dbg !2406

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2403
  %510 = load i64, i64* %21, align 8, !dbg !2403
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2403
  store i8 39, i8* %511, align 1, !dbg !2403
  br label %512, !dbg !2403

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2406
  %514 = add i64 %513, 1, !dbg !2406
  store i64 %514, i64* %21, align 8, !dbg !2406
  br label %515, !dbg !2406

515:                                              ; preds = %512
  br label %516, !dbg !2407

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2408
  %518 = load i64, i64* %12, align 8, !dbg !2408
  %519 = icmp ult i64 %517, %518, !dbg !2408
  br i1 %519, label %520, label %524, !dbg !2411

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2408
  %522 = load i64, i64* %21, align 8, !dbg !2408
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2408
  store i8 92, i8* %523, align 1, !dbg !2408
  br label %524, !dbg !2408

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2411
  %526 = add i64 %525, 1, !dbg !2411
  store i64 %526, i64* %21, align 8, !dbg !2411
  br label %527, !dbg !2411

527:                                              ; preds = %524
  br label %528, !dbg !2412

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2413
  %530 = load i64, i64* %12, align 8, !dbg !2413
  %531 = icmp ult i64 %529, %530, !dbg !2413
  br i1 %531, label %532, label %536, !dbg !2416

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2413
  %534 = load i64, i64* %21, align 8, !dbg !2413
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2413
  store i8 39, i8* %535, align 1, !dbg !2413
  br label %536, !dbg !2413

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2416
  %538 = add i64 %537, 1, !dbg !2416
  store i64 %538, i64* %21, align 8, !dbg !2416
  br label %539, !dbg !2416

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2417
  br label %540, !dbg !2418

540:                                              ; preds = %539, %488
  br label %849, !dbg !2419

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2420
  br label %849, !dbg !2421

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2422, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2425, metadata !DIExpression()), !dbg !2426
  %543 = load i8, i8* %20, align 1, !dbg !2427
  %544 = trunc i8 %543 to i1, !dbg !2427
  br i1 %544, label %545, label %557, !dbg !2429

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2430
  %546 = call i16** @__ctype_b_loc() #22, !dbg !2432
  %547 = load i16*, i16** %546, align 8, !dbg !2432
  %548 = load i8, i8* %35, align 1, !dbg !2432
  %549 = zext i8 %548 to i32, !dbg !2432
  %550 = sext i32 %549 to i64, !dbg !2432
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2432
  %552 = load i16, i16* %551, align 2, !dbg !2432
  %553 = zext i16 %552 to i32, !dbg !2432
  %554 = and i32 %553, 16384, !dbg !2432
  %555 = icmp ne i32 %554, 0, !dbg !2433
  %556 = zext i1 %555 to i8, !dbg !2434
  store i8 %556, i8* %38, align 1, !dbg !2434
  br label %648, !dbg !2435

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2436, metadata !DIExpression()), !dbg !2448
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2449
  store i64 0, i64* %37, align 8, !dbg !2450
  store i8 1, i8* %38, align 1, !dbg !2451
  %558 = load i64, i64* %14, align 8, !dbg !2452
  %559 = icmp eq i64 %558, -1, !dbg !2454
  br i1 %559, label %560, label %563, !dbg !2455

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2456
  %562 = call i64 @strlen(i8* noundef %561) #21, !dbg !2457
  store i64 %562, i64* %14, align 8, !dbg !2458
  br label %563, !dbg !2459

563:                                              ; preds = %560, %557
  br label %564, !dbg !2460

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2461, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2466, metadata !DIExpression()), !dbg !2467
  %565 = load i8*, i8** %13, align 8, !dbg !2468
  %566 = load i64, i64* %31, align 8, !dbg !2469
  %567 = load i64, i64* %37, align 8, !dbg !2470
  %568 = add i64 %566, %567, !dbg !2471
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2468
  %570 = load i64, i64* %14, align 8, !dbg !2472
  %571 = load i64, i64* %31, align 8, !dbg !2473
  %572 = load i64, i64* %37, align 8, !dbg !2474
  %573 = add i64 %571, %572, !dbg !2475
  %574 = sub i64 %570, %573, !dbg !2476
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2477
  store i64 %575, i64* %41, align 8, !dbg !2467
  %576 = load i64, i64* %41, align 8, !dbg !2478
  %577 = icmp eq i64 %576, 0, !dbg !2480
  br i1 %577, label %578, label %579, !dbg !2481

578:                                              ; preds = %564
  br label %647, !dbg !2482

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2483
  %581 = icmp eq i64 %580, -1, !dbg !2485
  br i1 %581, label %582, label %583, !dbg !2486

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2487
  br label %647, !dbg !2489

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2490
  %585 = icmp eq i64 %584, -2, !dbg !2492
  br i1 %585, label %586, label %608, !dbg !2493

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2494
  br label %587, !dbg !2496

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2497
  %589 = load i64, i64* %37, align 8, !dbg !2498
  %590 = add i64 %588, %589, !dbg !2499
  %591 = load i64, i64* %14, align 8, !dbg !2500
  %592 = icmp ult i64 %590, %591, !dbg !2501
  br i1 %592, label %593, label %602, !dbg !2502

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2503
  %595 = load i64, i64* %31, align 8, !dbg !2504
  %596 = load i64, i64* %37, align 8, !dbg !2505
  %597 = add i64 %595, %596, !dbg !2506
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2503
  %599 = load i8, i8* %598, align 1, !dbg !2503
  %600 = zext i8 %599 to i32, !dbg !2503
  %601 = icmp ne i32 %600, 0, !dbg !2502
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2507
  br i1 %603, label %604, label %607, !dbg !2496

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2508
  %606 = add i64 %605, 1, !dbg !2508
  store i64 %606, i64* %37, align 8, !dbg !2508
  br label %587, !dbg !2496, !llvm.loop !2509

607:                                              ; preds = %602
  br label %647, !dbg !2510

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2511
  %610 = trunc i8 %609 to i1, !dbg !2511
  br i1 %610, label %611, label %635, !dbg !2514

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2515
  %613 = icmp eq i32 %612, 2, !dbg !2516
  br i1 %613, label %614, label %635, !dbg !2517

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2518, metadata !DIExpression()), !dbg !2521
  store i64 1, i64* %42, align 8, !dbg !2521
  br label %615, !dbg !2522

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2523
  %617 = load i64, i64* %41, align 8, !dbg !2525
  %618 = icmp ult i64 %616, %617, !dbg !2526
  br i1 %618, label %619, label %634, !dbg !2527

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2528
  %621 = load i64, i64* %31, align 8, !dbg !2529
  %622 = load i64, i64* %37, align 8, !dbg !2530
  %623 = add i64 %621, %622, !dbg !2531
  %624 = load i64, i64* %42, align 8, !dbg !2532
  %625 = add i64 %623, %624, !dbg !2533
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2528
  %627 = load i8, i8* %626, align 1, !dbg !2528
  %628 = zext i8 %627 to i32, !dbg !2528
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2534

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2535

630:                                              ; preds = %619
  br label %631, !dbg !2537

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2538
  %633 = add i64 %632, 1, !dbg !2538
  store i64 %633, i64* %42, align 8, !dbg !2538
  br label %615, !dbg !2539, !llvm.loop !2540

634:                                              ; preds = %615
  br label %635, !dbg !2542

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2543
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2545
  %638 = icmp ne i32 %637, 0, !dbg !2545
  br i1 %638, label %640, label %639, !dbg !2546

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2547
  br label %640, !dbg !2548

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2549
  %642 = load i64, i64* %37, align 8, !dbg !2550
  %643 = add i64 %642, %641, !dbg !2550
  store i64 %643, i64* %37, align 8, !dbg !2550
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2551

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2552
  %650 = trunc i8 %649 to i1, !dbg !2552
  %651 = zext i1 %650 to i8, !dbg !2553
  store i8 %651, i8* %34, align 1, !dbg !2553
  %652 = load i64, i64* %37, align 8, !dbg !2554
  %653 = icmp ult i64 1, %652, !dbg !2556
  br i1 %653, label %660, label %654, !dbg !2557

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2558
  %656 = trunc i8 %655 to i1, !dbg !2558
  br i1 %656, label %657, label %848, !dbg !2559

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2560
  %659 = trunc i8 %658 to i1, !dbg !2560
  br i1 %659, label %848, label %660, !dbg !2561

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2562, metadata !DIExpression()), !dbg !2564
  %661 = load i64, i64* %31, align 8, !dbg !2565
  %662 = load i64, i64* %37, align 8, !dbg !2566
  %663 = add i64 %661, %662, !dbg !2567
  store i64 %663, i64* %43, align 8, !dbg !2564
  br label %664, !dbg !2568

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2569
  %666 = trunc i8 %665 to i1, !dbg !2569
  br i1 %666, label %667, label %772, !dbg !2574

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2575
  %669 = trunc i8 %668 to i1, !dbg !2575
  br i1 %669, label %772, label %670, !dbg !2576

670:                                              ; preds = %667
  br label %671, !dbg !2577

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2579
  %673 = trunc i8 %672 to i1, !dbg !2579
  br i1 %673, label %674, label %675, !dbg !2582

674:                                              ; preds = %671
  br label %1078, !dbg !2579

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2582
  %676 = load i32, i32* %15, align 4, !dbg !2583
  %677 = icmp eq i32 %676, 2, !dbg !2583
  br i1 %677, label %678, label %718, !dbg !2583

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2583
  %680 = trunc i8 %679 to i1, !dbg !2583
  br i1 %680, label %718, label %681, !dbg !2582

681:                                              ; preds = %678
  br label %682, !dbg !2585

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2587
  %684 = load i64, i64* %12, align 8, !dbg !2587
  %685 = icmp ult i64 %683, %684, !dbg !2587
  br i1 %685, label %686, label %690, !dbg !2590

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2587
  %688 = load i64, i64* %21, align 8, !dbg !2587
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2587
  store i8 39, i8* %689, align 1, !dbg !2587
  br label %690, !dbg !2587

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2590
  %692 = add i64 %691, 1, !dbg !2590
  store i64 %692, i64* %21, align 8, !dbg !2590
  br label %693, !dbg !2590

693:                                              ; preds = %690
  br label %694, !dbg !2585

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2591
  %696 = load i64, i64* %12, align 8, !dbg !2591
  %697 = icmp ult i64 %695, %696, !dbg !2591
  br i1 %697, label %698, label %702, !dbg !2594

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2591
  %700 = load i64, i64* %21, align 8, !dbg !2591
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2591
  store i8 36, i8* %701, align 1, !dbg !2591
  br label %702, !dbg !2591

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2594
  %704 = add i64 %703, 1, !dbg !2594
  store i64 %704, i64* %21, align 8, !dbg !2594
  br label %705, !dbg !2594

705:                                              ; preds = %702
  br label %706, !dbg !2585

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2595
  %708 = load i64, i64* %12, align 8, !dbg !2595
  %709 = icmp ult i64 %707, %708, !dbg !2595
  br i1 %709, label %710, label %714, !dbg !2598

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2595
  %712 = load i64, i64* %21, align 8, !dbg !2595
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2595
  store i8 39, i8* %713, align 1, !dbg !2595
  br label %714, !dbg !2595

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2598
  %716 = add i64 %715, 1, !dbg !2598
  store i64 %716, i64* %21, align 8, !dbg !2598
  br label %717, !dbg !2598

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2585
  br label %718, !dbg !2585

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2582

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2599
  %721 = load i64, i64* %12, align 8, !dbg !2599
  %722 = icmp ult i64 %720, %721, !dbg !2599
  br i1 %722, label %723, label %727, !dbg !2602

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2599
  %725 = load i64, i64* %21, align 8, !dbg !2599
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2599
  store i8 92, i8* %726, align 1, !dbg !2599
  br label %727, !dbg !2599

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2602
  %729 = add i64 %728, 1, !dbg !2602
  store i64 %729, i64* %21, align 8, !dbg !2602
  br label %730, !dbg !2602

730:                                              ; preds = %727
  br label %731, !dbg !2582

731:                                              ; preds = %730
  br label %732, !dbg !2603

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2604
  %734 = load i64, i64* %12, align 8, !dbg !2604
  %735 = icmp ult i64 %733, %734, !dbg !2604
  br i1 %735, label %736, label %745, !dbg !2607

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2604
  %738 = zext i8 %737 to i32, !dbg !2604
  %739 = ashr i32 %738, 6, !dbg !2604
  %740 = add nsw i32 48, %739, !dbg !2604
  %741 = trunc i32 %740 to i8, !dbg !2604
  %742 = load i8*, i8** %11, align 8, !dbg !2604
  %743 = load i64, i64* %21, align 8, !dbg !2604
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2604
  store i8 %741, i8* %744, align 1, !dbg !2604
  br label %745, !dbg !2604

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2607
  %747 = add i64 %746, 1, !dbg !2607
  store i64 %747, i64* %21, align 8, !dbg !2607
  br label %748, !dbg !2607

748:                                              ; preds = %745
  br label %749, !dbg !2608

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2609
  %751 = load i64, i64* %12, align 8, !dbg !2609
  %752 = icmp ult i64 %750, %751, !dbg !2609
  br i1 %752, label %753, label %763, !dbg !2612

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2609
  %755 = zext i8 %754 to i32, !dbg !2609
  %756 = ashr i32 %755, 3, !dbg !2609
  %757 = and i32 %756, 7, !dbg !2609
  %758 = add nsw i32 48, %757, !dbg !2609
  %759 = trunc i32 %758 to i8, !dbg !2609
  %760 = load i8*, i8** %11, align 8, !dbg !2609
  %761 = load i64, i64* %21, align 8, !dbg !2609
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2609
  store i8 %759, i8* %762, align 1, !dbg !2609
  br label %763, !dbg !2609

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2612
  %765 = add i64 %764, 1, !dbg !2612
  store i64 %765, i64* %21, align 8, !dbg !2612
  br label %766, !dbg !2612

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2613
  %768 = zext i8 %767 to i32, !dbg !2613
  %769 = and i32 %768, 7, !dbg !2614
  %770 = add nsw i32 48, %769, !dbg !2615
  %771 = trunc i32 %770 to i8, !dbg !2616
  store i8 %771, i8* %35, align 1, !dbg !2617
  br label %789, !dbg !2618

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2619
  %774 = trunc i8 %773 to i1, !dbg !2619
  br i1 %774, label %775, label %788, !dbg !2621

775:                                              ; preds = %772
  br label %776, !dbg !2622

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2624
  %778 = load i64, i64* %12, align 8, !dbg !2624
  %779 = icmp ult i64 %777, %778, !dbg !2624
  br i1 %779, label %780, label %784, !dbg !2627

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2624
  %782 = load i64, i64* %21, align 8, !dbg !2624
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2624
  store i8 92, i8* %783, align 1, !dbg !2624
  br label %784, !dbg !2624

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2627
  %786 = add i64 %785, 1, !dbg !2627
  store i64 %786, i64* %21, align 8, !dbg !2627
  br label %787, !dbg !2627

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2628
  br label %788, !dbg !2629

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2630
  %791 = load i64, i64* %31, align 8, !dbg !2632
  %792 = add i64 %791, 1, !dbg !2633
  %793 = icmp ule i64 %790, %792, !dbg !2634
  br i1 %793, label %794, label %795, !dbg !2635

794:                                              ; preds = %789
  br label %847, !dbg !2636

795:                                              ; preds = %789
  br label %796, !dbg !2637

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2638
  %798 = trunc i8 %797 to i1, !dbg !2638
  br i1 %798, label %799, label %827, !dbg !2638

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2638
  %801 = trunc i8 %800 to i1, !dbg !2638
  br i1 %801, label %827, label %802, !dbg !2641

802:                                              ; preds = %799
  br label %803, !dbg !2642

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2644
  %805 = load i64, i64* %12, align 8, !dbg !2644
  %806 = icmp ult i64 %804, %805, !dbg !2644
  br i1 %806, label %807, label %811, !dbg !2647

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2644
  %809 = load i64, i64* %21, align 8, !dbg !2644
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2644
  store i8 39, i8* %810, align 1, !dbg !2644
  br label %811, !dbg !2644

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2647
  %813 = add i64 %812, 1, !dbg !2647
  store i64 %813, i64* %21, align 8, !dbg !2647
  br label %814, !dbg !2647

814:                                              ; preds = %811
  br label %815, !dbg !2642

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2648
  %817 = load i64, i64* %12, align 8, !dbg !2648
  %818 = icmp ult i64 %816, %817, !dbg !2648
  br i1 %818, label %819, label %823, !dbg !2651

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2648
  %821 = load i64, i64* %21, align 8, !dbg !2648
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2648
  store i8 39, i8* %822, align 1, !dbg !2648
  br label %823, !dbg !2648

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2651
  %825 = add i64 %824, 1, !dbg !2651
  store i64 %825, i64* %21, align 8, !dbg !2651
  br label %826, !dbg !2651

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2642
  br label %827, !dbg !2642

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2641

828:                                              ; preds = %827
  br label %829, !dbg !2652

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2653
  %831 = load i64, i64* %12, align 8, !dbg !2653
  %832 = icmp ult i64 %830, %831, !dbg !2653
  br i1 %832, label %833, label %838, !dbg !2656

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2653
  %835 = load i8*, i8** %11, align 8, !dbg !2653
  %836 = load i64, i64* %21, align 8, !dbg !2653
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2653
  store i8 %834, i8* %837, align 1, !dbg !2653
  br label %838, !dbg !2653

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2656
  %840 = add i64 %839, 1, !dbg !2656
  store i64 %840, i64* %21, align 8, !dbg !2656
  br label %841, !dbg !2656

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2657
  %843 = load i64, i64* %31, align 8, !dbg !2658
  %844 = add i64 %843, 1, !dbg !2658
  store i64 %844, i64* %31, align 8, !dbg !2658
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2657
  %846 = load i8, i8* %845, align 1, !dbg !2657
  store i8 %846, i8* %35, align 1, !dbg !2659
  br label %664, !dbg !2660, !llvm.loop !2661

847:                                              ; preds = %794
  br label %942, !dbg !2664

848:                                              ; preds = %657, %654
  br label %849, !dbg !2665

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2666
  %851 = trunc i8 %850 to i1, !dbg !2666
  br i1 %851, label %852, label %855, !dbg !2668

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2669
  %854 = icmp ne i32 %853, 2, !dbg !2670
  br i1 %854, label %858, label %855, !dbg !2671

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2672
  %857 = trunc i8 %856 to i1, !dbg !2672
  br i1 %857, label %858, label %875, !dbg !2673

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2674
  %860 = icmp ne i32* %859, null, !dbg !2674
  br i1 %860, label %861, label %875, !dbg !2675

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2676
  %863 = load i8, i8* %35, align 1, !dbg !2677
  %864 = zext i8 %863 to i64, !dbg !2677
  %865 = udiv i64 %864, 32, !dbg !2678
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2676
  %867 = load i32, i32* %866, align 4, !dbg !2676
  %868 = load i8, i8* %35, align 1, !dbg !2679
  %869 = zext i8 %868 to i64, !dbg !2679
  %870 = urem i64 %869, 32, !dbg !2680
  %871 = trunc i64 %870 to i32, !dbg !2681
  %872 = lshr i32 %867, %871, !dbg !2681
  %873 = and i32 %872, 1, !dbg !2682
  %874 = icmp ne i32 %873, 0, !dbg !2682
  br i1 %874, label %879, label %875, !dbg !2683

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2684
  %877 = trunc i8 %876 to i1, !dbg !2684
  br i1 %877, label %879, label %878, !dbg !2685

878:                                              ; preds = %875
  br label %942, !dbg !2686

879:                                              ; preds = %875, %861
  br label %880, !dbg !2684

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2687), !dbg !2688
  br label %881, !dbg !2689

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2690
  %883 = trunc i8 %882 to i1, !dbg !2690
  br i1 %883, label %884, label %885, !dbg !2693

884:                                              ; preds = %881
  br label %1078, !dbg !2690

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2693
  %886 = load i32, i32* %15, align 4, !dbg !2694
  %887 = icmp eq i32 %886, 2, !dbg !2694
  br i1 %887, label %888, label %928, !dbg !2694

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2694
  %890 = trunc i8 %889 to i1, !dbg !2694
  br i1 %890, label %928, label %891, !dbg !2693

891:                                              ; preds = %888
  br label %892, !dbg !2696

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2698
  %894 = load i64, i64* %12, align 8, !dbg !2698
  %895 = icmp ult i64 %893, %894, !dbg !2698
  br i1 %895, label %896, label %900, !dbg !2701

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2698
  %898 = load i64, i64* %21, align 8, !dbg !2698
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2698
  store i8 39, i8* %899, align 1, !dbg !2698
  br label %900, !dbg !2698

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2701
  %902 = add i64 %901, 1, !dbg !2701
  store i64 %902, i64* %21, align 8, !dbg !2701
  br label %903, !dbg !2701

903:                                              ; preds = %900
  br label %904, !dbg !2696

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2702
  %906 = load i64, i64* %12, align 8, !dbg !2702
  %907 = icmp ult i64 %905, %906, !dbg !2702
  br i1 %907, label %908, label %912, !dbg !2705

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2702
  %910 = load i64, i64* %21, align 8, !dbg !2702
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2702
  store i8 36, i8* %911, align 1, !dbg !2702
  br label %912, !dbg !2702

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2705
  %914 = add i64 %913, 1, !dbg !2705
  store i64 %914, i64* %21, align 8, !dbg !2705
  br label %915, !dbg !2705

915:                                              ; preds = %912
  br label %916, !dbg !2696

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2706
  %918 = load i64, i64* %12, align 8, !dbg !2706
  %919 = icmp ult i64 %917, %918, !dbg !2706
  br i1 %919, label %920, label %924, !dbg !2709

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2706
  %922 = load i64, i64* %21, align 8, !dbg !2706
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2706
  store i8 39, i8* %923, align 1, !dbg !2706
  br label %924, !dbg !2706

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2709
  %926 = add i64 %925, 1, !dbg !2709
  store i64 %926, i64* %21, align 8, !dbg !2709
  br label %927, !dbg !2709

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2696
  br label %928, !dbg !2696

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2693

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2710
  %931 = load i64, i64* %12, align 8, !dbg !2710
  %932 = icmp ult i64 %930, %931, !dbg !2710
  br i1 %932, label %933, label %937, !dbg !2713

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2710
  %935 = load i64, i64* %21, align 8, !dbg !2710
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2710
  store i8 92, i8* %936, align 1, !dbg !2710
  br label %937, !dbg !2710

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2713
  %939 = add i64 %938, 1, !dbg !2713
  store i64 %939, i64* %21, align 8, !dbg !2713
  br label %940, !dbg !2713

940:                                              ; preds = %937
  br label %941, !dbg !2693

941:                                              ; preds = %940
  br label %942, !dbg !2693

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2714), !dbg !2715
  br label %943, !dbg !2716

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2717
  %945 = trunc i8 %944 to i1, !dbg !2717
  br i1 %945, label %946, label %974, !dbg !2717

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2717
  %948 = trunc i8 %947 to i1, !dbg !2717
  br i1 %948, label %974, label %949, !dbg !2720

949:                                              ; preds = %946
  br label %950, !dbg !2721

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2723
  %952 = load i64, i64* %12, align 8, !dbg !2723
  %953 = icmp ult i64 %951, %952, !dbg !2723
  br i1 %953, label %954, label %958, !dbg !2726

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2723
  %956 = load i64, i64* %21, align 8, !dbg !2723
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2723
  store i8 39, i8* %957, align 1, !dbg !2723
  br label %958, !dbg !2723

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2726
  %960 = add i64 %959, 1, !dbg !2726
  store i64 %960, i64* %21, align 8, !dbg !2726
  br label %961, !dbg !2726

961:                                              ; preds = %958
  br label %962, !dbg !2721

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2727
  %964 = load i64, i64* %12, align 8, !dbg !2727
  %965 = icmp ult i64 %963, %964, !dbg !2727
  br i1 %965, label %966, label %970, !dbg !2730

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2727
  %968 = load i64, i64* %21, align 8, !dbg !2727
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2727
  store i8 39, i8* %969, align 1, !dbg !2727
  br label %970, !dbg !2727

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2730
  %972 = add i64 %971, 1, !dbg !2730
  store i64 %972, i64* %21, align 8, !dbg !2730
  br label %973, !dbg !2730

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2721
  br label %974, !dbg !2721

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2720

975:                                              ; preds = %974
  br label %976, !dbg !2731

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2732
  %978 = load i64, i64* %12, align 8, !dbg !2732
  %979 = icmp ult i64 %977, %978, !dbg !2732
  br i1 %979, label %980, label %985, !dbg !2735

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2732
  %982 = load i8*, i8** %11, align 8, !dbg !2732
  %983 = load i64, i64* %21, align 8, !dbg !2732
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2732
  store i8 %981, i8* %984, align 1, !dbg !2732
  br label %985, !dbg !2732

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2735
  %987 = add i64 %986, 1, !dbg !2735
  store i64 %987, i64* %21, align 8, !dbg !2735
  br label %988, !dbg !2735

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2736
  %990 = trunc i8 %989 to i1, !dbg !2736
  br i1 %990, label %992, label %991, !dbg !2738

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2739
  br label %992, !dbg !2740

992:                                              ; preds = %991, %988
  br label %993, !dbg !2741

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2742
  %995 = add i64 %994, 1, !dbg !2742
  store i64 %995, i64* %31, align 8, !dbg !2742
  br label %139, !dbg !2743, !llvm.loop !2744

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2746
  %998 = icmp eq i64 %997, 0, !dbg !2748
  br i1 %998, label %999, label %1006, !dbg !2749

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2750
  %1001 = icmp eq i32 %1000, 2, !dbg !2751
  br i1 %1001, label %1002, label %1006, !dbg !2752

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2753
  %1004 = trunc i8 %1003 to i1, !dbg !2753
  br i1 %1004, label %1005, label %1006, !dbg !2754

1005:                                             ; preds = %1002
  br label %1078, !dbg !2755

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2756
  %1008 = icmp eq i32 %1007, 2, !dbg !2758
  br i1 %1008, label %1009, label %1038, !dbg !2759

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2760
  %1011 = trunc i8 %1010 to i1, !dbg !2760
  br i1 %1011, label %1038, label %1012, !dbg !2761

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2762
  %1014 = trunc i8 %1013 to i1, !dbg !2762
  br i1 %1014, label %1015, label %1038, !dbg !2763

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2764
  %1017 = trunc i8 %1016 to i1, !dbg !2764
  br i1 %1017, label %1018, label %1028, !dbg !2767

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2768
  %1020 = load i64, i64* %22, align 8, !dbg !2769
  %1021 = load i8*, i8** %13, align 8, !dbg !2770
  %1022 = load i64, i64* %14, align 8, !dbg !2771
  %1023 = load i32, i32* %16, align 4, !dbg !2772
  %1024 = load i32*, i32** %17, align 8, !dbg !2773
  %1025 = load i8*, i8** %18, align 8, !dbg !2774
  %1026 = load i8*, i8** %19, align 8, !dbg !2775
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2776
  store i64 %1027, i64* %10, align 8, !dbg !2777
  br label %1096, !dbg !2777

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2778
  %1030 = icmp ne i64 %1029, 0, !dbg !2778
  br i1 %1030, label %1036, label %1031, !dbg !2780

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2781
  %1033 = icmp ne i64 %1032, 0, !dbg !2781
  br i1 %1033, label %1034, label %1036, !dbg !2782

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2783
  store i64 %1035, i64* %12, align 8, !dbg !2785
  store i64 0, i64* %21, align 8, !dbg !2786
  br label %51, !dbg !2787

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2788

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2789
  %1040 = icmp ne i8* %1039, null, !dbg !2789
  br i1 %1040, label %1041, label %1068, !dbg !2791

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2792
  %1043 = trunc i8 %1042 to i1, !dbg !2792
  br i1 %1043, label %1068, label %1044, !dbg !2793

1044:                                             ; preds = %1041
  br label %1045, !dbg !2794

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2795
  %1047 = load i8, i8* %1046, align 1, !dbg !2798
  %1048 = icmp ne i8 %1047, 0, !dbg !2799
  br i1 %1048, label %1049, label %1067, !dbg !2799

1049:                                             ; preds = %1045
  br label %1050, !dbg !2800

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2801
  %1052 = load i64, i64* %12, align 8, !dbg !2801
  %1053 = icmp ult i64 %1051, %1052, !dbg !2801
  br i1 %1053, label %1054, label %1060, !dbg !2804

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2801
  %1056 = load i8, i8* %1055, align 1, !dbg !2801
  %1057 = load i8*, i8** %11, align 8, !dbg !2801
  %1058 = load i64, i64* %21, align 8, !dbg !2801
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2801
  store i8 %1056, i8* %1059, align 1, !dbg !2801
  br label %1060, !dbg !2801

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2804
  %1062 = add i64 %1061, 1, !dbg !2804
  store i64 %1062, i64* %21, align 8, !dbg !2804
  br label %1063, !dbg !2804

1063:                                             ; preds = %1060
  br label %1064, !dbg !2804

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2805
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2805
  store i8* %1066, i8** %23, align 8, !dbg !2805
  br label %1045, !dbg !2806, !llvm.loop !2807

1067:                                             ; preds = %1045
  br label %1068, !dbg !2808

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2809
  %1070 = load i64, i64* %12, align 8, !dbg !2811
  %1071 = icmp ult i64 %1069, %1070, !dbg !2812
  br i1 %1071, label %1072, label %1076, !dbg !2813

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2814
  %1074 = load i64, i64* %21, align 8, !dbg !2815
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2814
  store i8 0, i8* %1075, align 1, !dbg !2816
  br label %1076, !dbg !2814

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2817
  store i64 %1077, i64* %10, align 8, !dbg !2818
  br label %1096, !dbg !2818

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2819), !dbg !2820
  %1079 = load i32, i32* %15, align 4, !dbg !2821
  %1080 = icmp eq i32 %1079, 2, !dbg !2823
  br i1 %1080, label %1081, label %1085, !dbg !2824

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2825
  %1083 = trunc i8 %1082 to i1, !dbg !2825
  br i1 %1083, label %1084, label %1085, !dbg !2826

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2827
  br label %1085, !dbg !2828

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2829
  %1087 = load i64, i64* %12, align 8, !dbg !2830
  %1088 = load i8*, i8** %13, align 8, !dbg !2831
  %1089 = load i64, i64* %14, align 8, !dbg !2832
  %1090 = load i32, i32* %15, align 4, !dbg !2833
  %1091 = load i32, i32* %16, align 4, !dbg !2834
  %1092 = and i32 %1091, -3, !dbg !2835
  %1093 = load i8*, i8** %18, align 8, !dbg !2836
  %1094 = load i8*, i8** %19, align 8, !dbg !2837
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2838
  store i64 %1095, i64* %10, align 8, !dbg !2839
  br label %1096, !dbg !2839

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2840
  ret i64 %1097, !dbg !2840
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !182 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2841, metadata !DIExpression()), !dbg !2842
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2843, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2845, metadata !DIExpression()), !dbg !2846
  %9 = load i8*, i8** %4, align 8, !dbg !2847
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.110, i64 0, i64 0), i8* noundef %9) #19, !dbg !2847
  store i8* %10, i8** %6, align 8, !dbg !2846
  %11 = load i8*, i8** %6, align 8, !dbg !2848
  %12 = load i8*, i8** %4, align 8, !dbg !2850
  %13 = icmp ne i8* %11, %12, !dbg !2851
  br i1 %13, label %14, label %16, !dbg !2852

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2853
  store i8* %15, i8** %3, align 8, !dbg !2854
  br label %37, !dbg !2854

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2855, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2857, metadata !DIExpression()), !dbg !2858
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2859
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2860
  %18 = icmp eq i64 %17, 3, !dbg !2862
  br i1 %18, label %19, label %32, !dbg !2863

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2864
  %21 = icmp eq i32 %20, 8216, !dbg !2865
  br i1 %21, label %22, label %32, !dbg !2866

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2867
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2867
  %25 = load i8, i8* %24, align 1, !dbg !2867
  %26 = zext i8 %25 to i32, !dbg !2867
  %27 = icmp eq i32 %26, 39, !dbg !2868
  %28 = zext i1 %27 to i32, !dbg !2868
  %29 = sext i32 %28 to i64, !dbg !2869
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2869
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2869
  store i8* %31, i8** %3, align 8, !dbg !2870
  br label %37, !dbg !2870

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2871
  %34 = icmp eq i32 %33, 9, !dbg !2872
  %35 = zext i1 %34 to i64, !dbg !2871
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), !dbg !2871
  store i8* %36, i8** %3, align 8, !dbg !2873
  br label %37, !dbg !2873

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2874
  ret i8* %38, !dbg !2874
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2875 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2878, metadata !DIExpression()), !dbg !2879
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2880, metadata !DIExpression()), !dbg !2881
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2882, metadata !DIExpression()), !dbg !2883
  %7 = load i8*, i8** %4, align 8, !dbg !2884
  %8 = load i64, i64* %5, align 8, !dbg !2885
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2886
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2887
  ret i8* %10, !dbg !2888
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2889 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.quoting_options*, align 8
  %9 = alloca %struct.quoting_options*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2892, metadata !DIExpression()), !dbg !2893
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2894, metadata !DIExpression()), !dbg !2895
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2896, metadata !DIExpression()), !dbg !2897
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2900, metadata !DIExpression()), !dbg !2901
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2902
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2902
  br i1 %15, label %16, label %18, !dbg !2902

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2903
  br label %19, !dbg !2902

18:                                               ; preds = %4
  br label %19, !dbg !2902

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2902
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2901
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2904, metadata !DIExpression()), !dbg !2905
  %21 = call i32* @__errno_location() #22, !dbg !2906
  %22 = load i32, i32* %21, align 4, !dbg !2906
  store i32 %22, i32* %10, align 4, !dbg !2905
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2907, metadata !DIExpression()), !dbg !2908
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2909
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2910
  %25 = load i32, i32* %24, align 4, !dbg !2910
  %26 = load i64*, i64** %7, align 8, !dbg !2911
  %27 = icmp ne i64* %26, null, !dbg !2911
  %28 = zext i1 %27 to i64, !dbg !2911
  %29 = select i1 %27, i32 0, i32 1, !dbg !2911
  %30 = or i32 %25, %29, !dbg !2912
  store i32 %30, i32* %11, align 4, !dbg !2908
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2913, metadata !DIExpression()), !dbg !2914
  %31 = load i8*, i8** %5, align 8, !dbg !2915
  %32 = load i64, i64* %6, align 8, !dbg !2916
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2917
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2918
  %35 = load i32, i32* %34, align 8, !dbg !2918
  %36 = load i32, i32* %11, align 4, !dbg !2919
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2920
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2921
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2920
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2922
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2923
  %42 = load i8*, i8** %41, align 8, !dbg !2923
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2924
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2925
  %45 = load i8*, i8** %44, align 8, !dbg !2925
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2926
  %47 = add i64 %46, 1, !dbg !2927
  store i64 %47, i64* %12, align 8, !dbg !2914
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2928, metadata !DIExpression()), !dbg !2929
  %48 = load i64, i64* %12, align 8, !dbg !2930
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #26, !dbg !2931
  store i8* %49, i8** %13, align 8, !dbg !2929
  %50 = load i8*, i8** %13, align 8, !dbg !2932
  %51 = load i64, i64* %12, align 8, !dbg !2933
  %52 = load i8*, i8** %5, align 8, !dbg !2934
  %53 = load i64, i64* %6, align 8, !dbg !2935
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2936
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2937
  %56 = load i32, i32* %55, align 8, !dbg !2937
  %57 = load i32, i32* %11, align 4, !dbg !2938
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2939
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2940
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2939
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2941
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2942
  %63 = load i8*, i8** %62, align 8, !dbg !2942
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2943
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2944
  %66 = load i8*, i8** %65, align 8, !dbg !2944
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2945
  %68 = load i32, i32* %10, align 4, !dbg !2946
  %69 = call i32* @__errno_location() #22, !dbg !2947
  store i32 %68, i32* %69, align 4, !dbg !2948
  %70 = load i64*, i64** %7, align 8, !dbg !2949
  %71 = icmp ne i64* %70, null, !dbg !2949
  br i1 %71, label %72, label %76, !dbg !2951

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2952
  %74 = sub i64 %73, 1, !dbg !2953
  %75 = load i64*, i64** %7, align 8, !dbg !2954
  store i64 %74, i64* %75, align 8, !dbg !2955
  br label %76, !dbg !2956

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2957
  ret i8* %77, !dbg !2958
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2959 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2960, metadata !DIExpression()), !dbg !2961
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2962
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2961
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2963, metadata !DIExpression()), !dbg !2965
  store i32 1, i32* %2, align 4, !dbg !2965
  br label %4, !dbg !2966

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2967
  %6 = load i32, i32* @nslots, align 4, !dbg !2969
  %7 = icmp slt i32 %5, %6, !dbg !2970
  br i1 %7, label %8, label %18, !dbg !2971

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2972
  %10 = load i32, i32* %2, align 4, !dbg !2973
  %11 = sext i32 %10 to i64, !dbg !2972
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2972
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2974
  %14 = load i8*, i8** %13, align 8, !dbg !2974
  call void @free(i8* noundef %14) #19, !dbg !2975
  br label %15, !dbg !2975

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2976
  %17 = add nsw i32 %16, 1, !dbg !2976
  store i32 %17, i32* %2, align 4, !dbg !2976
  br label %4, !dbg !2977, !llvm.loop !2978

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2980
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2980
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2982
  %22 = load i8*, i8** %21, align 8, !dbg !2982
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2983
  br i1 %23, label %24, label %29, !dbg !2984

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2985
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2985
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2987
  %28 = load i8*, i8** %27, align 8, !dbg !2987
  call void @free(i8* noundef %28) #19, !dbg !2988
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2989
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2990
  br label %29, !dbg !2991

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2992
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2994
  br i1 %31, label %32, label %35, !dbg !2995

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2996
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2996
  call void @free(i8* noundef %34) #19, !dbg !2998
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2999
  br label %35, !dbg !3000

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3001
  ret void, !dbg !3002
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3003 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3006, metadata !DIExpression()), !dbg !3007
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3008, metadata !DIExpression()), !dbg !3009
  %5 = load i32, i32* %3, align 4, !dbg !3010
  %6 = load i8*, i8** %4, align 8, !dbg !3011
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !3012
  ret i8* %7, !dbg !3013
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !3014 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.quoting_options*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.slotvec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3017, metadata !DIExpression()), !dbg !3018
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3019, metadata !DIExpression()), !dbg !3020
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3021, metadata !DIExpression()), !dbg !3022
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3023, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3025, metadata !DIExpression()), !dbg !3026
  %18 = call i32* @__errno_location() #22, !dbg !3027
  %19 = load i32, i32* %18, align 4, !dbg !3027
  store i32 %19, i32* %9, align 4, !dbg !3026
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !3028, metadata !DIExpression()), !dbg !3029
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3030
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !3029
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3031, metadata !DIExpression()), !dbg !3032
  store i32 2147483647, i32* %11, align 4, !dbg !3032
  %21 = load i32, i32* %5, align 4, !dbg !3033
  %22 = icmp sle i32 0, %21, !dbg !3035
  br i1 %22, label %23, label %27, !dbg !3036

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !3037
  %25 = load i32, i32* %11, align 4, !dbg !3038
  %26 = icmp slt i32 %24, %25, !dbg !3039
  br i1 %26, label %28, label %27, !dbg !3040

27:                                               ; preds = %23, %4
  call void @abort() #20, !dbg !3041
  unreachable, !dbg !3041

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !3042
  %30 = load i32, i32* %5, align 4, !dbg !3044
  %31 = icmp sle i32 %29, %30, !dbg !3045
  br i1 %31, label %32, label %73, !dbg !3046

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !3047, metadata !DIExpression()), !dbg !3049
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3050
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !3051
  %35 = zext i1 %34 to i8, !dbg !3049
  store i8 %35, i8* %12, align 1, !dbg !3049
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3052, metadata !DIExpression()), !dbg !3053
  %36 = load i32, i32* @nslots, align 4, !dbg !3054
  %37 = sext i32 %36 to i64, !dbg !3054
  store i64 %37, i64* %13, align 8, !dbg !3053
  %38 = load i8, i8* %12, align 1, !dbg !3055
  %39 = trunc i8 %38 to i1, !dbg !3055
  br i1 %39, label %40, label %41, !dbg !3055

40:                                               ; preds = %32
  br label %43, !dbg !3055

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3056
  br label %43, !dbg !3055

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !3055
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !3055
  %46 = load i32, i32* %5, align 4, !dbg !3057
  %47 = load i32, i32* @nslots, align 4, !dbg !3058
  %48 = sub nsw i32 %46, %47, !dbg !3059
  %49 = add nsw i32 %48, 1, !dbg !3060
  %50 = sext i32 %49 to i64, !dbg !3057
  %51 = load i32, i32* %11, align 4, !dbg !3061
  %52 = sext i32 %51 to i64, !dbg !3061
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !3062
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !3062
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !3063
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !3064
  %55 = load i8, i8* %12, align 1, !dbg !3065
  %56 = trunc i8 %55 to i1, !dbg !3065
  br i1 %56, label %57, label %60, !dbg !3067

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3068
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !3069
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3069
  br label %60, !dbg !3070

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3071
  %62 = load i32, i32* @nslots, align 4, !dbg !3072
  %63 = sext i32 %62 to i64, !dbg !3073
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !3073
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !3074
  %66 = load i64, i64* %13, align 8, !dbg !3075
  %67 = load i32, i32* @nslots, align 4, !dbg !3076
  %68 = sext i32 %67 to i64, !dbg !3076
  %69 = sub nsw i64 %66, %68, !dbg !3077
  %70 = mul i64 %69, 16, !dbg !3078
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !3074
  %71 = load i64, i64* %13, align 8, !dbg !3079
  %72 = trunc i64 %71 to i32, !dbg !3079
  store i32 %72, i32* @nslots, align 4, !dbg !3080
  br label %73, !dbg !3081

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3082, metadata !DIExpression()), !dbg !3084
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3085
  %75 = load i32, i32* %5, align 4, !dbg !3086
  %76 = sext i32 %75 to i64, !dbg !3085
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !3085
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !3087
  %79 = load i64, i64* %78, align 8, !dbg !3087
  store i64 %79, i64* %14, align 8, !dbg !3084
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3088, metadata !DIExpression()), !dbg !3089
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3090
  %81 = load i32, i32* %5, align 4, !dbg !3091
  %82 = sext i32 %81 to i64, !dbg !3090
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !3090
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !3092
  %85 = load i8*, i8** %84, align 8, !dbg !3092
  store i8* %85, i8** %15, align 8, !dbg !3089
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3093, metadata !DIExpression()), !dbg !3094
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3095
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !3096
  %88 = load i32, i32* %87, align 4, !dbg !3096
  %89 = or i32 %88, 1, !dbg !3097
  store i32 %89, i32* %16, align 4, !dbg !3094
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3098, metadata !DIExpression()), !dbg !3099
  %90 = load i8*, i8** %15, align 8, !dbg !3100
  %91 = load i64, i64* %14, align 8, !dbg !3101
  %92 = load i8*, i8** %6, align 8, !dbg !3102
  %93 = load i64, i64* %7, align 8, !dbg !3103
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3104
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !3105
  %96 = load i32, i32* %95, align 8, !dbg !3105
  %97 = load i32, i32* %16, align 4, !dbg !3106
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3107
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !3108
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !3107
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3109
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !3110
  %103 = load i8*, i8** %102, align 8, !dbg !3110
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3111
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !3112
  %106 = load i8*, i8** %105, align 8, !dbg !3112
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !3113
  store i64 %107, i64* %17, align 8, !dbg !3099
  %108 = load i64, i64* %14, align 8, !dbg !3114
  %109 = load i64, i64* %17, align 8, !dbg !3116
  %110 = icmp ule i64 %108, %109, !dbg !3117
  br i1 %110, label %111, label %149, !dbg !3118

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !3119
  %113 = add i64 %112, 1, !dbg !3121
  store i64 %113, i64* %14, align 8, !dbg !3122
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3123
  %115 = load i32, i32* %5, align 4, !dbg !3124
  %116 = sext i32 %115 to i64, !dbg !3123
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !3123
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !3125
  store i64 %113, i64* %118, align 8, !dbg !3126
  %119 = load i8*, i8** %15, align 8, !dbg !3127
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3129
  br i1 %120, label %121, label %123, !dbg !3130

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !3131
  call void @free(i8* noundef %122) #19, !dbg !3132
  br label %123, !dbg !3132

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !3133
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #26, !dbg !3134
  store i8* %125, i8** %15, align 8, !dbg !3135
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3136
  %127 = load i32, i32* %5, align 4, !dbg !3137
  %128 = sext i32 %127 to i64, !dbg !3136
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !3136
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !3138
  store i8* %125, i8** %130, align 8, !dbg !3139
  %131 = load i8*, i8** %15, align 8, !dbg !3140
  %132 = load i64, i64* %14, align 8, !dbg !3141
  %133 = load i8*, i8** %6, align 8, !dbg !3142
  %134 = load i64, i64* %7, align 8, !dbg !3143
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3144
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !3145
  %137 = load i32, i32* %136, align 8, !dbg !3145
  %138 = load i32, i32* %16, align 4, !dbg !3146
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3147
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !3148
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !3147
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3149
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !3150
  %144 = load i8*, i8** %143, align 8, !dbg !3150
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3151
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !3152
  %147 = load i8*, i8** %146, align 8, !dbg !3152
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !3153
  br label %149, !dbg !3154

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !3155
  %151 = call i32* @__errno_location() #22, !dbg !3156
  store i32 %150, i32* %151, align 4, !dbg !3157
  %152 = load i8*, i8** %15, align 8, !dbg !3158
  ret i8* %152, !dbg !3159
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3160 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3163, metadata !DIExpression()), !dbg !3164
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3165, metadata !DIExpression()), !dbg !3166
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3167, metadata !DIExpression()), !dbg !3168
  %7 = load i32, i32* %4, align 4, !dbg !3169
  %8 = load i8*, i8** %5, align 8, !dbg !3170
  %9 = load i64, i64* %6, align 8, !dbg !3171
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !3172
  ret i8* %10, !dbg !3173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !3174 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3177, metadata !DIExpression()), !dbg !3178
  %3 = load i8*, i8** %2, align 8, !dbg !3179
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !3180
  ret i8* %4, !dbg !3181
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3182 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3185, metadata !DIExpression()), !dbg !3186
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3187, metadata !DIExpression()), !dbg !3188
  %5 = load i8*, i8** %3, align 8, !dbg !3189
  %6 = load i64, i64* %4, align 8, !dbg !3190
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3191
  ret i8* %7, !dbg !3192
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3193 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3196, metadata !DIExpression()), !dbg !3197
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3198, metadata !DIExpression()), !dbg !3199
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3202, metadata !DIExpression()), !dbg !3203
  %8 = load i32, i32* %5, align 4, !dbg !3204
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !3205
  %9 = load i32, i32* %4, align 4, !dbg !3206
  %10 = load i8*, i8** %6, align 8, !dbg !3207
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3208
  ret i8* %11, !dbg !3209
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !3210 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3213, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3215, metadata !DIExpression()), !dbg !3216
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3216
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3216
  %5 = load i32, i32* %3, align 4, !dbg !3217
  %6 = icmp eq i32 %5, 10, !dbg !3219
  br i1 %6, label %7, label %8, !dbg !3220

7:                                                ; preds = %2
  call void @abort() #20, !dbg !3221
  unreachable, !dbg !3221

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3222
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3223
  store i32 %9, i32* %10, align 8, !dbg !3224
  ret void, !dbg !3225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3226 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3229, metadata !DIExpression()), !dbg !3230
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3231, metadata !DIExpression()), !dbg !3232
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3233, metadata !DIExpression()), !dbg !3234
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3235, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3237, metadata !DIExpression()), !dbg !3238
  %10 = load i32, i32* %6, align 4, !dbg !3239
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !3240
  %11 = load i32, i32* %5, align 4, !dbg !3241
  %12 = load i8*, i8** %7, align 8, !dbg !3242
  %13 = load i64, i64* %8, align 8, !dbg !3243
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !3244
  ret i8* %14, !dbg !3245
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !3246 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3249, metadata !DIExpression()), !dbg !3250
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3251, metadata !DIExpression()), !dbg !3252
  %5 = load i32, i32* %3, align 4, !dbg !3253
  %6 = load i8*, i8** %4, align 8, !dbg !3254
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !3255
  ret i8* %7, !dbg !3256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3257 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3260, metadata !DIExpression()), !dbg !3261
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3262, metadata !DIExpression()), !dbg !3263
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3264, metadata !DIExpression()), !dbg !3265
  %7 = load i32, i32* %4, align 4, !dbg !3266
  %8 = load i8*, i8** %5, align 8, !dbg !3267
  %9 = load i64, i64* %6, align 8, !dbg !3268
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3269
  ret i8* %10, !dbg !3270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !3271 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3274, metadata !DIExpression()), !dbg !3275
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3276, metadata !DIExpression()), !dbg !3277
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3278, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3280, metadata !DIExpression()), !dbg !3281
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3282
  %9 = load i8, i8* %6, align 1, !dbg !3283
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !3284
  %11 = load i8*, i8** %4, align 8, !dbg !3285
  %12 = load i64, i64* %5, align 8, !dbg !3286
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !3287
  ret i8* %13, !dbg !3288
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !3289 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3292, metadata !DIExpression()), !dbg !3293
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3294, metadata !DIExpression()), !dbg !3295
  %5 = load i8*, i8** %3, align 8, !dbg !3296
  %6 = load i8, i8* %4, align 1, !dbg !3297
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3298
  ret i8* %7, !dbg !3299
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3300 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3301, metadata !DIExpression()), !dbg !3302
  %3 = load i8*, i8** %2, align 8, !dbg !3303
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3304
  ret i8* %4, !dbg !3305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3306 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3307, metadata !DIExpression()), !dbg !3308
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3309, metadata !DIExpression()), !dbg !3310
  %5 = load i8*, i8** %3, align 8, !dbg !3311
  %6 = load i64, i64* %4, align 8, !dbg !3312
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3313
  ret i8* %7, !dbg !3314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3315 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3316, metadata !DIExpression()), !dbg !3317
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3318, metadata !DIExpression()), !dbg !3319
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3322, metadata !DIExpression()), !dbg !3323
  %9 = load i32, i32* %5, align 4, !dbg !3324
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3325
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3325
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3325
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3326
  %13 = load i32, i32* %4, align 4, !dbg !3327
  %14 = load i8*, i8** %6, align 8, !dbg !3328
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3329
  ret i8* %15, !dbg !3330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3331 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3334, metadata !DIExpression()), !dbg !3335
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3336, metadata !DIExpression()), !dbg !3337
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3338, metadata !DIExpression()), !dbg !3339
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3340, metadata !DIExpression()), !dbg !3341
  %9 = load i32, i32* %5, align 4, !dbg !3342
  %10 = load i8*, i8** %6, align 8, !dbg !3343
  %11 = load i8*, i8** %7, align 8, !dbg !3344
  %12 = load i8*, i8** %8, align 8, !dbg !3345
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3346
  ret i8* %13, !dbg !3347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3348 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3351, metadata !DIExpression()), !dbg !3352
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3353, metadata !DIExpression()), !dbg !3354
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3355, metadata !DIExpression()), !dbg !3356
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3357, metadata !DIExpression()), !dbg !3358
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3359, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3361, metadata !DIExpression()), !dbg !3362
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3363
  %13 = load i8*, i8** %7, align 8, !dbg !3364
  %14 = load i8*, i8** %8, align 8, !dbg !3365
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3366
  %15 = load i32, i32* %6, align 4, !dbg !3367
  %16 = load i8*, i8** %9, align 8, !dbg !3368
  %17 = load i64, i64* %10, align 8, !dbg !3369
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3370
  ret i8* %18, !dbg !3371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3372 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3375, metadata !DIExpression()), !dbg !3376
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3377, metadata !DIExpression()), !dbg !3378
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3379, metadata !DIExpression()), !dbg !3380
  %7 = load i8*, i8** %4, align 8, !dbg !3381
  %8 = load i8*, i8** %5, align 8, !dbg !3382
  %9 = load i8*, i8** %6, align 8, !dbg !3383
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3384
  ret i8* %10, !dbg !3385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3386 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3389, metadata !DIExpression()), !dbg !3390
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3391, metadata !DIExpression()), !dbg !3392
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3393, metadata !DIExpression()), !dbg !3394
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3395, metadata !DIExpression()), !dbg !3396
  %9 = load i8*, i8** %5, align 8, !dbg !3397
  %10 = load i8*, i8** %6, align 8, !dbg !3398
  %11 = load i8*, i8** %7, align 8, !dbg !3399
  %12 = load i64, i64* %8, align 8, !dbg !3400
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3401
  ret i8* %13, !dbg !3402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3403 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3406, metadata !DIExpression()), !dbg !3407
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3408, metadata !DIExpression()), !dbg !3409
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3410, metadata !DIExpression()), !dbg !3411
  %7 = load i32, i32* %4, align 4, !dbg !3412
  %8 = load i8*, i8** %5, align 8, !dbg !3413
  %9 = load i64, i64* %6, align 8, !dbg !3414
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3415
  ret i8* %10, !dbg !3416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3417 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3420, metadata !DIExpression()), !dbg !3421
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3422, metadata !DIExpression()), !dbg !3423
  %5 = load i8*, i8** %3, align 8, !dbg !3424
  %6 = load i64, i64* %4, align 8, !dbg !3425
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3426
  ret i8* %7, !dbg !3427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3428 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3431, metadata !DIExpression()), !dbg !3432
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3433, metadata !DIExpression()), !dbg !3434
  %5 = load i32, i32* %3, align 4, !dbg !3435
  %6 = load i8*, i8** %4, align 8, !dbg !3436
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3437
  ret i8* %7, !dbg !3438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3439 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3442, metadata !DIExpression()), !dbg !3443
  %3 = load i8*, i8** %2, align 8, !dbg !3444
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3445
  ret i8* %4, !dbg !3446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3447 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3451, metadata !DIExpression()), !dbg !3452
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3453, metadata !DIExpression()), !dbg !3454
  %5 = load i8*, i8** %3, align 8, !dbg !3455
  %6 = load i8*, i8** %4, align 8, !dbg !3456
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #21, !dbg !3457
  %8 = icmp ne i32 %7, 0, !dbg !3458
  %9 = xor i1 %8, true, !dbg !3458
  ret i1 %9, !dbg !3459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3460 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3498, metadata !DIExpression()), !dbg !3499
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3500, metadata !DIExpression()), !dbg !3501
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3502, metadata !DIExpression()), !dbg !3503
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3504, metadata !DIExpression()), !dbg !3505
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3506, metadata !DIExpression()), !dbg !3507
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3508, metadata !DIExpression()), !dbg !3509
  %13 = load i8*, i8** %8, align 8, !dbg !3510
  %14 = icmp ne i8* %13, null, !dbg !3510
  br i1 %14, label %15, label %21, !dbg !3512

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3513
  %17 = load i8*, i8** %8, align 8, !dbg !3514
  %18 = load i8*, i8** %9, align 8, !dbg !3515
  %19 = load i8*, i8** %10, align 8, !dbg !3516
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3517
  br label %26, !dbg !3517

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3518
  %23 = load i8*, i8** %9, align 8, !dbg !3519
  %24 = load i8*, i8** %10, align 8, !dbg !3520
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.118, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3521
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3522
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.120, i64 0, i64 0)) #19, !dbg !3523
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3524
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3525
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.121, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3525
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3526
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.122, i64 0, i64 0)) #19, !dbg !3527
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.123, i64 0, i64 0)), !dbg !3528
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3529
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.121, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3529
  %37 = load i64, i64* %12, align 8, !dbg !3530
  switch i64 %37, label %210 [
    i64 0, label %38
    i64 1, label %39
    i64 2, label %46
    i64 3, label %56
    i64 4, label %69
    i64 5, label %85
    i64 6, label %104
    i64 7, label %126
    i64 8, label %151
    i64 9, label %179
  ], !dbg !3531

38:                                               ; preds = %26
  br label %241, !dbg !3532

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3534
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.124, i64 0, i64 0)) #19, !dbg !3535
  %42 = load i8**, i8*** %11, align 8, !dbg !3536
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3536
  %44 = load i8*, i8** %43, align 8, !dbg !3536
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3537
  br label %241, !dbg !3538

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3539
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.125, i64 0, i64 0)) #19, !dbg !3540
  %49 = load i8**, i8*** %11, align 8, !dbg !3541
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3541
  %51 = load i8*, i8** %50, align 8, !dbg !3541
  %52 = load i8**, i8*** %11, align 8, !dbg !3542
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3542
  %54 = load i8*, i8** %53, align 8, !dbg !3542
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3543
  br label %241, !dbg !3544

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3545
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.126, i64 0, i64 0)) #19, !dbg !3546
  %59 = load i8**, i8*** %11, align 8, !dbg !3547
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3547
  %61 = load i8*, i8** %60, align 8, !dbg !3547
  %62 = load i8**, i8*** %11, align 8, !dbg !3548
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3548
  %64 = load i8*, i8** %63, align 8, !dbg !3548
  %65 = load i8**, i8*** %11, align 8, !dbg !3549
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3549
  %67 = load i8*, i8** %66, align 8, !dbg !3549
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3550
  br label %241, !dbg !3551

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3552
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.127, i64 0, i64 0)) #19, !dbg !3553
  %72 = load i8**, i8*** %11, align 8, !dbg !3554
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3554
  %74 = load i8*, i8** %73, align 8, !dbg !3554
  %75 = load i8**, i8*** %11, align 8, !dbg !3555
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3555
  %77 = load i8*, i8** %76, align 8, !dbg !3555
  %78 = load i8**, i8*** %11, align 8, !dbg !3556
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3556
  %80 = load i8*, i8** %79, align 8, !dbg !3556
  %81 = load i8**, i8*** %11, align 8, !dbg !3557
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3557
  %83 = load i8*, i8** %82, align 8, !dbg !3557
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3558
  br label %241, !dbg !3559

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3560
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.128, i64 0, i64 0)) #19, !dbg !3561
  %88 = load i8**, i8*** %11, align 8, !dbg !3562
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3562
  %90 = load i8*, i8** %89, align 8, !dbg !3562
  %91 = load i8**, i8*** %11, align 8, !dbg !3563
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3563
  %93 = load i8*, i8** %92, align 8, !dbg !3563
  %94 = load i8**, i8*** %11, align 8, !dbg !3564
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3564
  %96 = load i8*, i8** %95, align 8, !dbg !3564
  %97 = load i8**, i8*** %11, align 8, !dbg !3565
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3565
  %99 = load i8*, i8** %98, align 8, !dbg !3565
  %100 = load i8**, i8*** %11, align 8, !dbg !3566
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3566
  %102 = load i8*, i8** %101, align 8, !dbg !3566
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3567
  br label %241, !dbg !3568

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3569
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.129, i64 0, i64 0)) #19, !dbg !3570
  %107 = load i8**, i8*** %11, align 8, !dbg !3571
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3571
  %109 = load i8*, i8** %108, align 8, !dbg !3571
  %110 = load i8**, i8*** %11, align 8, !dbg !3572
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3572
  %112 = load i8*, i8** %111, align 8, !dbg !3572
  %113 = load i8**, i8*** %11, align 8, !dbg !3573
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3573
  %115 = load i8*, i8** %114, align 8, !dbg !3573
  %116 = load i8**, i8*** %11, align 8, !dbg !3574
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3574
  %118 = load i8*, i8** %117, align 8, !dbg !3574
  %119 = load i8**, i8*** %11, align 8, !dbg !3575
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3575
  %121 = load i8*, i8** %120, align 8, !dbg !3575
  %122 = load i8**, i8*** %11, align 8, !dbg !3576
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3576
  %124 = load i8*, i8** %123, align 8, !dbg !3576
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3577
  br label %241, !dbg !3578

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3579
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.130, i64 0, i64 0)) #19, !dbg !3580
  %129 = load i8**, i8*** %11, align 8, !dbg !3581
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3581
  %131 = load i8*, i8** %130, align 8, !dbg !3581
  %132 = load i8**, i8*** %11, align 8, !dbg !3582
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3582
  %134 = load i8*, i8** %133, align 8, !dbg !3582
  %135 = load i8**, i8*** %11, align 8, !dbg !3583
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3583
  %137 = load i8*, i8** %136, align 8, !dbg !3583
  %138 = load i8**, i8*** %11, align 8, !dbg !3584
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3584
  %140 = load i8*, i8** %139, align 8, !dbg !3584
  %141 = load i8**, i8*** %11, align 8, !dbg !3585
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3585
  %143 = load i8*, i8** %142, align 8, !dbg !3585
  %144 = load i8**, i8*** %11, align 8, !dbg !3586
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3586
  %146 = load i8*, i8** %145, align 8, !dbg !3586
  %147 = load i8**, i8*** %11, align 8, !dbg !3587
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3587
  %149 = load i8*, i8** %148, align 8, !dbg !3587
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3588
  br label %241, !dbg !3589

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3590
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.131, i64 0, i64 0)) #19, !dbg !3591
  %154 = load i8**, i8*** %11, align 8, !dbg !3592
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3592
  %156 = load i8*, i8** %155, align 8, !dbg !3592
  %157 = load i8**, i8*** %11, align 8, !dbg !3593
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3593
  %159 = load i8*, i8** %158, align 8, !dbg !3593
  %160 = load i8**, i8*** %11, align 8, !dbg !3594
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3594
  %162 = load i8*, i8** %161, align 8, !dbg !3594
  %163 = load i8**, i8*** %11, align 8, !dbg !3595
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3595
  %165 = load i8*, i8** %164, align 8, !dbg !3595
  %166 = load i8**, i8*** %11, align 8, !dbg !3596
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3596
  %168 = load i8*, i8** %167, align 8, !dbg !3596
  %169 = load i8**, i8*** %11, align 8, !dbg !3597
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3597
  %171 = load i8*, i8** %170, align 8, !dbg !3597
  %172 = load i8**, i8*** %11, align 8, !dbg !3598
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3598
  %174 = load i8*, i8** %173, align 8, !dbg !3598
  %175 = load i8**, i8*** %11, align 8, !dbg !3599
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3599
  %177 = load i8*, i8** %176, align 8, !dbg !3599
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3600
  br label %241, !dbg !3601

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3602
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.132, i64 0, i64 0)) #19, !dbg !3603
  %182 = load i8**, i8*** %11, align 8, !dbg !3604
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3604
  %184 = load i8*, i8** %183, align 8, !dbg !3604
  %185 = load i8**, i8*** %11, align 8, !dbg !3605
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3605
  %187 = load i8*, i8** %186, align 8, !dbg !3605
  %188 = load i8**, i8*** %11, align 8, !dbg !3606
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3606
  %190 = load i8*, i8** %189, align 8, !dbg !3606
  %191 = load i8**, i8*** %11, align 8, !dbg !3607
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3607
  %193 = load i8*, i8** %192, align 8, !dbg !3607
  %194 = load i8**, i8*** %11, align 8, !dbg !3608
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3608
  %196 = load i8*, i8** %195, align 8, !dbg !3608
  %197 = load i8**, i8*** %11, align 8, !dbg !3609
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3609
  %199 = load i8*, i8** %198, align 8, !dbg !3609
  %200 = load i8**, i8*** %11, align 8, !dbg !3610
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3610
  %202 = load i8*, i8** %201, align 8, !dbg !3610
  %203 = load i8**, i8*** %11, align 8, !dbg !3611
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3611
  %205 = load i8*, i8** %204, align 8, !dbg !3611
  %206 = load i8**, i8*** %11, align 8, !dbg !3612
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3612
  %208 = load i8*, i8** %207, align 8, !dbg !3612
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3613
  br label %241, !dbg !3614

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3615
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.133, i64 0, i64 0)) #19, !dbg !3616
  %213 = load i8**, i8*** %11, align 8, !dbg !3617
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3617
  %215 = load i8*, i8** %214, align 8, !dbg !3617
  %216 = load i8**, i8*** %11, align 8, !dbg !3618
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3618
  %218 = load i8*, i8** %217, align 8, !dbg !3618
  %219 = load i8**, i8*** %11, align 8, !dbg !3619
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3619
  %221 = load i8*, i8** %220, align 8, !dbg !3619
  %222 = load i8**, i8*** %11, align 8, !dbg !3620
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3620
  %224 = load i8*, i8** %223, align 8, !dbg !3620
  %225 = load i8**, i8*** %11, align 8, !dbg !3621
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3621
  %227 = load i8*, i8** %226, align 8, !dbg !3621
  %228 = load i8**, i8*** %11, align 8, !dbg !3622
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3622
  %230 = load i8*, i8** %229, align 8, !dbg !3622
  %231 = load i8**, i8*** %11, align 8, !dbg !3623
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3623
  %233 = load i8*, i8** %232, align 8, !dbg !3623
  %234 = load i8**, i8*** %11, align 8, !dbg !3624
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3624
  %236 = load i8*, i8** %235, align 8, !dbg !3624
  %237 = load i8**, i8*** %11, align 8, !dbg !3625
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3625
  %239 = load i8*, i8** %238, align 8, !dbg !3625
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3626
  br label %241, !dbg !3627

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3629 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3632, metadata !DIExpression()), !dbg !3633
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3634, metadata !DIExpression()), !dbg !3635
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3636, metadata !DIExpression()), !dbg !3637
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3638, metadata !DIExpression()), !dbg !3639
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3642, metadata !DIExpression()), !dbg !3643
  store i64 0, i64* %11, align 8, !dbg !3644
  br label %12, !dbg !3646

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3647
  %14 = load i64, i64* %11, align 8, !dbg !3649
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3647
  %16 = load i8*, i8** %15, align 8, !dbg !3647
  %17 = icmp ne i8* %16, null, !dbg !3650
  br i1 %17, label %18, label %22, !dbg !3650

18:                                               ; preds = %12
  br label %19, !dbg !3650

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3651
  %21 = add i64 %20, 1, !dbg !3651
  store i64 %21, i64* %11, align 8, !dbg !3651
  br label %12, !dbg !3652, !llvm.loop !3653

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3655
  %24 = load i8*, i8** %7, align 8, !dbg !3656
  %25 = load i8*, i8** %8, align 8, !dbg !3657
  %26 = load i8*, i8** %9, align 8, !dbg !3658
  %27 = load i8**, i8*** %10, align 8, !dbg !3659
  %28 = load i64, i64* %11, align 8, !dbg !3660
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3661
  ret void, !dbg !3662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3663 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3677, metadata !DIExpression()), !dbg !3678
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3679, metadata !DIExpression()), !dbg !3680
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3681, metadata !DIExpression()), !dbg !3682
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3683, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3685, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3687, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3689, metadata !DIExpression()), !dbg !3691
  store i64 0, i64* %10, align 8, !dbg !3692
  br label %12, !dbg !3694

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3695
  %14 = icmp ult i64 %13, 10, !dbg !3697
  br i1 %14, label %15, label %38, !dbg !3698

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3699
  %17 = load i32, i32* %16, align 8, !dbg !3699
  %18 = icmp sge i32 %17, 0, !dbg !3699
  br i1 %18, label %27, label %19, !dbg !3699

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3699
  store i32 %20, i32* %16, align 8, !dbg !3699
  %21 = icmp sle i32 %20, 0, !dbg !3699
  br i1 %21, label %22, label %27, !dbg !3699

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3699
  %24 = load i8*, i8** %23, align 8, !dbg !3699
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3699
  %26 = bitcast i8* %25 to i8**, !dbg !3699
  br label %32, !dbg !3699

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3699
  %29 = load i8*, i8** %28, align 8, !dbg !3699
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3699
  store i8* %30, i8** %28, align 8, !dbg !3699
  %31 = bitcast i8* %29 to i8**, !dbg !3699
  br label %32, !dbg !3699

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3699
  %34 = load i8*, i8** %33, align 8, !dbg !3699
  %35 = load i64, i64* %10, align 8, !dbg !3700
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3701
  store i8* %34, i8** %36, align 8, !dbg !3702
  %37 = icmp ne i8* %34, null, !dbg !3703
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3704
  br i1 %39, label %40, label %44, !dbg !3705

40:                                               ; preds = %38
  br label %41, !dbg !3705

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3706
  %43 = add i64 %42, 1, !dbg !3706
  store i64 %43, i64* %10, align 8, !dbg !3706
  br label %12, !dbg !3707, !llvm.loop !3708

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3710
  %46 = load i8*, i8** %7, align 8, !dbg !3711
  %47 = load i8*, i8** %8, align 8, !dbg !3712
  %48 = load i8*, i8** %9, align 8, !dbg !3713
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3714
  %50 = load i64, i64* %10, align 8, !dbg !3715
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3716
  ret void, !dbg !3717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3718 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3721, metadata !DIExpression()), !dbg !3722
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3723, metadata !DIExpression()), !dbg !3724
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3725, metadata !DIExpression()), !dbg !3726
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3727, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3729, metadata !DIExpression()), !dbg !3730
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3731
  call void @llvm.va_start(i8* %11), !dbg !3731
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3732
  %13 = load i8*, i8** %6, align 8, !dbg !3733
  %14 = load i8*, i8** %7, align 8, !dbg !3734
  %15 = load i8*, i8** %8, align 8, !dbg !3735
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3736
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3736
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3736
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3737
  call void @llvm.va_end(i8* %18), !dbg !3737
  ret void, !dbg !3738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3739 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3740
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.121, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3740
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.138, i64 0, i64 0)) #19, !dbg !3741
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.139, i64 0, i64 0)), !dbg !3742
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.140, i64 0, i64 0)) #19, !dbg !3743
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.142, i64 0, i64 0)), !dbg !3744
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.143, i64 0, i64 0)) #19, !dbg !3745
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.144, i64 0, i64 0)), !dbg !3746
  ret void, !dbg !3747
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3748 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3752, metadata !DIExpression()), !dbg !3753
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3754, metadata !DIExpression()), !dbg !3755
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3756, metadata !DIExpression()), !dbg !3757
  %7 = load i8*, i8** %4, align 8, !dbg !3758
  %8 = load i64, i64* %5, align 8, !dbg !3759
  %9 = load i64, i64* %6, align 8, !dbg !3760
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #27, !dbg !3761
  ret i8* %10, !dbg !3762
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3763 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3764, metadata !DIExpression()), !dbg !3765
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3766, metadata !DIExpression()), !dbg !3767
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3768, metadata !DIExpression()), !dbg !3769
  %7 = load i8*, i8** %4, align 8, !dbg !3770
  %8 = load i64, i64* %5, align 8, !dbg !3771
  %9 = load i64, i64* %6, align 8, !dbg !3772
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3773
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3774
  ret i8* %11, !dbg !3775
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3776 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3779, metadata !DIExpression()), !dbg !3780
  %3 = load i8*, i8** %2, align 8, !dbg !3781
  %4 = icmp ne i8* %3, null, !dbg !3781
  br i1 %4, label %6, label %5, !dbg !3783

5:                                                ; preds = %1
  call void @xalloc_die() #23, !dbg !3784
  unreachable, !dbg !3784

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3785
  ret i8* %7, !dbg !3786
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3787 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3790, metadata !DIExpression()), !dbg !3791
  %3 = load i64, i64* %2, align 8, !dbg !3792
  %4 = call noalias i8* @malloc(i64 noundef %3) #19, !dbg !3793
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3794
  ret i8* %5, !dbg !3795
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3796 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3799, metadata !DIExpression()), !dbg !3800
  %3 = load i64, i64* %2, align 8, !dbg !3801
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3802
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3803
  ret i8* %5, !dbg !3804
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3805 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3808, metadata !DIExpression()), !dbg !3809
  %3 = load i64, i64* %2, align 8, !dbg !3810
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #26, !dbg !3810
  ret i8* %4, !dbg !3811
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3812 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3815, metadata !DIExpression()), !dbg !3816
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3817, metadata !DIExpression()), !dbg !3818
  %5 = load i8*, i8** %3, align 8, !dbg !3819
  %6 = load i64, i64* %4, align 8, !dbg !3820
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3821
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3822
  ret i8* %8, !dbg !3823
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3824 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3827, metadata !DIExpression()), !dbg !3828
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3829, metadata !DIExpression()), !dbg !3830
  %5 = load i8*, i8** %3, align 8, !dbg !3831
  %6 = load i64, i64* %4, align 8, !dbg !3832
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3833
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3834
  ret i8* %8, !dbg !3835
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3836 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3839, metadata !DIExpression()), !dbg !3840
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3841, metadata !DIExpression()), !dbg !3842
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3843, metadata !DIExpression()), !dbg !3844
  %7 = load i8*, i8** %4, align 8, !dbg !3845
  %8 = load i64, i64* %5, align 8, !dbg !3846
  %9 = load i64, i64* %6, align 8, !dbg !3847
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3848
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3849
  ret i8* %11, !dbg !3850
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3851 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3854, metadata !DIExpression()), !dbg !3855
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3856, metadata !DIExpression()), !dbg !3857
  %5 = load i64, i64* %3, align 8, !dbg !3858
  %6 = load i64, i64* %4, align 8, !dbg !3859
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3860
  ret i8* %7, !dbg !3861
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3862 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3865, metadata !DIExpression()), !dbg !3866
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3867, metadata !DIExpression()), !dbg !3868
  %5 = load i64, i64* %3, align 8, !dbg !3869
  %6 = load i64, i64* %4, align 8, !dbg !3870
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3871
  ret i8* %7, !dbg !3872
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3873 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3876, metadata !DIExpression()), !dbg !3877
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3878, metadata !DIExpression()), !dbg !3879
  %5 = load i8*, i8** %3, align 8, !dbg !3880
  %6 = load i64*, i64** %4, align 8, !dbg !3881
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3882
  ret i8* %7, !dbg !3883
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !478 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3884, metadata !DIExpression()), !dbg !3885
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3886, metadata !DIExpression()), !dbg !3887
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3888, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3890, metadata !DIExpression()), !dbg !3891
  %8 = load i64*, i64** %5, align 8, !dbg !3892
  %9 = load i64, i64* %8, align 8, !dbg !3893
  store i64 %9, i64* %7, align 8, !dbg !3891
  %10 = load i8*, i8** %4, align 8, !dbg !3894
  %11 = icmp ne i8* %10, null, !dbg !3894
  br i1 %11, label %26, label %12, !dbg !3896

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3897
  %14 = icmp ne i64 %13, 0, !dbg !3897
  br i1 %14, label %25, label %15, !dbg !3900

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3901
  %17 = udiv i64 128, %16, !dbg !3903
  store i64 %17, i64* %7, align 8, !dbg !3904
  %18 = load i64, i64* %7, align 8, !dbg !3905
  %19 = icmp ne i64 %18, 0, !dbg !3906
  %20 = xor i1 %19, true, !dbg !3906
  %21 = zext i1 %20 to i32, !dbg !3906
  %22 = sext i32 %21 to i64, !dbg !3906
  %23 = load i64, i64* %7, align 8, !dbg !3907
  %24 = add i64 %23, %22, !dbg !3907
  store i64 %24, i64* %7, align 8, !dbg !3907
  br label %25, !dbg !3908

25:                                               ; preds = %15, %12
  br label %36, !dbg !3909

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3910
  %28 = load i64, i64* %7, align 8, !dbg !3910
  %29 = lshr i64 %28, 1, !dbg !3910
  %30 = add i64 %29, 1, !dbg !3910
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3910
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3910
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3910
  store i64 %33, i64* %7, align 8, !dbg !3910
  br i1 %32, label %34, label %35, !dbg !3913

34:                                               ; preds = %26
  call void @xalloc_die() #23, !dbg !3914
  unreachable, !dbg !3914

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3915
  %38 = load i64, i64* %7, align 8, !dbg !3916
  %39 = load i64, i64* %6, align 8, !dbg !3917
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #27, !dbg !3918
  store i8* %40, i8** %4, align 8, !dbg !3919
  %41 = load i64, i64* %7, align 8, !dbg !3920
  %42 = load i64*, i64** %5, align 8, !dbg !3921
  store i64 %41, i64* %42, align 8, !dbg !3922
  %43 = load i8*, i8** %4, align 8, !dbg !3923
  ret i8* %43, !dbg !3924
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !485 {
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3925, metadata !DIExpression()), !dbg !3926
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3927, metadata !DIExpression()), !dbg !3928
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3929, metadata !DIExpression()), !dbg !3930
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3931, metadata !DIExpression()), !dbg !3932
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3933, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3935, metadata !DIExpression()), !dbg !3936
  %15 = load i64*, i64** %7, align 8, !dbg !3937
  %16 = load i64, i64* %15, align 8, !dbg !3938
  store i64 %16, i64* %11, align 8, !dbg !3936
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3939, metadata !DIExpression()), !dbg !3940
  %17 = load i64, i64* %11, align 8, !dbg !3941
  %18 = load i64, i64* %11, align 8, !dbg !3941
  %19 = ashr i64 %18, 1, !dbg !3941
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3941
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3941
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3941
  store i64 %22, i64* %12, align 8, !dbg !3941
  br i1 %21, label %23, label %24, !dbg !3943

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3944
  br label %24, !dbg !3945

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3946
  %26 = icmp sle i64 0, %25, !dbg !3948
  br i1 %26, label %27, label %33, !dbg !3949

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3950
  %29 = load i64, i64* %12, align 8, !dbg !3951
  %30 = icmp slt i64 %28, %29, !dbg !3952
  br i1 %30, label %31, label %33, !dbg !3953

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3954
  store i64 %32, i64* %12, align 8, !dbg !3955
  br label %33, !dbg !3956

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3957, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3959, metadata !DIExpression()), !dbg !3960
  %34 = load i64, i64* %10, align 8, !dbg !3961
  %35 = icmp slt i64 %34, 0, !dbg !3961
  br i1 %35, label %36, label %82, !dbg !3961

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3961
  %38 = icmp slt i64 %37, 0, !dbg !3961
  br i1 %38, label %39, label %62, !dbg !3961

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3961

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3961
  %42 = load i64, i64* %10, align 8, !dbg !3961
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3961
  %44 = icmp slt i64 %41, %43, !dbg !3961
  br i1 %44, label %111, label %115, !dbg !3961

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3961

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3961
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3961
  br i1 %48, label %52, label %53, !dbg !3961

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3961
  %51 = icmp slt i64 0, %50, !dbg !3961
  br i1 %51, label %52, label %53, !dbg !3961

52:                                               ; preds = %49, %46
  br label %57, !dbg !3961

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3961
  %55 = sub nsw i64 0, %54, !dbg !3961
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3961
  br label %57, !dbg !3961

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3961
  %59 = load i64, i64* %12, align 8, !dbg !3961
  %60 = sub nsw i64 -1, %59, !dbg !3961
  %61 = icmp sle i64 %58, %60, !dbg !3961
  br i1 %61, label %111, label %115, !dbg !3961

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3961
  %64 = icmp eq i64 %63, -1, !dbg !3961
  br i1 %64, label %65, label %77, !dbg !3961

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3961

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3961
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3961
  %69 = icmp slt i64 0, %68, !dbg !3961
  br i1 %69, label %111, label %115, !dbg !3961

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3961
  %72 = icmp slt i64 0, %71, !dbg !3961
  br i1 %72, label %73, label %115, !dbg !3961

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3961
  %75 = sub nsw i64 %74, 1, !dbg !3961
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3961
  br i1 %76, label %111, label %115, !dbg !3961

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3961
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3961
  %80 = load i64, i64* %12, align 8, !dbg !3961
  %81 = icmp slt i64 %79, %80, !dbg !3961
  br i1 %81, label %111, label %115, !dbg !3961

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3961
  %84 = icmp eq i64 %83, 0, !dbg !3961
  br i1 %84, label %85, label %86, !dbg !3961

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3961

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3961
  %88 = icmp slt i64 %87, 0, !dbg !3961
  br i1 %88, label %89, label %106, !dbg !3961

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3961
  %91 = icmp eq i64 %90, -1, !dbg !3961
  br i1 %91, label %92, label %101, !dbg !3961

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3961

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3961
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3961
  %96 = icmp slt i64 0, %95, !dbg !3961
  br i1 %96, label %111, label %115, !dbg !3961

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3961
  %99 = sub nsw i64 %98, 1, !dbg !3961
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3961
  br i1 %100, label %111, label %115, !dbg !3961

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3961
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3961
  %104 = load i64, i64* %10, align 8, !dbg !3961
  %105 = icmp slt i64 %103, %104, !dbg !3961
  br i1 %105, label %111, label %115, !dbg !3961

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3961
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3961
  %109 = load i64, i64* %12, align 8, !dbg !3961
  %110 = icmp slt i64 %108, %109, !dbg !3961
  br i1 %110, label %111, label %115, !dbg !3961

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3961
  %113 = load i64, i64* %10, align 8, !dbg !3961
  %114 = mul i64 %112, %113, !dbg !3961
  store i64 %114, i64* %13, align 8, !dbg !3961
  br label %119, !dbg !3961

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3961
  %117 = load i64, i64* %10, align 8, !dbg !3961
  %118 = mul i64 %116, %117, !dbg !3961
  store i64 %118, i64* %13, align 8, !dbg !3961
  br label %119, !dbg !3961

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3961
  %121 = icmp ne i32 %120, 0, !dbg !3961
  br i1 %121, label %122, label %123, !dbg !3961

122:                                              ; preds = %119
  br label %129, !dbg !3961

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3962
  %125 = icmp slt i64 %124, 128, !dbg !3963
  %126 = zext i1 %125 to i64, !dbg !3962
  %127 = select i1 %125, i32 128, i32 0, !dbg !3962
  %128 = sext i32 %127 to i64, !dbg !3962
  br label %129, !dbg !3961

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3961
  store i64 %130, i64* %14, align 8, !dbg !3960
  %131 = load i64, i64* %14, align 8, !dbg !3964
  %132 = icmp ne i64 %131, 0, !dbg !3964
  br i1 %132, label %133, label %142, !dbg !3966

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3967
  %135 = load i64, i64* %10, align 8, !dbg !3969
  %136 = sdiv i64 %134, %135, !dbg !3970
  store i64 %136, i64* %12, align 8, !dbg !3971
  %137 = load i64, i64* %14, align 8, !dbg !3972
  %138 = load i64, i64* %14, align 8, !dbg !3973
  %139 = load i64, i64* %10, align 8, !dbg !3974
  %140 = srem i64 %138, %139, !dbg !3975
  %141 = sub nsw i64 %137, %140, !dbg !3976
  store i64 %141, i64* %13, align 8, !dbg !3977
  br label %142, !dbg !3978

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3979
  %144 = icmp ne i8* %143, null, !dbg !3979
  br i1 %144, label %147, label %145, !dbg !3981

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3982
  store i64 0, i64* %146, align 8, !dbg !3983
  br label %147, !dbg !3984

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3985
  %149 = load i64, i64* %11, align 8, !dbg !3987
  %150 = sub nsw i64 %148, %149, !dbg !3988
  %151 = load i64, i64* %8, align 8, !dbg !3989
  %152 = icmp slt i64 %150, %151, !dbg !3990
  br i1 %152, label %153, label %256, !dbg !3991

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3992
  %155 = load i64, i64* %8, align 8, !dbg !3992
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3992
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3992
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3992
  store i64 %158, i64* %12, align 8, !dbg !3992
  br i1 %157, label %255, label %159, !dbg !3993

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3994
  %161 = icmp sle i64 0, %160, !dbg !3995
  br i1 %161, label %162, label %166, !dbg !3996

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3997
  %164 = load i64, i64* %12, align 8, !dbg !3998
  %165 = icmp slt i64 %163, %164, !dbg !3999
  br i1 %165, label %255, label %166, !dbg !4000

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !4001
  %168 = icmp slt i64 %167, 0, !dbg !4001
  br i1 %168, label %169, label %215, !dbg !4001

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !4001
  %171 = icmp slt i64 %170, 0, !dbg !4001
  br i1 %171, label %172, label %195, !dbg !4001

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !4001

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !4001
  %175 = load i64, i64* %10, align 8, !dbg !4001
  %176 = sdiv i64 9223372036854775807, %175, !dbg !4001
  %177 = icmp slt i64 %174, %176, !dbg !4001
  br i1 %177, label %244, label %248, !dbg !4001

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !4001

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !4001
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !4001
  br i1 %181, label %185, label %186, !dbg !4001

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !4001
  %184 = icmp slt i64 0, %183, !dbg !4001
  br i1 %184, label %185, label %186, !dbg !4001

185:                                              ; preds = %182, %179
  br label %190, !dbg !4001

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !4001
  %188 = sub nsw i64 0, %187, !dbg !4001
  %189 = sdiv i64 9223372036854775807, %188, !dbg !4001
  br label %190, !dbg !4001

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !4001
  %192 = load i64, i64* %12, align 8, !dbg !4001
  %193 = sub nsw i64 -1, %192, !dbg !4001
  %194 = icmp sle i64 %191, %193, !dbg !4001
  br i1 %194, label %244, label %248, !dbg !4001

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !4001
  %197 = icmp eq i64 %196, -1, !dbg !4001
  br i1 %197, label %198, label %210, !dbg !4001

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !4001

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !4001
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !4001
  %202 = icmp slt i64 0, %201, !dbg !4001
  br i1 %202, label %244, label %248, !dbg !4001

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !4001
  %205 = icmp slt i64 0, %204, !dbg !4001
  br i1 %205, label %206, label %248, !dbg !4001

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !4001
  %208 = sub nsw i64 %207, 1, !dbg !4001
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !4001
  br i1 %209, label %244, label %248, !dbg !4001

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !4001
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !4001
  %213 = load i64, i64* %12, align 8, !dbg !4001
  %214 = icmp slt i64 %212, %213, !dbg !4001
  br i1 %214, label %244, label %248, !dbg !4001

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !4001
  %217 = icmp eq i64 %216, 0, !dbg !4001
  br i1 %217, label %218, label %219, !dbg !4001

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !4001

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !4001
  %221 = icmp slt i64 %220, 0, !dbg !4001
  br i1 %221, label %222, label %239, !dbg !4001

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !4001
  %224 = icmp eq i64 %223, -1, !dbg !4001
  br i1 %224, label %225, label %234, !dbg !4001

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !4001

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !4001
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !4001
  %229 = icmp slt i64 0, %228, !dbg !4001
  br i1 %229, label %244, label %248, !dbg !4001

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !4001
  %232 = sub nsw i64 %231, 1, !dbg !4001
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !4001
  br i1 %233, label %244, label %248, !dbg !4001

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !4001
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !4001
  %237 = load i64, i64* %10, align 8, !dbg !4001
  %238 = icmp slt i64 %236, %237, !dbg !4001
  br i1 %238, label %244, label %248, !dbg !4001

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !4001
  %241 = sdiv i64 9223372036854775807, %240, !dbg !4001
  %242 = load i64, i64* %12, align 8, !dbg !4001
  %243 = icmp slt i64 %241, %242, !dbg !4001
  br i1 %243, label %244, label %248, !dbg !4001

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !4001
  %246 = load i64, i64* %10, align 8, !dbg !4001
  %247 = mul i64 %245, %246, !dbg !4001
  store i64 %247, i64* %13, align 8, !dbg !4001
  br label %252, !dbg !4001

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !4001
  %250 = load i64, i64* %10, align 8, !dbg !4001
  %251 = mul i64 %249, %250, !dbg !4001
  store i64 %251, i64* %13, align 8, !dbg !4001
  br label %252, !dbg !4001

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !4001
  %254 = icmp ne i32 %253, 0, !dbg !4001
  br i1 %254, label %255, label %256, !dbg !4002

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #23, !dbg !4003
  unreachable, !dbg !4003

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !4004
  %258 = load i64, i64* %13, align 8, !dbg !4005
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #25, !dbg !4006
  store i8* %259, i8** %6, align 8, !dbg !4007
  %260 = load i64, i64* %12, align 8, !dbg !4008
  %261 = load i64*, i64** %7, align 8, !dbg !4009
  store i64 %260, i64* %261, align 8, !dbg !4010
  %262 = load i8*, i8** %6, align 8, !dbg !4011
  ret i8* %262, !dbg !4012
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !4013 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4014, metadata !DIExpression()), !dbg !4015
  %3 = load i64, i64* %2, align 8, !dbg !4016
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !4017
  ret i8* %4, !dbg !4018
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4019 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4020, metadata !DIExpression()), !dbg !4021
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4022, metadata !DIExpression()), !dbg !4023
  %5 = load i64, i64* %3, align 8, !dbg !4024
  %6 = load i64, i64* %4, align 8, !dbg !4025
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #19, !dbg !4026
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4027
  ret i8* %8, !dbg !4028
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !4029 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4030, metadata !DIExpression()), !dbg !4031
  %3 = load i64, i64* %2, align 8, !dbg !4032
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !4033
  ret i8* %4, !dbg !4034
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4035 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4036, metadata !DIExpression()), !dbg !4037
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4038, metadata !DIExpression()), !dbg !4039
  %5 = load i64, i64* %3, align 8, !dbg !4040
  %6 = load i64, i64* %4, align 8, !dbg !4041
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !4042
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4043
  ret i8* %8, !dbg !4044
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4045 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4050, metadata !DIExpression()), !dbg !4051
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4052, metadata !DIExpression()), !dbg !4053
  %5 = load i64, i64* %4, align 8, !dbg !4054
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #26, !dbg !4055
  %7 = load i8*, i8** %3, align 8, !dbg !4056
  %8 = load i64, i64* %4, align 8, !dbg !4057
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4058
  ret i8* %6, !dbg !4059
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4060 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4063, metadata !DIExpression()), !dbg !4064
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4065, metadata !DIExpression()), !dbg !4066
  %5 = load i64, i64* %4, align 8, !dbg !4067
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #26, !dbg !4068
  %7 = load i8*, i8** %3, align 8, !dbg !4069
  %8 = load i64, i64* %4, align 8, !dbg !4070
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4071
  ret i8* %6, !dbg !4072
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !4073 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4076, metadata !DIExpression()), !dbg !4077
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4078, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4080, metadata !DIExpression()), !dbg !4081
  %6 = load i64, i64* %4, align 8, !dbg !4082
  %7 = add nsw i64 %6, 1, !dbg !4083
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #26, !dbg !4084
  store i8* %8, i8** %5, align 8, !dbg !4081
  %9 = load i8*, i8** %5, align 8, !dbg !4085
  %10 = load i64, i64* %4, align 8, !dbg !4086
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !4085
  store i8 0, i8* %11, align 1, !dbg !4087
  %12 = load i8*, i8** %5, align 8, !dbg !4088
  %13 = load i8*, i8** %3, align 8, !dbg !4089
  %14 = load i64, i64* %4, align 8, !dbg !4090
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !4091
  ret i8* %12, !dbg !4092
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !4093 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4094, metadata !DIExpression()), !dbg !4095
  %3 = load i8*, i8** %2, align 8, !dbg !4096
  %4 = load i8*, i8** %2, align 8, !dbg !4097
  %5 = call i64 @strlen(i8* noundef %4) #21, !dbg !4098
  %6 = add i64 %5, 1, !dbg !4099
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #25, !dbg !4100
  ret i8* %7, !dbg !4101
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4102 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4103, metadata !DIExpression()), !dbg !4106
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !4106
  store i32 %2, i32* %1, align 4, !dbg !4106
  %3 = load i32, i32* %1, align 4, !dbg !4106
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.155, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.156, i64 0, i64 0)) #19, !dbg !4106
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i64 0, i64 0), i8* noundef %4), !dbg !4106
  %5 = load i32, i32* %1, align 4, !dbg !4106
  %6 = icmp ne i32 %5, 0, !dbg !4106
  br i1 %6, label %7, label %9, !dbg !4106

7:                                                ; preds = %0
  unreachable, !dbg !4106

8:                                                ; No predecessors!
  br label %10, !dbg !4106

9:                                                ; preds = %0
  br label %10, !dbg !4106

10:                                               ; preds = %9, %8
  call void @abort() #20, !dbg !4107
  unreachable, !dbg !4107
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xnumtoumax(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %5, i32 noundef %6, i32 noundef %7) #4 !dbg !4108 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4112, metadata !DIExpression()), !dbg !4113
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4114, metadata !DIExpression()), !dbg !4115
  store i64 %2, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4116, metadata !DIExpression()), !dbg !4117
  store i64 %3, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4118, metadata !DIExpression()), !dbg !4119
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !4120, metadata !DIExpression()), !dbg !4121
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !4122, metadata !DIExpression()), !dbg !4123
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4124, metadata !DIExpression()), !dbg !4125
  store i32 %7, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !4126, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.declare(metadata i64* %17, metadata !4128, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.declare(metadata i64* %18, metadata !4130, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4132, metadata !DIExpression()), !dbg !4134
  %23 = load i8*, i8** %9, align 8, !dbg !4135
  %24 = load i32, i32* %10, align 4, !dbg !4136
  %25 = load i8*, i8** %13, align 8, !dbg !4137
  %26 = call i32 @xstrtoumax(i8* noundef %23, i8** noundef null, i32 noundef %24, i64* noundef %17, i8* noundef %25), !dbg !4138
  store i32 %26, i32* %19, align 4, !dbg !4134
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4139, metadata !DIExpression()), !dbg !4140
  %27 = load i32, i32* %19, align 4, !dbg !4141
  %28 = icmp ne i32 %27, 4, !dbg !4143
  br i1 %28, label %29, label %63, !dbg !4144

29:                                               ; preds = %8
  %30 = load i64, i64* %17, align 8, !dbg !4145
  %31 = load i64, i64* %11, align 8, !dbg !4148
  %32 = icmp ult i64 %30, %31, !dbg !4149
  br i1 %32, label %33, label %44, !dbg !4150

33:                                               ; preds = %29
  %34 = load i64, i64* %11, align 8, !dbg !4151
  store i64 %34, i64* %18, align 8, !dbg !4153
  %35 = load i32, i32* %16, align 4, !dbg !4154
  %36 = and i32 %35, 4, !dbg !4155
  %37 = icmp ne i32 %36, 0, !dbg !4154
  %38 = zext i1 %37 to i64, !dbg !4154
  %39 = select i1 %37, i32 34, i32 75, !dbg !4154
  store i32 %39, i32* %20, align 4, !dbg !4156
  %40 = load i32, i32* %19, align 4, !dbg !4157
  %41 = icmp eq i32 %40, 0, !dbg !4159
  br i1 %41, label %42, label %43, !dbg !4160

42:                                               ; preds = %33
  store i32 1, i32* %19, align 4, !dbg !4161
  br label %43, !dbg !4162

43:                                               ; preds = %42, %33
  br label %62, !dbg !4163

44:                                               ; preds = %29
  %45 = load i64, i64* %12, align 8, !dbg !4164
  %46 = load i64, i64* %17, align 8, !dbg !4166
  %47 = icmp ult i64 %45, %46, !dbg !4167
  br i1 %47, label %48, label %59, !dbg !4168

48:                                               ; preds = %44
  %49 = load i64, i64* %12, align 8, !dbg !4169
  store i64 %49, i64* %18, align 8, !dbg !4171
  %50 = load i32, i32* %16, align 4, !dbg !4172
  %51 = and i32 %50, 8, !dbg !4173
  %52 = icmp ne i32 %51, 0, !dbg !4172
  %53 = zext i1 %52 to i64, !dbg !4172
  %54 = select i1 %52, i32 34, i32 75, !dbg !4172
  store i32 %54, i32* %20, align 4, !dbg !4174
  %55 = load i32, i32* %19, align 4, !dbg !4175
  %56 = icmp eq i32 %55, 0, !dbg !4177
  br i1 %56, label %57, label %58, !dbg !4178

57:                                               ; preds = %48
  store i32 1, i32* %19, align 4, !dbg !4179
  br label %58, !dbg !4180

58:                                               ; preds = %57, %48
  br label %61, !dbg !4181

59:                                               ; preds = %44
  %60 = load i64, i64* %17, align 8, !dbg !4182
  store i64 %60, i64* %18, align 8, !dbg !4184
  store i32 75, i32* %20, align 4, !dbg !4185
  br label %61

61:                                               ; preds = %59, %58
  br label %62

62:                                               ; preds = %61, %43
  br label %63, !dbg !4186

63:                                               ; preds = %62, %8
  call void @llvm.dbg.declare(metadata i32* %21, metadata !4187, metadata !DIExpression()), !dbg !4188
  %64 = load i32, i32* %19, align 4, !dbg !4189
  %65 = icmp eq i32 %64, 1, !dbg !4190
  br i1 %65, label %66, label %68, !dbg !4189

66:                                               ; preds = %63
  %67 = load i32, i32* %20, align 4, !dbg !4191
  br label %69, !dbg !4189

68:                                               ; preds = %63
  br label %69, !dbg !4189

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ], !dbg !4189
  store i32 %70, i32* %21, align 4, !dbg !4188
  %71 = load i32, i32* %19, align 4, !dbg !4192
  %72 = icmp eq i32 %71, 0, !dbg !4194
  br i1 %72, label %137, label %73, !dbg !4195

73:                                               ; preds = %69
  %74 = load i32, i32* %19, align 4, !dbg !4196
  %75 = icmp eq i32 %74, 1, !dbg !4197
  br i1 %75, label %76, label %84, !dbg !4198

76:                                               ; preds = %73
  %77 = load i32, i32* %16, align 4, !dbg !4199
  %78 = load i64, i64* %17, align 8, !dbg !4200
  %79 = icmp ult i64 %78, 0, !dbg !4201
  %80 = zext i1 %79 to i64, !dbg !4200
  %81 = select i1 %79, i32 1, i32 2, !dbg !4200
  %82 = and i32 %77, %81, !dbg !4202
  %83 = icmp ne i32 %82, 0, !dbg !4202
  br i1 %83, label %137, label %84, !dbg !4203

84:                                               ; preds = %76, %73
  %85 = load i32, i32* %15, align 4, !dbg !4204
  %86 = icmp ne i32 %85, 0, !dbg !4204
  br i1 %86, label %87, label %89, !dbg !4204

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4, !dbg !4204
  br label %90, !dbg !4204

89:                                               ; preds = %84
  br label %90, !dbg !4204

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 1, %89 ], !dbg !4204
  %92 = call i1 @llvm.is.constant.i32(i32 %91), !dbg !4204
  br i1 %92, label %93, label %117, !dbg !4204

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4, !dbg !4204
  %95 = icmp ne i32 %94, 0, !dbg !4204
  br i1 %95, label %96, label %98, !dbg !4204

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4, !dbg !4204
  br label %99, !dbg !4204

98:                                               ; preds = %93
  br label %99, !dbg !4204

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 1, %98 ], !dbg !4204
  %101 = load i32, i32* %21, align 4, !dbg !4204
  %102 = load i8*, i8** %14, align 8, !dbg !4204
  %103 = load i8*, i8** %9, align 8, !dbg !4204
  %104 = call i8* @quote(i8* noundef %103), !dbg !4204
  call void (i32, i32, i8*, ...) @error(i32 noundef %100, i32 noundef %101, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i64 0, i64 0), i8* noundef %102, i8* noundef %104), !dbg !4204
  %105 = load i32, i32* %15, align 4, !dbg !4204
  %106 = icmp ne i32 %105, 0, !dbg !4204
  br i1 %106, label %107, label %109, !dbg !4204

107:                                              ; preds = %99
  %108 = load i32, i32* %15, align 4, !dbg !4204
  br label %110, !dbg !4204

109:                                              ; preds = %99
  br label %110, !dbg !4204

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 1, %109 ], !dbg !4204
  %112 = icmp ne i32 %111, 0, !dbg !4204
  br i1 %112, label %113, label %115, !dbg !4204

113:                                              ; preds = %110
  unreachable, !dbg !4204

114:                                              ; No predecessors!
  br label %116, !dbg !4204

115:                                              ; preds = %110
  br label %116, !dbg !4204

116:                                              ; preds = %115, %114
  br label %136, !dbg !4204

117:                                              ; preds = %90
  call void @llvm.dbg.declare(metadata i32* %22, metadata !4205, metadata !DIExpression()), !dbg !4207
  %118 = load i32, i32* %15, align 4, !dbg !4207
  %119 = icmp ne i32 %118, 0, !dbg !4207
  br i1 %119, label %120, label %122, !dbg !4207

120:                                              ; preds = %117
  %121 = load i32, i32* %15, align 4, !dbg !4207
  br label %123, !dbg !4207

122:                                              ; preds = %117
  br label %123, !dbg !4207

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 1, %122 ], !dbg !4207
  store i32 %124, i32* %22, align 4, !dbg !4207
  %125 = load i32, i32* %22, align 4, !dbg !4207
  %126 = load i32, i32* %21, align 4, !dbg !4207
  %127 = load i8*, i8** %14, align 8, !dbg !4207
  %128 = load i8*, i8** %9, align 8, !dbg !4207
  %129 = call i8* @quote(i8* noundef %128), !dbg !4207
  call void (i32, i32, i8*, ...) @error(i32 noundef %125, i32 noundef %126, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i64 0, i64 0), i8* noundef %127, i8* noundef %129), !dbg !4207
  %130 = load i32, i32* %22, align 4, !dbg !4207
  %131 = icmp ne i32 %130, 0, !dbg !4207
  br i1 %131, label %132, label %134, !dbg !4207

132:                                              ; preds = %123
  unreachable, !dbg !4207

133:                                              ; No predecessors!
  br label %135, !dbg !4207

134:                                              ; preds = %123
  br label %135, !dbg !4207

135:                                              ; preds = %134, %133
  br label %136, !dbg !4204

136:                                              ; preds = %135, %116
  br label %137, !dbg !4204

137:                                              ; preds = %136, %76, %69
  %138 = load i32, i32* %21, align 4, !dbg !4208
  %139 = call i32* @__errno_location() #22, !dbg !4209
  store i32 %138, i32* %139, align 4, !dbg !4210
  %140 = load i64, i64* %18, align 8, !dbg !4211
  ret i64 %140, !dbg !4212
}

; Function Attrs: convergent nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #18

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdectoumax(i8* noundef nonnull %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef nonnull %4, i32 noundef %5) #4 !dbg !4213 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4216, metadata !DIExpression()), !dbg !4217
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4218, metadata !DIExpression()), !dbg !4219
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4220, metadata !DIExpression()), !dbg !4221
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4222, metadata !DIExpression()), !dbg !4223
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4224, metadata !DIExpression()), !dbg !4225
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4226, metadata !DIExpression()), !dbg !4227
  %13 = load i8*, i8** %7, align 8, !dbg !4228
  %14 = load i64, i64* %8, align 8, !dbg !4229
  %15 = load i64, i64* %9, align 8, !dbg !4230
  %16 = load i8*, i8** %10, align 8, !dbg !4231
  %17 = load i8*, i8** %11, align 8, !dbg !4232
  %18 = load i32, i32* %12, align 4, !dbg !4233
  %19 = call i64 @xnumtoumax(i8* noundef %13, i32 noundef 10, i64 noundef %14, i64 noundef %15, i8* noundef %16, i8* noundef %17, i32 noundef %18, i32 noundef 0), !dbg !4234
  ret i64 %19, !dbg !4235
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xstrtoumax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* noundef %3, i8* noundef %4) #4 !dbg !4236 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4241, metadata !DIExpression()), !dbg !4242
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4243, metadata !DIExpression()), !dbg !4244
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4245, metadata !DIExpression()), !dbg !4246
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !4247, metadata !DIExpression()), !dbg !4248
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4249, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !4253, metadata !DIExpression()), !dbg !4254
  %21 = load i8**, i8*** %8, align 8, !dbg !4255
  %22 = icmp ne i8** %21, null, !dbg !4255
  br i1 %22, label %23, label %25, !dbg !4255

23:                                               ; preds = %5
  %24 = load i8**, i8*** %8, align 8, !dbg !4256
  br label %26, !dbg !4255

25:                                               ; preds = %5
  br label %26, !dbg !4255

26:                                               ; preds = %25, %23
  %27 = phi i8** [ %24, %23 ], [ %12, %25 ], !dbg !4255
  store i8** %27, i8*** %13, align 8, !dbg !4254
  call void @llvm.dbg.declare(metadata i8** %14, metadata !4257, metadata !DIExpression()), !dbg !4260
  %28 = load i8*, i8** %7, align 8, !dbg !4261
  store i8* %28, i8** %14, align 8, !dbg !4260
  call void @llvm.dbg.declare(metadata i8* %15, metadata !4262, metadata !DIExpression()), !dbg !4263
  %29 = load i8*, i8** %14, align 8, !dbg !4264
  %30 = load i8, i8* %29, align 1, !dbg !4265
  store i8 %30, i8* %15, align 1, !dbg !4263
  br label %31, !dbg !4266

31:                                               ; preds = %42, %26
  %32 = call i16** @__ctype_b_loc() #22, !dbg !4267
  %33 = load i16*, i16** %32, align 8, !dbg !4267
  %34 = load i8, i8* %15, align 1, !dbg !4267
  %35 = zext i8 %34 to i32, !dbg !4267
  %36 = sext i32 %35 to i64, !dbg !4267
  %37 = getelementptr inbounds i16, i16* %33, i64 %36, !dbg !4267
  %38 = load i16, i16* %37, align 2, !dbg !4267
  %39 = zext i16 %38 to i32, !dbg !4267
  %40 = and i32 %39, 8192, !dbg !4267
  %41 = icmp ne i32 %40, 0, !dbg !4266
  br i1 %41, label %42, label %46, !dbg !4266

42:                                               ; preds = %31
  %43 = load i8*, i8** %14, align 8, !dbg !4268
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !4268
  store i8* %44, i8** %14, align 8, !dbg !4268
  %45 = load i8, i8* %44, align 1, !dbg !4269
  store i8 %45, i8* %15, align 1, !dbg !4270
  br label %31, !dbg !4266, !llvm.loop !4271

46:                                               ; preds = %31
  %47 = load i8, i8* %15, align 1, !dbg !4273
  %48 = zext i8 %47 to i32, !dbg !4273
  %49 = icmp eq i32 %48, 45, !dbg !4275
  br i1 %49, label %50, label %53, !dbg !4276

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8, !dbg !4277
  %52 = load i8**, i8*** %13, align 8, !dbg !4279
  store i8* %51, i8** %52, align 8, !dbg !4280
  store i32 4, i32* %6, align 4, !dbg !4281
  br label %218, !dbg !4281

53:                                               ; preds = %46
  %54 = call i32* @__errno_location() #22, !dbg !4282
  store i32 0, i32* %54, align 4, !dbg !4283
  call void @llvm.dbg.declare(metadata i64* %16, metadata !4284, metadata !DIExpression()), !dbg !4285
  %55 = load i8*, i8** %7, align 8, !dbg !4286
  %56 = load i8**, i8*** %13, align 8, !dbg !4287
  %57 = load i32, i32* %9, align 4, !dbg !4288
  %58 = call i64 @strtoumax(i8* noundef %55, i8** noundef %56, i32 noundef %57) #19, !dbg !4289
  store i64 %58, i64* %16, align 8, !dbg !4285
  call void @llvm.dbg.declare(metadata i32* %17, metadata !4290, metadata !DIExpression()), !dbg !4291
  store i32 0, i32* %17, align 4, !dbg !4291
  %59 = load i8**, i8*** %13, align 8, !dbg !4292
  %60 = load i8*, i8** %59, align 8, !dbg !4294
  %61 = load i8*, i8** %7, align 8, !dbg !4295
  %62 = icmp eq i8* %60, %61, !dbg !4296
  br i1 %62, label %63, label %80, !dbg !4297

63:                                               ; preds = %53
  %64 = load i8*, i8** %11, align 8, !dbg !4298
  %65 = icmp ne i8* %64, null, !dbg !4298
  br i1 %65, label %66, label %78, !dbg !4301

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8, !dbg !4302
  %68 = load i8, i8* %67, align 1, !dbg !4303
  %69 = zext i8 %68 to i32, !dbg !4303
  %70 = icmp ne i32 %69, 0, !dbg !4303
  br i1 %70, label %71, label %78, !dbg !4304

71:                                               ; preds = %66
  %72 = load i8*, i8** %11, align 8, !dbg !4305
  %73 = load i8*, i8** %7, align 8, !dbg !4306
  %74 = load i8, i8* %73, align 1, !dbg !4307
  %75 = zext i8 %74 to i32, !dbg !4307
  %76 = call i8* @strchr(i8* noundef %72, i32 noundef %75) #21, !dbg !4308
  %77 = icmp ne i8* %76, null, !dbg !4308
  br i1 %77, label %79, label %78, !dbg !4309

78:                                               ; preds = %71, %66, %63
  store i32 4, i32* %6, align 4, !dbg !4310
  br label %218, !dbg !4310

79:                                               ; preds = %71
  store i64 1, i64* %16, align 8, !dbg !4311
  br label %91, !dbg !4312

80:                                               ; preds = %53
  %81 = call i32* @__errno_location() #22, !dbg !4313
  %82 = load i32, i32* %81, align 4, !dbg !4313
  %83 = icmp ne i32 %82, 0, !dbg !4315
  br i1 %83, label %84, label %90, !dbg !4316

84:                                               ; preds = %80
  %85 = call i32* @__errno_location() #22, !dbg !4317
  %86 = load i32, i32* %85, align 4, !dbg !4317
  %87 = icmp ne i32 %86, 34, !dbg !4320
  br i1 %87, label %88, label %89, !dbg !4321

88:                                               ; preds = %84
  store i32 4, i32* %6, align 4, !dbg !4322
  br label %218, !dbg !4322

89:                                               ; preds = %84
  store i32 1, i32* %17, align 4, !dbg !4323
  br label %90, !dbg !4324

90:                                               ; preds = %89, %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i8*, i8** %11, align 8, !dbg !4325
  %93 = icmp ne i8* %92, null, !dbg !4325
  br i1 %93, label %98, label %94, !dbg !4327

94:                                               ; preds = %91
  %95 = load i64, i64* %16, align 8, !dbg !4328
  %96 = load i64*, i64** %10, align 8, !dbg !4330
  store i64 %95, i64* %96, align 8, !dbg !4331
  %97 = load i32, i32* %17, align 4, !dbg !4332
  store i32 %97, i32* %6, align 4, !dbg !4333
  br label %218, !dbg !4333

98:                                               ; preds = %91
  %99 = load i8**, i8*** %13, align 8, !dbg !4334
  %100 = load i8*, i8** %99, align 8, !dbg !4336
  %101 = load i8, i8* %100, align 1, !dbg !4337
  %102 = zext i8 %101 to i32, !dbg !4337
  %103 = icmp ne i32 %102, 0, !dbg !4338
  br i1 %103, label %104, label %214, !dbg !4339

104:                                              ; preds = %98
  %105 = load i8*, i8** %11, align 8, !dbg !4340
  %106 = load i8**, i8*** %13, align 8, !dbg !4343
  %107 = load i8*, i8** %106, align 8, !dbg !4344
  %108 = load i8, i8* %107, align 1, !dbg !4345
  %109 = zext i8 %108 to i32, !dbg !4345
  %110 = call i8* @strchr(i8* noundef %105, i32 noundef %109) #21, !dbg !4346
  %111 = icmp ne i8* %110, null, !dbg !4346
  br i1 %111, label %117, label %112, !dbg !4347

112:                                              ; preds = %104
  %113 = load i64, i64* %16, align 8, !dbg !4348
  %114 = load i64*, i64** %10, align 8, !dbg !4350
  store i64 %113, i64* %114, align 8, !dbg !4351
  %115 = load i32, i32* %17, align 4, !dbg !4352
  %116 = or i32 %115, 2, !dbg !4353
  store i32 %116, i32* %6, align 4, !dbg !4354
  br label %218, !dbg !4354

117:                                              ; preds = %104
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4355, metadata !DIExpression()), !dbg !4356
  store i32 1024, i32* %18, align 4, !dbg !4356
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4357, metadata !DIExpression()), !dbg !4358
  store i32 1, i32* %19, align 4, !dbg !4358
  %118 = load i8**, i8*** %13, align 8, !dbg !4359
  %119 = load i8*, i8** %118, align 8, !dbg !4360
  %120 = load i8, i8* %119, align 1, !dbg !4361
  %121 = zext i8 %120 to i32, !dbg !4361
  switch i32 %121, label %150 [
    i32 69, label %122
    i32 71, label %122
    i32 103, label %122
    i32 107, label %122
    i32 75, label %122
    i32 77, label %122
    i32 109, label %122
    i32 80, label %122
    i32 81, label %122
    i32 82, label %122
    i32 84, label %122
    i32 116, label %122
    i32 89, label %122
    i32 90, label %122
  ], !dbg !4362

122:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117
  %123 = load i8*, i8** %11, align 8, !dbg !4363
  %124 = call i8* @strchr(i8* noundef %123, i32 noundef 48) #21, !dbg !4366
  %125 = icmp ne i8* %124, null, !dbg !4366
  br i1 %125, label %126, label %149, !dbg !4367

126:                                              ; preds = %122
  %127 = load i8**, i8*** %13, align 8, !dbg !4368
  %128 = getelementptr inbounds i8*, i8** %127, i64 0, !dbg !4368
  %129 = load i8*, i8** %128, align 8, !dbg !4368
  %130 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !4368
  %131 = load i8, i8* %130, align 1, !dbg !4368
  %132 = zext i8 %131 to i32, !dbg !4368
  switch i32 %132, label %148 [
    i32 105, label %133
    i32 66, label %145
    i32 68, label %145
  ], !dbg !4369

133:                                              ; preds = %126
  %134 = load i8**, i8*** %13, align 8, !dbg !4370
  %135 = getelementptr inbounds i8*, i8** %134, i64 0, !dbg !4370
  %136 = load i8*, i8** %135, align 8, !dbg !4370
  %137 = getelementptr inbounds i8, i8* %136, i64 2, !dbg !4370
  %138 = load i8, i8* %137, align 1, !dbg !4370
  %139 = zext i8 %138 to i32, !dbg !4370
  %140 = icmp eq i32 %139, 66, !dbg !4373
  br i1 %140, label %141, label %144, !dbg !4374

141:                                              ; preds = %133
  %142 = load i32, i32* %19, align 4, !dbg !4375
  %143 = add nsw i32 %142, 2, !dbg !4375
  store i32 %143, i32* %19, align 4, !dbg !4375
  br label %144, !dbg !4376

144:                                              ; preds = %141, %133
  br label %148, !dbg !4377

145:                                              ; preds = %126, %126
  store i32 1000, i32* %18, align 4, !dbg !4378
  %146 = load i32, i32* %19, align 4, !dbg !4379
  %147 = add nsw i32 %146, 1, !dbg !4379
  store i32 %147, i32* %19, align 4, !dbg !4379
  br label %148, !dbg !4380

148:                                              ; preds = %126, %145, %144
  br label %149, !dbg !4381

149:                                              ; preds = %148, %122
  br label %150, !dbg !4382

150:                                              ; preds = %149, %117
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4383, metadata !DIExpression()), !dbg !4384
  %151 = load i8**, i8*** %13, align 8, !dbg !4385
  %152 = load i8*, i8** %151, align 8, !dbg !4386
  %153 = load i8, i8* %152, align 1, !dbg !4387
  %154 = zext i8 %153 to i32, !dbg !4387
  switch i32 %154, label %192 [
    i32 98, label %155
    i32 66, label %157
    i32 99, label %159
    i32 69, label %160
    i32 71, label %163
    i32 103, label %163
    i32 107, label %166
    i32 75, label %166
    i32 77, label %169
    i32 109, label %169
    i32 80, label %172
    i32 81, label %175
    i32 82, label %178
    i32 84, label %181
    i32 116, label %181
    i32 119, label %184
    i32 89, label %186
    i32 90, label %189
  ], !dbg !4388

155:                                              ; preds = %150
  %156 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 512), !dbg !4389
  store i32 %156, i32* %20, align 4, !dbg !4391
  br label %197, !dbg !4392

157:                                              ; preds = %150
  %158 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 1024), !dbg !4393
  store i32 %158, i32* %20, align 4, !dbg !4394
  br label %197, !dbg !4395

159:                                              ; preds = %150
  store i32 0, i32* %20, align 4, !dbg !4396
  br label %197, !dbg !4397

160:                                              ; preds = %150
  %161 = load i32, i32* %18, align 4, !dbg !4398
  %162 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %161, i32 noundef 6), !dbg !4399
  store i32 %162, i32* %20, align 4, !dbg !4400
  br label %197, !dbg !4401

163:                                              ; preds = %150, %150
  %164 = load i32, i32* %18, align 4, !dbg !4402
  %165 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %164, i32 noundef 3), !dbg !4403
  store i32 %165, i32* %20, align 4, !dbg !4404
  br label %197, !dbg !4405

166:                                              ; preds = %150, %150
  %167 = load i32, i32* %18, align 4, !dbg !4406
  %168 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %167, i32 noundef 1), !dbg !4407
  store i32 %168, i32* %20, align 4, !dbg !4408
  br label %197, !dbg !4409

169:                                              ; preds = %150, %150
  %170 = load i32, i32* %18, align 4, !dbg !4410
  %171 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %170, i32 noundef 2), !dbg !4411
  store i32 %171, i32* %20, align 4, !dbg !4412
  br label %197, !dbg !4413

172:                                              ; preds = %150
  %173 = load i32, i32* %18, align 4, !dbg !4414
  %174 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %173, i32 noundef 5), !dbg !4415
  store i32 %174, i32* %20, align 4, !dbg !4416
  br label %197, !dbg !4417

175:                                              ; preds = %150
  %176 = load i32, i32* %18, align 4, !dbg !4418
  %177 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %176, i32 noundef 10), !dbg !4419
  store i32 %177, i32* %20, align 4, !dbg !4420
  br label %197, !dbg !4421

178:                                              ; preds = %150
  %179 = load i32, i32* %18, align 4, !dbg !4422
  %180 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %179, i32 noundef 9), !dbg !4423
  store i32 %180, i32* %20, align 4, !dbg !4424
  br label %197, !dbg !4425

181:                                              ; preds = %150, %150
  %182 = load i32, i32* %18, align 4, !dbg !4426
  %183 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %182, i32 noundef 4), !dbg !4427
  store i32 %183, i32* %20, align 4, !dbg !4428
  br label %197, !dbg !4429

184:                                              ; preds = %150
  %185 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 2), !dbg !4430
  store i32 %185, i32* %20, align 4, !dbg !4431
  br label %197, !dbg !4432

186:                                              ; preds = %150
  %187 = load i32, i32* %18, align 4, !dbg !4433
  %188 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %187, i32 noundef 8), !dbg !4434
  store i32 %188, i32* %20, align 4, !dbg !4435
  br label %197, !dbg !4436

189:                                              ; preds = %150
  %190 = load i32, i32* %18, align 4, !dbg !4437
  %191 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %190, i32 noundef 7), !dbg !4438
  store i32 %191, i32* %20, align 4, !dbg !4439
  br label %197, !dbg !4440

192:                                              ; preds = %150
  %193 = load i64, i64* %16, align 8, !dbg !4441
  %194 = load i64*, i64** %10, align 8, !dbg !4442
  store i64 %193, i64* %194, align 8, !dbg !4443
  %195 = load i32, i32* %17, align 4, !dbg !4444
  %196 = or i32 %195, 2, !dbg !4445
  store i32 %196, i32* %6, align 4, !dbg !4446
  br label %218, !dbg !4446

197:                                              ; preds = %189, %186, %184, %181, %178, %175, %172, %169, %166, %163, %160, %159, %157, %155
  %198 = load i32, i32* %20, align 4, !dbg !4447
  %199 = load i32, i32* %17, align 4, !dbg !4448
  %200 = or i32 %199, %198, !dbg !4448
  store i32 %200, i32* %17, align 4, !dbg !4448
  %201 = load i32, i32* %19, align 4, !dbg !4449
  %202 = load i8**, i8*** %13, align 8, !dbg !4450
  %203 = load i8*, i8** %202, align 8, !dbg !4451
  %204 = sext i32 %201 to i64, !dbg !4451
  %205 = getelementptr inbounds i8, i8* %203, i64 %204, !dbg !4451
  store i8* %205, i8** %202, align 8, !dbg !4451
  %206 = load i8**, i8*** %13, align 8, !dbg !4452
  %207 = load i8*, i8** %206, align 8, !dbg !4454
  %208 = load i8, i8* %207, align 1, !dbg !4455
  %209 = icmp ne i8 %208, 0, !dbg !4455
  br i1 %209, label %210, label %213, !dbg !4456

210:                                              ; preds = %197
  %211 = load i32, i32* %17, align 4, !dbg !4457
  %212 = or i32 %211, 2, !dbg !4457
  store i32 %212, i32* %17, align 4, !dbg !4457
  br label %213, !dbg !4458

213:                                              ; preds = %210, %197
  br label %214, !dbg !4459

214:                                              ; preds = %213, %98
  %215 = load i64, i64* %16, align 8, !dbg !4460
  %216 = load i64*, i64** %10, align 8, !dbg !4461
  store i64 %215, i64* %216, align 8, !dbg !4462
  %217 = load i32, i32* %17, align 4, !dbg !4463
  store i32 %217, i32* %6, align 4, !dbg !4464
  br label %218, !dbg !4464

218:                                              ; preds = %214, %192, %112, %94, %88, %78, %50
  %219 = load i32, i32* %6, align 4, !dbg !4465
  ret i32 %219, !dbg !4465
}

; Function Attrs: nounwind
declare i64 @strtoumax(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale(i64* noundef %0, i32 noundef %1) #4 !dbg !4466 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4469, metadata !DIExpression()), !dbg !4470
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4473, metadata !DIExpression()), !dbg !4474
  %7 = load i32, i32* %5, align 4, !dbg !4475
  %8 = icmp slt i32 %7, 0, !dbg !4475
  br i1 %8, label %9, label %68, !dbg !4475

9:                                                ; preds = %2
  %10 = load i64*, i64** %4, align 8, !dbg !4475
  %11 = load i64, i64* %10, align 8, !dbg !4475
  %12 = icmp ult i64 %11, 0, !dbg !4475
  br i1 %12, label %13, label %40, !dbg !4475

13:                                               ; preds = %9
  br i1 false, label %14, label %21, !dbg !4475

14:                                               ; preds = %13
  %15 = load i64*, i64** %4, align 8, !dbg !4475
  %16 = load i64, i64* %15, align 8, !dbg !4475
  %17 = load i32, i32* %5, align 4, !dbg !4475
  %18 = sext i32 %17 to i64, !dbg !4475
  %19 = udiv i64 -1, %18, !dbg !4475
  %20 = icmp ult i64 %16, %19, !dbg !4475
  br i1 %20, label %106, label %112, !dbg !4475

21:                                               ; preds = %13
  br i1 true, label %22, label %25, !dbg !4475

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4, !dbg !4475
  %24 = icmp slt i32 %23, -2147483647, !dbg !4475
  br i1 %24, label %28, label %29, !dbg !4475

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4, !dbg !4475
  %27 = icmp slt i32 0, %26, !dbg !4475
  br i1 %27, label %28, label %29, !dbg !4475

28:                                               ; preds = %25, %22
  br label %34, !dbg !4475

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %5, align 4, !dbg !4475
  %31 = sub nsw i32 0, %30, !dbg !4475
  %32 = sext i32 %31 to i64, !dbg !4475
  %33 = udiv i64 -1, %32, !dbg !4475
  br label %34, !dbg !4475

34:                                               ; preds = %29, %28
  %35 = phi i64 [ 8589934591, %28 ], [ %33, %29 ], !dbg !4475
  %36 = load i64*, i64** %4, align 8, !dbg !4475
  %37 = load i64, i64* %36, align 8, !dbg !4475
  %38 = sub i64 -1, %37, !dbg !4475
  %39 = icmp ule i64 %35, %38, !dbg !4475
  br i1 %39, label %106, label %112, !dbg !4475

40:                                               ; preds = %9
  br i1 true, label %41, label %42, !dbg !4475

41:                                               ; preds = %40
  br i1 false, label %43, label %61, !dbg !4475

42:                                               ; preds = %40
  br i1 false, label %43, label %61, !dbg !4475

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %5, align 4, !dbg !4475
  %45 = icmp eq i32 %44, -1, !dbg !4475
  br i1 %45, label %46, label %61, !dbg !4475

46:                                               ; preds = %43
  br i1 false, label %47, label %52, !dbg !4475

47:                                               ; preds = %46
  %48 = load i64*, i64** %4, align 8, !dbg !4475
  %49 = load i64, i64* %48, align 8, !dbg !4475
  %50 = add i64 %49, 0, !dbg !4475
  %51 = icmp ult i64 0, %50, !dbg !4475
  br i1 %51, label %106, label %112, !dbg !4475

52:                                               ; preds = %46
  %53 = load i64*, i64** %4, align 8, !dbg !4475
  %54 = load i64, i64* %53, align 8, !dbg !4475
  %55 = icmp ult i64 0, %54, !dbg !4475
  br i1 %55, label %56, label %112, !dbg !4475

56:                                               ; preds = %52
  %57 = load i64*, i64** %4, align 8, !dbg !4475
  %58 = load i64, i64* %57, align 8, !dbg !4475
  %59 = sub i64 %58, 1, !dbg !4475
  %60 = icmp ult i64 -1, %59, !dbg !4475
  br i1 %60, label %106, label %112, !dbg !4475

61:                                               ; preds = %43, %42, %41
  %62 = load i32, i32* %5, align 4, !dbg !4475
  %63 = sdiv i32 0, %62, !dbg !4475
  %64 = sext i32 %63 to i64, !dbg !4475
  %65 = load i64*, i64** %4, align 8, !dbg !4475
  %66 = load i64, i64* %65, align 8, !dbg !4475
  %67 = icmp ult i64 %64, %66, !dbg !4475
  br i1 %67, label %106, label %112, !dbg !4475

68:                                               ; preds = %2
  %69 = load i32, i32* %5, align 4, !dbg !4475
  %70 = icmp eq i32 %69, 0, !dbg !4475
  br i1 %70, label %71, label %72, !dbg !4475

71:                                               ; preds = %68
  br i1 false, label %106, label %112, !dbg !4475

72:                                               ; preds = %68
  %73 = load i64*, i64** %4, align 8, !dbg !4475
  %74 = load i64, i64* %73, align 8, !dbg !4475
  %75 = icmp ult i64 %74, 0, !dbg !4475
  br i1 %75, label %76, label %99, !dbg !4475

76:                                               ; preds = %72
  br i1 false, label %77, label %78, !dbg !4475

77:                                               ; preds = %76
  br i1 true, label %79, label %92, !dbg !4475

78:                                               ; preds = %76
  br i1 false, label %79, label %92, !dbg !4475

79:                                               ; preds = %78, %77
  %80 = load i64*, i64** %4, align 8, !dbg !4475
  %81 = load i64, i64* %80, align 8, !dbg !4475
  %82 = icmp eq i64 %81, -1, !dbg !4475
  br i1 %82, label %83, label %92, !dbg !4475

83:                                               ; preds = %79
  br i1 true, label %84, label %88, !dbg !4475

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4, !dbg !4475
  %86 = add nsw i32 %85, 0, !dbg !4475
  %87 = icmp slt i32 0, %86, !dbg !4475
  br i1 %87, label %106, label %112, !dbg !4475

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4, !dbg !4475
  %90 = sub nsw i32 %89, 1, !dbg !4475
  %91 = icmp slt i32 -1, %90, !dbg !4475
  br i1 %91, label %106, label %112, !dbg !4475

92:                                               ; preds = %79, %78, %77
  %93 = load i64*, i64** %4, align 8, !dbg !4475
  %94 = load i64, i64* %93, align 8, !dbg !4475
  %95 = udiv i64 0, %94, !dbg !4475
  %96 = load i32, i32* %5, align 4, !dbg !4475
  %97 = sext i32 %96 to i64, !dbg !4475
  %98 = icmp ult i64 %95, %97, !dbg !4475
  br i1 %98, label %106, label %112, !dbg !4475

99:                                               ; preds = %72
  %100 = load i32, i32* %5, align 4, !dbg !4475
  %101 = sext i32 %100 to i64, !dbg !4475
  %102 = udiv i64 -1, %101, !dbg !4475
  %103 = load i64*, i64** %4, align 8, !dbg !4475
  %104 = load i64, i64* %103, align 8, !dbg !4475
  %105 = icmp ult i64 %102, %104, !dbg !4475
  br i1 %105, label %106, label %112, !dbg !4475

106:                                              ; preds = %99, %92, %88, %84, %71, %61, %56, %47, %34, %14
  %107 = load i64*, i64** %4, align 8, !dbg !4475
  %108 = load i64, i64* %107, align 8, !dbg !4475
  %109 = load i32, i32* %5, align 4, !dbg !4475
  %110 = sext i32 %109 to i64, !dbg !4475
  %111 = mul i64 %108, %110, !dbg !4475
  store i64 %111, i64* %6, align 8, !dbg !4475
  br label %118, !dbg !4475

112:                                              ; preds = %99, %92, %88, %84, %71, %61, %56, %52, %47, %34, %14
  %113 = load i64*, i64** %4, align 8, !dbg !4475
  %114 = load i64, i64* %113, align 8, !dbg !4475
  %115 = load i32, i32* %5, align 4, !dbg !4475
  %116 = sext i32 %115 to i64, !dbg !4475
  %117 = mul i64 %114, %116, !dbg !4475
  store i64 %117, i64* %6, align 8, !dbg !4475
  br label %118, !dbg !4475

118:                                              ; preds = %112, %106
  %119 = phi i32 [ 1, %106 ], [ 0, %112 ], !dbg !4475
  %120 = icmp ne i32 %119, 0, !dbg !4475
  br i1 %120, label %121, label %128, !dbg !4477

121:                                              ; preds = %118
  %122 = load i64*, i64** %4, align 8, !dbg !4478
  %123 = load i64, i64* %122, align 8, !dbg !4480
  %124 = icmp ult i64 %123, 0, !dbg !4481
  %125 = zext i1 %124 to i64, !dbg !4480
  %126 = select i1 %124, i64 0, i64 -1, !dbg !4480
  %127 = load i64*, i64** %4, align 8, !dbg !4482
  store i64 %126, i64* %127, align 8, !dbg !4483
  store i32 1, i32* %3, align 4, !dbg !4484
  br label %131, !dbg !4484

128:                                              ; preds = %118
  %129 = load i64, i64* %6, align 8, !dbg !4485
  %130 = load i64*, i64** %4, align 8, !dbg !4486
  store i64 %129, i64* %130, align 8, !dbg !4487
  store i32 0, i32* %3, align 4, !dbg !4488
  br label %131, !dbg !4488

131:                                              ; preds = %128, %121
  %132 = load i32, i32* %3, align 4, !dbg !4489
  ret i32 %132, !dbg !4489
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale_by_power(i64* noundef %0, i32 noundef %1, i32 noundef %2) #4 !dbg !4490 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4493, metadata !DIExpression()), !dbg !4494
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4495, metadata !DIExpression()), !dbg !4496
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4497, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4499, metadata !DIExpression()), !dbg !4500
  store i32 0, i32* %7, align 4, !dbg !4500
  br label %8, !dbg !4501

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %6, align 4, !dbg !4502
  %10 = add nsw i32 %9, -1, !dbg !4502
  store i32 %10, i32* %6, align 4, !dbg !4502
  %11 = icmp ne i32 %9, 0, !dbg !4501
  br i1 %11, label %12, label %18, !dbg !4501

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8, !dbg !4503
  %14 = load i32, i32* %5, align 4, !dbg !4504
  %15 = call i32 @bkm_scale(i64* noundef %13, i32 noundef %14), !dbg !4505
  %16 = load i32, i32* %7, align 4, !dbg !4506
  %17 = or i32 %16, %15, !dbg !4506
  store i32 %17, i32* %7, align 4, !dbg !4506
  br label %8, !dbg !4501, !llvm.loop !4507

18:                                               ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !4509
  ret i32 %19, !dbg !4510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #4 !dbg !4511 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [81 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4548, metadata !DIExpression()), !dbg !4549
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4550, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4552, metadata !DIExpression()), !dbg !4553
  store i32 0, i32* %6, align 4, !dbg !4553
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4554, metadata !DIExpression()), !dbg !4555
  store i32 0, i32* %7, align 4, !dbg !4555
  call void @llvm.dbg.declare(metadata i8* %8, metadata !4556, metadata !DIExpression()), !dbg !4557
  store i8 0, i8* %8, align 1, !dbg !4557
  call void @llvm.dbg.declare(metadata [81 x i8]* %9, metadata !4558, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4563, metadata !DIExpression()), !dbg !4565
  %16 = load i8*, i8** %5, align 8, !dbg !4566
  store i8* %16, i8** %10, align 8, !dbg !4565
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4567, metadata !DIExpression()), !dbg !4568
  %17 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4569
  store i8* %17, i8** %11, align 8, !dbg !4568
  br label %18, !dbg !4570

18:                                               ; preds = %120, %2
  %19 = load i8*, i8** %10, align 8, !dbg !4571
  %20 = load i8, i8* %19, align 1, !dbg !4574
  %21 = zext i8 %20 to i32, !dbg !4574
  %22 = icmp ne i32 %21, 0, !dbg !4575
  br i1 %22, label %23, label %123, !dbg !4576

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8, !dbg !4577
  %25 = load i8, i8* %24, align 1, !dbg !4579
  %26 = zext i8 %25 to i32, !dbg !4579
  switch i32 %26, label %94 [
    i32 114, label %27
    i32 119, label %38
    i32 97, label %51
    i32 98, label %64
    i32 43, label %77
    i32 120, label %88
    i32 101, label %91
  ], !dbg !4580

27:                                               ; preds = %23
  store i32 0, i32* %6, align 4, !dbg !4581
  %28 = load i8*, i8** %11, align 8, !dbg !4583
  %29 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4585
  %30 = getelementptr inbounds i8, i8* %29, i64 80, !dbg !4586
  %31 = icmp ult i8* %28, %30, !dbg !4587
  br i1 %31, label %32, label %37, !dbg !4588

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8, !dbg !4589
  %34 = load i8, i8* %33, align 1, !dbg !4590
  %35 = load i8*, i8** %11, align 8, !dbg !4591
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !4591
  store i8* %36, i8** %11, align 8, !dbg !4591
  store i8 %34, i8* %35, align 1, !dbg !4592
  br label %37, !dbg !4593

37:                                               ; preds = %32, %27
  br label %120, !dbg !4594

38:                                               ; preds = %23
  store i32 1, i32* %6, align 4, !dbg !4595
  %39 = load i32, i32* %7, align 4, !dbg !4596
  %40 = or i32 %39, 576, !dbg !4596
  store i32 %40, i32* %7, align 4, !dbg !4596
  %41 = load i8*, i8** %11, align 8, !dbg !4597
  %42 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4599
  %43 = getelementptr inbounds i8, i8* %42, i64 80, !dbg !4600
  %44 = icmp ult i8* %41, %43, !dbg !4601
  br i1 %44, label %45, label %50, !dbg !4602

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8, !dbg !4603
  %47 = load i8, i8* %46, align 1, !dbg !4604
  %48 = load i8*, i8** %11, align 8, !dbg !4605
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !4605
  store i8* %49, i8** %11, align 8, !dbg !4605
  store i8 %47, i8* %48, align 1, !dbg !4606
  br label %50, !dbg !4607

50:                                               ; preds = %45, %38
  br label %120, !dbg !4608

51:                                               ; preds = %23
  store i32 1, i32* %6, align 4, !dbg !4609
  %52 = load i32, i32* %7, align 4, !dbg !4610
  %53 = or i32 %52, 1088, !dbg !4610
  store i32 %53, i32* %7, align 4, !dbg !4610
  %54 = load i8*, i8** %11, align 8, !dbg !4611
  %55 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4613
  %56 = getelementptr inbounds i8, i8* %55, i64 80, !dbg !4614
  %57 = icmp ult i8* %54, %56, !dbg !4615
  br i1 %57, label %58, label %63, !dbg !4616

58:                                               ; preds = %51
  %59 = load i8*, i8** %10, align 8, !dbg !4617
  %60 = load i8, i8* %59, align 1, !dbg !4618
  %61 = load i8*, i8** %11, align 8, !dbg !4619
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !4619
  store i8* %62, i8** %11, align 8, !dbg !4619
  store i8 %60, i8* %61, align 1, !dbg !4620
  br label %63, !dbg !4621

63:                                               ; preds = %58, %51
  br label %120, !dbg !4622

64:                                               ; preds = %23
  %65 = load i32, i32* %7, align 4, !dbg !4623
  %66 = or i32 %65, 0, !dbg !4623
  store i32 %66, i32* %7, align 4, !dbg !4623
  %67 = load i8*, i8** %11, align 8, !dbg !4624
  %68 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4626
  %69 = getelementptr inbounds i8, i8* %68, i64 80, !dbg !4627
  %70 = icmp ult i8* %67, %69, !dbg !4628
  br i1 %70, label %71, label %76, !dbg !4629

71:                                               ; preds = %64
  %72 = load i8*, i8** %10, align 8, !dbg !4630
  %73 = load i8, i8* %72, align 1, !dbg !4631
  %74 = load i8*, i8** %11, align 8, !dbg !4632
  %75 = getelementptr inbounds i8, i8* %74, i32 1, !dbg !4632
  store i8* %75, i8** %11, align 8, !dbg !4632
  store i8 %73, i8* %74, align 1, !dbg !4633
  br label %76, !dbg !4634

76:                                               ; preds = %71, %64
  br label %120, !dbg !4635

77:                                               ; preds = %23
  store i32 2, i32* %6, align 4, !dbg !4636
  %78 = load i8*, i8** %11, align 8, !dbg !4637
  %79 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4639
  %80 = getelementptr inbounds i8, i8* %79, i64 80, !dbg !4640
  %81 = icmp ult i8* %78, %80, !dbg !4641
  br i1 %81, label %82, label %87, !dbg !4642

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8, !dbg !4643
  %84 = load i8, i8* %83, align 1, !dbg !4644
  %85 = load i8*, i8** %11, align 8, !dbg !4645
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !4645
  store i8* %86, i8** %11, align 8, !dbg !4645
  store i8 %84, i8* %85, align 1, !dbg !4646
  br label %87, !dbg !4647

87:                                               ; preds = %82, %77
  br label %120, !dbg !4648

88:                                               ; preds = %23
  %89 = load i32, i32* %7, align 4, !dbg !4649
  %90 = or i32 %89, 128, !dbg !4649
  store i32 %90, i32* %7, align 4, !dbg !4649
  store i8 1, i8* %8, align 1, !dbg !4650
  br label %120, !dbg !4651

91:                                               ; preds = %23
  %92 = load i32, i32* %7, align 4, !dbg !4652
  %93 = or i32 %92, 524288, !dbg !4652
  store i32 %93, i32* %7, align 4, !dbg !4652
  store i8 1, i8* %8, align 1, !dbg !4653
  br label %120, !dbg !4654

94:                                               ; preds = %23
  br label %95, !dbg !4655

95:                                               ; preds = %94
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4656, metadata !DIExpression()), !dbg !4658
  %96 = load i8*, i8** %10, align 8, !dbg !4659
  %97 = call i64 @strlen(i8* noundef %96) #21, !dbg !4660
  store i64 %97, i64* %12, align 8, !dbg !4658
  %98 = load i64, i64* %12, align 8, !dbg !4661
  %99 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4663
  %100 = getelementptr inbounds i8, i8* %99, i64 80, !dbg !4664
  %101 = load i8*, i8** %11, align 8, !dbg !4665
  %102 = ptrtoint i8* %100 to i64, !dbg !4666
  %103 = ptrtoint i8* %101 to i64, !dbg !4666
  %104 = sub i64 %102, %103, !dbg !4666
  %105 = icmp ugt i64 %98, %104, !dbg !4667
  br i1 %105, label %106, label %113, !dbg !4668

106:                                              ; preds = %95
  %107 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4669
  %108 = getelementptr inbounds i8, i8* %107, i64 80, !dbg !4670
  %109 = load i8*, i8** %11, align 8, !dbg !4671
  %110 = ptrtoint i8* %108 to i64, !dbg !4672
  %111 = ptrtoint i8* %109 to i64, !dbg !4672
  %112 = sub i64 %110, %111, !dbg !4672
  store i64 %112, i64* %12, align 8, !dbg !4673
  br label %113, !dbg !4674

113:                                              ; preds = %106, %95
  %114 = load i8*, i8** %11, align 8, !dbg !4675
  %115 = load i8*, i8** %10, align 8, !dbg !4676
  %116 = load i64, i64* %12, align 8, !dbg !4677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %114, i8* align 1 %115, i64 %116, i1 false), !dbg !4678
  %117 = load i64, i64* %12, align 8, !dbg !4679
  %118 = load i8*, i8** %11, align 8, !dbg !4680
  %119 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4680
  store i8* %119, i8** %11, align 8, !dbg !4680
  br label %123, !dbg !4681

120:                                              ; preds = %91, %88, %87, %76, %63, %50, %37
  %121 = load i8*, i8** %10, align 8, !dbg !4682
  %122 = getelementptr inbounds i8, i8* %121, i32 1, !dbg !4682
  store i8* %122, i8** %10, align 8, !dbg !4682
  br label %18, !dbg !4683, !llvm.loop !4684

123:                                              ; preds = %113, %18
  %124 = load i8*, i8** %11, align 8, !dbg !4686
  store i8 0, i8* %124, align 1, !dbg !4687
  %125 = load i8, i8* %8, align 1, !dbg !4688
  %126 = trunc i8 %125 to i1, !dbg !4688
  br i1 %126, label %127, label %151, !dbg !4690

127:                                              ; preds = %123
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4691, metadata !DIExpression()), !dbg !4693
  %128 = load i8*, i8** %4, align 8, !dbg !4694
  %129 = load i32, i32* %6, align 4, !dbg !4695
  %130 = load i32, i32* %7, align 4, !dbg !4696
  %131 = or i32 %129, %130, !dbg !4697
  %132 = call i32 (i8*, i32, ...) @open(i8* noundef %128, i32 noundef %131, i32 noundef 438), !dbg !4698
  store i32 %132, i32* %13, align 4, !dbg !4693
  %133 = load i32, i32* %13, align 4, !dbg !4699
  %134 = icmp slt i32 %133, 0, !dbg !4701
  br i1 %134, label %135, label %136, !dbg !4702

135:                                              ; preds = %127
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !4703
  br label %156, !dbg !4703

136:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !4704, metadata !DIExpression()), !dbg !4705
  %137 = load i32, i32* %13, align 4, !dbg !4706
  %138 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !4707
  %139 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %137, i8* noundef %138) #19, !dbg !4708
  store %struct._IO_FILE* %139, %struct._IO_FILE** %14, align 8, !dbg !4705
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !4709
  %141 = icmp eq %struct._IO_FILE* %140, null, !dbg !4711
  br i1 %141, label %142, label %149, !dbg !4712

142:                                              ; preds = %136
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4713, metadata !DIExpression()), !dbg !4715
  %143 = call i32* @__errno_location() #22, !dbg !4716
  %144 = load i32, i32* %143, align 4, !dbg !4716
  store i32 %144, i32* %15, align 4, !dbg !4715
  %145 = load i32, i32* %13, align 4, !dbg !4717
  %146 = call i32 @close(i32 noundef %145), !dbg !4718
  %147 = load i32, i32* %15, align 4, !dbg !4719
  %148 = call i32* @__errno_location() #22, !dbg !4720
  store i32 %147, i32* %148, align 4, !dbg !4721
  br label %149, !dbg !4722

149:                                              ; preds = %142, %136
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !4723
  store %struct._IO_FILE* %150, %struct._IO_FILE** %3, align 8, !dbg !4724
  br label %156, !dbg !4724

151:                                              ; preds = %123
  %152 = load i32, i32* %6, align 4, !dbg !4725
  %153 = load i8*, i8** %4, align 8, !dbg !4726
  %154 = load i8*, i8** %5, align 8, !dbg !4727
  %155 = call %struct._IO_FILE* @orig_fopen(i8* noundef %153, i8* noundef %154), !dbg !4728
  store %struct._IO_FILE* %155, %struct._IO_FILE** %3, align 8, !dbg !4729
  br label %156, !dbg !4729

156:                                              ; preds = %151, %149, %135
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4730
  ret %struct._IO_FILE* %157, !dbg !4730
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32 noundef, i8* noundef) #2

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._IO_FILE* @orig_fopen(i8* noundef %0, i8* noundef %1) #4 !dbg !4731 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4732, metadata !DIExpression()), !dbg !4733
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4734, metadata !DIExpression()), !dbg !4735
  %5 = load i8*, i8** %3, align 8, !dbg !4736
  %6 = load i8*, i8** %4, align 8, !dbg !4737
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef %5, i8* noundef %6), !dbg !4738
  ret %struct._IO_FILE* %7, !dbg !4739
}

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalnum(i32 noundef %0) #4 !dbg !4740 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4744, metadata !DIExpression()), !dbg !4745
  %4 = load i32, i32* %3, align 4, !dbg !4746
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !4747

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4748
  br label %7, !dbg !4748

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4750
  br label %7, !dbg !4750

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4751
  ret i1 %8, !dbg !4751
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalpha(i32 noundef %0) #4 !dbg !4752 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4753, metadata !DIExpression()), !dbg !4754
  %4 = load i32, i32* %3, align 4, !dbg !4755
  switch i32 %4, label %6 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !4756

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4757
  br label %7, !dbg !4757

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4759
  br label %7, !dbg !4759

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4760
  ret i1 %8, !dbg !4760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isascii(i32 noundef %0) #4 !dbg !4761 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4762, metadata !DIExpression()), !dbg !4763
  %4 = load i32, i32* %3, align 4, !dbg !4764
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 7, label %5
    i32 8, label %5
    i32 12, label %5
    i32 10, label %5
    i32 13, label %5
    i32 9, label %5
    i32 11, label %5
    i32 0, label %5
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 4, label %5
    i32 5, label %5
    i32 6, label %5
    i32 14, label %5
    i32 15, label %5
    i32 16, label %5
    i32 17, label %5
    i32 18, label %5
    i32 19, label %5
    i32 20, label %5
    i32 21, label %5
    i32 22, label %5
    i32 23, label %5
    i32 24, label %5
    i32 25, label %5
    i32 26, label %5
    i32 27, label %5
    i32 28, label %5
    i32 29, label %5
    i32 30, label %5
    i32 31, label %5
    i32 127, label %5
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !4765

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4766
  br label %7, !dbg !4766

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4768
  br label %7, !dbg !4768

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4769
  ret i1 %8, !dbg !4769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isblank(i32 noundef %0) #4 !dbg !4770 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4771, metadata !DIExpression()), !dbg !4772
  %3 = load i32, i32* %2, align 4, !dbg !4773
  %4 = icmp eq i32 %3, 32, !dbg !4774
  br i1 %4, label %8, label %5, !dbg !4775

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !4776
  %7 = icmp eq i32 %6, 9, !dbg !4777
  br label %8, !dbg !4775

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !4778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_iscntrl(i32 noundef %0) #4 !dbg !4779 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4780, metadata !DIExpression()), !dbg !4781
  %4 = load i32, i32* %3, align 4, !dbg !4782
  switch i32 %4, label %6 [
    i32 7, label %5
    i32 8, label %5
    i32 12, label %5
    i32 10, label %5
    i32 13, label %5
    i32 9, label %5
    i32 11, label %5
    i32 0, label %5
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 4, label %5
    i32 5, label %5
    i32 6, label %5
    i32 14, label %5
    i32 15, label %5
    i32 16, label %5
    i32 17, label %5
    i32 18, label %5
    i32 19, label %5
    i32 20, label %5
    i32 21, label %5
    i32 22, label %5
    i32 23, label %5
    i32 24, label %5
    i32 25, label %5
    i32 26, label %5
    i32 27, label %5
    i32 28, label %5
    i32 29, label %5
    i32 30, label %5
    i32 31, label %5
    i32 127, label %5
  ], !dbg !4783

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4784
  br label %7, !dbg !4784

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4786
  br label %7, !dbg !4786

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4787
  ret i1 %8, !dbg !4787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isdigit(i32 noundef %0) #4 !dbg !4788 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4789, metadata !DIExpression()), !dbg !4790
  %4 = load i32, i32* %3, align 4, !dbg !4791
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
  ], !dbg !4792

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4793
  br label %7, !dbg !4793

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4795
  br label %7, !dbg !4795

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4796
  ret i1 %8, !dbg !4796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isgraph(i32 noundef %0) #4 !dbg !4797 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4798, metadata !DIExpression()), !dbg !4799
  %4 = load i32, i32* %3, align 4, !dbg !4800
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !4801

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4802
  br label %7, !dbg !4802

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4804
  br label %7, !dbg !4804

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4805
  ret i1 %8, !dbg !4805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_islower(i32 noundef %0) #4 !dbg !4806 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4807, metadata !DIExpression()), !dbg !4808
  %4 = load i32, i32* %3, align 4, !dbg !4809
  switch i32 %4, label %6 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
  ], !dbg !4810

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4811
  br label %7, !dbg !4811

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4813
  br label %7, !dbg !4813

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4814
  ret i1 %8, !dbg !4814
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isprint(i32 noundef %0) #4 !dbg !4815 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4816, metadata !DIExpression()), !dbg !4817
  %4 = load i32, i32* %3, align 4, !dbg !4818
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !4819

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4820
  br label %7, !dbg !4820

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4822
  br label %7, !dbg !4822

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4823
  ret i1 %8, !dbg !4823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_ispunct(i32 noundef %0) #4 !dbg !4824 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4825, metadata !DIExpression()), !dbg !4826
  %4 = load i32, i32* %3, align 4, !dbg !4827
  switch i32 %4, label %6 [
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
  ], !dbg !4828

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4829
  br label %7, !dbg !4829

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4831
  br label %7, !dbg !4831

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4832
  ret i1 %8, !dbg !4832
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isspace(i32 noundef %0) #4 !dbg !4833 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4834, metadata !DIExpression()), !dbg !4835
  %4 = load i32, i32* %3, align 4, !dbg !4836
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 13, label %5
  ], !dbg !4837

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4838
  br label %7, !dbg !4838

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4840
  br label %7, !dbg !4840

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4841
  ret i1 %8, !dbg !4841
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isupper(i32 noundef %0) #4 !dbg !4842 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4843, metadata !DIExpression()), !dbg !4844
  %4 = load i32, i32* %3, align 4, !dbg !4845
  switch i32 %4, label %6 [
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !4846

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4847
  br label %7, !dbg !4847

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4849
  br label %7, !dbg !4849

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4850
  ret i1 %8, !dbg !4850
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isxdigit(i32 noundef %0) #4 !dbg !4851 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4852, metadata !DIExpression()), !dbg !4853
  %4 = load i32, i32* %3, align 4, !dbg !4854
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
  ], !dbg !4855

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !4856
  br label %7, !dbg !4856

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4858
  br label %7, !dbg !4858

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !4859
  ret i1 %8, !dbg !4859
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_tolower(i32 noundef %0) #4 !dbg !4860 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4861, metadata !DIExpression()), !dbg !4862
  %4 = load i32, i32* %3, align 4, !dbg !4863
  switch i32 %4, label %9 [
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !4864

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !4865
  %7 = sub nsw i32 %6, 65, !dbg !4867
  %8 = add nsw i32 %7, 97, !dbg !4868
  store i32 %8, i32* %2, align 4, !dbg !4869
  br label %11, !dbg !4869

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !4870
  store i32 %10, i32* %2, align 4, !dbg !4871
  br label %11, !dbg !4871

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !4872
  ret i32 %12, !dbg !4872
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_toupper(i32 noundef %0) #4 !dbg !4873 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4874, metadata !DIExpression()), !dbg !4875
  %4 = load i32, i32* %3, align 4, !dbg !4876
  switch i32 %4, label %9 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
  ], !dbg !4877

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !4878
  %7 = sub nsw i32 %6, 97, !dbg !4880
  %8 = add nsw i32 %7, 65, !dbg !4881
  store i32 %8, i32* %2, align 4, !dbg !4882
  br label %11, !dbg !4882

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !4883
  store i32 %10, i32* %2, align 4, !dbg !4884
  br label %11, !dbg !4884

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !4885
  ret i32 %12, !dbg !4885
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !4886 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4892, metadata !DIExpression()), !dbg !4893
  %3 = load i32, i32* %2, align 4, !dbg !4894
  %4 = call i32 @iswprint(i32 noundef %3) #19, !dbg !4895
  ret i32 %4, !dbg !4896
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !4897 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4934, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4936, metadata !DIExpression()), !dbg !4938
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4939
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #19, !dbg !4940
  %9 = icmp ne i64 %8, 0, !dbg !4941
  %10 = zext i1 %9 to i8, !dbg !4938
  store i8 %10, i8* %4, align 1, !dbg !4938
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4942, metadata !DIExpression()), !dbg !4943
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4944
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #19, !dbg !4944
  %13 = icmp ne i32 %12, 0, !dbg !4945
  %14 = zext i1 %13 to i8, !dbg !4943
  store i8 %14, i8* %5, align 1, !dbg !4943
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4946, metadata !DIExpression()), !dbg !4947
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4948
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !4949
  %17 = icmp ne i32 %16, 0, !dbg !4950
  %18 = zext i1 %17 to i8, !dbg !4947
  store i8 %18, i8* %6, align 1, !dbg !4947
  %19 = load i8, i8* %5, align 1, !dbg !4951
  %20 = trunc i8 %19 to i1, !dbg !4951
  br i1 %20, label %31, label %21, !dbg !4953

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4954
  %23 = trunc i8 %22 to i1, !dbg !4954
  br i1 %23, label %24, label %37, !dbg !4955

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4956
  %26 = trunc i8 %25 to i1, !dbg !4956
  br i1 %26, label %31, label %27, !dbg !4957

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #22, !dbg !4958
  %29 = load i32, i32* %28, align 4, !dbg !4958
  %30 = icmp ne i32 %29, 9, !dbg !4959
  br i1 %30, label %31, label %37, !dbg !4960

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4961
  %33 = trunc i8 %32 to i1, !dbg !4961
  br i1 %33, label %36, label %34, !dbg !4964

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #22, !dbg !4965
  store i32 0, i32* %35, align 4, !dbg !4966
  br label %36, !dbg !4965

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4967
  br label %38, !dbg !4967

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4968
  br label %38, !dbg !4968

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4969
  ret i32 %39, !dbg !4969
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !4970 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5007, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5009, metadata !DIExpression()), !dbg !5010
  store i32 0, i32* %4, align 4, !dbg !5010
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5011, metadata !DIExpression()), !dbg !5012
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5013
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #19, !dbg !5014
  store i32 %8, i32* %5, align 4, !dbg !5012
  %9 = load i32, i32* %5, align 4, !dbg !5015
  %10 = icmp slt i32 %9, 0, !dbg !5017
  br i1 %10, label %11, label %14, !dbg !5018

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5019
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !5020
  store i32 %13, i32* %2, align 4, !dbg !5021
  br label %40, !dbg !5021

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5022
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #19, !dbg !5022
  %17 = icmp ne i32 %16, 0, !dbg !5022
  br i1 %17, label %18, label %23, !dbg !5024

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5025
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #19, !dbg !5026
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #19, !dbg !5027
  %22 = icmp ne i64 %21, -1, !dbg !5028
  br i1 %22, label %23, label %30, !dbg !5029

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5030
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !5031
  %26 = icmp ne i32 %25, 0, !dbg !5031
  br i1 %26, label %27, label %30, !dbg !5032

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #22, !dbg !5033
  %29 = load i32, i32* %28, align 4, !dbg !5033
  store i32 %29, i32* %4, align 4, !dbg !5034
  br label %30, !dbg !5035

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5036, metadata !DIExpression()), !dbg !5037
  store i32 0, i32* %6, align 4, !dbg !5037
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5038
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !5039
  store i32 %32, i32* %6, align 4, !dbg !5040
  %33 = load i32, i32* %4, align 4, !dbg !5041
  %34 = icmp ne i32 %33, 0, !dbg !5043
  br i1 %34, label %35, label %38, !dbg !5044

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !5045
  %37 = call i32* @__errno_location() #22, !dbg !5047
  store i32 %36, i32* %37, align 4, !dbg !5048
  store i32 -1, i32* %6, align 4, !dbg !5049
  br label %38, !dbg !5050

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !5051
  store i32 %39, i32* %2, align 4, !dbg !5052
  br label %40, !dbg !5052

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !5053
  ret i32 %41, !dbg !5053
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !5054 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5091, metadata !DIExpression()), !dbg !5092
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5093
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !5095
  br i1 %5, label %10, label %6, !dbg !5096

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5097
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #19, !dbg !5097
  %9 = icmp ne i32 %8, 0, !dbg !5097
  br i1 %9, label %13, label %10, !dbg !5098

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5099
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !5100
  store i32 %12, i32* %2, align 4, !dbg !5101
  br label %17, !dbg !5101

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5102
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !5103
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5104
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !5105
  store i32 %16, i32* %2, align 4, !dbg !5106
  br label %17, !dbg !5106

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !5107
  ret i32 %18, !dbg !5107
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !5108 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !5111, metadata !DIExpression()), !dbg !5112
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !5113
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !5115
  %5 = load i32, i32* %4, align 8, !dbg !5115
  %6 = and i32 %5, 256, !dbg !5116
  %7 = icmp ne i32 %6, 0, !dbg !5116
  br i1 %7, label %8, label %11, !dbg !5117

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !5118
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !5119
  br label %11, !dbg !5119

11:                                               ; preds = %8, %1
  ret void, !dbg !5120
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !5121 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !5159, metadata !DIExpression()), !dbg !5160
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5161, metadata !DIExpression()), !dbg !5162
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5163, metadata !DIExpression()), !dbg !5164
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5165
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !5167
  %11 = load i8*, i8** %10, align 8, !dbg !5167
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5168
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !5169
  %14 = load i8*, i8** %13, align 8, !dbg !5169
  %15 = icmp eq i8* %11, %14, !dbg !5170
  br i1 %15, label %16, label %46, !dbg !5171

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5172
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !5173
  %19 = load i8*, i8** %18, align 8, !dbg !5173
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5174
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !5175
  %22 = load i8*, i8** %21, align 8, !dbg !5175
  %23 = icmp eq i8* %19, %22, !dbg !5176
  br i1 %23, label %24, label %46, !dbg !5177

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5178
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !5179
  %27 = load i8*, i8** %26, align 8, !dbg !5179
  %28 = icmp eq i8* %27, null, !dbg !5180
  br i1 %28, label %29, label %46, !dbg !5181

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5182, metadata !DIExpression()), !dbg !5184
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5185
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #19, !dbg !5186
  %32 = load i64, i64* %6, align 8, !dbg !5187
  %33 = load i32, i32* %7, align 4, !dbg !5188
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #19, !dbg !5189
  store i64 %34, i64* %8, align 8, !dbg !5184
  %35 = load i64, i64* %8, align 8, !dbg !5190
  %36 = icmp eq i64 %35, -1, !dbg !5192
  br i1 %36, label %37, label %38, !dbg !5193

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !5194
  br label %51, !dbg !5194

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5196
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !5197
  %41 = load i32, i32* %40, align 8, !dbg !5198
  %42 = and i32 %41, -17, !dbg !5198
  store i32 %42, i32* %40, align 8, !dbg !5198
  %43 = load i64, i64* %8, align 8, !dbg !5199
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5200
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !5201
  store i64 %43, i64* %45, align 8, !dbg !5202
  store i32 0, i32* %4, align 4, !dbg !5203
  br label %51, !dbg !5203

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5204
  %48 = load i64, i64* %6, align 8, !dbg !5205
  %49 = load i32, i32* %7, align 4, !dbg !5206
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !5207
  store i32 %50, i32* %4, align 4, !dbg !5208
  br label %51, !dbg !5208

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !5209
  ret i32 %52, !dbg !5209
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !5210 {
  %1 = call i32* @__errno_location() #22, !dbg !5213
  store i32 12, i32* %1, align 4, !dbg !5214
  ret i8* null, !dbg !5215
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !5216 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5217, metadata !DIExpression()), !dbg !5218
  %3 = load i64, i64* %2, align 8, !dbg !5219
  %4 = icmp ule i64 %3, -1, !dbg !5220
  br i1 %4, label %5, label %8, !dbg !5219

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !5221
  %7 = call noalias i8* @malloc(i64 noundef %6) #19, !dbg !5222
  br label %10, !dbg !5219

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #24, !dbg !5223
  br label %10, !dbg !5219

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !5219
  ret i8* %11, !dbg !5224
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5225 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5226, metadata !DIExpression()), !dbg !5227
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5228, metadata !DIExpression()), !dbg !5229
  %5 = load i64, i64* %4, align 8, !dbg !5230
  %6 = icmp ule i64 %5, -1, !dbg !5231
  br i1 %6, label %7, label %11, !dbg !5230

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !5232
  %9 = load i64, i64* %4, align 8, !dbg !5233
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !5234
  br label %13, !dbg !5230

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !5235
  br label %13, !dbg !5230

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !5230
  ret i8* %14, !dbg !5236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !5237 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5238, metadata !DIExpression()), !dbg !5239
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5240, metadata !DIExpression()), !dbg !5241
  %6 = load i64, i64* %4, align 8, !dbg !5242
  %7 = icmp ult i64 -1, %6, !dbg !5244
  br i1 %7, label %8, label %14, !dbg !5245

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !5246
  %10 = icmp ne i64 %9, 0, !dbg !5249
  br i1 %10, label %11, label %13, !dbg !5250

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !5251
  store i8* %12, i8** %3, align 8, !dbg !5252
  br label %27, !dbg !5252

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !5253
  br label %14, !dbg !5254

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !5255
  %16 = icmp ult i64 -1, %15, !dbg !5257
  br i1 %16, label %17, label %23, !dbg !5258

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !5259
  %19 = icmp ne i64 %18, 0, !dbg !5262
  br i1 %19, label %20, label %22, !dbg !5263

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #24, !dbg !5264
  store i8* %21, i8** %3, align 8, !dbg !5265
  br label %27, !dbg !5265

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !5266
  br label %23, !dbg !5267

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !5268
  %25 = load i64, i64* %5, align 8, !dbg !5269
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #19, !dbg !5270
  store i8* %26, i8** %3, align 8, !dbg !5271
  br label %27, !dbg !5271

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !5272
  ret i8* %28, !dbg !5272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5273 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5274, metadata !DIExpression()), !dbg !5275
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5276, metadata !DIExpression()), !dbg !5277
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5278, metadata !DIExpression()), !dbg !5279
  %7 = load i64, i64* %5, align 8, !dbg !5280
  %8 = icmp ule i64 %7, -1, !dbg !5281
  br i1 %8, label %9, label %17, !dbg !5282

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !5283
  %11 = icmp ule i64 %10, -1, !dbg !5284
  br i1 %11, label %12, label %17, !dbg !5280

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !5285
  %14 = load i64, i64* %5, align 8, !dbg !5286
  %15 = load i64, i64* %6, align 8, !dbg !5287
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !5288
  br label %19, !dbg !5280

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #24, !dbg !5289
  br label %19, !dbg !5280

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !5280
  ret i8* %20, !dbg !5290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !5291 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5296, metadata !DIExpression()), !dbg !5297
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5298, metadata !DIExpression()), !dbg !5299
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5300, metadata !DIExpression()), !dbg !5301
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !5302, metadata !DIExpression()), !dbg !5303
  %11 = load i8*, i8** %7, align 8, !dbg !5304
  %12 = icmp eq i8* %11, null, !dbg !5306
  br i1 %12, label %13, label %14, !dbg !5307

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !5308
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.189, i64 0, i64 0), i8** %7, align 8, !dbg !5310
  store i64 1, i64* %8, align 8, !dbg !5311
  br label %14, !dbg !5312

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5313
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !5315
  br i1 %16, label %17, label %18, !dbg !5316

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !5317
  br label %18, !dbg !5318

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5319, metadata !DIExpression()), !dbg !5320
  %19 = load i32*, i32** %6, align 8, !dbg !5321
  %20 = load i8*, i8** %7, align 8, !dbg !5322
  %21 = load i64, i64* %8, align 8, !dbg !5323
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5324
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #19, !dbg !5325
  store i64 %23, i64* %10, align 8, !dbg !5320
  %24 = load i64, i64* %10, align 8, !dbg !5326
  %25 = icmp ult i64 %24, -3, !dbg !5328
  br i1 %25, label %26, label %32, !dbg !5329

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5330
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #21, !dbg !5331
  %29 = icmp ne i32 %28, 0, !dbg !5331
  br i1 %29, label %32, label %30, !dbg !5332

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5333
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !5334
  br label %32, !dbg !5334

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !5335
  %34 = icmp eq i64 %33, -3, !dbg !5337
  br i1 %34, label %35, label %36, !dbg !5338

35:                                               ; preds = %32
  call void @abort() #20, !dbg !5339
  unreachable, !dbg !5339

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !5340
  %38 = icmp ule i64 -2, %37, !dbg !5342
  br i1 %38, label %39, label %53, !dbg !5343

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !5344
  %41 = icmp ne i64 %40, 0, !dbg !5345
  br i1 %41, label %42, label %53, !dbg !5346

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !5347
  br i1 %43, label %53, label %44, !dbg !5348

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !5349
  %46 = icmp ne i32* %45, null, !dbg !5352
  br i1 %46, label %47, label %52, !dbg !5353

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !5354
  %49 = load i8, i8* %48, align 1, !dbg !5355
  %50 = zext i8 %49 to i32, !dbg !5356
  %51 = load i32*, i32** %6, align 8, !dbg !5357
  store i32 %50, i32* %51, align 4, !dbg !5358
  br label %52, !dbg !5359

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !5360
  br label %55, !dbg !5360

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !5361
  store i64 %54, i64* %5, align 8, !dbg !5362
  br label %55, !dbg !5362

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !5363
  ret i64 %56, !dbg !5363
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !5364 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !5379, metadata !DIExpression()), !dbg !5380
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !5381
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !5382
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !5382
  ret void, !dbg !5383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !5384 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5387, metadata !DIExpression()), !dbg !5388
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5389, metadata !DIExpression()), !dbg !5390
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5391, metadata !DIExpression()), !dbg !5392
  %7 = load i8*, i8** %4, align 8, !dbg !5393
  %8 = load i8*, i8** %5, align 8, !dbg !5394
  %9 = load i64, i64* %6, align 8, !dbg !5395
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #21, !dbg !5396
  %11 = icmp ne i32 %10, 0, !dbg !5397
  %12 = xor i1 %11, true, !dbg !5397
  ret i1 %12, !dbg !5398
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5399 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5401, metadata !DIExpression()), !dbg !5402
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5403, metadata !DIExpression()), !dbg !5404
  %5 = load i8*, i8** %3, align 8, !dbg !5405
  %6 = load i64, i64* %4, align 8, !dbg !5406
  %7 = icmp ne i64 %6, 0, !dbg !5406
  br i1 %7, label %8, label %10, !dbg !5406

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !5407
  br label %11, !dbg !5406

10:                                               ; preds = %2
  br label %11, !dbg !5406

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !5406
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #19, !dbg !5408
  ret i8* %13, !dbg !5409
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5410 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5411, metadata !DIExpression()), !dbg !5412
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5413, metadata !DIExpression()), !dbg !5414
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5415, metadata !DIExpression()), !dbg !5416
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5417, metadata !DIExpression()), !dbg !5418
  %9 = load i64, i64* %7, align 8, !dbg !5419
  %10 = icmp ult i64 %9, 0, !dbg !5419
  br i1 %10, label %11, label %60, !dbg !5419

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !5419
  %13 = icmp ult i64 %12, 0, !dbg !5419
  br i1 %13, label %14, label %37, !dbg !5419

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !5419

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !5419
  %17 = load i64, i64* %7, align 8, !dbg !5419
  %18 = udiv i64 -1, %17, !dbg !5419
  %19 = icmp ult i64 %16, %18, !dbg !5419
  br i1 %19, label %92, label %96, !dbg !5419

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !5419

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !5419
  %23 = icmp ult i64 %22, 1, !dbg !5419
  br i1 %23, label %27, label %28, !dbg !5419

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !5419
  %26 = icmp ult i64 0, %25, !dbg !5419
  br i1 %26, label %27, label %28, !dbg !5419

27:                                               ; preds = %24, %21
  br label %32, !dbg !5419

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !5419
  %30 = sub i64 0, %29, !dbg !5419
  %31 = udiv i64 -1, %30, !dbg !5419
  br label %32, !dbg !5419

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !5419
  %34 = load i64, i64* %6, align 8, !dbg !5419
  %35 = sub i64 -1, %34, !dbg !5419
  %36 = icmp ule i64 %33, %35, !dbg !5419
  br i1 %36, label %92, label %96, !dbg !5419

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !5419

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !5419

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !5419

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !5419
  %42 = icmp eq i64 %41, -1, !dbg !5419
  br i1 %42, label %43, label %55, !dbg !5419

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !5419

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !5419
  %46 = add i64 %45, 0, !dbg !5419
  %47 = icmp ult i64 0, %46, !dbg !5419
  br i1 %47, label %92, label %96, !dbg !5419

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !5419
  %50 = icmp ult i64 0, %49, !dbg !5419
  br i1 %50, label %51, label %96, !dbg !5419

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !5419
  %53 = sub i64 %52, 1, !dbg !5419
  %54 = icmp ult i64 -1, %53, !dbg !5419
  br i1 %54, label %92, label %96, !dbg !5419

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !5419
  %57 = udiv i64 0, %56, !dbg !5419
  %58 = load i64, i64* %6, align 8, !dbg !5419
  %59 = icmp ult i64 %57, %58, !dbg !5419
  br i1 %59, label %92, label %96, !dbg !5419

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !5419
  %62 = icmp eq i64 %61, 0, !dbg !5419
  br i1 %62, label %63, label %64, !dbg !5419

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !5419

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !5419
  %66 = icmp ult i64 %65, 0, !dbg !5419
  br i1 %66, label %67, label %87, !dbg !5419

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !5419

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !5419

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !5419

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !5419
  %72 = icmp eq i64 %71, -1, !dbg !5419
  br i1 %72, label %73, label %82, !dbg !5419

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !5419

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !5419
  %76 = add i64 %75, 0, !dbg !5419
  %77 = icmp ult i64 0, %76, !dbg !5419
  br i1 %77, label %92, label %96, !dbg !5419

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !5419
  %80 = sub i64 %79, 1, !dbg !5419
  %81 = icmp ult i64 -1, %80, !dbg !5419
  br i1 %81, label %92, label %96, !dbg !5419

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !5419
  %84 = udiv i64 0, %83, !dbg !5419
  %85 = load i64, i64* %7, align 8, !dbg !5419
  %86 = icmp ult i64 %84, %85, !dbg !5419
  br i1 %86, label %92, label %96, !dbg !5419

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !5419
  %89 = udiv i64 -1, %88, !dbg !5419
  %90 = load i64, i64* %6, align 8, !dbg !5419
  %91 = icmp ult i64 %89, %90, !dbg !5419
  br i1 %91, label %92, label %96, !dbg !5419

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !5419
  %94 = load i64, i64* %7, align 8, !dbg !5419
  %95 = mul i64 %93, %94, !dbg !5419
  store i64 %95, i64* %8, align 8, !dbg !5419
  br label %100, !dbg !5419

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !5419
  %98 = load i64, i64* %7, align 8, !dbg !5419
  %99 = mul i64 %97, %98, !dbg !5419
  store i64 %99, i64* %8, align 8, !dbg !5419
  br label %100, !dbg !5419

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !5419
  %102 = icmp ne i32 %101, 0, !dbg !5419
  br i1 %102, label %103, label %105, !dbg !5421

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #22, !dbg !5422
  store i32 12, i32* %104, align 4, !dbg !5424
  store i8* null, i8** %4, align 8, !dbg !5425
  br label %109, !dbg !5425

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !5426
  %107 = load i64, i64* %8, align 8, !dbg !5427
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !5428
  store i8* %108, i8** %4, align 8, !dbg !5429
  br label %109, !dbg !5429

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !5430
  ret i8* %110, !dbg !5430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !5431 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5432, metadata !DIExpression()), !dbg !5433
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !5434, metadata !DIExpression()), !dbg !5438
  %5 = load i32, i32* %3, align 4, !dbg !5439
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5441
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !5442
  %8 = icmp ne i32 %7, 0, !dbg !5442
  br i1 %8, label %9, label %10, !dbg !5443

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5444
  br label %18, !dbg !5444

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5445
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i64 0, i64 0)), !dbg !5447
  br i1 %12, label %17, label %13, !dbg !5448

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5449
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.201, i64 0, i64 0)), !dbg !5450
  br i1 %15, label %17, label %16, !dbg !5451

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !5452
  br label %18, !dbg !5452

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !5453
  br label %18, !dbg !5453

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !5454
  ret i1 %19, !dbg !5454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5455 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5458, metadata !DIExpression()), !dbg !5459
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5460, metadata !DIExpression()), !dbg !5461
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5462, metadata !DIExpression()), !dbg !5463
  %7 = load i32, i32* %4, align 4, !dbg !5464
  %8 = load i8*, i8** %5, align 8, !dbg !5465
  %9 = load i64, i64* %6, align 8, !dbg !5466
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !5467
  ret i32 %10, !dbg !5468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !5469 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5472, metadata !DIExpression()), !dbg !5473
  %3 = load i32, i32* %2, align 4, !dbg !5474
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !5475
  ret i8* %4, !dbg !5476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !5477 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5478, metadata !DIExpression()), !dbg !5479
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5480, metadata !DIExpression()), !dbg !5481
  %4 = load i32, i32* %2, align 4, !dbg !5482
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #19, !dbg !5483
  store i8* %5, i8** %3, align 8, !dbg !5481
  %6 = load i8*, i8** %3, align 8, !dbg !5484
  ret i8* %6, !dbg !5485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5486 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5487, metadata !DIExpression()), !dbg !5488
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5489, metadata !DIExpression()), !dbg !5490
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5491, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5493, metadata !DIExpression()), !dbg !5494
  %10 = load i32, i32* %5, align 4, !dbg !5495
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !5496
  store i8* %11, i8** %8, align 8, !dbg !5494
  %12 = load i8*, i8** %8, align 8, !dbg !5497
  %13 = icmp eq i8* %12, null, !dbg !5499
  br i1 %13, label %14, label %21, !dbg !5500

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !5501
  %16 = icmp ugt i64 %15, 0, !dbg !5504
  br i1 %16, label %17, label %20, !dbg !5505

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !5506
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !5506
  store i8 0, i8* %19, align 1, !dbg !5507
  br label %20, !dbg !5506

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !5508
  br label %45, !dbg !5508

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5509, metadata !DIExpression()), !dbg !5511
  %22 = load i8*, i8** %8, align 8, !dbg !5512
  %23 = call i64 @strlen(i8* noundef %22) #21, !dbg !5513
  store i64 %23, i64* %9, align 8, !dbg !5511
  %24 = load i64, i64* %9, align 8, !dbg !5514
  %25 = load i64, i64* %7, align 8, !dbg !5516
  %26 = icmp ult i64 %24, %25, !dbg !5517
  br i1 %26, label %27, label %32, !dbg !5518

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !5519
  %29 = load i8*, i8** %8, align 8, !dbg !5521
  %30 = load i64, i64* %9, align 8, !dbg !5522
  %31 = add i64 %30, 1, !dbg !5523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !5524
  store i32 0, i32* %4, align 4, !dbg !5525
  br label %45, !dbg !5525

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !5526
  %34 = icmp ugt i64 %33, 0, !dbg !5529
  br i1 %34, label %35, label %44, !dbg !5530

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !5531
  %37 = load i8*, i8** %8, align 8, !dbg !5533
  %38 = load i64, i64* %7, align 8, !dbg !5534
  %39 = sub i64 %38, 1, !dbg !5535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !5536
  %40 = load i8*, i8** %6, align 8, !dbg !5537
  %41 = load i64, i64* %7, align 8, !dbg !5538
  %42 = sub i64 %41, 1, !dbg !5539
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5537
  store i8 0, i8* %43, align 1, !dbg !5540
  br label %44, !dbg !5541

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !5542
  br label %45, !dbg !5542

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !5543
  ret i32 %46, !dbg !5543
}

attributes #0 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #8 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { cold noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { nofree nosync nounwind willreturn }
attributes #12 = { noinline nounwind optnone readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { noinline nounwind optnone uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { noinline nounwind optnone uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noinline nounwind optnone uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { noinline nounwind optnone uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { convergent nofree nosync nounwind readnone willreturn }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind readnone willreturn }
attributes #23 = { noreturn }
attributes #24 = { cold }
attributes #25 = { allocsize(1) }
attributes #26 = { allocsize(0) }
attributes #27 = { allocsize(1,2) }
attributes #28 = { allocsize(0,1) }

!llvm.dbg.cu = !{!2, !64, !69, !77, !213, !238, !240, !111, !121, !128, !466, !468, !205, !474, !493, !495, !506, !514, !516, !518, !520, !522, !524, !526, !528, !219, !530, !532, !534, !536, !539, !541, !543}
!llvm.ident = !{!545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545, !545}
!llvm.module.flags = !{!546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 40, type: !50, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !40, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/nproc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9be389db91a894f809edad2807c32835")
!4 = !{!5, !12, !19}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nproc_query", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/nproc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "dd1b9803a99598e46cd95fdfb7d0bf6e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "NPROC_ALL", value: 0)
!10 = !DIEnumerator(name: "NPROC_CURRENT", value: 1)
!11 = !DIEnumerator(name: "NPROC_CURRENT_OVERRIDABLE", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 24, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!16 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!17 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!18 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 46, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!22 = !DIEnumerator(name: "_ISupper", value: 256)
!23 = !DIEnumerator(name: "_ISlower", value: 512)
!24 = !DIEnumerator(name: "_ISalpha", value: 1024)
!25 = !DIEnumerator(name: "_ISdigit", value: 2048)
!26 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!27 = !DIEnumerator(name: "_ISspace", value: 8192)
!28 = !DIEnumerator(name: "_ISprint", value: 16384)
!29 = !DIEnumerator(name: "_ISgraph", value: 32768)
!30 = !DIEnumerator(name: "_ISblank", value: 1)
!31 = !DIEnumerator(name: "_IScntrl", value: 2)
!32 = !DIEnumerator(name: "_ISpunct", value: 4)
!33 = !DIEnumerator(name: "_ISalnum", value: 8)
!34 = !{!35, !37, !38, !39}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !{!41, !0}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !43, file: !44, line: 575, type: !38, isLocal: true, isDefinition: true)
!43 = distinct !DISubprogram(name: "oputs_", scope: !44, file: !44, line: 573, type: !45, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !49)
!44 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!49 = !{}
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1280, elements: !60)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !53, line: 50, size: 256, elements: !54)
!53 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!54 = !{!55, !56, !57, !59}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !52, file: !53, line: 52, baseType: !47, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !52, file: !53, line: 55, baseType: !38, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !52, file: !53, line: 56, baseType: !58, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !52, file: !53, line: 57, baseType: !38, size: 32, offset: 192)
!60 = !{!61}
!61 = !DISubrange(count: 5)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "Version", scope: !64, file: !65, line: 3, type: !47, isLocal: false, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !66, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!66 = !{!62}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "file_name", scope: !69, file: !70, line: 45, type: !47, isLocal: true, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !71, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!71 = !{!67, !72}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !69, file: !70, line: 55, type: !74, isLocal: true, isDefinition: true)
!74 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !77, file: !78, line: 66, type: !106, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, globals: !80, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!79 = !{!37}
!80 = !{!81, !100, !75, !102, !104}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "old_file_name", scope: !83, file: !78, line: 304, type: !47, isLocal: true, isDefinition: true)
!83 = distinct !DISubprogram(name: "verror_at_line", scope: !78, file: !78, line: 298, type: !84, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !49)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !38, !38, !47, !7, !47, !86}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !87, line: 52, baseType: !88)
!87 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !89, line: 32, baseType: !90)
!89 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !91, baseType: !92)
!91 = !DIFile(filename: "lib/error.c", directory: "/src")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !93, size: 256, elements: !94)
!93 = !DINamespace(name: "std", scope: null)
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !92, file: !91, baseType: !37, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !92, file: !91, baseType: !37, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !92, file: !91, baseType: !37, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !92, file: !91, baseType: !38, size: 32, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !92, file: !91, baseType: !38, size: 32, offset: 224)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "old_line_number", scope: !83, file: !78, line: 305, type: !7, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "error_message_count", scope: !77, file: !78, line: 69, type: !7, isLocal: false, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !77, file: !78, line: 295, type: !38, isLocal: false, isDefinition: true)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "program_name", scope: !111, file: !112, line: 31, type: !47, isLocal: false, isDefinition: true)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !113, globals: !114, splitDebugInlining: false, nameTableKind: None)
!112 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!113 = !{!35}
!114 = !{!109}
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "utf07FF", scope: !117, file: !118, line: 46, type: !123, isLocal: true, isDefinition: true)
!117 = distinct !DISubprogram(name: "proper_name_lite", scope: !118, file: !118, line: 38, type: !119, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !49)
!118 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!119 = !DISubroutineType(types: !120)
!120 = !{!47, !47, !47}
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !122, splitDebugInlining: false, nameTableKind: None)
!122 = !{!115}
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 16, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 2)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !128, file: !129, line: 76, type: !199, isLocal: false, isDefinition: true)
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !130, retainedTypes: !150, globals: !154, splitDebugInlining: false, nameTableKind: None)
!129 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!130 = !{!131, !145, !19}
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !132, line: 42, baseType: !7, size: 32, elements: !133)
!132 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!134 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!135 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!136 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!137 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!138 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!139 = !DIEnumerator(name: "c_quoting_style", value: 5)
!140 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!141 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!142 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!143 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!144 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !132, line: 254, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!148 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!149 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!150 = !{!38, !39, !151}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !153)
!152 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!153 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!154 = !{!126, !155, !161, !173, !175, !180, !188, !195, !197}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !128, file: !129, line: 92, type: !157, isLocal: false, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 320, elements: !159)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!159 = !{!160}
!160 = !DISubrange(count: 10)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !128, file: !129, line: 1040, type: !163, isLocal: false, isDefinition: true)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !129, line: 56, size: 448, elements: !164)
!164 = !{!165, !166, !167, !171, !172}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !163, file: !129, line: 59, baseType: !131, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !129, line: 62, baseType: !38, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !163, file: !129, line: 66, baseType: !168, size: 256, offset: 64)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 8)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !163, file: !129, line: 69, baseType: !47, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !163, file: !129, line: 72, baseType: !47, size: 64, offset: 384)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !128, file: !129, line: 107, type: !163, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "slot0", scope: !128, file: !129, line: 831, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 256)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "quote", scope: !182, file: !129, line: 228, type: !185, isLocal: true, isDefinition: true)
!182 = distinct !DISubprogram(name: "gettext_quote", scope: !129, file: !129, line: 197, type: !183, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !49)
!183 = !DISubroutineType(types: !184)
!184 = !{!47, !47, !131}
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !186)
!186 = !{!125, !187}
!187 = !DISubrange(count: 4)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "slotvec", scope: !128, file: !129, line: 834, type: !190, isLocal: true, isDefinition: true)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !129, line: 823, size: 128, elements: !192)
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !191, file: !129, line: 825, baseType: !151, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !191, file: !129, line: 826, baseType: !35, size: 64, offset: 64)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "nslots", scope: !128, file: !129, line: 832, type: !38, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "slotvec0", scope: !128, file: !129, line: 833, type: !191, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 704, elements: !201)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!201 = !{!202}
!202 = !DISubrange(count: 11)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !205, file: !206, line: 26, type: !208, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !207, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!207 = !{!203}
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 376, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 47)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "exit_failure", scope: !213, file: !214, line: 24, type: !216, isLocal: false, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !215, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!215 = !{!211}
!216 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "internal_state", scope: !219, file: !220, line: 97, type: !224, isLocal: true, isDefinition: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !221, globals: !223, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!221 = !{!37, !151, !222}
!222 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!223 = !{!217}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !225, line: 6, baseType: !226)
!225 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !227, line: 21, baseType: !228)
!227 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 13, size: 64, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !228, file: !227, line: 15, baseType: !38, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !228, file: !227, line: 20, baseType: !232, size: 32, offset: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !227, line: 16, size: 32, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !232, file: !227, line: 18, baseType: !7, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !232, file: !227, line: 19, baseType: !236, size: 32)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !237)
!237 = !{!187}
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !463, splitDebugInlining: false, nameTableKind: None)
!241 = !DIFile(filename: "lib/nproc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8ed3d3246f48dd170075371c80925eac")
!242 = !{!5, !243}
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !244, line: 71, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!246 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!247 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!248 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!249 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!250 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!251 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!252 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!253 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!254 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!255 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!256 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!257 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!258 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!259 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!260 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!261 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!262 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!263 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!264 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!265 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!266 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!267 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!268 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!269 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!270 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!271 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!272 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!273 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!274 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!275 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!276 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!277 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!278 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!279 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!280 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!281 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!282 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!283 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!284 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!285 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!286 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!287 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!288 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!289 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!290 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!291 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!292 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!293 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!294 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!295 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!296 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!297 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!298 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!299 = !DIEnumerator(name: "_SC_PII", value: 53)
!300 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!301 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!302 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!303 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!304 = !DIEnumerator(name: "_SC_POLL", value: 58)
!305 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!306 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!307 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!308 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!309 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!310 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!311 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!312 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!313 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!314 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!315 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!316 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!317 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!318 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!319 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!320 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!321 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!322 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!323 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!324 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!325 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!326 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!327 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!328 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!329 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!330 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!331 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!332 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!333 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!334 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!335 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!336 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!337 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!338 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!339 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!340 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!341 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!342 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!343 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!344 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!345 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!346 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!347 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!348 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!349 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!350 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!351 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!352 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!353 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!354 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!355 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!356 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!357 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!358 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!359 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!360 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!361 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!362 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!363 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!364 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!365 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!366 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!367 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!368 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!369 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!370 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!371 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!372 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!373 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!374 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!375 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!376 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!377 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!378 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!379 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!380 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!381 = !DIEnumerator(name: "_SC_BASE", value: 134)
!382 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!383 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!384 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!385 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!386 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!387 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!388 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!389 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!390 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!391 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!392 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!393 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!394 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!395 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!396 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!397 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!398 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!399 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!400 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!401 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!402 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!403 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!404 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!405 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!406 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!407 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!408 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!409 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!410 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!411 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!412 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!413 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!414 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!415 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!416 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!417 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!418 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!419 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!420 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!421 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!422 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!423 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!424 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!425 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!426 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!427 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!428 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!429 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!430 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!431 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!432 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!433 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!434 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!435 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!436 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!437 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!438 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!439 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!440 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!441 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!442 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!443 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!444 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!445 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!446 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!447 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!448 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!449 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!450 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!451 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!452 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!453 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!454 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!455 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!456 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!457 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!458 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!459 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!460 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!461 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!462 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!463 = !{!37, !464, !465}
!464 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!465 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!466 = distinct !DICompileUnit(language: DW_LANG_C99, file: !467, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!467 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!468 = distinct !DICompileUnit(language: DW_LANG_C99, file: !469, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !470, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!469 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!470 = !{!471}
!471 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !469, line: 40, baseType: !7, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!474 = distinct !DICompileUnit(language: DW_LANG_C99, file: !475, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !476, retainedTypes: !492, splitDebugInlining: false, nameTableKind: None)
!475 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!476 = !{!477, !484}
!477 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !478, file: !475, line: 188, baseType: !7, size: 32, elements: !482)
!478 = distinct !DISubprogram(name: "x2nrealloc", scope: !475, file: !475, line: 176, type: !479, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!479 = !DISubroutineType(types: !480)
!480 = !{!37, !37, !481, !151}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!482 = !{!483}
!483 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!484 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !485, file: !475, line: 228, baseType: !7, size: 32, elements: !482)
!485 = distinct !DISubprogram(name: "xpalloc", scope: !475, file: !475, line: 223, type: !486, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!486 = !DISubroutineType(types: !487)
!487 = !{!37, !37, !488, !489, !491, !489}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !490, line: 130, baseType: !491)
!490 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !152, line: 35, baseType: !465)
!492 = !{!35, !37, !74, !465, !153}
!493 = distinct !DICompileUnit(language: DW_LANG_C99, file: !494, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!494 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !496, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !497, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!497 = !{!498, !12}
!498 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !499, line: 30, baseType: !7, size: 32, elements: !500)
!499 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!500 = !{!501, !502, !503, !504, !505}
!501 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!502 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!503 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!504 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!505 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !507, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !508, retainedTypes: !509, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!508 = !{!498, !19}
!509 = !{!38, !39, !35, !74, !153, !510}
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !511, line: 102, baseType: !512)
!511 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !513, line: 73, baseType: !153)
!513 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!514 = distinct !DICompileUnit(language: DW_LANG_C99, file: !515, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!515 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!516 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!517 = !DIFile(filename: "lib/c-ctype.c", directory: "/src", checksumkind: CSK_MD5, checksum: "245df19f202f37bba31cfa46647ceb93")
!518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!519 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!520 = distinct !DICompileUnit(language: DW_LANG_C99, file: !521, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!521 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!523 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!524 = distinct !DICompileUnit(language: DW_LANG_C99, file: !525, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!525 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!526 = distinct !DICompileUnit(language: DW_LANG_C99, file: !527, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!527 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!528 = distinct !DICompileUnit(language: DW_LANG_C99, file: !529, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!529 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!530 = distinct !DICompileUnit(language: DW_LANG_C99, file: !531, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!531 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!532 = distinct !DICompileUnit(language: DW_LANG_C99, file: !533, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!533 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!534 = distinct !DICompileUnit(language: DW_LANG_C99, file: !535, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!535 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!536 = distinct !DICompileUnit(language: DW_LANG_C99, file: !537, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !538, splitDebugInlining: false, nameTableKind: None)
!537 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!538 = !{!74, !153, !37}
!539 = distinct !DICompileUnit(language: DW_LANG_C99, file: !540, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!540 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!541 = distinct !DICompileUnit(language: DW_LANG_C99, file: !542, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!542 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!544 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!545 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!546 = !{i32 7, !"Dwarf Version", i32 5}
!547 = !{i32 2, !"Debug Info Version", i32 3}
!548 = !{i32 1, !"wchar_size", i32 4}
!549 = !{i32 1, !"branch-target-enforcement", i32 0}
!550 = !{i32 1, !"sign-return-address", i32 0}
!551 = !{i32 1, !"sign-return-address-all", i32 0}
!552 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!553 = !{i32 7, !"PIC Level", i32 2}
!554 = !{i32 7, !"PIE Level", i32 2}
!555 = !{i32 7, !"uwtable", i32 1}
!556 = !{i32 7, !"frame-pointer", i32 1}
!557 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 50, type: !558, scopeLine: 51, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !38}
!560 = !DILocalVariable(name: "status", arg: 1, scope: !557, file: !3, line: 50, type: !38)
!561 = !DILocation(line: 50, column: 12, scope: !557)
!562 = !DILocation(line: 52, column: 7, scope: !563)
!563 = distinct !DILexicalBlock(scope: !557, file: !3, line: 52, column: 7)
!564 = !DILocation(line: 52, column: 14, scope: !563)
!565 = !DILocation(line: 52, column: 7, scope: !557)
!566 = !DILocation(line: 53, column: 5, scope: !563)
!567 = !DILocation(line: 53, column: 5, scope: !568)
!568 = distinct !DILexicalBlock(scope: !563, file: !3, line: 53, column: 5)
!569 = !DILocation(line: 56, column: 15, scope: !570)
!570 = distinct !DILexicalBlock(scope: !563, file: !3, line: 55, column: 5)
!571 = !DILocation(line: 56, column: 45, scope: !570)
!572 = !DILocation(line: 56, column: 7, scope: !570)
!573 = !DILocation(line: 57, column: 7, scope: !570)
!574 = !DILocation(line: 64, column: 7, scope: !570)
!575 = !DILocation(line: 69, column: 7, scope: !570)
!576 = !DILocation(line: 75, column: 7, scope: !570)
!577 = !DILocation(line: 76, column: 7, scope: !570)
!578 = !DILocation(line: 77, column: 7, scope: !570)
!579 = !DILocation(line: 79, column: 9, scope: !557)
!580 = !DILocation(line: 79, column: 3, scope: !557)
!581 = !DILocalVariable(name: "program", arg: 1, scope: !43, file: !44, line: 573, type: !47)
!582 = !DILocation(line: 573, column: 34, scope: !43)
!583 = !DILocalVariable(name: "option", arg: 2, scope: !43, file: !44, line: 573, type: !47)
!584 = !DILocation(line: 573, column: 55, scope: !43)
!585 = !DILocation(line: 581, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !43, file: !44, line: 581, column: 7)
!587 = !DILocation(line: 581, column: 19, scope: !586)
!588 = !DILocation(line: 581, column: 7, scope: !43)
!589 = !DILocalVariable(name: "term", scope: !590, file: !44, line: 585, type: !47)
!590 = distinct !DILexicalBlock(scope: !586, file: !44, line: 582, column: 5)
!591 = !DILocation(line: 585, column: 19, scope: !590)
!592 = !DILocation(line: 585, column: 26, scope: !590)
!593 = !DILocation(line: 586, column: 23, scope: !590)
!594 = !DILocation(line: 586, column: 28, scope: !590)
!595 = !DILocation(line: 586, column: 33, scope: !590)
!596 = !DILocation(line: 586, column: 32, scope: !590)
!597 = !DILocation(line: 586, column: 38, scope: !590)
!598 = !DILocation(line: 586, column: 48, scope: !590)
!599 = !DILocation(line: 586, column: 41, scope: !590)
!600 = !DILocation(line: 586, column: 19, scope: !590)
!601 = !DILocation(line: 587, column: 5, scope: !590)
!602 = !DILocation(line: 588, column: 7, scope: !603)
!603 = distinct !DILexicalBlock(scope: !43, file: !44, line: 588, column: 7)
!604 = !DILocation(line: 588, column: 7, scope: !43)
!605 = !DILocation(line: 590, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !44, line: 589, column: 5)
!607 = !DILocation(line: 591, column: 7, scope: !606)
!608 = !DILocalVariable(name: "double_space", scope: !43, file: !44, line: 594, type: !74)
!609 = !DILocation(line: 594, column: 8, scope: !43)
!610 = !DILocalVariable(name: "first_word", scope: !43, file: !44, line: 595, type: !47)
!611 = !DILocation(line: 595, column: 15, scope: !43)
!612 = !DILocation(line: 595, column: 28, scope: !43)
!613 = !DILocation(line: 595, column: 45, scope: !43)
!614 = !DILocation(line: 595, column: 37, scope: !43)
!615 = !DILocation(line: 595, column: 35, scope: !43)
!616 = !DILocalVariable(name: "option_text", scope: !43, file: !44, line: 596, type: !47)
!617 = !DILocation(line: 596, column: 15, scope: !43)
!618 = !DILocation(line: 596, column: 37, scope: !43)
!619 = !DILocation(line: 596, column: 29, scope: !43)
!620 = !DILocation(line: 597, column: 8, scope: !621)
!621 = distinct !DILexicalBlock(scope: !43, file: !44, line: 597, column: 7)
!622 = !DILocation(line: 597, column: 7, scope: !43)
!623 = !DILocation(line: 599, column: 21, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !44, line: 598, column: 5)
!625 = !DILocation(line: 599, column: 19, scope: !624)
!626 = !DILocation(line: 602, column: 20, scope: !624)
!627 = !DILocation(line: 603, column: 5, scope: !624)
!628 = !DILocation(line: 604, column: 12, scope: !629)
!629 = distinct !DILexicalBlock(scope: !621, file: !44, line: 604, column: 12)
!630 = !DILocation(line: 604, column: 27, scope: !629)
!631 = !DILocation(line: 604, column: 24, scope: !629)
!632 = !DILocation(line: 604, column: 12, scope: !621)
!633 = !DILocalVariable(name: "s", scope: !634, file: !44, line: 608, type: !47)
!634 = distinct !DILexicalBlock(scope: !629, file: !44, line: 605, column: 5)
!635 = !DILocation(line: 608, column: 19, scope: !634)
!636 = !DILocation(line: 608, column: 23, scope: !634)
!637 = !DILocalVariable(name: "spaces", scope: !634, file: !44, line: 609, type: !151)
!638 = !DILocation(line: 609, column: 14, scope: !634)
!639 = !DILocation(line: 610, column: 7, scope: !634)
!640 = !DILocation(line: 610, column: 14, scope: !634)
!641 = !DILocation(line: 610, column: 18, scope: !634)
!642 = !DILocation(line: 610, column: 16, scope: !634)
!643 = !DILocation(line: 610, column: 30, scope: !634)
!644 = !DILocation(line: 610, column: 33, scope: !634)
!645 = !DILocation(line: 610, column: 40, scope: !634)
!646 = !DILocation(line: 0, scope: !634)
!647 = !DILocation(line: 611, column: 21, scope: !634)
!648 = !DILocation(line: 611, column: 20, scope: !634)
!649 = !DILocation(line: 611, column: 19, scope: !634)
!650 = !DILocation(line: 611, column: 16, scope: !634)
!651 = distinct !{!651, !639, !647, !652}
!652 = !{!"llvm.loop.mustprogress"}
!653 = !DILocation(line: 612, column: 11, scope: !654)
!654 = distinct !DILexicalBlock(scope: !634, file: !44, line: 612, column: 11)
!655 = !DILocation(line: 612, column: 18, scope: !654)
!656 = !DILocation(line: 612, column: 11, scope: !634)
!657 = !DILocation(line: 615, column: 25, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !44, line: 613, column: 9)
!659 = !DILocation(line: 615, column: 23, scope: !658)
!660 = !DILocation(line: 616, column: 24, scope: !658)
!661 = !DILocation(line: 617, column: 9, scope: !658)
!662 = !DILocation(line: 618, column: 5, scope: !634)
!663 = !DILocalVariable(name: "anchor_len", scope: !43, file: !44, line: 620, type: !151)
!664 = !DILocation(line: 620, column: 10, scope: !43)
!665 = !DILocation(line: 620, column: 32, scope: !43)
!666 = !DILocation(line: 620, column: 23, scope: !43)
!667 = !DILocalVariable(name: "desc_text", scope: !43, file: !44, line: 625, type: !47)
!668 = !DILocation(line: 625, column: 15, scope: !43)
!669 = !DILocation(line: 625, column: 27, scope: !43)
!670 = !DILocation(line: 625, column: 41, scope: !43)
!671 = !DILocation(line: 625, column: 39, scope: !43)
!672 = !DILocation(line: 626, column: 3, scope: !43)
!673 = !DILocation(line: 626, column: 11, scope: !43)
!674 = !DILocation(line: 626, column: 10, scope: !43)
!675 = !DILocation(line: 626, column: 21, scope: !43)
!676 = !DILocation(line: 626, column: 25, scope: !43)
!677 = !DILocation(line: 626, column: 24, scope: !43)
!678 = !DILocation(line: 626, column: 35, scope: !43)
!679 = !DILocation(line: 0, scope: !43)
!680 = !DILocation(line: 628, column: 12, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !44, line: 628, column: 11)
!682 = distinct !DILexicalBlock(scope: !43, file: !44, line: 627, column: 5)
!683 = !DILocation(line: 628, column: 11, scope: !681)
!684 = !DILocation(line: 628, column: 22, scope: !681)
!685 = !DILocation(line: 628, column: 29, scope: !681)
!686 = !DILocation(line: 628, column: 34, scope: !681)
!687 = !DILocation(line: 628, column: 44, scope: !681)
!688 = !DILocation(line: 628, column: 32, scope: !681)
!689 = !DILocation(line: 628, column: 49, scope: !681)
!690 = !DILocation(line: 628, column: 11, scope: !682)
!691 = !DILocation(line: 629, column: 22, scope: !681)
!692 = !DILocation(line: 629, column: 9, scope: !681)
!693 = !DILocation(line: 630, column: 11, scope: !694)
!694 = distinct !DILexicalBlock(scope: !682, file: !44, line: 630, column: 11)
!695 = !DILocation(line: 630, column: 11, scope: !682)
!696 = !DILocation(line: 632, column: 16, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !44, line: 632, column: 15)
!698 = distinct !DILexicalBlock(scope: !694, file: !44, line: 631, column: 9)
!699 = !DILocation(line: 632, column: 15, scope: !697)
!700 = !DILocation(line: 632, column: 26, scope: !697)
!701 = !DILocation(line: 632, column: 34, scope: !697)
!702 = !DILocation(line: 632, column: 37, scope: !697)
!703 = !DILocation(line: 632, column: 15, scope: !698)
!704 = !DILocation(line: 633, column: 13, scope: !697)
!705 = !DILocation(line: 636, column: 16, scope: !706)
!706 = distinct !DILexicalBlock(scope: !698, file: !44, line: 636, column: 15)
!707 = !DILocation(line: 636, column: 29, scope: !706)
!708 = !DILocation(line: 636, column: 34, scope: !706)
!709 = !DILocation(line: 636, column: 44, scope: !706)
!710 = !DILocation(line: 636, column: 32, scope: !706)
!711 = !DILocation(line: 636, column: 49, scope: !706)
!712 = !DILocation(line: 636, column: 15, scope: !698)
!713 = !DILocation(line: 637, column: 13, scope: !706)
!714 = !DILocation(line: 638, column: 9, scope: !698)
!715 = !DILocation(line: 640, column: 16, scope: !682)
!716 = distinct !{!716, !672, !717, !652}
!717 = !DILocation(line: 641, column: 5, scope: !43)
!718 = !DILocation(line: 644, column: 3, scope: !43)
!719 = !DILocalVariable(name: "url_program", scope: !43, file: !44, line: 648, type: !47)
!720 = !DILocation(line: 648, column: 15, scope: !43)
!721 = !DILocation(line: 648, column: 38, scope: !43)
!722 = !DILocation(line: 648, column: 31, scope: !43)
!723 = !DILocation(line: 649, column: 38, scope: !43)
!724 = !DILocation(line: 649, column: 31, scope: !43)
!725 = !DILocation(line: 650, column: 38, scope: !43)
!726 = !DILocation(line: 650, column: 31, scope: !43)
!727 = !DILocation(line: 651, column: 38, scope: !43)
!728 = !DILocation(line: 651, column: 31, scope: !43)
!729 = !DILocation(line: 652, column: 38, scope: !43)
!730 = !DILocation(line: 652, column: 31, scope: !43)
!731 = !DILocation(line: 653, column: 38, scope: !43)
!732 = !DILocation(line: 653, column: 31, scope: !43)
!733 = !DILocation(line: 654, column: 38, scope: !43)
!734 = !DILocation(line: 654, column: 31, scope: !43)
!735 = !DILocation(line: 655, column: 38, scope: !43)
!736 = !DILocation(line: 655, column: 31, scope: !43)
!737 = !DILocation(line: 656, column: 38, scope: !43)
!738 = !DILocation(line: 656, column: 31, scope: !43)
!739 = !DILocation(line: 657, column: 38, scope: !43)
!740 = !DILocation(line: 657, column: 31, scope: !43)
!741 = !DILocation(line: 658, column: 31, scope: !43)
!742 = !DILocation(line: 663, column: 7, scope: !743)
!743 = distinct !DILexicalBlock(scope: !43, file: !44, line: 663, column: 7)
!744 = !DILocation(line: 664, column: 7, scope: !743)
!745 = !DILocation(line: 664, column: 10, scope: !743)
!746 = !DILocation(line: 663, column: 7, scope: !43)
!747 = !DILocation(line: 670, column: 15, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !44, line: 665, column: 5)
!749 = !DILocation(line: 670, column: 28, scope: !748)
!750 = !DILocation(line: 670, column: 47, scope: !748)
!751 = !DILocation(line: 670, column: 41, scope: !748)
!752 = !DILocation(line: 670, column: 59, scope: !748)
!753 = !DILocation(line: 669, column: 7, scope: !748)
!754 = !DILocation(line: 671, column: 5, scope: !748)
!755 = !DILocation(line: 676, column: 48, scope: !756)
!756 = distinct !DILexicalBlock(scope: !743, file: !44, line: 673, column: 5)
!757 = !DILocation(line: 677, column: 21, scope: !756)
!758 = !DILocation(line: 677, column: 15, scope: !756)
!759 = !DILocation(line: 677, column: 33, scope: !756)
!760 = !DILocation(line: 676, column: 7, scope: !756)
!761 = !DILocation(line: 679, column: 3, scope: !43)
!762 = !DILocation(line: 683, column: 3, scope: !43)
!763 = !DILocation(line: 686, column: 3, scope: !43)
!764 = !DILocation(line: 688, column: 3, scope: !43)
!765 = !DILocation(line: 691, column: 3, scope: !43)
!766 = !DILocation(line: 695, column: 3, scope: !43)
!767 = !DILocation(line: 696, column: 1, scope: !43)
!768 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !44, file: !44, line: 836, type: !769, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !49)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !47}
!771 = !DILocalVariable(name: "program", arg: 1, scope: !768, file: !44, line: 836, type: !47)
!772 = !DILocation(line: 836, column: 34, scope: !768)
!773 = !DILocalVariable(name: "infomap", scope: !768, file: !44, line: 838, type: !774)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 896, elements: !780)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !768, file: !44, line: 838, size: 128, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !776, file: !44, line: 838, baseType: !47, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !776, file: !44, line: 838, baseType: !47, size: 64, offset: 64)
!780 = !{!781}
!781 = !DISubrange(count: 7)
!782 = !DILocation(line: 838, column: 67, scope: !768)
!783 = !DILocalVariable(name: "node", scope: !768, file: !44, line: 848, type: !47)
!784 = !DILocation(line: 848, column: 15, scope: !768)
!785 = !DILocation(line: 848, column: 22, scope: !768)
!786 = !DILocalVariable(name: "map_prog", scope: !768, file: !44, line: 849, type: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!788 = !DILocation(line: 849, column: 25, scope: !768)
!789 = !DILocation(line: 849, column: 36, scope: !768)
!790 = !DILocation(line: 851, column: 3, scope: !768)
!791 = !DILocation(line: 851, column: 10, scope: !768)
!792 = !DILocation(line: 851, column: 20, scope: !768)
!793 = !DILocation(line: 851, column: 28, scope: !768)
!794 = !DILocation(line: 851, column: 40, scope: !768)
!795 = !DILocation(line: 851, column: 49, scope: !768)
!796 = !DILocation(line: 851, column: 59, scope: !768)
!797 = !DILocation(line: 851, column: 33, scope: !768)
!798 = !DILocation(line: 851, column: 31, scope: !768)
!799 = !DILocation(line: 0, scope: !768)
!800 = !DILocation(line: 852, column: 13, scope: !768)
!801 = distinct !{!801, !790, !800, !652}
!802 = !DILocation(line: 854, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !768, file: !44, line: 854, column: 7)
!804 = !DILocation(line: 854, column: 17, scope: !803)
!805 = !DILocation(line: 854, column: 7, scope: !768)
!806 = !DILocation(line: 855, column: 12, scope: !803)
!807 = !DILocation(line: 855, column: 22, scope: !803)
!808 = !DILocation(line: 855, column: 10, scope: !803)
!809 = !DILocation(line: 855, column: 5, scope: !803)
!810 = !DILocation(line: 857, column: 3, scope: !768)
!811 = !DILocalVariable(name: "lc_messages", scope: !768, file: !44, line: 861, type: !47)
!812 = !DILocation(line: 861, column: 15, scope: !768)
!813 = !DILocation(line: 861, column: 29, scope: !768)
!814 = !DILocation(line: 862, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !768, file: !44, line: 862, column: 7)
!816 = !DILocation(line: 862, column: 19, scope: !815)
!817 = !DILocation(line: 862, column: 22, scope: !815)
!818 = !DILocation(line: 862, column: 7, scope: !768)
!819 = !DILocation(line: 868, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !815, file: !44, line: 863, column: 5)
!821 = !DILocation(line: 870, column: 5, scope: !820)
!822 = !DILocalVariable(name: "url_program", scope: !768, file: !44, line: 874, type: !47)
!823 = !DILocation(line: 874, column: 15, scope: !768)
!824 = !DILocation(line: 874, column: 36, scope: !768)
!825 = !DILocation(line: 874, column: 29, scope: !768)
!826 = !DILocation(line: 874, column: 61, scope: !768)
!827 = !DILocation(line: 875, column: 11, scope: !768)
!828 = !DILocation(line: 876, column: 24, scope: !768)
!829 = !DILocation(line: 875, column: 3, scope: !768)
!830 = !DILocation(line: 877, column: 11, scope: !768)
!831 = !DILocation(line: 878, column: 11, scope: !768)
!832 = !DILocation(line: 878, column: 17, scope: !768)
!833 = !DILocation(line: 878, column: 25, scope: !768)
!834 = !DILocation(line: 878, column: 22, scope: !768)
!835 = !DILocation(line: 877, column: 3, scope: !768)
!836 = !DILocation(line: 879, column: 1, scope: !768)
!837 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 83, type: !838, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !49)
!838 = !DISubroutineType(types: !839)
!839 = !{!38, !38, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!841 = !DILocalVariable(name: "argc", arg: 1, scope: !837, file: !3, line: 83, type: !38)
!842 = !DILocation(line: 83, column: 11, scope: !837)
!843 = !DILocalVariable(name: "argv", arg: 2, scope: !837, file: !3, line: 83, type: !840)
!844 = !DILocation(line: 83, column: 24, scope: !837)
!845 = !DILocalVariable(name: "ignore", scope: !837, file: !3, line: 85, type: !153)
!846 = !DILocation(line: 85, column: 17, scope: !837)
!847 = !DILocation(line: 87, column: 21, scope: !837)
!848 = !DILocation(line: 87, column: 3, scope: !837)
!849 = !DILocation(line: 88, column: 3, scope: !837)
!850 = !DILocation(line: 89, column: 3, scope: !837)
!851 = !DILocation(line: 90, column: 3, scope: !837)
!852 = !DILocation(line: 92, column: 3, scope: !837)
!853 = !DILocalVariable(name: "mode", scope: !837, file: !3, line: 94, type: !5)
!854 = !DILocation(line: 94, column: 20, scope: !837)
!855 = !DILocation(line: 96, column: 3, scope: !837)
!856 = !DILocalVariable(name: "c", scope: !857, file: !3, line: 98, type: !38)
!857 = distinct !DILexicalBlock(scope: !837, file: !3, line: 97, column: 5)
!858 = !DILocation(line: 98, column: 11, scope: !857)
!859 = !DILocation(line: 98, column: 28, scope: !857)
!860 = !DILocation(line: 98, column: 34, scope: !857)
!861 = !DILocation(line: 98, column: 15, scope: !857)
!862 = !DILocation(line: 99, column: 11, scope: !863)
!863 = distinct !DILexicalBlock(scope: !857, file: !3, line: 99, column: 11)
!864 = !DILocation(line: 99, column: 13, scope: !863)
!865 = !DILocation(line: 99, column: 11, scope: !857)
!866 = !DILocation(line: 100, column: 9, scope: !863)
!867 = !DILocation(line: 101, column: 15, scope: !857)
!868 = !DILocation(line: 101, column: 7, scope: !857)
!869 = !DILocation(line: 103, column: 9, scope: !870)
!870 = distinct !DILexicalBlock(scope: !857, file: !3, line: 102, column: 9)
!871 = !DILocation(line: 105, column: 9, scope: !870)
!872 = !DILocation(line: 108, column: 16, scope: !870)
!873 = !DILocation(line: 109, column: 11, scope: !870)
!874 = !DILocation(line: 112, column: 32, scope: !870)
!875 = !DILocation(line: 113, column: 32, scope: !870)
!876 = !DILocation(line: 112, column: 20, scope: !870)
!877 = !DILocation(line: 112, column: 18, scope: !870)
!878 = !DILocation(line: 114, column: 11, scope: !870)
!879 = !DILocation(line: 117, column: 11, scope: !870)
!880 = distinct !{!880, !855, !881}
!881 = !DILocation(line: 119, column: 5, scope: !837)
!882 = !DILocation(line: 121, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !837, file: !3, line: 121, column: 7)
!884 = !DILocation(line: 121, column: 15, scope: !883)
!885 = !DILocation(line: 121, column: 12, scope: !883)
!886 = !DILocation(line: 121, column: 7, scope: !837)
!887 = !DILocation(line: 123, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !3, line: 122, column: 5)
!889 = !DILocation(line: 124, column: 7, scope: !888)
!890 = !DILocalVariable(name: "nproc", scope: !837, file: !3, line: 127, type: !153)
!891 = !DILocation(line: 127, column: 17, scope: !837)
!892 = !DILocation(line: 127, column: 41, scope: !837)
!893 = !DILocation(line: 127, column: 25, scope: !837)
!894 = !DILocation(line: 129, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !837, file: !3, line: 129, column: 7)
!896 = !DILocation(line: 129, column: 16, scope: !895)
!897 = !DILocation(line: 129, column: 14, scope: !895)
!898 = !DILocation(line: 129, column: 7, scope: !837)
!899 = !DILocation(line: 130, column: 14, scope: !895)
!900 = !DILocation(line: 130, column: 11, scope: !895)
!901 = !DILocation(line: 130, column: 5, scope: !895)
!902 = !DILocation(line: 132, column: 11, scope: !895)
!903 = !DILocation(line: 134, column: 20, scope: !837)
!904 = !DILocation(line: 134, column: 3, scope: !837)
!905 = !DILocation(line: 136, column: 3, scope: !837)
!906 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !70, file: !70, line: 50, type: !769, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !49)
!907 = !DILocalVariable(name: "file", arg: 1, scope: !906, file: !70, line: 50, type: !47)
!908 = !DILocation(line: 50, column: 41, scope: !906)
!909 = !DILocation(line: 52, column: 15, scope: !906)
!910 = !DILocation(line: 52, column: 13, scope: !906)
!911 = !DILocation(line: 53, column: 1, scope: !906)
!912 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !70, file: !70, line: 87, type: !913, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !49)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !74}
!915 = !DILocalVariable(name: "ignore", arg: 1, scope: !912, file: !70, line: 87, type: !74)
!916 = !DILocation(line: 87, column: 37, scope: !912)
!917 = !DILocation(line: 89, column: 18, scope: !912)
!918 = !DILocation(line: 89, column: 16, scope: !912)
!919 = !DILocation(line: 90, column: 1, scope: !912)
!920 = distinct !DISubprogram(name: "close_stdout", scope: !70, file: !70, line: 116, type: !107, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !49)
!921 = !DILocation(line: 118, column: 21, scope: !922)
!922 = distinct !DILexicalBlock(scope: !920, file: !70, line: 118, column: 7)
!923 = !DILocation(line: 118, column: 7, scope: !922)
!924 = !DILocation(line: 118, column: 29, scope: !922)
!925 = !DILocation(line: 119, column: 7, scope: !922)
!926 = !DILocation(line: 119, column: 12, scope: !922)
!927 = !DILocation(line: 119, column: 25, scope: !922)
!928 = !DILocation(line: 119, column: 28, scope: !922)
!929 = !DILocation(line: 119, column: 34, scope: !922)
!930 = !DILocation(line: 118, column: 7, scope: !920)
!931 = !DILocalVariable(name: "write_error", scope: !932, file: !70, line: 121, type: !47)
!932 = distinct !DILexicalBlock(scope: !922, file: !70, line: 120, column: 5)
!933 = !DILocation(line: 121, column: 19, scope: !932)
!934 = !DILocation(line: 121, column: 33, scope: !932)
!935 = !DILocation(line: 122, column: 11, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !70, line: 122, column: 11)
!937 = !DILocation(line: 122, column: 11, scope: !932)
!938 = !DILocation(line: 123, column: 9, scope: !936)
!939 = !DILocation(line: 126, column: 9, scope: !936)
!940 = !DILocation(line: 128, column: 14, scope: !932)
!941 = !DILocation(line: 128, column: 7, scope: !932)
!942 = !DILocation(line: 133, column: 42, scope: !943)
!943 = distinct !DILexicalBlock(scope: !920, file: !70, line: 133, column: 7)
!944 = !DILocation(line: 133, column: 28, scope: !943)
!945 = !DILocation(line: 133, column: 50, scope: !943)
!946 = !DILocation(line: 133, column: 7, scope: !920)
!947 = !DILocation(line: 134, column: 12, scope: !943)
!948 = !DILocation(line: 134, column: 5, scope: !943)
!949 = !DILocation(line: 135, column: 1, scope: !920)
!950 = distinct !DISubprogram(name: "verror", scope: !78, file: !78, line: 251, type: !951, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !49)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !38, !38, !47, !86}
!953 = !DILocalVariable(name: "status", arg: 1, scope: !950, file: !78, line: 251, type: !38)
!954 = !DILocation(line: 251, column: 1, scope: !950)
!955 = !DILocalVariable(name: "errnum", arg: 2, scope: !950, file: !78, line: 251, type: !38)
!956 = !DILocalVariable(name: "message", arg: 3, scope: !950, file: !78, line: 251, type: !47)
!957 = !DILocalVariable(name: "args", arg: 4, scope: !950, file: !78, line: 251, type: !86)
!958 = !DILocation(line: 261, column: 3, scope: !950)
!959 = !DILocation(line: 265, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !950, file: !78, line: 265, column: 7)
!961 = !DILocation(line: 265, column: 7, scope: !950)
!962 = !DILocation(line: 266, column: 7, scope: !960)
!963 = !DILocation(line: 266, column: 5, scope: !960)
!964 = !DILocation(line: 272, column: 16, scope: !965)
!965 = distinct !DILexicalBlock(scope: !960, file: !78, line: 268, column: 5)
!966 = !DILocation(line: 272, column: 32, scope: !965)
!967 = !DILocation(line: 272, column: 7, scope: !965)
!968 = !DILocation(line: 276, column: 3, scope: !950)
!969 = !DILocation(line: 282, column: 1, scope: !950)
!970 = distinct !DISubprogram(name: "flush_stdout", scope: !78, file: !78, line: 163, type: !107, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !49)
!971 = !DILocalVariable(name: "stdout_fd", scope: !970, file: !78, line: 166, type: !38)
!972 = !DILocation(line: 166, column: 7, scope: !970)
!973 = !DILocation(line: 172, column: 13, scope: !970)
!974 = !DILocation(line: 182, column: 12, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !78, line: 182, column: 7)
!976 = !DILocation(line: 182, column: 9, scope: !975)
!977 = !DILocation(line: 182, column: 22, scope: !975)
!978 = !DILocation(line: 182, column: 34, scope: !975)
!979 = !DILocation(line: 182, column: 25, scope: !975)
!980 = !DILocation(line: 182, column: 7, scope: !970)
!981 = !DILocation(line: 184, column: 5, scope: !975)
!982 = !DILocation(line: 185, column: 1, scope: !970)
!983 = distinct !DISubprogram(name: "error_tail", scope: !78, file: !78, line: 219, type: !951, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !49)
!984 = !DILocalVariable(name: "status", arg: 1, scope: !983, file: !78, line: 219, type: !38)
!985 = !DILocation(line: 219, column: 1, scope: !983)
!986 = !DILocalVariable(name: "errnum", arg: 2, scope: !983, file: !78, line: 219, type: !38)
!987 = !DILocalVariable(name: "message", arg: 3, scope: !983, file: !78, line: 219, type: !47)
!988 = !DILocalVariable(name: "args", arg: 4, scope: !983, file: !78, line: 219, type: !86)
!989 = !DILocation(line: 229, column: 13, scope: !983)
!990 = !DILocation(line: 229, column: 21, scope: !983)
!991 = !DILocation(line: 229, column: 3, scope: !983)
!992 = !DILocation(line: 232, column: 3, scope: !983)
!993 = !DILocation(line: 233, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !983, file: !78, line: 233, column: 7)
!995 = !DILocation(line: 233, column: 7, scope: !983)
!996 = !DILocation(line: 234, column: 26, scope: !994)
!997 = !DILocation(line: 234, column: 5, scope: !994)
!998 = !DILocation(line: 238, column: 3, scope: !983)
!999 = !DILocation(line: 240, column: 3, scope: !983)
!1000 = !DILocation(line: 241, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !983, file: !78, line: 241, column: 7)
!1002 = !DILocation(line: 241, column: 7, scope: !983)
!1003 = !DILocation(line: 242, column: 11, scope: !1001)
!1004 = !DILocation(line: 242, column: 5, scope: !1001)
!1005 = !DILocation(line: 243, column: 1, scope: !983)
!1006 = distinct !DISubprogram(name: "print_errno_message", scope: !78, file: !78, line: 188, type: !558, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !49)
!1007 = !DILocalVariable(name: "errnum", arg: 1, scope: !1006, file: !78, line: 188, type: !38)
!1008 = !DILocation(line: 188, column: 26, scope: !1006)
!1009 = !DILocalVariable(name: "s", scope: !1006, file: !78, line: 190, type: !47)
!1010 = !DILocation(line: 190, column: 15, scope: !1006)
!1011 = !DILocalVariable(name: "errbuf", scope: !1006, file: !78, line: 193, type: !1012)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8192, elements: !1013)
!1013 = !{!1014}
!1014 = !DISubrange(count: 1024)
!1015 = !DILocation(line: 193, column: 8, scope: !1006)
!1016 = !DILocation(line: 195, column: 21, scope: !1006)
!1017 = !DILocation(line: 195, column: 29, scope: !1006)
!1018 = !DILocation(line: 195, column: 7, scope: !1006)
!1019 = !DILocation(line: 195, column: 5, scope: !1006)
!1020 = !DILocation(line: 207, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1006, file: !78, line: 207, column: 7)
!1022 = !DILocation(line: 207, column: 7, scope: !1006)
!1023 = !DILocation(line: 208, column: 9, scope: !1021)
!1024 = !DILocation(line: 208, column: 7, scope: !1021)
!1025 = !DILocation(line: 208, column: 5, scope: !1021)
!1026 = !DILocation(line: 214, column: 12, scope: !1006)
!1027 = !DILocation(line: 214, column: 28, scope: !1006)
!1028 = !DILocation(line: 214, column: 3, scope: !1006)
!1029 = !DILocation(line: 216, column: 1, scope: !1006)
!1030 = distinct !DISubprogram(name: "is_open", scope: !78, file: !78, line: 145, type: !1031, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !49)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!38, !38}
!1033 = !DILocalVariable(name: "fd", arg: 1, scope: !1030, file: !78, line: 145, type: !38)
!1034 = !DILocation(line: 145, column: 14, scope: !1030)
!1035 = !DILocation(line: 157, column: 22, scope: !1030)
!1036 = !DILocation(line: 157, column: 15, scope: !1030)
!1037 = !DILocation(line: 157, column: 12, scope: !1030)
!1038 = !DILocation(line: 157, column: 3, scope: !1030)
!1039 = distinct !DISubprogram(name: "error", scope: !78, file: !78, line: 285, type: !1040, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !49)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !38, !38, !47, null}
!1042 = !DILocalVariable(name: "status", arg: 1, scope: !1039, file: !78, line: 285, type: !38)
!1043 = !DILocation(line: 285, column: 12, scope: !1039)
!1044 = !DILocalVariable(name: "errnum", arg: 2, scope: !1039, file: !78, line: 285, type: !38)
!1045 = !DILocation(line: 285, column: 24, scope: !1039)
!1046 = !DILocalVariable(name: "message", arg: 3, scope: !1039, file: !78, line: 285, type: !47)
!1047 = !DILocation(line: 285, column: 44, scope: !1039)
!1048 = !DILocalVariable(name: "ap", scope: !1039, file: !78, line: 287, type: !86)
!1049 = !DILocation(line: 287, column: 11, scope: !1039)
!1050 = !DILocation(line: 288, column: 3, scope: !1039)
!1051 = !DILocation(line: 289, column: 3, scope: !1039)
!1052 = !DILocation(line: 290, column: 3, scope: !1039)
!1053 = !DILocation(line: 291, column: 1, scope: !1039)
!1054 = !DILocalVariable(name: "status", arg: 1, scope: !83, file: !78, line: 298, type: !38)
!1055 = !DILocation(line: 298, column: 1, scope: !83)
!1056 = !DILocalVariable(name: "errnum", arg: 2, scope: !83, file: !78, line: 298, type: !38)
!1057 = !DILocalVariable(name: "file_name", arg: 3, scope: !83, file: !78, line: 298, type: !47)
!1058 = !DILocalVariable(name: "line_number", arg: 4, scope: !83, file: !78, line: 298, type: !7)
!1059 = !DILocalVariable(name: "message", arg: 5, scope: !83, file: !78, line: 298, type: !47)
!1060 = !DILocalVariable(name: "args", arg: 6, scope: !83, file: !78, line: 298, type: !86)
!1061 = !DILocation(line: 302, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !83, file: !78, line: 302, column: 7)
!1063 = !DILocation(line: 302, column: 7, scope: !83)
!1064 = !DILocation(line: 307, column: 11, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !78, line: 307, column: 11)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !78, line: 303, column: 5)
!1067 = !DILocation(line: 307, column: 30, scope: !1065)
!1068 = !DILocation(line: 307, column: 27, scope: !1065)
!1069 = !DILocation(line: 308, column: 11, scope: !1065)
!1070 = !DILocation(line: 308, column: 15, scope: !1065)
!1071 = !DILocation(line: 308, column: 28, scope: !1065)
!1072 = !DILocation(line: 308, column: 25, scope: !1065)
!1073 = !DILocation(line: 309, column: 15, scope: !1065)
!1074 = !DILocation(line: 309, column: 19, scope: !1065)
!1075 = !DILocation(line: 309, column: 33, scope: !1065)
!1076 = !DILocation(line: 310, column: 19, scope: !1065)
!1077 = !DILocation(line: 310, column: 22, scope: !1065)
!1078 = !DILocation(line: 310, column: 32, scope: !1065)
!1079 = !DILocation(line: 311, column: 19, scope: !1065)
!1080 = !DILocation(line: 311, column: 30, scope: !1065)
!1081 = !DILocation(line: 311, column: 45, scope: !1065)
!1082 = !DILocation(line: 311, column: 22, scope: !1065)
!1083 = !DILocation(line: 311, column: 56, scope: !1065)
!1084 = !DILocation(line: 307, column: 11, scope: !1066)
!1085 = !DILocation(line: 314, column: 9, scope: !1065)
!1086 = !DILocation(line: 316, column: 23, scope: !1066)
!1087 = !DILocation(line: 316, column: 21, scope: !1066)
!1088 = !DILocation(line: 317, column: 25, scope: !1066)
!1089 = !DILocation(line: 317, column: 23, scope: !1066)
!1090 = !DILocation(line: 318, column: 5, scope: !1066)
!1091 = !DILocation(line: 327, column: 3, scope: !83)
!1092 = !DILocation(line: 331, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !83, file: !78, line: 331, column: 7)
!1094 = !DILocation(line: 331, column: 7, scope: !83)
!1095 = !DILocation(line: 332, column: 7, scope: !1093)
!1096 = !DILocation(line: 332, column: 5, scope: !1093)
!1097 = !DILocation(line: 338, column: 16, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !78, line: 334, column: 5)
!1099 = !DILocation(line: 338, column: 31, scope: !1098)
!1100 = !DILocation(line: 338, column: 7, scope: !1098)
!1101 = !DILocation(line: 346, column: 12, scope: !83)
!1102 = !DILocation(line: 346, column: 20, scope: !83)
!1103 = !DILocation(line: 346, column: 30, scope: !83)
!1104 = !DILocation(line: 347, column: 12, scope: !83)
!1105 = !DILocation(line: 347, column: 23, scope: !83)
!1106 = !DILocation(line: 346, column: 3, scope: !83)
!1107 = !DILocation(line: 350, column: 3, scope: !83)
!1108 = !DILocation(line: 356, column: 1, scope: !83)
!1109 = distinct !DISubprogram(name: "error_at_line", scope: !78, file: !78, line: 359, type: !1110, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !49)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !38, !38, !47, !7, !47, null}
!1112 = !DILocalVariable(name: "status", arg: 1, scope: !1109, file: !78, line: 359, type: !38)
!1113 = !DILocation(line: 359, column: 20, scope: !1109)
!1114 = !DILocalVariable(name: "errnum", arg: 2, scope: !1109, file: !78, line: 359, type: !38)
!1115 = !DILocation(line: 359, column: 32, scope: !1109)
!1116 = !DILocalVariable(name: "file_name", arg: 3, scope: !1109, file: !78, line: 359, type: !47)
!1117 = !DILocation(line: 359, column: 52, scope: !1109)
!1118 = !DILocalVariable(name: "line_number", arg: 4, scope: !1109, file: !78, line: 360, type: !7)
!1119 = !DILocation(line: 360, column: 29, scope: !1109)
!1120 = !DILocalVariable(name: "message", arg: 5, scope: !1109, file: !78, line: 360, type: !47)
!1121 = !DILocation(line: 360, column: 54, scope: !1109)
!1122 = !DILocalVariable(name: "ap", scope: !1109, file: !78, line: 362, type: !86)
!1123 = !DILocation(line: 362, column: 11, scope: !1109)
!1124 = !DILocation(line: 363, column: 3, scope: !1109)
!1125 = !DILocation(line: 364, column: 3, scope: !1109)
!1126 = !DILocation(line: 366, column: 3, scope: !1109)
!1127 = !DILocation(line: 367, column: 1, scope: !1109)
!1128 = distinct !DISubprogram(name: "getprogname", scope: !239, file: !239, line: 54, type: !1129, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !49)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!47}
!1131 = !DILocation(line: 58, column: 10, scope: !1128)
!1132 = !DILocation(line: 58, column: 3, scope: !1128)
!1133 = distinct !DISubprogram(name: "num_processors", scope: !241, file: !241, line: 544, type: !1134, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !240, retainedNodes: !49)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!153, !5}
!1136 = !DILocalVariable(name: "query", arg: 1, scope: !1133, file: !241, line: 544, type: !5)
!1137 = !DILocation(line: 544, column: 34, scope: !1133)
!1138 = !DILocalVariable(name: "nproc_limit", scope: !1133, file: !241, line: 546, type: !153)
!1139 = !DILocation(line: 546, column: 21, scope: !1133)
!1140 = !DILocation(line: 550, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1133, file: !241, line: 550, column: 7)
!1142 = !DILocation(line: 550, column: 13, scope: !1141)
!1143 = !DILocation(line: 550, column: 7, scope: !1133)
!1144 = !DILocalVariable(name: "omp_env_threads", scope: !1145, file: !241, line: 552, type: !153)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !241, line: 551, column: 5)
!1146 = !DILocation(line: 552, column: 25, scope: !1145)
!1147 = !DILocation(line: 553, column: 28, scope: !1145)
!1148 = !DILocation(line: 553, column: 9, scope: !1145)
!1149 = !DILocalVariable(name: "omp_env_limit", scope: !1145, file: !241, line: 555, type: !153)
!1150 = !DILocation(line: 555, column: 25, scope: !1145)
!1151 = !DILocation(line: 556, column: 28, scope: !1145)
!1152 = !DILocation(line: 556, column: 9, scope: !1145)
!1153 = !DILocation(line: 557, column: 13, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1145, file: !241, line: 557, column: 11)
!1155 = !DILocation(line: 557, column: 11, scope: !1145)
!1156 = !DILocation(line: 558, column: 23, scope: !1154)
!1157 = !DILocation(line: 558, column: 9, scope: !1154)
!1158 = !DILocation(line: 560, column: 11, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1145, file: !241, line: 560, column: 11)
!1160 = !DILocation(line: 560, column: 11, scope: !1145)
!1161 = !DILocation(line: 561, column: 16, scope: !1159)
!1162 = !DILocation(line: 561, column: 9, scope: !1159)
!1163 = !DILocation(line: 563, column: 21, scope: !1145)
!1164 = !DILocation(line: 563, column: 19, scope: !1145)
!1165 = !DILocation(line: 564, column: 13, scope: !1145)
!1166 = !DILocation(line: 565, column: 5, scope: !1145)
!1167 = !DILocation(line: 568, column: 7, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1133, file: !241, line: 568, column: 7)
!1169 = !DILocation(line: 568, column: 13, scope: !1168)
!1170 = !DILocation(line: 568, column: 30, scope: !1168)
!1171 = !DILocation(line: 568, column: 33, scope: !1168)
!1172 = !DILocation(line: 568, column: 45, scope: !1168)
!1173 = !DILocation(line: 568, column: 7, scope: !1133)
!1174 = !DILocalVariable(name: "quota", scope: !1175, file: !241, line: 570, type: !153)
!1175 = distinct !DILexicalBlock(scope: !1168, file: !241, line: 569, column: 5)
!1176 = !DILocation(line: 570, column: 25, scope: !1175)
!1177 = !DILocation(line: 570, column: 33, scope: !1175)
!1178 = !DILocation(line: 571, column: 21, scope: !1175)
!1179 = !DILocation(line: 571, column: 19, scope: !1175)
!1180 = !DILocation(line: 572, column: 5, scope: !1175)
!1181 = !DILocation(line: 574, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1133, file: !241, line: 574, column: 7)
!1183 = !DILocation(line: 574, column: 19, scope: !1182)
!1184 = !DILocation(line: 574, column: 7, scope: !1133)
!1185 = !DILocalVariable(name: "nprocs", scope: !1186, file: !241, line: 576, type: !153)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !241, line: 575, column: 5)
!1187 = !DILocation(line: 576, column: 21, scope: !1186)
!1188 = !DILocation(line: 576, column: 56, scope: !1186)
!1189 = !DILocation(line: 576, column: 30, scope: !1186)
!1190 = !DILocation(line: 577, column: 21, scope: !1186)
!1191 = !DILocation(line: 577, column: 19, scope: !1186)
!1192 = !DILocation(line: 578, column: 5, scope: !1186)
!1193 = !DILocation(line: 580, column: 10, scope: !1133)
!1194 = !DILocation(line: 580, column: 3, scope: !1133)
!1195 = !DILocation(line: 581, column: 1, scope: !1133)
!1196 = distinct !DISubprogram(name: "parse_omp_threads", scope: !241, file: !241, line: 515, type: !1197, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !240, retainedNodes: !49)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!153, !47}
!1199 = !DILocalVariable(name: "threads", arg: 1, scope: !1196, file: !241, line: 515, type: !47)
!1200 = !DILocation(line: 515, column: 32, scope: !1196)
!1201 = !DILocation(line: 517, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1196, file: !241, line: 517, column: 7)
!1203 = !DILocation(line: 517, column: 15, scope: !1202)
!1204 = !DILocation(line: 517, column: 7, scope: !1196)
!1205 = !DILocation(line: 518, column: 5, scope: !1202)
!1206 = !DILocation(line: 522, column: 3, scope: !1196)
!1207 = !DILocation(line: 522, column: 11, scope: !1196)
!1208 = !DILocation(line: 522, column: 10, scope: !1196)
!1209 = !DILocation(line: 522, column: 19, scope: !1196)
!1210 = !DILocation(line: 522, column: 27, scope: !1196)
!1211 = !DILocation(line: 522, column: 42, scope: !1196)
!1212 = !DILocation(line: 522, column: 41, scope: !1196)
!1213 = !DILocation(line: 522, column: 30, scope: !1196)
!1214 = !DILocation(line: 0, scope: !1196)
!1215 = !DILocation(line: 523, column: 12, scope: !1196)
!1216 = distinct !{!1216, !1206, !1215, !652}
!1217 = !DILocation(line: 526, column: 19, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1196, file: !241, line: 526, column: 7)
!1219 = !DILocation(line: 526, column: 18, scope: !1218)
!1220 = !DILocation(line: 526, column: 7, scope: !1218)
!1221 = !DILocation(line: 526, column: 7, scope: !1196)
!1222 = !DILocalVariable(name: "endptr", scope: !1223, file: !241, line: 528, type: !35)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !241, line: 527, column: 5)
!1224 = !DILocation(line: 528, column: 13, scope: !1223)
!1225 = !DILocalVariable(name: "value", scope: !1223, file: !241, line: 529, type: !153)
!1226 = !DILocation(line: 529, column: 25, scope: !1223)
!1227 = !DILocation(line: 529, column: 42, scope: !1223)
!1228 = !DILocation(line: 529, column: 33, scope: !1223)
!1229 = !DILocation(line: 530, column: 7, scope: !1223)
!1230 = !DILocation(line: 530, column: 15, scope: !1223)
!1231 = !DILocation(line: 530, column: 14, scope: !1223)
!1232 = !DILocation(line: 530, column: 22, scope: !1223)
!1233 = !DILocation(line: 530, column: 30, scope: !1223)
!1234 = !DILocation(line: 530, column: 45, scope: !1223)
!1235 = !DILocation(line: 530, column: 44, scope: !1223)
!1236 = !DILocation(line: 530, column: 33, scope: !1223)
!1237 = !DILocation(line: 0, scope: !1223)
!1238 = !DILocation(line: 531, column: 15, scope: !1223)
!1239 = distinct !{!1239, !1229, !1238, !652}
!1240 = !DILocation(line: 532, column: 12, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1223, file: !241, line: 532, column: 11)
!1242 = !DILocation(line: 532, column: 11, scope: !1241)
!1243 = !DILocation(line: 532, column: 19, scope: !1241)
!1244 = !DILocation(line: 532, column: 11, scope: !1223)
!1245 = !DILocation(line: 533, column: 16, scope: !1241)
!1246 = !DILocation(line: 533, column: 9, scope: !1241)
!1247 = !DILocation(line: 536, column: 17, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1241, file: !241, line: 536, column: 16)
!1249 = !DILocation(line: 536, column: 16, scope: !1248)
!1250 = !DILocation(line: 536, column: 24, scope: !1248)
!1251 = !DILocation(line: 536, column: 16, scope: !1241)
!1252 = !DILocation(line: 537, column: 16, scope: !1248)
!1253 = !DILocation(line: 537, column: 9, scope: !1248)
!1254 = !DILocation(line: 538, column: 5, scope: !1223)
!1255 = !DILocation(line: 540, column: 3, scope: !1196)
!1256 = !DILocation(line: 541, column: 1, scope: !1196)
!1257 = distinct !DISubprogram(name: "cpu_quota", scope: !241, file: !241, line: 487, type: !1258, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !240, retainedNodes: !49)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!153}
!1260 = !DILocalVariable(name: "quota", scope: !1257, file: !241, line: 489, type: !153)
!1261 = !DILocation(line: 489, column: 21, scope: !1257)
!1262 = !DILocation(line: 494, column: 11, scope: !1257)
!1263 = !DILocation(line: 494, column: 3, scope: !1257)
!1264 = !DILocation(line: 500, column: 15, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1257, file: !241, line: 495, column: 5)
!1266 = !DILocation(line: 501, column: 9, scope: !1265)
!1267 = !DILocation(line: 503, column: 17, scope: !1265)
!1268 = !DILocation(line: 503, column: 15, scope: !1265)
!1269 = !DILocation(line: 504, column: 9, scope: !1265)
!1270 = !DILocation(line: 509, column: 10, scope: !1257)
!1271 = !DILocation(line: 509, column: 3, scope: !1257)
!1272 = distinct !DISubprogram(name: "num_processors_available", scope: !241, file: !241, line: 238, type: !1134, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !240, retainedNodes: !49)
!1273 = !DILocalVariable(name: "query", arg: 1, scope: !1272, file: !241, line: 238, type: !5)
!1274 = !DILocation(line: 238, column: 44, scope: !1272)
!1275 = !DILocation(line: 255, column: 7, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !241, line: 255, column: 7)
!1277 = !DILocation(line: 255, column: 13, scope: !1276)
!1278 = !DILocation(line: 255, column: 7, scope: !1272)
!1279 = !DILocalVariable(name: "nprocs", scope: !1280, file: !241, line: 259, type: !153)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !241, line: 258, column: 7)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !241, line: 256, column: 5)
!1282 = !DILocation(line: 259, column: 23, scope: !1280)
!1283 = !DILocation(line: 259, column: 32, scope: !1280)
!1284 = !DILocation(line: 261, column: 13, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !241, line: 261, column: 13)
!1286 = !DILocation(line: 261, column: 20, scope: !1285)
!1287 = !DILocation(line: 261, column: 13, scope: !1280)
!1288 = !DILocation(line: 262, column: 18, scope: !1285)
!1289 = !DILocation(line: 262, column: 11, scope: !1285)
!1290 = !DILocalVariable(name: "nprocs", scope: !1291, file: !241, line: 268, type: !465)
!1291 = distinct !DILexicalBlock(scope: !1281, file: !241, line: 266, column: 7)
!1292 = !DILocation(line: 268, column: 18, scope: !1291)
!1293 = !DILocation(line: 268, column: 27, scope: !1291)
!1294 = !DILocation(line: 269, column: 13, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !241, line: 269, column: 13)
!1296 = !DILocation(line: 269, column: 20, scope: !1295)
!1297 = !DILocation(line: 269, column: 13, scope: !1291)
!1298 = !DILocation(line: 270, column: 18, scope: !1295)
!1299 = !DILocation(line: 270, column: 11, scope: !1295)
!1300 = !DILocation(line: 273, column: 5, scope: !1281)
!1301 = !DILocalVariable(name: "nprocs", scope: !1302, file: !241, line: 279, type: !465)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !241, line: 277, column: 7)
!1303 = distinct !DILexicalBlock(scope: !1276, file: !241, line: 275, column: 5)
!1304 = !DILocation(line: 279, column: 18, scope: !1302)
!1305 = !DILocation(line: 279, column: 27, scope: !1302)
!1306 = !DILocation(line: 287, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !241, line: 287, column: 13)
!1308 = !DILocation(line: 287, column: 20, scope: !1307)
!1309 = !DILocation(line: 287, column: 25, scope: !1307)
!1310 = !DILocation(line: 287, column: 28, scope: !1307)
!1311 = !DILocation(line: 287, column: 35, scope: !1307)
!1312 = !DILocation(line: 287, column: 13, scope: !1302)
!1313 = !DILocalVariable(name: "nprocs_current", scope: !1314, file: !241, line: 289, type: !153)
!1314 = distinct !DILexicalBlock(scope: !1307, file: !241, line: 288, column: 11)
!1315 = !DILocation(line: 289, column: 27, scope: !1314)
!1316 = !DILocation(line: 289, column: 44, scope: !1314)
!1317 = !DILocation(line: 291, column: 45, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !241, line: 291, column: 45)
!1319 = !DILocation(line: 291, column: 62, scope: !1318)
!1320 = !DILocation(line: 291, column: 60, scope: !1318)
!1321 = !DILocation(line: 291, column: 45, scope: !1314)
!1322 = !DILocation(line: 292, column: 24, scope: !1318)
!1323 = !DILocation(line: 292, column: 22, scope: !1318)
!1324 = !DILocation(line: 292, column: 15, scope: !1318)
!1325 = !DILocation(line: 293, column: 11, scope: !1314)
!1326 = !DILocation(line: 296, column: 13, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1302, file: !241, line: 296, column: 13)
!1328 = !DILocation(line: 296, column: 20, scope: !1327)
!1329 = !DILocation(line: 296, column: 13, scope: !1302)
!1330 = !DILocation(line: 297, column: 18, scope: !1327)
!1331 = !DILocation(line: 297, column: 11, scope: !1327)
!1332 = !DILocation(line: 357, column: 3, scope: !1272)
!1333 = !DILocation(line: 358, column: 1, scope: !1272)
!1334 = distinct !DISubprogram(name: "num_processors_via_affinity_mask", scope: !241, file: !241, line: 73, type: !1258, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !240, retainedNodes: !49)
!1335 = !DILocalVariable(name: "alloc_count", scope: !1336, file: !241, line: 137, type: !7)
!1336 = distinct !DILexicalBlock(scope: !1334, file: !241, line: 136, column: 3)
!1337 = !DILocation(line: 137, column: 18, scope: !1336)
!1338 = !DILocation(line: 138, column: 5, scope: !1336)
!1339 = !DILocalVariable(name: "set", scope: !1340, file: !241, line: 140, type: !1343)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !241, line: 139, column: 7)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !241, line: 138, column: 5)
!1342 = distinct !DILexicalBlock(scope: !1336, file: !241, line: 138, column: 5)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !1345, line: 42, baseType: !1346)
!1345 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/cpu-set.h", directory: "", checksumkind: CSK_MD5, checksum: "9b78eb5e247ecb71c5de90bcf65db505")
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1345, line: 39, size: 1024, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !1346, file: !1345, line: 41, baseType: !1349, size: 1024)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1350, size: 1024, elements: !1351)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !1345, line: 32, baseType: !153)
!1351 = !{!1352}
!1352 = !DISubrange(count: 16)
!1353 = !DILocation(line: 140, column: 20, scope: !1340)
!1354 = !DILocation(line: 140, column: 26, scope: !1340)
!1355 = !DILocation(line: 141, column: 13, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1340, file: !241, line: 141, column: 13)
!1357 = !DILocation(line: 141, column: 17, scope: !1356)
!1358 = !DILocation(line: 141, column: 13, scope: !1340)
!1359 = !DILocation(line: 143, column: 11, scope: !1356)
!1360 = !DILocalVariable(name: "size", scope: !1340, file: !241, line: 144, type: !7)
!1361 = !DILocation(line: 144, column: 22, scope: !1340)
!1362 = !DILocation(line: 144, column: 29, scope: !1340)
!1363 = !DILocation(line: 145, column: 35, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1340, file: !241, line: 145, column: 13)
!1365 = !DILocation(line: 145, column: 41, scope: !1364)
!1366 = !DILocation(line: 145, column: 13, scope: !1364)
!1367 = !DILocation(line: 145, column: 46, scope: !1364)
!1368 = !DILocation(line: 145, column: 13, scope: !1340)
!1369 = !DILocalVariable(name: "count", scope: !1370, file: !241, line: 147, type: !7)
!1370 = distinct !DILexicalBlock(scope: !1364, file: !241, line: 146, column: 11)
!1371 = !DILocation(line: 147, column: 26, scope: !1370)
!1372 = !DILocation(line: 147, column: 34, scope: !1370)
!1373 = !DILocation(line: 148, column: 13, scope: !1370)
!1374 = !DILocation(line: 149, column: 20, scope: !1370)
!1375 = !DILocation(line: 149, column: 13, scope: !1370)
!1376 = !DILocation(line: 151, column: 13, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1340, file: !241, line: 151, column: 13)
!1378 = !DILocation(line: 151, column: 19, scope: !1377)
!1379 = !DILocation(line: 151, column: 13, scope: !1340)
!1380 = !DILocation(line: 154, column: 13, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !241, line: 152, column: 11)
!1382 = !DILocation(line: 155, column: 13, scope: !1381)
!1383 = !DILocation(line: 157, column: 9, scope: !1340)
!1384 = !DILocation(line: 159, column: 21, scope: !1340)
!1385 = !DILocation(line: 160, column: 13, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1340, file: !241, line: 160, column: 13)
!1387 = !DILocation(line: 160, column: 25, scope: !1386)
!1388 = !DILocation(line: 160, column: 13, scope: !1340)
!1389 = !DILocation(line: 162, column: 11, scope: !1386)
!1390 = !DILocation(line: 138, column: 5, scope: !1341)
!1391 = distinct !{!1391, !1392, !1393}
!1392 = !DILocation(line: 138, column: 5, scope: !1342)
!1393 = !DILocation(line: 163, column: 7, scope: !1342)
!1394 = !DILocalVariable(name: "set", scope: !1395, file: !241, line: 167, type: !1344)
!1395 = distinct !DILexicalBlock(scope: !1334, file: !241, line: 166, column: 3)
!1396 = !DILocation(line: 167, column: 15, scope: !1395)
!1397 = !DILocation(line: 169, column: 9, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !241, line: 169, column: 9)
!1399 = !DILocation(line: 169, column: 51, scope: !1398)
!1400 = !DILocation(line: 169, column: 9, scope: !1395)
!1401 = !DILocalVariable(name: "count", scope: !1402, file: !241, line: 171, type: !153)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !241, line: 170, column: 7)
!1403 = !DILocation(line: 171, column: 23, scope: !1402)
!1404 = !DILocation(line: 175, column: 17, scope: !1402)
!1405 = !DILocation(line: 175, column: 15, scope: !1402)
!1406 = !DILocation(line: 182, column: 13, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !241, line: 182, column: 13)
!1408 = !DILocation(line: 182, column: 19, scope: !1407)
!1409 = !DILocation(line: 182, column: 13, scope: !1402)
!1410 = !DILocation(line: 183, column: 18, scope: !1407)
!1411 = !DILocation(line: 183, column: 11, scope: !1407)
!1412 = !DILocation(line: 184, column: 7, scope: !1402)
!1413 = !DILocation(line: 231, column: 3, scope: !1334)
!1414 = !DILocation(line: 232, column: 1, scope: !1334)
!1415 = distinct !DISubprogram(name: "get_cgroup2_cpu_quota", scope: !241, file: !241, line: 400, type: !1258, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !240, retainedNodes: !49)
!1416 = !DILocalVariable(name: "cpu_quota", scope: !1415, file: !241, line: 402, type: !153)
!1417 = !DILocation(line: 402, column: 21, scope: !1415)
!1418 = !DILocalVariable(name: "fp", scope: !1415, file: !241, line: 404, type: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1421, line: 7, baseType: !1422)
!1421 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1423, line: 49, size: 1728, elements: !1424)
!1423 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1440, !1442, !1443, !1444, !1446, !1447, !1449, !1453, !1456, !1458, !1461, !1464, !1465, !1466, !1467, !1468}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1422, file: !1423, line: 51, baseType: !38, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1422, file: !1423, line: 54, baseType: !35, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1422, file: !1423, line: 55, baseType: !35, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1422, file: !1423, line: 56, baseType: !35, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1422, file: !1423, line: 57, baseType: !35, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1422, file: !1423, line: 58, baseType: !35, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1422, file: !1423, line: 59, baseType: !35, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1422, file: !1423, line: 60, baseType: !35, size: 64, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1422, file: !1423, line: 61, baseType: !35, size: 64, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1422, file: !1423, line: 64, baseType: !35, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1422, file: !1423, line: 65, baseType: !35, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1422, file: !1423, line: 66, baseType: !35, size: 64, offset: 704)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1422, file: !1423, line: 68, baseType: !1438, size: 64, offset: 768)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1423, line: 36, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1422, file: !1423, line: 70, baseType: !1441, size: 64, offset: 832)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1422, file: !1423, line: 72, baseType: !38, size: 32, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1422, file: !1423, line: 73, baseType: !38, size: 32, offset: 928)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1422, file: !1423, line: 74, baseType: !1445, size: 64, offset: 960)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !513, line: 152, baseType: !465)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1422, file: !1423, line: 77, baseType: !39, size: 16, offset: 1024)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1422, file: !1423, line: 78, baseType: !1448, size: 8, offset: 1040)
!1448 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1422, file: !1423, line: 79, baseType: !1450, size: 8, offset: 1048)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !1451)
!1451 = !{!1452}
!1452 = !DISubrange(count: 1)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1422, file: !1423, line: 81, baseType: !1454, size: 64, offset: 1088)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1423, line: 43, baseType: null)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1422, file: !1423, line: 89, baseType: !1457, size: 64, offset: 1152)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !513, line: 153, baseType: !465)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1422, file: !1423, line: 91, baseType: !1459, size: 64, offset: 1216)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1423, line: 37, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1422, file: !1423, line: 92, baseType: !1462, size: 64, offset: 1280)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1423, line: 38, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1422, file: !1423, line: 93, baseType: !1441, size: 64, offset: 1344)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1422, file: !1423, line: 94, baseType: !37, size: 64, offset: 1408)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1422, file: !1423, line: 95, baseType: !151, size: 64, offset: 1472)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1422, file: !1423, line: 96, baseType: !38, size: 32, offset: 1536)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1422, file: !1423, line: 98, baseType: !1469, size: 160, offset: 1568)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !1470)
!1470 = !{!1471}
!1471 = !DISubrange(count: 20)
!1472 = !DILocation(line: 404, column: 9, scope: !1415)
!1473 = !DILocation(line: 404, column: 14, scope: !1415)
!1474 = !DILocation(line: 405, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1415, file: !241, line: 405, column: 7)
!1476 = !DILocation(line: 405, column: 7, scope: !1415)
!1477 = !DILocation(line: 406, column: 12, scope: !1475)
!1478 = !DILocation(line: 406, column: 5, scope: !1475)
!1479 = !DILocalVariable(name: "cgroup", scope: !1415, file: !241, line: 409, type: !35)
!1480 = !DILocation(line: 409, column: 9, scope: !1415)
!1481 = !DILocalVariable(name: "cgroup_str", scope: !1415, file: !241, line: 410, type: !35)
!1482 = !DILocation(line: 410, column: 9, scope: !1415)
!1483 = !DILocalVariable(name: "cgroup_size", scope: !1415, file: !241, line: 411, type: !151)
!1484 = !DILocation(line: 411, column: 10, scope: !1415)
!1485 = !DILocalVariable(name: "read", scope: !1415, file: !241, line: 412, type: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1487, line: 108, baseType: !1488)
!1487 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !513, line: 194, baseType: !465)
!1489 = !DILocation(line: 412, column: 11, scope: !1415)
!1490 = !DILocation(line: 413, column: 3, scope: !1415)
!1491 = !DILocation(line: 413, column: 54, scope: !1415)
!1492 = !DILocation(line: 413, column: 18, scope: !1415)
!1493 = !DILocation(line: 413, column: 16, scope: !1415)
!1494 = !DILocation(line: 413, column: 59, scope: !1415)
!1495 = !DILocation(line: 415, column: 20, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !241, line: 415, column: 11)
!1497 = distinct !DILexicalBlock(scope: !1415, file: !241, line: 414, column: 5)
!1498 = !DILocation(line: 415, column: 11, scope: !1496)
!1499 = !DILocation(line: 415, column: 43, scope: !1496)
!1500 = !DILocation(line: 415, column: 11, scope: !1497)
!1501 = !DILocalVariable(name: "end", scope: !1502, file: !241, line: 417, type: !35)
!1502 = distinct !DILexicalBlock(scope: !1496, file: !241, line: 416, column: 9)
!1503 = !DILocation(line: 417, column: 17, scope: !1502)
!1504 = !DILocation(line: 417, column: 23, scope: !1502)
!1505 = !DILocation(line: 417, column: 36, scope: !1502)
!1506 = !DILocation(line: 417, column: 34, scope: !1502)
!1507 = !DILocation(line: 417, column: 41, scope: !1502)
!1508 = !DILocation(line: 418, column: 16, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1502, file: !241, line: 418, column: 15)
!1510 = !DILocation(line: 418, column: 15, scope: !1509)
!1511 = !DILocation(line: 418, column: 20, scope: !1509)
!1512 = !DILocation(line: 418, column: 15, scope: !1502)
!1513 = !DILocation(line: 419, column: 14, scope: !1509)
!1514 = !DILocation(line: 419, column: 18, scope: !1509)
!1515 = !DILocation(line: 419, column: 13, scope: !1509)
!1516 = !DILocation(line: 420, column: 20, scope: !1502)
!1517 = !DILocation(line: 420, column: 31, scope: !1502)
!1518 = !DILocation(line: 420, column: 18, scope: !1502)
!1519 = !DILocation(line: 421, column: 11, scope: !1502)
!1520 = distinct !{!1520, !1490, !1521, !652}
!1521 = !DILocation(line: 423, column: 5, scope: !1415)
!1522 = !DILocation(line: 424, column: 11, scope: !1415)
!1523 = !DILocation(line: 424, column: 3, scope: !1415)
!1524 = !DILocalVariable(name: "mount", scope: !1415, file: !241, line: 426, type: !35)
!1525 = !DILocation(line: 426, column: 9, scope: !1415)
!1526 = !DILocation(line: 427, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1415, file: !241, line: 427, column: 7)
!1528 = !DILocation(line: 427, column: 14, scope: !1527)
!1529 = !DILocation(line: 427, column: 28, scope: !1527)
!1530 = !DILocation(line: 427, column: 26, scope: !1527)
!1531 = !DILocation(line: 427, column: 7, scope: !1415)
!1532 = !DILocation(line: 428, column: 12, scope: !1527)
!1533 = !DILocation(line: 428, column: 5, scope: !1527)
!1534 = !DILocalVariable(name: "quota_str", scope: !1415, file: !241, line: 431, type: !35)
!1535 = !DILocation(line: 431, column: 9, scope: !1415)
!1536 = !DILocalVariable(name: "quota_size", scope: !1415, file: !241, line: 432, type: !151)
!1537 = !DILocation(line: 432, column: 10, scope: !1415)
!1538 = !DILocation(line: 433, column: 3, scope: !1415)
!1539 = !DILocation(line: 433, column: 10, scope: !1415)
!1540 = !DILocation(line: 433, column: 17, scope: !1415)
!1541 = !DILocation(line: 433, column: 21, scope: !1415)
!1542 = !DILocation(line: 433, column: 20, scope: !1415)
!1543 = !DILocation(line: 0, scope: !1415)
!1544 = !DILocalVariable(name: "cpu_max_file", scope: !1545, file: !241, line: 440, type: !1546)
!1545 = distinct !DILexicalBlock(scope: !1415, file: !241, line: 434, column: 5)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32768, elements: !1547)
!1547 = !{!1548}
!1548 = !DISubrange(count: 4096)
!1549 = !DILocation(line: 440, column: 12, scope: !1545)
!1550 = !DILocation(line: 441, column: 17, scope: !1545)
!1551 = !DILocation(line: 442, column: 33, scope: !1545)
!1552 = !DILocation(line: 442, column: 40, scope: !1545)
!1553 = !DILocation(line: 441, column: 7, scope: !1545)
!1554 = !DILocation(line: 444, column: 24, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1545, file: !241, line: 444, column: 11)
!1556 = !DILocation(line: 444, column: 17, scope: !1555)
!1557 = !DILocation(line: 444, column: 15, scope: !1555)
!1558 = !DILocation(line: 445, column: 11, scope: !1555)
!1559 = !DILocation(line: 445, column: 48, scope: !1555)
!1560 = !DILocation(line: 445, column: 14, scope: !1555)
!1561 = !DILocation(line: 445, column: 52, scope: !1555)
!1562 = !DILocation(line: 446, column: 11, scope: !1555)
!1563 = !DILocation(line: 446, column: 23, scope: !1555)
!1564 = !DILocation(line: 446, column: 14, scope: !1555)
!1565 = !DILocation(line: 446, column: 44, scope: !1555)
!1566 = !DILocation(line: 444, column: 11, scope: !1545)
!1567 = !DILocalVariable(name: "quota", scope: !1568, file: !241, line: 448, type: !465)
!1568 = distinct !DILexicalBlock(scope: !1555, file: !241, line: 447, column: 9)
!1569 = !DILocation(line: 448, column: 16, scope: !1568)
!1570 = !DILocalVariable(name: "period", scope: !1568, file: !241, line: 448, type: !465)
!1571 = !DILocation(line: 448, column: 23, scope: !1568)
!1572 = !DILocation(line: 449, column: 23, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1568, file: !241, line: 449, column: 15)
!1574 = !DILocation(line: 449, column: 15, scope: !1573)
!1575 = !DILocation(line: 449, column: 62, scope: !1573)
!1576 = !DILocation(line: 449, column: 67, scope: !1573)
!1577 = !DILocation(line: 449, column: 70, scope: !1573)
!1578 = !DILocation(line: 449, column: 15, scope: !1568)
!1579 = !DILocalVariable(name: "ncpus", scope: !1580, file: !241, line: 451, type: !464)
!1580 = distinct !DILexicalBlock(scope: !1573, file: !241, line: 450, column: 13)
!1581 = !DILocation(line: 451, column: 22, scope: !1580)
!1582 = !DILocation(line: 451, column: 38, scope: !1580)
!1583 = !DILocation(line: 451, column: 30, scope: !1580)
!1584 = !DILocation(line: 451, column: 46, scope: !1580)
!1585 = !DILocation(line: 451, column: 44, scope: !1580)
!1586 = !DILocation(line: 452, column: 19, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1580, file: !241, line: 452, column: 19)
!1588 = !DILocation(line: 452, column: 29, scope: !1587)
!1589 = !DILocation(line: 452, column: 42, scope: !1587)
!1590 = !DILocation(line: 452, column: 45, scope: !1587)
!1591 = !DILocation(line: 452, column: 53, scope: !1587)
!1592 = !DILocation(line: 452, column: 51, scope: !1587)
!1593 = !DILocation(line: 452, column: 19, scope: !1580)
!1594 = !DILocation(line: 454, column: 31, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1587, file: !241, line: 453, column: 17)
!1596 = !DILocation(line: 454, column: 29, scope: !1595)
!1597 = !DILocation(line: 456, column: 23, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1595, file: !241, line: 456, column: 23)
!1599 = !DILocation(line: 456, column: 33, scope: !1598)
!1600 = !DILocation(line: 456, column: 23, scope: !1595)
!1601 = !DILocation(line: 457, column: 22, scope: !1598)
!1602 = !DILocation(line: 457, column: 29, scope: !1598)
!1603 = !DILocation(line: 457, column: 21, scope: !1598)
!1604 = !DILocation(line: 458, column: 17, scope: !1595)
!1605 = !DILocation(line: 459, column: 13, scope: !1580)
!1606 = !DILocation(line: 460, column: 9, scope: !1568)
!1607 = !DILocation(line: 462, column: 11, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1545, file: !241, line: 462, column: 11)
!1609 = !DILocation(line: 462, column: 11, scope: !1545)
!1610 = !DILocation(line: 463, column: 17, scope: !1608)
!1611 = !DILocation(line: 463, column: 9, scope: !1608)
!1612 = !DILocalVariable(name: "last_sep", scope: !1545, file: !241, line: 465, type: !35)
!1613 = !DILocation(line: 465, column: 13, scope: !1545)
!1614 = !DILocation(line: 465, column: 33, scope: !1545)
!1615 = !DILocation(line: 465, column: 24, scope: !1545)
!1616 = !DILocation(line: 466, column: 13, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1545, file: !241, line: 466, column: 11)
!1618 = !DILocation(line: 466, column: 11, scope: !1545)
!1619 = !DILocation(line: 467, column: 9, scope: !1617)
!1620 = !DILocation(line: 468, column: 11, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1545, file: !241, line: 468, column: 11)
!1622 = !DILocation(line: 468, column: 23, scope: !1621)
!1623 = !DILocation(line: 468, column: 20, scope: !1621)
!1624 = !DILocation(line: 468, column: 30, scope: !1621)
!1625 = !DILocation(line: 468, column: 35, scope: !1621)
!1626 = !DILocation(line: 468, column: 42, scope: !1621)
!1627 = !DILocation(line: 468, column: 33, scope: !1621)
!1628 = !DILocation(line: 468, column: 11, scope: !1545)
!1629 = !DILocation(line: 469, column: 11, scope: !1621)
!1630 = !DILocation(line: 469, column: 18, scope: !1621)
!1631 = !DILocation(line: 469, column: 23, scope: !1621)
!1632 = !DILocation(line: 469, column: 9, scope: !1621)
!1633 = !DILocation(line: 471, column: 10, scope: !1621)
!1634 = !DILocation(line: 471, column: 19, scope: !1621)
!1635 = distinct !{!1635, !1538, !1636, !652}
!1636 = !DILocation(line: 472, column: 5, scope: !1415)
!1637 = !DILocation(line: 474, column: 9, scope: !1415)
!1638 = !DILocation(line: 474, column: 3, scope: !1415)
!1639 = !DILocation(line: 475, column: 9, scope: !1415)
!1640 = !DILocation(line: 475, column: 3, scope: !1415)
!1641 = !DILocation(line: 476, column: 9, scope: !1415)
!1642 = !DILocation(line: 476, column: 3, scope: !1415)
!1643 = !DILocation(line: 478, column: 10, scope: !1415)
!1644 = !DILocation(line: 478, column: 3, scope: !1415)
!1645 = !DILocation(line: 479, column: 1, scope: !1415)
!1646 = distinct !DISubprogram(name: "cgroup2_mount", scope: !241, file: !241, line: 367, type: !1647, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !240, retainedNodes: !49)
!1647 = !DISubroutineType(types: !113)
!1648 = !DILocation(line: 371, column: 7, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !241, line: 371, column: 7)
!1650 = !DILocation(line: 371, column: 58, scope: !1649)
!1651 = !DILocation(line: 371, column: 7, scope: !1646)
!1652 = !DILocation(line: 372, column: 12, scope: !1649)
!1653 = !DILocation(line: 372, column: 5, scope: !1649)
!1654 = !DILocalVariable(name: "ret", scope: !1646, file: !241, line: 374, type: !35)
!1655 = !DILocation(line: 374, column: 9, scope: !1646)
!1656 = !DILocalVariable(name: "fp", scope: !1646, file: !241, line: 378, type: !1419)
!1657 = !DILocation(line: 378, column: 9, scope: !1646)
!1658 = !DILocation(line: 378, column: 14, scope: !1646)
!1659 = !DILocation(line: 379, column: 9, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1646, file: !241, line: 379, column: 7)
!1661 = !DILocation(line: 379, column: 7, scope: !1646)
!1662 = !DILocation(line: 380, column: 5, scope: !1660)
!1663 = !DILocalVariable(name: "mnt", scope: !1646, file: !241, line: 381, type: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !1666, line: 51, size: 320, elements: !1667)
!1666 = !DIFile(filename: "/usr/include/mntent.h", directory: "", checksumkind: CSK_MD5, checksum: "0070e4c80f74d781196301da01c9ab34")
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !1665, file: !1666, line: 53, baseType: !35, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !1665, file: !1666, line: 54, baseType: !35, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !1665, file: !1666, line: 55, baseType: !35, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !1665, file: !1666, line: 56, baseType: !35, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !1665, file: !1666, line: 57, baseType: !38, size: 32, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !1665, file: !1666, line: 58, baseType: !38, size: 32, offset: 288)
!1674 = !DILocation(line: 381, column: 18, scope: !1646)
!1675 = !DILocation(line: 382, column: 3, scope: !1646)
!1676 = !DILocation(line: 382, column: 28, scope: !1646)
!1677 = !DILocation(line: 382, column: 17, scope: !1646)
!1678 = !DILocation(line: 382, column: 15, scope: !1646)
!1679 = !DILocation(line: 382, column: 33, scope: !1646)
!1680 = !DILocation(line: 384, column: 18, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !241, line: 384, column: 11)
!1682 = distinct !DILexicalBlock(scope: !1646, file: !241, line: 383, column: 5)
!1683 = !DILocation(line: 384, column: 23, scope: !1681)
!1684 = !DILocation(line: 384, column: 11, scope: !1681)
!1685 = !DILocation(line: 384, column: 11, scope: !1682)
!1686 = !DILocation(line: 386, column: 25, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1681, file: !241, line: 385, column: 9)
!1688 = !DILocation(line: 386, column: 30, scope: !1687)
!1689 = !DILocation(line: 386, column: 17, scope: !1687)
!1690 = !DILocation(line: 386, column: 15, scope: !1687)
!1691 = !DILocation(line: 387, column: 11, scope: !1687)
!1692 = distinct !{!1692, !1675, !1693, !652}
!1693 = !DILocation(line: 389, column: 5, scope: !1646)
!1694 = !DILocation(line: 390, column: 14, scope: !1646)
!1695 = !DILocation(line: 390, column: 3, scope: !1646)
!1696 = !DILocation(line: 393, column: 10, scope: !1646)
!1697 = !DILocation(line: 393, column: 3, scope: !1646)
!1698 = !DILocation(line: 394, column: 1, scope: !1646)
!1699 = distinct !DISubprogram(name: "set_program_name", scope: !112, file: !112, line: 37, type: !769, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !49)
!1700 = !DILocalVariable(name: "argv0", arg: 1, scope: !1699, file: !112, line: 37, type: !47)
!1701 = !DILocation(line: 37, column: 31, scope: !1699)
!1702 = !DILocalVariable(name: "slash", scope: !1699, file: !112, line: 44, type: !47)
!1703 = !DILocation(line: 44, column: 15, scope: !1699)
!1704 = !DILocation(line: 44, column: 32, scope: !1699)
!1705 = !DILocation(line: 44, column: 23, scope: !1699)
!1706 = !DILocalVariable(name: "base", scope: !1699, file: !112, line: 45, type: !47)
!1707 = !DILocation(line: 45, column: 15, scope: !1699)
!1708 = !DILocation(line: 45, column: 22, scope: !1699)
!1709 = !DILocation(line: 45, column: 30, scope: !1699)
!1710 = !DILocation(line: 45, column: 36, scope: !1699)
!1711 = !DILocation(line: 45, column: 42, scope: !1699)
!1712 = !DILocation(line: 46, column: 12, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1699, file: !112, line: 46, column: 7)
!1714 = !DILocation(line: 46, column: 19, scope: !1713)
!1715 = !DILocation(line: 46, column: 17, scope: !1713)
!1716 = !DILocation(line: 46, column: 9, scope: !1713)
!1717 = !DILocation(line: 46, column: 25, scope: !1713)
!1718 = !DILocation(line: 46, column: 35, scope: !1713)
!1719 = !DILocation(line: 46, column: 40, scope: !1713)
!1720 = !DILocation(line: 46, column: 28, scope: !1713)
!1721 = !DILocation(line: 46, column: 7, scope: !1699)
!1722 = !DILocation(line: 48, column: 15, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1713, file: !112, line: 47, column: 5)
!1724 = !DILocation(line: 48, column: 13, scope: !1723)
!1725 = !DILocation(line: 49, column: 20, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !112, line: 49, column: 11)
!1727 = !DILocation(line: 49, column: 11, scope: !1726)
!1728 = !DILocation(line: 49, column: 36, scope: !1726)
!1729 = !DILocation(line: 49, column: 11, scope: !1723)
!1730 = !DILocation(line: 51, column: 16, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !112, line: 50, column: 9)
!1732 = !DILocation(line: 52, column: 19, scope: !1731)
!1733 = !DILocation(line: 52, column: 17, scope: !1731)
!1734 = !DILocation(line: 53, column: 9, scope: !1731)
!1735 = !DILocation(line: 54, column: 5, scope: !1723)
!1736 = !DILocation(line: 65, column: 18, scope: !1699)
!1737 = !DILocation(line: 65, column: 16, scope: !1699)
!1738 = !DILocation(line: 71, column: 38, scope: !1699)
!1739 = !DILocation(line: 71, column: 27, scope: !1699)
!1740 = !DILocation(line: 74, column: 44, scope: !1699)
!1741 = !DILocation(line: 74, column: 33, scope: !1699)
!1742 = !DILocation(line: 76, column: 1, scope: !1699)
!1743 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !117, file: !118, line: 38, type: !47)
!1744 = !DILocation(line: 38, column: 31, scope: !117)
!1745 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !117, file: !118, line: 38, type: !47)
!1746 = !DILocation(line: 38, column: 66, scope: !117)
!1747 = !DILocalVariable(name: "translation", scope: !117, file: !118, line: 40, type: !47)
!1748 = !DILocation(line: 40, column: 15, scope: !117)
!1749 = !DILocation(line: 40, column: 38, scope: !117)
!1750 = !DILocation(line: 40, column: 29, scope: !117)
!1751 = !DILocation(line: 41, column: 7, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !117, file: !118, line: 41, column: 7)
!1753 = !DILocation(line: 41, column: 22, scope: !1752)
!1754 = !DILocation(line: 41, column: 19, scope: !1752)
!1755 = !DILocation(line: 41, column: 7, scope: !117)
!1756 = !DILocation(line: 42, column: 12, scope: !1752)
!1757 = !DILocation(line: 42, column: 5, scope: !1752)
!1758 = !DILocalVariable(name: "w", scope: !117, file: !118, line: 47, type: !1759)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1760, line: 37, baseType: !1761)
!1760 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !513, line: 57, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !513, line: 42, baseType: !7)
!1763 = !DILocation(line: 47, column: 12, scope: !117)
!1764 = !DILocalVariable(name: "mbs", scope: !117, file: !118, line: 48, type: !1765)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !225, line: 6, baseType: !1766)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !227, line: 21, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 13, size: 64, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1767, file: !227, line: 15, baseType: !38, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1767, file: !227, line: 20, baseType: !1771, size: 32, offset: 32)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !227, line: 16, size: 32, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1771, file: !227, line: 18, baseType: !7, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1771, file: !227, line: 19, baseType: !236, size: 32)
!1775 = !DILocation(line: 48, column: 13, scope: !117)
!1776 = !DILocation(line: 48, column: 18, scope: !117)
!1777 = !DILocation(line: 49, column: 7, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !117, file: !118, line: 49, column: 7)
!1779 = !DILocation(line: 49, column: 39, scope: !1778)
!1780 = !DILocation(line: 49, column: 44, scope: !1778)
!1781 = !DILocation(line: 49, column: 47, scope: !1778)
!1782 = !DILocation(line: 49, column: 49, scope: !1778)
!1783 = !DILocation(line: 49, column: 7, scope: !117)
!1784 = !DILocation(line: 50, column: 12, scope: !1778)
!1785 = !DILocation(line: 50, column: 5, scope: !1778)
!1786 = !DILocation(line: 53, column: 10, scope: !117)
!1787 = !DILocation(line: 53, column: 3, scope: !117)
!1788 = !DILocation(line: 54, column: 1, scope: !117)
!1789 = distinct !DISubprogram(name: "clone_quoting_options", scope: !129, file: !129, line: 113, type: !1790, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!1792, !1792}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1793 = !DILocalVariable(name: "o", arg: 1, scope: !1789, file: !129, line: 113, type: !1792)
!1794 = !DILocation(line: 113, column: 48, scope: !1789)
!1795 = !DILocalVariable(name: "saved_errno", scope: !1789, file: !129, line: 115, type: !38)
!1796 = !DILocation(line: 115, column: 7, scope: !1789)
!1797 = !DILocation(line: 115, column: 21, scope: !1789)
!1798 = !DILocalVariable(name: "p", scope: !1789, file: !129, line: 116, type: !1792)
!1799 = !DILocation(line: 116, column: 27, scope: !1789)
!1800 = !DILocation(line: 116, column: 40, scope: !1789)
!1801 = !DILocation(line: 116, column: 44, scope: !1789)
!1802 = !DILocation(line: 116, column: 31, scope: !1789)
!1803 = !DILocation(line: 118, column: 11, scope: !1789)
!1804 = !DILocation(line: 118, column: 3, scope: !1789)
!1805 = !DILocation(line: 118, column: 9, scope: !1789)
!1806 = !DILocation(line: 119, column: 10, scope: !1789)
!1807 = !DILocation(line: 119, column: 3, scope: !1789)
!1808 = distinct !DISubprogram(name: "get_quoting_style", scope: !129, file: !129, line: 124, type: !1809, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!131, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!1813 = !DILocalVariable(name: "o", arg: 1, scope: !1808, file: !129, line: 124, type: !1811)
!1814 = !DILocation(line: 124, column: 50, scope: !1808)
!1815 = !DILocation(line: 126, column: 11, scope: !1808)
!1816 = !DILocation(line: 126, column: 15, scope: !1808)
!1817 = !DILocation(line: 126, column: 46, scope: !1808)
!1818 = !DILocation(line: 126, column: 3, scope: !1808)
!1819 = distinct !DISubprogram(name: "set_quoting_style", scope: !129, file: !129, line: 132, type: !1820, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{null, !1792, !131}
!1822 = !DILocalVariable(name: "o", arg: 1, scope: !1819, file: !129, line: 132, type: !1792)
!1823 = !DILocation(line: 132, column: 44, scope: !1819)
!1824 = !DILocalVariable(name: "s", arg: 2, scope: !1819, file: !129, line: 132, type: !131)
!1825 = !DILocation(line: 132, column: 66, scope: !1819)
!1826 = !DILocation(line: 134, column: 47, scope: !1819)
!1827 = !DILocation(line: 134, column: 4, scope: !1819)
!1828 = !DILocation(line: 134, column: 8, scope: !1819)
!1829 = !DILocation(line: 134, column: 39, scope: !1819)
!1830 = !DILocation(line: 134, column: 45, scope: !1819)
!1831 = !DILocation(line: 135, column: 1, scope: !1819)
!1832 = distinct !DISubprogram(name: "set_char_quoting", scope: !129, file: !129, line: 143, type: !1833, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!38, !1792, !36, !38}
!1835 = !DILocalVariable(name: "o", arg: 1, scope: !1832, file: !129, line: 143, type: !1792)
!1836 = !DILocation(line: 143, column: 43, scope: !1832)
!1837 = !DILocalVariable(name: "c", arg: 2, scope: !1832, file: !129, line: 143, type: !36)
!1838 = !DILocation(line: 143, column: 51, scope: !1832)
!1839 = !DILocalVariable(name: "i", arg: 3, scope: !1832, file: !129, line: 143, type: !38)
!1840 = !DILocation(line: 143, column: 58, scope: !1832)
!1841 = !DILocalVariable(name: "uc", scope: !1832, file: !129, line: 145, type: !222)
!1842 = !DILocation(line: 145, column: 17, scope: !1832)
!1843 = !DILocation(line: 145, column: 22, scope: !1832)
!1844 = !DILocalVariable(name: "p", scope: !1832, file: !129, line: 146, type: !1845)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1846 = !DILocation(line: 146, column: 17, scope: !1832)
!1847 = !DILocation(line: 147, column: 6, scope: !1832)
!1848 = !DILocation(line: 147, column: 10, scope: !1832)
!1849 = !DILocation(line: 147, column: 41, scope: !1832)
!1850 = !DILocation(line: 147, column: 5, scope: !1832)
!1851 = !DILocation(line: 147, column: 59, scope: !1832)
!1852 = !DILocation(line: 147, column: 62, scope: !1832)
!1853 = !DILocation(line: 147, column: 57, scope: !1832)
!1854 = !DILocalVariable(name: "shift", scope: !1832, file: !129, line: 148, type: !38)
!1855 = !DILocation(line: 148, column: 7, scope: !1832)
!1856 = !DILocation(line: 148, column: 15, scope: !1832)
!1857 = !DILocation(line: 148, column: 18, scope: !1832)
!1858 = !DILocalVariable(name: "r", scope: !1832, file: !129, line: 149, type: !7)
!1859 = !DILocation(line: 149, column: 16, scope: !1832)
!1860 = !DILocation(line: 149, column: 22, scope: !1832)
!1861 = !DILocation(line: 149, column: 21, scope: !1832)
!1862 = !DILocation(line: 149, column: 27, scope: !1832)
!1863 = !DILocation(line: 149, column: 24, scope: !1832)
!1864 = !DILocation(line: 149, column: 34, scope: !1832)
!1865 = !DILocation(line: 150, column: 11, scope: !1832)
!1866 = !DILocation(line: 150, column: 13, scope: !1832)
!1867 = !DILocation(line: 150, column: 21, scope: !1832)
!1868 = !DILocation(line: 150, column: 19, scope: !1832)
!1869 = !DILocation(line: 150, column: 27, scope: !1832)
!1870 = !DILocation(line: 150, column: 24, scope: !1832)
!1871 = !DILocation(line: 150, column: 4, scope: !1832)
!1872 = !DILocation(line: 150, column: 6, scope: !1832)
!1873 = !DILocation(line: 151, column: 10, scope: !1832)
!1874 = !DILocation(line: 151, column: 3, scope: !1832)
!1875 = distinct !DISubprogram(name: "set_quoting_flags", scope: !129, file: !129, line: 159, type: !1876, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!38, !1792, !38}
!1878 = !DILocalVariable(name: "o", arg: 1, scope: !1875, file: !129, line: 159, type: !1792)
!1879 = !DILocation(line: 159, column: 44, scope: !1875)
!1880 = !DILocalVariable(name: "i", arg: 2, scope: !1875, file: !129, line: 159, type: !38)
!1881 = !DILocation(line: 159, column: 51, scope: !1875)
!1882 = !DILocation(line: 161, column: 8, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1875, file: !129, line: 161, column: 7)
!1884 = !DILocation(line: 161, column: 7, scope: !1875)
!1885 = !DILocation(line: 162, column: 7, scope: !1883)
!1886 = !DILocation(line: 162, column: 5, scope: !1883)
!1887 = !DILocalVariable(name: "r", scope: !1875, file: !129, line: 163, type: !38)
!1888 = !DILocation(line: 163, column: 7, scope: !1875)
!1889 = !DILocation(line: 163, column: 11, scope: !1875)
!1890 = !DILocation(line: 163, column: 14, scope: !1875)
!1891 = !DILocation(line: 164, column: 14, scope: !1875)
!1892 = !DILocation(line: 164, column: 3, scope: !1875)
!1893 = !DILocation(line: 164, column: 6, scope: !1875)
!1894 = !DILocation(line: 164, column: 12, scope: !1875)
!1895 = !DILocation(line: 165, column: 10, scope: !1875)
!1896 = !DILocation(line: 165, column: 3, scope: !1875)
!1897 = distinct !DISubprogram(name: "set_custom_quoting", scope: !129, file: !129, line: 169, type: !1898, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !1792, !47, !47}
!1900 = !DILocalVariable(name: "o", arg: 1, scope: !1897, file: !129, line: 169, type: !1792)
!1901 = !DILocation(line: 169, column: 45, scope: !1897)
!1902 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1897, file: !129, line: 170, type: !47)
!1903 = !DILocation(line: 170, column: 33, scope: !1897)
!1904 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1897, file: !129, line: 170, type: !47)
!1905 = !DILocation(line: 170, column: 57, scope: !1897)
!1906 = !DILocation(line: 172, column: 8, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1897, file: !129, line: 172, column: 7)
!1908 = !DILocation(line: 172, column: 7, scope: !1897)
!1909 = !DILocation(line: 173, column: 7, scope: !1907)
!1910 = !DILocation(line: 173, column: 5, scope: !1907)
!1911 = !DILocation(line: 174, column: 3, scope: !1897)
!1912 = !DILocation(line: 174, column: 6, scope: !1897)
!1913 = !DILocation(line: 174, column: 12, scope: !1897)
!1914 = !DILocation(line: 175, column: 8, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1897, file: !129, line: 175, column: 7)
!1916 = !DILocation(line: 175, column: 19, scope: !1915)
!1917 = !DILocation(line: 175, column: 23, scope: !1915)
!1918 = !DILocation(line: 175, column: 7, scope: !1897)
!1919 = !DILocation(line: 176, column: 5, scope: !1915)
!1920 = !DILocation(line: 177, column: 19, scope: !1897)
!1921 = !DILocation(line: 177, column: 3, scope: !1897)
!1922 = !DILocation(line: 177, column: 6, scope: !1897)
!1923 = !DILocation(line: 177, column: 17, scope: !1897)
!1924 = !DILocation(line: 178, column: 20, scope: !1897)
!1925 = !DILocation(line: 178, column: 3, scope: !1897)
!1926 = !DILocation(line: 178, column: 6, scope: !1897)
!1927 = !DILocation(line: 178, column: 18, scope: !1897)
!1928 = !DILocation(line: 179, column: 1, scope: !1897)
!1929 = distinct !DISubprogram(name: "quotearg_buffer", scope: !129, file: !129, line: 774, type: !1930, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!151, !35, !151, !47, !151, !1811}
!1932 = !DILocalVariable(name: "buffer", arg: 1, scope: !1929, file: !129, line: 774, type: !35)
!1933 = !DILocation(line: 774, column: 24, scope: !1929)
!1934 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1929, file: !129, line: 774, type: !151)
!1935 = !DILocation(line: 774, column: 39, scope: !1929)
!1936 = !DILocalVariable(name: "arg", arg: 3, scope: !1929, file: !129, line: 775, type: !47)
!1937 = !DILocation(line: 775, column: 30, scope: !1929)
!1938 = !DILocalVariable(name: "argsize", arg: 4, scope: !1929, file: !129, line: 775, type: !151)
!1939 = !DILocation(line: 775, column: 42, scope: !1929)
!1940 = !DILocalVariable(name: "o", arg: 5, scope: !1929, file: !129, line: 776, type: !1811)
!1941 = !DILocation(line: 776, column: 48, scope: !1929)
!1942 = !DILocalVariable(name: "p", scope: !1929, file: !129, line: 778, type: !1811)
!1943 = !DILocation(line: 778, column: 33, scope: !1929)
!1944 = !DILocation(line: 778, column: 37, scope: !1929)
!1945 = !DILocation(line: 778, column: 41, scope: !1929)
!1946 = !DILocalVariable(name: "saved_errno", scope: !1929, file: !129, line: 779, type: !38)
!1947 = !DILocation(line: 779, column: 7, scope: !1929)
!1948 = !DILocation(line: 779, column: 21, scope: !1929)
!1949 = !DILocalVariable(name: "r", scope: !1929, file: !129, line: 780, type: !151)
!1950 = !DILocation(line: 780, column: 10, scope: !1929)
!1951 = !DILocation(line: 780, column: 40, scope: !1929)
!1952 = !DILocation(line: 780, column: 48, scope: !1929)
!1953 = !DILocation(line: 780, column: 60, scope: !1929)
!1954 = !DILocation(line: 780, column: 65, scope: !1929)
!1955 = !DILocation(line: 781, column: 40, scope: !1929)
!1956 = !DILocation(line: 781, column: 43, scope: !1929)
!1957 = !DILocation(line: 781, column: 50, scope: !1929)
!1958 = !DILocation(line: 781, column: 53, scope: !1929)
!1959 = !DILocation(line: 781, column: 60, scope: !1929)
!1960 = !DILocation(line: 781, column: 63, scope: !1929)
!1961 = !DILocation(line: 782, column: 40, scope: !1929)
!1962 = !DILocation(line: 782, column: 43, scope: !1929)
!1963 = !DILocation(line: 782, column: 55, scope: !1929)
!1964 = !DILocation(line: 782, column: 58, scope: !1929)
!1965 = !DILocation(line: 780, column: 14, scope: !1929)
!1966 = !DILocation(line: 783, column: 11, scope: !1929)
!1967 = !DILocation(line: 783, column: 3, scope: !1929)
!1968 = !DILocation(line: 783, column: 9, scope: !1929)
!1969 = !DILocation(line: 784, column: 10, scope: !1929)
!1970 = !DILocation(line: 784, column: 3, scope: !1929)
!1971 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !129, file: !129, line: 251, type: !1972, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !49)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!151, !35, !151, !47, !151, !131, !38, !1974, !47, !47}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1976 = !DILocalVariable(name: "buffer", arg: 1, scope: !1971, file: !129, line: 251, type: !35)
!1977 = !DILocation(line: 251, column: 33, scope: !1971)
!1978 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1971, file: !129, line: 251, type: !151)
!1979 = !DILocation(line: 251, column: 48, scope: !1971)
!1980 = !DILocalVariable(name: "arg", arg: 3, scope: !1971, file: !129, line: 252, type: !47)
!1981 = !DILocation(line: 252, column: 39, scope: !1971)
!1982 = !DILocalVariable(name: "argsize", arg: 4, scope: !1971, file: !129, line: 252, type: !151)
!1983 = !DILocation(line: 252, column: 51, scope: !1971)
!1984 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1971, file: !129, line: 253, type: !131)
!1985 = !DILocation(line: 253, column: 46, scope: !1971)
!1986 = !DILocalVariable(name: "flags", arg: 6, scope: !1971, file: !129, line: 253, type: !38)
!1987 = !DILocation(line: 253, column: 65, scope: !1971)
!1988 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1971, file: !129, line: 254, type: !1974)
!1989 = !DILocation(line: 254, column: 47, scope: !1971)
!1990 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1971, file: !129, line: 255, type: !47)
!1991 = !DILocation(line: 255, column: 39, scope: !1971)
!1992 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1971, file: !129, line: 256, type: !47)
!1993 = !DILocation(line: 256, column: 39, scope: !1971)
!1994 = !DILocalVariable(name: "unibyte_locale", scope: !1971, file: !129, line: 258, type: !74)
!1995 = !DILocation(line: 258, column: 8, scope: !1971)
!1996 = !DILocation(line: 258, column: 25, scope: !1971)
!1997 = !DILocation(line: 258, column: 36, scope: !1971)
!1998 = !DILocalVariable(name: "len", scope: !1971, file: !129, line: 260, type: !151)
!1999 = !DILocation(line: 260, column: 10, scope: !1971)
!2000 = !DILocalVariable(name: "orig_buffersize", scope: !1971, file: !129, line: 261, type: !151)
!2001 = !DILocation(line: 261, column: 10, scope: !1971)
!2002 = !DILocalVariable(name: "quote_string", scope: !1971, file: !129, line: 262, type: !47)
!2003 = !DILocation(line: 262, column: 15, scope: !1971)
!2004 = !DILocalVariable(name: "quote_string_len", scope: !1971, file: !129, line: 263, type: !151)
!2005 = !DILocation(line: 263, column: 10, scope: !1971)
!2006 = !DILocalVariable(name: "backslash_escapes", scope: !1971, file: !129, line: 264, type: !74)
!2007 = !DILocation(line: 264, column: 8, scope: !1971)
!2008 = !DILocalVariable(name: "elide_outer_quotes", scope: !1971, file: !129, line: 265, type: !74)
!2009 = !DILocation(line: 265, column: 8, scope: !1971)
!2010 = !DILocation(line: 265, column: 30, scope: !1971)
!2011 = !DILocation(line: 265, column: 36, scope: !1971)
!2012 = !DILocation(line: 265, column: 61, scope: !1971)
!2013 = !DILocalVariable(name: "encountered_single_quote", scope: !1971, file: !129, line: 266, type: !74)
!2014 = !DILocation(line: 266, column: 8, scope: !1971)
!2015 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1971, file: !129, line: 267, type: !74)
!2016 = !DILocation(line: 267, column: 8, scope: !1971)
!2017 = !DILocation(line: 267, column: 3, scope: !1971)
!2018 = !DILabel(scope: !1971, name: "process_input", file: !129, line: 308)
!2019 = !DILocation(line: 308, column: 2, scope: !1971)
!2020 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1971, file: !129, line: 309, type: !74)
!2021 = !DILocation(line: 309, column: 8, scope: !1971)
!2022 = !DILocation(line: 311, column: 11, scope: !1971)
!2023 = !DILocation(line: 311, column: 3, scope: !1971)
!2024 = !DILocation(line: 314, column: 21, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1971, file: !129, line: 312, column: 5)
!2026 = !DILocation(line: 315, column: 26, scope: !2025)
!2027 = !DILocation(line: 315, column: 7, scope: !2025)
!2028 = !DILocation(line: 318, column: 12, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2025, file: !129, line: 318, column: 11)
!2030 = !DILocation(line: 318, column: 11, scope: !2025)
!2031 = !DILocation(line: 319, column: 9, scope: !2029)
!2032 = !DILocation(line: 319, column: 9, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !129, line: 319, column: 9)
!2034 = distinct !DILexicalBlock(scope: !2029, file: !129, line: 319, column: 9)
!2035 = !DILocation(line: 319, column: 9, scope: !2034)
!2036 = !DILocation(line: 320, column: 25, scope: !2025)
!2037 = !DILocation(line: 321, column: 20, scope: !2025)
!2038 = !DILocation(line: 322, column: 24, scope: !2025)
!2039 = !DILocation(line: 323, column: 7, scope: !2025)
!2040 = !DILocation(line: 326, column: 25, scope: !2025)
!2041 = !DILocation(line: 327, column: 26, scope: !2025)
!2042 = !DILocation(line: 328, column: 7, scope: !2025)
!2043 = !DILocation(line: 334, column: 13, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !129, line: 334, column: 13)
!2045 = distinct !DILexicalBlock(scope: !2025, file: !129, line: 333, column: 7)
!2046 = !DILocation(line: 334, column: 27, scope: !2044)
!2047 = !DILocation(line: 334, column: 13, scope: !2045)
!2048 = !DILocation(line: 357, column: 50, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2044, file: !129, line: 335, column: 11)
!2050 = !DILocation(line: 357, column: 26, scope: !2049)
!2051 = !DILocation(line: 357, column: 24, scope: !2049)
!2052 = !DILocation(line: 358, column: 51, scope: !2049)
!2053 = !DILocation(line: 358, column: 27, scope: !2049)
!2054 = !DILocation(line: 358, column: 25, scope: !2049)
!2055 = !DILocation(line: 359, column: 11, scope: !2049)
!2056 = !DILocation(line: 360, column: 14, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2045, file: !129, line: 360, column: 13)
!2058 = !DILocation(line: 360, column: 13, scope: !2045)
!2059 = !DILocalVariable(name: "lq", scope: !2060, file: !129, line: 361, type: !47)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !129, line: 361, column: 11)
!2061 = !DILocation(line: 361, column: 28, scope: !2060)
!2062 = !DILocation(line: 361, column: 33, scope: !2060)
!2063 = !DILocation(line: 361, column: 16, scope: !2060)
!2064 = !DILocation(line: 361, column: 46, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !129, line: 361, column: 11)
!2066 = !DILocation(line: 361, column: 45, scope: !2065)
!2067 = !DILocation(line: 361, column: 11, scope: !2060)
!2068 = !DILocation(line: 362, column: 13, scope: !2065)
!2069 = !DILocation(line: 362, column: 13, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !129, line: 362, column: 13)
!2071 = distinct !DILexicalBlock(scope: !2065, file: !129, line: 362, column: 13)
!2072 = !DILocation(line: 362, column: 13, scope: !2071)
!2073 = !DILocation(line: 361, column: 52, scope: !2065)
!2074 = !DILocation(line: 361, column: 11, scope: !2065)
!2075 = distinct !{!2075, !2067, !2076, !652}
!2076 = !DILocation(line: 362, column: 13, scope: !2060)
!2077 = !DILocation(line: 363, column: 27, scope: !2045)
!2078 = !DILocation(line: 364, column: 24, scope: !2045)
!2079 = !DILocation(line: 364, column: 22, scope: !2045)
!2080 = !DILocation(line: 365, column: 36, scope: !2045)
!2081 = !DILocation(line: 365, column: 28, scope: !2045)
!2082 = !DILocation(line: 365, column: 26, scope: !2045)
!2083 = !DILocation(line: 367, column: 7, scope: !2025)
!2084 = !DILocation(line: 370, column: 25, scope: !2025)
!2085 = !DILocation(line: 370, column: 7, scope: !2025)
!2086 = !DILocation(line: 373, column: 26, scope: !2025)
!2087 = !DILocation(line: 373, column: 7, scope: !2025)
!2088 = !DILocation(line: 376, column: 12, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2025, file: !129, line: 376, column: 11)
!2090 = !DILocation(line: 376, column: 11, scope: !2025)
!2091 = !DILocation(line: 377, column: 27, scope: !2089)
!2092 = !DILocation(line: 377, column: 9, scope: !2089)
!2093 = !DILocation(line: 380, column: 21, scope: !2025)
!2094 = !DILocation(line: 381, column: 12, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2025, file: !129, line: 381, column: 11)
!2096 = !DILocation(line: 381, column: 11, scope: !2025)
!2097 = !DILocation(line: 382, column: 9, scope: !2095)
!2098 = !DILocation(line: 382, column: 9, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !129, line: 382, column: 9)
!2100 = distinct !DILexicalBlock(scope: !2095, file: !129, line: 382, column: 9)
!2101 = !DILocation(line: 382, column: 9, scope: !2100)
!2102 = !DILocation(line: 383, column: 20, scope: !2025)
!2103 = !DILocation(line: 384, column: 24, scope: !2025)
!2104 = !DILocation(line: 385, column: 7, scope: !2025)
!2105 = !DILocation(line: 388, column: 26, scope: !2025)
!2106 = !DILocation(line: 389, column: 7, scope: !2025)
!2107 = !DILocation(line: 392, column: 7, scope: !2025)
!2108 = !DILocalVariable(name: "i", scope: !2109, file: !129, line: 395, type: !151)
!2109 = distinct !DILexicalBlock(scope: !1971, file: !129, line: 395, column: 3)
!2110 = !DILocation(line: 395, column: 15, scope: !2109)
!2111 = !DILocation(line: 395, column: 8, scope: !2109)
!2112 = !DILocation(line: 395, column: 26, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !129, line: 395, column: 3)
!2114 = !DILocation(line: 395, column: 34, scope: !2113)
!2115 = !DILocation(line: 395, column: 48, scope: !2113)
!2116 = !DILocation(line: 395, column: 52, scope: !2113)
!2117 = !DILocation(line: 395, column: 55, scope: !2113)
!2118 = !DILocation(line: 395, column: 65, scope: !2113)
!2119 = !DILocation(line: 395, column: 70, scope: !2113)
!2120 = !DILocation(line: 395, column: 67, scope: !2113)
!2121 = !DILocation(line: 395, column: 23, scope: !2113)
!2122 = !DILocation(line: 395, column: 3, scope: !2109)
!2123 = !DILocalVariable(name: "is_right_quote", scope: !2124, file: !129, line: 397, type: !74)
!2124 = distinct !DILexicalBlock(scope: !2113, file: !129, line: 396, column: 5)
!2125 = !DILocation(line: 397, column: 12, scope: !2124)
!2126 = !DILocalVariable(name: "escaping", scope: !2124, file: !129, line: 398, type: !74)
!2127 = !DILocation(line: 398, column: 12, scope: !2124)
!2128 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2124, file: !129, line: 399, type: !74)
!2129 = !DILocation(line: 399, column: 12, scope: !2124)
!2130 = !DILocation(line: 401, column: 11, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2124, file: !129, line: 401, column: 11)
!2132 = !DILocation(line: 402, column: 11, scope: !2131)
!2133 = !DILocation(line: 402, column: 14, scope: !2131)
!2134 = !DILocation(line: 402, column: 28, scope: !2131)
!2135 = !DILocation(line: 403, column: 11, scope: !2131)
!2136 = !DILocation(line: 403, column: 14, scope: !2131)
!2137 = !DILocation(line: 404, column: 11, scope: !2131)
!2138 = !DILocation(line: 404, column: 15, scope: !2131)
!2139 = !DILocation(line: 404, column: 19, scope: !2131)
!2140 = !DILocation(line: 404, column: 17, scope: !2131)
!2141 = !DILocation(line: 405, column: 19, scope: !2131)
!2142 = !DILocation(line: 405, column: 27, scope: !2131)
!2143 = !DILocation(line: 405, column: 39, scope: !2131)
!2144 = !DILocation(line: 405, column: 46, scope: !2131)
!2145 = !DILocation(line: 405, column: 44, scope: !2131)
!2146 = !DILocation(line: 409, column: 40, scope: !2131)
!2147 = !DILocation(line: 409, column: 32, scope: !2131)
!2148 = !DILocation(line: 409, column: 30, scope: !2131)
!2149 = !DILocation(line: 409, column: 48, scope: !2131)
!2150 = !DILocation(line: 405, column: 15, scope: !2131)
!2151 = !DILocation(line: 410, column: 11, scope: !2131)
!2152 = !DILocation(line: 410, column: 21, scope: !2131)
!2153 = !DILocation(line: 410, column: 27, scope: !2131)
!2154 = !DILocation(line: 410, column: 25, scope: !2131)
!2155 = !DILocation(line: 410, column: 30, scope: !2131)
!2156 = !DILocation(line: 410, column: 44, scope: !2131)
!2157 = !DILocation(line: 410, column: 14, scope: !2131)
!2158 = !DILocation(line: 401, column: 11, scope: !2124)
!2159 = !DILocation(line: 412, column: 15, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !129, line: 412, column: 15)
!2161 = distinct !DILexicalBlock(scope: !2131, file: !129, line: 411, column: 9)
!2162 = !DILocation(line: 412, column: 15, scope: !2161)
!2163 = !DILocation(line: 413, column: 13, scope: !2160)
!2164 = !DILocation(line: 414, column: 26, scope: !2161)
!2165 = !DILocation(line: 415, column: 9, scope: !2161)
!2166 = !DILocalVariable(name: "c", scope: !2124, file: !129, line: 417, type: !222)
!2167 = !DILocation(line: 417, column: 21, scope: !2124)
!2168 = !DILocation(line: 417, column: 25, scope: !2124)
!2169 = !DILocation(line: 417, column: 29, scope: !2124)
!2170 = !DILocation(line: 418, column: 15, scope: !2124)
!2171 = !DILocation(line: 418, column: 7, scope: !2124)
!2172 = !DILocation(line: 421, column: 15, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !129, line: 421, column: 15)
!2174 = distinct !DILexicalBlock(scope: !2124, file: !129, line: 419, column: 9)
!2175 = !DILocation(line: 421, column: 15, scope: !2174)
!2176 = !DILocation(line: 423, column: 15, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !129, line: 422, column: 13)
!2178 = !DILocation(line: 423, column: 15, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !129, line: 423, column: 15)
!2180 = distinct !DILexicalBlock(scope: !2177, file: !129, line: 423, column: 15)
!2181 = !DILocation(line: 423, column: 15, scope: !2180)
!2182 = !DILocation(line: 423, column: 15, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !129, line: 423, column: 15)
!2184 = !DILocation(line: 423, column: 15, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2183, file: !129, line: 423, column: 15)
!2186 = !DILocation(line: 423, column: 15, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !129, line: 423, column: 15)
!2188 = distinct !DILexicalBlock(scope: !2185, file: !129, line: 423, column: 15)
!2189 = !DILocation(line: 423, column: 15, scope: !2188)
!2190 = !DILocation(line: 423, column: 15, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !129, line: 423, column: 15)
!2192 = distinct !DILexicalBlock(scope: !2185, file: !129, line: 423, column: 15)
!2193 = !DILocation(line: 423, column: 15, scope: !2192)
!2194 = !DILocation(line: 423, column: 15, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !129, line: 423, column: 15)
!2196 = distinct !DILexicalBlock(scope: !2185, file: !129, line: 423, column: 15)
!2197 = !DILocation(line: 423, column: 15, scope: !2196)
!2198 = !DILocation(line: 423, column: 15, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !129, line: 423, column: 15)
!2200 = distinct !DILexicalBlock(scope: !2180, file: !129, line: 423, column: 15)
!2201 = !DILocation(line: 423, column: 15, scope: !2200)
!2202 = !DILocation(line: 430, column: 19, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2177, file: !129, line: 430, column: 19)
!2204 = !DILocation(line: 430, column: 33, scope: !2203)
!2205 = !DILocation(line: 431, column: 19, scope: !2203)
!2206 = !DILocation(line: 431, column: 22, scope: !2203)
!2207 = !DILocation(line: 431, column: 24, scope: !2203)
!2208 = !DILocation(line: 431, column: 30, scope: !2203)
!2209 = !DILocation(line: 431, column: 28, scope: !2203)
!2210 = !DILocation(line: 431, column: 38, scope: !2203)
!2211 = !DILocation(line: 431, column: 48, scope: !2203)
!2212 = !DILocation(line: 431, column: 52, scope: !2203)
!2213 = !DILocation(line: 431, column: 54, scope: !2203)
!2214 = !DILocation(line: 431, column: 45, scope: !2203)
!2215 = !DILocation(line: 431, column: 59, scope: !2203)
!2216 = !DILocation(line: 431, column: 62, scope: !2203)
!2217 = !DILocation(line: 431, column: 66, scope: !2203)
!2218 = !DILocation(line: 431, column: 68, scope: !2203)
!2219 = !DILocation(line: 431, column: 73, scope: !2203)
!2220 = !DILocation(line: 430, column: 19, scope: !2177)
!2221 = !DILocation(line: 433, column: 19, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2203, file: !129, line: 432, column: 17)
!2223 = !DILocation(line: 433, column: 19, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !129, line: 433, column: 19)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !129, line: 433, column: 19)
!2226 = !DILocation(line: 433, column: 19, scope: !2225)
!2227 = !DILocation(line: 434, column: 19, scope: !2222)
!2228 = !DILocation(line: 434, column: 19, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !129, line: 434, column: 19)
!2230 = distinct !DILexicalBlock(scope: !2222, file: !129, line: 434, column: 19)
!2231 = !DILocation(line: 434, column: 19, scope: !2230)
!2232 = !DILocation(line: 435, column: 17, scope: !2222)
!2233 = !DILocation(line: 436, column: 17, scope: !2177)
!2234 = !DILocation(line: 441, column: 13, scope: !2177)
!2235 = !DILocation(line: 442, column: 20, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2173, file: !129, line: 442, column: 20)
!2237 = !DILocation(line: 442, column: 26, scope: !2236)
!2238 = !DILocation(line: 442, column: 20, scope: !2173)
!2239 = !DILocation(line: 443, column: 13, scope: !2236)
!2240 = !DILocation(line: 444, column: 11, scope: !2174)
!2241 = !DILocation(line: 447, column: 20, scope: !2174)
!2242 = !DILocation(line: 447, column: 11, scope: !2174)
!2243 = !DILocation(line: 450, column: 19, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !129, line: 450, column: 19)
!2245 = distinct !DILexicalBlock(scope: !2174, file: !129, line: 448, column: 13)
!2246 = !DILocation(line: 450, column: 19, scope: !2245)
!2247 = !DILocation(line: 451, column: 17, scope: !2244)
!2248 = !DILocation(line: 452, column: 15, scope: !2245)
!2249 = !DILocation(line: 455, column: 20, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2245, file: !129, line: 455, column: 19)
!2251 = !DILocation(line: 455, column: 26, scope: !2250)
!2252 = !DILocation(line: 456, column: 19, scope: !2250)
!2253 = !DILocation(line: 456, column: 22, scope: !2250)
!2254 = !DILocation(line: 456, column: 24, scope: !2250)
!2255 = !DILocation(line: 456, column: 30, scope: !2250)
!2256 = !DILocation(line: 456, column: 28, scope: !2250)
!2257 = !DILocation(line: 456, column: 38, scope: !2250)
!2258 = !DILocation(line: 456, column: 41, scope: !2250)
!2259 = !DILocation(line: 456, column: 45, scope: !2250)
!2260 = !DILocation(line: 456, column: 47, scope: !2250)
!2261 = !DILocation(line: 456, column: 52, scope: !2250)
!2262 = !DILocation(line: 455, column: 19, scope: !2245)
!2263 = !DILocation(line: 457, column: 25, scope: !2250)
!2264 = !DILocation(line: 457, column: 29, scope: !2250)
!2265 = !DILocation(line: 457, column: 31, scope: !2250)
!2266 = !DILocation(line: 457, column: 17, scope: !2250)
!2267 = !DILocation(line: 464, column: 25, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !129, line: 464, column: 25)
!2269 = distinct !DILexicalBlock(scope: !2250, file: !129, line: 458, column: 19)
!2270 = !DILocation(line: 464, column: 25, scope: !2269)
!2271 = !DILocation(line: 465, column: 23, scope: !2268)
!2272 = !DILocation(line: 466, column: 25, scope: !2269)
!2273 = !DILocation(line: 466, column: 29, scope: !2269)
!2274 = !DILocation(line: 466, column: 31, scope: !2269)
!2275 = !DILocation(line: 466, column: 23, scope: !2269)
!2276 = !DILocation(line: 467, column: 23, scope: !2269)
!2277 = !DILocation(line: 468, column: 21, scope: !2269)
!2278 = !DILocation(line: 468, column: 21, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !129, line: 468, column: 21)
!2280 = distinct !DILexicalBlock(scope: !2269, file: !129, line: 468, column: 21)
!2281 = !DILocation(line: 468, column: 21, scope: !2280)
!2282 = !DILocation(line: 469, column: 21, scope: !2269)
!2283 = !DILocation(line: 469, column: 21, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !129, line: 469, column: 21)
!2285 = distinct !DILexicalBlock(scope: !2269, file: !129, line: 469, column: 21)
!2286 = !DILocation(line: 469, column: 21, scope: !2285)
!2287 = !DILocation(line: 470, column: 21, scope: !2269)
!2288 = !DILocation(line: 470, column: 21, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !129, line: 470, column: 21)
!2290 = distinct !DILexicalBlock(scope: !2269, file: !129, line: 470, column: 21)
!2291 = !DILocation(line: 470, column: 21, scope: !2290)
!2292 = !DILocation(line: 471, column: 21, scope: !2269)
!2293 = !DILocation(line: 471, column: 21, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !129, line: 471, column: 21)
!2295 = distinct !DILexicalBlock(scope: !2269, file: !129, line: 471, column: 21)
!2296 = !DILocation(line: 471, column: 21, scope: !2295)
!2297 = !DILocation(line: 472, column: 21, scope: !2269)
!2298 = !DILocation(line: 473, column: 19, scope: !2269)
!2299 = !DILocation(line: 474, column: 15, scope: !2245)
!2300 = !DILocation(line: 476, column: 11, scope: !2174)
!2301 = !DILocation(line: 481, column: 26, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2174, file: !129, line: 478, column: 9)
!2303 = !DILocation(line: 481, column: 33, scope: !2302)
!2304 = !DILocation(line: 482, column: 26, scope: !2302)
!2305 = !DILocation(line: 482, column: 33, scope: !2302)
!2306 = !DILocation(line: 483, column: 26, scope: !2302)
!2307 = !DILocation(line: 483, column: 33, scope: !2302)
!2308 = !DILocation(line: 484, column: 26, scope: !2302)
!2309 = !DILocation(line: 484, column: 33, scope: !2302)
!2310 = !DILocation(line: 485, column: 26, scope: !2302)
!2311 = !DILocation(line: 485, column: 33, scope: !2302)
!2312 = !DILocation(line: 486, column: 26, scope: !2302)
!2313 = !DILocation(line: 486, column: 33, scope: !2302)
!2314 = !DILocation(line: 487, column: 26, scope: !2302)
!2315 = !DILocation(line: 487, column: 33, scope: !2302)
!2316 = !DILocation(line: 488, column: 28, scope: !2302)
!2317 = !DILocation(line: 488, column: 26, scope: !2302)
!2318 = !DILocation(line: 490, column: 17, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2302, file: !129, line: 490, column: 17)
!2320 = !DILocation(line: 490, column: 31, scope: !2319)
!2321 = !DILocation(line: 490, column: 17, scope: !2302)
!2322 = !DILocation(line: 492, column: 21, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !129, line: 492, column: 21)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !129, line: 491, column: 15)
!2325 = !DILocation(line: 492, column: 21, scope: !2324)
!2326 = !DILocation(line: 493, column: 19, scope: !2323)
!2327 = !DILocation(line: 494, column: 17, scope: !2324)
!2328 = !DILocation(line: 499, column: 17, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2302, file: !129, line: 499, column: 17)
!2330 = !DILocation(line: 499, column: 35, scope: !2329)
!2331 = !DILocation(line: 499, column: 38, scope: !2329)
!2332 = !DILocation(line: 499, column: 57, scope: !2329)
!2333 = !DILocation(line: 499, column: 60, scope: !2329)
!2334 = !DILocation(line: 499, column: 17, scope: !2302)
!2335 = !DILocation(line: 500, column: 15, scope: !2329)
!2336 = !DILabel(scope: !2302, name: "c_and_shell_escape", file: !129, line: 502)
!2337 = !DILocation(line: 502, column: 11, scope: !2302)
!2338 = !DILocation(line: 503, column: 17, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2302, file: !129, line: 503, column: 17)
!2340 = !DILocation(line: 503, column: 31, scope: !2339)
!2341 = !DILocation(line: 504, column: 17, scope: !2339)
!2342 = !DILocation(line: 504, column: 20, scope: !2339)
!2343 = !DILocation(line: 503, column: 17, scope: !2302)
!2344 = !DILocation(line: 505, column: 15, scope: !2339)
!2345 = !DILabel(scope: !2302, name: "c_escape", file: !129, line: 507)
!2346 = !DILocation(line: 507, column: 11, scope: !2302)
!2347 = !DILocation(line: 508, column: 17, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2302, file: !129, line: 508, column: 17)
!2349 = !DILocation(line: 508, column: 17, scope: !2302)
!2350 = !DILocation(line: 510, column: 21, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !129, line: 509, column: 15)
!2352 = !DILocation(line: 510, column: 19, scope: !2351)
!2353 = !DILocation(line: 511, column: 17, scope: !2351)
!2354 = !DILocation(line: 513, column: 13, scope: !2302)
!2355 = !DILocation(line: 517, column: 18, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2174, file: !129, line: 517, column: 15)
!2357 = !DILocation(line: 517, column: 26, scope: !2356)
!2358 = !DILocation(line: 517, column: 15, scope: !2174)
!2359 = !DILocation(line: 517, column: 40, scope: !2356)
!2360 = !DILocation(line: 517, column: 47, scope: !2356)
!2361 = !DILocation(line: 517, column: 57, scope: !2356)
!2362 = !DILocation(line: 517, column: 65, scope: !2356)
!2363 = !DILocation(line: 518, column: 13, scope: !2356)
!2364 = !DILocation(line: 517, column: 69, scope: !2356)
!2365 = !DILocation(line: 521, column: 15, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2174, file: !129, line: 521, column: 15)
!2367 = !DILocation(line: 521, column: 17, scope: !2366)
!2368 = !DILocation(line: 521, column: 15, scope: !2174)
!2369 = !DILocation(line: 522, column: 13, scope: !2366)
!2370 = !DILocation(line: 521, column: 20, scope: !2366)
!2371 = !DILocation(line: 525, column: 36, scope: !2174)
!2372 = !DILocation(line: 525, column: 11, scope: !2174)
!2373 = !DILocation(line: 536, column: 15, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2174, file: !129, line: 536, column: 15)
!2375 = !DILocation(line: 536, column: 29, scope: !2374)
!2376 = !DILocation(line: 537, column: 15, scope: !2374)
!2377 = !DILocation(line: 537, column: 18, scope: !2374)
!2378 = !DILocation(line: 536, column: 15, scope: !2174)
!2379 = !DILocation(line: 538, column: 13, scope: !2374)
!2380 = !DILocation(line: 539, column: 11, scope: !2174)
!2381 = !DILocation(line: 542, column: 36, scope: !2174)
!2382 = !DILocation(line: 543, column: 36, scope: !2174)
!2383 = !DILocation(line: 544, column: 15, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2174, file: !129, line: 544, column: 15)
!2385 = !DILocation(line: 544, column: 29, scope: !2384)
!2386 = !DILocation(line: 544, column: 15, scope: !2174)
!2387 = !DILocation(line: 546, column: 19, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !129, line: 546, column: 19)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !129, line: 545, column: 13)
!2390 = !DILocation(line: 546, column: 19, scope: !2389)
!2391 = !DILocation(line: 547, column: 17, scope: !2388)
!2392 = !DILocation(line: 549, column: 19, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !129, line: 549, column: 19)
!2394 = !DILocation(line: 549, column: 30, scope: !2393)
!2395 = !DILocation(line: 549, column: 35, scope: !2393)
!2396 = !DILocation(line: 549, column: 19, scope: !2389)
!2397 = !DILocation(line: 554, column: 37, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2393, file: !129, line: 550, column: 17)
!2399 = !DILocation(line: 554, column: 35, scope: !2398)
!2400 = !DILocation(line: 555, column: 30, scope: !2398)
!2401 = !DILocation(line: 556, column: 17, scope: !2398)
!2402 = !DILocation(line: 558, column: 15, scope: !2389)
!2403 = !DILocation(line: 558, column: 15, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !129, line: 558, column: 15)
!2405 = distinct !DILexicalBlock(scope: !2389, file: !129, line: 558, column: 15)
!2406 = !DILocation(line: 558, column: 15, scope: !2405)
!2407 = !DILocation(line: 559, column: 15, scope: !2389)
!2408 = !DILocation(line: 559, column: 15, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !129, line: 559, column: 15)
!2410 = distinct !DILexicalBlock(scope: !2389, file: !129, line: 559, column: 15)
!2411 = !DILocation(line: 559, column: 15, scope: !2410)
!2412 = !DILocation(line: 560, column: 15, scope: !2389)
!2413 = !DILocation(line: 560, column: 15, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !129, line: 560, column: 15)
!2415 = distinct !DILexicalBlock(scope: !2389, file: !129, line: 560, column: 15)
!2416 = !DILocation(line: 560, column: 15, scope: !2415)
!2417 = !DILocation(line: 561, column: 40, scope: !2389)
!2418 = !DILocation(line: 562, column: 13, scope: !2389)
!2419 = !DILocation(line: 563, column: 11, scope: !2174)
!2420 = !DILocation(line: 587, column: 36, scope: !2174)
!2421 = !DILocation(line: 588, column: 11, scope: !2174)
!2422 = !DILocalVariable(name: "m", scope: !2423, file: !129, line: 598, type: !151)
!2423 = distinct !DILexicalBlock(scope: !2174, file: !129, line: 596, column: 11)
!2424 = !DILocation(line: 598, column: 20, scope: !2423)
!2425 = !DILocalVariable(name: "printable", scope: !2423, file: !129, line: 600, type: !74)
!2426 = !DILocation(line: 600, column: 18, scope: !2423)
!2427 = !DILocation(line: 602, column: 17, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2423, file: !129, line: 602, column: 17)
!2429 = !DILocation(line: 602, column: 17, scope: !2423)
!2430 = !DILocation(line: 604, column: 19, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2428, file: !129, line: 603, column: 15)
!2432 = !DILocation(line: 605, column: 29, scope: !2431)
!2433 = !DILocation(line: 605, column: 41, scope: !2431)
!2434 = !DILocation(line: 605, column: 27, scope: !2431)
!2435 = !DILocation(line: 606, column: 15, scope: !2431)
!2436 = !DILocalVariable(name: "mbs", scope: !2437, file: !129, line: 609, type: !2438)
!2437 = distinct !DILexicalBlock(scope: !2428, file: !129, line: 608, column: 15)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !225, line: 6, baseType: !2439)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !227, line: 21, baseType: !2440)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 13, size: 64, elements: !2441)
!2441 = !{!2442, !2443}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2440, file: !227, line: 15, baseType: !38, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2440, file: !227, line: 20, baseType: !2444, size: 32, offset: 32)
!2444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2440, file: !227, line: 16, size: 32, elements: !2445)
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2444, file: !227, line: 18, baseType: !7, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2444, file: !227, line: 19, baseType: !236, size: 32)
!2448 = !DILocation(line: 609, column: 27, scope: !2437)
!2449 = !DILocation(line: 609, column: 32, scope: !2437)
!2450 = !DILocation(line: 611, column: 19, scope: !2437)
!2451 = !DILocation(line: 612, column: 27, scope: !2437)
!2452 = !DILocation(line: 613, column: 21, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2437, file: !129, line: 613, column: 21)
!2454 = !DILocation(line: 613, column: 29, scope: !2453)
!2455 = !DILocation(line: 613, column: 21, scope: !2437)
!2456 = !DILocation(line: 614, column: 37, scope: !2453)
!2457 = !DILocation(line: 614, column: 29, scope: !2453)
!2458 = !DILocation(line: 614, column: 27, scope: !2453)
!2459 = !DILocation(line: 614, column: 19, scope: !2453)
!2460 = !DILocation(line: 616, column: 17, scope: !2437)
!2461 = !DILocalVariable(name: "w", scope: !2462, file: !129, line: 618, type: !1759)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !129, line: 617, column: 19)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !129, line: 616, column: 17)
!2464 = distinct !DILexicalBlock(scope: !2437, file: !129, line: 616, column: 17)
!2465 = !DILocation(line: 618, column: 30, scope: !2462)
!2466 = !DILocalVariable(name: "bytes", scope: !2462, file: !129, line: 619, type: !151)
!2467 = !DILocation(line: 619, column: 28, scope: !2462)
!2468 = !DILocation(line: 619, column: 51, scope: !2462)
!2469 = !DILocation(line: 619, column: 55, scope: !2462)
!2470 = !DILocation(line: 619, column: 59, scope: !2462)
!2471 = !DILocation(line: 619, column: 57, scope: !2462)
!2472 = !DILocation(line: 620, column: 46, scope: !2462)
!2473 = !DILocation(line: 620, column: 57, scope: !2462)
!2474 = !DILocation(line: 620, column: 61, scope: !2462)
!2475 = !DILocation(line: 620, column: 59, scope: !2462)
!2476 = !DILocation(line: 620, column: 54, scope: !2462)
!2477 = !DILocation(line: 619, column: 36, scope: !2462)
!2478 = !DILocation(line: 621, column: 25, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2462, file: !129, line: 621, column: 25)
!2480 = !DILocation(line: 621, column: 31, scope: !2479)
!2481 = !DILocation(line: 621, column: 25, scope: !2462)
!2482 = !DILocation(line: 622, column: 23, scope: !2479)
!2483 = !DILocation(line: 623, column: 30, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !129, line: 623, column: 30)
!2485 = !DILocation(line: 623, column: 36, scope: !2484)
!2486 = !DILocation(line: 623, column: 30, scope: !2479)
!2487 = !DILocation(line: 625, column: 35, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !129, line: 624, column: 23)
!2489 = !DILocation(line: 626, column: 25, scope: !2488)
!2490 = !DILocation(line: 628, column: 30, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2484, file: !129, line: 628, column: 30)
!2492 = !DILocation(line: 628, column: 36, scope: !2491)
!2493 = !DILocation(line: 628, column: 30, scope: !2484)
!2494 = !DILocation(line: 630, column: 35, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !129, line: 629, column: 23)
!2496 = !DILocation(line: 631, column: 25, scope: !2495)
!2497 = !DILocation(line: 631, column: 32, scope: !2495)
!2498 = !DILocation(line: 631, column: 36, scope: !2495)
!2499 = !DILocation(line: 631, column: 34, scope: !2495)
!2500 = !DILocation(line: 631, column: 40, scope: !2495)
!2501 = !DILocation(line: 631, column: 38, scope: !2495)
!2502 = !DILocation(line: 631, column: 48, scope: !2495)
!2503 = !DILocation(line: 631, column: 51, scope: !2495)
!2504 = !DILocation(line: 631, column: 55, scope: !2495)
!2505 = !DILocation(line: 631, column: 59, scope: !2495)
!2506 = !DILocation(line: 631, column: 57, scope: !2495)
!2507 = !DILocation(line: 0, scope: !2495)
!2508 = !DILocation(line: 632, column: 28, scope: !2495)
!2509 = distinct !{!2509, !2496, !2508, !652}
!2510 = !DILocation(line: 633, column: 25, scope: !2495)
!2511 = !DILocation(line: 645, column: 44, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !129, line: 645, column: 29)
!2513 = distinct !DILexicalBlock(scope: !2491, file: !129, line: 636, column: 23)
!2514 = !DILocation(line: 646, column: 29, scope: !2512)
!2515 = !DILocation(line: 646, column: 32, scope: !2512)
!2516 = !DILocation(line: 646, column: 46, scope: !2512)
!2517 = !DILocation(line: 645, column: 29, scope: !2513)
!2518 = !DILocalVariable(name: "j", scope: !2519, file: !129, line: 648, type: !151)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !129, line: 648, column: 29)
!2520 = distinct !DILexicalBlock(scope: !2512, file: !129, line: 647, column: 27)
!2521 = !DILocation(line: 648, column: 41, scope: !2519)
!2522 = !DILocation(line: 648, column: 34, scope: !2519)
!2523 = !DILocation(line: 648, column: 48, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2519, file: !129, line: 648, column: 29)
!2525 = !DILocation(line: 648, column: 52, scope: !2524)
!2526 = !DILocation(line: 648, column: 50, scope: !2524)
!2527 = !DILocation(line: 648, column: 29, scope: !2519)
!2528 = !DILocation(line: 649, column: 39, scope: !2524)
!2529 = !DILocation(line: 649, column: 43, scope: !2524)
!2530 = !DILocation(line: 649, column: 47, scope: !2524)
!2531 = !DILocation(line: 649, column: 45, scope: !2524)
!2532 = !DILocation(line: 649, column: 51, scope: !2524)
!2533 = !DILocation(line: 649, column: 49, scope: !2524)
!2534 = !DILocation(line: 649, column: 31, scope: !2524)
!2535 = !DILocation(line: 653, column: 35, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2524, file: !129, line: 650, column: 33)
!2537 = !DILocation(line: 654, column: 33, scope: !2536)
!2538 = !DILocation(line: 648, column: 60, scope: !2524)
!2539 = !DILocation(line: 648, column: 29, scope: !2524)
!2540 = distinct !{!2540, !2527, !2541, !652}
!2541 = !DILocation(line: 654, column: 33, scope: !2519)
!2542 = !DILocation(line: 655, column: 27, scope: !2520)
!2543 = !DILocation(line: 657, column: 43, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2513, file: !129, line: 657, column: 29)
!2545 = !DILocation(line: 657, column: 31, scope: !2544)
!2546 = !DILocation(line: 657, column: 29, scope: !2513)
!2547 = !DILocation(line: 658, column: 37, scope: !2544)
!2548 = !DILocation(line: 658, column: 27, scope: !2544)
!2549 = !DILocation(line: 659, column: 30, scope: !2513)
!2550 = !DILocation(line: 659, column: 27, scope: !2513)
!2551 = !DILocation(line: 664, column: 23, scope: !2462)
!2552 = !DILocation(line: 668, column: 40, scope: !2423)
!2553 = !DILocation(line: 668, column: 38, scope: !2423)
!2554 = !DILocation(line: 670, column: 21, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2423, file: !129, line: 670, column: 17)
!2556 = !DILocation(line: 670, column: 19, scope: !2555)
!2557 = !DILocation(line: 670, column: 23, scope: !2555)
!2558 = !DILocation(line: 670, column: 27, scope: !2555)
!2559 = !DILocation(line: 670, column: 45, scope: !2555)
!2560 = !DILocation(line: 670, column: 50, scope: !2555)
!2561 = !DILocation(line: 670, column: 17, scope: !2423)
!2562 = !DILocalVariable(name: "ilim", scope: !2563, file: !129, line: 674, type: !151)
!2563 = distinct !DILexicalBlock(scope: !2555, file: !129, line: 671, column: 15)
!2564 = !DILocation(line: 674, column: 24, scope: !2563)
!2565 = !DILocation(line: 674, column: 31, scope: !2563)
!2566 = !DILocation(line: 674, column: 35, scope: !2563)
!2567 = !DILocation(line: 674, column: 33, scope: !2563)
!2568 = !DILocation(line: 676, column: 17, scope: !2563)
!2569 = !DILocation(line: 678, column: 25, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !129, line: 678, column: 25)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !129, line: 677, column: 19)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !129, line: 676, column: 17)
!2573 = distinct !DILexicalBlock(scope: !2563, file: !129, line: 676, column: 17)
!2574 = !DILocation(line: 678, column: 43, scope: !2570)
!2575 = !DILocation(line: 678, column: 48, scope: !2570)
!2576 = !DILocation(line: 678, column: 25, scope: !2571)
!2577 = !DILocation(line: 680, column: 25, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2570, file: !129, line: 679, column: 23)
!2579 = !DILocation(line: 680, column: 25, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !129, line: 680, column: 25)
!2581 = distinct !DILexicalBlock(scope: !2578, file: !129, line: 680, column: 25)
!2582 = !DILocation(line: 680, column: 25, scope: !2581)
!2583 = !DILocation(line: 680, column: 25, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !129, line: 680, column: 25)
!2585 = !DILocation(line: 680, column: 25, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2584, file: !129, line: 680, column: 25)
!2587 = !DILocation(line: 680, column: 25, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !129, line: 680, column: 25)
!2589 = distinct !DILexicalBlock(scope: !2586, file: !129, line: 680, column: 25)
!2590 = !DILocation(line: 680, column: 25, scope: !2589)
!2591 = !DILocation(line: 680, column: 25, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !129, line: 680, column: 25)
!2593 = distinct !DILexicalBlock(scope: !2586, file: !129, line: 680, column: 25)
!2594 = !DILocation(line: 680, column: 25, scope: !2593)
!2595 = !DILocation(line: 680, column: 25, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !129, line: 680, column: 25)
!2597 = distinct !DILexicalBlock(scope: !2586, file: !129, line: 680, column: 25)
!2598 = !DILocation(line: 680, column: 25, scope: !2597)
!2599 = !DILocation(line: 680, column: 25, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !129, line: 680, column: 25)
!2601 = distinct !DILexicalBlock(scope: !2581, file: !129, line: 680, column: 25)
!2602 = !DILocation(line: 680, column: 25, scope: !2601)
!2603 = !DILocation(line: 681, column: 25, scope: !2578)
!2604 = !DILocation(line: 681, column: 25, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !129, line: 681, column: 25)
!2606 = distinct !DILexicalBlock(scope: !2578, file: !129, line: 681, column: 25)
!2607 = !DILocation(line: 681, column: 25, scope: !2606)
!2608 = !DILocation(line: 682, column: 25, scope: !2578)
!2609 = !DILocation(line: 682, column: 25, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !129, line: 682, column: 25)
!2611 = distinct !DILexicalBlock(scope: !2578, file: !129, line: 682, column: 25)
!2612 = !DILocation(line: 682, column: 25, scope: !2611)
!2613 = !DILocation(line: 683, column: 36, scope: !2578)
!2614 = !DILocation(line: 683, column: 38, scope: !2578)
!2615 = !DILocation(line: 683, column: 33, scope: !2578)
!2616 = !DILocation(line: 683, column: 29, scope: !2578)
!2617 = !DILocation(line: 683, column: 27, scope: !2578)
!2618 = !DILocation(line: 684, column: 23, scope: !2578)
!2619 = !DILocation(line: 685, column: 30, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2570, file: !129, line: 685, column: 30)
!2621 = !DILocation(line: 685, column: 30, scope: !2570)
!2622 = !DILocation(line: 687, column: 25, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2620, file: !129, line: 686, column: 23)
!2624 = !DILocation(line: 687, column: 25, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !129, line: 687, column: 25)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !129, line: 687, column: 25)
!2627 = !DILocation(line: 687, column: 25, scope: !2626)
!2628 = !DILocation(line: 688, column: 40, scope: !2623)
!2629 = !DILocation(line: 689, column: 23, scope: !2623)
!2630 = !DILocation(line: 690, column: 25, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2571, file: !129, line: 690, column: 25)
!2632 = !DILocation(line: 690, column: 33, scope: !2631)
!2633 = !DILocation(line: 690, column: 35, scope: !2631)
!2634 = !DILocation(line: 690, column: 30, scope: !2631)
!2635 = !DILocation(line: 690, column: 25, scope: !2571)
!2636 = !DILocation(line: 691, column: 23, scope: !2631)
!2637 = !DILocation(line: 692, column: 21, scope: !2571)
!2638 = !DILocation(line: 692, column: 21, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !129, line: 692, column: 21)
!2640 = distinct !DILexicalBlock(scope: !2571, file: !129, line: 692, column: 21)
!2641 = !DILocation(line: 692, column: 21, scope: !2640)
!2642 = !DILocation(line: 692, column: 21, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !129, line: 692, column: 21)
!2644 = !DILocation(line: 692, column: 21, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !129, line: 692, column: 21)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !129, line: 692, column: 21)
!2647 = !DILocation(line: 692, column: 21, scope: !2646)
!2648 = !DILocation(line: 692, column: 21, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !129, line: 692, column: 21)
!2650 = distinct !DILexicalBlock(scope: !2643, file: !129, line: 692, column: 21)
!2651 = !DILocation(line: 692, column: 21, scope: !2650)
!2652 = !DILocation(line: 693, column: 21, scope: !2571)
!2653 = !DILocation(line: 693, column: 21, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !129, line: 693, column: 21)
!2655 = distinct !DILexicalBlock(scope: !2571, file: !129, line: 693, column: 21)
!2656 = !DILocation(line: 693, column: 21, scope: !2655)
!2657 = !DILocation(line: 694, column: 25, scope: !2571)
!2658 = !DILocation(line: 694, column: 29, scope: !2571)
!2659 = !DILocation(line: 694, column: 23, scope: !2571)
!2660 = !DILocation(line: 676, column: 17, scope: !2572)
!2661 = distinct !{!2661, !2662, !2663}
!2662 = !DILocation(line: 676, column: 17, scope: !2573)
!2663 = !DILocation(line: 695, column: 19, scope: !2573)
!2664 = !DILocation(line: 697, column: 17, scope: !2563)
!2665 = !DILocation(line: 700, column: 9, scope: !2174)
!2666 = !DILocation(line: 702, column: 16, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2124, file: !129, line: 702, column: 11)
!2668 = !DILocation(line: 702, column: 34, scope: !2667)
!2669 = !DILocation(line: 702, column: 37, scope: !2667)
!2670 = !DILocation(line: 702, column: 51, scope: !2667)
!2671 = !DILocation(line: 703, column: 15, scope: !2667)
!2672 = !DILocation(line: 703, column: 18, scope: !2667)
!2673 = !DILocation(line: 704, column: 14, scope: !2667)
!2674 = !DILocation(line: 704, column: 17, scope: !2667)
!2675 = !DILocation(line: 705, column: 14, scope: !2667)
!2676 = !DILocation(line: 705, column: 17, scope: !2667)
!2677 = !DILocation(line: 705, column: 33, scope: !2667)
!2678 = !DILocation(line: 705, column: 35, scope: !2667)
!2679 = !DILocation(line: 705, column: 51, scope: !2667)
!2680 = !DILocation(line: 705, column: 53, scope: !2667)
!2681 = !DILocation(line: 705, column: 47, scope: !2667)
!2682 = !DILocation(line: 705, column: 65, scope: !2667)
!2683 = !DILocation(line: 706, column: 11, scope: !2667)
!2684 = !DILocation(line: 706, column: 15, scope: !2667)
!2685 = !DILocation(line: 702, column: 11, scope: !2124)
!2686 = !DILocation(line: 707, column: 9, scope: !2667)
!2687 = !DILabel(scope: !2124, name: "store_escape", file: !129, line: 709)
!2688 = !DILocation(line: 709, column: 5, scope: !2124)
!2689 = !DILocation(line: 710, column: 7, scope: !2124)
!2690 = !DILocation(line: 710, column: 7, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !129, line: 710, column: 7)
!2692 = distinct !DILexicalBlock(scope: !2124, file: !129, line: 710, column: 7)
!2693 = !DILocation(line: 710, column: 7, scope: !2692)
!2694 = !DILocation(line: 710, column: 7, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2692, file: !129, line: 710, column: 7)
!2696 = !DILocation(line: 710, column: 7, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2695, file: !129, line: 710, column: 7)
!2698 = !DILocation(line: 710, column: 7, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !129, line: 710, column: 7)
!2700 = distinct !DILexicalBlock(scope: !2697, file: !129, line: 710, column: 7)
!2701 = !DILocation(line: 710, column: 7, scope: !2700)
!2702 = !DILocation(line: 710, column: 7, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !129, line: 710, column: 7)
!2704 = distinct !DILexicalBlock(scope: !2697, file: !129, line: 710, column: 7)
!2705 = !DILocation(line: 710, column: 7, scope: !2704)
!2706 = !DILocation(line: 710, column: 7, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !129, line: 710, column: 7)
!2708 = distinct !DILexicalBlock(scope: !2697, file: !129, line: 710, column: 7)
!2709 = !DILocation(line: 710, column: 7, scope: !2708)
!2710 = !DILocation(line: 710, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !129, line: 710, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2692, file: !129, line: 710, column: 7)
!2713 = !DILocation(line: 710, column: 7, scope: !2712)
!2714 = !DILabel(scope: !2124, name: "store_c", file: !129, line: 712)
!2715 = !DILocation(line: 712, column: 5, scope: !2124)
!2716 = !DILocation(line: 713, column: 7, scope: !2124)
!2717 = !DILocation(line: 713, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !129, line: 713, column: 7)
!2719 = distinct !DILexicalBlock(scope: !2124, file: !129, line: 713, column: 7)
!2720 = !DILocation(line: 713, column: 7, scope: !2719)
!2721 = !DILocation(line: 713, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2718, file: !129, line: 713, column: 7)
!2723 = !DILocation(line: 713, column: 7, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !129, line: 713, column: 7)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !129, line: 713, column: 7)
!2726 = !DILocation(line: 713, column: 7, scope: !2725)
!2727 = !DILocation(line: 713, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !129, line: 713, column: 7)
!2729 = distinct !DILexicalBlock(scope: !2722, file: !129, line: 713, column: 7)
!2730 = !DILocation(line: 713, column: 7, scope: !2729)
!2731 = !DILocation(line: 714, column: 7, scope: !2124)
!2732 = !DILocation(line: 714, column: 7, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !129, line: 714, column: 7)
!2734 = distinct !DILexicalBlock(scope: !2124, file: !129, line: 714, column: 7)
!2735 = !DILocation(line: 714, column: 7, scope: !2734)
!2736 = !DILocation(line: 716, column: 13, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2124, file: !129, line: 716, column: 11)
!2738 = !DILocation(line: 716, column: 11, scope: !2124)
!2739 = !DILocation(line: 717, column: 38, scope: !2737)
!2740 = !DILocation(line: 717, column: 9, scope: !2737)
!2741 = !DILocation(line: 718, column: 5, scope: !2124)
!2742 = !DILocation(line: 395, column: 82, scope: !2113)
!2743 = !DILocation(line: 395, column: 3, scope: !2113)
!2744 = distinct !{!2744, !2122, !2745, !652}
!2745 = !DILocation(line: 718, column: 5, scope: !2109)
!2746 = !DILocation(line: 720, column: 7, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !1971, file: !129, line: 720, column: 7)
!2748 = !DILocation(line: 720, column: 11, scope: !2747)
!2749 = !DILocation(line: 720, column: 16, scope: !2747)
!2750 = !DILocation(line: 720, column: 19, scope: !2747)
!2751 = !DILocation(line: 720, column: 33, scope: !2747)
!2752 = !DILocation(line: 721, column: 7, scope: !2747)
!2753 = !DILocation(line: 721, column: 10, scope: !2747)
!2754 = !DILocation(line: 720, column: 7, scope: !1971)
!2755 = !DILocation(line: 722, column: 5, scope: !2747)
!2756 = !DILocation(line: 728, column: 7, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !1971, file: !129, line: 728, column: 7)
!2758 = !DILocation(line: 728, column: 21, scope: !2757)
!2759 = !DILocation(line: 728, column: 51, scope: !2757)
!2760 = !DILocation(line: 728, column: 56, scope: !2757)
!2761 = !DILocation(line: 729, column: 7, scope: !2757)
!2762 = !DILocation(line: 729, column: 10, scope: !2757)
!2763 = !DILocation(line: 728, column: 7, scope: !1971)
!2764 = !DILocation(line: 731, column: 11, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !129, line: 731, column: 11)
!2766 = distinct !DILexicalBlock(scope: !2757, file: !129, line: 730, column: 5)
!2767 = !DILocation(line: 731, column: 11, scope: !2766)
!2768 = !DILocation(line: 732, column: 42, scope: !2765)
!2769 = !DILocation(line: 732, column: 50, scope: !2765)
!2770 = !DILocation(line: 732, column: 67, scope: !2765)
!2771 = !DILocation(line: 732, column: 72, scope: !2765)
!2772 = !DILocation(line: 734, column: 42, scope: !2765)
!2773 = !DILocation(line: 734, column: 49, scope: !2765)
!2774 = !DILocation(line: 735, column: 42, scope: !2765)
!2775 = !DILocation(line: 735, column: 54, scope: !2765)
!2776 = !DILocation(line: 732, column: 16, scope: !2765)
!2777 = !DILocation(line: 732, column: 9, scope: !2765)
!2778 = !DILocation(line: 736, column: 18, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2765, file: !129, line: 736, column: 16)
!2780 = !DILocation(line: 736, column: 29, scope: !2779)
!2781 = !DILocation(line: 736, column: 32, scope: !2779)
!2782 = !DILocation(line: 736, column: 16, scope: !2765)
!2783 = !DILocation(line: 739, column: 24, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2779, file: !129, line: 737, column: 9)
!2785 = !DILocation(line: 739, column: 22, scope: !2784)
!2786 = !DILocation(line: 740, column: 15, scope: !2784)
!2787 = !DILocation(line: 741, column: 11, scope: !2784)
!2788 = !DILocation(line: 743, column: 5, scope: !2766)
!2789 = !DILocation(line: 745, column: 7, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !1971, file: !129, line: 745, column: 7)
!2791 = !DILocation(line: 745, column: 20, scope: !2790)
!2792 = !DILocation(line: 745, column: 24, scope: !2790)
!2793 = !DILocation(line: 745, column: 7, scope: !1971)
!2794 = !DILocation(line: 746, column: 5, scope: !2790)
!2795 = !DILocation(line: 746, column: 13, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !129, line: 746, column: 5)
!2797 = distinct !DILexicalBlock(scope: !2790, file: !129, line: 746, column: 5)
!2798 = !DILocation(line: 746, column: 12, scope: !2796)
!2799 = !DILocation(line: 746, column: 5, scope: !2797)
!2800 = !DILocation(line: 747, column: 7, scope: !2796)
!2801 = !DILocation(line: 747, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !129, line: 747, column: 7)
!2803 = distinct !DILexicalBlock(scope: !2796, file: !129, line: 747, column: 7)
!2804 = !DILocation(line: 747, column: 7, scope: !2803)
!2805 = !DILocation(line: 746, column: 39, scope: !2796)
!2806 = !DILocation(line: 746, column: 5, scope: !2796)
!2807 = distinct !{!2807, !2799, !2808, !652}
!2808 = !DILocation(line: 747, column: 7, scope: !2797)
!2809 = !DILocation(line: 749, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !1971, file: !129, line: 749, column: 7)
!2811 = !DILocation(line: 749, column: 13, scope: !2810)
!2812 = !DILocation(line: 749, column: 11, scope: !2810)
!2813 = !DILocation(line: 749, column: 7, scope: !1971)
!2814 = !DILocation(line: 750, column: 5, scope: !2810)
!2815 = !DILocation(line: 750, column: 12, scope: !2810)
!2816 = !DILocation(line: 750, column: 17, scope: !2810)
!2817 = !DILocation(line: 751, column: 10, scope: !1971)
!2818 = !DILocation(line: 751, column: 3, scope: !1971)
!2819 = !DILabel(scope: !1971, name: "force_outer_quoting_style", file: !129, line: 753)
!2820 = !DILocation(line: 753, column: 2, scope: !1971)
!2821 = !DILocation(line: 756, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !1971, file: !129, line: 756, column: 7)
!2823 = !DILocation(line: 756, column: 21, scope: !2822)
!2824 = !DILocation(line: 756, column: 51, scope: !2822)
!2825 = !DILocation(line: 756, column: 54, scope: !2822)
!2826 = !DILocation(line: 756, column: 7, scope: !1971)
!2827 = !DILocation(line: 757, column: 19, scope: !2822)
!2828 = !DILocation(line: 757, column: 5, scope: !2822)
!2829 = !DILocation(line: 758, column: 36, scope: !1971)
!2830 = !DILocation(line: 758, column: 44, scope: !1971)
!2831 = !DILocation(line: 758, column: 56, scope: !1971)
!2832 = !DILocation(line: 758, column: 61, scope: !1971)
!2833 = !DILocation(line: 759, column: 36, scope: !1971)
!2834 = !DILocation(line: 760, column: 36, scope: !1971)
!2835 = !DILocation(line: 760, column: 42, scope: !1971)
!2836 = !DILocation(line: 761, column: 36, scope: !1971)
!2837 = !DILocation(line: 761, column: 48, scope: !1971)
!2838 = !DILocation(line: 758, column: 10, scope: !1971)
!2839 = !DILocation(line: 758, column: 3, scope: !1971)
!2840 = !DILocation(line: 762, column: 1, scope: !1971)
!2841 = !DILocalVariable(name: "msgid", arg: 1, scope: !182, file: !129, line: 197, type: !47)
!2842 = !DILocation(line: 197, column: 28, scope: !182)
!2843 = !DILocalVariable(name: "s", arg: 2, scope: !182, file: !129, line: 197, type: !131)
!2844 = !DILocation(line: 197, column: 54, scope: !182)
!2845 = !DILocalVariable(name: "translation", scope: !182, file: !129, line: 199, type: !47)
!2846 = !DILocation(line: 199, column: 15, scope: !182)
!2847 = !DILocation(line: 199, column: 29, scope: !182)
!2848 = !DILocation(line: 201, column: 7, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !182, file: !129, line: 201, column: 7)
!2850 = !DILocation(line: 201, column: 22, scope: !2849)
!2851 = !DILocation(line: 201, column: 19, scope: !2849)
!2852 = !DILocation(line: 201, column: 7, scope: !182)
!2853 = !DILocation(line: 202, column: 12, scope: !2849)
!2854 = !DILocation(line: 202, column: 5, scope: !2849)
!2855 = !DILocalVariable(name: "w", scope: !182, file: !129, line: 229, type: !1759)
!2856 = !DILocation(line: 229, column: 12, scope: !182)
!2857 = !DILocalVariable(name: "mbs", scope: !182, file: !129, line: 230, type: !2438)
!2858 = !DILocation(line: 230, column: 13, scope: !182)
!2859 = !DILocation(line: 230, column: 18, scope: !182)
!2860 = !DILocation(line: 231, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !182, file: !129, line: 231, column: 7)
!2862 = !DILocation(line: 231, column: 40, scope: !2861)
!2863 = !DILocation(line: 231, column: 45, scope: !2861)
!2864 = !DILocation(line: 231, column: 48, scope: !2861)
!2865 = !DILocation(line: 231, column: 50, scope: !2861)
!2866 = !DILocation(line: 231, column: 7, scope: !182)
!2867 = !DILocation(line: 232, column: 18, scope: !2861)
!2868 = !DILocation(line: 232, column: 27, scope: !2861)
!2869 = !DILocation(line: 232, column: 12, scope: !2861)
!2870 = !DILocation(line: 232, column: 5, scope: !2861)
!2871 = !DILocation(line: 234, column: 11, scope: !182)
!2872 = !DILocation(line: 234, column: 13, scope: !182)
!2873 = !DILocation(line: 234, column: 3, scope: !182)
!2874 = !DILocation(line: 235, column: 1, scope: !182)
!2875 = distinct !DISubprogram(name: "quotearg_alloc", scope: !129, file: !129, line: 788, type: !2876, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!35, !47, !151, !1811}
!2878 = !DILocalVariable(name: "arg", arg: 1, scope: !2875, file: !129, line: 788, type: !47)
!2879 = !DILocation(line: 788, column: 29, scope: !2875)
!2880 = !DILocalVariable(name: "argsize", arg: 2, scope: !2875, file: !129, line: 788, type: !151)
!2881 = !DILocation(line: 788, column: 41, scope: !2875)
!2882 = !DILocalVariable(name: "o", arg: 3, scope: !2875, file: !129, line: 789, type: !1811)
!2883 = !DILocation(line: 789, column: 47, scope: !2875)
!2884 = !DILocation(line: 791, column: 30, scope: !2875)
!2885 = !DILocation(line: 791, column: 35, scope: !2875)
!2886 = !DILocation(line: 791, column: 50, scope: !2875)
!2887 = !DILocation(line: 791, column: 10, scope: !2875)
!2888 = !DILocation(line: 791, column: 3, scope: !2875)
!2889 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !129, file: !129, line: 801, type: !2890, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!35, !47, !151, !481, !1811}
!2892 = !DILocalVariable(name: "arg", arg: 1, scope: !2889, file: !129, line: 801, type: !47)
!2893 = !DILocation(line: 801, column: 33, scope: !2889)
!2894 = !DILocalVariable(name: "argsize", arg: 2, scope: !2889, file: !129, line: 801, type: !151)
!2895 = !DILocation(line: 801, column: 45, scope: !2889)
!2896 = !DILocalVariable(name: "size", arg: 3, scope: !2889, file: !129, line: 801, type: !481)
!2897 = !DILocation(line: 801, column: 62, scope: !2889)
!2898 = !DILocalVariable(name: "o", arg: 4, scope: !2889, file: !129, line: 802, type: !1811)
!2899 = !DILocation(line: 802, column: 51, scope: !2889)
!2900 = !DILocalVariable(name: "p", scope: !2889, file: !129, line: 804, type: !1811)
!2901 = !DILocation(line: 804, column: 33, scope: !2889)
!2902 = !DILocation(line: 804, column: 37, scope: !2889)
!2903 = !DILocation(line: 804, column: 41, scope: !2889)
!2904 = !DILocalVariable(name: "saved_errno", scope: !2889, file: !129, line: 805, type: !38)
!2905 = !DILocation(line: 805, column: 7, scope: !2889)
!2906 = !DILocation(line: 805, column: 21, scope: !2889)
!2907 = !DILocalVariable(name: "flags", scope: !2889, file: !129, line: 807, type: !38)
!2908 = !DILocation(line: 807, column: 7, scope: !2889)
!2909 = !DILocation(line: 807, column: 15, scope: !2889)
!2910 = !DILocation(line: 807, column: 18, scope: !2889)
!2911 = !DILocation(line: 807, column: 27, scope: !2889)
!2912 = !DILocation(line: 807, column: 24, scope: !2889)
!2913 = !DILocalVariable(name: "bufsize", scope: !2889, file: !129, line: 808, type: !151)
!2914 = !DILocation(line: 808, column: 10, scope: !2889)
!2915 = !DILocation(line: 808, column: 55, scope: !2889)
!2916 = !DILocation(line: 808, column: 60, scope: !2889)
!2917 = !DILocation(line: 808, column: 69, scope: !2889)
!2918 = !DILocation(line: 808, column: 72, scope: !2889)
!2919 = !DILocation(line: 809, column: 46, scope: !2889)
!2920 = !DILocation(line: 809, column: 53, scope: !2889)
!2921 = !DILocation(line: 809, column: 56, scope: !2889)
!2922 = !DILocation(line: 810, column: 46, scope: !2889)
!2923 = !DILocation(line: 810, column: 49, scope: !2889)
!2924 = !DILocation(line: 811, column: 46, scope: !2889)
!2925 = !DILocation(line: 811, column: 49, scope: !2889)
!2926 = !DILocation(line: 808, column: 20, scope: !2889)
!2927 = !DILocation(line: 811, column: 62, scope: !2889)
!2928 = !DILocalVariable(name: "buf", scope: !2889, file: !129, line: 812, type: !35)
!2929 = !DILocation(line: 812, column: 9, scope: !2889)
!2930 = !DILocation(line: 812, column: 27, scope: !2889)
!2931 = !DILocation(line: 812, column: 15, scope: !2889)
!2932 = !DILocation(line: 813, column: 29, scope: !2889)
!2933 = !DILocation(line: 813, column: 34, scope: !2889)
!2934 = !DILocation(line: 813, column: 43, scope: !2889)
!2935 = !DILocation(line: 813, column: 48, scope: !2889)
!2936 = !DILocation(line: 813, column: 57, scope: !2889)
!2937 = !DILocation(line: 813, column: 60, scope: !2889)
!2938 = !DILocation(line: 813, column: 67, scope: !2889)
!2939 = !DILocation(line: 814, column: 29, scope: !2889)
!2940 = !DILocation(line: 814, column: 32, scope: !2889)
!2941 = !DILocation(line: 815, column: 29, scope: !2889)
!2942 = !DILocation(line: 815, column: 32, scope: !2889)
!2943 = !DILocation(line: 815, column: 44, scope: !2889)
!2944 = !DILocation(line: 815, column: 47, scope: !2889)
!2945 = !DILocation(line: 813, column: 3, scope: !2889)
!2946 = !DILocation(line: 816, column: 11, scope: !2889)
!2947 = !DILocation(line: 816, column: 3, scope: !2889)
!2948 = !DILocation(line: 816, column: 9, scope: !2889)
!2949 = !DILocation(line: 817, column: 7, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2889, file: !129, line: 817, column: 7)
!2951 = !DILocation(line: 817, column: 7, scope: !2889)
!2952 = !DILocation(line: 818, column: 13, scope: !2950)
!2953 = !DILocation(line: 818, column: 21, scope: !2950)
!2954 = !DILocation(line: 818, column: 6, scope: !2950)
!2955 = !DILocation(line: 818, column: 11, scope: !2950)
!2956 = !DILocation(line: 818, column: 5, scope: !2950)
!2957 = !DILocation(line: 819, column: 10, scope: !2889)
!2958 = !DILocation(line: 819, column: 3, scope: !2889)
!2959 = distinct !DISubprogram(name: "quotearg_free", scope: !129, file: !129, line: 837, type: !107, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!2960 = !DILocalVariable(name: "sv", scope: !2959, file: !129, line: 839, type: !190)
!2961 = !DILocation(line: 839, column: 19, scope: !2959)
!2962 = !DILocation(line: 839, column: 24, scope: !2959)
!2963 = !DILocalVariable(name: "i", scope: !2964, file: !129, line: 840, type: !38)
!2964 = distinct !DILexicalBlock(scope: !2959, file: !129, line: 840, column: 3)
!2965 = !DILocation(line: 840, column: 12, scope: !2964)
!2966 = !DILocation(line: 840, column: 8, scope: !2964)
!2967 = !DILocation(line: 840, column: 19, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2964, file: !129, line: 840, column: 3)
!2969 = !DILocation(line: 840, column: 23, scope: !2968)
!2970 = !DILocation(line: 840, column: 21, scope: !2968)
!2971 = !DILocation(line: 840, column: 3, scope: !2964)
!2972 = !DILocation(line: 841, column: 11, scope: !2968)
!2973 = !DILocation(line: 841, column: 14, scope: !2968)
!2974 = !DILocation(line: 841, column: 17, scope: !2968)
!2975 = !DILocation(line: 841, column: 5, scope: !2968)
!2976 = !DILocation(line: 840, column: 32, scope: !2968)
!2977 = !DILocation(line: 840, column: 3, scope: !2968)
!2978 = distinct !{!2978, !2971, !2979, !652}
!2979 = !DILocation(line: 841, column: 20, scope: !2964)
!2980 = !DILocation(line: 842, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2959, file: !129, line: 842, column: 7)
!2982 = !DILocation(line: 842, column: 13, scope: !2981)
!2983 = !DILocation(line: 842, column: 17, scope: !2981)
!2984 = !DILocation(line: 842, column: 7, scope: !2959)
!2985 = !DILocation(line: 844, column: 13, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !129, line: 843, column: 5)
!2987 = !DILocation(line: 844, column: 19, scope: !2986)
!2988 = !DILocation(line: 844, column: 7, scope: !2986)
!2989 = !DILocation(line: 845, column: 21, scope: !2986)
!2990 = !DILocation(line: 846, column: 20, scope: !2986)
!2991 = !DILocation(line: 847, column: 5, scope: !2986)
!2992 = !DILocation(line: 848, column: 7, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2959, file: !129, line: 848, column: 7)
!2994 = !DILocation(line: 848, column: 10, scope: !2993)
!2995 = !DILocation(line: 848, column: 7, scope: !2959)
!2996 = !DILocation(line: 850, column: 13, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2993, file: !129, line: 849, column: 5)
!2998 = !DILocation(line: 850, column: 7, scope: !2997)
!2999 = !DILocation(line: 851, column: 15, scope: !2997)
!3000 = !DILocation(line: 852, column: 5, scope: !2997)
!3001 = !DILocation(line: 853, column: 10, scope: !2959)
!3002 = !DILocation(line: 854, column: 1, scope: !2959)
!3003 = distinct !DISubprogram(name: "quotearg_n", scope: !129, file: !129, line: 919, type: !3004, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!35, !38, !47}
!3006 = !DILocalVariable(name: "n", arg: 1, scope: !3003, file: !129, line: 919, type: !38)
!3007 = !DILocation(line: 919, column: 17, scope: !3003)
!3008 = !DILocalVariable(name: "arg", arg: 2, scope: !3003, file: !129, line: 919, type: !47)
!3009 = !DILocation(line: 919, column: 32, scope: !3003)
!3010 = !DILocation(line: 921, column: 30, scope: !3003)
!3011 = !DILocation(line: 921, column: 33, scope: !3003)
!3012 = !DILocation(line: 921, column: 10, scope: !3003)
!3013 = !DILocation(line: 921, column: 3, scope: !3003)
!3014 = distinct !DISubprogram(name: "quotearg_n_options", scope: !129, file: !129, line: 866, type: !3015, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!35, !38, !47, !151, !1811}
!3017 = !DILocalVariable(name: "n", arg: 1, scope: !3014, file: !129, line: 866, type: !38)
!3018 = !DILocation(line: 866, column: 25, scope: !3014)
!3019 = !DILocalVariable(name: "arg", arg: 2, scope: !3014, file: !129, line: 866, type: !47)
!3020 = !DILocation(line: 866, column: 40, scope: !3014)
!3021 = !DILocalVariable(name: "argsize", arg: 3, scope: !3014, file: !129, line: 866, type: !151)
!3022 = !DILocation(line: 866, column: 52, scope: !3014)
!3023 = !DILocalVariable(name: "options", arg: 4, scope: !3014, file: !129, line: 867, type: !1811)
!3024 = !DILocation(line: 867, column: 51, scope: !3014)
!3025 = !DILocalVariable(name: "saved_errno", scope: !3014, file: !129, line: 869, type: !38)
!3026 = !DILocation(line: 869, column: 7, scope: !3014)
!3027 = !DILocation(line: 869, column: 21, scope: !3014)
!3028 = !DILocalVariable(name: "sv", scope: !3014, file: !129, line: 871, type: !190)
!3029 = !DILocation(line: 871, column: 19, scope: !3014)
!3030 = !DILocation(line: 871, column: 24, scope: !3014)
!3031 = !DILocalVariable(name: "nslots_max", scope: !3014, file: !129, line: 873, type: !38)
!3032 = !DILocation(line: 873, column: 7, scope: !3014)
!3033 = !DILocation(line: 874, column: 15, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3014, file: !129, line: 874, column: 7)
!3035 = !DILocation(line: 874, column: 12, scope: !3034)
!3036 = !DILocation(line: 874, column: 17, scope: !3034)
!3037 = !DILocation(line: 874, column: 20, scope: !3034)
!3038 = !DILocation(line: 874, column: 24, scope: !3034)
!3039 = !DILocation(line: 874, column: 22, scope: !3034)
!3040 = !DILocation(line: 874, column: 7, scope: !3014)
!3041 = !DILocation(line: 875, column: 5, scope: !3034)
!3042 = !DILocation(line: 877, column: 7, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3014, file: !129, line: 877, column: 7)
!3044 = !DILocation(line: 877, column: 17, scope: !3043)
!3045 = !DILocation(line: 877, column: 14, scope: !3043)
!3046 = !DILocation(line: 877, column: 7, scope: !3014)
!3047 = !DILocalVariable(name: "preallocated", scope: !3048, file: !129, line: 879, type: !74)
!3048 = distinct !DILexicalBlock(scope: !3043, file: !129, line: 878, column: 5)
!3049 = !DILocation(line: 879, column: 12, scope: !3048)
!3050 = !DILocation(line: 879, column: 28, scope: !3048)
!3051 = !DILocation(line: 879, column: 31, scope: !3048)
!3052 = !DILocalVariable(name: "new_nslots", scope: !3048, file: !129, line: 880, type: !489)
!3053 = !DILocation(line: 880, column: 13, scope: !3048)
!3054 = !DILocation(line: 880, column: 26, scope: !3048)
!3055 = !DILocation(line: 882, column: 31, scope: !3048)
!3056 = !DILocation(line: 882, column: 53, scope: !3048)
!3057 = !DILocation(line: 883, column: 31, scope: !3048)
!3058 = !DILocation(line: 883, column: 35, scope: !3048)
!3059 = !DILocation(line: 883, column: 33, scope: !3048)
!3060 = !DILocation(line: 883, column: 42, scope: !3048)
!3061 = !DILocation(line: 883, column: 47, scope: !3048)
!3062 = !DILocation(line: 882, column: 22, scope: !3048)
!3063 = !DILocation(line: 882, column: 20, scope: !3048)
!3064 = !DILocation(line: 882, column: 15, scope: !3048)
!3065 = !DILocation(line: 884, column: 11, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3048, file: !129, line: 884, column: 11)
!3067 = !DILocation(line: 884, column: 11, scope: !3048)
!3068 = !DILocation(line: 885, column: 10, scope: !3066)
!3069 = !DILocation(line: 885, column: 15, scope: !3066)
!3070 = !DILocation(line: 885, column: 9, scope: !3066)
!3071 = !DILocation(line: 886, column: 15, scope: !3048)
!3072 = !DILocation(line: 886, column: 20, scope: !3048)
!3073 = !DILocation(line: 886, column: 18, scope: !3048)
!3074 = !DILocation(line: 886, column: 7, scope: !3048)
!3075 = !DILocation(line: 886, column: 32, scope: !3048)
!3076 = !DILocation(line: 886, column: 45, scope: !3048)
!3077 = !DILocation(line: 886, column: 43, scope: !3048)
!3078 = !DILocation(line: 886, column: 53, scope: !3048)
!3079 = !DILocation(line: 887, column: 16, scope: !3048)
!3080 = !DILocation(line: 887, column: 14, scope: !3048)
!3081 = !DILocation(line: 888, column: 5, scope: !3048)
!3082 = !DILocalVariable(name: "size", scope: !3083, file: !129, line: 891, type: !151)
!3083 = distinct !DILexicalBlock(scope: !3014, file: !129, line: 890, column: 3)
!3084 = !DILocation(line: 891, column: 12, scope: !3083)
!3085 = !DILocation(line: 891, column: 19, scope: !3083)
!3086 = !DILocation(line: 891, column: 22, scope: !3083)
!3087 = !DILocation(line: 891, column: 25, scope: !3083)
!3088 = !DILocalVariable(name: "val", scope: !3083, file: !129, line: 892, type: !35)
!3089 = !DILocation(line: 892, column: 11, scope: !3083)
!3090 = !DILocation(line: 892, column: 17, scope: !3083)
!3091 = !DILocation(line: 892, column: 20, scope: !3083)
!3092 = !DILocation(line: 892, column: 23, scope: !3083)
!3093 = !DILocalVariable(name: "flags", scope: !3083, file: !129, line: 894, type: !38)
!3094 = !DILocation(line: 894, column: 9, scope: !3083)
!3095 = !DILocation(line: 894, column: 17, scope: !3083)
!3096 = !DILocation(line: 894, column: 26, scope: !3083)
!3097 = !DILocation(line: 894, column: 32, scope: !3083)
!3098 = !DILocalVariable(name: "qsize", scope: !3083, file: !129, line: 895, type: !151)
!3099 = !DILocation(line: 895, column: 12, scope: !3083)
!3100 = !DILocation(line: 895, column: 46, scope: !3083)
!3101 = !DILocation(line: 895, column: 51, scope: !3083)
!3102 = !DILocation(line: 895, column: 57, scope: !3083)
!3103 = !DILocation(line: 895, column: 62, scope: !3083)
!3104 = !DILocation(line: 896, column: 46, scope: !3083)
!3105 = !DILocation(line: 896, column: 55, scope: !3083)
!3106 = !DILocation(line: 896, column: 62, scope: !3083)
!3107 = !DILocation(line: 897, column: 46, scope: !3083)
!3108 = !DILocation(line: 897, column: 55, scope: !3083)
!3109 = !DILocation(line: 898, column: 46, scope: !3083)
!3110 = !DILocation(line: 898, column: 55, scope: !3083)
!3111 = !DILocation(line: 899, column: 46, scope: !3083)
!3112 = !DILocation(line: 899, column: 55, scope: !3083)
!3113 = !DILocation(line: 895, column: 20, scope: !3083)
!3114 = !DILocation(line: 901, column: 9, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3083, file: !129, line: 901, column: 9)
!3116 = !DILocation(line: 901, column: 17, scope: !3115)
!3117 = !DILocation(line: 901, column: 14, scope: !3115)
!3118 = !DILocation(line: 901, column: 9, scope: !3083)
!3119 = !DILocation(line: 903, column: 29, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3115, file: !129, line: 902, column: 7)
!3121 = !DILocation(line: 903, column: 35, scope: !3120)
!3122 = !DILocation(line: 903, column: 27, scope: !3120)
!3123 = !DILocation(line: 903, column: 9, scope: !3120)
!3124 = !DILocation(line: 903, column: 12, scope: !3120)
!3125 = !DILocation(line: 903, column: 15, scope: !3120)
!3126 = !DILocation(line: 903, column: 20, scope: !3120)
!3127 = !DILocation(line: 904, column: 13, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3120, file: !129, line: 904, column: 13)
!3129 = !DILocation(line: 904, column: 17, scope: !3128)
!3130 = !DILocation(line: 904, column: 13, scope: !3120)
!3131 = !DILocation(line: 905, column: 17, scope: !3128)
!3132 = !DILocation(line: 905, column: 11, scope: !3128)
!3133 = !DILocation(line: 906, column: 39, scope: !3120)
!3134 = !DILocation(line: 906, column: 27, scope: !3120)
!3135 = !DILocation(line: 906, column: 25, scope: !3120)
!3136 = !DILocation(line: 906, column: 9, scope: !3120)
!3137 = !DILocation(line: 906, column: 12, scope: !3120)
!3138 = !DILocation(line: 906, column: 15, scope: !3120)
!3139 = !DILocation(line: 906, column: 19, scope: !3120)
!3140 = !DILocation(line: 907, column: 35, scope: !3120)
!3141 = !DILocation(line: 907, column: 40, scope: !3120)
!3142 = !DILocation(line: 907, column: 46, scope: !3120)
!3143 = !DILocation(line: 907, column: 51, scope: !3120)
!3144 = !DILocation(line: 907, column: 60, scope: !3120)
!3145 = !DILocation(line: 907, column: 69, scope: !3120)
!3146 = !DILocation(line: 908, column: 35, scope: !3120)
!3147 = !DILocation(line: 908, column: 42, scope: !3120)
!3148 = !DILocation(line: 908, column: 51, scope: !3120)
!3149 = !DILocation(line: 909, column: 35, scope: !3120)
!3150 = !DILocation(line: 909, column: 44, scope: !3120)
!3151 = !DILocation(line: 910, column: 35, scope: !3120)
!3152 = !DILocation(line: 910, column: 44, scope: !3120)
!3153 = !DILocation(line: 907, column: 9, scope: !3120)
!3154 = !DILocation(line: 911, column: 7, scope: !3120)
!3155 = !DILocation(line: 913, column: 13, scope: !3083)
!3156 = !DILocation(line: 913, column: 5, scope: !3083)
!3157 = !DILocation(line: 913, column: 11, scope: !3083)
!3158 = !DILocation(line: 914, column: 12, scope: !3083)
!3159 = !DILocation(line: 914, column: 5, scope: !3083)
!3160 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !129, file: !129, line: 925, type: !3161, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!35, !38, !47, !151}
!3163 = !DILocalVariable(name: "n", arg: 1, scope: !3160, file: !129, line: 925, type: !38)
!3164 = !DILocation(line: 925, column: 21, scope: !3160)
!3165 = !DILocalVariable(name: "arg", arg: 2, scope: !3160, file: !129, line: 925, type: !47)
!3166 = !DILocation(line: 925, column: 36, scope: !3160)
!3167 = !DILocalVariable(name: "argsize", arg: 3, scope: !3160, file: !129, line: 925, type: !151)
!3168 = !DILocation(line: 925, column: 48, scope: !3160)
!3169 = !DILocation(line: 927, column: 30, scope: !3160)
!3170 = !DILocation(line: 927, column: 33, scope: !3160)
!3171 = !DILocation(line: 927, column: 38, scope: !3160)
!3172 = !DILocation(line: 927, column: 10, scope: !3160)
!3173 = !DILocation(line: 927, column: 3, scope: !3160)
!3174 = distinct !DISubprogram(name: "quotearg", scope: !129, file: !129, line: 931, type: !3175, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!35, !47}
!3177 = !DILocalVariable(name: "arg", arg: 1, scope: !3174, file: !129, line: 931, type: !47)
!3178 = !DILocation(line: 931, column: 23, scope: !3174)
!3179 = !DILocation(line: 933, column: 25, scope: !3174)
!3180 = !DILocation(line: 933, column: 10, scope: !3174)
!3181 = !DILocation(line: 933, column: 3, scope: !3174)
!3182 = distinct !DISubprogram(name: "quotearg_mem", scope: !129, file: !129, line: 937, type: !3183, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!35, !47, !151}
!3185 = !DILocalVariable(name: "arg", arg: 1, scope: !3182, file: !129, line: 937, type: !47)
!3186 = !DILocation(line: 937, column: 27, scope: !3182)
!3187 = !DILocalVariable(name: "argsize", arg: 2, scope: !3182, file: !129, line: 937, type: !151)
!3188 = !DILocation(line: 937, column: 39, scope: !3182)
!3189 = !DILocation(line: 939, column: 29, scope: !3182)
!3190 = !DILocation(line: 939, column: 34, scope: !3182)
!3191 = !DILocation(line: 939, column: 10, scope: !3182)
!3192 = !DILocation(line: 939, column: 3, scope: !3182)
!3193 = distinct !DISubprogram(name: "quotearg_n_style", scope: !129, file: !129, line: 943, type: !3194, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!35, !38, !131, !47}
!3196 = !DILocalVariable(name: "n", arg: 1, scope: !3193, file: !129, line: 943, type: !38)
!3197 = !DILocation(line: 943, column: 23, scope: !3193)
!3198 = !DILocalVariable(name: "s", arg: 2, scope: !3193, file: !129, line: 943, type: !131)
!3199 = !DILocation(line: 943, column: 45, scope: !3193)
!3200 = !DILocalVariable(name: "arg", arg: 3, scope: !3193, file: !129, line: 943, type: !47)
!3201 = !DILocation(line: 943, column: 60, scope: !3193)
!3202 = !DILocalVariable(name: "o", scope: !3193, file: !129, line: 945, type: !1812)
!3203 = !DILocation(line: 945, column: 32, scope: !3193)
!3204 = !DILocation(line: 945, column: 64, scope: !3193)
!3205 = !DILocation(line: 945, column: 36, scope: !3193)
!3206 = !DILocation(line: 946, column: 30, scope: !3193)
!3207 = !DILocation(line: 946, column: 33, scope: !3193)
!3208 = !DILocation(line: 946, column: 10, scope: !3193)
!3209 = !DILocation(line: 946, column: 3, scope: !3193)
!3210 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !129, file: !129, line: 183, type: !3211, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!163, !131}
!3213 = !DILocalVariable(name: "style", arg: 1, scope: !3210, file: !129, line: 183, type: !131)
!3214 = !DILocation(line: 183, column: 48, scope: !3210)
!3215 = !DILocalVariable(name: "o", scope: !3210, file: !129, line: 185, type: !163)
!3216 = !DILocation(line: 185, column: 26, scope: !3210)
!3217 = !DILocation(line: 186, column: 7, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3210, file: !129, line: 186, column: 7)
!3219 = !DILocation(line: 186, column: 13, scope: !3218)
!3220 = !DILocation(line: 186, column: 7, scope: !3210)
!3221 = !DILocation(line: 187, column: 5, scope: !3218)
!3222 = !DILocation(line: 188, column: 13, scope: !3210)
!3223 = !DILocation(line: 188, column: 5, scope: !3210)
!3224 = !DILocation(line: 188, column: 11, scope: !3210)
!3225 = !DILocation(line: 189, column: 3, scope: !3210)
!3226 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !129, file: !129, line: 950, type: !3227, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!35, !38, !131, !47, !151}
!3229 = !DILocalVariable(name: "n", arg: 1, scope: !3226, file: !129, line: 950, type: !38)
!3230 = !DILocation(line: 950, column: 27, scope: !3226)
!3231 = !DILocalVariable(name: "s", arg: 2, scope: !3226, file: !129, line: 950, type: !131)
!3232 = !DILocation(line: 950, column: 49, scope: !3226)
!3233 = !DILocalVariable(name: "arg", arg: 3, scope: !3226, file: !129, line: 951, type: !47)
!3234 = !DILocation(line: 951, column: 35, scope: !3226)
!3235 = !DILocalVariable(name: "argsize", arg: 4, scope: !3226, file: !129, line: 951, type: !151)
!3236 = !DILocation(line: 951, column: 47, scope: !3226)
!3237 = !DILocalVariable(name: "o", scope: !3226, file: !129, line: 953, type: !1812)
!3238 = !DILocation(line: 953, column: 32, scope: !3226)
!3239 = !DILocation(line: 953, column: 64, scope: !3226)
!3240 = !DILocation(line: 953, column: 36, scope: !3226)
!3241 = !DILocation(line: 954, column: 30, scope: !3226)
!3242 = !DILocation(line: 954, column: 33, scope: !3226)
!3243 = !DILocation(line: 954, column: 38, scope: !3226)
!3244 = !DILocation(line: 954, column: 10, scope: !3226)
!3245 = !DILocation(line: 954, column: 3, scope: !3226)
!3246 = distinct !DISubprogram(name: "quotearg_style", scope: !129, file: !129, line: 958, type: !3247, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!35, !131, !47}
!3249 = !DILocalVariable(name: "s", arg: 1, scope: !3246, file: !129, line: 958, type: !131)
!3250 = !DILocation(line: 958, column: 36, scope: !3246)
!3251 = !DILocalVariable(name: "arg", arg: 2, scope: !3246, file: !129, line: 958, type: !47)
!3252 = !DILocation(line: 958, column: 51, scope: !3246)
!3253 = !DILocation(line: 960, column: 31, scope: !3246)
!3254 = !DILocation(line: 960, column: 34, scope: !3246)
!3255 = !DILocation(line: 960, column: 10, scope: !3246)
!3256 = !DILocation(line: 960, column: 3, scope: !3246)
!3257 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !129, file: !129, line: 964, type: !3258, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!35, !131, !47, !151}
!3260 = !DILocalVariable(name: "s", arg: 1, scope: !3257, file: !129, line: 964, type: !131)
!3261 = !DILocation(line: 964, column: 40, scope: !3257)
!3262 = !DILocalVariable(name: "arg", arg: 2, scope: !3257, file: !129, line: 964, type: !47)
!3263 = !DILocation(line: 964, column: 55, scope: !3257)
!3264 = !DILocalVariable(name: "argsize", arg: 3, scope: !3257, file: !129, line: 964, type: !151)
!3265 = !DILocation(line: 964, column: 67, scope: !3257)
!3266 = !DILocation(line: 966, column: 35, scope: !3257)
!3267 = !DILocation(line: 966, column: 38, scope: !3257)
!3268 = !DILocation(line: 966, column: 43, scope: !3257)
!3269 = !DILocation(line: 966, column: 10, scope: !3257)
!3270 = !DILocation(line: 966, column: 3, scope: !3257)
!3271 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !129, file: !129, line: 970, type: !3272, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!35, !47, !151, !36}
!3274 = !DILocalVariable(name: "arg", arg: 1, scope: !3271, file: !129, line: 970, type: !47)
!3275 = !DILocation(line: 970, column: 32, scope: !3271)
!3276 = !DILocalVariable(name: "argsize", arg: 2, scope: !3271, file: !129, line: 970, type: !151)
!3277 = !DILocation(line: 970, column: 44, scope: !3271)
!3278 = !DILocalVariable(name: "ch", arg: 3, scope: !3271, file: !129, line: 970, type: !36)
!3279 = !DILocation(line: 970, column: 58, scope: !3271)
!3280 = !DILocalVariable(name: "options", scope: !3271, file: !129, line: 972, type: !163)
!3281 = !DILocation(line: 972, column: 26, scope: !3271)
!3282 = !DILocation(line: 973, column: 13, scope: !3271)
!3283 = !DILocation(line: 974, column: 31, scope: !3271)
!3284 = !DILocation(line: 974, column: 3, scope: !3271)
!3285 = !DILocation(line: 975, column: 33, scope: !3271)
!3286 = !DILocation(line: 975, column: 38, scope: !3271)
!3287 = !DILocation(line: 975, column: 10, scope: !3271)
!3288 = !DILocation(line: 975, column: 3, scope: !3271)
!3289 = distinct !DISubprogram(name: "quotearg_char", scope: !129, file: !129, line: 979, type: !3290, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!35, !47, !36}
!3292 = !DILocalVariable(name: "arg", arg: 1, scope: !3289, file: !129, line: 979, type: !47)
!3293 = !DILocation(line: 979, column: 28, scope: !3289)
!3294 = !DILocalVariable(name: "ch", arg: 2, scope: !3289, file: !129, line: 979, type: !36)
!3295 = !DILocation(line: 979, column: 38, scope: !3289)
!3296 = !DILocation(line: 981, column: 29, scope: !3289)
!3297 = !DILocation(line: 981, column: 44, scope: !3289)
!3298 = !DILocation(line: 981, column: 10, scope: !3289)
!3299 = !DILocation(line: 981, column: 3, scope: !3289)
!3300 = distinct !DISubprogram(name: "quotearg_colon", scope: !129, file: !129, line: 985, type: !3175, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3301 = !DILocalVariable(name: "arg", arg: 1, scope: !3300, file: !129, line: 985, type: !47)
!3302 = !DILocation(line: 985, column: 29, scope: !3300)
!3303 = !DILocation(line: 987, column: 25, scope: !3300)
!3304 = !DILocation(line: 987, column: 10, scope: !3300)
!3305 = !DILocation(line: 987, column: 3, scope: !3300)
!3306 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !129, file: !129, line: 991, type: !3183, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3307 = !DILocalVariable(name: "arg", arg: 1, scope: !3306, file: !129, line: 991, type: !47)
!3308 = !DILocation(line: 991, column: 33, scope: !3306)
!3309 = !DILocalVariable(name: "argsize", arg: 2, scope: !3306, file: !129, line: 991, type: !151)
!3310 = !DILocation(line: 991, column: 45, scope: !3306)
!3311 = !DILocation(line: 993, column: 29, scope: !3306)
!3312 = !DILocation(line: 993, column: 34, scope: !3306)
!3313 = !DILocation(line: 993, column: 10, scope: !3306)
!3314 = !DILocation(line: 993, column: 3, scope: !3306)
!3315 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !129, file: !129, line: 997, type: !3194, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3316 = !DILocalVariable(name: "n", arg: 1, scope: !3315, file: !129, line: 997, type: !38)
!3317 = !DILocation(line: 997, column: 29, scope: !3315)
!3318 = !DILocalVariable(name: "s", arg: 2, scope: !3315, file: !129, line: 997, type: !131)
!3319 = !DILocation(line: 997, column: 51, scope: !3315)
!3320 = !DILocalVariable(name: "arg", arg: 3, scope: !3315, file: !129, line: 997, type: !47)
!3321 = !DILocation(line: 997, column: 66, scope: !3315)
!3322 = !DILocalVariable(name: "options", scope: !3315, file: !129, line: 999, type: !163)
!3323 = !DILocation(line: 999, column: 26, scope: !3315)
!3324 = !DILocation(line: 1000, column: 41, scope: !3315)
!3325 = !DILocation(line: 1000, column: 13, scope: !3315)
!3326 = !DILocation(line: 1001, column: 3, scope: !3315)
!3327 = !DILocation(line: 1002, column: 30, scope: !3315)
!3328 = !DILocation(line: 1002, column: 33, scope: !3315)
!3329 = !DILocation(line: 1002, column: 10, scope: !3315)
!3330 = !DILocation(line: 1002, column: 3, scope: !3315)
!3331 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !129, file: !129, line: 1006, type: !3332, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!35, !38, !47, !47, !47}
!3334 = !DILocalVariable(name: "n", arg: 1, scope: !3331, file: !129, line: 1006, type: !38)
!3335 = !DILocation(line: 1006, column: 24, scope: !3331)
!3336 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3331, file: !129, line: 1006, type: !47)
!3337 = !DILocation(line: 1006, column: 39, scope: !3331)
!3338 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3331, file: !129, line: 1007, type: !47)
!3339 = !DILocation(line: 1007, column: 32, scope: !3331)
!3340 = !DILocalVariable(name: "arg", arg: 4, scope: !3331, file: !129, line: 1007, type: !47)
!3341 = !DILocation(line: 1007, column: 57, scope: !3331)
!3342 = !DILocation(line: 1009, column: 33, scope: !3331)
!3343 = !DILocation(line: 1009, column: 36, scope: !3331)
!3344 = !DILocation(line: 1009, column: 48, scope: !3331)
!3345 = !DILocation(line: 1009, column: 61, scope: !3331)
!3346 = !DILocation(line: 1009, column: 10, scope: !3331)
!3347 = !DILocation(line: 1009, column: 3, scope: !3331)
!3348 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !129, file: !129, line: 1014, type: !3349, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!35, !38, !47, !47, !47, !151}
!3351 = !DILocalVariable(name: "n", arg: 1, scope: !3348, file: !129, line: 1014, type: !38)
!3352 = !DILocation(line: 1014, column: 28, scope: !3348)
!3353 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3348, file: !129, line: 1014, type: !47)
!3354 = !DILocation(line: 1014, column: 43, scope: !3348)
!3355 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3348, file: !129, line: 1015, type: !47)
!3356 = !DILocation(line: 1015, column: 36, scope: !3348)
!3357 = !DILocalVariable(name: "arg", arg: 4, scope: !3348, file: !129, line: 1016, type: !47)
!3358 = !DILocation(line: 1016, column: 36, scope: !3348)
!3359 = !DILocalVariable(name: "argsize", arg: 5, scope: !3348, file: !129, line: 1016, type: !151)
!3360 = !DILocation(line: 1016, column: 48, scope: !3348)
!3361 = !DILocalVariable(name: "o", scope: !3348, file: !129, line: 1018, type: !163)
!3362 = !DILocation(line: 1018, column: 26, scope: !3348)
!3363 = !DILocation(line: 1018, column: 30, scope: !3348)
!3364 = !DILocation(line: 1019, column: 27, scope: !3348)
!3365 = !DILocation(line: 1019, column: 39, scope: !3348)
!3366 = !DILocation(line: 1019, column: 3, scope: !3348)
!3367 = !DILocation(line: 1020, column: 30, scope: !3348)
!3368 = !DILocation(line: 1020, column: 33, scope: !3348)
!3369 = !DILocation(line: 1020, column: 38, scope: !3348)
!3370 = !DILocation(line: 1020, column: 10, scope: !3348)
!3371 = !DILocation(line: 1020, column: 3, scope: !3348)
!3372 = distinct !DISubprogram(name: "quotearg_custom", scope: !129, file: !129, line: 1024, type: !3373, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!35, !47, !47, !47}
!3375 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3372, file: !129, line: 1024, type: !47)
!3376 = !DILocation(line: 1024, column: 30, scope: !3372)
!3377 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3372, file: !129, line: 1024, type: !47)
!3378 = !DILocation(line: 1024, column: 54, scope: !3372)
!3379 = !DILocalVariable(name: "arg", arg: 3, scope: !3372, file: !129, line: 1025, type: !47)
!3380 = !DILocation(line: 1025, column: 30, scope: !3372)
!3381 = !DILocation(line: 1027, column: 32, scope: !3372)
!3382 = !DILocation(line: 1027, column: 44, scope: !3372)
!3383 = !DILocation(line: 1027, column: 57, scope: !3372)
!3384 = !DILocation(line: 1027, column: 10, scope: !3372)
!3385 = !DILocation(line: 1027, column: 3, scope: !3372)
!3386 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !129, file: !129, line: 1031, type: !3387, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!35, !47, !47, !47, !151}
!3389 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3386, file: !129, line: 1031, type: !47)
!3390 = !DILocation(line: 1031, column: 34, scope: !3386)
!3391 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3386, file: !129, line: 1031, type: !47)
!3392 = !DILocation(line: 1031, column: 58, scope: !3386)
!3393 = !DILocalVariable(name: "arg", arg: 3, scope: !3386, file: !129, line: 1032, type: !47)
!3394 = !DILocation(line: 1032, column: 34, scope: !3386)
!3395 = !DILocalVariable(name: "argsize", arg: 4, scope: !3386, file: !129, line: 1032, type: !151)
!3396 = !DILocation(line: 1032, column: 46, scope: !3386)
!3397 = !DILocation(line: 1034, column: 36, scope: !3386)
!3398 = !DILocation(line: 1034, column: 48, scope: !3386)
!3399 = !DILocation(line: 1034, column: 61, scope: !3386)
!3400 = !DILocation(line: 1035, column: 33, scope: !3386)
!3401 = !DILocation(line: 1034, column: 10, scope: !3386)
!3402 = !DILocation(line: 1034, column: 3, scope: !3386)
!3403 = distinct !DISubprogram(name: "quote_n_mem", scope: !129, file: !129, line: 1049, type: !3404, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!47, !38, !47, !151}
!3406 = !DILocalVariable(name: "n", arg: 1, scope: !3403, file: !129, line: 1049, type: !38)
!3407 = !DILocation(line: 1049, column: 18, scope: !3403)
!3408 = !DILocalVariable(name: "arg", arg: 2, scope: !3403, file: !129, line: 1049, type: !47)
!3409 = !DILocation(line: 1049, column: 33, scope: !3403)
!3410 = !DILocalVariable(name: "argsize", arg: 3, scope: !3403, file: !129, line: 1049, type: !151)
!3411 = !DILocation(line: 1049, column: 45, scope: !3403)
!3412 = !DILocation(line: 1051, column: 30, scope: !3403)
!3413 = !DILocation(line: 1051, column: 33, scope: !3403)
!3414 = !DILocation(line: 1051, column: 38, scope: !3403)
!3415 = !DILocation(line: 1051, column: 10, scope: !3403)
!3416 = !DILocation(line: 1051, column: 3, scope: !3403)
!3417 = distinct !DISubprogram(name: "quote_mem", scope: !129, file: !129, line: 1055, type: !3418, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!47, !47, !151}
!3420 = !DILocalVariable(name: "arg", arg: 1, scope: !3417, file: !129, line: 1055, type: !47)
!3421 = !DILocation(line: 1055, column: 24, scope: !3417)
!3422 = !DILocalVariable(name: "argsize", arg: 2, scope: !3417, file: !129, line: 1055, type: !151)
!3423 = !DILocation(line: 1055, column: 36, scope: !3417)
!3424 = !DILocation(line: 1057, column: 26, scope: !3417)
!3425 = !DILocation(line: 1057, column: 31, scope: !3417)
!3426 = !DILocation(line: 1057, column: 10, scope: !3417)
!3427 = !DILocation(line: 1057, column: 3, scope: !3417)
!3428 = distinct !DISubprogram(name: "quote_n", scope: !129, file: !129, line: 1061, type: !3429, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!47, !38, !47}
!3431 = !DILocalVariable(name: "n", arg: 1, scope: !3428, file: !129, line: 1061, type: !38)
!3432 = !DILocation(line: 1061, column: 14, scope: !3428)
!3433 = !DILocalVariable(name: "arg", arg: 2, scope: !3428, file: !129, line: 1061, type: !47)
!3434 = !DILocation(line: 1061, column: 29, scope: !3428)
!3435 = !DILocation(line: 1063, column: 23, scope: !3428)
!3436 = !DILocation(line: 1063, column: 26, scope: !3428)
!3437 = !DILocation(line: 1063, column: 10, scope: !3428)
!3438 = !DILocation(line: 1063, column: 3, scope: !3428)
!3439 = distinct !DISubprogram(name: "quote", scope: !129, file: !129, line: 1067, type: !3440, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !49)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!47, !47}
!3442 = !DILocalVariable(name: "arg", arg: 1, scope: !3439, file: !129, line: 1067, type: !47)
!3443 = !DILocation(line: 1067, column: 20, scope: !3439)
!3444 = !DILocation(line: 1069, column: 22, scope: !3439)
!3445 = !DILocation(line: 1069, column: 10, scope: !3439)
!3446 = !DILocation(line: 1069, column: 3, scope: !3439)
!3447 = distinct !DISubprogram(name: "streq", scope: !3448, file: !3448, line: 1359, type: !3449, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !466, retainedNodes: !49)
!3448 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!74, !47, !47}
!3451 = !DILocalVariable(name: "__s1", arg: 1, scope: !3447, file: !3448, line: 1359, type: !47)
!3452 = !DILocation(line: 1359, column: 20, scope: !3447)
!3453 = !DILocalVariable(name: "__s2", arg: 2, scope: !3447, file: !3448, line: 1359, type: !47)
!3454 = !DILocation(line: 1359, column: 38, scope: !3447)
!3455 = !DILocation(line: 1361, column: 19, scope: !3447)
!3456 = !DILocation(line: 1361, column: 25, scope: !3447)
!3457 = !DILocation(line: 1361, column: 11, scope: !3447)
!3458 = !DILocation(line: 1361, column: 10, scope: !3447)
!3459 = !DILocation(line: 1361, column: 3, scope: !3447)
!3460 = distinct !DISubprogram(name: "version_etc_arn", scope: !469, file: !469, line: 61, type: !3461, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !468, retainedNodes: !49)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !3463, !47, !47, !47, !3497, !151}
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1421, line: 7, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1423, line: 49, size: 1728, elements: !3466)
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3465, file: !1423, line: 51, baseType: !38, size: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3465, file: !1423, line: 54, baseType: !35, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3465, file: !1423, line: 55, baseType: !35, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3465, file: !1423, line: 56, baseType: !35, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3465, file: !1423, line: 57, baseType: !35, size: 64, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3465, file: !1423, line: 58, baseType: !35, size: 64, offset: 320)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3465, file: !1423, line: 59, baseType: !35, size: 64, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3465, file: !1423, line: 60, baseType: !35, size: 64, offset: 448)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3465, file: !1423, line: 61, baseType: !35, size: 64, offset: 512)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3465, file: !1423, line: 64, baseType: !35, size: 64, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3465, file: !1423, line: 65, baseType: !35, size: 64, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3465, file: !1423, line: 66, baseType: !35, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3465, file: !1423, line: 68, baseType: !1438, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3465, file: !1423, line: 70, baseType: !3481, size: 64, offset: 832)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3465, file: !1423, line: 72, baseType: !38, size: 32, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3465, file: !1423, line: 73, baseType: !38, size: 32, offset: 928)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3465, file: !1423, line: 74, baseType: !1445, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3465, file: !1423, line: 77, baseType: !39, size: 16, offset: 1024)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3465, file: !1423, line: 78, baseType: !1448, size: 8, offset: 1040)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3465, file: !1423, line: 79, baseType: !1450, size: 8, offset: 1048)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3465, file: !1423, line: 81, baseType: !1454, size: 64, offset: 1088)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3465, file: !1423, line: 89, baseType: !1457, size: 64, offset: 1152)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3465, file: !1423, line: 91, baseType: !1459, size: 64, offset: 1216)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3465, file: !1423, line: 92, baseType: !1462, size: 64, offset: 1280)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3465, file: !1423, line: 93, baseType: !3481, size: 64, offset: 1344)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3465, file: !1423, line: 94, baseType: !37, size: 64, offset: 1408)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3465, file: !1423, line: 95, baseType: !151, size: 64, offset: 1472)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3465, file: !1423, line: 96, baseType: !38, size: 32, offset: 1536)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3465, file: !1423, line: 98, baseType: !1469, size: 160, offset: 1568)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!3498 = !DILocalVariable(name: "stream", arg: 1, scope: !3460, file: !469, line: 61, type: !3463)
!3499 = !DILocation(line: 61, column: 24, scope: !3460)
!3500 = !DILocalVariable(name: "command_name", arg: 2, scope: !3460, file: !469, line: 62, type: !47)
!3501 = !DILocation(line: 62, column: 30, scope: !3460)
!3502 = !DILocalVariable(name: "package", arg: 3, scope: !3460, file: !469, line: 62, type: !47)
!3503 = !DILocation(line: 62, column: 56, scope: !3460)
!3504 = !DILocalVariable(name: "version", arg: 4, scope: !3460, file: !469, line: 63, type: !47)
!3505 = !DILocation(line: 63, column: 30, scope: !3460)
!3506 = !DILocalVariable(name: "authors", arg: 5, scope: !3460, file: !469, line: 64, type: !3497)
!3507 = !DILocation(line: 64, column: 39, scope: !3460)
!3508 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3460, file: !469, line: 64, type: !151)
!3509 = !DILocation(line: 64, column: 55, scope: !3460)
!3510 = !DILocation(line: 66, column: 7, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3460, file: !469, line: 66, column: 7)
!3512 = !DILocation(line: 66, column: 7, scope: !3460)
!3513 = !DILocation(line: 67, column: 14, scope: !3511)
!3514 = !DILocation(line: 67, column: 38, scope: !3511)
!3515 = !DILocation(line: 67, column: 52, scope: !3511)
!3516 = !DILocation(line: 67, column: 61, scope: !3511)
!3517 = !DILocation(line: 67, column: 5, scope: !3511)
!3518 = !DILocation(line: 69, column: 14, scope: !3511)
!3519 = !DILocation(line: 69, column: 33, scope: !3511)
!3520 = !DILocation(line: 69, column: 42, scope: !3511)
!3521 = !DILocation(line: 69, column: 5, scope: !3511)
!3522 = !DILocation(line: 83, column: 12, scope: !3460)
!3523 = !DILocation(line: 83, column: 43, scope: !3460)
!3524 = !DILocation(line: 83, column: 3, scope: !3460)
!3525 = !DILocation(line: 85, column: 3, scope: !3460)
!3526 = !DILocation(line: 88, column: 12, scope: !3460)
!3527 = !DILocation(line: 88, column: 20, scope: !3460)
!3528 = !DILocation(line: 88, column: 3, scope: !3460)
!3529 = !DILocation(line: 95, column: 3, scope: !3460)
!3530 = !DILocation(line: 97, column: 11, scope: !3460)
!3531 = !DILocation(line: 97, column: 3, scope: !3460)
!3532 = !DILocation(line: 102, column: 7, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3460, file: !469, line: 98, column: 5)
!3534 = !DILocation(line: 105, column: 16, scope: !3533)
!3535 = !DILocation(line: 105, column: 24, scope: !3533)
!3536 = !DILocation(line: 105, column: 47, scope: !3533)
!3537 = !DILocation(line: 105, column: 7, scope: !3533)
!3538 = !DILocation(line: 106, column: 7, scope: !3533)
!3539 = !DILocation(line: 109, column: 16, scope: !3533)
!3540 = !DILocation(line: 109, column: 24, scope: !3533)
!3541 = !DILocation(line: 109, column: 54, scope: !3533)
!3542 = !DILocation(line: 109, column: 66, scope: !3533)
!3543 = !DILocation(line: 109, column: 7, scope: !3533)
!3544 = !DILocation(line: 110, column: 7, scope: !3533)
!3545 = !DILocation(line: 113, column: 16, scope: !3533)
!3546 = !DILocation(line: 113, column: 24, scope: !3533)
!3547 = !DILocation(line: 114, column: 16, scope: !3533)
!3548 = !DILocation(line: 114, column: 28, scope: !3533)
!3549 = !DILocation(line: 114, column: 40, scope: !3533)
!3550 = !DILocation(line: 113, column: 7, scope: !3533)
!3551 = !DILocation(line: 115, column: 7, scope: !3533)
!3552 = !DILocation(line: 120, column: 16, scope: !3533)
!3553 = !DILocation(line: 120, column: 24, scope: !3533)
!3554 = !DILocation(line: 121, column: 16, scope: !3533)
!3555 = !DILocation(line: 121, column: 28, scope: !3533)
!3556 = !DILocation(line: 121, column: 40, scope: !3533)
!3557 = !DILocation(line: 121, column: 52, scope: !3533)
!3558 = !DILocation(line: 120, column: 7, scope: !3533)
!3559 = !DILocation(line: 122, column: 7, scope: !3533)
!3560 = !DILocation(line: 127, column: 16, scope: !3533)
!3561 = !DILocation(line: 127, column: 24, scope: !3533)
!3562 = !DILocation(line: 128, column: 16, scope: !3533)
!3563 = !DILocation(line: 128, column: 28, scope: !3533)
!3564 = !DILocation(line: 128, column: 40, scope: !3533)
!3565 = !DILocation(line: 128, column: 52, scope: !3533)
!3566 = !DILocation(line: 128, column: 64, scope: !3533)
!3567 = !DILocation(line: 127, column: 7, scope: !3533)
!3568 = !DILocation(line: 129, column: 7, scope: !3533)
!3569 = !DILocation(line: 134, column: 16, scope: !3533)
!3570 = !DILocation(line: 134, column: 24, scope: !3533)
!3571 = !DILocation(line: 135, column: 16, scope: !3533)
!3572 = !DILocation(line: 135, column: 28, scope: !3533)
!3573 = !DILocation(line: 135, column: 40, scope: !3533)
!3574 = !DILocation(line: 135, column: 52, scope: !3533)
!3575 = !DILocation(line: 135, column: 64, scope: !3533)
!3576 = !DILocation(line: 136, column: 16, scope: !3533)
!3577 = !DILocation(line: 134, column: 7, scope: !3533)
!3578 = !DILocation(line: 137, column: 7, scope: !3533)
!3579 = !DILocation(line: 142, column: 16, scope: !3533)
!3580 = !DILocation(line: 142, column: 24, scope: !3533)
!3581 = !DILocation(line: 143, column: 16, scope: !3533)
!3582 = !DILocation(line: 143, column: 28, scope: !3533)
!3583 = !DILocation(line: 143, column: 40, scope: !3533)
!3584 = !DILocation(line: 143, column: 52, scope: !3533)
!3585 = !DILocation(line: 143, column: 64, scope: !3533)
!3586 = !DILocation(line: 144, column: 16, scope: !3533)
!3587 = !DILocation(line: 144, column: 28, scope: !3533)
!3588 = !DILocation(line: 142, column: 7, scope: !3533)
!3589 = !DILocation(line: 145, column: 7, scope: !3533)
!3590 = !DILocation(line: 150, column: 16, scope: !3533)
!3591 = !DILocation(line: 150, column: 24, scope: !3533)
!3592 = !DILocation(line: 152, column: 17, scope: !3533)
!3593 = !DILocation(line: 152, column: 29, scope: !3533)
!3594 = !DILocation(line: 152, column: 41, scope: !3533)
!3595 = !DILocation(line: 152, column: 53, scope: !3533)
!3596 = !DILocation(line: 152, column: 65, scope: !3533)
!3597 = !DILocation(line: 153, column: 17, scope: !3533)
!3598 = !DILocation(line: 153, column: 29, scope: !3533)
!3599 = !DILocation(line: 153, column: 41, scope: !3533)
!3600 = !DILocation(line: 150, column: 7, scope: !3533)
!3601 = !DILocation(line: 154, column: 7, scope: !3533)
!3602 = !DILocation(line: 159, column: 16, scope: !3533)
!3603 = !DILocation(line: 159, column: 24, scope: !3533)
!3604 = !DILocation(line: 161, column: 16, scope: !3533)
!3605 = !DILocation(line: 161, column: 28, scope: !3533)
!3606 = !DILocation(line: 161, column: 40, scope: !3533)
!3607 = !DILocation(line: 161, column: 52, scope: !3533)
!3608 = !DILocation(line: 161, column: 64, scope: !3533)
!3609 = !DILocation(line: 162, column: 16, scope: !3533)
!3610 = !DILocation(line: 162, column: 28, scope: !3533)
!3611 = !DILocation(line: 162, column: 40, scope: !3533)
!3612 = !DILocation(line: 162, column: 52, scope: !3533)
!3613 = !DILocation(line: 159, column: 7, scope: !3533)
!3614 = !DILocation(line: 163, column: 7, scope: !3533)
!3615 = !DILocation(line: 170, column: 16, scope: !3533)
!3616 = !DILocation(line: 170, column: 24, scope: !3533)
!3617 = !DILocation(line: 172, column: 17, scope: !3533)
!3618 = !DILocation(line: 172, column: 29, scope: !3533)
!3619 = !DILocation(line: 172, column: 41, scope: !3533)
!3620 = !DILocation(line: 172, column: 53, scope: !3533)
!3621 = !DILocation(line: 172, column: 65, scope: !3533)
!3622 = !DILocation(line: 173, column: 17, scope: !3533)
!3623 = !DILocation(line: 173, column: 29, scope: !3533)
!3624 = !DILocation(line: 173, column: 41, scope: !3533)
!3625 = !DILocation(line: 173, column: 53, scope: !3533)
!3626 = !DILocation(line: 170, column: 7, scope: !3533)
!3627 = !DILocation(line: 174, column: 7, scope: !3533)
!3628 = !DILocation(line: 176, column: 1, scope: !3460)
!3629 = distinct !DISubprogram(name: "version_etc_ar", scope: !469, file: !469, line: 183, type: !3630, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !468, retainedNodes: !49)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{null, !3463, !47, !47, !47, !3497}
!3632 = !DILocalVariable(name: "stream", arg: 1, scope: !3629, file: !469, line: 183, type: !3463)
!3633 = !DILocation(line: 183, column: 23, scope: !3629)
!3634 = !DILocalVariable(name: "command_name", arg: 2, scope: !3629, file: !469, line: 184, type: !47)
!3635 = !DILocation(line: 184, column: 29, scope: !3629)
!3636 = !DILocalVariable(name: "package", arg: 3, scope: !3629, file: !469, line: 184, type: !47)
!3637 = !DILocation(line: 184, column: 55, scope: !3629)
!3638 = !DILocalVariable(name: "version", arg: 4, scope: !3629, file: !469, line: 185, type: !47)
!3639 = !DILocation(line: 185, column: 29, scope: !3629)
!3640 = !DILocalVariable(name: "authors", arg: 5, scope: !3629, file: !469, line: 185, type: !3497)
!3641 = !DILocation(line: 185, column: 59, scope: !3629)
!3642 = !DILocalVariable(name: "n_authors", scope: !3629, file: !469, line: 187, type: !151)
!3643 = !DILocation(line: 187, column: 10, scope: !3629)
!3644 = !DILocation(line: 189, column: 18, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3629, file: !469, line: 189, column: 3)
!3646 = !DILocation(line: 189, column: 8, scope: !3645)
!3647 = !DILocation(line: 189, column: 23, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3645, file: !469, line: 189, column: 3)
!3649 = !DILocation(line: 189, column: 31, scope: !3648)
!3650 = !DILocation(line: 189, column: 3, scope: !3645)
!3651 = !DILocation(line: 189, column: 52, scope: !3648)
!3652 = !DILocation(line: 189, column: 3, scope: !3648)
!3653 = distinct !{!3653, !3650, !3654, !652}
!3654 = !DILocation(line: 190, column: 5, scope: !3645)
!3655 = !DILocation(line: 191, column: 20, scope: !3629)
!3656 = !DILocation(line: 191, column: 28, scope: !3629)
!3657 = !DILocation(line: 191, column: 42, scope: !3629)
!3658 = !DILocation(line: 191, column: 51, scope: !3629)
!3659 = !DILocation(line: 191, column: 60, scope: !3629)
!3660 = !DILocation(line: 191, column: 69, scope: !3629)
!3661 = !DILocation(line: 191, column: 3, scope: !3629)
!3662 = !DILocation(line: 192, column: 1, scope: !3629)
!3663 = distinct !DISubprogram(name: "version_etc_va", scope: !469, file: !469, line: 199, type: !3664, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !468, retainedNodes: !49)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{null, !3463, !47, !47, !47, !3666}
!3666 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !87, line: 52, baseType: !3667)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !89, line: 32, baseType: !3668)
!3668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3669, baseType: !3670)
!3669 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !93, size: 256, elements: !3671)
!3671 = !{!3672, !3673, !3674, !3675, !3676}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3670, file: !3669, line: 192, baseType: !37, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3670, file: !3669, line: 192, baseType: !37, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3670, file: !3669, line: 192, baseType: !37, size: 64, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3670, file: !3669, line: 192, baseType: !38, size: 32, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3670, file: !3669, line: 192, baseType: !38, size: 32, offset: 224)
!3677 = !DILocalVariable(name: "stream", arg: 1, scope: !3663, file: !469, line: 199, type: !3463)
!3678 = !DILocation(line: 199, column: 23, scope: !3663)
!3679 = !DILocalVariable(name: "command_name", arg: 2, scope: !3663, file: !469, line: 200, type: !47)
!3680 = !DILocation(line: 200, column: 29, scope: !3663)
!3681 = !DILocalVariable(name: "package", arg: 3, scope: !3663, file: !469, line: 200, type: !47)
!3682 = !DILocation(line: 200, column: 55, scope: !3663)
!3683 = !DILocalVariable(name: "version", arg: 4, scope: !3663, file: !469, line: 201, type: !47)
!3684 = !DILocation(line: 201, column: 29, scope: !3663)
!3685 = !DILocalVariable(name: "authors", arg: 5, scope: !3663, file: !469, line: 201, type: !3666)
!3686 = !DILocation(line: 201, column: 46, scope: !3663)
!3687 = !DILocalVariable(name: "n_authors", scope: !3663, file: !469, line: 203, type: !151)
!3688 = !DILocation(line: 203, column: 10, scope: !3663)
!3689 = !DILocalVariable(name: "authtab", scope: !3663, file: !469, line: 204, type: !3690)
!3690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 640, elements: !159)
!3691 = !DILocation(line: 204, column: 15, scope: !3663)
!3692 = !DILocation(line: 206, column: 18, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3663, file: !469, line: 206, column: 3)
!3694 = !DILocation(line: 206, column: 8, scope: !3693)
!3695 = !DILocation(line: 207, column: 8, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3693, file: !469, line: 206, column: 3)
!3697 = !DILocation(line: 207, column: 18, scope: !3696)
!3698 = !DILocation(line: 208, column: 10, scope: !3696)
!3699 = !DILocation(line: 208, column: 35, scope: !3696)
!3700 = !DILocation(line: 208, column: 22, scope: !3696)
!3701 = !DILocation(line: 208, column: 14, scope: !3696)
!3702 = !DILocation(line: 208, column: 33, scope: !3696)
!3703 = !DILocation(line: 208, column: 67, scope: !3696)
!3704 = !DILocation(line: 0, scope: !3696)
!3705 = !DILocation(line: 206, column: 3, scope: !3693)
!3706 = !DILocation(line: 209, column: 17, scope: !3696)
!3707 = !DILocation(line: 206, column: 3, scope: !3696)
!3708 = distinct !{!3708, !3705, !3709, !652}
!3709 = !DILocation(line: 210, column: 5, scope: !3693)
!3710 = !DILocation(line: 211, column: 20, scope: !3663)
!3711 = !DILocation(line: 211, column: 28, scope: !3663)
!3712 = !DILocation(line: 211, column: 42, scope: !3663)
!3713 = !DILocation(line: 211, column: 51, scope: !3663)
!3714 = !DILocation(line: 212, column: 20, scope: !3663)
!3715 = !DILocation(line: 212, column: 29, scope: !3663)
!3716 = !DILocation(line: 211, column: 3, scope: !3663)
!3717 = !DILocation(line: 213, column: 1, scope: !3663)
!3718 = distinct !DISubprogram(name: "version_etc", scope: !469, file: !469, line: 230, type: !3719, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !468, retainedNodes: !49)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{null, !3463, !47, !47, !47, null}
!3721 = !DILocalVariable(name: "stream", arg: 1, scope: !3718, file: !469, line: 230, type: !3463)
!3722 = !DILocation(line: 230, column: 20, scope: !3718)
!3723 = !DILocalVariable(name: "command_name", arg: 2, scope: !3718, file: !469, line: 231, type: !47)
!3724 = !DILocation(line: 231, column: 26, scope: !3718)
!3725 = !DILocalVariable(name: "package", arg: 3, scope: !3718, file: !469, line: 231, type: !47)
!3726 = !DILocation(line: 231, column: 52, scope: !3718)
!3727 = !DILocalVariable(name: "version", arg: 4, scope: !3718, file: !469, line: 232, type: !47)
!3728 = !DILocation(line: 232, column: 26, scope: !3718)
!3729 = !DILocalVariable(name: "authors", scope: !3718, file: !469, line: 234, type: !3666)
!3730 = !DILocation(line: 234, column: 11, scope: !3718)
!3731 = !DILocation(line: 235, column: 3, scope: !3718)
!3732 = !DILocation(line: 236, column: 19, scope: !3718)
!3733 = !DILocation(line: 236, column: 27, scope: !3718)
!3734 = !DILocation(line: 236, column: 41, scope: !3718)
!3735 = !DILocation(line: 236, column: 50, scope: !3718)
!3736 = !DILocation(line: 236, column: 3, scope: !3718)
!3737 = !DILocation(line: 237, column: 3, scope: !3718)
!3738 = !DILocation(line: 238, column: 1, scope: !3718)
!3739 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !469, file: !469, line: 241, type: !107, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !468, retainedNodes: !49)
!3740 = !DILocation(line: 243, column: 3, scope: !3739)
!3741 = !DILocation(line: 248, column: 11, scope: !3739)
!3742 = !DILocation(line: 248, column: 3, scope: !3739)
!3743 = !DILocation(line: 254, column: 11, scope: !3739)
!3744 = !DILocation(line: 254, column: 3, scope: !3739)
!3745 = !DILocation(line: 259, column: 11, scope: !3739)
!3746 = !DILocation(line: 259, column: 3, scope: !3739)
!3747 = !DILocation(line: 261, column: 1, scope: !3739)
!3748 = distinct !DISubprogram(name: "xnrealloc", scope: !3749, file: !3749, line: 147, type: !3750, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3749 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!37, !37, !151, !151}
!3752 = !DILocalVariable(name: "p", arg: 1, scope: !3748, file: !3749, line: 147, type: !37)
!3753 = !DILocation(line: 147, column: 18, scope: !3748)
!3754 = !DILocalVariable(name: "n", arg: 2, scope: !3748, file: !3749, line: 147, type: !151)
!3755 = !DILocation(line: 147, column: 28, scope: !3748)
!3756 = !DILocalVariable(name: "s", arg: 3, scope: !3748, file: !3749, line: 147, type: !151)
!3757 = !DILocation(line: 147, column: 38, scope: !3748)
!3758 = !DILocation(line: 149, column: 25, scope: !3748)
!3759 = !DILocation(line: 149, column: 28, scope: !3748)
!3760 = !DILocation(line: 149, column: 31, scope: !3748)
!3761 = !DILocation(line: 149, column: 10, scope: !3748)
!3762 = !DILocation(line: 149, column: 3, scope: !3748)
!3763 = distinct !DISubprogram(name: "xreallocarray", scope: !475, file: !475, line: 83, type: !3750, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3764 = !DILocalVariable(name: "p", arg: 1, scope: !3763, file: !475, line: 83, type: !37)
!3765 = !DILocation(line: 83, column: 22, scope: !3763)
!3766 = !DILocalVariable(name: "n", arg: 2, scope: !3763, file: !475, line: 83, type: !151)
!3767 = !DILocation(line: 83, column: 32, scope: !3763)
!3768 = !DILocalVariable(name: "s", arg: 3, scope: !3763, file: !475, line: 83, type: !151)
!3769 = !DILocation(line: 83, column: 42, scope: !3763)
!3770 = !DILocation(line: 85, column: 39, scope: !3763)
!3771 = !DILocation(line: 85, column: 42, scope: !3763)
!3772 = !DILocation(line: 85, column: 45, scope: !3763)
!3773 = !DILocation(line: 85, column: 25, scope: !3763)
!3774 = !DILocation(line: 85, column: 10, scope: !3763)
!3775 = !DILocation(line: 85, column: 3, scope: !3763)
!3776 = distinct !DISubprogram(name: "check_nonnull", scope: !475, file: !475, line: 37, type: !3777, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!37, !37}
!3779 = !DILocalVariable(name: "p", arg: 1, scope: !3776, file: !475, line: 37, type: !37)
!3780 = !DILocation(line: 37, column: 22, scope: !3776)
!3781 = !DILocation(line: 39, column: 8, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3776, file: !475, line: 39, column: 7)
!3783 = !DILocation(line: 39, column: 7, scope: !3776)
!3784 = !DILocation(line: 40, column: 5, scope: !3782)
!3785 = !DILocation(line: 41, column: 10, scope: !3776)
!3786 = !DILocation(line: 41, column: 3, scope: !3776)
!3787 = distinct !DISubprogram(name: "xmalloc", scope: !475, file: !475, line: 47, type: !3788, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!37, !151}
!3790 = !DILocalVariable(name: "s", arg: 1, scope: !3787, file: !475, line: 47, type: !151)
!3791 = !DILocation(line: 47, column: 17, scope: !3787)
!3792 = !DILocation(line: 49, column: 33, scope: !3787)
!3793 = !DILocation(line: 49, column: 25, scope: !3787)
!3794 = !DILocation(line: 49, column: 10, scope: !3787)
!3795 = !DILocation(line: 49, column: 3, scope: !3787)
!3796 = distinct !DISubprogram(name: "ximalloc", scope: !475, file: !475, line: 53, type: !3797, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!37, !489}
!3799 = !DILocalVariable(name: "s", arg: 1, scope: !3796, file: !475, line: 53, type: !489)
!3800 = !DILocation(line: 53, column: 17, scope: !3796)
!3801 = !DILocation(line: 55, column: 34, scope: !3796)
!3802 = !DILocation(line: 55, column: 25, scope: !3796)
!3803 = !DILocation(line: 55, column: 10, scope: !3796)
!3804 = !DILocation(line: 55, column: 3, scope: !3796)
!3805 = distinct !DISubprogram(name: "xcharalloc", scope: !475, file: !475, line: 59, type: !3806, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!35, !151}
!3808 = !DILocalVariable(name: "n", arg: 1, scope: !3805, file: !475, line: 59, type: !151)
!3809 = !DILocation(line: 59, column: 20, scope: !3805)
!3810 = !DILocation(line: 61, column: 10, scope: !3805)
!3811 = !DILocation(line: 61, column: 3, scope: !3805)
!3812 = distinct !DISubprogram(name: "xrealloc", scope: !475, file: !475, line: 68, type: !3813, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!37, !37, !151}
!3815 = !DILocalVariable(name: "p", arg: 1, scope: !3812, file: !475, line: 68, type: !37)
!3816 = !DILocation(line: 68, column: 17, scope: !3812)
!3817 = !DILocalVariable(name: "s", arg: 2, scope: !3812, file: !475, line: 68, type: !151)
!3818 = !DILocation(line: 68, column: 27, scope: !3812)
!3819 = !DILocation(line: 70, column: 34, scope: !3812)
!3820 = !DILocation(line: 70, column: 37, scope: !3812)
!3821 = !DILocation(line: 70, column: 25, scope: !3812)
!3822 = !DILocation(line: 70, column: 10, scope: !3812)
!3823 = !DILocation(line: 70, column: 3, scope: !3812)
!3824 = distinct !DISubprogram(name: "xirealloc", scope: !475, file: !475, line: 74, type: !3825, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!37, !37, !489}
!3827 = !DILocalVariable(name: "p", arg: 1, scope: !3824, file: !475, line: 74, type: !37)
!3828 = !DILocation(line: 74, column: 18, scope: !3824)
!3829 = !DILocalVariable(name: "s", arg: 2, scope: !3824, file: !475, line: 74, type: !489)
!3830 = !DILocation(line: 74, column: 27, scope: !3824)
!3831 = !DILocation(line: 76, column: 35, scope: !3824)
!3832 = !DILocation(line: 76, column: 38, scope: !3824)
!3833 = !DILocation(line: 76, column: 25, scope: !3824)
!3834 = !DILocation(line: 76, column: 10, scope: !3824)
!3835 = !DILocation(line: 76, column: 3, scope: !3824)
!3836 = distinct !DISubprogram(name: "xireallocarray", scope: !475, file: !475, line: 89, type: !3837, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!37, !37, !489, !489}
!3839 = !DILocalVariable(name: "p", arg: 1, scope: !3836, file: !475, line: 89, type: !37)
!3840 = !DILocation(line: 89, column: 23, scope: !3836)
!3841 = !DILocalVariable(name: "n", arg: 2, scope: !3836, file: !475, line: 89, type: !489)
!3842 = !DILocation(line: 89, column: 32, scope: !3836)
!3843 = !DILocalVariable(name: "s", arg: 3, scope: !3836, file: !475, line: 89, type: !489)
!3844 = !DILocation(line: 89, column: 41, scope: !3836)
!3845 = !DILocation(line: 91, column: 40, scope: !3836)
!3846 = !DILocation(line: 91, column: 43, scope: !3836)
!3847 = !DILocation(line: 91, column: 46, scope: !3836)
!3848 = !DILocation(line: 91, column: 25, scope: !3836)
!3849 = !DILocation(line: 91, column: 10, scope: !3836)
!3850 = !DILocation(line: 91, column: 3, scope: !3836)
!3851 = distinct !DISubprogram(name: "xnmalloc", scope: !475, file: !475, line: 98, type: !3852, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!37, !151, !151}
!3854 = !DILocalVariable(name: "n", arg: 1, scope: !3851, file: !475, line: 98, type: !151)
!3855 = !DILocation(line: 98, column: 18, scope: !3851)
!3856 = !DILocalVariable(name: "s", arg: 2, scope: !3851, file: !475, line: 98, type: !151)
!3857 = !DILocation(line: 98, column: 28, scope: !3851)
!3858 = !DILocation(line: 100, column: 31, scope: !3851)
!3859 = !DILocation(line: 100, column: 34, scope: !3851)
!3860 = !DILocation(line: 100, column: 10, scope: !3851)
!3861 = !DILocation(line: 100, column: 3, scope: !3851)
!3862 = distinct !DISubprogram(name: "xinmalloc", scope: !475, file: !475, line: 104, type: !3863, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!37, !489, !489}
!3865 = !DILocalVariable(name: "n", arg: 1, scope: !3862, file: !475, line: 104, type: !489)
!3866 = !DILocation(line: 104, column: 18, scope: !3862)
!3867 = !DILocalVariable(name: "s", arg: 2, scope: !3862, file: !475, line: 104, type: !489)
!3868 = !DILocation(line: 104, column: 27, scope: !3862)
!3869 = !DILocation(line: 106, column: 32, scope: !3862)
!3870 = !DILocation(line: 106, column: 35, scope: !3862)
!3871 = !DILocation(line: 106, column: 10, scope: !3862)
!3872 = !DILocation(line: 106, column: 3, scope: !3862)
!3873 = distinct !DISubprogram(name: "x2realloc", scope: !475, file: !475, line: 116, type: !3874, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!37, !37, !481}
!3876 = !DILocalVariable(name: "p", arg: 1, scope: !3873, file: !475, line: 116, type: !37)
!3877 = !DILocation(line: 116, column: 18, scope: !3873)
!3878 = !DILocalVariable(name: "ps", arg: 2, scope: !3873, file: !475, line: 116, type: !481)
!3879 = !DILocation(line: 116, column: 29, scope: !3873)
!3880 = !DILocation(line: 118, column: 22, scope: !3873)
!3881 = !DILocation(line: 118, column: 25, scope: !3873)
!3882 = !DILocation(line: 118, column: 10, scope: !3873)
!3883 = !DILocation(line: 118, column: 3, scope: !3873)
!3884 = !DILocalVariable(name: "p", arg: 1, scope: !478, file: !475, line: 176, type: !37)
!3885 = !DILocation(line: 176, column: 19, scope: !478)
!3886 = !DILocalVariable(name: "pn", arg: 2, scope: !478, file: !475, line: 176, type: !481)
!3887 = !DILocation(line: 176, column: 30, scope: !478)
!3888 = !DILocalVariable(name: "s", arg: 3, scope: !478, file: !475, line: 176, type: !151)
!3889 = !DILocation(line: 176, column: 41, scope: !478)
!3890 = !DILocalVariable(name: "n", scope: !478, file: !475, line: 178, type: !151)
!3891 = !DILocation(line: 178, column: 10, scope: !478)
!3892 = !DILocation(line: 178, column: 15, scope: !478)
!3893 = !DILocation(line: 178, column: 14, scope: !478)
!3894 = !DILocation(line: 180, column: 9, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !478, file: !475, line: 180, column: 7)
!3896 = !DILocation(line: 180, column: 7, scope: !478)
!3897 = !DILocation(line: 182, column: 13, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3899, file: !475, line: 182, column: 11)
!3899 = distinct !DILexicalBlock(scope: !3895, file: !475, line: 181, column: 5)
!3900 = !DILocation(line: 182, column: 11, scope: !3899)
!3901 = !DILocation(line: 190, column: 32, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3898, file: !475, line: 183, column: 9)
!3903 = !DILocation(line: 190, column: 30, scope: !3902)
!3904 = !DILocation(line: 190, column: 13, scope: !3902)
!3905 = !DILocation(line: 191, column: 17, scope: !3902)
!3906 = !DILocation(line: 191, column: 16, scope: !3902)
!3907 = !DILocation(line: 191, column: 13, scope: !3902)
!3908 = !DILocation(line: 192, column: 9, scope: !3902)
!3909 = !DILocation(line: 193, column: 5, scope: !3899)
!3910 = !DILocation(line: 197, column: 11, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !475, line: 197, column: 11)
!3912 = distinct !DILexicalBlock(scope: !3895, file: !475, line: 195, column: 5)
!3913 = !DILocation(line: 197, column: 11, scope: !3912)
!3914 = !DILocation(line: 198, column: 9, scope: !3911)
!3915 = !DILocation(line: 201, column: 22, scope: !478)
!3916 = !DILocation(line: 201, column: 25, scope: !478)
!3917 = !DILocation(line: 201, column: 28, scope: !478)
!3918 = !DILocation(line: 201, column: 7, scope: !478)
!3919 = !DILocation(line: 201, column: 5, scope: !478)
!3920 = !DILocation(line: 202, column: 9, scope: !478)
!3921 = !DILocation(line: 202, column: 4, scope: !478)
!3922 = !DILocation(line: 202, column: 7, scope: !478)
!3923 = !DILocation(line: 203, column: 10, scope: !478)
!3924 = !DILocation(line: 203, column: 3, scope: !478)
!3925 = !DILocalVariable(name: "pa", arg: 1, scope: !485, file: !475, line: 223, type: !37)
!3926 = !DILocation(line: 223, column: 16, scope: !485)
!3927 = !DILocalVariable(name: "pn", arg: 2, scope: !485, file: !475, line: 223, type: !488)
!3928 = !DILocation(line: 223, column: 27, scope: !485)
!3929 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !485, file: !475, line: 223, type: !489)
!3930 = !DILocation(line: 223, column: 37, scope: !485)
!3931 = !DILocalVariable(name: "n_max", arg: 4, scope: !485, file: !475, line: 223, type: !491)
!3932 = !DILocation(line: 223, column: 59, scope: !485)
!3933 = !DILocalVariable(name: "s", arg: 5, scope: !485, file: !475, line: 223, type: !489)
!3934 = !DILocation(line: 223, column: 72, scope: !485)
!3935 = !DILocalVariable(name: "n0", scope: !485, file: !475, line: 230, type: !489)
!3936 = !DILocation(line: 230, column: 9, scope: !485)
!3937 = !DILocation(line: 230, column: 15, scope: !485)
!3938 = !DILocation(line: 230, column: 14, scope: !485)
!3939 = !DILocalVariable(name: "n", scope: !485, file: !475, line: 237, type: !489)
!3940 = !DILocation(line: 237, column: 9, scope: !485)
!3941 = !DILocation(line: 238, column: 7, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !485, file: !475, line: 238, column: 7)
!3943 = !DILocation(line: 238, column: 7, scope: !485)
!3944 = !DILocation(line: 239, column: 7, scope: !3942)
!3945 = !DILocation(line: 239, column: 5, scope: !3942)
!3946 = !DILocation(line: 240, column: 12, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !485, file: !475, line: 240, column: 7)
!3948 = !DILocation(line: 240, column: 9, scope: !3947)
!3949 = !DILocation(line: 240, column: 18, scope: !3947)
!3950 = !DILocation(line: 240, column: 21, scope: !3947)
!3951 = !DILocation(line: 240, column: 29, scope: !3947)
!3952 = !DILocation(line: 240, column: 27, scope: !3947)
!3953 = !DILocation(line: 240, column: 7, scope: !485)
!3954 = !DILocation(line: 241, column: 9, scope: !3947)
!3955 = !DILocation(line: 241, column: 7, scope: !3947)
!3956 = !DILocation(line: 241, column: 5, scope: !3947)
!3957 = !DILocalVariable(name: "nbytes", scope: !485, file: !475, line: 248, type: !489)
!3958 = !DILocation(line: 248, column: 9, scope: !485)
!3959 = !DILocalVariable(name: "adjusted_nbytes", scope: !485, file: !475, line: 252, type: !489)
!3960 = !DILocation(line: 252, column: 9, scope: !485)
!3961 = !DILocation(line: 253, column: 8, scope: !485)
!3962 = !DILocation(line: 255, column: 10, scope: !485)
!3963 = !DILocation(line: 255, column: 17, scope: !485)
!3964 = !DILocation(line: 256, column: 7, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !485, file: !475, line: 256, column: 7)
!3966 = !DILocation(line: 256, column: 7, scope: !485)
!3967 = !DILocation(line: 258, column: 11, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3965, file: !475, line: 257, column: 5)
!3969 = !DILocation(line: 258, column: 29, scope: !3968)
!3970 = !DILocation(line: 258, column: 27, scope: !3968)
!3971 = !DILocation(line: 258, column: 9, scope: !3968)
!3972 = !DILocation(line: 259, column: 16, scope: !3968)
!3973 = !DILocation(line: 259, column: 34, scope: !3968)
!3974 = !DILocation(line: 259, column: 52, scope: !3968)
!3975 = !DILocation(line: 259, column: 50, scope: !3968)
!3976 = !DILocation(line: 259, column: 32, scope: !3968)
!3977 = !DILocation(line: 259, column: 14, scope: !3968)
!3978 = !DILocation(line: 260, column: 5, scope: !3968)
!3979 = !DILocation(line: 262, column: 9, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !485, file: !475, line: 262, column: 7)
!3981 = !DILocation(line: 262, column: 7, scope: !485)
!3982 = !DILocation(line: 263, column: 6, scope: !3980)
!3983 = !DILocation(line: 263, column: 9, scope: !3980)
!3984 = !DILocation(line: 263, column: 5, scope: !3980)
!3985 = !DILocation(line: 264, column: 7, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !485, file: !475, line: 264, column: 7)
!3987 = !DILocation(line: 264, column: 11, scope: !3986)
!3988 = !DILocation(line: 264, column: 9, scope: !3986)
!3989 = !DILocation(line: 264, column: 16, scope: !3986)
!3990 = !DILocation(line: 264, column: 14, scope: !3986)
!3991 = !DILocation(line: 265, column: 7, scope: !3986)
!3992 = !DILocation(line: 265, column: 11, scope: !3986)
!3993 = !DILocation(line: 266, column: 11, scope: !3986)
!3994 = !DILocation(line: 266, column: 20, scope: !3986)
!3995 = !DILocation(line: 266, column: 17, scope: !3986)
!3996 = !DILocation(line: 266, column: 26, scope: !3986)
!3997 = !DILocation(line: 266, column: 29, scope: !3986)
!3998 = !DILocation(line: 266, column: 37, scope: !3986)
!3999 = !DILocation(line: 266, column: 35, scope: !3986)
!4000 = !DILocation(line: 267, column: 11, scope: !3986)
!4001 = !DILocation(line: 267, column: 14, scope: !3986)
!4002 = !DILocation(line: 264, column: 7, scope: !485)
!4003 = !DILocation(line: 268, column: 5, scope: !3986)
!4004 = !DILocation(line: 269, column: 18, scope: !485)
!4005 = !DILocation(line: 269, column: 22, scope: !485)
!4006 = !DILocation(line: 269, column: 8, scope: !485)
!4007 = !DILocation(line: 269, column: 6, scope: !485)
!4008 = !DILocation(line: 270, column: 9, scope: !485)
!4009 = !DILocation(line: 270, column: 4, scope: !485)
!4010 = !DILocation(line: 270, column: 7, scope: !485)
!4011 = !DILocation(line: 271, column: 10, scope: !485)
!4012 = !DILocation(line: 271, column: 3, scope: !485)
!4013 = distinct !DISubprogram(name: "xzalloc", scope: !475, file: !475, line: 279, type: !3788, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!4014 = !DILocalVariable(name: "s", arg: 1, scope: !4013, file: !475, line: 279, type: !151)
!4015 = !DILocation(line: 279, column: 17, scope: !4013)
!4016 = !DILocation(line: 281, column: 19, scope: !4013)
!4017 = !DILocation(line: 281, column: 10, scope: !4013)
!4018 = !DILocation(line: 281, column: 3, scope: !4013)
!4019 = distinct !DISubprogram(name: "xcalloc", scope: !475, file: !475, line: 294, type: !3852, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!4020 = !DILocalVariable(name: "n", arg: 1, scope: !4019, file: !475, line: 294, type: !151)
!4021 = !DILocation(line: 294, column: 17, scope: !4019)
!4022 = !DILocalVariable(name: "s", arg: 2, scope: !4019, file: !475, line: 294, type: !151)
!4023 = !DILocation(line: 294, column: 27, scope: !4019)
!4024 = !DILocation(line: 296, column: 33, scope: !4019)
!4025 = !DILocation(line: 296, column: 36, scope: !4019)
!4026 = !DILocation(line: 296, column: 25, scope: !4019)
!4027 = !DILocation(line: 296, column: 10, scope: !4019)
!4028 = !DILocation(line: 296, column: 3, scope: !4019)
!4029 = distinct !DISubprogram(name: "xizalloc", scope: !475, file: !475, line: 285, type: !3797, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!4030 = !DILocalVariable(name: "s", arg: 1, scope: !4029, file: !475, line: 285, type: !489)
!4031 = !DILocation(line: 285, column: 17, scope: !4029)
!4032 = !DILocation(line: 287, column: 20, scope: !4029)
!4033 = !DILocation(line: 287, column: 10, scope: !4029)
!4034 = !DILocation(line: 287, column: 3, scope: !4029)
!4035 = distinct !DISubprogram(name: "xicalloc", scope: !475, file: !475, line: 300, type: !3863, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!4036 = !DILocalVariable(name: "n", arg: 1, scope: !4035, file: !475, line: 300, type: !489)
!4037 = !DILocation(line: 300, column: 17, scope: !4035)
!4038 = !DILocalVariable(name: "s", arg: 2, scope: !4035, file: !475, line: 300, type: !489)
!4039 = !DILocation(line: 300, column: 26, scope: !4035)
!4040 = !DILocation(line: 302, column: 34, scope: !4035)
!4041 = !DILocation(line: 302, column: 37, scope: !4035)
!4042 = !DILocation(line: 302, column: 25, scope: !4035)
!4043 = !DILocation(line: 302, column: 10, scope: !4035)
!4044 = !DILocation(line: 302, column: 3, scope: !4035)
!4045 = distinct !DISubprogram(name: "xmemdup", scope: !475, file: !475, line: 310, type: !4046, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!37, !4048, !151}
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4050 = !DILocalVariable(name: "p", arg: 1, scope: !4045, file: !475, line: 310, type: !4048)
!4051 = !DILocation(line: 310, column: 22, scope: !4045)
!4052 = !DILocalVariable(name: "s", arg: 2, scope: !4045, file: !475, line: 310, type: !151)
!4053 = !DILocation(line: 310, column: 32, scope: !4045)
!4054 = !DILocation(line: 312, column: 27, scope: !4045)
!4055 = !DILocation(line: 312, column: 18, scope: !4045)
!4056 = !DILocation(line: 312, column: 31, scope: !4045)
!4057 = !DILocation(line: 312, column: 34, scope: !4045)
!4058 = !DILocation(line: 312, column: 10, scope: !4045)
!4059 = !DILocation(line: 312, column: 3, scope: !4045)
!4060 = distinct !DISubprogram(name: "ximemdup", scope: !475, file: !475, line: 316, type: !4061, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!37, !4048, !489}
!4063 = !DILocalVariable(name: "p", arg: 1, scope: !4060, file: !475, line: 316, type: !4048)
!4064 = !DILocation(line: 316, column: 23, scope: !4060)
!4065 = !DILocalVariable(name: "s", arg: 2, scope: !4060, file: !475, line: 316, type: !489)
!4066 = !DILocation(line: 316, column: 32, scope: !4060)
!4067 = !DILocation(line: 318, column: 28, scope: !4060)
!4068 = !DILocation(line: 318, column: 18, scope: !4060)
!4069 = !DILocation(line: 318, column: 32, scope: !4060)
!4070 = !DILocation(line: 318, column: 35, scope: !4060)
!4071 = !DILocation(line: 318, column: 10, scope: !4060)
!4072 = !DILocation(line: 318, column: 3, scope: !4060)
!4073 = distinct !DISubprogram(name: "ximemdup0", scope: !475, file: !475, line: 325, type: !4074, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!35, !4048, !489}
!4076 = !DILocalVariable(name: "p", arg: 1, scope: !4073, file: !475, line: 325, type: !4048)
!4077 = !DILocation(line: 325, column: 24, scope: !4073)
!4078 = !DILocalVariable(name: "s", arg: 2, scope: !4073, file: !475, line: 325, type: !489)
!4079 = !DILocation(line: 325, column: 33, scope: !4073)
!4080 = !DILocalVariable(name: "result", scope: !4073, file: !475, line: 327, type: !35)
!4081 = !DILocation(line: 327, column: 9, scope: !4073)
!4082 = !DILocation(line: 327, column: 28, scope: !4073)
!4083 = !DILocation(line: 327, column: 30, scope: !4073)
!4084 = !DILocation(line: 327, column: 18, scope: !4073)
!4085 = !DILocation(line: 328, column: 3, scope: !4073)
!4086 = !DILocation(line: 328, column: 10, scope: !4073)
!4087 = !DILocation(line: 328, column: 13, scope: !4073)
!4088 = !DILocation(line: 329, column: 18, scope: !4073)
!4089 = !DILocation(line: 329, column: 26, scope: !4073)
!4090 = !DILocation(line: 329, column: 29, scope: !4073)
!4091 = !DILocation(line: 329, column: 10, scope: !4073)
!4092 = !DILocation(line: 329, column: 3, scope: !4073)
!4093 = distinct !DISubprogram(name: "xstrdup", scope: !475, file: !475, line: 335, type: !3175, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !474, retainedNodes: !49)
!4094 = !DILocalVariable(name: "string", arg: 1, scope: !4093, file: !475, line: 335, type: !47)
!4095 = !DILocation(line: 335, column: 22, scope: !4093)
!4096 = !DILocation(line: 337, column: 19, scope: !4093)
!4097 = !DILocation(line: 337, column: 35, scope: !4093)
!4098 = !DILocation(line: 337, column: 27, scope: !4093)
!4099 = !DILocation(line: 337, column: 43, scope: !4093)
!4100 = !DILocation(line: 337, column: 10, scope: !4093)
!4101 = !DILocation(line: 337, column: 3, scope: !4093)
!4102 = distinct !DISubprogram(name: "xalloc_die", scope: !494, file: !494, line: 32, type: !107, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !493, retainedNodes: !49)
!4103 = !DILocalVariable(name: "__errstatus", scope: !4104, file: !494, line: 34, type: !4105)
!4104 = distinct !DILexicalBlock(scope: !4102, file: !494, line: 34, column: 3)
!4105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!4106 = !DILocation(line: 34, column: 3, scope: !4104)
!4107 = !DILocation(line: 40, column: 3, scope: !4102)
!4108 = distinct !DISubprogram(name: "xnumtoumax", scope: !4109, file: !4109, line: 42, type: !4110, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !495, retainedNodes: !49)
!4109 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!510, !47, !38, !510, !510, !47, !47, !38, !38}
!4112 = !DILocalVariable(name: "n_str", arg: 1, scope: !4108, file: !4109, line: 42, type: !47)
!4113 = !DILocation(line: 42, column: 26, scope: !4108)
!4114 = !DILocalVariable(name: "base", arg: 2, scope: !4108, file: !4109, line: 42, type: !38)
!4115 = !DILocation(line: 42, column: 37, scope: !4108)
!4116 = !DILocalVariable(name: "min", arg: 3, scope: !4108, file: !4109, line: 42, type: !510)
!4117 = !DILocation(line: 42, column: 57, scope: !4108)
!4118 = !DILocalVariable(name: "max", arg: 4, scope: !4108, file: !4109, line: 42, type: !510)
!4119 = !DILocation(line: 42, column: 76, scope: !4108)
!4120 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4108, file: !4109, line: 43, type: !47)
!4121 = !DILocation(line: 43, column: 26, scope: !4108)
!4122 = !DILocalVariable(name: "err", arg: 6, scope: !4108, file: !4109, line: 43, type: !47)
!4123 = !DILocation(line: 43, column: 48, scope: !4108)
!4124 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4108, file: !4109, line: 43, type: !38)
!4125 = !DILocation(line: 43, column: 57, scope: !4108)
!4126 = !DILocalVariable(name: "flags", arg: 8, scope: !4108, file: !4109, line: 44, type: !38)
!4127 = !DILocation(line: 44, column: 18, scope: !4108)
!4128 = !DILocalVariable(name: "tnum", scope: !4108, file: !4109, line: 46, type: !510)
!4129 = !DILocation(line: 46, column: 17, scope: !4108)
!4130 = !DILocalVariable(name: "r", scope: !4108, file: !4109, line: 46, type: !510)
!4131 = !DILocation(line: 46, column: 23, scope: !4108)
!4132 = !DILocalVariable(name: "s_err", scope: !4108, file: !4109, line: 47, type: !4133)
!4133 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !499, line: 43, baseType: !498)
!4134 = !DILocation(line: 47, column: 16, scope: !4108)
!4135 = !DILocation(line: 47, column: 35, scope: !4108)
!4136 = !DILocation(line: 47, column: 48, scope: !4108)
!4137 = !DILocation(line: 47, column: 61, scope: !4108)
!4138 = !DILocation(line: 47, column: 24, scope: !4108)
!4139 = !DILocalVariable(name: "overflow_errno", scope: !4108, file: !4109, line: 50, type: !38)
!4140 = !DILocation(line: 50, column: 7, scope: !4108)
!4141 = !DILocation(line: 52, column: 7, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4108, file: !4109, line: 52, column: 7)
!4143 = !DILocation(line: 52, column: 13, scope: !4142)
!4144 = !DILocation(line: 52, column: 7, scope: !4108)
!4145 = !DILocation(line: 54, column: 11, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !4109, line: 54, column: 11)
!4147 = distinct !DILexicalBlock(scope: !4142, file: !4109, line: 53, column: 5)
!4148 = !DILocation(line: 54, column: 18, scope: !4146)
!4149 = !DILocation(line: 54, column: 16, scope: !4146)
!4150 = !DILocation(line: 54, column: 11, scope: !4147)
!4151 = !DILocation(line: 56, column: 15, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4146, file: !4109, line: 55, column: 9)
!4153 = !DILocation(line: 56, column: 13, scope: !4152)
!4154 = !DILocation(line: 57, column: 28, scope: !4152)
!4155 = !DILocation(line: 57, column: 34, scope: !4152)
!4156 = !DILocation(line: 57, column: 26, scope: !4152)
!4157 = !DILocation(line: 58, column: 15, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4152, file: !4109, line: 58, column: 15)
!4159 = !DILocation(line: 58, column: 21, scope: !4158)
!4160 = !DILocation(line: 58, column: 15, scope: !4152)
!4161 = !DILocation(line: 59, column: 19, scope: !4158)
!4162 = !DILocation(line: 59, column: 13, scope: !4158)
!4163 = !DILocation(line: 60, column: 9, scope: !4152)
!4164 = !DILocation(line: 61, column: 16, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4146, file: !4109, line: 61, column: 16)
!4166 = !DILocation(line: 61, column: 22, scope: !4165)
!4167 = !DILocation(line: 61, column: 20, scope: !4165)
!4168 = !DILocation(line: 61, column: 16, scope: !4146)
!4169 = !DILocation(line: 63, column: 15, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4165, file: !4109, line: 62, column: 9)
!4171 = !DILocation(line: 63, column: 13, scope: !4170)
!4172 = !DILocation(line: 64, column: 28, scope: !4170)
!4173 = !DILocation(line: 64, column: 34, scope: !4170)
!4174 = !DILocation(line: 64, column: 26, scope: !4170)
!4175 = !DILocation(line: 65, column: 15, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4170, file: !4109, line: 65, column: 15)
!4177 = !DILocation(line: 65, column: 21, scope: !4176)
!4178 = !DILocation(line: 65, column: 15, scope: !4170)
!4179 = !DILocation(line: 66, column: 19, scope: !4176)
!4180 = !DILocation(line: 66, column: 13, scope: !4176)
!4181 = !DILocation(line: 67, column: 9, scope: !4170)
!4182 = !DILocation(line: 70, column: 15, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4165, file: !4109, line: 69, column: 9)
!4184 = !DILocation(line: 70, column: 13, scope: !4183)
!4185 = !DILocation(line: 71, column: 26, scope: !4183)
!4186 = !DILocation(line: 73, column: 5, scope: !4147)
!4187 = !DILocalVariable(name: "e", scope: !4108, file: !4109, line: 75, type: !38)
!4188 = !DILocation(line: 75, column: 7, scope: !4108)
!4189 = !DILocation(line: 75, column: 11, scope: !4108)
!4190 = !DILocation(line: 75, column: 17, scope: !4108)
!4191 = !DILocation(line: 75, column: 39, scope: !4108)
!4192 = !DILocation(line: 77, column: 10, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4108, file: !4109, line: 77, column: 7)
!4194 = !DILocation(line: 77, column: 16, scope: !4193)
!4195 = !DILocation(line: 78, column: 10, scope: !4193)
!4196 = !DILocation(line: 78, column: 14, scope: !4193)
!4197 = !DILocation(line: 78, column: 20, scope: !4193)
!4198 = !DILocation(line: 79, column: 14, scope: !4193)
!4199 = !DILocation(line: 79, column: 17, scope: !4193)
!4200 = !DILocation(line: 79, column: 26, scope: !4193)
!4201 = !DILocation(line: 79, column: 31, scope: !4193)
!4202 = !DILocation(line: 79, column: 23, scope: !4193)
!4203 = !DILocation(line: 77, column: 7, scope: !4108)
!4204 = !DILocation(line: 80, column: 5, scope: !4193)
!4205 = !DILocalVariable(name: "__errstatus", scope: !4206, file: !4109, line: 80, type: !4105)
!4206 = distinct !DILexicalBlock(scope: !4193, file: !4109, line: 80, column: 5)
!4207 = !DILocation(line: 80, column: 5, scope: !4206)
!4208 = !DILocation(line: 82, column: 11, scope: !4108)
!4209 = !DILocation(line: 82, column: 3, scope: !4108)
!4210 = !DILocation(line: 82, column: 9, scope: !4108)
!4211 = !DILocation(line: 83, column: 10, scope: !4108)
!4212 = !DILocation(line: 83, column: 3, scope: !4108)
!4213 = distinct !DISubprogram(name: "xdectoumax", scope: !4109, file: !4109, line: 92, type: !4214, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !495, retainedNodes: !49)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!510, !47, !510, !510, !47, !47, !38}
!4216 = !DILocalVariable(name: "n_str", arg: 1, scope: !4213, file: !4109, line: 92, type: !47)
!4217 = !DILocation(line: 92, column: 26, scope: !4213)
!4218 = !DILocalVariable(name: "min", arg: 2, scope: !4213, file: !4109, line: 92, type: !510)
!4219 = !DILocation(line: 92, column: 47, scope: !4213)
!4220 = !DILocalVariable(name: "max", arg: 3, scope: !4213, file: !4109, line: 92, type: !510)
!4221 = !DILocation(line: 92, column: 66, scope: !4213)
!4222 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4213, file: !4109, line: 93, type: !47)
!4223 = !DILocation(line: 93, column: 26, scope: !4213)
!4224 = !DILocalVariable(name: "err", arg: 5, scope: !4213, file: !4109, line: 93, type: !47)
!4225 = !DILocation(line: 93, column: 48, scope: !4213)
!4226 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4213, file: !4109, line: 93, type: !38)
!4227 = !DILocation(line: 93, column: 57, scope: !4213)
!4228 = !DILocation(line: 95, column: 23, scope: !4213)
!4229 = !DILocation(line: 95, column: 34, scope: !4213)
!4230 = !DILocation(line: 95, column: 39, scope: !4213)
!4231 = !DILocation(line: 95, column: 44, scope: !4213)
!4232 = !DILocation(line: 95, column: 54, scope: !4213)
!4233 = !DILocation(line: 95, column: 59, scope: !4213)
!4234 = !DILocation(line: 95, column: 10, scope: !4213)
!4235 = !DILocation(line: 95, column: 3, scope: !4213)
!4236 = distinct !DISubprogram(name: "xstrtoumax", scope: !4237, file: !4237, line: 71, type: !4238, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !506, retainedNodes: !49)
!4237 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!4133, !47, !840, !38, !4240, !47}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!4241 = !DILocalVariable(name: "nptr", arg: 1, scope: !4236, file: !4237, line: 71, type: !47)
!4242 = !DILocation(line: 71, column: 24, scope: !4236)
!4243 = !DILocalVariable(name: "endptr", arg: 2, scope: !4236, file: !4237, line: 71, type: !840)
!4244 = !DILocation(line: 71, column: 37, scope: !4236)
!4245 = !DILocalVariable(name: "base", arg: 3, scope: !4236, file: !4237, line: 71, type: !38)
!4246 = !DILocation(line: 71, column: 49, scope: !4236)
!4247 = !DILocalVariable(name: "val", arg: 4, scope: !4236, file: !4237, line: 72, type: !4240)
!4248 = !DILocation(line: 72, column: 24, scope: !4236)
!4249 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4236, file: !4237, line: 72, type: !47)
!4250 = !DILocation(line: 72, column: 41, scope: !4236)
!4251 = !DILocalVariable(name: "t_ptr", scope: !4236, file: !4237, line: 74, type: !35)
!4252 = !DILocation(line: 74, column: 9, scope: !4236)
!4253 = !DILocalVariable(name: "p", scope: !4236, file: !4237, line: 75, type: !840)
!4254 = !DILocation(line: 75, column: 10, scope: !4236)
!4255 = !DILocation(line: 75, column: 14, scope: !4236)
!4256 = !DILocation(line: 75, column: 23, scope: !4236)
!4257 = !DILocalVariable(name: "q", scope: !4258, file: !4237, line: 79, type: !47)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !4237, line: 78, column: 5)
!4259 = distinct !DILexicalBlock(scope: !4236, file: !4237, line: 77, column: 7)
!4260 = !DILocation(line: 79, column: 19, scope: !4258)
!4261 = !DILocation(line: 79, column: 23, scope: !4258)
!4262 = !DILocalVariable(name: "ch", scope: !4258, file: !4237, line: 80, type: !222)
!4263 = !DILocation(line: 80, column: 21, scope: !4258)
!4264 = !DILocation(line: 80, column: 27, scope: !4258)
!4265 = !DILocation(line: 80, column: 26, scope: !4258)
!4266 = !DILocation(line: 81, column: 7, scope: !4258)
!4267 = !DILocation(line: 81, column: 14, scope: !4258)
!4268 = !DILocation(line: 82, column: 15, scope: !4258)
!4269 = !DILocation(line: 82, column: 14, scope: !4258)
!4270 = !DILocation(line: 82, column: 12, scope: !4258)
!4271 = distinct !{!4271, !4266, !4272, !652}
!4272 = !DILocation(line: 82, column: 17, scope: !4258)
!4273 = !DILocation(line: 83, column: 11, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4258, file: !4237, line: 83, column: 11)
!4275 = !DILocation(line: 83, column: 14, scope: !4274)
!4276 = !DILocation(line: 83, column: 11, scope: !4258)
!4277 = !DILocation(line: 85, column: 25, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4274, file: !4237, line: 84, column: 9)
!4279 = !DILocation(line: 85, column: 12, scope: !4278)
!4280 = !DILocation(line: 85, column: 14, scope: !4278)
!4281 = !DILocation(line: 86, column: 11, scope: !4278)
!4282 = !DILocation(line: 90, column: 3, scope: !4236)
!4283 = !DILocation(line: 90, column: 9, scope: !4236)
!4284 = !DILocalVariable(name: "tmp", scope: !4236, file: !4237, line: 91, type: !510)
!4285 = !DILocation(line: 91, column: 14, scope: !4236)
!4286 = !DILocation(line: 91, column: 30, scope: !4236)
!4287 = !DILocation(line: 91, column: 36, scope: !4236)
!4288 = !DILocation(line: 91, column: 39, scope: !4236)
!4289 = !DILocation(line: 91, column: 20, scope: !4236)
!4290 = !DILocalVariable(name: "err", scope: !4236, file: !4237, line: 92, type: !4133)
!4291 = !DILocation(line: 92, column: 16, scope: !4236)
!4292 = !DILocation(line: 94, column: 8, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4236, file: !4237, line: 94, column: 7)
!4294 = !DILocation(line: 94, column: 7, scope: !4293)
!4295 = !DILocation(line: 94, column: 13, scope: !4293)
!4296 = !DILocation(line: 94, column: 10, scope: !4293)
!4297 = !DILocation(line: 94, column: 7, scope: !4236)
!4298 = !DILocation(line: 98, column: 14, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !4237, line: 98, column: 11)
!4300 = distinct !DILexicalBlock(scope: !4293, file: !4237, line: 95, column: 5)
!4301 = !DILocation(line: 98, column: 29, scope: !4299)
!4302 = !DILocation(line: 98, column: 33, scope: !4299)
!4303 = !DILocation(line: 98, column: 32, scope: !4299)
!4304 = !DILocation(line: 98, column: 38, scope: !4299)
!4305 = !DILocation(line: 98, column: 49, scope: !4299)
!4306 = !DILocation(line: 98, column: 66, scope: !4299)
!4307 = !DILocation(line: 98, column: 65, scope: !4299)
!4308 = !DILocation(line: 98, column: 41, scope: !4299)
!4309 = !DILocation(line: 98, column: 11, scope: !4300)
!4310 = !DILocation(line: 99, column: 9, scope: !4299)
!4311 = !DILocation(line: 100, column: 11, scope: !4300)
!4312 = !DILocation(line: 101, column: 5, scope: !4300)
!4313 = !DILocation(line: 102, column: 12, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4293, file: !4237, line: 102, column: 12)
!4315 = !DILocation(line: 102, column: 18, scope: !4314)
!4316 = !DILocation(line: 102, column: 12, scope: !4293)
!4317 = !DILocation(line: 104, column: 11, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !4237, line: 104, column: 11)
!4319 = distinct !DILexicalBlock(scope: !4314, file: !4237, line: 103, column: 5)
!4320 = !DILocation(line: 104, column: 17, scope: !4318)
!4321 = !DILocation(line: 104, column: 11, scope: !4319)
!4322 = !DILocation(line: 105, column: 9, scope: !4318)
!4323 = !DILocation(line: 106, column: 11, scope: !4319)
!4324 = !DILocation(line: 107, column: 5, scope: !4319)
!4325 = !DILocation(line: 112, column: 8, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4236, file: !4237, line: 112, column: 7)
!4327 = !DILocation(line: 112, column: 7, scope: !4236)
!4328 = !DILocation(line: 114, column: 14, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4326, file: !4237, line: 113, column: 5)
!4330 = !DILocation(line: 114, column: 8, scope: !4329)
!4331 = !DILocation(line: 114, column: 12, scope: !4329)
!4332 = !DILocation(line: 115, column: 14, scope: !4329)
!4333 = !DILocation(line: 115, column: 7, scope: !4329)
!4334 = !DILocation(line: 118, column: 9, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4236, file: !4237, line: 118, column: 7)
!4336 = !DILocation(line: 118, column: 8, scope: !4335)
!4337 = !DILocation(line: 118, column: 7, scope: !4335)
!4338 = !DILocation(line: 118, column: 11, scope: !4335)
!4339 = !DILocation(line: 118, column: 7, scope: !4236)
!4340 = !DILocation(line: 120, column: 20, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !4237, line: 120, column: 11)
!4342 = distinct !DILexicalBlock(scope: !4335, file: !4237, line: 119, column: 5)
!4343 = !DILocation(line: 120, column: 38, scope: !4341)
!4344 = !DILocation(line: 120, column: 37, scope: !4341)
!4345 = !DILocation(line: 120, column: 36, scope: !4341)
!4346 = !DILocation(line: 120, column: 12, scope: !4341)
!4347 = !DILocation(line: 120, column: 11, scope: !4342)
!4348 = !DILocation(line: 122, column: 18, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4341, file: !4237, line: 121, column: 9)
!4350 = !DILocation(line: 122, column: 12, scope: !4349)
!4351 = !DILocation(line: 122, column: 16, scope: !4349)
!4352 = !DILocation(line: 123, column: 18, scope: !4349)
!4353 = !DILocation(line: 123, column: 22, scope: !4349)
!4354 = !DILocation(line: 123, column: 11, scope: !4349)
!4355 = !DILocalVariable(name: "xbase", scope: !4342, file: !4237, line: 126, type: !38)
!4356 = !DILocation(line: 126, column: 11, scope: !4342)
!4357 = !DILocalVariable(name: "suffixes", scope: !4342, file: !4237, line: 127, type: !38)
!4358 = !DILocation(line: 127, column: 11, scope: !4342)
!4359 = !DILocation(line: 128, column: 17, scope: !4342)
!4360 = !DILocation(line: 128, column: 16, scope: !4342)
!4361 = !DILocation(line: 128, column: 15, scope: !4342)
!4362 = !DILocation(line: 128, column: 7, scope: !4342)
!4363 = !DILocation(line: 140, column: 23, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !4237, line: 140, column: 15)
!4365 = distinct !DILexicalBlock(scope: !4342, file: !4237, line: 129, column: 9)
!4366 = !DILocation(line: 140, column: 15, scope: !4364)
!4367 = !DILocation(line: 140, column: 15, scope: !4365)
!4368 = !DILocation(line: 141, column: 21, scope: !4364)
!4369 = !DILocation(line: 141, column: 13, scope: !4364)
!4370 = !DILocation(line: 144, column: 21, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !4237, line: 144, column: 21)
!4372 = distinct !DILexicalBlock(scope: !4364, file: !4237, line: 142, column: 15)
!4373 = !DILocation(line: 144, column: 29, scope: !4371)
!4374 = !DILocation(line: 144, column: 21, scope: !4372)
!4375 = !DILocation(line: 145, column: 28, scope: !4371)
!4376 = !DILocation(line: 145, column: 19, scope: !4371)
!4377 = !DILocation(line: 146, column: 17, scope: !4372)
!4378 = !DILocation(line: 150, column: 23, scope: !4372)
!4379 = !DILocation(line: 151, column: 25, scope: !4372)
!4380 = !DILocation(line: 152, column: 17, scope: !4372)
!4381 = !DILocation(line: 153, column: 15, scope: !4372)
!4382 = !DILocation(line: 154, column: 9, scope: !4365)
!4383 = !DILocalVariable(name: "overflow", scope: !4342, file: !4237, line: 156, type: !4133)
!4384 = !DILocation(line: 156, column: 20, scope: !4342)
!4385 = !DILocation(line: 157, column: 17, scope: !4342)
!4386 = !DILocation(line: 157, column: 16, scope: !4342)
!4387 = !DILocation(line: 157, column: 15, scope: !4342)
!4388 = !DILocation(line: 157, column: 7, scope: !4342)
!4389 = !DILocation(line: 160, column: 22, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4342, file: !4237, line: 158, column: 9)
!4391 = !DILocation(line: 160, column: 20, scope: !4390)
!4392 = !DILocation(line: 161, column: 11, scope: !4390)
!4393 = !DILocation(line: 167, column: 22, scope: !4390)
!4394 = !DILocation(line: 167, column: 20, scope: !4390)
!4395 = !DILocation(line: 168, column: 11, scope: !4390)
!4396 = !DILocation(line: 171, column: 20, scope: !4390)
!4397 = !DILocation(line: 172, column: 11, scope: !4390)
!4398 = !DILocation(line: 175, column: 48, scope: !4390)
!4399 = !DILocation(line: 175, column: 22, scope: !4390)
!4400 = !DILocation(line: 175, column: 20, scope: !4390)
!4401 = !DILocation(line: 176, column: 11, scope: !4390)
!4402 = !DILocation(line: 180, column: 48, scope: !4390)
!4403 = !DILocation(line: 180, column: 22, scope: !4390)
!4404 = !DILocation(line: 180, column: 20, scope: !4390)
!4405 = !DILocation(line: 181, column: 11, scope: !4390)
!4406 = !DILocation(line: 185, column: 48, scope: !4390)
!4407 = !DILocation(line: 185, column: 22, scope: !4390)
!4408 = !DILocation(line: 185, column: 20, scope: !4390)
!4409 = !DILocation(line: 186, column: 11, scope: !4390)
!4410 = !DILocation(line: 190, column: 48, scope: !4390)
!4411 = !DILocation(line: 190, column: 22, scope: !4390)
!4412 = !DILocation(line: 190, column: 20, scope: !4390)
!4413 = !DILocation(line: 191, column: 11, scope: !4390)
!4414 = !DILocation(line: 194, column: 48, scope: !4390)
!4415 = !DILocation(line: 194, column: 22, scope: !4390)
!4416 = !DILocation(line: 194, column: 20, scope: !4390)
!4417 = !DILocation(line: 195, column: 11, scope: !4390)
!4418 = !DILocation(line: 198, column: 48, scope: !4390)
!4419 = !DILocation(line: 198, column: 22, scope: !4390)
!4420 = !DILocation(line: 198, column: 20, scope: !4390)
!4421 = !DILocation(line: 199, column: 11, scope: !4390)
!4422 = !DILocation(line: 202, column: 48, scope: !4390)
!4423 = !DILocation(line: 202, column: 22, scope: !4390)
!4424 = !DILocation(line: 202, column: 20, scope: !4390)
!4425 = !DILocation(line: 203, column: 11, scope: !4390)
!4426 = !DILocation(line: 207, column: 48, scope: !4390)
!4427 = !DILocation(line: 207, column: 22, scope: !4390)
!4428 = !DILocation(line: 207, column: 20, scope: !4390)
!4429 = !DILocation(line: 208, column: 11, scope: !4390)
!4430 = !DILocation(line: 211, column: 22, scope: !4390)
!4431 = !DILocation(line: 211, column: 20, scope: !4390)
!4432 = !DILocation(line: 212, column: 11, scope: !4390)
!4433 = !DILocation(line: 215, column: 48, scope: !4390)
!4434 = !DILocation(line: 215, column: 22, scope: !4390)
!4435 = !DILocation(line: 215, column: 20, scope: !4390)
!4436 = !DILocation(line: 216, column: 11, scope: !4390)
!4437 = !DILocation(line: 219, column: 48, scope: !4390)
!4438 = !DILocation(line: 219, column: 22, scope: !4390)
!4439 = !DILocation(line: 219, column: 20, scope: !4390)
!4440 = !DILocation(line: 220, column: 11, scope: !4390)
!4441 = !DILocation(line: 223, column: 18, scope: !4390)
!4442 = !DILocation(line: 223, column: 12, scope: !4390)
!4443 = !DILocation(line: 223, column: 16, scope: !4390)
!4444 = !DILocation(line: 224, column: 18, scope: !4390)
!4445 = !DILocation(line: 224, column: 22, scope: !4390)
!4446 = !DILocation(line: 224, column: 11, scope: !4390)
!4447 = !DILocation(line: 227, column: 14, scope: !4342)
!4448 = !DILocation(line: 227, column: 11, scope: !4342)
!4449 = !DILocation(line: 228, column: 13, scope: !4342)
!4450 = !DILocation(line: 228, column: 8, scope: !4342)
!4451 = !DILocation(line: 228, column: 10, scope: !4342)
!4452 = !DILocation(line: 229, column: 13, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4342, file: !4237, line: 229, column: 11)
!4454 = !DILocation(line: 229, column: 12, scope: !4453)
!4455 = !DILocation(line: 229, column: 11, scope: !4453)
!4456 = !DILocation(line: 229, column: 11, scope: !4342)
!4457 = !DILocation(line: 230, column: 13, scope: !4453)
!4458 = !DILocation(line: 230, column: 9, scope: !4453)
!4459 = !DILocation(line: 231, column: 5, scope: !4342)
!4460 = !DILocation(line: 233, column: 10, scope: !4236)
!4461 = !DILocation(line: 233, column: 4, scope: !4236)
!4462 = !DILocation(line: 233, column: 8, scope: !4236)
!4463 = !DILocation(line: 234, column: 10, scope: !4236)
!4464 = !DILocation(line: 234, column: 3, scope: !4236)
!4465 = !DILocation(line: 235, column: 1, scope: !4236)
!4466 = distinct !DISubprogram(name: "bkm_scale", scope: !4237, file: !4237, line: 47, type: !4467, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !506, retainedNodes: !49)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!4133, !4240, !38}
!4469 = !DILocalVariable(name: "x", arg: 1, scope: !4466, file: !4237, line: 47, type: !4240)
!4470 = !DILocation(line: 47, column: 24, scope: !4466)
!4471 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4466, file: !4237, line: 47, type: !38)
!4472 = !DILocation(line: 47, column: 31, scope: !4466)
!4473 = !DILocalVariable(name: "scaled", scope: !4466, file: !4237, line: 49, type: !510)
!4474 = !DILocation(line: 49, column: 14, scope: !4466)
!4475 = !DILocation(line: 50, column: 7, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4466, file: !4237, line: 50, column: 7)
!4477 = !DILocation(line: 50, column: 7, scope: !4466)
!4478 = !DILocation(line: 52, column: 13, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4476, file: !4237, line: 51, column: 5)
!4480 = !DILocation(line: 52, column: 12, scope: !4479)
!4481 = !DILocation(line: 52, column: 15, scope: !4479)
!4482 = !DILocation(line: 52, column: 8, scope: !4479)
!4483 = !DILocation(line: 52, column: 10, scope: !4479)
!4484 = !DILocation(line: 53, column: 7, scope: !4479)
!4485 = !DILocation(line: 56, column: 8, scope: !4466)
!4486 = !DILocation(line: 56, column: 4, scope: !4466)
!4487 = !DILocation(line: 56, column: 6, scope: !4466)
!4488 = !DILocation(line: 58, column: 3, scope: !4466)
!4489 = !DILocation(line: 59, column: 1, scope: !4466)
!4490 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4237, file: !4237, line: 62, type: !4491, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !506, retainedNodes: !49)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!4133, !4240, !38, !38}
!4493 = !DILocalVariable(name: "x", arg: 1, scope: !4490, file: !4237, line: 62, type: !4240)
!4494 = !DILocation(line: 62, column: 33, scope: !4490)
!4495 = !DILocalVariable(name: "base", arg: 2, scope: !4490, file: !4237, line: 62, type: !38)
!4496 = !DILocation(line: 62, column: 40, scope: !4490)
!4497 = !DILocalVariable(name: "power", arg: 3, scope: !4490, file: !4237, line: 62, type: !38)
!4498 = !DILocation(line: 62, column: 50, scope: !4490)
!4499 = !DILocalVariable(name: "err", scope: !4490, file: !4237, line: 64, type: !4133)
!4500 = !DILocation(line: 64, column: 16, scope: !4490)
!4501 = !DILocation(line: 65, column: 3, scope: !4490)
!4502 = !DILocation(line: 65, column: 15, scope: !4490)
!4503 = !DILocation(line: 66, column: 23, scope: !4490)
!4504 = !DILocation(line: 66, column: 26, scope: !4490)
!4505 = !DILocation(line: 66, column: 12, scope: !4490)
!4506 = !DILocation(line: 66, column: 9, scope: !4490)
!4507 = distinct !{!4507, !4501, !4508, !652}
!4508 = !DILocation(line: 66, column: 30, scope: !4490)
!4509 = !DILocation(line: 67, column: 10, scope: !4490)
!4510 = !DILocation(line: 67, column: 3, scope: !4490)
!4511 = distinct !DISubprogram(name: "rpl_fopen", scope: !515, file: !515, line: 46, type: !4512, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !514, retainedNodes: !49)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!4514, !47, !47}
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1421, line: 7, baseType: !4516)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1423, line: 49, size: 1728, elements: !4517)
!4517 = !{!4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4516, file: !1423, line: 51, baseType: !38, size: 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4516, file: !1423, line: 54, baseType: !35, size: 64, offset: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4516, file: !1423, line: 55, baseType: !35, size: 64, offset: 128)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4516, file: !1423, line: 56, baseType: !35, size: 64, offset: 192)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4516, file: !1423, line: 57, baseType: !35, size: 64, offset: 256)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4516, file: !1423, line: 58, baseType: !35, size: 64, offset: 320)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4516, file: !1423, line: 59, baseType: !35, size: 64, offset: 384)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4516, file: !1423, line: 60, baseType: !35, size: 64, offset: 448)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4516, file: !1423, line: 61, baseType: !35, size: 64, offset: 512)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4516, file: !1423, line: 64, baseType: !35, size: 64, offset: 576)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4516, file: !1423, line: 65, baseType: !35, size: 64, offset: 640)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4516, file: !1423, line: 66, baseType: !35, size: 64, offset: 704)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4516, file: !1423, line: 68, baseType: !1438, size: 64, offset: 768)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4516, file: !1423, line: 70, baseType: !4532, size: 64, offset: 832)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4516, file: !1423, line: 72, baseType: !38, size: 32, offset: 896)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4516, file: !1423, line: 73, baseType: !38, size: 32, offset: 928)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4516, file: !1423, line: 74, baseType: !1445, size: 64, offset: 960)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4516, file: !1423, line: 77, baseType: !39, size: 16, offset: 1024)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4516, file: !1423, line: 78, baseType: !1448, size: 8, offset: 1040)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4516, file: !1423, line: 79, baseType: !1450, size: 8, offset: 1048)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4516, file: !1423, line: 81, baseType: !1454, size: 64, offset: 1088)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4516, file: !1423, line: 89, baseType: !1457, size: 64, offset: 1152)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4516, file: !1423, line: 91, baseType: !1459, size: 64, offset: 1216)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4516, file: !1423, line: 92, baseType: !1462, size: 64, offset: 1280)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4516, file: !1423, line: 93, baseType: !4532, size: 64, offset: 1344)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4516, file: !1423, line: 94, baseType: !37, size: 64, offset: 1408)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4516, file: !1423, line: 95, baseType: !151, size: 64, offset: 1472)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4516, file: !1423, line: 96, baseType: !38, size: 32, offset: 1536)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4516, file: !1423, line: 98, baseType: !1469, size: 160, offset: 1568)
!4548 = !DILocalVariable(name: "filename", arg: 1, scope: !4511, file: !515, line: 46, type: !47)
!4549 = !DILocation(line: 46, column: 24, scope: !4511)
!4550 = !DILocalVariable(name: "mode", arg: 2, scope: !4511, file: !515, line: 46, type: !47)
!4551 = !DILocation(line: 46, column: 46, scope: !4511)
!4552 = !DILocalVariable(name: "open_direction", scope: !4511, file: !515, line: 54, type: !38)
!4553 = !DILocation(line: 54, column: 7, scope: !4511)
!4554 = !DILocalVariable(name: "open_flags", scope: !4511, file: !515, line: 55, type: !38)
!4555 = !DILocation(line: 55, column: 7, scope: !4511)
!4556 = !DILocalVariable(name: "open_flags_gnu", scope: !4511, file: !515, line: 57, type: !74)
!4557 = !DILocation(line: 57, column: 8, scope: !4511)
!4558 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4511, file: !515, line: 59, type: !4559)
!4559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 648, elements: !4560)
!4560 = !{!4561}
!4561 = !DISubrange(count: 81)
!4562 = !DILocation(line: 59, column: 8, scope: !4511)
!4563 = !DILocalVariable(name: "p", scope: !4564, file: !515, line: 62, type: !47)
!4564 = distinct !DILexicalBlock(scope: !4511, file: !515, line: 61, column: 3)
!4565 = !DILocation(line: 62, column: 17, scope: !4564)
!4566 = !DILocation(line: 62, column: 21, scope: !4564)
!4567 = !DILocalVariable(name: "q", scope: !4564, file: !515, line: 64, type: !35)
!4568 = !DILocation(line: 64, column: 11, scope: !4564)
!4569 = !DILocation(line: 64, column: 15, scope: !4564)
!4570 = !DILocation(line: 67, column: 5, scope: !4564)
!4571 = !DILocation(line: 67, column: 13, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !515, line: 67, column: 5)
!4573 = distinct !DILexicalBlock(scope: !4564, file: !515, line: 67, column: 5)
!4574 = !DILocation(line: 67, column: 12, scope: !4572)
!4575 = !DILocation(line: 67, column: 15, scope: !4572)
!4576 = !DILocation(line: 67, column: 5, scope: !4573)
!4577 = !DILocation(line: 69, column: 18, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4572, file: !515, line: 68, column: 7)
!4579 = !DILocation(line: 69, column: 17, scope: !4578)
!4580 = !DILocation(line: 69, column: 9, scope: !4578)
!4581 = !DILocation(line: 72, column: 28, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4578, file: !515, line: 70, column: 11)
!4583 = !DILocation(line: 74, column: 17, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4582, file: !515, line: 74, column: 17)
!4585 = !DILocation(line: 74, column: 21, scope: !4584)
!4586 = !DILocation(line: 74, column: 37, scope: !4584)
!4587 = !DILocation(line: 74, column: 19, scope: !4584)
!4588 = !DILocation(line: 74, column: 17, scope: !4582)
!4589 = !DILocation(line: 75, column: 23, scope: !4584)
!4590 = !DILocation(line: 75, column: 22, scope: !4584)
!4591 = !DILocation(line: 75, column: 17, scope: !4584)
!4592 = !DILocation(line: 75, column: 20, scope: !4584)
!4593 = !DILocation(line: 75, column: 15, scope: !4584)
!4594 = !DILocation(line: 77, column: 13, scope: !4582)
!4595 = !DILocation(line: 79, column: 28, scope: !4582)
!4596 = !DILocation(line: 80, column: 24, scope: !4582)
!4597 = !DILocation(line: 82, column: 17, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4582, file: !515, line: 82, column: 17)
!4599 = !DILocation(line: 82, column: 21, scope: !4598)
!4600 = !DILocation(line: 82, column: 37, scope: !4598)
!4601 = !DILocation(line: 82, column: 19, scope: !4598)
!4602 = !DILocation(line: 82, column: 17, scope: !4582)
!4603 = !DILocation(line: 83, column: 23, scope: !4598)
!4604 = !DILocation(line: 83, column: 22, scope: !4598)
!4605 = !DILocation(line: 83, column: 17, scope: !4598)
!4606 = !DILocation(line: 83, column: 20, scope: !4598)
!4607 = !DILocation(line: 83, column: 15, scope: !4598)
!4608 = !DILocation(line: 85, column: 13, scope: !4582)
!4609 = !DILocation(line: 87, column: 28, scope: !4582)
!4610 = !DILocation(line: 88, column: 24, scope: !4582)
!4611 = !DILocation(line: 90, column: 17, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4582, file: !515, line: 90, column: 17)
!4613 = !DILocation(line: 90, column: 21, scope: !4612)
!4614 = !DILocation(line: 90, column: 37, scope: !4612)
!4615 = !DILocation(line: 90, column: 19, scope: !4612)
!4616 = !DILocation(line: 90, column: 17, scope: !4582)
!4617 = !DILocation(line: 91, column: 23, scope: !4612)
!4618 = !DILocation(line: 91, column: 22, scope: !4612)
!4619 = !DILocation(line: 91, column: 17, scope: !4612)
!4620 = !DILocation(line: 91, column: 20, scope: !4612)
!4621 = !DILocation(line: 91, column: 15, scope: !4612)
!4622 = !DILocation(line: 93, column: 13, scope: !4582)
!4623 = !DILocation(line: 98, column: 24, scope: !4582)
!4624 = !DILocation(line: 100, column: 17, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4582, file: !515, line: 100, column: 17)
!4626 = !DILocation(line: 100, column: 21, scope: !4625)
!4627 = !DILocation(line: 100, column: 37, scope: !4625)
!4628 = !DILocation(line: 100, column: 19, scope: !4625)
!4629 = !DILocation(line: 100, column: 17, scope: !4582)
!4630 = !DILocation(line: 101, column: 23, scope: !4625)
!4631 = !DILocation(line: 101, column: 22, scope: !4625)
!4632 = !DILocation(line: 101, column: 17, scope: !4625)
!4633 = !DILocation(line: 101, column: 20, scope: !4625)
!4634 = !DILocation(line: 101, column: 15, scope: !4625)
!4635 = !DILocation(line: 103, column: 13, scope: !4582)
!4636 = !DILocation(line: 105, column: 28, scope: !4582)
!4637 = !DILocation(line: 107, column: 17, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4582, file: !515, line: 107, column: 17)
!4639 = !DILocation(line: 107, column: 21, scope: !4638)
!4640 = !DILocation(line: 107, column: 37, scope: !4638)
!4641 = !DILocation(line: 107, column: 19, scope: !4638)
!4642 = !DILocation(line: 107, column: 17, scope: !4582)
!4643 = !DILocation(line: 108, column: 23, scope: !4638)
!4644 = !DILocation(line: 108, column: 22, scope: !4638)
!4645 = !DILocation(line: 108, column: 17, scope: !4638)
!4646 = !DILocation(line: 108, column: 20, scope: !4638)
!4647 = !DILocation(line: 108, column: 15, scope: !4638)
!4648 = !DILocation(line: 110, column: 13, scope: !4582)
!4649 = !DILocation(line: 113, column: 24, scope: !4582)
!4650 = !DILocation(line: 114, column: 28, scope: !4582)
!4651 = !DILocation(line: 115, column: 13, scope: !4582)
!4652 = !DILocation(line: 117, column: 24, scope: !4582)
!4653 = !DILocation(line: 118, column: 28, scope: !4582)
!4654 = !DILocation(line: 119, column: 13, scope: !4582)
!4655 = !DILocation(line: 122, column: 13, scope: !4582)
!4656 = !DILocalVariable(name: "len", scope: !4657, file: !515, line: 128, type: !151)
!4657 = distinct !DILexicalBlock(scope: !4578, file: !515, line: 127, column: 9)
!4658 = !DILocation(line: 128, column: 18, scope: !4657)
!4659 = !DILocation(line: 128, column: 32, scope: !4657)
!4660 = !DILocation(line: 128, column: 24, scope: !4657)
!4661 = !DILocation(line: 129, column: 15, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4657, file: !515, line: 129, column: 15)
!4663 = !DILocation(line: 129, column: 21, scope: !4662)
!4664 = !DILocation(line: 129, column: 37, scope: !4662)
!4665 = !DILocation(line: 129, column: 50, scope: !4662)
!4666 = !DILocation(line: 129, column: 48, scope: !4662)
!4667 = !DILocation(line: 129, column: 19, scope: !4662)
!4668 = !DILocation(line: 129, column: 15, scope: !4657)
!4669 = !DILocation(line: 130, column: 19, scope: !4662)
!4670 = !DILocation(line: 130, column: 35, scope: !4662)
!4671 = !DILocation(line: 130, column: 48, scope: !4662)
!4672 = !DILocation(line: 130, column: 46, scope: !4662)
!4673 = !DILocation(line: 130, column: 17, scope: !4662)
!4674 = !DILocation(line: 130, column: 13, scope: !4662)
!4675 = !DILocation(line: 131, column: 19, scope: !4657)
!4676 = !DILocation(line: 131, column: 22, scope: !4657)
!4677 = !DILocation(line: 131, column: 25, scope: !4657)
!4678 = !DILocation(line: 131, column: 11, scope: !4657)
!4679 = !DILocation(line: 132, column: 16, scope: !4657)
!4680 = !DILocation(line: 132, column: 13, scope: !4657)
!4681 = !DILocation(line: 135, column: 9, scope: !4578)
!4682 = !DILocation(line: 67, column: 25, scope: !4572)
!4683 = !DILocation(line: 67, column: 5, scope: !4572)
!4684 = distinct !{!4684, !4576, !4685, !652}
!4685 = !DILocation(line: 136, column: 7, scope: !4573)
!4686 = !DILocation(line: 138, column: 6, scope: !4564)
!4687 = !DILocation(line: 138, column: 8, scope: !4564)
!4688 = !DILocation(line: 197, column: 7, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4511, file: !515, line: 197, column: 7)
!4690 = !DILocation(line: 197, column: 7, scope: !4511)
!4691 = !DILocalVariable(name: "fd", scope: !4692, file: !515, line: 199, type: !38)
!4692 = distinct !DILexicalBlock(scope: !4689, file: !515, line: 198, column: 5)
!4693 = !DILocation(line: 199, column: 11, scope: !4692)
!4694 = !DILocation(line: 199, column: 22, scope: !4692)
!4695 = !DILocation(line: 199, column: 32, scope: !4692)
!4696 = !DILocation(line: 199, column: 49, scope: !4692)
!4697 = !DILocation(line: 199, column: 47, scope: !4692)
!4698 = !DILocation(line: 199, column: 16, scope: !4692)
!4699 = !DILocation(line: 201, column: 11, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4692, file: !515, line: 201, column: 11)
!4701 = !DILocation(line: 201, column: 14, scope: !4700)
!4702 = !DILocation(line: 201, column: 11, scope: !4692)
!4703 = !DILocation(line: 202, column: 9, scope: !4700)
!4704 = !DILocalVariable(name: "fp", scope: !4692, file: !515, line: 204, type: !4514)
!4705 = !DILocation(line: 204, column: 13, scope: !4692)
!4706 = !DILocation(line: 204, column: 26, scope: !4692)
!4707 = !DILocation(line: 204, column: 30, scope: !4692)
!4708 = !DILocation(line: 204, column: 18, scope: !4692)
!4709 = !DILocation(line: 205, column: 11, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4692, file: !515, line: 205, column: 11)
!4711 = !DILocation(line: 205, column: 14, scope: !4710)
!4712 = !DILocation(line: 205, column: 11, scope: !4692)
!4713 = !DILocalVariable(name: "saved_errno", scope: !4714, file: !515, line: 207, type: !38)
!4714 = distinct !DILexicalBlock(scope: !4710, file: !515, line: 206, column: 9)
!4715 = !DILocation(line: 207, column: 15, scope: !4714)
!4716 = !DILocation(line: 207, column: 29, scope: !4714)
!4717 = !DILocation(line: 208, column: 18, scope: !4714)
!4718 = !DILocation(line: 208, column: 11, scope: !4714)
!4719 = !DILocation(line: 209, column: 19, scope: !4714)
!4720 = !DILocation(line: 209, column: 11, scope: !4714)
!4721 = !DILocation(line: 209, column: 17, scope: !4714)
!4722 = !DILocation(line: 210, column: 9, scope: !4714)
!4723 = !DILocation(line: 211, column: 14, scope: !4692)
!4724 = !DILocation(line: 211, column: 7, scope: !4692)
!4725 = !DILocation(line: 217, column: 10, scope: !4511)
!4726 = !DILocation(line: 219, column: 22, scope: !4511)
!4727 = !DILocation(line: 219, column: 32, scope: !4511)
!4728 = !DILocation(line: 219, column: 10, scope: !4511)
!4729 = !DILocation(line: 219, column: 3, scope: !4511)
!4730 = !DILocation(line: 220, column: 1, scope: !4511)
!4731 = distinct !DISubprogram(name: "orig_fopen", scope: !515, file: !515, line: 30, type: !4512, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !514, retainedNodes: !49)
!4732 = !DILocalVariable(name: "filename", arg: 1, scope: !4731, file: !515, line: 30, type: !47)
!4733 = !DILocation(line: 30, column: 25, scope: !4731)
!4734 = !DILocalVariable(name: "mode", arg: 2, scope: !4731, file: !515, line: 30, type: !47)
!4735 = !DILocation(line: 30, column: 47, scope: !4731)
!4736 = !DILocation(line: 32, column: 17, scope: !4731)
!4737 = !DILocation(line: 32, column: 27, scope: !4731)
!4738 = !DILocation(line: 32, column: 10, scope: !4731)
!4739 = !DILocation(line: 32, column: 3, scope: !4731)
!4740 = distinct !DISubprogram(name: "c_isalnum", scope: !4741, file: !4741, line: 169, type: !4742, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4741 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!74, !38}
!4744 = !DILocalVariable(name: "c", arg: 1, scope: !4740, file: !4741, line: 169, type: !38)
!4745 = !DILocation(line: 169, column: 16, scope: !4740)
!4746 = !DILocation(line: 171, column: 11, scope: !4740)
!4747 = !DILocation(line: 171, column: 3, scope: !4740)
!4748 = !DILocation(line: 176, column: 7, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4740, file: !4741, line: 172, column: 5)
!4750 = !DILocation(line: 178, column: 7, scope: !4749)
!4751 = !DILocation(line: 180, column: 1, scope: !4740)
!4752 = distinct !DISubprogram(name: "c_isalpha", scope: !4741, file: !4741, line: 183, type: !4742, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4753 = !DILocalVariable(name: "c", arg: 1, scope: !4752, file: !4741, line: 183, type: !38)
!4754 = !DILocation(line: 183, column: 16, scope: !4752)
!4755 = !DILocation(line: 185, column: 11, scope: !4752)
!4756 = !DILocation(line: 185, column: 3, scope: !4752)
!4757 = !DILocation(line: 189, column: 7, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4752, file: !4741, line: 186, column: 5)
!4759 = !DILocation(line: 191, column: 7, scope: !4758)
!4760 = !DILocation(line: 193, column: 1, scope: !4752)
!4761 = distinct !DISubprogram(name: "c_isascii", scope: !4741, file: !4741, line: 198, type: !4742, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4762 = !DILocalVariable(name: "c", arg: 1, scope: !4761, file: !4741, line: 198, type: !38)
!4763 = !DILocation(line: 198, column: 16, scope: !4761)
!4764 = !DILocation(line: 200, column: 11, scope: !4761)
!4765 = !DILocation(line: 200, column: 3, scope: !4761)
!4766 = !DILocation(line: 208, column: 7, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4761, file: !4741, line: 201, column: 5)
!4768 = !DILocation(line: 210, column: 7, scope: !4767)
!4769 = !DILocation(line: 212, column: 1, scope: !4761)
!4770 = distinct !DISubprogram(name: "c_isblank", scope: !4741, file: !4741, line: 215, type: !4742, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4771 = !DILocalVariable(name: "c", arg: 1, scope: !4770, file: !4741, line: 215, type: !38)
!4772 = !DILocation(line: 215, column: 16, scope: !4770)
!4773 = !DILocation(line: 217, column: 10, scope: !4770)
!4774 = !DILocation(line: 217, column: 12, scope: !4770)
!4775 = !DILocation(line: 217, column: 19, scope: !4770)
!4776 = !DILocation(line: 217, column: 22, scope: !4770)
!4777 = !DILocation(line: 217, column: 24, scope: !4770)
!4778 = !DILocation(line: 217, column: 3, scope: !4770)
!4779 = distinct !DISubprogram(name: "c_iscntrl", scope: !4741, file: !4741, line: 221, type: !4742, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4780 = !DILocalVariable(name: "c", arg: 1, scope: !4779, file: !4741, line: 221, type: !38)
!4781 = !DILocation(line: 221, column: 16, scope: !4779)
!4782 = !DILocation(line: 223, column: 11, scope: !4779)
!4783 = !DILocation(line: 223, column: 3, scope: !4779)
!4784 = !DILocation(line: 226, column: 7, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4779, file: !4741, line: 224, column: 5)
!4786 = !DILocation(line: 228, column: 7, scope: !4785)
!4787 = !DILocation(line: 230, column: 1, scope: !4779)
!4788 = distinct !DISubprogram(name: "c_isdigit", scope: !4741, file: !4741, line: 233, type: !4742, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4789 = !DILocalVariable(name: "c", arg: 1, scope: !4788, file: !4741, line: 233, type: !38)
!4790 = !DILocation(line: 233, column: 16, scope: !4788)
!4791 = !DILocation(line: 235, column: 11, scope: !4788)
!4792 = !DILocation(line: 235, column: 3, scope: !4788)
!4793 = !DILocation(line: 238, column: 7, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4788, file: !4741, line: 236, column: 5)
!4795 = !DILocation(line: 240, column: 7, scope: !4794)
!4796 = !DILocation(line: 242, column: 1, scope: !4788)
!4797 = distinct !DISubprogram(name: "c_isgraph", scope: !4741, file: !4741, line: 245, type: !4742, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4798 = !DILocalVariable(name: "c", arg: 1, scope: !4797, file: !4741, line: 245, type: !38)
!4799 = !DILocation(line: 245, column: 16, scope: !4797)
!4800 = !DILocation(line: 247, column: 11, scope: !4797)
!4801 = !DILocation(line: 247, column: 3, scope: !4797)
!4802 = !DILocation(line: 253, column: 7, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4797, file: !4741, line: 248, column: 5)
!4804 = !DILocation(line: 255, column: 7, scope: !4803)
!4805 = !DILocation(line: 257, column: 1, scope: !4797)
!4806 = distinct !DISubprogram(name: "c_islower", scope: !4741, file: !4741, line: 260, type: !4742, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4807 = !DILocalVariable(name: "c", arg: 1, scope: !4806, file: !4741, line: 260, type: !38)
!4808 = !DILocation(line: 260, column: 16, scope: !4806)
!4809 = !DILocation(line: 262, column: 11, scope: !4806)
!4810 = !DILocation(line: 262, column: 3, scope: !4806)
!4811 = !DILocation(line: 265, column: 7, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4806, file: !4741, line: 263, column: 5)
!4813 = !DILocation(line: 267, column: 7, scope: !4812)
!4814 = !DILocation(line: 269, column: 1, scope: !4806)
!4815 = distinct !DISubprogram(name: "c_isprint", scope: !4741, file: !4741, line: 272, type: !4742, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4816 = !DILocalVariable(name: "c", arg: 1, scope: !4815, file: !4741, line: 272, type: !38)
!4817 = !DILocation(line: 272, column: 16, scope: !4815)
!4818 = !DILocation(line: 274, column: 11, scope: !4815)
!4819 = !DILocation(line: 274, column: 3, scope: !4815)
!4820 = !DILocation(line: 281, column: 7, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4815, file: !4741, line: 275, column: 5)
!4822 = !DILocation(line: 283, column: 7, scope: !4821)
!4823 = !DILocation(line: 285, column: 1, scope: !4815)
!4824 = distinct !DISubprogram(name: "c_ispunct", scope: !4741, file: !4741, line: 288, type: !4742, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4825 = !DILocalVariable(name: "c", arg: 1, scope: !4824, file: !4741, line: 288, type: !38)
!4826 = !DILocation(line: 288, column: 16, scope: !4824)
!4827 = !DILocation(line: 290, column: 11, scope: !4824)
!4828 = !DILocation(line: 290, column: 3, scope: !4824)
!4829 = !DILocation(line: 293, column: 7, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4824, file: !4741, line: 291, column: 5)
!4831 = !DILocation(line: 295, column: 7, scope: !4830)
!4832 = !DILocation(line: 297, column: 1, scope: !4824)
!4833 = distinct !DISubprogram(name: "c_isspace", scope: !4741, file: !4741, line: 300, type: !4742, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4834 = !DILocalVariable(name: "c", arg: 1, scope: !4833, file: !4741, line: 300, type: !38)
!4835 = !DILocation(line: 300, column: 16, scope: !4833)
!4836 = !DILocation(line: 302, column: 11, scope: !4833)
!4837 = !DILocation(line: 302, column: 3, scope: !4833)
!4838 = !DILocation(line: 305, column: 7, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4833, file: !4741, line: 303, column: 5)
!4840 = !DILocation(line: 307, column: 7, scope: !4839)
!4841 = !DILocation(line: 309, column: 1, scope: !4833)
!4842 = distinct !DISubprogram(name: "c_isupper", scope: !4741, file: !4741, line: 312, type: !4742, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4843 = !DILocalVariable(name: "c", arg: 1, scope: !4842, file: !4741, line: 312, type: !38)
!4844 = !DILocation(line: 312, column: 16, scope: !4842)
!4845 = !DILocation(line: 314, column: 11, scope: !4842)
!4846 = !DILocation(line: 314, column: 3, scope: !4842)
!4847 = !DILocation(line: 317, column: 7, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4842, file: !4741, line: 315, column: 5)
!4849 = !DILocation(line: 319, column: 7, scope: !4848)
!4850 = !DILocation(line: 321, column: 1, scope: !4842)
!4851 = distinct !DISubprogram(name: "c_isxdigit", scope: !4741, file: !4741, line: 324, type: !4742, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4852 = !DILocalVariable(name: "c", arg: 1, scope: !4851, file: !4741, line: 324, type: !38)
!4853 = !DILocation(line: 324, column: 17, scope: !4851)
!4854 = !DILocation(line: 326, column: 11, scope: !4851)
!4855 = !DILocation(line: 326, column: 3, scope: !4851)
!4856 = !DILocation(line: 330, column: 7, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4851, file: !4741, line: 327, column: 5)
!4858 = !DILocation(line: 332, column: 7, scope: !4857)
!4859 = !DILocation(line: 334, column: 1, scope: !4851)
!4860 = distinct !DISubprogram(name: "c_tolower", scope: !4741, file: !4741, line: 337, type: !1031, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4861 = !DILocalVariable(name: "c", arg: 1, scope: !4860, file: !4741, line: 337, type: !38)
!4862 = !DILocation(line: 337, column: 16, scope: !4860)
!4863 = !DILocation(line: 339, column: 11, scope: !4860)
!4864 = !DILocation(line: 339, column: 3, scope: !4860)
!4865 = !DILocation(line: 342, column: 14, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4860, file: !4741, line: 340, column: 5)
!4867 = !DILocation(line: 342, column: 16, scope: !4866)
!4868 = !DILocation(line: 342, column: 22, scope: !4866)
!4869 = !DILocation(line: 342, column: 7, scope: !4866)
!4870 = !DILocation(line: 344, column: 14, scope: !4866)
!4871 = !DILocation(line: 344, column: 7, scope: !4866)
!4872 = !DILocation(line: 346, column: 1, scope: !4860)
!4873 = distinct !DISubprogram(name: "c_toupper", scope: !4741, file: !4741, line: 349, type: !1031, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !516, retainedNodes: !49)
!4874 = !DILocalVariable(name: "c", arg: 1, scope: !4873, file: !4741, line: 349, type: !38)
!4875 = !DILocation(line: 349, column: 16, scope: !4873)
!4876 = !DILocation(line: 351, column: 11, scope: !4873)
!4877 = !DILocation(line: 351, column: 3, scope: !4873)
!4878 = !DILocation(line: 354, column: 14, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4873, file: !4741, line: 352, column: 5)
!4880 = !DILocation(line: 354, column: 16, scope: !4879)
!4881 = !DILocation(line: 354, column: 22, scope: !4879)
!4882 = !DILocation(line: 354, column: 7, scope: !4879)
!4883 = !DILocation(line: 356, column: 14, scope: !4879)
!4884 = !DILocation(line: 356, column: 7, scope: !4879)
!4885 = !DILocation(line: 358, column: 1, scope: !4873)
!4886 = distinct !DISubprogram(name: "c32isprint", scope: !4887, file: !4887, line: 41, type: !4888, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !518, retainedNodes: !49)
!4887 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!38, !4890}
!4890 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4891, line: 20, baseType: !7)
!4891 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!4892 = !DILocalVariable(name: "wc", arg: 1, scope: !4886, file: !4887, line: 41, type: !4890)
!4893 = !DILocation(line: 41, column: 14, scope: !4886)
!4894 = !DILocation(line: 66, column: 22, scope: !4886)
!4895 = !DILocation(line: 66, column: 10, scope: !4886)
!4896 = !DILocation(line: 66, column: 3, scope: !4886)
!4897 = distinct !DISubprogram(name: "close_stream", scope: !521, file: !521, line: 55, type: !4898, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !520, retainedNodes: !49)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!38, !4900}
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1421, line: 7, baseType: !4902)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1423, line: 49, size: 1728, elements: !4903)
!4903 = !{!4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4902, file: !1423, line: 51, baseType: !38, size: 32)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4902, file: !1423, line: 54, baseType: !35, size: 64, offset: 64)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4902, file: !1423, line: 55, baseType: !35, size: 64, offset: 128)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4902, file: !1423, line: 56, baseType: !35, size: 64, offset: 192)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4902, file: !1423, line: 57, baseType: !35, size: 64, offset: 256)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4902, file: !1423, line: 58, baseType: !35, size: 64, offset: 320)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4902, file: !1423, line: 59, baseType: !35, size: 64, offset: 384)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4902, file: !1423, line: 60, baseType: !35, size: 64, offset: 448)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4902, file: !1423, line: 61, baseType: !35, size: 64, offset: 512)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4902, file: !1423, line: 64, baseType: !35, size: 64, offset: 576)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4902, file: !1423, line: 65, baseType: !35, size: 64, offset: 640)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4902, file: !1423, line: 66, baseType: !35, size: 64, offset: 704)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4902, file: !1423, line: 68, baseType: !1438, size: 64, offset: 768)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4902, file: !1423, line: 70, baseType: !4918, size: 64, offset: 832)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4902, file: !1423, line: 72, baseType: !38, size: 32, offset: 896)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4902, file: !1423, line: 73, baseType: !38, size: 32, offset: 928)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4902, file: !1423, line: 74, baseType: !1445, size: 64, offset: 960)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4902, file: !1423, line: 77, baseType: !39, size: 16, offset: 1024)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4902, file: !1423, line: 78, baseType: !1448, size: 8, offset: 1040)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4902, file: !1423, line: 79, baseType: !1450, size: 8, offset: 1048)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4902, file: !1423, line: 81, baseType: !1454, size: 64, offset: 1088)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4902, file: !1423, line: 89, baseType: !1457, size: 64, offset: 1152)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4902, file: !1423, line: 91, baseType: !1459, size: 64, offset: 1216)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4902, file: !1423, line: 92, baseType: !1462, size: 64, offset: 1280)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4902, file: !1423, line: 93, baseType: !4918, size: 64, offset: 1344)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4902, file: !1423, line: 94, baseType: !37, size: 64, offset: 1408)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4902, file: !1423, line: 95, baseType: !151, size: 64, offset: 1472)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4902, file: !1423, line: 96, baseType: !38, size: 32, offset: 1536)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4902, file: !1423, line: 98, baseType: !1469, size: 160, offset: 1568)
!4934 = !DILocalVariable(name: "stream", arg: 1, scope: !4897, file: !521, line: 55, type: !4900)
!4935 = !DILocation(line: 55, column: 21, scope: !4897)
!4936 = !DILocalVariable(name: "some_pending", scope: !4897, file: !521, line: 57, type: !4937)
!4937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!4938 = !DILocation(line: 57, column: 14, scope: !4897)
!4939 = !DILocation(line: 57, column: 42, scope: !4897)
!4940 = !DILocation(line: 57, column: 30, scope: !4897)
!4941 = !DILocation(line: 57, column: 50, scope: !4897)
!4942 = !DILocalVariable(name: "prev_fail", scope: !4897, file: !521, line: 58, type: !4937)
!4943 = !DILocation(line: 58, column: 14, scope: !4897)
!4944 = !DILocation(line: 58, column: 27, scope: !4897)
!4945 = !DILocation(line: 58, column: 43, scope: !4897)
!4946 = !DILocalVariable(name: "fclose_fail", scope: !4897, file: !521, line: 59, type: !4937)
!4947 = !DILocation(line: 59, column: 14, scope: !4897)
!4948 = !DILocation(line: 59, column: 37, scope: !4897)
!4949 = !DILocation(line: 59, column: 29, scope: !4897)
!4950 = !DILocation(line: 59, column: 45, scope: !4897)
!4951 = !DILocation(line: 69, column: 7, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4897, file: !521, line: 69, column: 7)
!4953 = !DILocation(line: 69, column: 17, scope: !4952)
!4954 = !DILocation(line: 69, column: 21, scope: !4952)
!4955 = !DILocation(line: 69, column: 33, scope: !4952)
!4956 = !DILocation(line: 69, column: 37, scope: !4952)
!4957 = !DILocation(line: 69, column: 50, scope: !4952)
!4958 = !DILocation(line: 69, column: 53, scope: !4952)
!4959 = !DILocation(line: 69, column: 59, scope: !4952)
!4960 = !DILocation(line: 69, column: 7, scope: !4897)
!4961 = !DILocation(line: 71, column: 13, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !521, line: 71, column: 11)
!4963 = distinct !DILexicalBlock(scope: !4952, file: !521, line: 70, column: 5)
!4964 = !DILocation(line: 71, column: 11, scope: !4963)
!4965 = !DILocation(line: 72, column: 9, scope: !4962)
!4966 = !DILocation(line: 72, column: 15, scope: !4962)
!4967 = !DILocation(line: 73, column: 7, scope: !4963)
!4968 = !DILocation(line: 76, column: 3, scope: !4897)
!4969 = !DILocation(line: 77, column: 1, scope: !4897)
!4970 = distinct !DISubprogram(name: "rpl_fclose", scope: !523, file: !523, line: 58, type: !4971, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !522, retainedNodes: !49)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!38, !4973}
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1421, line: 7, baseType: !4975)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1423, line: 49, size: 1728, elements: !4976)
!4976 = !{!4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4975, file: !1423, line: 51, baseType: !38, size: 32)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4975, file: !1423, line: 54, baseType: !35, size: 64, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4975, file: !1423, line: 55, baseType: !35, size: 64, offset: 128)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4975, file: !1423, line: 56, baseType: !35, size: 64, offset: 192)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4975, file: !1423, line: 57, baseType: !35, size: 64, offset: 256)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4975, file: !1423, line: 58, baseType: !35, size: 64, offset: 320)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4975, file: !1423, line: 59, baseType: !35, size: 64, offset: 384)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4975, file: !1423, line: 60, baseType: !35, size: 64, offset: 448)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4975, file: !1423, line: 61, baseType: !35, size: 64, offset: 512)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4975, file: !1423, line: 64, baseType: !35, size: 64, offset: 576)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4975, file: !1423, line: 65, baseType: !35, size: 64, offset: 640)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4975, file: !1423, line: 66, baseType: !35, size: 64, offset: 704)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4975, file: !1423, line: 68, baseType: !1438, size: 64, offset: 768)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4975, file: !1423, line: 70, baseType: !4991, size: 64, offset: 832)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4975, file: !1423, line: 72, baseType: !38, size: 32, offset: 896)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4975, file: !1423, line: 73, baseType: !38, size: 32, offset: 928)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4975, file: !1423, line: 74, baseType: !1445, size: 64, offset: 960)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4975, file: !1423, line: 77, baseType: !39, size: 16, offset: 1024)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4975, file: !1423, line: 78, baseType: !1448, size: 8, offset: 1040)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4975, file: !1423, line: 79, baseType: !1450, size: 8, offset: 1048)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4975, file: !1423, line: 81, baseType: !1454, size: 64, offset: 1088)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4975, file: !1423, line: 89, baseType: !1457, size: 64, offset: 1152)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4975, file: !1423, line: 91, baseType: !1459, size: 64, offset: 1216)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4975, file: !1423, line: 92, baseType: !1462, size: 64, offset: 1280)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4975, file: !1423, line: 93, baseType: !4991, size: 64, offset: 1344)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4975, file: !1423, line: 94, baseType: !37, size: 64, offset: 1408)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4975, file: !1423, line: 95, baseType: !151, size: 64, offset: 1472)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4975, file: !1423, line: 96, baseType: !38, size: 32, offset: 1536)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4975, file: !1423, line: 98, baseType: !1469, size: 160, offset: 1568)
!5007 = !DILocalVariable(name: "fp", arg: 1, scope: !4970, file: !523, line: 58, type: !4973)
!5008 = !DILocation(line: 58, column: 19, scope: !4970)
!5009 = !DILocalVariable(name: "saved_errno", scope: !4970, file: !523, line: 60, type: !38)
!5010 = !DILocation(line: 60, column: 7, scope: !4970)
!5011 = !DILocalVariable(name: "fd", scope: !4970, file: !523, line: 63, type: !38)
!5012 = !DILocation(line: 63, column: 7, scope: !4970)
!5013 = !DILocation(line: 63, column: 20, scope: !4970)
!5014 = !DILocation(line: 63, column: 12, scope: !4970)
!5015 = !DILocation(line: 64, column: 7, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4970, file: !523, line: 64, column: 7)
!5017 = !DILocation(line: 64, column: 10, scope: !5016)
!5018 = !DILocation(line: 64, column: 7, scope: !4970)
!5019 = !DILocation(line: 65, column: 28, scope: !5016)
!5020 = !DILocation(line: 65, column: 12, scope: !5016)
!5021 = !DILocation(line: 65, column: 5, scope: !5016)
!5022 = !DILocation(line: 70, column: 9, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !4970, file: !523, line: 70, column: 7)
!5024 = !DILocation(line: 70, column: 23, scope: !5023)
!5025 = !DILocation(line: 70, column: 41, scope: !5023)
!5026 = !DILocation(line: 70, column: 33, scope: !5023)
!5027 = !DILocation(line: 70, column: 26, scope: !5023)
!5028 = !DILocation(line: 70, column: 59, scope: !5023)
!5029 = !DILocation(line: 71, column: 7, scope: !5023)
!5030 = !DILocation(line: 71, column: 18, scope: !5023)
!5031 = !DILocation(line: 71, column: 10, scope: !5023)
!5032 = !DILocation(line: 70, column: 7, scope: !4970)
!5033 = !DILocation(line: 72, column: 19, scope: !5023)
!5034 = !DILocation(line: 72, column: 17, scope: !5023)
!5035 = !DILocation(line: 72, column: 5, scope: !5023)
!5036 = !DILocalVariable(name: "result", scope: !4970, file: !523, line: 74, type: !38)
!5037 = !DILocation(line: 74, column: 7, scope: !4970)
!5038 = !DILocation(line: 100, column: 28, scope: !4970)
!5039 = !DILocation(line: 100, column: 12, scope: !4970)
!5040 = !DILocation(line: 100, column: 10, scope: !4970)
!5041 = !DILocation(line: 105, column: 7, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !4970, file: !523, line: 105, column: 7)
!5043 = !DILocation(line: 105, column: 19, scope: !5042)
!5044 = !DILocation(line: 105, column: 7, scope: !4970)
!5045 = !DILocation(line: 107, column: 15, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5042, file: !523, line: 106, column: 5)
!5047 = !DILocation(line: 107, column: 7, scope: !5046)
!5048 = !DILocation(line: 107, column: 13, scope: !5046)
!5049 = !DILocation(line: 108, column: 14, scope: !5046)
!5050 = !DILocation(line: 109, column: 5, scope: !5046)
!5051 = !DILocation(line: 111, column: 10, scope: !4970)
!5052 = !DILocation(line: 111, column: 3, scope: !4970)
!5053 = !DILocation(line: 112, column: 1, scope: !4970)
!5054 = distinct !DISubprogram(name: "rpl_fflush", scope: !525, file: !525, line: 130, type: !5055, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !524, retainedNodes: !49)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!38, !5057}
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1421, line: 7, baseType: !5059)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1423, line: 49, size: 1728, elements: !5060)
!5060 = !{!5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5059, file: !1423, line: 51, baseType: !38, size: 32)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5059, file: !1423, line: 54, baseType: !35, size: 64, offset: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5059, file: !1423, line: 55, baseType: !35, size: 64, offset: 128)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5059, file: !1423, line: 56, baseType: !35, size: 64, offset: 192)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5059, file: !1423, line: 57, baseType: !35, size: 64, offset: 256)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5059, file: !1423, line: 58, baseType: !35, size: 64, offset: 320)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5059, file: !1423, line: 59, baseType: !35, size: 64, offset: 384)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5059, file: !1423, line: 60, baseType: !35, size: 64, offset: 448)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5059, file: !1423, line: 61, baseType: !35, size: 64, offset: 512)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5059, file: !1423, line: 64, baseType: !35, size: 64, offset: 576)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5059, file: !1423, line: 65, baseType: !35, size: 64, offset: 640)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5059, file: !1423, line: 66, baseType: !35, size: 64, offset: 704)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5059, file: !1423, line: 68, baseType: !1438, size: 64, offset: 768)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5059, file: !1423, line: 70, baseType: !5075, size: 64, offset: 832)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5059, file: !1423, line: 72, baseType: !38, size: 32, offset: 896)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5059, file: !1423, line: 73, baseType: !38, size: 32, offset: 928)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5059, file: !1423, line: 74, baseType: !1445, size: 64, offset: 960)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5059, file: !1423, line: 77, baseType: !39, size: 16, offset: 1024)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5059, file: !1423, line: 78, baseType: !1448, size: 8, offset: 1040)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5059, file: !1423, line: 79, baseType: !1450, size: 8, offset: 1048)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5059, file: !1423, line: 81, baseType: !1454, size: 64, offset: 1088)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5059, file: !1423, line: 89, baseType: !1457, size: 64, offset: 1152)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5059, file: !1423, line: 91, baseType: !1459, size: 64, offset: 1216)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5059, file: !1423, line: 92, baseType: !1462, size: 64, offset: 1280)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5059, file: !1423, line: 93, baseType: !5075, size: 64, offset: 1344)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5059, file: !1423, line: 94, baseType: !37, size: 64, offset: 1408)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5059, file: !1423, line: 95, baseType: !151, size: 64, offset: 1472)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5059, file: !1423, line: 96, baseType: !38, size: 32, offset: 1536)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5059, file: !1423, line: 98, baseType: !1469, size: 160, offset: 1568)
!5091 = !DILocalVariable(name: "stream", arg: 1, scope: !5054, file: !525, line: 130, type: !5057)
!5092 = !DILocation(line: 130, column: 19, scope: !5054)
!5093 = !DILocation(line: 151, column: 7, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5054, file: !525, line: 151, column: 7)
!5095 = !DILocation(line: 151, column: 14, scope: !5094)
!5096 = !DILocation(line: 151, column: 22, scope: !5094)
!5097 = !DILocation(line: 151, column: 27, scope: !5094)
!5098 = !DILocation(line: 151, column: 7, scope: !5054)
!5099 = !DILocation(line: 152, column: 20, scope: !5094)
!5100 = !DILocation(line: 152, column: 12, scope: !5094)
!5101 = !DILocation(line: 152, column: 5, scope: !5094)
!5102 = !DILocation(line: 157, column: 44, scope: !5054)
!5103 = !DILocation(line: 157, column: 3, scope: !5054)
!5104 = !DILocation(line: 159, column: 18, scope: !5054)
!5105 = !DILocation(line: 159, column: 10, scope: !5054)
!5106 = !DILocation(line: 159, column: 3, scope: !5054)
!5107 = !DILocation(line: 236, column: 1, scope: !5054)
!5108 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !525, file: !525, line: 42, type: !5109, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !524, retainedNodes: !49)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{null, !5057}
!5111 = !DILocalVariable(name: "fp", arg: 1, scope: !5108, file: !525, line: 42, type: !5057)
!5112 = !DILocation(line: 42, column: 48, scope: !5108)
!5113 = !DILocation(line: 44, column: 7, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5108, file: !525, line: 44, column: 7)
!5115 = !DILocation(line: 44, column: 12, scope: !5114)
!5116 = !DILocation(line: 44, column: 19, scope: !5114)
!5117 = !DILocation(line: 44, column: 7, scope: !5108)
!5118 = !DILocation(line: 46, column: 13, scope: !5114)
!5119 = !DILocation(line: 46, column: 5, scope: !5114)
!5120 = !DILocation(line: 47, column: 1, scope: !5108)
!5121 = distinct !DISubprogram(name: "rpl_fseeko", scope: !527, file: !527, line: 28, type: !5122, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !526, retainedNodes: !49)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!38, !5124, !5158, !38}
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1421, line: 7, baseType: !5126)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1423, line: 49, size: 1728, elements: !5127)
!5127 = !{!5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5126, file: !1423, line: 51, baseType: !38, size: 32)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5126, file: !1423, line: 54, baseType: !35, size: 64, offset: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5126, file: !1423, line: 55, baseType: !35, size: 64, offset: 128)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5126, file: !1423, line: 56, baseType: !35, size: 64, offset: 192)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5126, file: !1423, line: 57, baseType: !35, size: 64, offset: 256)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5126, file: !1423, line: 58, baseType: !35, size: 64, offset: 320)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5126, file: !1423, line: 59, baseType: !35, size: 64, offset: 384)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5126, file: !1423, line: 60, baseType: !35, size: 64, offset: 448)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5126, file: !1423, line: 61, baseType: !35, size: 64, offset: 512)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5126, file: !1423, line: 64, baseType: !35, size: 64, offset: 576)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5126, file: !1423, line: 65, baseType: !35, size: 64, offset: 640)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5126, file: !1423, line: 66, baseType: !35, size: 64, offset: 704)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5126, file: !1423, line: 68, baseType: !1438, size: 64, offset: 768)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5126, file: !1423, line: 70, baseType: !5142, size: 64, offset: 832)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5126, file: !1423, line: 72, baseType: !38, size: 32, offset: 896)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5126, file: !1423, line: 73, baseType: !38, size: 32, offset: 928)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5126, file: !1423, line: 74, baseType: !1445, size: 64, offset: 960)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5126, file: !1423, line: 77, baseType: !39, size: 16, offset: 1024)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5126, file: !1423, line: 78, baseType: !1448, size: 8, offset: 1040)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5126, file: !1423, line: 79, baseType: !1450, size: 8, offset: 1048)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5126, file: !1423, line: 81, baseType: !1454, size: 64, offset: 1088)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5126, file: !1423, line: 89, baseType: !1457, size: 64, offset: 1152)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5126, file: !1423, line: 91, baseType: !1459, size: 64, offset: 1216)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5126, file: !1423, line: 92, baseType: !1462, size: 64, offset: 1280)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5126, file: !1423, line: 93, baseType: !5142, size: 64, offset: 1344)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5126, file: !1423, line: 94, baseType: !37, size: 64, offset: 1408)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5126, file: !1423, line: 95, baseType: !151, size: 64, offset: 1472)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5126, file: !1423, line: 96, baseType: !38, size: 32, offset: 1536)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5126, file: !1423, line: 98, baseType: !1469, size: 160, offset: 1568)
!5158 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !87, line: 63, baseType: !1445)
!5159 = !DILocalVariable(name: "fp", arg: 1, scope: !5121, file: !527, line: 28, type: !5124)
!5160 = !DILocation(line: 28, column: 15, scope: !5121)
!5161 = !DILocalVariable(name: "offset", arg: 2, scope: !5121, file: !527, line: 28, type: !5158)
!5162 = !DILocation(line: 28, column: 25, scope: !5121)
!5163 = !DILocalVariable(name: "whence", arg: 3, scope: !5121, file: !527, line: 28, type: !38)
!5164 = !DILocation(line: 28, column: 37, scope: !5121)
!5165 = !DILocation(line: 55, column: 7, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5121, file: !527, line: 55, column: 7)
!5167 = !DILocation(line: 55, column: 12, scope: !5166)
!5168 = !DILocation(line: 55, column: 28, scope: !5166)
!5169 = !DILocation(line: 55, column: 33, scope: !5166)
!5170 = !DILocation(line: 55, column: 25, scope: !5166)
!5171 = !DILocation(line: 56, column: 7, scope: !5166)
!5172 = !DILocation(line: 56, column: 10, scope: !5166)
!5173 = !DILocation(line: 56, column: 15, scope: !5166)
!5174 = !DILocation(line: 56, column: 32, scope: !5166)
!5175 = !DILocation(line: 56, column: 37, scope: !5166)
!5176 = !DILocation(line: 56, column: 29, scope: !5166)
!5177 = !DILocation(line: 57, column: 7, scope: !5166)
!5178 = !DILocation(line: 57, column: 10, scope: !5166)
!5179 = !DILocation(line: 57, column: 15, scope: !5166)
!5180 = !DILocation(line: 57, column: 29, scope: !5166)
!5181 = !DILocation(line: 55, column: 7, scope: !5121)
!5182 = !DILocalVariable(name: "pos", scope: !5183, file: !527, line: 123, type: !5158)
!5183 = distinct !DILexicalBlock(scope: !5166, file: !527, line: 119, column: 5)
!5184 = !DILocation(line: 123, column: 13, scope: !5183)
!5185 = !DILocation(line: 123, column: 34, scope: !5183)
!5186 = !DILocation(line: 123, column: 26, scope: !5183)
!5187 = !DILocation(line: 123, column: 39, scope: !5183)
!5188 = !DILocation(line: 123, column: 47, scope: !5183)
!5189 = !DILocation(line: 123, column: 19, scope: !5183)
!5190 = !DILocation(line: 124, column: 11, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5183, file: !527, line: 124, column: 11)
!5192 = !DILocation(line: 124, column: 15, scope: !5191)
!5193 = !DILocation(line: 124, column: 11, scope: !5183)
!5194 = !DILocation(line: 130, column: 11, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5191, file: !527, line: 125, column: 9)
!5196 = !DILocation(line: 135, column: 7, scope: !5183)
!5197 = !DILocation(line: 135, column: 12, scope: !5183)
!5198 = !DILocation(line: 135, column: 19, scope: !5183)
!5199 = !DILocation(line: 136, column: 22, scope: !5183)
!5200 = !DILocation(line: 136, column: 7, scope: !5183)
!5201 = !DILocation(line: 136, column: 12, scope: !5183)
!5202 = !DILocation(line: 136, column: 20, scope: !5183)
!5203 = !DILocation(line: 167, column: 7, scope: !5183)
!5204 = !DILocation(line: 169, column: 18, scope: !5121)
!5205 = !DILocation(line: 169, column: 22, scope: !5121)
!5206 = !DILocation(line: 169, column: 30, scope: !5121)
!5207 = !DILocation(line: 169, column: 10, scope: !5121)
!5208 = !DILocation(line: 169, column: 3, scope: !5121)
!5209 = !DILocation(line: 170, column: 1, scope: !5121)
!5210 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !5211, file: !5211, line: 43, type: !5212, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !528, retainedNodes: !49)
!5211 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!5212 = !DISubroutineType(types: !79)
!5213 = !DILocation(line: 45, column: 3, scope: !5210)
!5214 = !DILocation(line: 45, column: 9, scope: !5210)
!5215 = !DILocation(line: 46, column: 3, scope: !5210)
!5216 = distinct !DISubprogram(name: "imalloc", scope: !5211, file: !5211, line: 55, type: !3797, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !528, retainedNodes: !49)
!5217 = !DILocalVariable(name: "s", arg: 1, scope: !5216, file: !5211, line: 55, type: !489)
!5218 = !DILocation(line: 55, column: 16, scope: !5216)
!5219 = !DILocation(line: 57, column: 10, scope: !5216)
!5220 = !DILocation(line: 57, column: 12, scope: !5216)
!5221 = !DILocation(line: 57, column: 34, scope: !5216)
!5222 = !DILocation(line: 57, column: 26, scope: !5216)
!5223 = !DILocation(line: 57, column: 39, scope: !5216)
!5224 = !DILocation(line: 57, column: 3, scope: !5216)
!5225 = distinct !DISubprogram(name: "irealloc", scope: !5211, file: !5211, line: 66, type: !3825, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !528, retainedNodes: !49)
!5226 = !DILocalVariable(name: "p", arg: 1, scope: !5225, file: !5211, line: 66, type: !37)
!5227 = !DILocation(line: 66, column: 17, scope: !5225)
!5228 = !DILocalVariable(name: "s", arg: 2, scope: !5225, file: !5211, line: 66, type: !489)
!5229 = !DILocation(line: 66, column: 26, scope: !5225)
!5230 = !DILocation(line: 68, column: 10, scope: !5225)
!5231 = !DILocation(line: 68, column: 12, scope: !5225)
!5232 = !DILocation(line: 68, column: 35, scope: !5225)
!5233 = !DILocation(line: 68, column: 38, scope: !5225)
!5234 = !DILocation(line: 68, column: 26, scope: !5225)
!5235 = !DILocation(line: 68, column: 43, scope: !5225)
!5236 = !DILocation(line: 68, column: 3, scope: !5225)
!5237 = distinct !DISubprogram(name: "icalloc", scope: !5211, file: !5211, line: 77, type: !3863, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !528, retainedNodes: !49)
!5238 = !DILocalVariable(name: "n", arg: 1, scope: !5237, file: !5211, line: 77, type: !489)
!5239 = !DILocation(line: 77, column: 16, scope: !5237)
!5240 = !DILocalVariable(name: "s", arg: 2, scope: !5237, file: !5211, line: 77, type: !489)
!5241 = !DILocation(line: 77, column: 25, scope: !5237)
!5242 = !DILocation(line: 79, column: 18, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5237, file: !5211, line: 79, column: 7)
!5244 = !DILocation(line: 79, column: 16, scope: !5243)
!5245 = !DILocation(line: 79, column: 7, scope: !5237)
!5246 = !DILocation(line: 81, column: 11, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5248, file: !5211, line: 81, column: 11)
!5248 = distinct !DILexicalBlock(scope: !5243, file: !5211, line: 80, column: 5)
!5249 = !DILocation(line: 81, column: 13, scope: !5247)
!5250 = !DILocation(line: 81, column: 11, scope: !5248)
!5251 = !DILocation(line: 82, column: 16, scope: !5247)
!5252 = !DILocation(line: 82, column: 9, scope: !5247)
!5253 = !DILocation(line: 83, column: 9, scope: !5248)
!5254 = !DILocation(line: 84, column: 5, scope: !5248)
!5255 = !DILocation(line: 85, column: 18, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5237, file: !5211, line: 85, column: 7)
!5257 = !DILocation(line: 85, column: 16, scope: !5256)
!5258 = !DILocation(line: 85, column: 7, scope: !5237)
!5259 = !DILocation(line: 87, column: 11, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5261, file: !5211, line: 87, column: 11)
!5261 = distinct !DILexicalBlock(scope: !5256, file: !5211, line: 86, column: 5)
!5262 = !DILocation(line: 87, column: 13, scope: !5260)
!5263 = !DILocation(line: 87, column: 11, scope: !5261)
!5264 = !DILocation(line: 88, column: 16, scope: !5260)
!5265 = !DILocation(line: 88, column: 9, scope: !5260)
!5266 = !DILocation(line: 89, column: 9, scope: !5261)
!5267 = !DILocation(line: 90, column: 5, scope: !5261)
!5268 = !DILocation(line: 91, column: 18, scope: !5237)
!5269 = !DILocation(line: 91, column: 21, scope: !5237)
!5270 = !DILocation(line: 91, column: 10, scope: !5237)
!5271 = !DILocation(line: 91, column: 3, scope: !5237)
!5272 = !DILocation(line: 92, column: 1, scope: !5237)
!5273 = distinct !DISubprogram(name: "ireallocarray", scope: !5211, file: !5211, line: 98, type: !3837, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !528, retainedNodes: !49)
!5274 = !DILocalVariable(name: "p", arg: 1, scope: !5273, file: !5211, line: 98, type: !37)
!5275 = !DILocation(line: 98, column: 22, scope: !5273)
!5276 = !DILocalVariable(name: "n", arg: 2, scope: !5273, file: !5211, line: 98, type: !489)
!5277 = !DILocation(line: 98, column: 31, scope: !5273)
!5278 = !DILocalVariable(name: "s", arg: 3, scope: !5273, file: !5211, line: 98, type: !489)
!5279 = !DILocation(line: 98, column: 40, scope: !5273)
!5280 = !DILocation(line: 100, column: 11, scope: !5273)
!5281 = !DILocation(line: 100, column: 13, scope: !5273)
!5282 = !DILocation(line: 100, column: 25, scope: !5273)
!5283 = !DILocation(line: 100, column: 28, scope: !5273)
!5284 = !DILocation(line: 100, column: 30, scope: !5273)
!5285 = !DILocation(line: 101, column: 27, scope: !5273)
!5286 = !DILocation(line: 101, column: 30, scope: !5273)
!5287 = !DILocation(line: 101, column: 33, scope: !5273)
!5288 = !DILocation(line: 101, column: 13, scope: !5273)
!5289 = !DILocation(line: 102, column: 13, scope: !5273)
!5290 = !DILocation(line: 100, column: 3, scope: !5273)
!5291 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !220, file: !220, line: 100, type: !5292, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !219, retainedNodes: !49)
!5292 = !DISubroutineType(types: !5293)
!5293 = !{!151, !5294, !47, !151, !5295}
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!5296 = !DILocalVariable(name: "pwc", arg: 1, scope: !5291, file: !220, line: 100, type: !5294)
!5297 = !DILocation(line: 100, column: 21, scope: !5291)
!5298 = !DILocalVariable(name: "s", arg: 2, scope: !5291, file: !220, line: 100, type: !47)
!5299 = !DILocation(line: 100, column: 38, scope: !5291)
!5300 = !DILocalVariable(name: "n", arg: 3, scope: !5291, file: !220, line: 100, type: !151)
!5301 = !DILocation(line: 100, column: 48, scope: !5291)
!5302 = !DILocalVariable(name: "ps", arg: 4, scope: !5291, file: !220, line: 100, type: !5295)
!5303 = !DILocation(line: 100, column: 62, scope: !5291)
!5304 = !DILocation(line: 105, column: 7, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5291, file: !220, line: 105, column: 7)
!5306 = !DILocation(line: 105, column: 9, scope: !5305)
!5307 = !DILocation(line: 105, column: 7, scope: !5291)
!5308 = !DILocation(line: 107, column: 11, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5305, file: !220, line: 106, column: 5)
!5310 = !DILocation(line: 108, column: 9, scope: !5309)
!5311 = !DILocation(line: 109, column: 9, scope: !5309)
!5312 = !DILocation(line: 110, column: 5, scope: !5309)
!5313 = !DILocation(line: 117, column: 7, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5291, file: !220, line: 117, column: 7)
!5315 = !DILocation(line: 117, column: 10, scope: !5314)
!5316 = !DILocation(line: 117, column: 7, scope: !5291)
!5317 = !DILocation(line: 118, column: 8, scope: !5314)
!5318 = !DILocation(line: 118, column: 5, scope: !5314)
!5319 = !DILocalVariable(name: "ret", scope: !5291, file: !220, line: 130, type: !151)
!5320 = !DILocation(line: 130, column: 10, scope: !5291)
!5321 = !DILocation(line: 130, column: 26, scope: !5291)
!5322 = !DILocation(line: 130, column: 31, scope: !5291)
!5323 = !DILocation(line: 130, column: 34, scope: !5291)
!5324 = !DILocation(line: 130, column: 37, scope: !5291)
!5325 = !DILocation(line: 130, column: 16, scope: !5291)
!5326 = !DILocation(line: 135, column: 7, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5291, file: !220, line: 135, column: 7)
!5328 = !DILocation(line: 135, column: 11, scope: !5327)
!5329 = !DILocation(line: 135, column: 25, scope: !5327)
!5330 = !DILocation(line: 135, column: 39, scope: !5327)
!5331 = !DILocation(line: 135, column: 30, scope: !5327)
!5332 = !DILocation(line: 135, column: 7, scope: !5291)
!5333 = !DILocation(line: 137, column: 14, scope: !5327)
!5334 = !DILocation(line: 137, column: 5, scope: !5327)
!5335 = !DILocation(line: 138, column: 7, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5291, file: !220, line: 138, column: 7)
!5337 = !DILocation(line: 138, column: 11, scope: !5336)
!5338 = !DILocation(line: 138, column: 7, scope: !5291)
!5339 = !DILocation(line: 139, column: 5, scope: !5336)
!5340 = !DILocation(line: 143, column: 22, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5291, file: !220, line: 143, column: 7)
!5342 = !DILocation(line: 143, column: 19, scope: !5341)
!5343 = !DILocation(line: 143, column: 26, scope: !5341)
!5344 = !DILocation(line: 143, column: 29, scope: !5341)
!5345 = !DILocation(line: 143, column: 31, scope: !5341)
!5346 = !DILocation(line: 143, column: 36, scope: !5341)
!5347 = !DILocation(line: 143, column: 41, scope: !5341)
!5348 = !DILocation(line: 143, column: 7, scope: !5291)
!5349 = !DILocation(line: 145, column: 11, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5351, file: !220, line: 145, column: 11)
!5351 = distinct !DILexicalBlock(scope: !5341, file: !220, line: 144, column: 5)
!5352 = !DILocation(line: 145, column: 15, scope: !5350)
!5353 = !DILocation(line: 145, column: 11, scope: !5351)
!5354 = !DILocation(line: 146, column: 33, scope: !5350)
!5355 = !DILocation(line: 146, column: 32, scope: !5350)
!5356 = !DILocation(line: 146, column: 16, scope: !5350)
!5357 = !DILocation(line: 146, column: 10, scope: !5350)
!5358 = !DILocation(line: 146, column: 14, scope: !5350)
!5359 = !DILocation(line: 146, column: 9, scope: !5350)
!5360 = !DILocation(line: 147, column: 7, scope: !5351)
!5361 = !DILocation(line: 151, column: 10, scope: !5291)
!5362 = !DILocation(line: 151, column: 3, scope: !5291)
!5363 = !DILocation(line: 286, column: 1, scope: !5291)
!5364 = distinct !DISubprogram(name: "mbszero", scope: !5365, file: !5365, line: 1135, type: !5366, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !530, retainedNodes: !49)
!5365 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!5366 = !DISubroutineType(types: !5367)
!5367 = !{null, !5368}
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !225, line: 6, baseType: !5370)
!5370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !227, line: 21, baseType: !5371)
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 13, size: 64, elements: !5372)
!5372 = !{!5373, !5374}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5371, file: !227, line: 15, baseType: !38, size: 32)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5371, file: !227, line: 20, baseType: !5375, size: 32, offset: 32)
!5375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5371, file: !227, line: 16, size: 32, elements: !5376)
!5376 = !{!5377, !5378}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5375, file: !227, line: 18, baseType: !7, size: 32)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5375, file: !227, line: 19, baseType: !236, size: 32)
!5379 = !DILocalVariable(name: "ps", arg: 1, scope: !5364, file: !5365, line: 1135, type: !5368)
!5380 = !DILocation(line: 1135, column: 21, scope: !5364)
!5381 = !DILocation(line: 1137, column: 11, scope: !5364)
!5382 = !DILocation(line: 1137, column: 3, scope: !5364)
!5383 = !DILocation(line: 1138, column: 1, scope: !5364)
!5384 = distinct !DISubprogram(name: "memeq", scope: !3448, file: !3448, line: 974, type: !5385, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !532, retainedNodes: !49)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{!74, !4048, !4048, !151}
!5387 = !DILocalVariable(name: "__s1", arg: 1, scope: !5384, file: !3448, line: 974, type: !4048)
!5388 = !DILocation(line: 974, column: 20, scope: !5384)
!5389 = !DILocalVariable(name: "__s2", arg: 2, scope: !5384, file: !3448, line: 974, type: !4048)
!5390 = !DILocation(line: 974, column: 38, scope: !5384)
!5391 = !DILocalVariable(name: "__n", arg: 3, scope: !5384, file: !3448, line: 974, type: !151)
!5392 = !DILocation(line: 974, column: 51, scope: !5384)
!5393 = !DILocation(line: 976, column: 19, scope: !5384)
!5394 = !DILocation(line: 976, column: 25, scope: !5384)
!5395 = !DILocation(line: 976, column: 31, scope: !5384)
!5396 = !DILocation(line: 976, column: 11, scope: !5384)
!5397 = !DILocation(line: 976, column: 10, scope: !5384)
!5398 = !DILocation(line: 976, column: 3, scope: !5384)
!5399 = distinct !DISubprogram(name: "rpl_realloc", scope: !5400, file: !5400, line: 2057, type: !3813, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !534, retainedNodes: !49)
!5400 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!5401 = !DILocalVariable(name: "ptr", arg: 1, scope: !5399, file: !5400, line: 2057, type: !37)
!5402 = !DILocation(line: 2057, column: 20, scope: !5399)
!5403 = !DILocalVariable(name: "size", arg: 2, scope: !5399, file: !5400, line: 2057, type: !151)
!5404 = !DILocation(line: 2057, column: 32, scope: !5399)
!5405 = !DILocation(line: 2059, column: 19, scope: !5399)
!5406 = !DILocation(line: 2059, column: 24, scope: !5399)
!5407 = !DILocation(line: 2059, column: 31, scope: !5399)
!5408 = !DILocation(line: 2059, column: 10, scope: !5399)
!5409 = !DILocation(line: 2059, column: 3, scope: !5399)
!5410 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !537, file: !537, line: 27, type: !3750, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !536, retainedNodes: !49)
!5411 = !DILocalVariable(name: "ptr", arg: 1, scope: !5410, file: !537, line: 27, type: !37)
!5412 = !DILocation(line: 27, column: 21, scope: !5410)
!5413 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5410, file: !537, line: 27, type: !151)
!5414 = !DILocation(line: 27, column: 33, scope: !5410)
!5415 = !DILocalVariable(name: "size", arg: 3, scope: !5410, file: !537, line: 27, type: !151)
!5416 = !DILocation(line: 27, column: 47, scope: !5410)
!5417 = !DILocalVariable(name: "nbytes", scope: !5410, file: !537, line: 29, type: !151)
!5418 = !DILocation(line: 29, column: 10, scope: !5410)
!5419 = !DILocation(line: 30, column: 7, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5410, file: !537, line: 30, column: 7)
!5421 = !DILocation(line: 30, column: 7, scope: !5410)
!5422 = !DILocation(line: 32, column: 7, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5420, file: !537, line: 31, column: 5)
!5424 = !DILocation(line: 32, column: 13, scope: !5423)
!5425 = !DILocation(line: 33, column: 7, scope: !5423)
!5426 = !DILocation(line: 37, column: 19, scope: !5410)
!5427 = !DILocation(line: 37, column: 24, scope: !5410)
!5428 = !DILocation(line: 37, column: 10, scope: !5410)
!5429 = !DILocation(line: 37, column: 3, scope: !5410)
!5430 = !DILocation(line: 38, column: 1, scope: !5410)
!5431 = distinct !DISubprogram(name: "hard_locale", scope: !540, file: !540, line: 28, type: !4742, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !539, retainedNodes: !49)
!5432 = !DILocalVariable(name: "category", arg: 1, scope: !5431, file: !540, line: 28, type: !38)
!5433 = !DILocation(line: 28, column: 18, scope: !5431)
!5434 = !DILocalVariable(name: "locale", scope: !5431, file: !540, line: 30, type: !5435)
!5435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2056, elements: !5436)
!5436 = !{!5437}
!5437 = !DISubrange(count: 257)
!5438 = !DILocation(line: 30, column: 8, scope: !5431)
!5439 = !DILocation(line: 32, column: 25, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5431, file: !540, line: 32, column: 7)
!5441 = !DILocation(line: 32, column: 35, scope: !5440)
!5442 = !DILocation(line: 32, column: 7, scope: !5440)
!5443 = !DILocation(line: 32, column: 7, scope: !5431)
!5444 = !DILocation(line: 33, column: 5, scope: !5440)
!5445 = !DILocation(line: 35, column: 16, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5431, file: !540, line: 35, column: 7)
!5447 = !DILocation(line: 35, column: 9, scope: !5446)
!5448 = !DILocation(line: 35, column: 29, scope: !5446)
!5449 = !DILocation(line: 35, column: 39, scope: !5446)
!5450 = !DILocation(line: 35, column: 32, scope: !5446)
!5451 = !DILocation(line: 35, column: 7, scope: !5431)
!5452 = !DILocation(line: 36, column: 5, scope: !5446)
!5453 = !DILocation(line: 46, column: 3, scope: !5431)
!5454 = !DILocation(line: 47, column: 1, scope: !5431)
!5455 = distinct !DISubprogram(name: "setlocale_null_r", scope: !542, file: !542, line: 154, type: !5456, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !49)
!5456 = !DISubroutineType(types: !5457)
!5457 = !{!38, !38, !35, !151}
!5458 = !DILocalVariable(name: "category", arg: 1, scope: !5455, file: !542, line: 154, type: !38)
!5459 = !DILocation(line: 154, column: 23, scope: !5455)
!5460 = !DILocalVariable(name: "buf", arg: 2, scope: !5455, file: !542, line: 154, type: !35)
!5461 = !DILocation(line: 154, column: 39, scope: !5455)
!5462 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5455, file: !542, line: 154, type: !151)
!5463 = !DILocation(line: 154, column: 51, scope: !5455)
!5464 = !DILocation(line: 159, column: 37, scope: !5455)
!5465 = !DILocation(line: 159, column: 47, scope: !5455)
!5466 = !DILocation(line: 159, column: 52, scope: !5455)
!5467 = !DILocation(line: 159, column: 10, scope: !5455)
!5468 = !DILocation(line: 159, column: 3, scope: !5455)
!5469 = distinct !DISubprogram(name: "setlocale_null", scope: !542, file: !542, line: 186, type: !5470, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !541, retainedNodes: !49)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!47, !38}
!5472 = !DILocalVariable(name: "category", arg: 1, scope: !5469, file: !542, line: 186, type: !38)
!5473 = !DILocation(line: 186, column: 21, scope: !5469)
!5474 = !DILocation(line: 189, column: 35, scope: !5469)
!5475 = !DILocation(line: 189, column: 10, scope: !5469)
!5476 = !DILocation(line: 189, column: 3, scope: !5469)
!5477 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !544, file: !544, line: 35, type: !5470, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !543, retainedNodes: !49)
!5478 = !DILocalVariable(name: "category", arg: 1, scope: !5477, file: !544, line: 35, type: !38)
!5479 = !DILocation(line: 35, column: 30, scope: !5477)
!5480 = !DILocalVariable(name: "result", scope: !5477, file: !544, line: 37, type: !47)
!5481 = !DILocation(line: 37, column: 15, scope: !5477)
!5482 = !DILocation(line: 37, column: 35, scope: !5477)
!5483 = !DILocation(line: 37, column: 24, scope: !5477)
!5484 = !DILocation(line: 62, column: 10, scope: !5477)
!5485 = !DILocation(line: 62, column: 3, scope: !5477)
!5486 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !544, file: !544, line: 66, type: !5456, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !543, retainedNodes: !49)
!5487 = !DILocalVariable(name: "category", arg: 1, scope: !5486, file: !544, line: 66, type: !38)
!5488 = !DILocation(line: 66, column: 32, scope: !5486)
!5489 = !DILocalVariable(name: "buf", arg: 2, scope: !5486, file: !544, line: 66, type: !35)
!5490 = !DILocation(line: 66, column: 48, scope: !5486)
!5491 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5486, file: !544, line: 66, type: !151)
!5492 = !DILocation(line: 66, column: 60, scope: !5486)
!5493 = !DILocalVariable(name: "result", scope: !5486, file: !544, line: 111, type: !47)
!5494 = !DILocation(line: 111, column: 15, scope: !5486)
!5495 = !DILocation(line: 111, column: 49, scope: !5486)
!5496 = !DILocation(line: 111, column: 24, scope: !5486)
!5497 = !DILocation(line: 113, column: 7, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5486, file: !544, line: 113, column: 7)
!5499 = !DILocation(line: 113, column: 14, scope: !5498)
!5500 = !DILocation(line: 113, column: 7, scope: !5486)
!5501 = !DILocation(line: 116, column: 11, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5503, file: !544, line: 116, column: 11)
!5503 = distinct !DILexicalBlock(scope: !5498, file: !544, line: 114, column: 5)
!5504 = !DILocation(line: 116, column: 19, scope: !5502)
!5505 = !DILocation(line: 116, column: 11, scope: !5503)
!5506 = !DILocation(line: 120, column: 9, scope: !5502)
!5507 = !DILocation(line: 120, column: 16, scope: !5502)
!5508 = !DILocation(line: 121, column: 7, scope: !5503)
!5509 = !DILocalVariable(name: "length", scope: !5510, file: !544, line: 125, type: !151)
!5510 = distinct !DILexicalBlock(scope: !5498, file: !544, line: 124, column: 5)
!5511 = !DILocation(line: 125, column: 14, scope: !5510)
!5512 = !DILocation(line: 125, column: 31, scope: !5510)
!5513 = !DILocation(line: 125, column: 23, scope: !5510)
!5514 = !DILocation(line: 126, column: 11, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5510, file: !544, line: 126, column: 11)
!5516 = !DILocation(line: 126, column: 20, scope: !5515)
!5517 = !DILocation(line: 126, column: 18, scope: !5515)
!5518 = !DILocation(line: 126, column: 11, scope: !5510)
!5519 = !DILocation(line: 128, column: 19, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5515, file: !544, line: 127, column: 9)
!5521 = !DILocation(line: 128, column: 24, scope: !5520)
!5522 = !DILocation(line: 128, column: 32, scope: !5520)
!5523 = !DILocation(line: 128, column: 39, scope: !5520)
!5524 = !DILocation(line: 128, column: 11, scope: !5520)
!5525 = !DILocation(line: 129, column: 11, scope: !5520)
!5526 = !DILocation(line: 133, column: 15, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5528, file: !544, line: 133, column: 15)
!5528 = distinct !DILexicalBlock(scope: !5515, file: !544, line: 132, column: 9)
!5529 = !DILocation(line: 133, column: 23, scope: !5527)
!5530 = !DILocation(line: 133, column: 15, scope: !5528)
!5531 = !DILocation(line: 138, column: 23, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5527, file: !544, line: 134, column: 13)
!5533 = !DILocation(line: 138, column: 28, scope: !5532)
!5534 = !DILocation(line: 138, column: 36, scope: !5532)
!5535 = !DILocation(line: 138, column: 44, scope: !5532)
!5536 = !DILocation(line: 138, column: 15, scope: !5532)
!5537 = !DILocation(line: 139, column: 15, scope: !5532)
!5538 = !DILocation(line: 139, column: 19, scope: !5532)
!5539 = !DILocation(line: 139, column: 27, scope: !5532)
!5540 = !DILocation(line: 139, column: 32, scope: !5532)
!5541 = !DILocation(line: 140, column: 13, scope: !5532)
!5542 = !DILocation(line: 141, column: 11, scope: !5528)
!5543 = !DILocation(line: 145, column: 1, scope: !5486)
