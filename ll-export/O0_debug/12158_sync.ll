; ModuleID = 'src/sync.bc'
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

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION] [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [137 x i8] c"Synchronize cached writes to persistent storage\0A\0AIf one or more files are specified, sync only them,\0Aor their containing file systems.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"  -d, --data             sync only file data, no unneeded metadata\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"  -f, --file-system      sync the file systems that contain the files\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@long_options = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1
@optind = external global i32, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"cannot specify both --data and --file-system\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"--data needs at least one argument\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !48
@.str.17 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.48 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"couldn't reset non-blocking mode %s\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"error syncing %s\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0), align 8, !dbg !69
@file_name = internal global i8* null, align 8, !dbg !74
@ignore_EPIPE = internal global i8 0, align 1, !dbg !79
@.str.63 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.64 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.65 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.66 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !82
@stderr = external global %struct._IO_FILE*, align 8
@.str.67 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !111
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !88
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !107
@.str.1.73 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.74 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.75 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !109
@.str.4.68 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.69 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.70 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal global i32 0, align 4, !dbg !116
@program_name = dso_local global i8* null, align 8, !dbg !124
@.str.86 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.87 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !130
@.str.90 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.91 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.92 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.93 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.94 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.95 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.96 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.97 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.98 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.99 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.93, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.94, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.95, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.98, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.99, i32 0, i32 0), i8* null], align 8, !dbg !141
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !156
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !174
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !189
@nslots = internal global i32 1, align 4, !dbg !196
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !176
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !198
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !162
@.str.10.100 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.101 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.102 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.103 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !181
@.str.110 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.111 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.112 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.113 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.114 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.115 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.116 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.117 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.118 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.119 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.120 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.121 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.122 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.123 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.124 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.125 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.126 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.131 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.132 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.133 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.134 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.135 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.136 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.137 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !204
@exit_failure = dso_local global i32 1, align 4, !dbg !212
@.str.150 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.148 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.149 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.171 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !218
@.str.182 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.183 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !310 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !313, metadata !DIExpression()), !dbg !314
  %3 = load i32, i32* %2, align 4, !dbg !315
  %4 = icmp ne i32 %3, 0, !dbg !317
  br i1 %4, label %5, label %12, !dbg !318

5:                                                ; preds = %1
  br label %6, !dbg !319

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !320
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !320
  %9 = load i8*, i8** @program_name, align 8, !dbg !320
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !320
  br label %11, !dbg !320

11:                                               ; preds = %6
  br label %23, !dbg !320

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !322
  %14 = load i8*, i8** @program_name, align 8, !dbg !324
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !325
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !326
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !326
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !326
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !327
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !327
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !328
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !328
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !329
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !329
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !330
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !330
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !331
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32, i32* %2, align 4, !dbg !332
  call void @exit(i32 noundef %24) #19, !dbg !333
  unreachable, !dbg !333
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !50 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !334, metadata !DIExpression()), !dbg !335
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !336, metadata !DIExpression()), !dbg !337
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !338
  %15 = icmp eq i32 %14, -1, !dbg !340
  br i1 %15, label %16, label %30, !dbg !341

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !342, metadata !DIExpression()), !dbg !344
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #18, !dbg !345
  store i8* %17, i8** %5, align 8, !dbg !344
  %18 = load i8*, i8** %5, align 8, !dbg !346
  %19 = icmp ne i8* %18, null, !dbg !346
  br i1 %19, label %20, label %27, !dbg !347

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !348
  %22 = load i8, i8* %21, align 1, !dbg !349
  %23 = icmp ne i8 %22, 0, !dbg !349
  br i1 %23, label %24, label %27, !dbg !350

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !351
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)), !dbg !352
  br label %27, !dbg !350

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !350
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !353
  br label %30, !dbg !354

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !355
  %32 = icmp ne i32 %31, 0, !dbg !355
  br i1 %32, label %33, label %37, !dbg !357

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !358
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !358
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !358
  br label %274, !dbg !360

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !361, metadata !DIExpression()), !dbg !362
  store i8 1, i8* %6, align 1, !dbg !362
  call void @llvm.dbg.declare(metadata i8** %7, metadata !363, metadata !DIExpression()), !dbg !364
  %38 = load i8*, i8** %4, align 8, !dbg !365
  %39 = load i8*, i8** %4, align 8, !dbg !366
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #20, !dbg !367
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !368
  store i8* %41, i8** %7, align 8, !dbg !364
  call void @llvm.dbg.declare(metadata i8** %8, metadata !369, metadata !DIExpression()), !dbg !370
  %42 = load i8*, i8** %4, align 8, !dbg !371
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !372
  store i8* %43, i8** %8, align 8, !dbg !370
  %44 = load i8*, i8** %8, align 8, !dbg !373
  %45 = icmp ne i8* %44, null, !dbg !373
  br i1 %45, label %48, label %46, !dbg !375

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !376
  store i8* %47, i8** %8, align 8, !dbg !378
  store i8 0, i8* %6, align 1, !dbg !379
  br label %89, !dbg !380

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !381
  %50 = load i8*, i8** %7, align 8, !dbg !383
  %51 = icmp ne i8* %49, %50, !dbg !384
  br i1 %51, label %52, label %88, !dbg !385

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !386, metadata !DIExpression()), !dbg !388
  %53 = load i8*, i8** %7, align 8, !dbg !389
  store i8* %53, i8** %9, align 8, !dbg !388
  call void @llvm.dbg.declare(metadata i64* %10, metadata !390, metadata !DIExpression()), !dbg !391
  store i64 0, i64* %10, align 8, !dbg !391
  br label %54, !dbg !392

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !393
  %56 = load i8*, i8** %8, align 8, !dbg !394
  %57 = icmp ult i8* %55, %56, !dbg !395
  br i1 %57, label %58, label %61, !dbg !396

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !397
  %60 = icmp ult i64 %59, 2, !dbg !398
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !399
  br i1 %62, label %63, label %82, !dbg !392

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !400
  %65 = load i16*, i16** %64, align 8, !dbg !400
  %66 = load i8*, i8** %9, align 8, !dbg !400
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !400
  store i8* %67, i8** %9, align 8, !dbg !400
  %68 = load i8, i8* %66, align 1, !dbg !400
  %69 = zext i8 %68 to i32, !dbg !400
  %70 = sext i32 %69 to i64, !dbg !400
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !400
  %72 = load i16, i16* %71, align 2, !dbg !400
  %73 = zext i16 %72 to i32, !dbg !400
  %74 = and i32 %73, 8192, !dbg !400
  %75 = icmp ne i32 %74, 0, !dbg !401
  %76 = xor i1 %75, true, !dbg !401
  %77 = xor i1 %76, true, !dbg !402
  %78 = zext i1 %77 to i32, !dbg !402
  %79 = sext i32 %78 to i64, !dbg !402
  %80 = load i64, i64* %10, align 8, !dbg !403
  %81 = add i64 %80, %79, !dbg !403
  store i64 %81, i64* %10, align 8, !dbg !403
  br label %54, !dbg !392, !llvm.loop !404

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !406
  %84 = icmp eq i64 %83, 2, !dbg !408
  br i1 %84, label %85, label %87, !dbg !409

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !410
  store i8* %86, i8** %8, align 8, !dbg !412
  store i8 0, i8* %6, align 1, !dbg !413
  br label %87, !dbg !414

87:                                               ; preds = %85, %82
  br label %88, !dbg !415

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !416, metadata !DIExpression()), !dbg !417
  %90 = load i8*, i8** %8, align 8, !dbg !418
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #20, !dbg !419
  store i64 %91, i64* %11, align 8, !dbg !417
  call void @llvm.dbg.declare(metadata i8** %12, metadata !420, metadata !DIExpression()), !dbg !421
  %92 = load i8*, i8** %8, align 8, !dbg !422
  %93 = load i64, i64* %11, align 8, !dbg !423
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !424
  store i8* %94, i8** %12, align 8, !dbg !421
  br label %95, !dbg !425

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !426
  %97 = load i8, i8* %96, align 1, !dbg !427
  %98 = zext i8 %97 to i32, !dbg !427
  %99 = icmp ne i32 %98, 0, !dbg !427
  br i1 %99, label %100, label %105, !dbg !428

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !429
  %102 = load i8, i8* %101, align 1, !dbg !430
  %103 = zext i8 %102 to i32, !dbg !430
  %104 = icmp ne i32 %103, 10, !dbg !431
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !432
  br i1 %106, label %107, label %164, !dbg !425

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !433
  %109 = load i8, i8* %108, align 1, !dbg !436
  %110 = zext i8 %109 to i32, !dbg !436
  %111 = icmp eq i32 %110, 45, !dbg !437
  br i1 %111, label %112, label %119, !dbg !438

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !439
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !440
  %115 = load i8, i8* %114, align 1, !dbg !441
  %116 = zext i8 %115 to i32, !dbg !441
  %117 = icmp eq i32 %116, 45, !dbg !442
  br i1 %117, label %118, label %119, !dbg !443

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !444
  br label %119, !dbg !445

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !446
  %121 = load i16*, i16** %120, align 8, !dbg !446
  %122 = load i8*, i8** %12, align 8, !dbg !446
  %123 = load i8, i8* %122, align 1, !dbg !446
  %124 = zext i8 %123 to i32, !dbg !446
  %125 = sext i32 %124 to i64, !dbg !446
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !446
  %127 = load i16, i16* %126, align 2, !dbg !446
  %128 = zext i16 %127 to i32, !dbg !446
  %129 = and i32 %128, 8192, !dbg !446
  %130 = icmp ne i32 %129, 0, !dbg !446
  br i1 %130, label %131, label %161, !dbg !448

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !449
  %133 = load i8, i8* %132, align 1, !dbg !452
  %134 = zext i8 %133 to i32, !dbg !452
  %135 = icmp eq i32 %134, 9, !dbg !453
  br i1 %135, label %149, label %136, !dbg !454

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !455
  %138 = load i16*, i16** %137, align 8, !dbg !455
  %139 = load i8*, i8** %12, align 8, !dbg !455
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !455
  %141 = load i8, i8* %140, align 1, !dbg !455
  %142 = zext i8 %141 to i32, !dbg !455
  %143 = sext i32 %142 to i64, !dbg !455
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !455
  %145 = load i16, i16* %144, align 2, !dbg !455
  %146 = zext i16 %145 to i32, !dbg !455
  %147 = and i32 %146, 8192, !dbg !455
  %148 = icmp ne i32 %147, 0, !dbg !455
  br i1 %148, label %149, label %150, !dbg !456

149:                                              ; preds = %136, %131
  br label %164, !dbg !457

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !458
  %152 = trunc i8 %151 to i1, !dbg !458
  br i1 %152, label %160, label %153, !dbg !460

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !461
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !462
  %156 = load i8, i8* %155, align 1, !dbg !463
  %157 = zext i8 %156 to i32, !dbg !463
  %158 = icmp ne i32 %157, 45, !dbg !464
  br i1 %158, label %159, label %160, !dbg !465

159:                                              ; preds = %153
  br label %164, !dbg !466

160:                                              ; preds = %153, %150
  br label %161, !dbg !467

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !468
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !468
  store i8* %163, i8** %12, align 8, !dbg !468
  br label %95, !dbg !425, !llvm.loop !469

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !471
  %166 = load i8*, i8** %7, align 8, !dbg !471
  %167 = load i8*, i8** %4, align 8, !dbg !471
  %168 = ptrtoint i8* %166 to i64, !dbg !471
  %169 = ptrtoint i8* %167 to i64, !dbg !471
  %170 = sub i64 %168, %169, !dbg !471
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !471
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !471
  call void @llvm.dbg.declare(metadata i8** %13, metadata !472, metadata !DIExpression()), !dbg !473
  %173 = load i8*, i8** %3, align 8, !dbg !474
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)), !dbg !475
  br i1 %174, label %175, label %176, !dbg !475

175:                                              ; preds = %164
  br label %232, !dbg !475

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !476
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)), !dbg !477
  br i1 %178, label %179, label %180, !dbg !477

179:                                              ; preds = %176
  br label %230, !dbg !477

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !478
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)), !dbg !479
  br i1 %182, label %183, label %184, !dbg !479

183:                                              ; preds = %180
  br label %228, !dbg !479

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !480
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)), !dbg !481
  br i1 %186, label %187, label %188, !dbg !481

187:                                              ; preds = %184
  br label %226, !dbg !481

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !482
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0)), !dbg !483
  br i1 %190, label %191, label %192, !dbg !483

191:                                              ; preds = %188
  br label %224, !dbg !483

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !484
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)), !dbg !485
  br i1 %194, label %195, label %196, !dbg !485

195:                                              ; preds = %192
  br label %222, !dbg !485

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !486
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !487
  br i1 %198, label %199, label %200, !dbg !487

199:                                              ; preds = %196
  br label %220, !dbg !487

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !488
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !489
  br i1 %202, label %203, label %204, !dbg !489

203:                                              ; preds = %200
  br label %218, !dbg !489

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !490
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)), !dbg !491
  br i1 %206, label %207, label %208, !dbg !491

207:                                              ; preds = %204
  br label %216, !dbg !491

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !492
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)), !dbg !493
  br i1 %210, label %211, label %212, !dbg !493

211:                                              ; preds = %208
  br label %214, !dbg !493

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !494
  br label %214, !dbg !493

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !493
  br label %216, !dbg !491

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !491
  br label %218, !dbg !489

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !489
  br label %220, !dbg !487

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !487
  br label %222, !dbg !485

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !485
  br label %224, !dbg !483

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !483
  br label %226, !dbg !481

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !481
  br label %228, !dbg !479

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !479
  br label %230, !dbg !477

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !477
  br label %232, !dbg !475

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !475
  store i8* %233, i8** %13, align 8, !dbg !473
  %234 = load i8*, i8** %8, align 8, !dbg !495
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i64 noundef 6) #20, !dbg !495
  %236 = icmp eq i32 %235, 0, !dbg !495
  br i1 %236, label %241, label %237, !dbg !497

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !498
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 noundef 9) #20, !dbg !498
  %240 = icmp eq i32 %239, 0, !dbg !498
  br i1 %240, label %241, label %248, !dbg !499

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !500
  %243 = load i8*, i8** %13, align 8, !dbg !502
  %244 = load i64, i64* %11, align 8, !dbg !503
  %245 = trunc i64 %244 to i32, !dbg !504
  %246 = load i8*, i8** %8, align 8, !dbg !505
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !506
  br label %254, !dbg !507

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !508
  %250 = load i64, i64* %11, align 8, !dbg !510
  %251 = trunc i64 %250 to i32, !dbg !511
  %252 = load i8*, i8** %8, align 8, !dbg !512
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !513
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !514
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !514
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !515
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !515
  %259 = load i8*, i8** %7, align 8, !dbg !516
  %260 = load i8*, i8** %12, align 8, !dbg !516
  %261 = load i8*, i8** %7, align 8, !dbg !516
  %262 = ptrtoint i8* %260 to i64, !dbg !516
  %263 = ptrtoint i8* %261 to i64, !dbg !516
  %264 = sub i64 %262, %263, !dbg !516
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !516
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !516
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !517
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !517
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !518
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !518
  %271 = load i8*, i8** %12, align 8, !dbg !519
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !519
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !519
  br label %274, !dbg !520

274:                                              ; preds = %254, %33
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !521 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !526, metadata !DIExpression()), !dbg !535
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !535
  call void @llvm.dbg.declare(metadata i8** %4, metadata !536, metadata !DIExpression()), !dbg !537
  %9 = load i8*, i8** %2, align 8, !dbg !538
  store i8* %9, i8** %4, align 8, !dbg !537
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !539, metadata !DIExpression()), !dbg !541
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !542
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !541
  br label %11, !dbg !543

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !544
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !545
  %14 = load i8*, i8** %13, align 8, !dbg !545
  %15 = icmp ne i8* %14, null, !dbg !544
  br i1 %15, label %16, label %23, !dbg !546

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !547
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !548
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !549
  %20 = load i8*, i8** %19, align 8, !dbg !549
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !550
  %22 = xor i1 %21, true, !dbg !551
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !552
  br i1 %24, label %25, label %28, !dbg !543

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !553
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !553
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !553
  br label %11, !dbg !543, !llvm.loop !554

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !555
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !557
  %31 = load i8*, i8** %30, align 8, !dbg !557
  %32 = icmp ne i8* %31, null, !dbg !555
  br i1 %32, label %33, label %37, !dbg !558

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !559
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !560
  %36 = load i8*, i8** %35, align 8, !dbg !560
  store i8* %36, i8** %4, align 8, !dbg !561
  br label %37, !dbg !562

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !563
  call void @llvm.dbg.declare(metadata i8** %6, metadata !564, metadata !DIExpression()), !dbg !565
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !566
  store i8* %38, i8** %6, align 8, !dbg !565
  %39 = load i8*, i8** %6, align 8, !dbg !567
  %40 = icmp ne i8* %39, null, !dbg !567
  br i1 %40, label %41, label %49, !dbg !569

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !570
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 noundef 3) #20, !dbg !570
  %44 = icmp ne i32 %43, 0, !dbg !570
  br i1 %44, label %45, label %49, !dbg !571

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i64 0, i64 0)) #18, !dbg !572
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !572
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !572
  br label %49, !dbg !574

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !575, metadata !DIExpression()), !dbg !576
  %50 = load i8*, i8** %2, align 8, !dbg !577
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)), !dbg !578
  br i1 %51, label %52, label %53, !dbg !578

52:                                               ; preds = %49
  br label %55, !dbg !578

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !579
  br label %55, !dbg !578

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !578
  store i8* %56, i8** %7, align 8, !dbg !576
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0)) #18, !dbg !580
  %58 = load i8*, i8** %7, align 8, !dbg !581
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef %58), !dbg !582
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0)) #18, !dbg !583
  %61 = load i8*, i8** %4, align 8, !dbg !584
  %62 = load i8*, i8** %4, align 8, !dbg !585
  %63 = load i8*, i8** %2, align 8, !dbg !586
  %64 = icmp eq i8* %62, %63, !dbg !587
  %65 = zext i1 %64 to i64, !dbg !585
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !585
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !588
  ret void, !dbg !589
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !590 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !594, metadata !DIExpression()), !dbg !595
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.declare(metadata i8* %6, metadata !598, metadata !DIExpression()), !dbg !599
  store i8 0, i8* %6, align 1, !dbg !599
  call void @llvm.dbg.declare(metadata i8* %7, metadata !600, metadata !DIExpression()), !dbg !601
  store i8 0, i8* %7, align 1, !dbg !601
  call void @llvm.dbg.declare(metadata i8* %8, metadata !602, metadata !DIExpression()), !dbg !603
  store i8 1, i8* %8, align 1, !dbg !603
  %12 = load i8**, i8*** %5, align 8, !dbg !604
  %13 = getelementptr inbounds i8*, i8** %12, i64 0, !dbg !604
  %14 = load i8*, i8** %13, align 8, !dbg !604
  call void @set_program_name(i8* noundef %14), !dbg !605
  %15 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !606
  %16 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !607
  %17 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !608
  %18 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !609
  call void @llvm.dbg.declare(metadata i32* %9, metadata !610, metadata !DIExpression()), !dbg !611
  br label %19, !dbg !612

19:                                               ; preds = %35, %2
  %20 = load i32, i32* %4, align 4, !dbg !613
  %21 = load i8**, i8*** %5, align 8, !dbg !614
  %22 = call i32 @getopt_long(i32 noundef %20, i8** noundef %21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !615
  store i32 %22, i32* %9, align 4, !dbg !616
  %23 = icmp ne i32 %22, -1, !dbg !617
  br i1 %23, label %24, label %36, !dbg !612

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4, !dbg !618
  switch i32 %25, label %34 [
    i32 100, label %26
    i32 102, label %27
    i32 -2, label %28
    i32 -3, label %29
  ], !dbg !620

26:                                               ; preds = %24
  store i8 1, i8* %6, align 1, !dbg !621
  br label %35, !dbg !623

27:                                               ; preds = %24
  store i8 1, i8* %7, align 1, !dbg !624
  br label %35, !dbg !625

28:                                               ; preds = %24
  call void @usage(i32 noundef 0) #22, !dbg !626
  unreachable, !dbg !626

29:                                               ; preds = %24
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627
  %31 = load i8*, i8** @Version, align 8, !dbg !627
  %32 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)), !dbg !627
  %33 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0)), !dbg !627
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %31, i8* noundef %32, i8* noundef %33, i8* noundef null), !dbg !627
  call void @exit(i32 noundef 0) #19, !dbg !627
  unreachable, !dbg !627

34:                                               ; preds = %24
  call void @usage(i32 noundef 1) #22, !dbg !628
  unreachable, !dbg !628

35:                                               ; preds = %27, %26
  br label %19, !dbg !612, !llvm.loop !629

36:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata i8* %10, metadata !631, metadata !DIExpression()), !dbg !632
  %37 = load i32, i32* @optind, align 4, !dbg !633
  %38 = load i32, i32* %4, align 4, !dbg !634
  %39 = icmp slt i32 %37, %38, !dbg !635
  %40 = zext i1 %39 to i8, !dbg !632
  store i8 %40, i8* %10, align 1, !dbg !632
  %41 = load i8, i8* %6, align 1, !dbg !636
  %42 = trunc i8 %41 to i1, !dbg !636
  br i1 %42, label %43, label %48, !dbg !638

43:                                               ; preds = %36
  %44 = load i8, i8* %7, align 1, !dbg !639
  %45 = trunc i8 %44 to i1, !dbg !639
  br i1 %45, label %46, label %48, !dbg !640

46:                                               ; preds = %43
  %47 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !641
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %47), !dbg !641
  unreachable, !dbg !641

48:                                               ; preds = %43, %36
  %49 = load i8, i8* %10, align 1, !dbg !642
  %50 = trunc i8 %49 to i1, !dbg !642
  br i1 %50, label %56, label %51, !dbg !644

51:                                               ; preds = %48
  %52 = load i8, i8* %6, align 1, !dbg !645
  %53 = trunc i8 %52 to i1, !dbg !645
  br i1 %53, label %54, label %56, !dbg !646

54:                                               ; preds = %51
  %55 = call i8* @gettext(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !647
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %55), !dbg !647
  unreachable, !dbg !647

56:                                               ; preds = %51, %48
  call void @llvm.dbg.declare(metadata i32* %11, metadata !648, metadata !DIExpression()), !dbg !649
  %57 = load i8, i8* %10, align 1, !dbg !650
  %58 = trunc i8 %57 to i1, !dbg !650
  br i1 %58, label %59, label %63, !dbg !652

59:                                               ; preds = %56
  %60 = load i8, i8* %7, align 1, !dbg !653
  %61 = trunc i8 %60 to i1, !dbg !653
  br i1 %61, label %62, label %64, !dbg !654

62:                                               ; preds = %59
  br i1 true, label %64, label %63, !dbg !655

63:                                               ; preds = %62, %56
  store i32 3, i32* %11, align 4, !dbg !656
  br label %75, !dbg !657

64:                                               ; preds = %62, %59
  %65 = load i8, i8* %7, align 1, !dbg !658
  %66 = trunc i8 %65 to i1, !dbg !658
  br i1 %66, label %67, label %68, !dbg !660

67:                                               ; preds = %64
  store i32 2, i32* %11, align 4, !dbg !661
  br label %74, !dbg !662

68:                                               ; preds = %64
  %69 = load i8, i8* %6, align 1, !dbg !663
  %70 = trunc i8 %69 to i1, !dbg !663
  br i1 %70, label %72, label %71, !dbg !665

71:                                               ; preds = %68
  store i32 0, i32* %11, align 4, !dbg !666
  br label %73, !dbg !667

72:                                               ; preds = %68
  store i32 1, i32* %11, align 4, !dbg !668
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73, %67
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i32, i32* %11, align 4, !dbg !669
  %77 = icmp eq i32 %76, 3, !dbg !671
  br i1 %77, label %78, label %79, !dbg !672

78:                                               ; preds = %75
  call void @sync() #18, !dbg !673
  br label %103, !dbg !673

79:                                               ; preds = %75
  br label %80, !dbg !674

80:                                               ; preds = %99, %79
  %81 = load i32, i32* @optind, align 4, !dbg !676
  %82 = load i32, i32* %4, align 4, !dbg !679
  %83 = icmp slt i32 %81, %82, !dbg !680
  br i1 %83, label %84, label %102, !dbg !681

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4, !dbg !682
  %86 = load i8**, i8*** %5, align 8, !dbg !683
  %87 = load i32, i32* @optind, align 4, !dbg !684
  %88 = sext i32 %87 to i64, !dbg !683
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88, !dbg !683
  %90 = load i8*, i8** %89, align 8, !dbg !683
  %91 = call i1 @sync_arg(i32 noundef %85, i8* noundef %90), !dbg !685
  %92 = zext i1 %91 to i32, !dbg !685
  %93 = load i8, i8* %8, align 1, !dbg !686
  %94 = trunc i8 %93 to i1, !dbg !686
  %95 = zext i1 %94 to i32, !dbg !686
  %96 = and i32 %95, %92, !dbg !686
  %97 = icmp ne i32 %96, 0, !dbg !686
  %98 = zext i1 %97 to i8, !dbg !686
  store i8 %98, i8* %8, align 1, !dbg !686
  br label %99, !dbg !687

99:                                               ; preds = %84
  %100 = load i32, i32* @optind, align 4, !dbg !688
  %101 = add nsw i32 %100, 1, !dbg !688
  store i32 %101, i32* @optind, align 4, !dbg !688
  br label %80, !dbg !689, !llvm.loop !690

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %102, %78
  %104 = load i8, i8* %8, align 1, !dbg !692
  %105 = trunc i8 %104 to i1, !dbg !692
  %106 = zext i1 %105 to i64, !dbg !692
  %107 = select i1 %105, i32 0, i32 1, !dbg !692
  ret i32 %107, !dbg !693
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: nounwind
declare void @sync() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @sync_arg(i32 noundef %0, i8* noundef %1) #4 !dbg !694 {
  %3 = alloca i1, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !697, metadata !DIExpression()), !dbg !698
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !699, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.declare(metadata i32* %6, metadata !701, metadata !DIExpression()), !dbg !702
  store i32 2048, i32* %6, align 4, !dbg !702
  call void @llvm.dbg.declare(metadata i32* %7, metadata !703, metadata !DIExpression()), !dbg !704
  %12 = load i8*, i8** %5, align 8, !dbg !705
  %13 = load i32, i32* %6, align 4, !dbg !706
  %14 = call i32 (i8*, i32, ...) @open(i8* noundef %12, i32 noundef %13), !dbg !707
  store i32 %14, i32* %7, align 4, !dbg !704
  %15 = load i32, i32* %7, align 4, !dbg !708
  %16 = icmp slt i32 %15, 0, !dbg !710
  br i1 %16, label %17, label %34, !dbg !711

17:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %8, metadata !712, metadata !DIExpression()), !dbg !714
  %18 = call i32* @__errno_location() #21, !dbg !715
  %19 = load i32, i32* %18, align 4, !dbg !715
  store i32 %19, i32* %8, align 4, !dbg !714
  %20 = load i32, i32* %6, align 4, !dbg !716
  %21 = icmp ne i32 %20, 2049, !dbg !718
  br i1 %21, label %22, label %25, !dbg !719

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8, !dbg !720
  %24 = call i32 (i8*, i32, ...) @open(i8* noundef %23, i32 noundef 2049), !dbg !721
  store i32 %24, i32* %7, align 4, !dbg !722
  br label %25, !dbg !723

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %7, align 4, !dbg !724
  %27 = icmp slt i32 %26, 0, !dbg !726
  br i1 %27, label %28, label %33, !dbg !727

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4, !dbg !728
  %30 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i64 0, i64 0)) #18, !dbg !728
  %31 = load i8*, i8** %5, align 8, !dbg !728
  %32 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %31), !dbg !728
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %29, i8* noundef %30, i8* noundef %32), !dbg !728
  store i1 false, i1* %3, align 1, !dbg !730
  br label %90, !dbg !730

33:                                               ; preds = %25
  br label %34, !dbg !731

34:                                               ; preds = %33, %2
  call void @llvm.dbg.declare(metadata i8* %9, metadata !732, metadata !DIExpression()), !dbg !733
  store i8 1, i8* %9, align 1, !dbg !733
  call void @llvm.dbg.declare(metadata i32* %10, metadata !734, metadata !DIExpression()), !dbg !735
  %35 = load i32, i32* %7, align 4, !dbg !736
  %36 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %35, i32 noundef 3), !dbg !737
  store i32 %36, i32* %10, align 4, !dbg !735
  %37 = load i32, i32* %10, align 4, !dbg !738
  %38 = icmp eq i32 %37, -1, !dbg !740
  br i1 %38, label %45, label %39, !dbg !741

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4, !dbg !742
  %41 = load i32, i32* %10, align 4, !dbg !743
  %42 = and i32 %41, -2049, !dbg !744
  %43 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %40, i32 noundef 4, i32 noundef %42), !dbg !745
  %44 = icmp slt i32 %43, 0, !dbg !746
  br i1 %44, label %45, label %51, !dbg !747

45:                                               ; preds = %39, %34
  %46 = call i32* @__errno_location() #21, !dbg !748
  %47 = load i32, i32* %46, align 4, !dbg !748
  %48 = call i8* @gettext(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i64 0, i64 0)) #18, !dbg !748
  %49 = load i8*, i8** %5, align 8, !dbg !748
  %50 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %49), !dbg !748
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %47, i8* noundef %48, i8* noundef %50), !dbg !748
  store i8 0, i8* %9, align 1, !dbg !750
  br label %51, !dbg !751

51:                                               ; preds = %45, %39
  %52 = load i8, i8* %9, align 1, !dbg !752
  %53 = trunc i8 %52 to i1, !dbg !752
  br i1 %53, label %54, label %77, !dbg !754

54:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata i32* %11, metadata !755, metadata !DIExpression()), !dbg !757
  store i32 -1, i32* %11, align 4, !dbg !757
  %55 = load i32, i32* %4, align 4, !dbg !758
  switch i32 %55, label %66 [
    i32 1, label %56
    i32 0, label %59
    i32 2, label %62
    i32 3, label %65
  ], !dbg !759

56:                                               ; preds = %54
  %57 = load i32, i32* %7, align 4, !dbg !760
  %58 = call i32 @fdatasync(i32 noundef %57), !dbg !762
  store i32 %58, i32* %11, align 4, !dbg !763
  br label %67, !dbg !764

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4, !dbg !765
  %61 = call i32 @fsync(i32 noundef %60), !dbg !766
  store i32 %61, i32* %11, align 4, !dbg !767
  br label %67, !dbg !768

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4, !dbg !769
  %64 = call i32 @syncfs(i32 noundef %63) #18, !dbg !770
  store i32 %64, i32* %11, align 4, !dbg !771
  br label %67, !dbg !772

65:                                               ; preds = %54
  br label %66, !dbg !773

66:                                               ; preds = %54, %65
  unreachable, !dbg !774

67:                                               ; preds = %62, %59, %56
  %68 = load i32, i32* %11, align 4, !dbg !775
  %69 = icmp slt i32 %68, 0, !dbg !777
  br i1 %69, label %70, label %76, !dbg !778

70:                                               ; preds = %67
  %71 = call i32* @__errno_location() #21, !dbg !779
  %72 = load i32, i32* %71, align 4, !dbg !779
  %73 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0)) #18, !dbg !779
  %74 = load i8*, i8** %5, align 8, !dbg !779
  %75 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %74), !dbg !779
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %72, i8* noundef %73, i8* noundef %75), !dbg !779
  store i8 0, i8* %9, align 1, !dbg !781
  br label %76, !dbg !782

76:                                               ; preds = %70, %67
  br label %77, !dbg !783

77:                                               ; preds = %76, %51
  %78 = load i32, i32* %7, align 4, !dbg !784
  %79 = call i32 @close(i32 noundef %78), !dbg !786
  %80 = icmp slt i32 %79, 0, !dbg !787
  br i1 %80, label %81, label %87, !dbg !788

81:                                               ; preds = %77
  %82 = call i32* @__errno_location() #21, !dbg !789
  %83 = load i32, i32* %82, align 4, !dbg !789
  %84 = call i8* @gettext(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0)) #18, !dbg !789
  %85 = load i8*, i8** %5, align 8, !dbg !789
  %86 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %85), !dbg !789
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %83, i8* noundef %84, i8* noundef %86), !dbg !789
  store i8 0, i8* %9, align 1, !dbg !791
  br label %87, !dbg !792

87:                                               ; preds = %81, %77
  %88 = load i8, i8* %9, align 1, !dbg !793
  %89 = trunc i8 %88 to i1, !dbg !793
  store i1 %89, i1* %3, align 1, !dbg !794
  br label %90, !dbg !794

90:                                               ; preds = %87, %28
  %91 = load i1, i1* %3, align 1, !dbg !795
  ret i1 %91, !dbg !795
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

declare i32 @fdatasync(i32 noundef) #3

declare i32 @fsync(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @syncfs(i32 noundef) #2

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !796 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !797, metadata !DIExpression()), !dbg !798
  %3 = load i8*, i8** %2, align 8, !dbg !799
  store i8* %3, i8** @file_name, align 8, !dbg !800
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !802 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !805, metadata !DIExpression()), !dbg !806
  %4 = load i8, i8* %2, align 1, !dbg !807
  %5 = trunc i8 %4 to i1, !dbg !807
  %6 = zext i1 %5 to i8, !dbg !808
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !808
  ret void, !dbg !809
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !810 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !811
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !813
  %4 = icmp ne i32 %3, 0, !dbg !814
  br i1 %4, label %5, label %28, !dbg !815

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !816
  %7 = trunc i8 %6 to i1, !dbg !816
  br i1 %7, label %8, label %12, !dbg !817

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !818
  %10 = load i32, i32* %9, align 4, !dbg !818
  %11 = icmp eq i32 %10, 32, !dbg !819
  br i1 %11, label %28, label %12, !dbg !820

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !821, metadata !DIExpression()), !dbg !823
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.64, i64 0, i64 0)) #18, !dbg !824
  store i8* %13, i8** %1, align 8, !dbg !823
  %14 = load i8*, i8** @file_name, align 8, !dbg !825
  %15 = icmp ne i8* %14, null, !dbg !825
  br i1 %15, label %16, label %22, !dbg !827

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !828
  %18 = load i32, i32* %17, align 4, !dbg !828
  %19 = load i8*, i8** @file_name, align 8, !dbg !828
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !828
  %21 = load i8*, i8** %1, align 8, !dbg !828
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.65, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !828
  br label %26, !dbg !828

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !829
  %24 = load i32, i32* %23, align 4, !dbg !829
  %25 = load i8*, i8** %1, align 8, !dbg !829
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.66, i64 0, i64 0), i8* noundef %25), !dbg !829
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !830
  call void @_exit(i32 noundef %27) #22, !dbg !831
  unreachable, !dbg !831

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !832
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !834
  %31 = icmp ne i32 %30, 0, !dbg !835
  br i1 %31, label %32, label %34, !dbg !836

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !837
  call void @_exit(i32 noundef %33) #22, !dbg !838
  unreachable, !dbg !838

34:                                               ; preds = %28
  ret void, !dbg !839
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !840 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !843, metadata !DIExpression()), !dbg !844
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !845, metadata !DIExpression()), !dbg !844
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !846, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !847, metadata !DIExpression()), !dbg !844
  call void @flush_stdout(), !dbg !848
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !849
  %10 = icmp ne void ()* %9, null, !dbg !849
  br i1 %10, label %11, label %13, !dbg !851

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !852
  call void %12(), !dbg !853
  br label %17, !dbg !853

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !854
  %15 = call i8* @getprogname() #20, !dbg !856
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0), i8* noundef %15), !dbg !857
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !858
  %19 = load i32, i32* %6, align 4, !dbg !858
  %20 = load i8*, i8** %7, align 8, !dbg !858
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !858
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !858
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !858
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !858
  ret void, !dbg !859
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !860 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !861, metadata !DIExpression()), !dbg !862
  store i32 1, i32* %1, align 4, !dbg !863
  %2 = load i32, i32* %1, align 4, !dbg !864
  %3 = icmp sle i32 0, %2, !dbg !866
  br i1 %3, label %4, label %11, !dbg !867

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !868
  %6 = call i32 @is_open(i32 noundef %5), !dbg !869
  %7 = icmp ne i32 %6, 0, !dbg !869
  br i1 %7, label %8, label %11, !dbg !870

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !871
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !871
  br label %11, !dbg !871

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !872
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !873 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !874, metadata !DIExpression()), !dbg !875
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !876, metadata !DIExpression()), !dbg !875
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !877, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !878, metadata !DIExpression()), !dbg !875
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !879
  %10 = load i8*, i8** %7, align 8, !dbg !880
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !881
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !881
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !881
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !881
  %14 = load i32, i32* @error_message_count, align 4, !dbg !882
  %15 = add i32 %14, 1, !dbg !882
  store i32 %15, i32* @error_message_count, align 4, !dbg !882
  %16 = load i32, i32* %6, align 4, !dbg !883
  %17 = icmp ne i32 %16, 0, !dbg !883
  br i1 %17, label %18, label %20, !dbg !885

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !886
  call void @print_errno_message(i32 noundef %19), !dbg !887
  br label %20, !dbg !887

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !888
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !888
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !889
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !889
  %25 = load i32, i32* %5, align 4, !dbg !890
  %26 = icmp ne i32 %25, 0, !dbg !890
  br i1 %26, label %27, label %29, !dbg !892

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !893
  call void @exit(i32 noundef %28) #19, !dbg !894
  unreachable, !dbg !894

29:                                               ; preds = %20
  ret void, !dbg !895
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !896 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata i8** %3, metadata !899, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !901, metadata !DIExpression()), !dbg !905
  %5 = load i32, i32* %2, align 4, !dbg !906
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !907
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !908
  store i8* %7, i8** %3, align 8, !dbg !909
  %8 = load i8*, i8** %3, align 8, !dbg !910
  %9 = icmp ne i8* %8, null, !dbg !910
  br i1 %9, label %12, label %10, !dbg !912

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.69, i64 0, i64 0)) #18, !dbg !913
  store i8* %11, i8** %3, align 8, !dbg !914
  br label %12, !dbg !915

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !916
  %14 = load i8*, i8** %3, align 8, !dbg !917
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.70, i64 0, i64 0), i8* noundef %14), !dbg !918
  ret void, !dbg !919
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !920 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !923, metadata !DIExpression()), !dbg !924
  %3 = load i32, i32* %2, align 4, !dbg !925
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !926
  %5 = icmp sle i32 0, %4, !dbg !927
  %6 = zext i1 %5 to i32, !dbg !927
  ret i32 %6, !dbg !928
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !929 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !932, metadata !DIExpression()), !dbg !933
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !934, metadata !DIExpression()), !dbg !935
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !936, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !938, metadata !DIExpression()), !dbg !939
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !940
  call void @llvm.va_start(i8* %9), !dbg !940
  %10 = load i32, i32* %4, align 4, !dbg !941
  %11 = load i32, i32* %5, align 4, !dbg !941
  %12 = load i8*, i8** %6, align 8, !dbg !941
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !941
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !941
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !941
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !942
  call void @llvm.va_end(i8* %15), !dbg !942
  ret void, !dbg !943
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !90 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !944, metadata !DIExpression()), !dbg !945
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !946, metadata !DIExpression()), !dbg !945
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !947, metadata !DIExpression()), !dbg !945
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !948, metadata !DIExpression()), !dbg !945
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !949, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !950, metadata !DIExpression()), !dbg !945
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !951
  %14 = icmp ne i32 %13, 0, !dbg !951
  br i1 %14, label %15, label %38, !dbg !953

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !954
  %17 = load i32, i32* %10, align 4, !dbg !957
  %18 = icmp eq i32 %16, %17, !dbg !958
  br i1 %18, label %19, label %35, !dbg !959

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !960
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !961
  %22 = icmp eq i8* %20, %21, !dbg !962
  br i1 %22, label %34, label %23, !dbg !963

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !964
  %25 = icmp ne i8* %24, null, !dbg !965
  br i1 %25, label %26, label %35, !dbg !966

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !967
  %28 = icmp ne i8* %27, null, !dbg !968
  br i1 %28, label %29, label %35, !dbg !969

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !970
  %31 = load i8*, i8** %9, align 8, !dbg !971
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !972
  %33 = icmp eq i32 %32, 0, !dbg !973
  br i1 %33, label %34, label %35, !dbg !974

34:                                               ; preds = %29, %19
  br label %61, !dbg !975

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !976
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !977
  %37 = load i32, i32* %10, align 4, !dbg !978
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !979
  br label %38, !dbg !980

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !981
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !982
  %40 = icmp ne void ()* %39, null, !dbg !982
  br i1 %40, label %41, label %43, !dbg !984

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !985
  call void %42(), !dbg !986
  br label %47, !dbg !986

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !987
  %45 = call i8* @getprogname() #20, !dbg !989
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.73, i64 0, i64 0), i8* noundef %45), !dbg !990
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !991
  %49 = load i8*, i8** %9, align 8, !dbg !992
  %50 = icmp ne i8* %49, null, !dbg !993
  %51 = zext i1 %50 to i64, !dbg !992
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), !dbg !992
  %53 = load i8*, i8** %9, align 8, !dbg !994
  %54 = load i32, i32* %10, align 4, !dbg !995
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !996
  %56 = load i32, i32* %7, align 4, !dbg !997
  %57 = load i32, i32* %8, align 4, !dbg !997
  %58 = load i8*, i8** %11, align 8, !dbg !997
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !997
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !997
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !997
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !997
  br label %61, !dbg !998

61:                                               ; preds = %47, %34
  ret void, !dbg !998
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !999 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1002, metadata !DIExpression()), !dbg !1003
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1004, metadata !DIExpression()), !dbg !1005
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1006, metadata !DIExpression()), !dbg !1007
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1008, metadata !DIExpression()), !dbg !1009
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1010, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1012, metadata !DIExpression()), !dbg !1013
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1014
  call void @llvm.va_start(i8* %13), !dbg !1014
  %14 = load i32, i32* %6, align 4, !dbg !1015
  %15 = load i32, i32* %7, align 4, !dbg !1015
  %16 = load i8*, i8** %8, align 8, !dbg !1015
  %17 = load i32, i32* %9, align 4, !dbg !1015
  %18 = load i8*, i8** %10, align 8, !dbg !1015
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1015
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1015
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1015
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !1015
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1016
  call void @llvm.va_end(i8* %21), !dbg !1016
  ret void, !dbg !1017
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) #4 !dbg !1018 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1021, metadata !DIExpression()), !dbg !1022
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1023, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1025, metadata !DIExpression()), !dbg !1036
  %11 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1037
  call void @llvm.va_start(i8* %11), !dbg !1037
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1038, metadata !DIExpression()), !dbg !1039
  store i32 -1, i32* %6, align 4, !dbg !1039
  %12 = load i32, i32* %4, align 4, !dbg !1040
  switch i32 %12, label %59 [
    i32 0, label %13
    i32 1030, label %36
  ], !dbg !1041

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1042, metadata !DIExpression()), !dbg !1045
  %14 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1046
  %15 = load i32, i32* %14, align 8, !dbg !1046
  %16 = icmp sge i32 %15, 0, !dbg !1046
  br i1 %16, label %25, label %17, !dbg !1046

17:                                               ; preds = %13
  %18 = add i32 %15, 8, !dbg !1046
  store i32 %18, i32* %14, align 8, !dbg !1046
  %19 = icmp sle i32 %18, 0, !dbg !1046
  br i1 %19, label %20, label %25, !dbg !1046

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1046
  %22 = load i8*, i8** %21, align 8, !dbg !1046
  %23 = getelementptr inbounds i8, i8* %22, i32 %15, !dbg !1046
  %24 = bitcast i8* %23 to i32*, !dbg !1046
  br label %30, !dbg !1046

25:                                               ; preds = %17, %13
  %26 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1046
  %27 = load i8*, i8** %26, align 8, !dbg !1046
  %28 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !1046
  store i8* %28, i8** %26, align 8, !dbg !1046
  %29 = bitcast i8* %27 to i32*, !dbg !1046
  br label %30, !dbg !1046

30:                                               ; preds = %25, %20
  %31 = phi i32* [ %24, %20 ], [ %29, %25 ], !dbg !1046
  %32 = load i32, i32* %31, align 8, !dbg !1046
  store i32 %32, i32* %7, align 4, !dbg !1045
  %33 = load i32, i32* %3, align 4, !dbg !1047
  %34 = load i32, i32* %7, align 4, !dbg !1048
  %35 = call i32 @rpl_fcntl_DUPFD(i32 noundef %33, i32 noundef %34), !dbg !1049
  store i32 %35, i32* %6, align 4, !dbg !1050
  br label %114, !dbg !1051

36:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1052, metadata !DIExpression()), !dbg !1054
  %37 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1055
  %38 = load i32, i32* %37, align 8, !dbg !1055
  %39 = icmp sge i32 %38, 0, !dbg !1055
  br i1 %39, label %48, label %40, !dbg !1055

40:                                               ; preds = %36
  %41 = add i32 %38, 8, !dbg !1055
  store i32 %41, i32* %37, align 8, !dbg !1055
  %42 = icmp sle i32 %41, 0, !dbg !1055
  br i1 %42, label %43, label %48, !dbg !1055

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1055
  %45 = load i8*, i8** %44, align 8, !dbg !1055
  %46 = getelementptr inbounds i8, i8* %45, i32 %38, !dbg !1055
  %47 = bitcast i8* %46 to i32*, !dbg !1055
  br label %53, !dbg !1055

48:                                               ; preds = %40, %36
  %49 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1055
  %50 = load i8*, i8** %49, align 8, !dbg !1055
  %51 = getelementptr inbounds i8, i8* %50, i64 8, !dbg !1055
  store i8* %51, i8** %49, align 8, !dbg !1055
  %52 = bitcast i8* %50 to i32*, !dbg !1055
  br label %53, !dbg !1055

53:                                               ; preds = %48, %43
  %54 = phi i32* [ %47, %43 ], [ %52, %48 ], !dbg !1055
  %55 = load i32, i32* %54, align 8, !dbg !1055
  store i32 %55, i32* %8, align 4, !dbg !1054
  %56 = load i32, i32* %3, align 4, !dbg !1056
  %57 = load i32, i32* %8, align 4, !dbg !1057
  %58 = call i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 noundef %56, i32 noundef %57), !dbg !1058
  store i32 %58, i32* %6, align 4, !dbg !1059
  br label %114, !dbg !1060

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4, !dbg !1061
  switch i32 %60, label %89 [
    i32 1, label %61
    i32 3, label %61
    i32 1025, label %61
    i32 9, label %61
    i32 1032, label %61
    i32 1034, label %61
    i32 11, label %61
    i32 1033, label %65
    i32 0, label %65
    i32 1030, label %65
    i32 1026, label %65
    i32 2, label %65
    i32 4, label %65
    i32 1024, label %65
    i32 8, label %65
    i32 1031, label %65
    i32 10, label %65
  ], !dbg !1063

61:                                               ; preds = %59, %59, %59, %59, %59, %59, %59
  %62 = load i32, i32* %3, align 4, !dbg !1064
  %63 = load i32, i32* %4, align 4, !dbg !1066
  %64 = call i32 (i32, i32, ...) @fcntl(i32 noundef %62, i32 noundef %63), !dbg !1067
  store i32 %64, i32* %6, align 4, !dbg !1068
  br label %113, !dbg !1069

65:                                               ; preds = %59, %59, %59, %59, %59, %59, %59, %59, %59, %59
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1070, metadata !DIExpression()), !dbg !1072
  %66 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1073
  %67 = load i32, i32* %66, align 8, !dbg !1073
  %68 = icmp sge i32 %67, 0, !dbg !1073
  br i1 %68, label %77, label %69, !dbg !1073

69:                                               ; preds = %65
  %70 = add i32 %67, 8, !dbg !1073
  store i32 %70, i32* %66, align 8, !dbg !1073
  %71 = icmp sle i32 %70, 0, !dbg !1073
  br i1 %71, label %72, label %77, !dbg !1073

72:                                               ; preds = %69
  %73 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1073
  %74 = load i8*, i8** %73, align 8, !dbg !1073
  %75 = getelementptr inbounds i8, i8* %74, i32 %67, !dbg !1073
  %76 = bitcast i8* %75 to i32*, !dbg !1073
  br label %82, !dbg !1073

77:                                               ; preds = %69, %65
  %78 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1073
  %79 = load i8*, i8** %78, align 8, !dbg !1073
  %80 = getelementptr inbounds i8, i8* %79, i64 8, !dbg !1073
  store i8* %80, i8** %78, align 8, !dbg !1073
  %81 = bitcast i8* %79 to i32*, !dbg !1073
  br label %82, !dbg !1073

82:                                               ; preds = %77, %72
  %83 = phi i32* [ %76, %72 ], [ %81, %77 ], !dbg !1073
  %84 = load i32, i32* %83, align 8, !dbg !1073
  store i32 %84, i32* %9, align 4, !dbg !1072
  %85 = load i32, i32* %3, align 4, !dbg !1074
  %86 = load i32, i32* %4, align 4, !dbg !1075
  %87 = load i32, i32* %9, align 4, !dbg !1076
  %88 = call i32 (i32, i32, ...) @fcntl(i32 noundef %85, i32 noundef %86, i32 noundef %87), !dbg !1077
  store i32 %88, i32* %6, align 4, !dbg !1078
  br label %113, !dbg !1079

89:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1080, metadata !DIExpression()), !dbg !1082
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3, !dbg !1083
  %91 = load i32, i32* %90, align 8, !dbg !1083
  %92 = icmp sge i32 %91, 0, !dbg !1083
  br i1 %92, label %101, label %93, !dbg !1083

93:                                               ; preds = %89
  %94 = add i32 %91, 8, !dbg !1083
  store i32 %94, i32* %90, align 8, !dbg !1083
  %95 = icmp sle i32 %94, 0, !dbg !1083
  br i1 %95, label %96, label %101, !dbg !1083

96:                                               ; preds = %93
  %97 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1, !dbg !1083
  %98 = load i8*, i8** %97, align 8, !dbg !1083
  %99 = getelementptr inbounds i8, i8* %98, i32 %91, !dbg !1083
  %100 = bitcast i8* %99 to i8**, !dbg !1083
  br label %106, !dbg !1083

101:                                              ; preds = %93, %89
  %102 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0, !dbg !1083
  %103 = load i8*, i8** %102, align 8, !dbg !1083
  %104 = getelementptr inbounds i8, i8* %103, i64 8, !dbg !1083
  store i8* %104, i8** %102, align 8, !dbg !1083
  %105 = bitcast i8* %103 to i8**, !dbg !1083
  br label %106, !dbg !1083

106:                                              ; preds = %101, %96
  %107 = phi i8** [ %100, %96 ], [ %105, %101 ], !dbg !1083
  %108 = load i8*, i8** %107, align 8, !dbg !1083
  store i8* %108, i8** %10, align 8, !dbg !1082
  %109 = load i32, i32* %3, align 4, !dbg !1084
  %110 = load i32, i32* %4, align 4, !dbg !1085
  %111 = load i8*, i8** %10, align 8, !dbg !1086
  %112 = call i32 (i32, i32, ...) @fcntl(i32 noundef %109, i32 noundef %110, i8* noundef %111), !dbg !1087
  store i32 %112, i32* %6, align 4, !dbg !1088
  br label %113, !dbg !1089

113:                                              ; preds = %106, %82, %61
  br label %114, !dbg !1090

114:                                              ; preds = %113, %53, %30
  %115 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1091
  call void @llvm.va_end(i8* %115), !dbg !1091
  %116 = load i32, i32* %6, align 4, !dbg !1092
  ret i32 %116, !dbg !1093
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpl_fcntl_DUPFD(i32 noundef %0, i32 noundef %1) #4 !dbg !1094 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1095, metadata !DIExpression()), !dbg !1096
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1097, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1099, metadata !DIExpression()), !dbg !1100
  %6 = load i32, i32* %3, align 4, !dbg !1101
  %7 = load i32, i32* %4, align 4, !dbg !1102
  %8 = call i32 (i32, i32, ...) @fcntl(i32 noundef %6, i32 noundef 0, i32 noundef %7), !dbg !1103
  store i32 %8, i32* %5, align 4, !dbg !1104
  %9 = load i32, i32* %5, align 4, !dbg !1105
  ret i32 %9, !dbg !1106
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 noundef %0, i32 noundef %1) #4 !dbg !118 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1107, metadata !DIExpression()), !dbg !1108
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1109, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1111, metadata !DIExpression()), !dbg !1112
  %8 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1113
  %9 = icmp sle i32 0, %8, !dbg !1115
  br i1 %9, label %10, label %30, !dbg !1116

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4, !dbg !1117
  %12 = load i32, i32* %4, align 4, !dbg !1119
  %13 = call i32 (i32, i32, ...) @fcntl(i32 noundef %11, i32 noundef 1030, i32 noundef %12), !dbg !1120
  store i32 %13, i32* %5, align 4, !dbg !1121
  %14 = load i32, i32* %5, align 4, !dbg !1122
  %15 = icmp sle i32 0, %14, !dbg !1124
  br i1 %15, label %20, label %16, !dbg !1125

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #21, !dbg !1126
  %18 = load i32, i32* %17, align 4, !dbg !1126
  %19 = icmp ne i32 %18, 22, !dbg !1127
  br i1 %19, label %20, label %21, !dbg !1128

20:                                               ; preds = %16, %10
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1129
  br label %29, !dbg !1131

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4, !dbg !1132
  %23 = load i32, i32* %4, align 4, !dbg !1134
  %24 = call i32 @rpl_fcntl_DUPFD(i32 noundef %22, i32 noundef %23), !dbg !1135
  store i32 %24, i32* %5, align 4, !dbg !1136
  %25 = load i32, i32* %5, align 4, !dbg !1137
  %26 = icmp sge i32 %25, 0, !dbg !1139
  br i1 %26, label %27, label %28, !dbg !1140

27:                                               ; preds = %21
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1141
  br label %28, !dbg !1142

28:                                               ; preds = %27, %21
  br label %29

29:                                               ; preds = %28, %20
  br label %34, !dbg !1143

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4, !dbg !1144
  %32 = load i32, i32* %4, align 4, !dbg !1145
  %33 = call i32 @rpl_fcntl_DUPFD(i32 noundef %31, i32 noundef %32), !dbg !1146
  store i32 %33, i32* %5, align 4, !dbg !1147
  br label %34

34:                                               ; preds = %30, %29
  %35 = load i32, i32* %5, align 4, !dbg !1148
  %36 = icmp sle i32 0, %35, !dbg !1150
  br i1 %36, label %37, label %59, !dbg !1151

37:                                               ; preds = %34
  %38 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1152
  %39 = icmp eq i32 %38, -1, !dbg !1153
  br i1 %39, label %40, label %59, !dbg !1154

40:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1155, metadata !DIExpression()), !dbg !1157
  %41 = load i32, i32* %5, align 4, !dbg !1158
  %42 = call i32 (i32, i32, ...) @fcntl(i32 noundef %41, i32 noundef 1), !dbg !1159
  store i32 %42, i32* %6, align 4, !dbg !1157
  %43 = load i32, i32* %6, align 4, !dbg !1160
  %44 = icmp slt i32 %43, 0, !dbg !1162
  br i1 %44, label %51, label %45, !dbg !1163

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4, !dbg !1164
  %47 = load i32, i32* %6, align 4, !dbg !1165
  %48 = or i32 %47, 1, !dbg !1166
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %46, i32 noundef 2, i32 noundef %48), !dbg !1167
  %50 = icmp eq i32 %49, -1, !dbg !1168
  br i1 %50, label %51, label %58, !dbg !1169

51:                                               ; preds = %45, %40
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1170, metadata !DIExpression()), !dbg !1172
  %52 = call i32* @__errno_location() #21, !dbg !1173
  %53 = load i32, i32* %52, align 4, !dbg !1173
  store i32 %53, i32* %7, align 4, !dbg !1172
  %54 = load i32, i32* %5, align 4, !dbg !1174
  %55 = call i32 @close(i32 noundef %54), !dbg !1175
  %56 = load i32, i32* %7, align 4, !dbg !1176
  %57 = call i32* @__errno_location() #21, !dbg !1177
  store i32 %56, i32* %57, align 4, !dbg !1178
  store i32 -1, i32* %5, align 4, !dbg !1179
  br label %58, !dbg !1180

58:                                               ; preds = %51, %45
  br label %59, !dbg !1181

59:                                               ; preds = %58, %37, %34
  %60 = load i32, i32* %5, align 4, !dbg !1182
  ret i32 %60, !dbg !1183
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1184 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1187
  ret i8* %1, !dbg !1188
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1189 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1190, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1192, metadata !DIExpression()), !dbg !1193
  %5 = load i8*, i8** %2, align 8, !dbg !1194
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1195
  store i8* %6, i8** %3, align 8, !dbg !1193
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1196, metadata !DIExpression()), !dbg !1197
  %7 = load i8*, i8** %3, align 8, !dbg !1198
  %8 = icmp ne i8* %7, null, !dbg !1198
  br i1 %8, label %9, label %12, !dbg !1198

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1199
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1200
  br label %14, !dbg !1198

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1201
  br label %14, !dbg !1198

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1198
  store i8* %15, i8** %4, align 8, !dbg !1197
  %16 = load i8*, i8** %4, align 8, !dbg !1202
  %17 = load i8*, i8** %2, align 8, !dbg !1204
  %18 = ptrtoint i8* %16 to i64, !dbg !1205
  %19 = ptrtoint i8* %17 to i64, !dbg !1205
  %20 = sub i64 %18, %19, !dbg !1205
  %21 = icmp sle i64 7, %20, !dbg !1206
  br i1 %21, label %22, label %36, !dbg !1207

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1208
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1209
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i64 noundef 7), !dbg !1210
  br i1 %25, label %26, label %36, !dbg !1211

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1212
  store i8* %27, i8** %2, align 8, !dbg !1214
  %28 = load i8*, i8** %4, align 8, !dbg !1215
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.87, i64 0, i64 0), i64 noundef 3) #20, !dbg !1217
  %30 = icmp eq i32 %29, 0, !dbg !1218
  br i1 %30, label %31, label %35, !dbg !1219

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1220
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1220
  store i8* %33, i8** %4, align 8, !dbg !1220
  %34 = load i8*, i8** %4, align 8, !dbg !1222
  store i8* %34, i8** %2, align 8, !dbg !1223
  br label %35, !dbg !1224

35:                                               ; preds = %31, %26
  br label %36, !dbg !1225

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1226
  store i8* %37, i8** @program_name, align 8, !dbg !1227
  %38 = load i8*, i8** %2, align 8, !dbg !1228
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1229
  %39 = load i8*, i8** %4, align 8, !dbg !1230
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1231
  ret void, !dbg !1232
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !132 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1233, metadata !DIExpression()), !dbg !1234
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1235, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1237, metadata !DIExpression()), !dbg !1238
  %9 = load i8*, i8** %4, align 8, !dbg !1239
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1240
  store i8* %10, i8** %6, align 8, !dbg !1238
  %11 = load i8*, i8** %6, align 8, !dbg !1241
  %12 = load i8*, i8** %4, align 8, !dbg !1243
  %13 = icmp ne i8* %11, %12, !dbg !1244
  br i1 %13, label %14, label %16, !dbg !1245

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1246
  store i8* %15, i8** %3, align 8, !dbg !1247
  br label %26, !dbg !1247

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1248, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1255, metadata !DIExpression()), !dbg !1266
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1267
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1268
  %18 = icmp eq i64 %17, 2, !dbg !1270
  br i1 %18, label %19, label %24, !dbg !1271

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1272
  %21 = icmp eq i32 %20, 2047, !dbg !1273
  br i1 %21, label %22, label %24, !dbg !1274

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1275
  store i8* %23, i8** %3, align 8, !dbg !1276
  br label %26, !dbg !1276

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1277
  store i8* %25, i8** %3, align 8, !dbg !1278
  br label %26, !dbg !1278

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1279
  ret i8* %27, !dbg !1279
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1280 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1284, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1286, metadata !DIExpression()), !dbg !1287
  %5 = call i32* @__errno_location() #21, !dbg !1288
  %6 = load i32, i32* %5, align 4, !dbg !1288
  store i32 %6, i32* %3, align 4, !dbg !1287
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1289, metadata !DIExpression()), !dbg !1290
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1291
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1291
  br i1 %8, label %9, label %11, !dbg !1291

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1292
  br label %12, !dbg !1291

11:                                               ; preds = %1
  br label %12, !dbg !1291

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1291
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1291
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1293
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1293
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1290
  %17 = load i32, i32* %3, align 4, !dbg !1294
  %18 = call i32* @__errno_location() #21, !dbg !1295
  store i32 %17, i32* %18, align 4, !dbg !1296
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1297
  ret %struct.quoting_options* %19, !dbg !1298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1299 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1304, metadata !DIExpression()), !dbg !1305
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1306
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1306
  br i1 %4, label %5, label %7, !dbg !1306

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1307
  br label %8, !dbg !1306

7:                                                ; preds = %1
  br label %8, !dbg !1306

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1306
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1308
  %11 = load i32, i32* %10, align 8, !dbg !1308
  ret i32 %11, !dbg !1309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1310 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1313, metadata !DIExpression()), !dbg !1314
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1315, metadata !DIExpression()), !dbg !1316
  %5 = load i32, i32* %4, align 4, !dbg !1317
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1318
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1318
  br i1 %7, label %8, label %10, !dbg !1318

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1319
  br label %11, !dbg !1318

10:                                               ; preds = %2
  br label %11, !dbg !1318

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1318
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1320
  store i32 %5, i32* %13, align 8, !dbg !1321
  ret void, !dbg !1322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1323 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1326, metadata !DIExpression()), !dbg !1327
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1328, metadata !DIExpression()), !dbg !1329
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1330, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1332, metadata !DIExpression()), !dbg !1333
  %11 = load i8, i8* %5, align 1, !dbg !1334
  store i8 %11, i8* %7, align 1, !dbg !1333
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1335, metadata !DIExpression()), !dbg !1337
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1338
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1338
  br i1 %13, label %14, label %16, !dbg !1338

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1339
  br label %17, !dbg !1338

16:                                               ; preds = %3
  br label %17, !dbg !1338

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1338
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1340
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1341
  %21 = load i8, i8* %7, align 1, !dbg !1342
  %22 = zext i8 %21 to i64, !dbg !1342
  %23 = udiv i64 %22, 32, !dbg !1343
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1344
  store i32* %24, i32** %8, align 8, !dbg !1337
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1345, metadata !DIExpression()), !dbg !1346
  %25 = load i8, i8* %7, align 1, !dbg !1347
  %26 = zext i8 %25 to i64, !dbg !1347
  %27 = urem i64 %26, 32, !dbg !1348
  %28 = trunc i64 %27 to i32, !dbg !1347
  store i32 %28, i32* %9, align 4, !dbg !1346
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1349, metadata !DIExpression()), !dbg !1350
  %29 = load i32*, i32** %8, align 8, !dbg !1351
  %30 = load i32, i32* %29, align 4, !dbg !1352
  %31 = load i32, i32* %9, align 4, !dbg !1353
  %32 = lshr i32 %30, %31, !dbg !1354
  %33 = and i32 %32, 1, !dbg !1355
  store i32 %33, i32* %10, align 4, !dbg !1350
  %34 = load i32, i32* %6, align 4, !dbg !1356
  %35 = and i32 %34, 1, !dbg !1357
  %36 = load i32, i32* %10, align 4, !dbg !1358
  %37 = xor i32 %35, %36, !dbg !1359
  %38 = load i32, i32* %9, align 4, !dbg !1360
  %39 = shl i32 %37, %38, !dbg !1361
  %40 = load i32*, i32** %8, align 8, !dbg !1362
  %41 = load i32, i32* %40, align 4, !dbg !1363
  %42 = xor i32 %41, %39, !dbg !1363
  store i32 %42, i32* %40, align 4, !dbg !1363
  %43 = load i32, i32* %10, align 4, !dbg !1364
  ret i32 %43, !dbg !1365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1366 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1369, metadata !DIExpression()), !dbg !1370
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1371, metadata !DIExpression()), !dbg !1372
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1373
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1373
  br i1 %7, label %9, label %8, !dbg !1375

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1376
  br label %9, !dbg !1377

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1378, metadata !DIExpression()), !dbg !1379
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1380
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1381
  %12 = load i32, i32* %11, align 4, !dbg !1381
  store i32 %12, i32* %5, align 4, !dbg !1379
  %13 = load i32, i32* %4, align 4, !dbg !1382
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1383
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1384
  store i32 %13, i32* %15, align 4, !dbg !1385
  %16 = load i32, i32* %5, align 4, !dbg !1386
  ret i32 %16, !dbg !1387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1388 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1391, metadata !DIExpression()), !dbg !1392
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1393, metadata !DIExpression()), !dbg !1394
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1395, metadata !DIExpression()), !dbg !1396
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1397
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1397
  br i1 %8, label %10, label %9, !dbg !1399

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1400
  br label %10, !dbg !1401

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1402
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1403
  store i32 10, i32* %12, align 8, !dbg !1404
  %13 = load i8*, i8** %5, align 8, !dbg !1405
  %14 = icmp ne i8* %13, null, !dbg !1405
  br i1 %14, label %15, label %18, !dbg !1407

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1408
  %17 = icmp ne i8* %16, null, !dbg !1408
  br i1 %17, label %19, label %18, !dbg !1409

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1410
  unreachable, !dbg !1410

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1411
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1412
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1413
  store i8* %20, i8** %22, align 8, !dbg !1414
  %23 = load i8*, i8** %6, align 8, !dbg !1415
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1416
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1417
  store i8* %23, i8** %25, align 8, !dbg !1418
  ret void, !dbg !1419
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1420 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1423, metadata !DIExpression()), !dbg !1424
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1425, metadata !DIExpression()), !dbg !1426
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1427, metadata !DIExpression()), !dbg !1428
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1429, metadata !DIExpression()), !dbg !1430
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1431, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1433, metadata !DIExpression()), !dbg !1434
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1435
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1435
  br i1 %15, label %16, label %18, !dbg !1435

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1436
  br label %19, !dbg !1435

18:                                               ; preds = %5
  br label %19, !dbg !1435

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1435
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1434
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1437, metadata !DIExpression()), !dbg !1438
  %21 = call i32* @__errno_location() #21, !dbg !1439
  %22 = load i32, i32* %21, align 4, !dbg !1439
  store i32 %22, i32* %12, align 4, !dbg !1438
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1440, metadata !DIExpression()), !dbg !1441
  %23 = load i8*, i8** %6, align 8, !dbg !1442
  %24 = load i64, i64* %7, align 8, !dbg !1443
  %25 = load i8*, i8** %8, align 8, !dbg !1444
  %26 = load i64, i64* %9, align 8, !dbg !1445
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1446
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1447
  %29 = load i32, i32* %28, align 8, !dbg !1447
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1448
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1449
  %32 = load i32, i32* %31, align 4, !dbg !1449
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1450
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1451
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1450
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1452
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1453
  %38 = load i8*, i8** %37, align 8, !dbg !1453
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1454
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1455
  %41 = load i8*, i8** %40, align 8, !dbg !1455
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1456
  store i64 %42, i64* %13, align 8, !dbg !1441
  %43 = load i32, i32* %12, align 4, !dbg !1457
  %44 = call i32* @__errno_location() #21, !dbg !1458
  store i32 %43, i32* %44, align 4, !dbg !1459
  %45 = load i64, i64* %13, align 8, !dbg !1460
  ret i64 %45, !dbg !1461
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1462 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1467, metadata !DIExpression()), !dbg !1468
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1471, metadata !DIExpression()), !dbg !1472
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1473, metadata !DIExpression()), !dbg !1474
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1475, metadata !DIExpression()), !dbg !1476
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1477, metadata !DIExpression()), !dbg !1478
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1479, metadata !DIExpression()), !dbg !1480
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1481, metadata !DIExpression()), !dbg !1482
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1485, metadata !DIExpression()), !dbg !1486
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1487
  %45 = icmp eq i64 %44, 1, !dbg !1488
  %46 = zext i1 %45 to i8, !dbg !1486
  store i8 %46, i8* %20, align 1, !dbg !1486
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1489, metadata !DIExpression()), !dbg !1490
  store i64 0, i64* %21, align 8, !dbg !1490
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1491, metadata !DIExpression()), !dbg !1492
  store i64 0, i64* %22, align 8, !dbg !1492
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1493, metadata !DIExpression()), !dbg !1494
  store i8* null, i8** %23, align 8, !dbg !1494
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1495, metadata !DIExpression()), !dbg !1496
  store i64 0, i64* %24, align 8, !dbg !1496
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1497, metadata !DIExpression()), !dbg !1498
  store i8 0, i8* %25, align 1, !dbg !1498
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1499, metadata !DIExpression()), !dbg !1500
  %47 = load i32, i32* %16, align 4, !dbg !1501
  %48 = and i32 %47, 2, !dbg !1502
  %49 = icmp ne i32 %48, 0, !dbg !1503
  %50 = zext i1 %49 to i8, !dbg !1500
  store i8 %50, i8* %26, align 1, !dbg !1500
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1504, metadata !DIExpression()), !dbg !1505
  store i8 0, i8* %27, align 1, !dbg !1505
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1506, metadata !DIExpression()), !dbg !1507
  store i8 1, i8* %28, align 1, !dbg !1507
  br label %51, !dbg !1508

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1509), !dbg !1510
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1511, metadata !DIExpression()), !dbg !1512
  store i8 0, i8* %29, align 1, !dbg !1512
  %52 = load i32, i32* %15, align 4, !dbg !1513
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
  ], !dbg !1514

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1515
  store i8 1, i8* %26, align 1, !dbg !1517
  br label %54, !dbg !1518

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1519
  %56 = trunc i8 %55 to i1, !dbg !1519
  br i1 %56, label %70, label %57, !dbg !1521

57:                                               ; preds = %54
  br label %58, !dbg !1522

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1523
  %60 = load i64, i64* %12, align 8, !dbg !1523
  %61 = icmp ult i64 %59, %60, !dbg !1523
  br i1 %61, label %62, label %66, !dbg !1526

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1523
  %64 = load i64, i64* %21, align 8, !dbg !1523
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1523
  store i8 34, i8* %65, align 1, !dbg !1523
  br label %66, !dbg !1523

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1526
  %68 = add i64 %67, 1, !dbg !1526
  store i64 %68, i64* %21, align 8, !dbg !1526
  br label %69, !dbg !1526

69:                                               ; preds = %66
  br label %70, !dbg !1526

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1527
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.100, i64 0, i64 0), i8** %23, align 8, !dbg !1528
  store i64 1, i64* %24, align 8, !dbg !1529
  br label %138, !dbg !1530

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1531
  store i8 0, i8* %26, align 1, !dbg !1532
  br label %138, !dbg !1533

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1534
  %74 = icmp ne i32 %73, 10, !dbg !1537
  br i1 %74, label %75, label %80, !dbg !1538

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1539
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.101, i64 0, i64 0), i32 noundef %76), !dbg !1541
  store i8* %77, i8** %18, align 8, !dbg !1542
  %78 = load i32, i32* %15, align 4, !dbg !1543
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.102, i64 0, i64 0), i32 noundef %78), !dbg !1544
  store i8* %79, i8** %19, align 8, !dbg !1545
  br label %80, !dbg !1546

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1547
  %82 = trunc i8 %81 to i1, !dbg !1547
  br i1 %82, label %108, label %83, !dbg !1549

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1550, metadata !DIExpression()), !dbg !1552
  %84 = load i8*, i8** %18, align 8, !dbg !1553
  store i8* %84, i8** %30, align 8, !dbg !1552
  br label %85, !dbg !1554

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1555
  %87 = load i8, i8* %86, align 1, !dbg !1557
  %88 = icmp ne i8 %87, 0, !dbg !1558
  br i1 %88, label %89, label %107, !dbg !1558

89:                                               ; preds = %85
  br label %90, !dbg !1559

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1560
  %92 = load i64, i64* %12, align 8, !dbg !1560
  %93 = icmp ult i64 %91, %92, !dbg !1560
  br i1 %93, label %94, label %100, !dbg !1563

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1560
  %96 = load i8, i8* %95, align 1, !dbg !1560
  %97 = load i8*, i8** %11, align 8, !dbg !1560
  %98 = load i64, i64* %21, align 8, !dbg !1560
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1560
  store i8 %96, i8* %99, align 1, !dbg !1560
  br label %100, !dbg !1560

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1563
  %102 = add i64 %101, 1, !dbg !1563
  store i64 %102, i64* %21, align 8, !dbg !1563
  br label %103, !dbg !1563

103:                                              ; preds = %100
  br label %104, !dbg !1563

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1564
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1564
  store i8* %106, i8** %30, align 8, !dbg !1564
  br label %85, !dbg !1565, !llvm.loop !1566

107:                                              ; preds = %85
  br label %108, !dbg !1567

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1568
  %109 = load i8*, i8** %19, align 8, !dbg !1569
  store i8* %109, i8** %23, align 8, !dbg !1570
  %110 = load i8*, i8** %23, align 8, !dbg !1571
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1572
  store i64 %111, i64* %24, align 8, !dbg !1573
  br label %138, !dbg !1574

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1575
  br label %113, !dbg !1576

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1577
  br label %114, !dbg !1578

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1579
  %116 = trunc i8 %115 to i1, !dbg !1579
  br i1 %116, label %118, label %117, !dbg !1581

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1582
  br label %118, !dbg !1583

118:                                              ; preds = %117, %114
  br label %119, !dbg !1579

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1584
  %120 = load i8, i8* %26, align 1, !dbg !1585
  %121 = trunc i8 %120 to i1, !dbg !1585
  br i1 %121, label %135, label %122, !dbg !1587

122:                                              ; preds = %119
  br label %123, !dbg !1588

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1589
  %125 = load i64, i64* %12, align 8, !dbg !1589
  %126 = icmp ult i64 %124, %125, !dbg !1589
  br i1 %126, label %127, label %131, !dbg !1592

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1589
  %129 = load i64, i64* %21, align 8, !dbg !1589
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1589
  store i8 39, i8* %130, align 1, !dbg !1589
  br label %131, !dbg !1589

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1592
  %133 = add i64 %132, 1, !dbg !1592
  store i64 %133, i64* %21, align 8, !dbg !1592
  br label %134, !dbg !1592

134:                                              ; preds = %131
  br label %135, !dbg !1592

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.102, i64 0, i64 0), i8** %23, align 8, !dbg !1593
  store i64 1, i64* %24, align 8, !dbg !1594
  br label %138, !dbg !1595

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1596
  br label %138, !dbg !1597

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1598
  unreachable, !dbg !1598

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1599, metadata !DIExpression()), !dbg !1601
  store i64 0, i64* %31, align 8, !dbg !1601
  br label %139, !dbg !1602

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1603
  %141 = icmp eq i64 %140, -1, !dbg !1605
  br i1 %141, label %142, label %150, !dbg !1603

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1606
  %144 = load i64, i64* %31, align 8, !dbg !1607
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1606
  %146 = load i8, i8* %145, align 1, !dbg !1606
  %147 = zext i8 %146 to i32, !dbg !1606
  %148 = icmp eq i32 %147, 0, !dbg !1608
  %149 = zext i1 %148 to i32, !dbg !1608
  br label %155, !dbg !1603

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1609
  %152 = load i64, i64* %14, align 8, !dbg !1610
  %153 = icmp eq i64 %151, %152, !dbg !1611
  %154 = zext i1 %153 to i32, !dbg !1611
  br label %155, !dbg !1603

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1603
  %157 = icmp ne i32 %156, 0, !dbg !1612
  %158 = xor i1 %157, true, !dbg !1612
  br i1 %158, label %159, label %996, !dbg !1613

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1614, metadata !DIExpression()), !dbg !1616
  store i8 0, i8* %32, align 1, !dbg !1616
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1617, metadata !DIExpression()), !dbg !1618
  store i8 0, i8* %33, align 1, !dbg !1618
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1619, metadata !DIExpression()), !dbg !1620
  store i8 0, i8* %34, align 1, !dbg !1620
  %160 = load i8, i8* %25, align 1, !dbg !1621
  %161 = trunc i8 %160 to i1, !dbg !1621
  br i1 %161, label %162, label %197, !dbg !1623

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1624
  %164 = icmp ne i32 %163, 2, !dbg !1625
  br i1 %164, label %165, label %197, !dbg !1626

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1627
  %167 = icmp ne i64 %166, 0, !dbg !1627
  br i1 %167, label %168, label %197, !dbg !1628

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1629
  %170 = load i64, i64* %24, align 8, !dbg !1630
  %171 = add i64 %169, %170, !dbg !1631
  %172 = load i64, i64* %14, align 8, !dbg !1632
  %173 = icmp eq i64 %172, -1, !dbg !1633
  br i1 %173, label %174, label %180, !dbg !1634

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1635
  %176 = icmp ult i64 1, %175, !dbg !1636
  br i1 %176, label %177, label %180, !dbg !1632

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1637
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1638
  store i64 %179, i64* %14, align 8, !dbg !1639
  br label %182, !dbg !1632

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1640
  br label %182, !dbg !1632

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1632
  %184 = icmp ule i64 %171, %183, !dbg !1641
  br i1 %184, label %185, label %197, !dbg !1642

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1643
  %187 = load i64, i64* %31, align 8, !dbg !1644
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1645
  %189 = load i8*, i8** %23, align 8, !dbg !1646
  %190 = load i64, i64* %24, align 8, !dbg !1647
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1648
  br i1 %191, label %192, label %197, !dbg !1649

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1650
  %194 = trunc i8 %193 to i1, !dbg !1650
  br i1 %194, label %195, label %196, !dbg !1653

195:                                              ; preds = %192
  br label %1078, !dbg !1654

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1655
  br label %197, !dbg !1656

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1657, metadata !DIExpression()), !dbg !1658
  %198 = load i8*, i8** %13, align 8, !dbg !1659
  %199 = load i64, i64* %31, align 8, !dbg !1660
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1659
  %201 = load i8, i8* %200, align 1, !dbg !1659
  store i8 %201, i8* %35, align 1, !dbg !1658
  %202 = load i8, i8* %35, align 1, !dbg !1661
  %203 = zext i8 %202 to i32, !dbg !1661
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
  ], !dbg !1662

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1663
  %206 = trunc i8 %205 to i1, !dbg !1663
  br i1 %206, label %207, label %318, !dbg !1666

207:                                              ; preds = %204
  br label %208, !dbg !1667

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1669
  %210 = trunc i8 %209 to i1, !dbg !1669
  br i1 %210, label %211, label %212, !dbg !1672

211:                                              ; preds = %208
  br label %1078, !dbg !1669

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1672
  %213 = load i32, i32* %15, align 4, !dbg !1673
  %214 = icmp eq i32 %213, 2, !dbg !1673
  br i1 %214, label %215, label %255, !dbg !1673

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1673
  %217 = trunc i8 %216 to i1, !dbg !1673
  br i1 %217, label %255, label %218, !dbg !1672

218:                                              ; preds = %215
  br label %219, !dbg !1675

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1677
  %221 = load i64, i64* %12, align 8, !dbg !1677
  %222 = icmp ult i64 %220, %221, !dbg !1677
  br i1 %222, label %223, label %227, !dbg !1680

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1677
  %225 = load i64, i64* %21, align 8, !dbg !1677
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1677
  store i8 39, i8* %226, align 1, !dbg !1677
  br label %227, !dbg !1677

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1680
  %229 = add i64 %228, 1, !dbg !1680
  store i64 %229, i64* %21, align 8, !dbg !1680
  br label %230, !dbg !1680

230:                                              ; preds = %227
  br label %231, !dbg !1675

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1681
  %233 = load i64, i64* %12, align 8, !dbg !1681
  %234 = icmp ult i64 %232, %233, !dbg !1681
  br i1 %234, label %235, label %239, !dbg !1684

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1681
  %237 = load i64, i64* %21, align 8, !dbg !1681
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1681
  store i8 36, i8* %238, align 1, !dbg !1681
  br label %239, !dbg !1681

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1684
  %241 = add i64 %240, 1, !dbg !1684
  store i64 %241, i64* %21, align 8, !dbg !1684
  br label %242, !dbg !1684

242:                                              ; preds = %239
  br label %243, !dbg !1675

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1685
  %245 = load i64, i64* %12, align 8, !dbg !1685
  %246 = icmp ult i64 %244, %245, !dbg !1685
  br i1 %246, label %247, label %251, !dbg !1688

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1685
  %249 = load i64, i64* %21, align 8, !dbg !1685
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1685
  store i8 39, i8* %250, align 1, !dbg !1685
  br label %251, !dbg !1685

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1688
  %253 = add i64 %252, 1, !dbg !1688
  store i64 %253, i64* %21, align 8, !dbg !1688
  br label %254, !dbg !1688

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1675
  br label %255, !dbg !1675

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1672

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1689
  %258 = load i64, i64* %12, align 8, !dbg !1689
  %259 = icmp ult i64 %257, %258, !dbg !1689
  br i1 %259, label %260, label %264, !dbg !1692

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1689
  %262 = load i64, i64* %21, align 8, !dbg !1689
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1689
  store i8 92, i8* %263, align 1, !dbg !1689
  br label %264, !dbg !1689

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1692
  %266 = add i64 %265, 1, !dbg !1692
  store i64 %266, i64* %21, align 8, !dbg !1692
  br label %267, !dbg !1692

267:                                              ; preds = %264
  br label %268, !dbg !1672

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1693
  %270 = icmp ne i32 %269, 2, !dbg !1695
  br i1 %270, label %271, label %317, !dbg !1696

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1697
  %273 = add i64 %272, 1, !dbg !1698
  %274 = load i64, i64* %14, align 8, !dbg !1699
  %275 = icmp ult i64 %273, %274, !dbg !1700
  br i1 %275, label %276, label %317, !dbg !1701

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1702
  %278 = load i64, i64* %31, align 8, !dbg !1703
  %279 = add i64 %278, 1, !dbg !1704
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1702
  %281 = load i8, i8* %280, align 1, !dbg !1702
  %282 = zext i8 %281 to i32, !dbg !1702
  %283 = icmp sle i32 48, %282, !dbg !1705
  br i1 %283, label %284, label %317, !dbg !1706

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1707
  %286 = load i64, i64* %31, align 8, !dbg !1708
  %287 = add i64 %286, 1, !dbg !1709
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1707
  %289 = load i8, i8* %288, align 1, !dbg !1707
  %290 = zext i8 %289 to i32, !dbg !1707
  %291 = icmp sle i32 %290, 57, !dbg !1710
  br i1 %291, label %292, label %317, !dbg !1711

292:                                              ; preds = %284
  br label %293, !dbg !1712

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1714
  %295 = load i64, i64* %12, align 8, !dbg !1714
  %296 = icmp ult i64 %294, %295, !dbg !1714
  br i1 %296, label %297, label %301, !dbg !1717

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1714
  %299 = load i64, i64* %21, align 8, !dbg !1714
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1714
  store i8 48, i8* %300, align 1, !dbg !1714
  br label %301, !dbg !1714

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1717
  %303 = add i64 %302, 1, !dbg !1717
  store i64 %303, i64* %21, align 8, !dbg !1717
  br label %304, !dbg !1717

304:                                              ; preds = %301
  br label %305, !dbg !1718

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1719
  %307 = load i64, i64* %12, align 8, !dbg !1719
  %308 = icmp ult i64 %306, %307, !dbg !1719
  br i1 %308, label %309, label %313, !dbg !1722

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1719
  %311 = load i64, i64* %21, align 8, !dbg !1719
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1719
  store i8 48, i8* %312, align 1, !dbg !1719
  br label %313, !dbg !1719

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1722
  %315 = add i64 %314, 1, !dbg !1722
  store i64 %315, i64* %21, align 8, !dbg !1722
  br label %316, !dbg !1722

316:                                              ; preds = %313
  br label %317, !dbg !1723

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1724
  br label %324, !dbg !1725

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1726
  %320 = and i32 %319, 1, !dbg !1728
  %321 = icmp ne i32 %320, 0, !dbg !1728
  br i1 %321, label %322, label %323, !dbg !1729

322:                                              ; preds = %318
  br label %993, !dbg !1730

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1731

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1732
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1733

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1734
  %329 = trunc i8 %328 to i1, !dbg !1734
  br i1 %329, label %330, label %331, !dbg !1737

330:                                              ; preds = %327
  br label %1078, !dbg !1738

331:                                              ; preds = %327
  br label %418, !dbg !1739

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1740
  %334 = and i32 %333, 4, !dbg !1742
  %335 = icmp ne i32 %334, 0, !dbg !1742
  br i1 %335, label %336, label %417, !dbg !1743

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1744
  %338 = add i64 %337, 2, !dbg !1745
  %339 = load i64, i64* %14, align 8, !dbg !1746
  %340 = icmp ult i64 %338, %339, !dbg !1747
  br i1 %340, label %341, label %417, !dbg !1748

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1749
  %343 = load i64, i64* %31, align 8, !dbg !1750
  %344 = add i64 %343, 1, !dbg !1751
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1749
  %346 = load i8, i8* %345, align 1, !dbg !1749
  %347 = zext i8 %346 to i32, !dbg !1749
  %348 = icmp eq i32 %347, 63, !dbg !1752
  br i1 %348, label %349, label %417, !dbg !1753

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1754
  %351 = load i64, i64* %31, align 8, !dbg !1755
  %352 = add i64 %351, 2, !dbg !1756
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1754
  %354 = load i8, i8* %353, align 1, !dbg !1754
  %355 = zext i8 %354 to i32, !dbg !1754
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
  ], !dbg !1757

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1758
  %358 = trunc i8 %357 to i1, !dbg !1758
  br i1 %358, label %359, label %360, !dbg !1761

359:                                              ; preds = %356
  br label %1078, !dbg !1762

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1763
  %362 = load i64, i64* %31, align 8, !dbg !1764
  %363 = add i64 %362, 2, !dbg !1765
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1763
  %365 = load i8, i8* %364, align 1, !dbg !1763
  store i8 %365, i8* %35, align 1, !dbg !1766
  %366 = load i64, i64* %31, align 8, !dbg !1767
  %367 = add i64 %366, 2, !dbg !1767
  store i64 %367, i64* %31, align 8, !dbg !1767
  br label %368, !dbg !1768

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1769
  %370 = load i64, i64* %12, align 8, !dbg !1769
  %371 = icmp ult i64 %369, %370, !dbg !1769
  br i1 %371, label %372, label %376, !dbg !1772

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1769
  %374 = load i64, i64* %21, align 8, !dbg !1769
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1769
  store i8 63, i8* %375, align 1, !dbg !1769
  br label %376, !dbg !1769

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1772
  %378 = add i64 %377, 1, !dbg !1772
  store i64 %378, i64* %21, align 8, !dbg !1772
  br label %379, !dbg !1772

379:                                              ; preds = %376
  br label %380, !dbg !1773

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1774
  %382 = load i64, i64* %12, align 8, !dbg !1774
  %383 = icmp ult i64 %381, %382, !dbg !1774
  br i1 %383, label %384, label %388, !dbg !1777

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1774
  %386 = load i64, i64* %21, align 8, !dbg !1774
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1774
  store i8 34, i8* %387, align 1, !dbg !1774
  br label %388, !dbg !1774

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1777
  %390 = add i64 %389, 1, !dbg !1777
  store i64 %390, i64* %21, align 8, !dbg !1777
  br label %391, !dbg !1777

391:                                              ; preds = %388
  br label %392, !dbg !1778

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1779
  %394 = load i64, i64* %12, align 8, !dbg !1779
  %395 = icmp ult i64 %393, %394, !dbg !1779
  br i1 %395, label %396, label %400, !dbg !1782

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1779
  %398 = load i64, i64* %21, align 8, !dbg !1779
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1779
  store i8 34, i8* %399, align 1, !dbg !1779
  br label %400, !dbg !1779

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1782
  %402 = add i64 %401, 1, !dbg !1782
  store i64 %402, i64* %21, align 8, !dbg !1782
  br label %403, !dbg !1782

403:                                              ; preds = %400
  br label %404, !dbg !1783

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1784
  %406 = load i64, i64* %12, align 8, !dbg !1784
  %407 = icmp ult i64 %405, %406, !dbg !1784
  br i1 %407, label %408, label %412, !dbg !1787

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1784
  %410 = load i64, i64* %21, align 8, !dbg !1784
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1784
  store i8 63, i8* %411, align 1, !dbg !1784
  br label %412, !dbg !1784

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1787
  %414 = add i64 %413, 1, !dbg !1787
  store i64 %414, i64* %21, align 8, !dbg !1787
  br label %415, !dbg !1787

415:                                              ; preds = %412
  br label %416, !dbg !1788

416:                                              ; preds = %349, %415
  br label %417, !dbg !1789

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1790

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1791

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1792
  br label %454, !dbg !1794

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1795
  br label %454, !dbg !1796

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1797
  br label %454, !dbg !1798

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1799
  br label %446, !dbg !1800

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1801
  br label %446, !dbg !1802

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1803
  br label %446, !dbg !1804

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1805
  br label %454, !dbg !1806

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1807
  store i8 %427, i8* %36, align 1, !dbg !1808
  %428 = load i32, i32* %15, align 4, !dbg !1809
  %429 = icmp eq i32 %428, 2, !dbg !1811
  br i1 %429, label %430, label %435, !dbg !1812

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1813
  %432 = trunc i8 %431 to i1, !dbg !1813
  br i1 %432, label %433, label %434, !dbg !1816

433:                                              ; preds = %430
  br label %1078, !dbg !1817

434:                                              ; preds = %430
  br label %942, !dbg !1818

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1819
  %437 = trunc i8 %436 to i1, !dbg !1819
  br i1 %437, label %438, label %445, !dbg !1821

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1822
  %440 = trunc i8 %439 to i1, !dbg !1822
  br i1 %440, label %441, label %445, !dbg !1823

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1824
  %443 = icmp ne i64 %442, 0, !dbg !1824
  br i1 %443, label %444, label %445, !dbg !1825

444:                                              ; preds = %441
  br label %942, !dbg !1826

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1824

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1827), !dbg !1828
  %447 = load i32, i32* %15, align 4, !dbg !1829
  %448 = icmp eq i32 %447, 2, !dbg !1831
  br i1 %448, label %449, label %453, !dbg !1832

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1833
  %451 = trunc i8 %450 to i1, !dbg !1833
  br i1 %451, label %452, label %453, !dbg !1834

452:                                              ; preds = %449
  br label %1078, !dbg !1835

453:                                              ; preds = %449, %446
  br label %454, !dbg !1833

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1836), !dbg !1837
  %455 = load i8, i8* %25, align 1, !dbg !1838
  %456 = trunc i8 %455 to i1, !dbg !1838
  br i1 %456, label %457, label %459, !dbg !1840

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1841
  store i8 %458, i8* %35, align 1, !dbg !1843
  br label %880, !dbg !1844

459:                                              ; preds = %454
  br label %849, !dbg !1845

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1846
  %462 = icmp eq i64 %461, -1, !dbg !1848
  br i1 %462, label %463, label %469, !dbg !1849

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1850
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1850
  %466 = load i8, i8* %465, align 1, !dbg !1850
  %467 = zext i8 %466 to i32, !dbg !1850
  %468 = icmp eq i32 %467, 0, !dbg !1851
  br i1 %468, label %473, label %472, !dbg !1846

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1852
  %471 = icmp eq i64 %470, 1, !dbg !1853
  br i1 %471, label %473, label %472, !dbg !1849

472:                                              ; preds = %469, %463
  br label %849, !dbg !1854

473:                                              ; preds = %469, %463
  br label %474, !dbg !1855

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1856
  %476 = icmp ne i64 %475, 0, !dbg !1858
  br i1 %476, label %477, label %478, !dbg !1859

477:                                              ; preds = %474
  br label %849, !dbg !1860

478:                                              ; preds = %474
  br label %479, !dbg !1861

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1862
  br label %480, !dbg !1863

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1864
  %482 = icmp eq i32 %481, 2, !dbg !1866
  br i1 %482, label %483, label %487, !dbg !1867

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1868
  %485 = trunc i8 %484 to i1, !dbg !1868
  br i1 %485, label %486, label %487, !dbg !1869

486:                                              ; preds = %483
  br label %1078, !dbg !1870

487:                                              ; preds = %483, %480
  br label %849, !dbg !1871

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1872
  store i8 1, i8* %34, align 1, !dbg !1873
  %489 = load i32, i32* %15, align 4, !dbg !1874
  %490 = icmp eq i32 %489, 2, !dbg !1876
  br i1 %490, label %491, label %540, !dbg !1877

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1878
  %493 = trunc i8 %492 to i1, !dbg !1878
  br i1 %493, label %494, label %495, !dbg !1881

494:                                              ; preds = %491
  br label %1078, !dbg !1882

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1883
  %497 = icmp ne i64 %496, 0, !dbg !1883
  br i1 %497, label %498, label %503, !dbg !1885

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1886
  %500 = icmp ne i64 %499, 0, !dbg !1886
  br i1 %500, label %503, label %501, !dbg !1887

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1888
  store i64 %502, i64* %22, align 8, !dbg !1890
  store i64 0, i64* %12, align 8, !dbg !1891
  br label %503, !dbg !1892

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1893

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1894
  %506 = load i64, i64* %12, align 8, !dbg !1894
  %507 = icmp ult i64 %505, %506, !dbg !1894
  br i1 %507, label %508, label %512, !dbg !1897

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1894
  %510 = load i64, i64* %21, align 8, !dbg !1894
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1894
  store i8 39, i8* %511, align 1, !dbg !1894
  br label %512, !dbg !1894

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1897
  %514 = add i64 %513, 1, !dbg !1897
  store i64 %514, i64* %21, align 8, !dbg !1897
  br label %515, !dbg !1897

515:                                              ; preds = %512
  br label %516, !dbg !1898

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1899
  %518 = load i64, i64* %12, align 8, !dbg !1899
  %519 = icmp ult i64 %517, %518, !dbg !1899
  br i1 %519, label %520, label %524, !dbg !1902

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1899
  %522 = load i64, i64* %21, align 8, !dbg !1899
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1899
  store i8 92, i8* %523, align 1, !dbg !1899
  br label %524, !dbg !1899

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1902
  %526 = add i64 %525, 1, !dbg !1902
  store i64 %526, i64* %21, align 8, !dbg !1902
  br label %527, !dbg !1902

527:                                              ; preds = %524
  br label %528, !dbg !1903

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1904
  %530 = load i64, i64* %12, align 8, !dbg !1904
  %531 = icmp ult i64 %529, %530, !dbg !1904
  br i1 %531, label %532, label %536, !dbg !1907

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1904
  %534 = load i64, i64* %21, align 8, !dbg !1904
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1904
  store i8 39, i8* %535, align 1, !dbg !1904
  br label %536, !dbg !1904

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1907
  %538 = add i64 %537, 1, !dbg !1907
  store i64 %538, i64* %21, align 8, !dbg !1907
  br label %539, !dbg !1907

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1908
  br label %540, !dbg !1909

540:                                              ; preds = %539, %488
  br label %849, !dbg !1910

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1911
  br label %849, !dbg !1912

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1913, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1916, metadata !DIExpression()), !dbg !1917
  %543 = load i8, i8* %20, align 1, !dbg !1918
  %544 = trunc i8 %543 to i1, !dbg !1918
  br i1 %544, label %545, label %557, !dbg !1920

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1921
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1923
  %547 = load i16*, i16** %546, align 8, !dbg !1923
  %548 = load i8, i8* %35, align 1, !dbg !1923
  %549 = zext i8 %548 to i32, !dbg !1923
  %550 = sext i32 %549 to i64, !dbg !1923
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1923
  %552 = load i16, i16* %551, align 2, !dbg !1923
  %553 = zext i16 %552 to i32, !dbg !1923
  %554 = and i32 %553, 16384, !dbg !1923
  %555 = icmp ne i32 %554, 0, !dbg !1924
  %556 = zext i1 %555 to i8, !dbg !1925
  store i8 %556, i8* %38, align 1, !dbg !1925
  br label %648, !dbg !1926

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1927, metadata !DIExpression()), !dbg !1939
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1940
  store i64 0, i64* %37, align 8, !dbg !1941
  store i8 1, i8* %38, align 1, !dbg !1942
  %558 = load i64, i64* %14, align 8, !dbg !1943
  %559 = icmp eq i64 %558, -1, !dbg !1945
  br i1 %559, label %560, label %563, !dbg !1946

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1947
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1948
  store i64 %562, i64* %14, align 8, !dbg !1949
  br label %563, !dbg !1950

563:                                              ; preds = %560, %557
  br label %564, !dbg !1951

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1952, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1957, metadata !DIExpression()), !dbg !1958
  %565 = load i8*, i8** %13, align 8, !dbg !1959
  %566 = load i64, i64* %31, align 8, !dbg !1960
  %567 = load i64, i64* %37, align 8, !dbg !1961
  %568 = add i64 %566, %567, !dbg !1962
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1959
  %570 = load i64, i64* %14, align 8, !dbg !1963
  %571 = load i64, i64* %31, align 8, !dbg !1964
  %572 = load i64, i64* %37, align 8, !dbg !1965
  %573 = add i64 %571, %572, !dbg !1966
  %574 = sub i64 %570, %573, !dbg !1967
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1968
  store i64 %575, i64* %41, align 8, !dbg !1958
  %576 = load i64, i64* %41, align 8, !dbg !1969
  %577 = icmp eq i64 %576, 0, !dbg !1971
  br i1 %577, label %578, label %579, !dbg !1972

578:                                              ; preds = %564
  br label %647, !dbg !1973

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1974
  %581 = icmp eq i64 %580, -1, !dbg !1976
  br i1 %581, label %582, label %583, !dbg !1977

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1978
  br label %647, !dbg !1980

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1981
  %585 = icmp eq i64 %584, -2, !dbg !1983
  br i1 %585, label %586, label %608, !dbg !1984

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1985
  br label %587, !dbg !1987

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1988
  %589 = load i64, i64* %37, align 8, !dbg !1989
  %590 = add i64 %588, %589, !dbg !1990
  %591 = load i64, i64* %14, align 8, !dbg !1991
  %592 = icmp ult i64 %590, %591, !dbg !1992
  br i1 %592, label %593, label %602, !dbg !1993

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1994
  %595 = load i64, i64* %31, align 8, !dbg !1995
  %596 = load i64, i64* %37, align 8, !dbg !1996
  %597 = add i64 %595, %596, !dbg !1997
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1994
  %599 = load i8, i8* %598, align 1, !dbg !1994
  %600 = zext i8 %599 to i32, !dbg !1994
  %601 = icmp ne i32 %600, 0, !dbg !1993
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1998
  br i1 %603, label %604, label %607, !dbg !1987

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1999
  %606 = add i64 %605, 1, !dbg !1999
  store i64 %606, i64* %37, align 8, !dbg !1999
  br label %587, !dbg !1987, !llvm.loop !2000

607:                                              ; preds = %602
  br label %647, !dbg !2001

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2002
  %610 = trunc i8 %609 to i1, !dbg !2002
  br i1 %610, label %611, label %635, !dbg !2005

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2006
  %613 = icmp eq i32 %612, 2, !dbg !2007
  br i1 %613, label %614, label %635, !dbg !2008

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2009, metadata !DIExpression()), !dbg !2012
  store i64 1, i64* %42, align 8, !dbg !2012
  br label %615, !dbg !2013

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2014
  %617 = load i64, i64* %41, align 8, !dbg !2016
  %618 = icmp ult i64 %616, %617, !dbg !2017
  br i1 %618, label %619, label %634, !dbg !2018

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2019
  %621 = load i64, i64* %31, align 8, !dbg !2020
  %622 = load i64, i64* %37, align 8, !dbg !2021
  %623 = add i64 %621, %622, !dbg !2022
  %624 = load i64, i64* %42, align 8, !dbg !2023
  %625 = add i64 %623, %624, !dbg !2024
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2019
  %627 = load i8, i8* %626, align 1, !dbg !2019
  %628 = zext i8 %627 to i32, !dbg !2019
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2025

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2026

630:                                              ; preds = %619
  br label %631, !dbg !2028

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2029
  %633 = add i64 %632, 1, !dbg !2029
  store i64 %633, i64* %42, align 8, !dbg !2029
  br label %615, !dbg !2030, !llvm.loop !2031

634:                                              ; preds = %615
  br label %635, !dbg !2033

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2034
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2036
  %638 = icmp ne i32 %637, 0, !dbg !2036
  br i1 %638, label %640, label %639, !dbg !2037

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2038
  br label %640, !dbg !2039

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2040
  %642 = load i64, i64* %37, align 8, !dbg !2041
  %643 = add i64 %642, %641, !dbg !2041
  store i64 %643, i64* %37, align 8, !dbg !2041
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2042

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2043
  %650 = trunc i8 %649 to i1, !dbg !2043
  %651 = zext i1 %650 to i8, !dbg !2044
  store i8 %651, i8* %34, align 1, !dbg !2044
  %652 = load i64, i64* %37, align 8, !dbg !2045
  %653 = icmp ult i64 1, %652, !dbg !2047
  br i1 %653, label %660, label %654, !dbg !2048

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2049
  %656 = trunc i8 %655 to i1, !dbg !2049
  br i1 %656, label %657, label %848, !dbg !2050

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2051
  %659 = trunc i8 %658 to i1, !dbg !2051
  br i1 %659, label %848, label %660, !dbg !2052

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2053, metadata !DIExpression()), !dbg !2055
  %661 = load i64, i64* %31, align 8, !dbg !2056
  %662 = load i64, i64* %37, align 8, !dbg !2057
  %663 = add i64 %661, %662, !dbg !2058
  store i64 %663, i64* %43, align 8, !dbg !2055
  br label %664, !dbg !2059

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2060
  %666 = trunc i8 %665 to i1, !dbg !2060
  br i1 %666, label %667, label %772, !dbg !2065

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2066
  %669 = trunc i8 %668 to i1, !dbg !2066
  br i1 %669, label %772, label %670, !dbg !2067

670:                                              ; preds = %667
  br label %671, !dbg !2068

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2070
  %673 = trunc i8 %672 to i1, !dbg !2070
  br i1 %673, label %674, label %675, !dbg !2073

674:                                              ; preds = %671
  br label %1078, !dbg !2070

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2073
  %676 = load i32, i32* %15, align 4, !dbg !2074
  %677 = icmp eq i32 %676, 2, !dbg !2074
  br i1 %677, label %678, label %718, !dbg !2074

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2074
  %680 = trunc i8 %679 to i1, !dbg !2074
  br i1 %680, label %718, label %681, !dbg !2073

681:                                              ; preds = %678
  br label %682, !dbg !2076

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2078
  %684 = load i64, i64* %12, align 8, !dbg !2078
  %685 = icmp ult i64 %683, %684, !dbg !2078
  br i1 %685, label %686, label %690, !dbg !2081

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2078
  %688 = load i64, i64* %21, align 8, !dbg !2078
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2078
  store i8 39, i8* %689, align 1, !dbg !2078
  br label %690, !dbg !2078

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2081
  %692 = add i64 %691, 1, !dbg !2081
  store i64 %692, i64* %21, align 8, !dbg !2081
  br label %693, !dbg !2081

693:                                              ; preds = %690
  br label %694, !dbg !2076

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2082
  %696 = load i64, i64* %12, align 8, !dbg !2082
  %697 = icmp ult i64 %695, %696, !dbg !2082
  br i1 %697, label %698, label %702, !dbg !2085

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2082
  %700 = load i64, i64* %21, align 8, !dbg !2082
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2082
  store i8 36, i8* %701, align 1, !dbg !2082
  br label %702, !dbg !2082

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2085
  %704 = add i64 %703, 1, !dbg !2085
  store i64 %704, i64* %21, align 8, !dbg !2085
  br label %705, !dbg !2085

705:                                              ; preds = %702
  br label %706, !dbg !2076

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2086
  %708 = load i64, i64* %12, align 8, !dbg !2086
  %709 = icmp ult i64 %707, %708, !dbg !2086
  br i1 %709, label %710, label %714, !dbg !2089

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2086
  %712 = load i64, i64* %21, align 8, !dbg !2086
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2086
  store i8 39, i8* %713, align 1, !dbg !2086
  br label %714, !dbg !2086

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2089
  %716 = add i64 %715, 1, !dbg !2089
  store i64 %716, i64* %21, align 8, !dbg !2089
  br label %717, !dbg !2089

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2076
  br label %718, !dbg !2076

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2073

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2090
  %721 = load i64, i64* %12, align 8, !dbg !2090
  %722 = icmp ult i64 %720, %721, !dbg !2090
  br i1 %722, label %723, label %727, !dbg !2093

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2090
  %725 = load i64, i64* %21, align 8, !dbg !2090
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2090
  store i8 92, i8* %726, align 1, !dbg !2090
  br label %727, !dbg !2090

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2093
  %729 = add i64 %728, 1, !dbg !2093
  store i64 %729, i64* %21, align 8, !dbg !2093
  br label %730, !dbg !2093

730:                                              ; preds = %727
  br label %731, !dbg !2073

731:                                              ; preds = %730
  br label %732, !dbg !2094

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2095
  %734 = load i64, i64* %12, align 8, !dbg !2095
  %735 = icmp ult i64 %733, %734, !dbg !2095
  br i1 %735, label %736, label %745, !dbg !2098

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2095
  %738 = zext i8 %737 to i32, !dbg !2095
  %739 = ashr i32 %738, 6, !dbg !2095
  %740 = add nsw i32 48, %739, !dbg !2095
  %741 = trunc i32 %740 to i8, !dbg !2095
  %742 = load i8*, i8** %11, align 8, !dbg !2095
  %743 = load i64, i64* %21, align 8, !dbg !2095
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2095
  store i8 %741, i8* %744, align 1, !dbg !2095
  br label %745, !dbg !2095

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2098
  %747 = add i64 %746, 1, !dbg !2098
  store i64 %747, i64* %21, align 8, !dbg !2098
  br label %748, !dbg !2098

748:                                              ; preds = %745
  br label %749, !dbg !2099

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2100
  %751 = load i64, i64* %12, align 8, !dbg !2100
  %752 = icmp ult i64 %750, %751, !dbg !2100
  br i1 %752, label %753, label %763, !dbg !2103

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2100
  %755 = zext i8 %754 to i32, !dbg !2100
  %756 = ashr i32 %755, 3, !dbg !2100
  %757 = and i32 %756, 7, !dbg !2100
  %758 = add nsw i32 48, %757, !dbg !2100
  %759 = trunc i32 %758 to i8, !dbg !2100
  %760 = load i8*, i8** %11, align 8, !dbg !2100
  %761 = load i64, i64* %21, align 8, !dbg !2100
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2100
  store i8 %759, i8* %762, align 1, !dbg !2100
  br label %763, !dbg !2100

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2103
  %765 = add i64 %764, 1, !dbg !2103
  store i64 %765, i64* %21, align 8, !dbg !2103
  br label %766, !dbg !2103

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2104
  %768 = zext i8 %767 to i32, !dbg !2104
  %769 = and i32 %768, 7, !dbg !2105
  %770 = add nsw i32 48, %769, !dbg !2106
  %771 = trunc i32 %770 to i8, !dbg !2107
  store i8 %771, i8* %35, align 1, !dbg !2108
  br label %789, !dbg !2109

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2110
  %774 = trunc i8 %773 to i1, !dbg !2110
  br i1 %774, label %775, label %788, !dbg !2112

775:                                              ; preds = %772
  br label %776, !dbg !2113

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2115
  %778 = load i64, i64* %12, align 8, !dbg !2115
  %779 = icmp ult i64 %777, %778, !dbg !2115
  br i1 %779, label %780, label %784, !dbg !2118

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2115
  %782 = load i64, i64* %21, align 8, !dbg !2115
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2115
  store i8 92, i8* %783, align 1, !dbg !2115
  br label %784, !dbg !2115

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2118
  %786 = add i64 %785, 1, !dbg !2118
  store i64 %786, i64* %21, align 8, !dbg !2118
  br label %787, !dbg !2118

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2119
  br label %788, !dbg !2120

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2121
  %791 = load i64, i64* %31, align 8, !dbg !2123
  %792 = add i64 %791, 1, !dbg !2124
  %793 = icmp ule i64 %790, %792, !dbg !2125
  br i1 %793, label %794, label %795, !dbg !2126

794:                                              ; preds = %789
  br label %847, !dbg !2127

795:                                              ; preds = %789
  br label %796, !dbg !2128

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2129
  %798 = trunc i8 %797 to i1, !dbg !2129
  br i1 %798, label %799, label %827, !dbg !2129

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2129
  %801 = trunc i8 %800 to i1, !dbg !2129
  br i1 %801, label %827, label %802, !dbg !2132

802:                                              ; preds = %799
  br label %803, !dbg !2133

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2135
  %805 = load i64, i64* %12, align 8, !dbg !2135
  %806 = icmp ult i64 %804, %805, !dbg !2135
  br i1 %806, label %807, label %811, !dbg !2138

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2135
  %809 = load i64, i64* %21, align 8, !dbg !2135
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2135
  store i8 39, i8* %810, align 1, !dbg !2135
  br label %811, !dbg !2135

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2138
  %813 = add i64 %812, 1, !dbg !2138
  store i64 %813, i64* %21, align 8, !dbg !2138
  br label %814, !dbg !2138

814:                                              ; preds = %811
  br label %815, !dbg !2133

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2139
  %817 = load i64, i64* %12, align 8, !dbg !2139
  %818 = icmp ult i64 %816, %817, !dbg !2139
  br i1 %818, label %819, label %823, !dbg !2142

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2139
  %821 = load i64, i64* %21, align 8, !dbg !2139
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2139
  store i8 39, i8* %822, align 1, !dbg !2139
  br label %823, !dbg !2139

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2142
  %825 = add i64 %824, 1, !dbg !2142
  store i64 %825, i64* %21, align 8, !dbg !2142
  br label %826, !dbg !2142

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2133
  br label %827, !dbg !2133

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2132

828:                                              ; preds = %827
  br label %829, !dbg !2143

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2144
  %831 = load i64, i64* %12, align 8, !dbg !2144
  %832 = icmp ult i64 %830, %831, !dbg !2144
  br i1 %832, label %833, label %838, !dbg !2147

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2144
  %835 = load i8*, i8** %11, align 8, !dbg !2144
  %836 = load i64, i64* %21, align 8, !dbg !2144
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2144
  store i8 %834, i8* %837, align 1, !dbg !2144
  br label %838, !dbg !2144

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2147
  %840 = add i64 %839, 1, !dbg !2147
  store i64 %840, i64* %21, align 8, !dbg !2147
  br label %841, !dbg !2147

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2148
  %843 = load i64, i64* %31, align 8, !dbg !2149
  %844 = add i64 %843, 1, !dbg !2149
  store i64 %844, i64* %31, align 8, !dbg !2149
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2148
  %846 = load i8, i8* %845, align 1, !dbg !2148
  store i8 %846, i8* %35, align 1, !dbg !2150
  br label %664, !dbg !2151, !llvm.loop !2152

847:                                              ; preds = %794
  br label %942, !dbg !2155

848:                                              ; preds = %657, %654
  br label %849, !dbg !2156

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2157
  %851 = trunc i8 %850 to i1, !dbg !2157
  br i1 %851, label %852, label %855, !dbg !2159

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2160
  %854 = icmp ne i32 %853, 2, !dbg !2161
  br i1 %854, label %858, label %855, !dbg !2162

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2163
  %857 = trunc i8 %856 to i1, !dbg !2163
  br i1 %857, label %858, label %875, !dbg !2164

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2165
  %860 = icmp ne i32* %859, null, !dbg !2165
  br i1 %860, label %861, label %875, !dbg !2166

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2167
  %863 = load i8, i8* %35, align 1, !dbg !2168
  %864 = zext i8 %863 to i64, !dbg !2168
  %865 = udiv i64 %864, 32, !dbg !2169
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2167
  %867 = load i32, i32* %866, align 4, !dbg !2167
  %868 = load i8, i8* %35, align 1, !dbg !2170
  %869 = zext i8 %868 to i64, !dbg !2170
  %870 = urem i64 %869, 32, !dbg !2171
  %871 = trunc i64 %870 to i32, !dbg !2172
  %872 = lshr i32 %867, %871, !dbg !2172
  %873 = and i32 %872, 1, !dbg !2173
  %874 = icmp ne i32 %873, 0, !dbg !2173
  br i1 %874, label %879, label %875, !dbg !2174

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2175
  %877 = trunc i8 %876 to i1, !dbg !2175
  br i1 %877, label %879, label %878, !dbg !2176

878:                                              ; preds = %875
  br label %942, !dbg !2177

879:                                              ; preds = %875, %861
  br label %880, !dbg !2175

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2178), !dbg !2179
  br label %881, !dbg !2180

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2181
  %883 = trunc i8 %882 to i1, !dbg !2181
  br i1 %883, label %884, label %885, !dbg !2184

884:                                              ; preds = %881
  br label %1078, !dbg !2181

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2184
  %886 = load i32, i32* %15, align 4, !dbg !2185
  %887 = icmp eq i32 %886, 2, !dbg !2185
  br i1 %887, label %888, label %928, !dbg !2185

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2185
  %890 = trunc i8 %889 to i1, !dbg !2185
  br i1 %890, label %928, label %891, !dbg !2184

891:                                              ; preds = %888
  br label %892, !dbg !2187

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2189
  %894 = load i64, i64* %12, align 8, !dbg !2189
  %895 = icmp ult i64 %893, %894, !dbg !2189
  br i1 %895, label %896, label %900, !dbg !2192

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2189
  %898 = load i64, i64* %21, align 8, !dbg !2189
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2189
  store i8 39, i8* %899, align 1, !dbg !2189
  br label %900, !dbg !2189

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2192
  %902 = add i64 %901, 1, !dbg !2192
  store i64 %902, i64* %21, align 8, !dbg !2192
  br label %903, !dbg !2192

903:                                              ; preds = %900
  br label %904, !dbg !2187

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2193
  %906 = load i64, i64* %12, align 8, !dbg !2193
  %907 = icmp ult i64 %905, %906, !dbg !2193
  br i1 %907, label %908, label %912, !dbg !2196

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2193
  %910 = load i64, i64* %21, align 8, !dbg !2193
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2193
  store i8 36, i8* %911, align 1, !dbg !2193
  br label %912, !dbg !2193

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2196
  %914 = add i64 %913, 1, !dbg !2196
  store i64 %914, i64* %21, align 8, !dbg !2196
  br label %915, !dbg !2196

915:                                              ; preds = %912
  br label %916, !dbg !2187

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2197
  %918 = load i64, i64* %12, align 8, !dbg !2197
  %919 = icmp ult i64 %917, %918, !dbg !2197
  br i1 %919, label %920, label %924, !dbg !2200

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2197
  %922 = load i64, i64* %21, align 8, !dbg !2197
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2197
  store i8 39, i8* %923, align 1, !dbg !2197
  br label %924, !dbg !2197

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2200
  %926 = add i64 %925, 1, !dbg !2200
  store i64 %926, i64* %21, align 8, !dbg !2200
  br label %927, !dbg !2200

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2187
  br label %928, !dbg !2187

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2184

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2201
  %931 = load i64, i64* %12, align 8, !dbg !2201
  %932 = icmp ult i64 %930, %931, !dbg !2201
  br i1 %932, label %933, label %937, !dbg !2204

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2201
  %935 = load i64, i64* %21, align 8, !dbg !2201
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2201
  store i8 92, i8* %936, align 1, !dbg !2201
  br label %937, !dbg !2201

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2204
  %939 = add i64 %938, 1, !dbg !2204
  store i64 %939, i64* %21, align 8, !dbg !2204
  br label %940, !dbg !2204

940:                                              ; preds = %937
  br label %941, !dbg !2184

941:                                              ; preds = %940
  br label %942, !dbg !2184

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2205), !dbg !2206
  br label %943, !dbg !2207

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2208
  %945 = trunc i8 %944 to i1, !dbg !2208
  br i1 %945, label %946, label %974, !dbg !2208

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2208
  %948 = trunc i8 %947 to i1, !dbg !2208
  br i1 %948, label %974, label %949, !dbg !2211

949:                                              ; preds = %946
  br label %950, !dbg !2212

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2214
  %952 = load i64, i64* %12, align 8, !dbg !2214
  %953 = icmp ult i64 %951, %952, !dbg !2214
  br i1 %953, label %954, label %958, !dbg !2217

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2214
  %956 = load i64, i64* %21, align 8, !dbg !2214
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2214
  store i8 39, i8* %957, align 1, !dbg !2214
  br label %958, !dbg !2214

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2217
  %960 = add i64 %959, 1, !dbg !2217
  store i64 %960, i64* %21, align 8, !dbg !2217
  br label %961, !dbg !2217

961:                                              ; preds = %958
  br label %962, !dbg !2212

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2218
  %964 = load i64, i64* %12, align 8, !dbg !2218
  %965 = icmp ult i64 %963, %964, !dbg !2218
  br i1 %965, label %966, label %970, !dbg !2221

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2218
  %968 = load i64, i64* %21, align 8, !dbg !2218
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2218
  store i8 39, i8* %969, align 1, !dbg !2218
  br label %970, !dbg !2218

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2221
  %972 = add i64 %971, 1, !dbg !2221
  store i64 %972, i64* %21, align 8, !dbg !2221
  br label %973, !dbg !2221

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2212
  br label %974, !dbg !2212

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2211

975:                                              ; preds = %974
  br label %976, !dbg !2222

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2223
  %978 = load i64, i64* %12, align 8, !dbg !2223
  %979 = icmp ult i64 %977, %978, !dbg !2223
  br i1 %979, label %980, label %985, !dbg !2226

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2223
  %982 = load i8*, i8** %11, align 8, !dbg !2223
  %983 = load i64, i64* %21, align 8, !dbg !2223
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2223
  store i8 %981, i8* %984, align 1, !dbg !2223
  br label %985, !dbg !2223

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2226
  %987 = add i64 %986, 1, !dbg !2226
  store i64 %987, i64* %21, align 8, !dbg !2226
  br label %988, !dbg !2226

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2227
  %990 = trunc i8 %989 to i1, !dbg !2227
  br i1 %990, label %992, label %991, !dbg !2229

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2230
  br label %992, !dbg !2231

992:                                              ; preds = %991, %988
  br label %993, !dbg !2232

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2233
  %995 = add i64 %994, 1, !dbg !2233
  store i64 %995, i64* %31, align 8, !dbg !2233
  br label %139, !dbg !2234, !llvm.loop !2235

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2237
  %998 = icmp eq i64 %997, 0, !dbg !2239
  br i1 %998, label %999, label %1006, !dbg !2240

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2241
  %1001 = icmp eq i32 %1000, 2, !dbg !2242
  br i1 %1001, label %1002, label %1006, !dbg !2243

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2244
  %1004 = trunc i8 %1003 to i1, !dbg !2244
  br i1 %1004, label %1005, label %1006, !dbg !2245

1005:                                             ; preds = %1002
  br label %1078, !dbg !2246

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2247
  %1008 = icmp eq i32 %1007, 2, !dbg !2249
  br i1 %1008, label %1009, label %1038, !dbg !2250

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2251
  %1011 = trunc i8 %1010 to i1, !dbg !2251
  br i1 %1011, label %1038, label %1012, !dbg !2252

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2253
  %1014 = trunc i8 %1013 to i1, !dbg !2253
  br i1 %1014, label %1015, label %1038, !dbg !2254

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2255
  %1017 = trunc i8 %1016 to i1, !dbg !2255
  br i1 %1017, label %1018, label %1028, !dbg !2258

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2259
  %1020 = load i64, i64* %22, align 8, !dbg !2260
  %1021 = load i8*, i8** %13, align 8, !dbg !2261
  %1022 = load i64, i64* %14, align 8, !dbg !2262
  %1023 = load i32, i32* %16, align 4, !dbg !2263
  %1024 = load i32*, i32** %17, align 8, !dbg !2264
  %1025 = load i8*, i8** %18, align 8, !dbg !2265
  %1026 = load i8*, i8** %19, align 8, !dbg !2266
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2267
  store i64 %1027, i64* %10, align 8, !dbg !2268
  br label %1096, !dbg !2268

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2269
  %1030 = icmp ne i64 %1029, 0, !dbg !2269
  br i1 %1030, label %1036, label %1031, !dbg !2271

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2272
  %1033 = icmp ne i64 %1032, 0, !dbg !2272
  br i1 %1033, label %1034, label %1036, !dbg !2273

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2274
  store i64 %1035, i64* %12, align 8, !dbg !2276
  store i64 0, i64* %21, align 8, !dbg !2277
  br label %51, !dbg !2278

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2279

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2280
  %1040 = icmp ne i8* %1039, null, !dbg !2280
  br i1 %1040, label %1041, label %1068, !dbg !2282

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2283
  %1043 = trunc i8 %1042 to i1, !dbg !2283
  br i1 %1043, label %1068, label %1044, !dbg !2284

1044:                                             ; preds = %1041
  br label %1045, !dbg !2285

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2286
  %1047 = load i8, i8* %1046, align 1, !dbg !2289
  %1048 = icmp ne i8 %1047, 0, !dbg !2290
  br i1 %1048, label %1049, label %1067, !dbg !2290

1049:                                             ; preds = %1045
  br label %1050, !dbg !2291

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2292
  %1052 = load i64, i64* %12, align 8, !dbg !2292
  %1053 = icmp ult i64 %1051, %1052, !dbg !2292
  br i1 %1053, label %1054, label %1060, !dbg !2295

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2292
  %1056 = load i8, i8* %1055, align 1, !dbg !2292
  %1057 = load i8*, i8** %11, align 8, !dbg !2292
  %1058 = load i64, i64* %21, align 8, !dbg !2292
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2292
  store i8 %1056, i8* %1059, align 1, !dbg !2292
  br label %1060, !dbg !2292

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2295
  %1062 = add i64 %1061, 1, !dbg !2295
  store i64 %1062, i64* %21, align 8, !dbg !2295
  br label %1063, !dbg !2295

1063:                                             ; preds = %1060
  br label %1064, !dbg !2295

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2296
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2296
  store i8* %1066, i8** %23, align 8, !dbg !2296
  br label %1045, !dbg !2297, !llvm.loop !2298

1067:                                             ; preds = %1045
  br label %1068, !dbg !2299

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2300
  %1070 = load i64, i64* %12, align 8, !dbg !2302
  %1071 = icmp ult i64 %1069, %1070, !dbg !2303
  br i1 %1071, label %1072, label %1076, !dbg !2304

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2305
  %1074 = load i64, i64* %21, align 8, !dbg !2306
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2305
  store i8 0, i8* %1075, align 1, !dbg !2307
  br label %1076, !dbg !2305

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2308
  store i64 %1077, i64* %10, align 8, !dbg !2309
  br label %1096, !dbg !2309

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2310), !dbg !2311
  %1079 = load i32, i32* %15, align 4, !dbg !2312
  %1080 = icmp eq i32 %1079, 2, !dbg !2314
  br i1 %1080, label %1081, label %1085, !dbg !2315

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2316
  %1083 = trunc i8 %1082 to i1, !dbg !2316
  br i1 %1083, label %1084, label %1085, !dbg !2317

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2318
  br label %1085, !dbg !2319

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2320
  %1087 = load i64, i64* %12, align 8, !dbg !2321
  %1088 = load i8*, i8** %13, align 8, !dbg !2322
  %1089 = load i64, i64* %14, align 8, !dbg !2323
  %1090 = load i32, i32* %15, align 4, !dbg !2324
  %1091 = load i32, i32* %16, align 4, !dbg !2325
  %1092 = and i32 %1091, -3, !dbg !2326
  %1093 = load i8*, i8** %18, align 8, !dbg !2327
  %1094 = load i8*, i8** %19, align 8, !dbg !2328
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2329
  store i64 %1095, i64* %10, align 8, !dbg !2330
  br label %1096, !dbg !2330

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2331
  ret i64 %1097, !dbg !2331
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !183 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2332, metadata !DIExpression()), !dbg !2333
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2334, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2336, metadata !DIExpression()), !dbg !2337
  %9 = load i8*, i8** %4, align 8, !dbg !2338
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.103, i64 0, i64 0), i8* noundef %9) #18, !dbg !2338
  store i8* %10, i8** %6, align 8, !dbg !2337
  %11 = load i8*, i8** %6, align 8, !dbg !2339
  %12 = load i8*, i8** %4, align 8, !dbg !2341
  %13 = icmp ne i8* %11, %12, !dbg !2342
  br i1 %13, label %14, label %16, !dbg !2343

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2344
  store i8* %15, i8** %3, align 8, !dbg !2345
  br label %37, !dbg !2345

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2346, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2348, metadata !DIExpression()), !dbg !2349
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2350
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2351
  %18 = icmp eq i64 %17, 3, !dbg !2353
  br i1 %18, label %19, label %32, !dbg !2354

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2355
  %21 = icmp eq i32 %20, 8216, !dbg !2356
  br i1 %21, label %22, label %32, !dbg !2357

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2358
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2358
  %25 = load i8, i8* %24, align 1, !dbg !2358
  %26 = zext i8 %25 to i32, !dbg !2358
  %27 = icmp eq i32 %26, 39, !dbg !2359
  %28 = zext i1 %27 to i32, !dbg !2359
  %29 = sext i32 %28 to i64, !dbg !2360
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2360
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2360
  store i8* %31, i8** %3, align 8, !dbg !2361
  br label %37, !dbg !2361

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2362
  %34 = icmp eq i32 %33, 9, !dbg !2363
  %35 = zext i1 %34 to i64, !dbg !2362
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.100, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.102, i64 0, i64 0), !dbg !2362
  store i8* %36, i8** %3, align 8, !dbg !2364
  br label %37, !dbg !2364

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2365
  ret i8* %38, !dbg !2365
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2366 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2369, metadata !DIExpression()), !dbg !2370
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2371, metadata !DIExpression()), !dbg !2372
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2373, metadata !DIExpression()), !dbg !2374
  %7 = load i8*, i8** %4, align 8, !dbg !2375
  %8 = load i64, i64* %5, align 8, !dbg !2376
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2377
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2378
  ret i8* %10, !dbg !2379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2380 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2383, metadata !DIExpression()), !dbg !2384
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2385, metadata !DIExpression()), !dbg !2386
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2387, metadata !DIExpression()), !dbg !2388
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2389, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2391, metadata !DIExpression()), !dbg !2392
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2393
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2393
  br i1 %15, label %16, label %18, !dbg !2393

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2394
  br label %19, !dbg !2393

18:                                               ; preds = %4
  br label %19, !dbg !2393

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2393
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2392
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2395, metadata !DIExpression()), !dbg !2396
  %21 = call i32* @__errno_location() #21, !dbg !2397
  %22 = load i32, i32* %21, align 4, !dbg !2397
  store i32 %22, i32* %10, align 4, !dbg !2396
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2398, metadata !DIExpression()), !dbg !2399
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2400
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2401
  %25 = load i32, i32* %24, align 4, !dbg !2401
  %26 = load i64*, i64** %7, align 8, !dbg !2402
  %27 = icmp ne i64* %26, null, !dbg !2402
  %28 = zext i1 %27 to i64, !dbg !2402
  %29 = select i1 %27, i32 0, i32 1, !dbg !2402
  %30 = or i32 %25, %29, !dbg !2403
  store i32 %30, i32* %11, align 4, !dbg !2399
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2404, metadata !DIExpression()), !dbg !2405
  %31 = load i8*, i8** %5, align 8, !dbg !2406
  %32 = load i64, i64* %6, align 8, !dbg !2407
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2408
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2409
  %35 = load i32, i32* %34, align 8, !dbg !2409
  %36 = load i32, i32* %11, align 4, !dbg !2410
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2411
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2412
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2411
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2413
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2414
  %42 = load i8*, i8** %41, align 8, !dbg !2414
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2415
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2416
  %45 = load i8*, i8** %44, align 8, !dbg !2416
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2417
  %47 = add i64 %46, 1, !dbg !2418
  store i64 %47, i64* %12, align 8, !dbg !2405
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2419, metadata !DIExpression()), !dbg !2420
  %48 = load i64, i64* %12, align 8, !dbg !2421
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2422
  store i8* %49, i8** %13, align 8, !dbg !2420
  %50 = load i8*, i8** %13, align 8, !dbg !2423
  %51 = load i64, i64* %12, align 8, !dbg !2424
  %52 = load i8*, i8** %5, align 8, !dbg !2425
  %53 = load i64, i64* %6, align 8, !dbg !2426
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2427
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2428
  %56 = load i32, i32* %55, align 8, !dbg !2428
  %57 = load i32, i32* %11, align 4, !dbg !2429
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2430
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2431
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2430
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2432
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2433
  %63 = load i8*, i8** %62, align 8, !dbg !2433
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2434
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2435
  %66 = load i8*, i8** %65, align 8, !dbg !2435
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2436
  %68 = load i32, i32* %10, align 4, !dbg !2437
  %69 = call i32* @__errno_location() #21, !dbg !2438
  store i32 %68, i32* %69, align 4, !dbg !2439
  %70 = load i64*, i64** %7, align 8, !dbg !2440
  %71 = icmp ne i64* %70, null, !dbg !2440
  br i1 %71, label %72, label %76, !dbg !2442

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2443
  %74 = sub i64 %73, 1, !dbg !2444
  %75 = load i64*, i64** %7, align 8, !dbg !2445
  store i64 %74, i64* %75, align 8, !dbg !2446
  br label %76, !dbg !2447

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2448
  ret i8* %77, !dbg !2449
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2450 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2451, metadata !DIExpression()), !dbg !2452
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2453
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2452
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2454, metadata !DIExpression()), !dbg !2456
  store i32 1, i32* %2, align 4, !dbg !2456
  br label %4, !dbg !2457

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2458
  %6 = load i32, i32* @nslots, align 4, !dbg !2460
  %7 = icmp slt i32 %5, %6, !dbg !2461
  br i1 %7, label %8, label %18, !dbg !2462

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2463
  %10 = load i32, i32* %2, align 4, !dbg !2464
  %11 = sext i32 %10 to i64, !dbg !2463
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2463
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2465
  %14 = load i8*, i8** %13, align 8, !dbg !2465
  call void @free(i8* noundef %14) #18, !dbg !2466
  br label %15, !dbg !2466

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2467
  %17 = add nsw i32 %16, 1, !dbg !2467
  store i32 %17, i32* %2, align 4, !dbg !2467
  br label %4, !dbg !2468, !llvm.loop !2469

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2471
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2471
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2473
  %22 = load i8*, i8** %21, align 8, !dbg !2473
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2474
  br i1 %23, label %24, label %29, !dbg !2475

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2476
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2476
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2478
  %28 = load i8*, i8** %27, align 8, !dbg !2478
  call void @free(i8* noundef %28) #18, !dbg !2479
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2480
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2481
  br label %29, !dbg !2482

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2483
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2485
  br i1 %31, label %32, label %35, !dbg !2486

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2487
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2487
  call void @free(i8* noundef %34) #18, !dbg !2489
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2490
  br label %35, !dbg !2491

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2492
  ret void, !dbg !2493
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2494 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2497, metadata !DIExpression()), !dbg !2498
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2499, metadata !DIExpression()), !dbg !2500
  %5 = load i32, i32* %3, align 4, !dbg !2501
  %6 = load i8*, i8** %4, align 8, !dbg !2502
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2503
  ret i8* %7, !dbg !2504
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2505 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2508, metadata !DIExpression()), !dbg !2509
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2510, metadata !DIExpression()), !dbg !2511
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2512, metadata !DIExpression()), !dbg !2513
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2514, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2516, metadata !DIExpression()), !dbg !2517
  %18 = call i32* @__errno_location() #21, !dbg !2518
  %19 = load i32, i32* %18, align 4, !dbg !2518
  store i32 %19, i32* %9, align 4, !dbg !2517
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2519, metadata !DIExpression()), !dbg !2520
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2521
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2520
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2522, metadata !DIExpression()), !dbg !2523
  store i32 2147483647, i32* %11, align 4, !dbg !2523
  %21 = load i32, i32* %5, align 4, !dbg !2524
  %22 = icmp sle i32 0, %21, !dbg !2526
  br i1 %22, label %23, label %27, !dbg !2527

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2528
  %25 = load i32, i32* %11, align 4, !dbg !2529
  %26 = icmp slt i32 %24, %25, !dbg !2530
  br i1 %26, label %28, label %27, !dbg !2531

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2532
  unreachable, !dbg !2532

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2533
  %30 = load i32, i32* %5, align 4, !dbg !2535
  %31 = icmp sle i32 %29, %30, !dbg !2536
  br i1 %31, label %32, label %73, !dbg !2537

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2538, metadata !DIExpression()), !dbg !2540
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2541
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2542
  %35 = zext i1 %34 to i8, !dbg !2540
  store i8 %35, i8* %12, align 1, !dbg !2540
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2543, metadata !DIExpression()), !dbg !2544
  %36 = load i32, i32* @nslots, align 4, !dbg !2545
  %37 = sext i32 %36 to i64, !dbg !2545
  store i64 %37, i64* %13, align 8, !dbg !2544
  %38 = load i8, i8* %12, align 1, !dbg !2546
  %39 = trunc i8 %38 to i1, !dbg !2546
  br i1 %39, label %40, label %41, !dbg !2546

40:                                               ; preds = %32
  br label %43, !dbg !2546

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2547
  br label %43, !dbg !2546

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2546
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2546
  %46 = load i32, i32* %5, align 4, !dbg !2548
  %47 = load i32, i32* @nslots, align 4, !dbg !2549
  %48 = sub nsw i32 %46, %47, !dbg !2550
  %49 = add nsw i32 %48, 1, !dbg !2551
  %50 = sext i32 %49 to i64, !dbg !2548
  %51 = load i32, i32* %11, align 4, !dbg !2552
  %52 = sext i32 %51 to i64, !dbg !2552
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2553
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2553
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2554
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2555
  %55 = load i8, i8* %12, align 1, !dbg !2556
  %56 = trunc i8 %55 to i1, !dbg !2556
  br i1 %56, label %57, label %60, !dbg !2558

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2559
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2560
  br label %60, !dbg !2561

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2562
  %62 = load i32, i32* @nslots, align 4, !dbg !2563
  %63 = sext i32 %62 to i64, !dbg !2564
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2564
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2565
  %66 = load i64, i64* %13, align 8, !dbg !2566
  %67 = load i32, i32* @nslots, align 4, !dbg !2567
  %68 = sext i32 %67 to i64, !dbg !2567
  %69 = sub nsw i64 %66, %68, !dbg !2568
  %70 = mul i64 %69, 16, !dbg !2569
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2565
  %71 = load i64, i64* %13, align 8, !dbg !2570
  %72 = trunc i64 %71 to i32, !dbg !2570
  store i32 %72, i32* @nslots, align 4, !dbg !2571
  br label %73, !dbg !2572

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2573, metadata !DIExpression()), !dbg !2575
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2576
  %75 = load i32, i32* %5, align 4, !dbg !2577
  %76 = sext i32 %75 to i64, !dbg !2576
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2576
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2578
  %79 = load i64, i64* %78, align 8, !dbg !2578
  store i64 %79, i64* %14, align 8, !dbg !2575
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2579, metadata !DIExpression()), !dbg !2580
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2581
  %81 = load i32, i32* %5, align 4, !dbg !2582
  %82 = sext i32 %81 to i64, !dbg !2581
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2581
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2583
  %85 = load i8*, i8** %84, align 8, !dbg !2583
  store i8* %85, i8** %15, align 8, !dbg !2580
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2584, metadata !DIExpression()), !dbg !2585
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2586
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2587
  %88 = load i32, i32* %87, align 4, !dbg !2587
  %89 = or i32 %88, 1, !dbg !2588
  store i32 %89, i32* %16, align 4, !dbg !2585
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2589, metadata !DIExpression()), !dbg !2590
  %90 = load i8*, i8** %15, align 8, !dbg !2591
  %91 = load i64, i64* %14, align 8, !dbg !2592
  %92 = load i8*, i8** %6, align 8, !dbg !2593
  %93 = load i64, i64* %7, align 8, !dbg !2594
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2595
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2596
  %96 = load i32, i32* %95, align 8, !dbg !2596
  %97 = load i32, i32* %16, align 4, !dbg !2597
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2598
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2599
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2598
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2600
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2601
  %103 = load i8*, i8** %102, align 8, !dbg !2601
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2602
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2603
  %106 = load i8*, i8** %105, align 8, !dbg !2603
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2604
  store i64 %107, i64* %17, align 8, !dbg !2590
  %108 = load i64, i64* %14, align 8, !dbg !2605
  %109 = load i64, i64* %17, align 8, !dbg !2607
  %110 = icmp ule i64 %108, %109, !dbg !2608
  br i1 %110, label %111, label %149, !dbg !2609

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2610
  %113 = add i64 %112, 1, !dbg !2612
  store i64 %113, i64* %14, align 8, !dbg !2613
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2614
  %115 = load i32, i32* %5, align 4, !dbg !2615
  %116 = sext i32 %115 to i64, !dbg !2614
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2614
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2616
  store i64 %113, i64* %118, align 8, !dbg !2617
  %119 = load i8*, i8** %15, align 8, !dbg !2618
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2620
  br i1 %120, label %121, label %123, !dbg !2621

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2622
  call void @free(i8* noundef %122) #18, !dbg !2623
  br label %123, !dbg !2623

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2624
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2625
  store i8* %125, i8** %15, align 8, !dbg !2626
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2627
  %127 = load i32, i32* %5, align 4, !dbg !2628
  %128 = sext i32 %127 to i64, !dbg !2627
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2627
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2629
  store i8* %125, i8** %130, align 8, !dbg !2630
  %131 = load i8*, i8** %15, align 8, !dbg !2631
  %132 = load i64, i64* %14, align 8, !dbg !2632
  %133 = load i8*, i8** %6, align 8, !dbg !2633
  %134 = load i64, i64* %7, align 8, !dbg !2634
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2635
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2636
  %137 = load i32, i32* %136, align 8, !dbg !2636
  %138 = load i32, i32* %16, align 4, !dbg !2637
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2638
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2639
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2638
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2640
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2641
  %144 = load i8*, i8** %143, align 8, !dbg !2641
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2642
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2643
  %147 = load i8*, i8** %146, align 8, !dbg !2643
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2644
  br label %149, !dbg !2645

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2646
  %151 = call i32* @__errno_location() #21, !dbg !2647
  store i32 %150, i32* %151, align 4, !dbg !2648
  %152 = load i8*, i8** %15, align 8, !dbg !2649
  ret i8* %152, !dbg !2650
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2651 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2654, metadata !DIExpression()), !dbg !2655
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2656, metadata !DIExpression()), !dbg !2657
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2658, metadata !DIExpression()), !dbg !2659
  %7 = load i32, i32* %4, align 4, !dbg !2660
  %8 = load i8*, i8** %5, align 8, !dbg !2661
  %9 = load i64, i64* %6, align 8, !dbg !2662
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2663
  ret i8* %10, !dbg !2664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2665 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2668, metadata !DIExpression()), !dbg !2669
  %3 = load i8*, i8** %2, align 8, !dbg !2670
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2671
  ret i8* %4, !dbg !2672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2673 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2676, metadata !DIExpression()), !dbg !2677
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2678, metadata !DIExpression()), !dbg !2679
  %5 = load i8*, i8** %3, align 8, !dbg !2680
  %6 = load i64, i64* %4, align 8, !dbg !2681
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2682
  ret i8* %7, !dbg !2683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2684 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2687, metadata !DIExpression()), !dbg !2688
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2689, metadata !DIExpression()), !dbg !2690
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2691, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2693, metadata !DIExpression()), !dbg !2694
  %8 = load i32, i32* %5, align 4, !dbg !2695
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2696
  %9 = load i32, i32* %4, align 4, !dbg !2697
  %10 = load i8*, i8** %6, align 8, !dbg !2698
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2699
  ret i8* %11, !dbg !2700
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2701 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2704, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2706, metadata !DIExpression()), !dbg !2707
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2707
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2707
  %5 = load i32, i32* %3, align 4, !dbg !2708
  %6 = icmp eq i32 %5, 10, !dbg !2710
  br i1 %6, label %7, label %8, !dbg !2711

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2712
  unreachable, !dbg !2712

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2713
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2714
  store i32 %9, i32* %10, align 8, !dbg !2715
  ret void, !dbg !2716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2717 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2720, metadata !DIExpression()), !dbg !2721
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2722, metadata !DIExpression()), !dbg !2723
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2724, metadata !DIExpression()), !dbg !2725
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2726, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2728, metadata !DIExpression()), !dbg !2729
  %10 = load i32, i32* %6, align 4, !dbg !2730
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2731
  %11 = load i32, i32* %5, align 4, !dbg !2732
  %12 = load i8*, i8** %7, align 8, !dbg !2733
  %13 = load i64, i64* %8, align 8, !dbg !2734
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2735
  ret i8* %14, !dbg !2736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2737 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2740, metadata !DIExpression()), !dbg !2741
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2742, metadata !DIExpression()), !dbg !2743
  %5 = load i32, i32* %3, align 4, !dbg !2744
  %6 = load i8*, i8** %4, align 8, !dbg !2745
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2746
  ret i8* %7, !dbg !2747
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2748 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2751, metadata !DIExpression()), !dbg !2752
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2753, metadata !DIExpression()), !dbg !2754
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2755, metadata !DIExpression()), !dbg !2756
  %7 = load i32, i32* %4, align 4, !dbg !2757
  %8 = load i8*, i8** %5, align 8, !dbg !2758
  %9 = load i64, i64* %6, align 8, !dbg !2759
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2760
  ret i8* %10, !dbg !2761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2762 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2765, metadata !DIExpression()), !dbg !2766
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2767, metadata !DIExpression()), !dbg !2768
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2769, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2771, metadata !DIExpression()), !dbg !2772
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2773
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2773
  %9 = load i8, i8* %6, align 1, !dbg !2774
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2775
  %11 = load i8*, i8** %4, align 8, !dbg !2776
  %12 = load i64, i64* %5, align 8, !dbg !2777
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2778
  ret i8* %13, !dbg !2779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2780 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2783, metadata !DIExpression()), !dbg !2784
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2785, metadata !DIExpression()), !dbg !2786
  %5 = load i8*, i8** %3, align 8, !dbg !2787
  %6 = load i8, i8* %4, align 1, !dbg !2788
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2789
  ret i8* %7, !dbg !2790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2791 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2792, metadata !DIExpression()), !dbg !2793
  %3 = load i8*, i8** %2, align 8, !dbg !2794
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2795
  ret i8* %4, !dbg !2796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2797 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2798, metadata !DIExpression()), !dbg !2799
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2800, metadata !DIExpression()), !dbg !2801
  %5 = load i8*, i8** %3, align 8, !dbg !2802
  %6 = load i64, i64* %4, align 8, !dbg !2803
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2804
  ret i8* %7, !dbg !2805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2806 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2807, metadata !DIExpression()), !dbg !2808
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2809, metadata !DIExpression()), !dbg !2810
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2811, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2813, metadata !DIExpression()), !dbg !2814
  %9 = load i32, i32* %5, align 4, !dbg !2815
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2816
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2816
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2816
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2816
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2817
  %13 = load i32, i32* %4, align 4, !dbg !2818
  %14 = load i8*, i8** %6, align 8, !dbg !2819
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2820
  ret i8* %15, !dbg !2821
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2822 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2825, metadata !DIExpression()), !dbg !2826
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2827, metadata !DIExpression()), !dbg !2828
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2829, metadata !DIExpression()), !dbg !2830
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2831, metadata !DIExpression()), !dbg !2832
  %9 = load i32, i32* %5, align 4, !dbg !2833
  %10 = load i8*, i8** %6, align 8, !dbg !2834
  %11 = load i8*, i8** %7, align 8, !dbg !2835
  %12 = load i8*, i8** %8, align 8, !dbg !2836
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2837
  ret i8* %13, !dbg !2838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2839 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2842, metadata !DIExpression()), !dbg !2843
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2844, metadata !DIExpression()), !dbg !2845
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2846, metadata !DIExpression()), !dbg !2847
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2848, metadata !DIExpression()), !dbg !2849
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2850, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2852, metadata !DIExpression()), !dbg !2853
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2854
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2854
  %13 = load i8*, i8** %7, align 8, !dbg !2855
  %14 = load i8*, i8** %8, align 8, !dbg !2856
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2857
  %15 = load i32, i32* %6, align 4, !dbg !2858
  %16 = load i8*, i8** %9, align 8, !dbg !2859
  %17 = load i64, i64* %10, align 8, !dbg !2860
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2861
  ret i8* %18, !dbg !2862
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2863 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2866, metadata !DIExpression()), !dbg !2867
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2868, metadata !DIExpression()), !dbg !2869
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2870, metadata !DIExpression()), !dbg !2871
  %7 = load i8*, i8** %4, align 8, !dbg !2872
  %8 = load i8*, i8** %5, align 8, !dbg !2873
  %9 = load i8*, i8** %6, align 8, !dbg !2874
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2875
  ret i8* %10, !dbg !2876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2877 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2880, metadata !DIExpression()), !dbg !2881
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2882, metadata !DIExpression()), !dbg !2883
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2884, metadata !DIExpression()), !dbg !2885
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2886, metadata !DIExpression()), !dbg !2887
  %9 = load i8*, i8** %5, align 8, !dbg !2888
  %10 = load i8*, i8** %6, align 8, !dbg !2889
  %11 = load i8*, i8** %7, align 8, !dbg !2890
  %12 = load i64, i64* %8, align 8, !dbg !2891
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2892
  ret i8* %13, !dbg !2893
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2894 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2897, metadata !DIExpression()), !dbg !2898
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2899, metadata !DIExpression()), !dbg !2900
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2901, metadata !DIExpression()), !dbg !2902
  %7 = load i32, i32* %4, align 4, !dbg !2903
  %8 = load i8*, i8** %5, align 8, !dbg !2904
  %9 = load i64, i64* %6, align 8, !dbg !2905
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2906
  ret i8* %10, !dbg !2907
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2908 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2911, metadata !DIExpression()), !dbg !2912
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2913, metadata !DIExpression()), !dbg !2914
  %5 = load i8*, i8** %3, align 8, !dbg !2915
  %6 = load i64, i64* %4, align 8, !dbg !2916
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2917
  ret i8* %7, !dbg !2918
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2919 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2922, metadata !DIExpression()), !dbg !2923
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2924, metadata !DIExpression()), !dbg !2925
  %5 = load i32, i32* %3, align 4, !dbg !2926
  %6 = load i8*, i8** %4, align 8, !dbg !2927
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2928
  ret i8* %7, !dbg !2929
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2930 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2933, metadata !DIExpression()), !dbg !2934
  %3 = load i8*, i8** %2, align 8, !dbg !2935
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2936
  ret i8* %4, !dbg !2937
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2938 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2942, metadata !DIExpression()), !dbg !2943
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2944, metadata !DIExpression()), !dbg !2945
  %5 = load i8*, i8** %3, align 8, !dbg !2946
  %6 = load i8*, i8** %4, align 8, !dbg !2947
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2948
  %8 = icmp ne i32 %7, 0, !dbg !2949
  %9 = xor i1 %8, true, !dbg !2949
  ret i1 %9, !dbg !2950
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2951 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3008, metadata !DIExpression()), !dbg !3009
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3010, metadata !DIExpression()), !dbg !3011
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3012, metadata !DIExpression()), !dbg !3013
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3014, metadata !DIExpression()), !dbg !3015
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3016, metadata !DIExpression()), !dbg !3017
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3018, metadata !DIExpression()), !dbg !3019
  %13 = load i8*, i8** %8, align 8, !dbg !3020
  %14 = icmp ne i8* %13, null, !dbg !3020
  br i1 %14, label %15, label %21, !dbg !3022

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3023
  %17 = load i8*, i8** %8, align 8, !dbg !3024
  %18 = load i8*, i8** %9, align 8, !dbg !3025
  %19 = load i8*, i8** %10, align 8, !dbg !3026
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3027
  br label %26, !dbg !3027

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3028
  %23 = load i8*, i8** %9, align 8, !dbg !3029
  %24 = load i8*, i8** %10, align 8, !dbg !3030
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.111, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3031
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3032
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.113, i64 0, i64 0)) #18, !dbg !3033
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3034
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3035
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.114, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3035
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3036
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.115, i64 0, i64 0)) #18, !dbg !3037
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.116, i64 0, i64 0)), !dbg !3038
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3039
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.114, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3039
  %37 = load i64, i64* %12, align 8, !dbg !3040
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
  ], !dbg !3041

38:                                               ; preds = %26
  br label %241, !dbg !3042

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3044
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.117, i64 0, i64 0)) #18, !dbg !3045
  %42 = load i8**, i8*** %11, align 8, !dbg !3046
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3046
  %44 = load i8*, i8** %43, align 8, !dbg !3046
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3047
  br label %241, !dbg !3048

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3049
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.118, i64 0, i64 0)) #18, !dbg !3050
  %49 = load i8**, i8*** %11, align 8, !dbg !3051
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3051
  %51 = load i8*, i8** %50, align 8, !dbg !3051
  %52 = load i8**, i8*** %11, align 8, !dbg !3052
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3052
  %54 = load i8*, i8** %53, align 8, !dbg !3052
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3053
  br label %241, !dbg !3054

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3055
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.119, i64 0, i64 0)) #18, !dbg !3056
  %59 = load i8**, i8*** %11, align 8, !dbg !3057
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3057
  %61 = load i8*, i8** %60, align 8, !dbg !3057
  %62 = load i8**, i8*** %11, align 8, !dbg !3058
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3058
  %64 = load i8*, i8** %63, align 8, !dbg !3058
  %65 = load i8**, i8*** %11, align 8, !dbg !3059
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3059
  %67 = load i8*, i8** %66, align 8, !dbg !3059
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3060
  br label %241, !dbg !3061

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3062
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.120, i64 0, i64 0)) #18, !dbg !3063
  %72 = load i8**, i8*** %11, align 8, !dbg !3064
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3064
  %74 = load i8*, i8** %73, align 8, !dbg !3064
  %75 = load i8**, i8*** %11, align 8, !dbg !3065
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3065
  %77 = load i8*, i8** %76, align 8, !dbg !3065
  %78 = load i8**, i8*** %11, align 8, !dbg !3066
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3066
  %80 = load i8*, i8** %79, align 8, !dbg !3066
  %81 = load i8**, i8*** %11, align 8, !dbg !3067
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3067
  %83 = load i8*, i8** %82, align 8, !dbg !3067
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3068
  br label %241, !dbg !3069

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3070
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.121, i64 0, i64 0)) #18, !dbg !3071
  %88 = load i8**, i8*** %11, align 8, !dbg !3072
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3072
  %90 = load i8*, i8** %89, align 8, !dbg !3072
  %91 = load i8**, i8*** %11, align 8, !dbg !3073
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3073
  %93 = load i8*, i8** %92, align 8, !dbg !3073
  %94 = load i8**, i8*** %11, align 8, !dbg !3074
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3074
  %96 = load i8*, i8** %95, align 8, !dbg !3074
  %97 = load i8**, i8*** %11, align 8, !dbg !3075
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3075
  %99 = load i8*, i8** %98, align 8, !dbg !3075
  %100 = load i8**, i8*** %11, align 8, !dbg !3076
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3076
  %102 = load i8*, i8** %101, align 8, !dbg !3076
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3077
  br label %241, !dbg !3078

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3079
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.122, i64 0, i64 0)) #18, !dbg !3080
  %107 = load i8**, i8*** %11, align 8, !dbg !3081
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3081
  %109 = load i8*, i8** %108, align 8, !dbg !3081
  %110 = load i8**, i8*** %11, align 8, !dbg !3082
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3082
  %112 = load i8*, i8** %111, align 8, !dbg !3082
  %113 = load i8**, i8*** %11, align 8, !dbg !3083
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3083
  %115 = load i8*, i8** %114, align 8, !dbg !3083
  %116 = load i8**, i8*** %11, align 8, !dbg !3084
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3084
  %118 = load i8*, i8** %117, align 8, !dbg !3084
  %119 = load i8**, i8*** %11, align 8, !dbg !3085
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3085
  %121 = load i8*, i8** %120, align 8, !dbg !3085
  %122 = load i8**, i8*** %11, align 8, !dbg !3086
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3086
  %124 = load i8*, i8** %123, align 8, !dbg !3086
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3087
  br label %241, !dbg !3088

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3089
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.123, i64 0, i64 0)) #18, !dbg !3090
  %129 = load i8**, i8*** %11, align 8, !dbg !3091
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3091
  %131 = load i8*, i8** %130, align 8, !dbg !3091
  %132 = load i8**, i8*** %11, align 8, !dbg !3092
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3092
  %134 = load i8*, i8** %133, align 8, !dbg !3092
  %135 = load i8**, i8*** %11, align 8, !dbg !3093
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3093
  %137 = load i8*, i8** %136, align 8, !dbg !3093
  %138 = load i8**, i8*** %11, align 8, !dbg !3094
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3094
  %140 = load i8*, i8** %139, align 8, !dbg !3094
  %141 = load i8**, i8*** %11, align 8, !dbg !3095
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3095
  %143 = load i8*, i8** %142, align 8, !dbg !3095
  %144 = load i8**, i8*** %11, align 8, !dbg !3096
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3096
  %146 = load i8*, i8** %145, align 8, !dbg !3096
  %147 = load i8**, i8*** %11, align 8, !dbg !3097
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3097
  %149 = load i8*, i8** %148, align 8, !dbg !3097
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3098
  br label %241, !dbg !3099

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3100
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.124, i64 0, i64 0)) #18, !dbg !3101
  %154 = load i8**, i8*** %11, align 8, !dbg !3102
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3102
  %156 = load i8*, i8** %155, align 8, !dbg !3102
  %157 = load i8**, i8*** %11, align 8, !dbg !3103
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3103
  %159 = load i8*, i8** %158, align 8, !dbg !3103
  %160 = load i8**, i8*** %11, align 8, !dbg !3104
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3104
  %162 = load i8*, i8** %161, align 8, !dbg !3104
  %163 = load i8**, i8*** %11, align 8, !dbg !3105
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3105
  %165 = load i8*, i8** %164, align 8, !dbg !3105
  %166 = load i8**, i8*** %11, align 8, !dbg !3106
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3106
  %168 = load i8*, i8** %167, align 8, !dbg !3106
  %169 = load i8**, i8*** %11, align 8, !dbg !3107
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3107
  %171 = load i8*, i8** %170, align 8, !dbg !3107
  %172 = load i8**, i8*** %11, align 8, !dbg !3108
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3108
  %174 = load i8*, i8** %173, align 8, !dbg !3108
  %175 = load i8**, i8*** %11, align 8, !dbg !3109
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3109
  %177 = load i8*, i8** %176, align 8, !dbg !3109
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3110
  br label %241, !dbg !3111

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3112
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.125, i64 0, i64 0)) #18, !dbg !3113
  %182 = load i8**, i8*** %11, align 8, !dbg !3114
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3114
  %184 = load i8*, i8** %183, align 8, !dbg !3114
  %185 = load i8**, i8*** %11, align 8, !dbg !3115
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3115
  %187 = load i8*, i8** %186, align 8, !dbg !3115
  %188 = load i8**, i8*** %11, align 8, !dbg !3116
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3116
  %190 = load i8*, i8** %189, align 8, !dbg !3116
  %191 = load i8**, i8*** %11, align 8, !dbg !3117
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3117
  %193 = load i8*, i8** %192, align 8, !dbg !3117
  %194 = load i8**, i8*** %11, align 8, !dbg !3118
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3118
  %196 = load i8*, i8** %195, align 8, !dbg !3118
  %197 = load i8**, i8*** %11, align 8, !dbg !3119
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3119
  %199 = load i8*, i8** %198, align 8, !dbg !3119
  %200 = load i8**, i8*** %11, align 8, !dbg !3120
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3120
  %202 = load i8*, i8** %201, align 8, !dbg !3120
  %203 = load i8**, i8*** %11, align 8, !dbg !3121
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3121
  %205 = load i8*, i8** %204, align 8, !dbg !3121
  %206 = load i8**, i8*** %11, align 8, !dbg !3122
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3122
  %208 = load i8*, i8** %207, align 8, !dbg !3122
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3123
  br label %241, !dbg !3124

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3125
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.126, i64 0, i64 0)) #18, !dbg !3126
  %213 = load i8**, i8*** %11, align 8, !dbg !3127
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3127
  %215 = load i8*, i8** %214, align 8, !dbg !3127
  %216 = load i8**, i8*** %11, align 8, !dbg !3128
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3128
  %218 = load i8*, i8** %217, align 8, !dbg !3128
  %219 = load i8**, i8*** %11, align 8, !dbg !3129
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3129
  %221 = load i8*, i8** %220, align 8, !dbg !3129
  %222 = load i8**, i8*** %11, align 8, !dbg !3130
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3130
  %224 = load i8*, i8** %223, align 8, !dbg !3130
  %225 = load i8**, i8*** %11, align 8, !dbg !3131
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3131
  %227 = load i8*, i8** %226, align 8, !dbg !3131
  %228 = load i8**, i8*** %11, align 8, !dbg !3132
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3132
  %230 = load i8*, i8** %229, align 8, !dbg !3132
  %231 = load i8**, i8*** %11, align 8, !dbg !3133
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3133
  %233 = load i8*, i8** %232, align 8, !dbg !3133
  %234 = load i8**, i8*** %11, align 8, !dbg !3134
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3134
  %236 = load i8*, i8** %235, align 8, !dbg !3134
  %237 = load i8**, i8*** %11, align 8, !dbg !3135
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3135
  %239 = load i8*, i8** %238, align 8, !dbg !3135
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3136
  br label %241, !dbg !3137

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3138
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3139 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3142, metadata !DIExpression()), !dbg !3143
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3144, metadata !DIExpression()), !dbg !3145
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3146, metadata !DIExpression()), !dbg !3147
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3148, metadata !DIExpression()), !dbg !3149
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3150, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3152, metadata !DIExpression()), !dbg !3153
  store i64 0, i64* %11, align 8, !dbg !3154
  br label %12, !dbg !3156

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3157
  %14 = load i64, i64* %11, align 8, !dbg !3159
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3157
  %16 = load i8*, i8** %15, align 8, !dbg !3157
  %17 = icmp ne i8* %16, null, !dbg !3160
  br i1 %17, label %18, label %22, !dbg !3160

18:                                               ; preds = %12
  br label %19, !dbg !3160

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3161
  %21 = add i64 %20, 1, !dbg !3161
  store i64 %21, i64* %11, align 8, !dbg !3161
  br label %12, !dbg !3162, !llvm.loop !3163

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3165
  %24 = load i8*, i8** %7, align 8, !dbg !3166
  %25 = load i8*, i8** %8, align 8, !dbg !3167
  %26 = load i8*, i8** %9, align 8, !dbg !3168
  %27 = load i8**, i8*** %10, align 8, !dbg !3169
  %28 = load i64, i64* %11, align 8, !dbg !3170
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3171
  ret void, !dbg !3172
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3173 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3187, metadata !DIExpression()), !dbg !3188
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3189, metadata !DIExpression()), !dbg !3190
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3191, metadata !DIExpression()), !dbg !3192
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3193, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3199, metadata !DIExpression()), !dbg !3201
  store i64 0, i64* %10, align 8, !dbg !3202
  br label %12, !dbg !3204

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3205
  %14 = icmp ult i64 %13, 10, !dbg !3207
  br i1 %14, label %15, label %38, !dbg !3208

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3209
  %17 = load i32, i32* %16, align 8, !dbg !3209
  %18 = icmp sge i32 %17, 0, !dbg !3209
  br i1 %18, label %27, label %19, !dbg !3209

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3209
  store i32 %20, i32* %16, align 8, !dbg !3209
  %21 = icmp sle i32 %20, 0, !dbg !3209
  br i1 %21, label %22, label %27, !dbg !3209

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3209
  %24 = load i8*, i8** %23, align 8, !dbg !3209
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3209
  %26 = bitcast i8* %25 to i8**, !dbg !3209
  br label %32, !dbg !3209

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3209
  %29 = load i8*, i8** %28, align 8, !dbg !3209
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3209
  store i8* %30, i8** %28, align 8, !dbg !3209
  %31 = bitcast i8* %29 to i8**, !dbg !3209
  br label %32, !dbg !3209

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3209
  %34 = load i8*, i8** %33, align 8, !dbg !3209
  %35 = load i64, i64* %10, align 8, !dbg !3210
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3211
  store i8* %34, i8** %36, align 8, !dbg !3212
  %37 = icmp ne i8* %34, null, !dbg !3213
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3214
  br i1 %39, label %40, label %44, !dbg !3215

40:                                               ; preds = %38
  br label %41, !dbg !3215

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3216
  %43 = add i64 %42, 1, !dbg !3216
  store i64 %43, i64* %10, align 8, !dbg !3216
  br label %12, !dbg !3217, !llvm.loop !3218

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3220
  %46 = load i8*, i8** %7, align 8, !dbg !3221
  %47 = load i8*, i8** %8, align 8, !dbg !3222
  %48 = load i8*, i8** %9, align 8, !dbg !3223
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3224
  %50 = load i64, i64* %10, align 8, !dbg !3225
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3226
  ret void, !dbg !3227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3228 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3231, metadata !DIExpression()), !dbg !3232
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3233, metadata !DIExpression()), !dbg !3234
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3235, metadata !DIExpression()), !dbg !3236
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3237, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3239, metadata !DIExpression()), !dbg !3240
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3241
  call void @llvm.va_start(i8* %11), !dbg !3241
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3242
  %13 = load i8*, i8** %6, align 8, !dbg !3243
  %14 = load i8*, i8** %7, align 8, !dbg !3244
  %15 = load i8*, i8** %8, align 8, !dbg !3245
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3246
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3246
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3246
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3246
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3247
  call void @llvm.va_end(i8* %18), !dbg !3247
  ret void, !dbg !3248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3249 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3250
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.114, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3250
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.131, i64 0, i64 0)) #18, !dbg !3251
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.132, i64 0, i64 0)), !dbg !3252
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.133, i64 0, i64 0)) #18, !dbg !3253
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.134, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.135, i64 0, i64 0)), !dbg !3254
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.136, i64 0, i64 0)) #18, !dbg !3255
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.137, i64 0, i64 0)), !dbg !3256
  ret void, !dbg !3257
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3258 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3262, metadata !DIExpression()), !dbg !3263
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3264, metadata !DIExpression()), !dbg !3265
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3266, metadata !DIExpression()), !dbg !3267
  %7 = load i8*, i8** %4, align 8, !dbg !3268
  %8 = load i64, i64* %5, align 8, !dbg !3269
  %9 = load i64, i64* %6, align 8, !dbg !3270
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3271
  ret i8* %10, !dbg !3272
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3273 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3274, metadata !DIExpression()), !dbg !3275
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3276, metadata !DIExpression()), !dbg !3277
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3278, metadata !DIExpression()), !dbg !3279
  %7 = load i8*, i8** %4, align 8, !dbg !3280
  %8 = load i64, i64* %5, align 8, !dbg !3281
  %9 = load i64, i64* %6, align 8, !dbg !3282
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3283
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3284
  ret i8* %11, !dbg !3285
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3286 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3289, metadata !DIExpression()), !dbg !3290
  %3 = load i8*, i8** %2, align 8, !dbg !3291
  %4 = icmp ne i8* %3, null, !dbg !3291
  br i1 %4, label %6, label %5, !dbg !3293

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3294
  unreachable, !dbg !3294

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3295
  ret i8* %7, !dbg !3296
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3297 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3300, metadata !DIExpression()), !dbg !3301
  %3 = load i64, i64* %2, align 8, !dbg !3302
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3303
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3304
  ret i8* %5, !dbg !3305
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3306 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3309, metadata !DIExpression()), !dbg !3310
  %3 = load i64, i64* %2, align 8, !dbg !3311
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3312
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3313
  ret i8* %5, !dbg !3314
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3315 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3318, metadata !DIExpression()), !dbg !3319
  %3 = load i64, i64* %2, align 8, !dbg !3320
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3320
  ret i8* %4, !dbg !3321
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3322 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3325, metadata !DIExpression()), !dbg !3326
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3327, metadata !DIExpression()), !dbg !3328
  %5 = load i8*, i8** %3, align 8, !dbg !3329
  %6 = load i64, i64* %4, align 8, !dbg !3330
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3331
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3332
  ret i8* %8, !dbg !3333
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3334 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3337, metadata !DIExpression()), !dbg !3338
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3339, metadata !DIExpression()), !dbg !3340
  %5 = load i8*, i8** %3, align 8, !dbg !3341
  %6 = load i64, i64* %4, align 8, !dbg !3342
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3343
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3344
  ret i8* %8, !dbg !3345
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3346 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3349, metadata !DIExpression()), !dbg !3350
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3351, metadata !DIExpression()), !dbg !3352
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3353, metadata !DIExpression()), !dbg !3354
  %7 = load i8*, i8** %4, align 8, !dbg !3355
  %8 = load i64, i64* %5, align 8, !dbg !3356
  %9 = load i64, i64* %6, align 8, !dbg !3357
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3358
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3359
  ret i8* %11, !dbg !3360
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3361 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3364, metadata !DIExpression()), !dbg !3365
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3366, metadata !DIExpression()), !dbg !3367
  %5 = load i64, i64* %3, align 8, !dbg !3368
  %6 = load i64, i64* %4, align 8, !dbg !3369
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3370
  ret i8* %7, !dbg !3371
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3372 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3375, metadata !DIExpression()), !dbg !3376
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3377, metadata !DIExpression()), !dbg !3378
  %5 = load i64, i64* %3, align 8, !dbg !3379
  %6 = load i64, i64* %4, align 8, !dbg !3380
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3381
  ret i8* %7, !dbg !3382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3383 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3386, metadata !DIExpression()), !dbg !3387
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3388, metadata !DIExpression()), !dbg !3389
  %5 = load i8*, i8** %3, align 8, !dbg !3390
  %6 = load i64*, i64** %4, align 8, !dbg !3391
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3392
  ret i8* %7, !dbg !3393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !253 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3394, metadata !DIExpression()), !dbg !3395
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3396, metadata !DIExpression()), !dbg !3397
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3398, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3400, metadata !DIExpression()), !dbg !3401
  %8 = load i64*, i64** %5, align 8, !dbg !3402
  %9 = load i64, i64* %8, align 8, !dbg !3403
  store i64 %9, i64* %7, align 8, !dbg !3401
  %10 = load i8*, i8** %4, align 8, !dbg !3404
  %11 = icmp ne i8* %10, null, !dbg !3404
  br i1 %11, label %26, label %12, !dbg !3406

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3407
  %14 = icmp ne i64 %13, 0, !dbg !3407
  br i1 %14, label %25, label %15, !dbg !3410

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3411
  %17 = udiv i64 128, %16, !dbg !3413
  store i64 %17, i64* %7, align 8, !dbg !3414
  %18 = load i64, i64* %7, align 8, !dbg !3415
  %19 = icmp ne i64 %18, 0, !dbg !3416
  %20 = xor i1 %19, true, !dbg !3416
  %21 = zext i1 %20 to i32, !dbg !3416
  %22 = sext i32 %21 to i64, !dbg !3416
  %23 = load i64, i64* %7, align 8, !dbg !3417
  %24 = add i64 %23, %22, !dbg !3417
  store i64 %24, i64* %7, align 8, !dbg !3417
  br label %25, !dbg !3418

25:                                               ; preds = %15, %12
  br label %36, !dbg !3419

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3420
  %28 = load i64, i64* %7, align 8, !dbg !3420
  %29 = lshr i64 %28, 1, !dbg !3420
  %30 = add i64 %29, 1, !dbg !3420
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3420
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3420
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3420
  store i64 %33, i64* %7, align 8, !dbg !3420
  br i1 %32, label %34, label %35, !dbg !3423

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3424
  unreachable, !dbg !3424

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3425
  %38 = load i64, i64* %7, align 8, !dbg !3426
  %39 = load i64, i64* %6, align 8, !dbg !3427
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3428
  store i8* %40, i8** %4, align 8, !dbg !3429
  %41 = load i64, i64* %7, align 8, !dbg !3430
  %42 = load i64*, i64** %5, align 8, !dbg !3431
  store i64 %41, i64* %42, align 8, !dbg !3432
  %43 = load i8*, i8** %4, align 8, !dbg !3433
  ret i8* %43, !dbg !3434
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !260 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3435, metadata !DIExpression()), !dbg !3436
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3437, metadata !DIExpression()), !dbg !3438
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3441, metadata !DIExpression()), !dbg !3442
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3443, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3445, metadata !DIExpression()), !dbg !3446
  %15 = load i64*, i64** %7, align 8, !dbg !3447
  %16 = load i64, i64* %15, align 8, !dbg !3448
  store i64 %16, i64* %11, align 8, !dbg !3446
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3449, metadata !DIExpression()), !dbg !3450
  %17 = load i64, i64* %11, align 8, !dbg !3451
  %18 = load i64, i64* %11, align 8, !dbg !3451
  %19 = ashr i64 %18, 1, !dbg !3451
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3451
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3451
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3451
  store i64 %22, i64* %12, align 8, !dbg !3451
  br i1 %21, label %23, label %24, !dbg !3453

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3454
  br label %24, !dbg !3455

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3456
  %26 = icmp sle i64 0, %25, !dbg !3458
  br i1 %26, label %27, label %33, !dbg !3459

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3460
  %29 = load i64, i64* %12, align 8, !dbg !3461
  %30 = icmp slt i64 %28, %29, !dbg !3462
  br i1 %30, label %31, label %33, !dbg !3463

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3464
  store i64 %32, i64* %12, align 8, !dbg !3465
  br label %33, !dbg !3466

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3467, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3469, metadata !DIExpression()), !dbg !3470
  %34 = load i64, i64* %10, align 8, !dbg !3471
  %35 = icmp slt i64 %34, 0, !dbg !3471
  br i1 %35, label %36, label %82, !dbg !3471

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3471
  %38 = icmp slt i64 %37, 0, !dbg !3471
  br i1 %38, label %39, label %62, !dbg !3471

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3471

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3471
  %42 = load i64, i64* %10, align 8, !dbg !3471
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3471
  %44 = icmp slt i64 %41, %43, !dbg !3471
  br i1 %44, label %111, label %115, !dbg !3471

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3471

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3471
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3471
  br i1 %48, label %52, label %53, !dbg !3471

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3471
  %51 = icmp slt i64 0, %50, !dbg !3471
  br i1 %51, label %52, label %53, !dbg !3471

52:                                               ; preds = %49, %46
  br label %57, !dbg !3471

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3471
  %55 = sub nsw i64 0, %54, !dbg !3471
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3471
  br label %57, !dbg !3471

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3471
  %59 = load i64, i64* %12, align 8, !dbg !3471
  %60 = sub nsw i64 -1, %59, !dbg !3471
  %61 = icmp sle i64 %58, %60, !dbg !3471
  br i1 %61, label %111, label %115, !dbg !3471

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3471
  %64 = icmp eq i64 %63, -1, !dbg !3471
  br i1 %64, label %65, label %77, !dbg !3471

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3471

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3471
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3471
  %69 = icmp slt i64 0, %68, !dbg !3471
  br i1 %69, label %111, label %115, !dbg !3471

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3471
  %72 = icmp slt i64 0, %71, !dbg !3471
  br i1 %72, label %73, label %115, !dbg !3471

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3471
  %75 = sub nsw i64 %74, 1, !dbg !3471
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3471
  br i1 %76, label %111, label %115, !dbg !3471

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3471
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3471
  %80 = load i64, i64* %12, align 8, !dbg !3471
  %81 = icmp slt i64 %79, %80, !dbg !3471
  br i1 %81, label %111, label %115, !dbg !3471

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3471
  %84 = icmp eq i64 %83, 0, !dbg !3471
  br i1 %84, label %85, label %86, !dbg !3471

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3471

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3471
  %88 = icmp slt i64 %87, 0, !dbg !3471
  br i1 %88, label %89, label %106, !dbg !3471

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3471
  %91 = icmp eq i64 %90, -1, !dbg !3471
  br i1 %91, label %92, label %101, !dbg !3471

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3471

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3471
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3471
  %96 = icmp slt i64 0, %95, !dbg !3471
  br i1 %96, label %111, label %115, !dbg !3471

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3471
  %99 = sub nsw i64 %98, 1, !dbg !3471
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3471
  br i1 %100, label %111, label %115, !dbg !3471

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3471
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3471
  %104 = load i64, i64* %10, align 8, !dbg !3471
  %105 = icmp slt i64 %103, %104, !dbg !3471
  br i1 %105, label %111, label %115, !dbg !3471

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3471
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3471
  %109 = load i64, i64* %12, align 8, !dbg !3471
  %110 = icmp slt i64 %108, %109, !dbg !3471
  br i1 %110, label %111, label %115, !dbg !3471

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3471
  %113 = load i64, i64* %10, align 8, !dbg !3471
  %114 = mul i64 %112, %113, !dbg !3471
  store i64 %114, i64* %13, align 8, !dbg !3471
  br label %119, !dbg !3471

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3471
  %117 = load i64, i64* %10, align 8, !dbg !3471
  %118 = mul i64 %116, %117, !dbg !3471
  store i64 %118, i64* %13, align 8, !dbg !3471
  br label %119, !dbg !3471

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3471
  %121 = icmp ne i32 %120, 0, !dbg !3471
  br i1 %121, label %122, label %123, !dbg !3471

122:                                              ; preds = %119
  br label %129, !dbg !3471

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3472
  %125 = icmp slt i64 %124, 128, !dbg !3473
  %126 = zext i1 %125 to i64, !dbg !3472
  %127 = select i1 %125, i32 128, i32 0, !dbg !3472
  %128 = sext i32 %127 to i64, !dbg !3472
  br label %129, !dbg !3471

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3471
  store i64 %130, i64* %14, align 8, !dbg !3470
  %131 = load i64, i64* %14, align 8, !dbg !3474
  %132 = icmp ne i64 %131, 0, !dbg !3474
  br i1 %132, label %133, label %142, !dbg !3476

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3477
  %135 = load i64, i64* %10, align 8, !dbg !3479
  %136 = sdiv i64 %134, %135, !dbg !3480
  store i64 %136, i64* %12, align 8, !dbg !3481
  %137 = load i64, i64* %14, align 8, !dbg !3482
  %138 = load i64, i64* %14, align 8, !dbg !3483
  %139 = load i64, i64* %10, align 8, !dbg !3484
  %140 = srem i64 %138, %139, !dbg !3485
  %141 = sub nsw i64 %137, %140, !dbg !3486
  store i64 %141, i64* %13, align 8, !dbg !3487
  br label %142, !dbg !3488

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3489
  %144 = icmp ne i8* %143, null, !dbg !3489
  br i1 %144, label %147, label %145, !dbg !3491

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3492
  store i64 0, i64* %146, align 8, !dbg !3493
  br label %147, !dbg !3494

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3495
  %149 = load i64, i64* %11, align 8, !dbg !3497
  %150 = sub nsw i64 %148, %149, !dbg !3498
  %151 = load i64, i64* %8, align 8, !dbg !3499
  %152 = icmp slt i64 %150, %151, !dbg !3500
  br i1 %152, label %153, label %256, !dbg !3501

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3502
  %155 = load i64, i64* %8, align 8, !dbg !3502
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3502
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3502
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3502
  store i64 %158, i64* %12, align 8, !dbg !3502
  br i1 %157, label %255, label %159, !dbg !3503

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3504
  %161 = icmp sle i64 0, %160, !dbg !3505
  br i1 %161, label %162, label %166, !dbg !3506

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3507
  %164 = load i64, i64* %12, align 8, !dbg !3508
  %165 = icmp slt i64 %163, %164, !dbg !3509
  br i1 %165, label %255, label %166, !dbg !3510

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3511
  %168 = icmp slt i64 %167, 0, !dbg !3511
  br i1 %168, label %169, label %215, !dbg !3511

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3511
  %171 = icmp slt i64 %170, 0, !dbg !3511
  br i1 %171, label %172, label %195, !dbg !3511

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3511

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3511
  %175 = load i64, i64* %10, align 8, !dbg !3511
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3511
  %177 = icmp slt i64 %174, %176, !dbg !3511
  br i1 %177, label %244, label %248, !dbg !3511

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3511

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3511
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3511
  br i1 %181, label %185, label %186, !dbg !3511

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3511
  %184 = icmp slt i64 0, %183, !dbg !3511
  br i1 %184, label %185, label %186, !dbg !3511

185:                                              ; preds = %182, %179
  br label %190, !dbg !3511

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3511
  %188 = sub nsw i64 0, %187, !dbg !3511
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3511
  br label %190, !dbg !3511

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3511
  %192 = load i64, i64* %12, align 8, !dbg !3511
  %193 = sub nsw i64 -1, %192, !dbg !3511
  %194 = icmp sle i64 %191, %193, !dbg !3511
  br i1 %194, label %244, label %248, !dbg !3511

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3511
  %197 = icmp eq i64 %196, -1, !dbg !3511
  br i1 %197, label %198, label %210, !dbg !3511

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3511

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3511
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3511
  %202 = icmp slt i64 0, %201, !dbg !3511
  br i1 %202, label %244, label %248, !dbg !3511

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3511
  %205 = icmp slt i64 0, %204, !dbg !3511
  br i1 %205, label %206, label %248, !dbg !3511

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3511
  %208 = sub nsw i64 %207, 1, !dbg !3511
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3511
  br i1 %209, label %244, label %248, !dbg !3511

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3511
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3511
  %213 = load i64, i64* %12, align 8, !dbg !3511
  %214 = icmp slt i64 %212, %213, !dbg !3511
  br i1 %214, label %244, label %248, !dbg !3511

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3511
  %217 = icmp eq i64 %216, 0, !dbg !3511
  br i1 %217, label %218, label %219, !dbg !3511

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3511

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3511
  %221 = icmp slt i64 %220, 0, !dbg !3511
  br i1 %221, label %222, label %239, !dbg !3511

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3511
  %224 = icmp eq i64 %223, -1, !dbg !3511
  br i1 %224, label %225, label %234, !dbg !3511

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3511

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3511
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3511
  %229 = icmp slt i64 0, %228, !dbg !3511
  br i1 %229, label %244, label %248, !dbg !3511

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3511
  %232 = sub nsw i64 %231, 1, !dbg !3511
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3511
  br i1 %233, label %244, label %248, !dbg !3511

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3511
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3511
  %237 = load i64, i64* %10, align 8, !dbg !3511
  %238 = icmp slt i64 %236, %237, !dbg !3511
  br i1 %238, label %244, label %248, !dbg !3511

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3511
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3511
  %242 = load i64, i64* %12, align 8, !dbg !3511
  %243 = icmp slt i64 %241, %242, !dbg !3511
  br i1 %243, label %244, label %248, !dbg !3511

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3511
  %246 = load i64, i64* %10, align 8, !dbg !3511
  %247 = mul i64 %245, %246, !dbg !3511
  store i64 %247, i64* %13, align 8, !dbg !3511
  br label %252, !dbg !3511

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3511
  %250 = load i64, i64* %10, align 8, !dbg !3511
  %251 = mul i64 %249, %250, !dbg !3511
  store i64 %251, i64* %13, align 8, !dbg !3511
  br label %252, !dbg !3511

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3511
  %254 = icmp ne i32 %253, 0, !dbg !3511
  br i1 %254, label %255, label %256, !dbg !3512

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3513
  unreachable, !dbg !3513

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3514
  %258 = load i64, i64* %13, align 8, !dbg !3515
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3516
  store i8* %259, i8** %6, align 8, !dbg !3517
  %260 = load i64, i64* %12, align 8, !dbg !3518
  %261 = load i64*, i64** %7, align 8, !dbg !3519
  store i64 %260, i64* %261, align 8, !dbg !3520
  %262 = load i8*, i8** %6, align 8, !dbg !3521
  ret i8* %262, !dbg !3522
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3523 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3524, metadata !DIExpression()), !dbg !3525
  %3 = load i64, i64* %2, align 8, !dbg !3526
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3527
  ret i8* %4, !dbg !3528
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3529 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3530, metadata !DIExpression()), !dbg !3531
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3532, metadata !DIExpression()), !dbg !3533
  %5 = load i64, i64* %3, align 8, !dbg !3534
  %6 = load i64, i64* %4, align 8, !dbg !3535
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3536
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3537
  ret i8* %8, !dbg !3538
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3539 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3540, metadata !DIExpression()), !dbg !3541
  %3 = load i64, i64* %2, align 8, !dbg !3542
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3543
  ret i8* %4, !dbg !3544
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3545 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3546, metadata !DIExpression()), !dbg !3547
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3548, metadata !DIExpression()), !dbg !3549
  %5 = load i64, i64* %3, align 8, !dbg !3550
  %6 = load i64, i64* %4, align 8, !dbg !3551
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3552
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3553
  ret i8* %8, !dbg !3554
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3555 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3560, metadata !DIExpression()), !dbg !3561
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3562, metadata !DIExpression()), !dbg !3563
  %5 = load i64, i64* %4, align 8, !dbg !3564
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3565
  %7 = load i8*, i8** %3, align 8, !dbg !3566
  %8 = load i64, i64* %4, align 8, !dbg !3567
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3568
  ret i8* %6, !dbg !3569
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3570 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3573, metadata !DIExpression()), !dbg !3574
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3575, metadata !DIExpression()), !dbg !3576
  %5 = load i64, i64* %4, align 8, !dbg !3577
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3578
  %7 = load i8*, i8** %3, align 8, !dbg !3579
  %8 = load i64, i64* %4, align 8, !dbg !3580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3581
  ret i8* %6, !dbg !3582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3583 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3586, metadata !DIExpression()), !dbg !3587
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3588, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3590, metadata !DIExpression()), !dbg !3591
  %6 = load i64, i64* %4, align 8, !dbg !3592
  %7 = add nsw i64 %6, 1, !dbg !3593
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3594
  store i8* %8, i8** %5, align 8, !dbg !3591
  %9 = load i8*, i8** %5, align 8, !dbg !3595
  %10 = load i64, i64* %4, align 8, !dbg !3596
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3595
  store i8 0, i8* %11, align 1, !dbg !3597
  %12 = load i8*, i8** %5, align 8, !dbg !3598
  %13 = load i8*, i8** %3, align 8, !dbg !3599
  %14 = load i64, i64* %4, align 8, !dbg !3600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3601
  ret i8* %12, !dbg !3602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3603 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3604, metadata !DIExpression()), !dbg !3605
  %3 = load i8*, i8** %2, align 8, !dbg !3606
  %4 = load i8*, i8** %2, align 8, !dbg !3607
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3608
  %6 = add i64 %5, 1, !dbg !3609
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3610
  ret i8* %7, !dbg !3611
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3612 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3613, metadata !DIExpression()), !dbg !3616
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3616
  store i32 %2, i32* %1, align 4, !dbg !3616
  %3 = load i32, i32* %1, align 4, !dbg !3616
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.149, i64 0, i64 0)) #18, !dbg !3616
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* noundef %4), !dbg !3616
  %5 = load i32, i32* %1, align 4, !dbg !3616
  %6 = icmp ne i32 %5, 0, !dbg !3616
  br i1 %6, label %7, label %9, !dbg !3616

7:                                                ; preds = %0
  unreachable, !dbg !3616

8:                                                ; No predecessors!
  br label %10, !dbg !3616

9:                                                ; preds = %0
  br label %10, !dbg !3616

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3617
  unreachable, !dbg !3617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3618 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3624, metadata !DIExpression()), !dbg !3625
  %3 = load i32, i32* %2, align 4, !dbg !3626
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3627
  ret i32 %4, !dbg !3628
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3629 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3666, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3668, metadata !DIExpression()), !dbg !3670
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3671
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3672
  %9 = icmp ne i64 %8, 0, !dbg !3673
  %10 = zext i1 %9 to i8, !dbg !3670
  store i8 %10, i8* %4, align 1, !dbg !3670
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3674, metadata !DIExpression()), !dbg !3675
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3676
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3676
  %13 = icmp ne i32 %12, 0, !dbg !3677
  %14 = zext i1 %13 to i8, !dbg !3675
  store i8 %14, i8* %5, align 1, !dbg !3675
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3678, metadata !DIExpression()), !dbg !3679
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3680
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3681
  %17 = icmp ne i32 %16, 0, !dbg !3682
  %18 = zext i1 %17 to i8, !dbg !3679
  store i8 %18, i8* %6, align 1, !dbg !3679
  %19 = load i8, i8* %5, align 1, !dbg !3683
  %20 = trunc i8 %19 to i1, !dbg !3683
  br i1 %20, label %31, label %21, !dbg !3685

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3686
  %23 = trunc i8 %22 to i1, !dbg !3686
  br i1 %23, label %24, label %37, !dbg !3687

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3688
  %26 = trunc i8 %25 to i1, !dbg !3688
  br i1 %26, label %31, label %27, !dbg !3689

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3690
  %29 = load i32, i32* %28, align 4, !dbg !3690
  %30 = icmp ne i32 %29, 9, !dbg !3691
  br i1 %30, label %31, label %37, !dbg !3692

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3693
  %33 = trunc i8 %32 to i1, !dbg !3693
  br i1 %33, label %36, label %34, !dbg !3696

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3697
  store i32 0, i32* %35, align 4, !dbg !3698
  br label %36, !dbg !3697

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3699
  br label %38, !dbg !3699

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3700
  br label %38, !dbg !3700

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3701
  ret i32 %39, !dbg !3701
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3702 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3739, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3741, metadata !DIExpression()), !dbg !3742
  store i32 0, i32* %4, align 4, !dbg !3742
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3743, metadata !DIExpression()), !dbg !3744
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3745
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3746
  store i32 %8, i32* %5, align 4, !dbg !3744
  %9 = load i32, i32* %5, align 4, !dbg !3747
  %10 = icmp slt i32 %9, 0, !dbg !3749
  br i1 %10, label %11, label %14, !dbg !3750

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3751
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3752
  store i32 %13, i32* %2, align 4, !dbg !3753
  br label %40, !dbg !3753

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3754
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3754
  %17 = icmp ne i32 %16, 0, !dbg !3754
  br i1 %17, label %18, label %23, !dbg !3756

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3757
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3758
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3759
  %22 = icmp ne i64 %21, -1, !dbg !3760
  br i1 %22, label %23, label %30, !dbg !3761

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3762
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3763
  %26 = icmp ne i32 %25, 0, !dbg !3763
  br i1 %26, label %27, label %30, !dbg !3764

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3765
  %29 = load i32, i32* %28, align 4, !dbg !3765
  store i32 %29, i32* %4, align 4, !dbg !3766
  br label %30, !dbg !3767

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3768, metadata !DIExpression()), !dbg !3769
  store i32 0, i32* %6, align 4, !dbg !3769
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3770
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3771
  store i32 %32, i32* %6, align 4, !dbg !3772
  %33 = load i32, i32* %4, align 4, !dbg !3773
  %34 = icmp ne i32 %33, 0, !dbg !3775
  br i1 %34, label %35, label %38, !dbg !3776

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3777
  %37 = call i32* @__errno_location() #21, !dbg !3779
  store i32 %36, i32* %37, align 4, !dbg !3780
  store i32 -1, i32* %6, align 4, !dbg !3781
  br label %38, !dbg !3782

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3783
  store i32 %39, i32* %2, align 4, !dbg !3784
  br label %40, !dbg !3784

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3785
  ret i32 %41, !dbg !3785
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3786 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3823, metadata !DIExpression()), !dbg !3824
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3825
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3827
  br i1 %5, label %10, label %6, !dbg !3828

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3829
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3829
  %9 = icmp ne i32 %8, 0, !dbg !3829
  br i1 %9, label %13, label %10, !dbg !3830

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3831
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3832
  store i32 %12, i32* %2, align 4, !dbg !3833
  br label %17, !dbg !3833

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3834
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3835
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3836
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3837
  store i32 %16, i32* %2, align 4, !dbg !3838
  br label %17, !dbg !3838

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3839
  ret i32 %18, !dbg !3839
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3840 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3843, metadata !DIExpression()), !dbg !3844
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3845
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3847
  %5 = load i32, i32* %4, align 8, !dbg !3847
  %6 = and i32 %5, 256, !dbg !3848
  %7 = icmp ne i32 %6, 0, !dbg !3848
  br i1 %7, label %8, label %11, !dbg !3849

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3850
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3851
  br label %11, !dbg !3851

11:                                               ; preds = %8, %1
  ret void, !dbg !3852
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3853 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3891, metadata !DIExpression()), !dbg !3892
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3893, metadata !DIExpression()), !dbg !3894
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3895, metadata !DIExpression()), !dbg !3896
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3897
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3899
  %11 = load i8*, i8** %10, align 8, !dbg !3899
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3900
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3901
  %14 = load i8*, i8** %13, align 8, !dbg !3901
  %15 = icmp eq i8* %11, %14, !dbg !3902
  br i1 %15, label %16, label %46, !dbg !3903

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3904
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3905
  %19 = load i8*, i8** %18, align 8, !dbg !3905
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3906
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3907
  %22 = load i8*, i8** %21, align 8, !dbg !3907
  %23 = icmp eq i8* %19, %22, !dbg !3908
  br i1 %23, label %24, label %46, !dbg !3909

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3910
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3911
  %27 = load i8*, i8** %26, align 8, !dbg !3911
  %28 = icmp eq i8* %27, null, !dbg !3912
  br i1 %28, label %29, label %46, !dbg !3913

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3914, metadata !DIExpression()), !dbg !3916
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3917
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3918
  %32 = load i64, i64* %6, align 8, !dbg !3919
  %33 = load i32, i32* %7, align 4, !dbg !3920
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3921
  store i64 %34, i64* %8, align 8, !dbg !3916
  %35 = load i64, i64* %8, align 8, !dbg !3922
  %36 = icmp eq i64 %35, -1, !dbg !3924
  br i1 %36, label %37, label %38, !dbg !3925

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3926
  br label %51, !dbg !3926

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3928
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3929
  %41 = load i32, i32* %40, align 8, !dbg !3930
  %42 = and i32 %41, -17, !dbg !3930
  store i32 %42, i32* %40, align 8, !dbg !3930
  %43 = load i64, i64* %8, align 8, !dbg !3931
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3932
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3933
  store i64 %43, i64* %45, align 8, !dbg !3934
  store i32 0, i32* %4, align 4, !dbg !3935
  br label %51, !dbg !3935

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3936
  %48 = load i64, i64* %6, align 8, !dbg !3937
  %49 = load i32, i32* %7, align 4, !dbg !3938
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3939
  store i32 %50, i32* %4, align 4, !dbg !3940
  br label %51, !dbg !3940

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3941
  ret i32 %52, !dbg !3941
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3942 {
  %1 = call i32* @__errno_location() #21, !dbg !3945
  store i32 12, i32* %1, align 4, !dbg !3946
  ret i8* null, !dbg !3947
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3948 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3949, metadata !DIExpression()), !dbg !3950
  %3 = load i64, i64* %2, align 8, !dbg !3951
  %4 = icmp ule i64 %3, -1, !dbg !3952
  br i1 %4, label %5, label %8, !dbg !3951

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3953
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3954
  br label %10, !dbg !3951

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !3955
  br label %10, !dbg !3951

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3951
  ret i8* %11, !dbg !3956
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3957 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3958, metadata !DIExpression()), !dbg !3959
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3960, metadata !DIExpression()), !dbg !3961
  %5 = load i64, i64* %4, align 8, !dbg !3962
  %6 = icmp ule i64 %5, -1, !dbg !3963
  br i1 %6, label %7, label %11, !dbg !3962

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3964
  %9 = load i64, i64* %4, align 8, !dbg !3965
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3966
  br label %13, !dbg !3962

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3967
  br label %13, !dbg !3962

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3962
  ret i8* %14, !dbg !3968
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3969 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3970, metadata !DIExpression()), !dbg !3971
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3972, metadata !DIExpression()), !dbg !3973
  %6 = load i64, i64* %4, align 8, !dbg !3974
  %7 = icmp ult i64 -1, %6, !dbg !3976
  br i1 %7, label %8, label %14, !dbg !3977

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3978
  %10 = icmp ne i64 %9, 0, !dbg !3981
  br i1 %10, label %11, label %13, !dbg !3982

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3983
  store i8* %12, i8** %3, align 8, !dbg !3984
  br label %27, !dbg !3984

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3985
  br label %14, !dbg !3986

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3987
  %16 = icmp ult i64 -1, %15, !dbg !3989
  br i1 %16, label %17, label %23, !dbg !3990

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3991
  %19 = icmp ne i64 %18, 0, !dbg !3994
  br i1 %19, label %20, label %22, !dbg !3995

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !3996
  store i8* %21, i8** %3, align 8, !dbg !3997
  br label %27, !dbg !3997

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3998
  br label %23, !dbg !3999

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4000
  %25 = load i64, i64* %5, align 8, !dbg !4001
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !4002
  store i8* %26, i8** %3, align 8, !dbg !4003
  br label %27, !dbg !4003

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4004
  ret i8* %28, !dbg !4004
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4005 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4006, metadata !DIExpression()), !dbg !4007
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4008, metadata !DIExpression()), !dbg !4009
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4010, metadata !DIExpression()), !dbg !4011
  %7 = load i64, i64* %5, align 8, !dbg !4012
  %8 = icmp ule i64 %7, -1, !dbg !4013
  br i1 %8, label %9, label %17, !dbg !4014

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4015
  %11 = icmp ule i64 %10, -1, !dbg !4016
  br i1 %11, label %12, label %17, !dbg !4012

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4017
  %14 = load i64, i64* %5, align 8, !dbg !4018
  %15 = load i64, i64* %6, align 8, !dbg !4019
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4020
  br label %19, !dbg !4012

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !4021
  br label %19, !dbg !4012

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4012
  ret i8* %20, !dbg !4022
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4023 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4028, metadata !DIExpression()), !dbg !4029
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4030, metadata !DIExpression()), !dbg !4031
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4032, metadata !DIExpression()), !dbg !4033
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4034, metadata !DIExpression()), !dbg !4035
  %11 = load i8*, i8** %7, align 8, !dbg !4036
  %12 = icmp eq i8* %11, null, !dbg !4038
  br i1 %12, label %13, label %14, !dbg !4039

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4040
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.171, i64 0, i64 0), i8** %7, align 8, !dbg !4042
  store i64 1, i64* %8, align 8, !dbg !4043
  br label %14, !dbg !4044

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4045
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4047
  br i1 %16, label %17, label %18, !dbg !4048

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4049
  br label %18, !dbg !4050

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4051, metadata !DIExpression()), !dbg !4052
  %19 = load i32*, i32** %6, align 8, !dbg !4053
  %20 = load i8*, i8** %7, align 8, !dbg !4054
  %21 = load i64, i64* %8, align 8, !dbg !4055
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4056
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !4057
  store i64 %23, i64* %10, align 8, !dbg !4052
  %24 = load i64, i64* %10, align 8, !dbg !4058
  %25 = icmp ult i64 %24, -3, !dbg !4060
  br i1 %25, label %26, label %32, !dbg !4061

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4062
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !4063
  %29 = icmp ne i32 %28, 0, !dbg !4063
  br i1 %29, label %32, label %30, !dbg !4064

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4065
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4066
  br label %32, !dbg !4066

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4067
  %34 = icmp eq i64 %33, -3, !dbg !4069
  br i1 %34, label %35, label %36, !dbg !4070

35:                                               ; preds = %32
  call void @abort() #19, !dbg !4071
  unreachable, !dbg !4071

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4072
  %38 = icmp ule i64 -2, %37, !dbg !4074
  br i1 %38, label %39, label %53, !dbg !4075

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4076
  %41 = icmp ne i64 %40, 0, !dbg !4077
  br i1 %41, label %42, label %53, !dbg !4078

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4079
  br i1 %43, label %53, label %44, !dbg !4080

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4081
  %46 = icmp ne i32* %45, null, !dbg !4084
  br i1 %46, label %47, label %52, !dbg !4085

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4086
  %49 = load i8, i8* %48, align 1, !dbg !4087
  %50 = zext i8 %49 to i32, !dbg !4088
  %51 = load i32*, i32** %6, align 8, !dbg !4089
  store i32 %50, i32* %51, align 4, !dbg !4090
  br label %52, !dbg !4091

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4092
  br label %55, !dbg !4092

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4093
  store i64 %54, i64* %5, align 8, !dbg !4094
  br label %55, !dbg !4094

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4095
  ret i64 %56, !dbg !4095
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4096 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4111, metadata !DIExpression()), !dbg !4112
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4113
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4114
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4114
  ret void, !dbg !4115
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4116 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4119, metadata !DIExpression()), !dbg !4120
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4121, metadata !DIExpression()), !dbg !4122
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4123, metadata !DIExpression()), !dbg !4124
  %7 = load i8*, i8** %4, align 8, !dbg !4125
  %8 = load i8*, i8** %5, align 8, !dbg !4126
  %9 = load i64, i64* %6, align 8, !dbg !4127
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !4128
  %11 = icmp ne i32 %10, 0, !dbg !4129
  %12 = xor i1 %11, true, !dbg !4129
  ret i1 %12, !dbg !4130
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4131 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4133, metadata !DIExpression()), !dbg !4134
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4135, metadata !DIExpression()), !dbg !4136
  %5 = load i8*, i8** %3, align 8, !dbg !4137
  %6 = load i64, i64* %4, align 8, !dbg !4138
  %7 = icmp ne i64 %6, 0, !dbg !4138
  br i1 %7, label %8, label %10, !dbg !4138

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4139
  br label %11, !dbg !4138

10:                                               ; preds = %2
  br label %11, !dbg !4138

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4138
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !4140
  ret i8* %13, !dbg !4141
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4142 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4143, metadata !DIExpression()), !dbg !4144
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4145, metadata !DIExpression()), !dbg !4146
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4147, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4149, metadata !DIExpression()), !dbg !4150
  %9 = load i64, i64* %7, align 8, !dbg !4151
  %10 = icmp ult i64 %9, 0, !dbg !4151
  br i1 %10, label %11, label %60, !dbg !4151

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4151
  %13 = icmp ult i64 %12, 0, !dbg !4151
  br i1 %13, label %14, label %37, !dbg !4151

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4151

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4151
  %17 = load i64, i64* %7, align 8, !dbg !4151
  %18 = udiv i64 -1, %17, !dbg !4151
  %19 = icmp ult i64 %16, %18, !dbg !4151
  br i1 %19, label %92, label %96, !dbg !4151

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4151

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4151
  %23 = icmp ult i64 %22, 1, !dbg !4151
  br i1 %23, label %27, label %28, !dbg !4151

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4151
  %26 = icmp ult i64 0, %25, !dbg !4151
  br i1 %26, label %27, label %28, !dbg !4151

27:                                               ; preds = %24, %21
  br label %32, !dbg !4151

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4151
  %30 = sub i64 0, %29, !dbg !4151
  %31 = udiv i64 -1, %30, !dbg !4151
  br label %32, !dbg !4151

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4151
  %34 = load i64, i64* %6, align 8, !dbg !4151
  %35 = sub i64 -1, %34, !dbg !4151
  %36 = icmp ule i64 %33, %35, !dbg !4151
  br i1 %36, label %92, label %96, !dbg !4151

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4151

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4151

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4151

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4151
  %42 = icmp eq i64 %41, -1, !dbg !4151
  br i1 %42, label %43, label %55, !dbg !4151

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4151

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4151
  %46 = add i64 %45, 0, !dbg !4151
  %47 = icmp ult i64 0, %46, !dbg !4151
  br i1 %47, label %92, label %96, !dbg !4151

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4151
  %50 = icmp ult i64 0, %49, !dbg !4151
  br i1 %50, label %51, label %96, !dbg !4151

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4151
  %53 = sub i64 %52, 1, !dbg !4151
  %54 = icmp ult i64 -1, %53, !dbg !4151
  br i1 %54, label %92, label %96, !dbg !4151

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4151
  %57 = udiv i64 0, %56, !dbg !4151
  %58 = load i64, i64* %6, align 8, !dbg !4151
  %59 = icmp ult i64 %57, %58, !dbg !4151
  br i1 %59, label %92, label %96, !dbg !4151

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4151
  %62 = icmp eq i64 %61, 0, !dbg !4151
  br i1 %62, label %63, label %64, !dbg !4151

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4151

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4151
  %66 = icmp ult i64 %65, 0, !dbg !4151
  br i1 %66, label %67, label %87, !dbg !4151

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4151

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4151

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4151

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4151
  %72 = icmp eq i64 %71, -1, !dbg !4151
  br i1 %72, label %73, label %82, !dbg !4151

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4151

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4151
  %76 = add i64 %75, 0, !dbg !4151
  %77 = icmp ult i64 0, %76, !dbg !4151
  br i1 %77, label %92, label %96, !dbg !4151

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4151
  %80 = sub i64 %79, 1, !dbg !4151
  %81 = icmp ult i64 -1, %80, !dbg !4151
  br i1 %81, label %92, label %96, !dbg !4151

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4151
  %84 = udiv i64 0, %83, !dbg !4151
  %85 = load i64, i64* %7, align 8, !dbg !4151
  %86 = icmp ult i64 %84, %85, !dbg !4151
  br i1 %86, label %92, label %96, !dbg !4151

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4151
  %89 = udiv i64 -1, %88, !dbg !4151
  %90 = load i64, i64* %6, align 8, !dbg !4151
  %91 = icmp ult i64 %89, %90, !dbg !4151
  br i1 %91, label %92, label %96, !dbg !4151

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4151
  %94 = load i64, i64* %7, align 8, !dbg !4151
  %95 = mul i64 %93, %94, !dbg !4151
  store i64 %95, i64* %8, align 8, !dbg !4151
  br label %100, !dbg !4151

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4151
  %98 = load i64, i64* %7, align 8, !dbg !4151
  %99 = mul i64 %97, %98, !dbg !4151
  store i64 %99, i64* %8, align 8, !dbg !4151
  br label %100, !dbg !4151

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4151
  %102 = icmp ne i32 %101, 0, !dbg !4151
  br i1 %102, label %103, label %105, !dbg !4153

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4154
  store i32 12, i32* %104, align 4, !dbg !4156
  store i8* null, i8** %4, align 8, !dbg !4157
  br label %109, !dbg !4157

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4158
  %107 = load i64, i64* %8, align 8, !dbg !4159
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4160
  store i8* %108, i8** %4, align 8, !dbg !4161
  br label %109, !dbg !4161

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4162
  ret i8* %110, !dbg !4162
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4163 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4166, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4168, metadata !DIExpression()), !dbg !4172
  %5 = load i32, i32* %3, align 4, !dbg !4173
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4175
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4176
  %8 = icmp ne i32 %7, 0, !dbg !4176
  br i1 %8, label %9, label %10, !dbg !4177

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4178
  br label %18, !dbg !4178

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4179
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.182, i64 0, i64 0)), !dbg !4181
  br i1 %12, label %17, label %13, !dbg !4182

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4183
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.183, i64 0, i64 0)), !dbg !4184
  br i1 %15, label %17, label %16, !dbg !4185

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4186
  br label %18, !dbg !4186

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4187
  br label %18, !dbg !4187

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4188
  ret i1 %19, !dbg !4188
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4189 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4192, metadata !DIExpression()), !dbg !4193
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4194, metadata !DIExpression()), !dbg !4195
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4196, metadata !DIExpression()), !dbg !4197
  %7 = load i32, i32* %4, align 4, !dbg !4198
  %8 = load i8*, i8** %5, align 8, !dbg !4199
  %9 = load i64, i64* %6, align 8, !dbg !4200
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4201
  ret i32 %10, !dbg !4202
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4203 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4206, metadata !DIExpression()), !dbg !4207
  %3 = load i32, i32* %2, align 4, !dbg !4208
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4209
  ret i8* %4, !dbg !4210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4211 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4212, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4214, metadata !DIExpression()), !dbg !4215
  %4 = load i32, i32* %2, align 4, !dbg !4216
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4217
  store i8* %5, i8** %3, align 8, !dbg !4215
  %6 = load i8*, i8** %3, align 8, !dbg !4218
  ret i8* %6, !dbg !4219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4220 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4221, metadata !DIExpression()), !dbg !4222
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4223, metadata !DIExpression()), !dbg !4224
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4225, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4227, metadata !DIExpression()), !dbg !4228
  %10 = load i32, i32* %5, align 4, !dbg !4229
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4230
  store i8* %11, i8** %8, align 8, !dbg !4228
  %12 = load i8*, i8** %8, align 8, !dbg !4231
  %13 = icmp eq i8* %12, null, !dbg !4233
  br i1 %13, label %14, label %21, !dbg !4234

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4235
  %16 = icmp ugt i64 %15, 0, !dbg !4238
  br i1 %16, label %17, label %20, !dbg !4239

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4240
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4240
  store i8 0, i8* %19, align 1, !dbg !4241
  br label %20, !dbg !4240

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4242
  br label %45, !dbg !4242

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4243, metadata !DIExpression()), !dbg !4245
  %22 = load i8*, i8** %8, align 8, !dbg !4246
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4247
  store i64 %23, i64* %9, align 8, !dbg !4245
  %24 = load i64, i64* %9, align 8, !dbg !4248
  %25 = load i64, i64* %7, align 8, !dbg !4250
  %26 = icmp ult i64 %24, %25, !dbg !4251
  br i1 %26, label %27, label %32, !dbg !4252

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4253
  %29 = load i8*, i8** %8, align 8, !dbg !4255
  %30 = load i64, i64* %9, align 8, !dbg !4256
  %31 = add i64 %30, 1, !dbg !4257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4258
  store i32 0, i32* %4, align 4, !dbg !4259
  br label %45, !dbg !4259

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4260
  %34 = icmp ugt i64 %33, 0, !dbg !4263
  br i1 %34, label %35, label %44, !dbg !4264

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4265
  %37 = load i8*, i8** %8, align 8, !dbg !4267
  %38 = load i64, i64* %7, align 8, !dbg !4268
  %39 = sub i64 %38, 1, !dbg !4269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4270
  %40 = load i8*, i8** %6, align 8, !dbg !4271
  %41 = load i64, i64* %7, align 8, !dbg !4272
  %42 = sub i64 %41, 1, !dbg !4273
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4271
  store i8 0, i8* %43, align 1, !dbg !4274
  br label %44, !dbg !4275

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4276
  br label %45, !dbg !4276

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4277
  ret i32 %46, !dbg !4277
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
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind readnone willreturn }
attributes #22 = { noreturn }
attributes #23 = { cold }
attributes #24 = { allocsize(1) }
attributes #25 = { allocsize(0) }
attributes #26 = { allocsize(1,2) }
attributes #27 = { allocsize(0,1) }

!llvm.dbg.cu = !{!2, !71, !76, !84, !214, !122, !239, !126, !136, !143, !241, !243, !206, !249, !269, !271, !273, !275, !277, !279, !281, !220, !283, !285, !287, !289, !292, !294, !296}
!llvm.ident = !{!298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298, !298}
!llvm.module.flags = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 45, type: !57, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !41, globals: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/sync.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2b8dff623ed78e0f8980b4530e39b085")
!4 = !{!5, !12, !27}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sync_mode", file: !3, line: 37, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "MODE_FILE", value: 0)
!9 = !DIEnumerator(name: "MODE_DATA", value: 1)
!10 = !DIEnumerator(name: "MODE_FILE_SYSTEM", value: 2)
!11 = !DIEnumerator(name: "MODE_SYNC", value: 3)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 46, baseType: !6, size: 32, elements: !14)
!13 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!15 = !DIEnumerator(name: "_ISupper", value: 256)
!16 = !DIEnumerator(name: "_ISlower", value: 512)
!17 = !DIEnumerator(name: "_ISalpha", value: 1024)
!18 = !DIEnumerator(name: "_ISdigit", value: 2048)
!19 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!20 = !DIEnumerator(name: "_ISspace", value: 8192)
!21 = !DIEnumerator(name: "_ISprint", value: 16384)
!22 = !DIEnumerator(name: "_ISgraph", value: 32768)
!23 = !DIEnumerator(name: "_ISblank", value: 1)
!24 = !DIEnumerator(name: "_IScntrl", value: 2)
!25 = !DIEnumerator(name: "_ISpunct", value: 4)
!26 = !DIEnumerator(name: "_ISalnum", value: 8)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !28, line: 42, baseType: !6, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!30 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!31 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!32 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!33 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!34 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!35 = !DIEnumerator(name: "c_quoting_style", value: 5)
!36 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!37 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!38 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!39 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!40 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!41 = !{!42, !44, !45, !46}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !{!48, !0}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !50, file: !51, line: 575, type: !45, isLocal: true, isDefinition: true)
!50 = distinct !DISubprogram(name: "oputs_", scope: !51, file: !51, line: 573, type: !52, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!51 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!56 = !{}
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1280, elements: !67)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !60, line: 50, size: 256, elements: !61)
!60 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!61 = !{!62, !63, !64, !66}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !60, line: 52, baseType: !54, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !59, file: !60, line: 55, baseType: !45, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !59, file: !60, line: 56, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !59, file: !60, line: 57, baseType: !45, size: 32, offset: 192)
!67 = !{!68}
!68 = !DISubrange(count: 5)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "Version", scope: !71, file: !72, line: 3, type: !54, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !73, splitDebugInlining: false, nameTableKind: None)
!72 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!73 = !{!69}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "file_name", scope: !76, file: !77, line: 45, type: !54, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !78, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!78 = !{!74, !79}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !76, file: !77, line: 55, type: !81, isLocal: true, isDefinition: true)
!81 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !84, file: !85, line: 66, type: !113, isLocal: false, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !86, globals: !87, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!86 = !{!44}
!87 = !{!88, !107, !82, !109, !111}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "old_file_name", scope: !90, file: !85, line: 304, type: !54, isLocal: true, isDefinition: true)
!90 = distinct !DISubprogram(name: "verror_at_line", scope: !85, file: !85, line: 298, type: !91, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !56)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !45, !45, !54, !6, !54, !93}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !94, line: 52, baseType: !95)
!94 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !96, line: 32, baseType: !97)
!96 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !98, baseType: !99)
!98 = !DIFile(filename: "lib/error.c", directory: "/src")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !100, size: 256, elements: !101)
!100 = !DINamespace(name: "std", scope: null)
!101 = !{!102, !103, !104, !105, !106}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !99, file: !98, baseType: !44, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !99, file: !98, baseType: !44, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !99, file: !98, baseType: !44, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !99, file: !98, baseType: !45, size: 32, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !99, file: !98, baseType: !45, size: 32, offset: 224)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "old_line_number", scope: !90, file: !85, line: 305, type: !6, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "error_message_count", scope: !84, file: !85, line: 69, type: !6, isLocal: false, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !84, file: !85, line: 295, type: !45, isLocal: false, isDefinition: true)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null}
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !118, file: !119, line: 506, type: !45, isLocal: true, isDefinition: true)
!118 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !119, file: !119, line: 485, type: !120, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !56)
!119 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!120 = !DISubroutineType(types: !121)
!121 = !{!45, !45, !45}
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !123, splitDebugInlining: false, nameTableKind: None)
!123 = !{!116}
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "program_name", scope: !126, file: !127, line: 31, type: !54, isLocal: false, isDefinition: true)
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !128, globals: !129, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!128 = !{!42}
!129 = !{!124}
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "utf07FF", scope: !132, file: !133, line: 46, type: !138, isLocal: true, isDefinition: true)
!132 = distinct !DISubprogram(name: "proper_name_lite", scope: !133, file: !133, line: 38, type: !134, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !136, retainedNodes: !56)
!133 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!134 = !DISubroutineType(types: !135)
!135 = !{!54, !54, !54}
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !137, splitDebugInlining: false, nameTableKind: None)
!137 = !{!130}
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 16, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 2)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !143, file: !144, line: 76, type: !200, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !151, globals: !155, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!145 = !{!27, !146, !12}
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !28, line: 254, baseType: !6, size: 32, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!149 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!150 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!151 = !{!45, !46, !152}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 46, baseType: !154)
!153 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!154 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!155 = !{!141, !156, !162, !174, !176, !181, !189, !196, !198}
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !143, file: !144, line: 92, type: !158, isLocal: false, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 320, elements: !160)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!160 = !{!161}
!161 = !DISubrange(count: 10)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !143, file: !144, line: 1040, type: !164, isLocal: false, isDefinition: true)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !144, line: 56, size: 448, elements: !165)
!165 = !{!166, !167, !168, !172, !173}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !164, file: !144, line: 59, baseType: !27, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !144, line: 62, baseType: !45, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !164, file: !144, line: 66, baseType: !169, size: 256, offset: 64)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !164, file: !144, line: 69, baseType: !54, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !164, file: !144, line: 72, baseType: !54, size: 64, offset: 384)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !143, file: !144, line: 107, type: !164, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "slot0", scope: !143, file: !144, line: 831, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2048, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 256)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "quote", scope: !183, file: !144, line: 228, type: !186, isLocal: true, isDefinition: true)
!183 = distinct !DISubprogram(name: "gettext_quote", scope: !144, file: !144, line: 197, type: !184, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !143, retainedNodes: !56)
!184 = !DISubroutineType(types: !185)
!185 = !{!54, !54, !27}
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, elements: !187)
!187 = !{!140, !188}
!188 = !DISubrange(count: 4)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "slotvec", scope: !143, file: !144, line: 834, type: !191, isLocal: true, isDefinition: true)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !144, line: 823, size: 128, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !192, file: !144, line: 825, baseType: !152, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !192, file: !144, line: 826, baseType: !42, size: 64, offset: 64)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "nslots", scope: !143, file: !144, line: 832, type: !45, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "slotvec0", scope: !143, file: !144, line: 833, type: !192, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 704, elements: !202)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!202 = !{!203}
!203 = !DISubrange(count: 11)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !206, file: !207, line: 26, type: !209, isLocal: false, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !208, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!208 = !{!204}
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 376, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 47)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "exit_failure", scope: !214, file: !215, line: 24, type: !217, isLocal: false, isDefinition: true)
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !216, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!216 = !{!212}
!217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "internal_state", scope: !220, file: !221, line: 97, type: !225, isLocal: true, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !222, globals: !224, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!222 = !{!44, !152, !223}
!223 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!224 = !{!218}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !226, line: 6, baseType: !227)
!226 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !228, line: 21, baseType: !229)
!228 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 13, size: 64, elements: !230)
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !229, file: !228, line: 15, baseType: !45, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !229, file: !228, line: 20, baseType: !233, size: 32, offset: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 16, size: 32, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !233, file: !228, line: 18, baseType: !6, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !233, file: !228, line: 19, baseType: !237, size: 32)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, elements: !238)
!238 = !{!188}
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!240 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !245, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!245 = !{!246}
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !244, line: 40, baseType: !6, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !251, retainedTypes: !268, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!251 = !{!252, !259}
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !253, file: !250, line: 188, baseType: !6, size: 32, elements: !257)
!253 = distinct !DISubprogram(name: "x2nrealloc", scope: !250, file: !250, line: 176, type: !254, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!254 = !DISubroutineType(types: !255)
!255 = !{!44, !44, !256, !152}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!257 = !{!258}
!258 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !260, file: !250, line: 228, baseType: !6, size: 32, elements: !257)
!260 = distinct !DISubprogram(name: "xpalloc", scope: !250, file: !250, line: 223, type: !261, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !44, !263, !264, !266, !264}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !265, line: 130, baseType: !266)
!265 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !153, line: 35, baseType: !267)
!267 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!268 = !{!42, !44, !81, !267, !154}
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!270 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!276 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!278 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!280 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !291, splitDebugInlining: false, nameTableKind: None)
!290 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!291 = !{!81, !154, !44}
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!297 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!298 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!299 = !{i32 7, !"Dwarf Version", i32 5}
!300 = !{i32 2, !"Debug Info Version", i32 3}
!301 = !{i32 1, !"wchar_size", i32 4}
!302 = !{i32 1, !"branch-target-enforcement", i32 0}
!303 = !{i32 1, !"sign-return-address", i32 0}
!304 = !{i32 1, !"sign-return-address-all", i32 0}
!305 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!306 = !{i32 7, !"PIC Level", i32 2}
!307 = !{i32 7, !"PIE Level", i32 2}
!308 = !{i32 7, !"uwtable", i32 1}
!309 = !{i32 7, !"frame-pointer", i32 1}
!310 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 55, type: !311, scopeLine: 56, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !45}
!313 = !DILocalVariable(name: "status", arg: 1, scope: !310, file: !3, line: 55, type: !45)
!314 = !DILocation(line: 55, column: 12, scope: !310)
!315 = !DILocation(line: 57, column: 7, scope: !316)
!316 = distinct !DILexicalBlock(scope: !310, file: !3, line: 57, column: 7)
!317 = !DILocation(line: 57, column: 14, scope: !316)
!318 = !DILocation(line: 57, column: 7, scope: !310)
!319 = !DILocation(line: 58, column: 5, scope: !316)
!320 = !DILocation(line: 58, column: 5, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !3, line: 58, column: 5)
!322 = !DILocation(line: 61, column: 15, scope: !323)
!323 = distinct !DILexicalBlock(scope: !316, file: !3, line: 60, column: 5)
!324 = !DILocation(line: 61, column: 52, scope: !323)
!325 = !DILocation(line: 61, column: 7, scope: !323)
!326 = !DILocation(line: 62, column: 7, scope: !323)
!327 = !DILocation(line: 70, column: 7, scope: !323)
!328 = !DILocation(line: 73, column: 7, scope: !323)
!329 = !DILocation(line: 76, column: 7, scope: !323)
!330 = !DILocation(line: 77, column: 7, scope: !323)
!331 = !DILocation(line: 78, column: 7, scope: !323)
!332 = !DILocation(line: 80, column: 9, scope: !310)
!333 = !DILocation(line: 80, column: 3, scope: !310)
!334 = !DILocalVariable(name: "program", arg: 1, scope: !50, file: !51, line: 573, type: !54)
!335 = !DILocation(line: 573, column: 34, scope: !50)
!336 = !DILocalVariable(name: "option", arg: 2, scope: !50, file: !51, line: 573, type: !54)
!337 = !DILocation(line: 573, column: 55, scope: !50)
!338 = !DILocation(line: 581, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !50, file: !51, line: 581, column: 7)
!340 = !DILocation(line: 581, column: 19, scope: !339)
!341 = !DILocation(line: 581, column: 7, scope: !50)
!342 = !DILocalVariable(name: "term", scope: !343, file: !51, line: 585, type: !54)
!343 = distinct !DILexicalBlock(scope: !339, file: !51, line: 582, column: 5)
!344 = !DILocation(line: 585, column: 19, scope: !343)
!345 = !DILocation(line: 585, column: 26, scope: !343)
!346 = !DILocation(line: 586, column: 23, scope: !343)
!347 = !DILocation(line: 586, column: 28, scope: !343)
!348 = !DILocation(line: 586, column: 33, scope: !343)
!349 = !DILocation(line: 586, column: 32, scope: !343)
!350 = !DILocation(line: 586, column: 38, scope: !343)
!351 = !DILocation(line: 586, column: 48, scope: !343)
!352 = !DILocation(line: 586, column: 41, scope: !343)
!353 = !DILocation(line: 586, column: 19, scope: !343)
!354 = !DILocation(line: 587, column: 5, scope: !343)
!355 = !DILocation(line: 588, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !50, file: !51, line: 588, column: 7)
!357 = !DILocation(line: 588, column: 7, scope: !50)
!358 = !DILocation(line: 590, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !51, line: 589, column: 5)
!360 = !DILocation(line: 591, column: 7, scope: !359)
!361 = !DILocalVariable(name: "double_space", scope: !50, file: !51, line: 594, type: !81)
!362 = !DILocation(line: 594, column: 8, scope: !50)
!363 = !DILocalVariable(name: "first_word", scope: !50, file: !51, line: 595, type: !54)
!364 = !DILocation(line: 595, column: 15, scope: !50)
!365 = !DILocation(line: 595, column: 28, scope: !50)
!366 = !DILocation(line: 595, column: 45, scope: !50)
!367 = !DILocation(line: 595, column: 37, scope: !50)
!368 = !DILocation(line: 595, column: 35, scope: !50)
!369 = !DILocalVariable(name: "option_text", scope: !50, file: !51, line: 596, type: !54)
!370 = !DILocation(line: 596, column: 15, scope: !50)
!371 = !DILocation(line: 596, column: 37, scope: !50)
!372 = !DILocation(line: 596, column: 29, scope: !50)
!373 = !DILocation(line: 597, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !50, file: !51, line: 597, column: 7)
!375 = !DILocation(line: 597, column: 7, scope: !50)
!376 = !DILocation(line: 599, column: 21, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !51, line: 598, column: 5)
!378 = !DILocation(line: 599, column: 19, scope: !377)
!379 = !DILocation(line: 602, column: 20, scope: !377)
!380 = !DILocation(line: 603, column: 5, scope: !377)
!381 = !DILocation(line: 604, column: 12, scope: !382)
!382 = distinct !DILexicalBlock(scope: !374, file: !51, line: 604, column: 12)
!383 = !DILocation(line: 604, column: 27, scope: !382)
!384 = !DILocation(line: 604, column: 24, scope: !382)
!385 = !DILocation(line: 604, column: 12, scope: !374)
!386 = !DILocalVariable(name: "s", scope: !387, file: !51, line: 608, type: !54)
!387 = distinct !DILexicalBlock(scope: !382, file: !51, line: 605, column: 5)
!388 = !DILocation(line: 608, column: 19, scope: !387)
!389 = !DILocation(line: 608, column: 23, scope: !387)
!390 = !DILocalVariable(name: "spaces", scope: !387, file: !51, line: 609, type: !152)
!391 = !DILocation(line: 609, column: 14, scope: !387)
!392 = !DILocation(line: 610, column: 7, scope: !387)
!393 = !DILocation(line: 610, column: 14, scope: !387)
!394 = !DILocation(line: 610, column: 18, scope: !387)
!395 = !DILocation(line: 610, column: 16, scope: !387)
!396 = !DILocation(line: 610, column: 30, scope: !387)
!397 = !DILocation(line: 610, column: 33, scope: !387)
!398 = !DILocation(line: 610, column: 40, scope: !387)
!399 = !DILocation(line: 0, scope: !387)
!400 = !DILocation(line: 611, column: 21, scope: !387)
!401 = !DILocation(line: 611, column: 20, scope: !387)
!402 = !DILocation(line: 611, column: 19, scope: !387)
!403 = !DILocation(line: 611, column: 16, scope: !387)
!404 = distinct !{!404, !392, !400, !405}
!405 = !{!"llvm.loop.mustprogress"}
!406 = !DILocation(line: 612, column: 11, scope: !407)
!407 = distinct !DILexicalBlock(scope: !387, file: !51, line: 612, column: 11)
!408 = !DILocation(line: 612, column: 18, scope: !407)
!409 = !DILocation(line: 612, column: 11, scope: !387)
!410 = !DILocation(line: 615, column: 25, scope: !411)
!411 = distinct !DILexicalBlock(scope: !407, file: !51, line: 613, column: 9)
!412 = !DILocation(line: 615, column: 23, scope: !411)
!413 = !DILocation(line: 616, column: 24, scope: !411)
!414 = !DILocation(line: 617, column: 9, scope: !411)
!415 = !DILocation(line: 618, column: 5, scope: !387)
!416 = !DILocalVariable(name: "anchor_len", scope: !50, file: !51, line: 620, type: !152)
!417 = !DILocation(line: 620, column: 10, scope: !50)
!418 = !DILocation(line: 620, column: 32, scope: !50)
!419 = !DILocation(line: 620, column: 23, scope: !50)
!420 = !DILocalVariable(name: "desc_text", scope: !50, file: !51, line: 625, type: !54)
!421 = !DILocation(line: 625, column: 15, scope: !50)
!422 = !DILocation(line: 625, column: 27, scope: !50)
!423 = !DILocation(line: 625, column: 41, scope: !50)
!424 = !DILocation(line: 625, column: 39, scope: !50)
!425 = !DILocation(line: 626, column: 3, scope: !50)
!426 = !DILocation(line: 626, column: 11, scope: !50)
!427 = !DILocation(line: 626, column: 10, scope: !50)
!428 = !DILocation(line: 626, column: 21, scope: !50)
!429 = !DILocation(line: 626, column: 25, scope: !50)
!430 = !DILocation(line: 626, column: 24, scope: !50)
!431 = !DILocation(line: 626, column: 35, scope: !50)
!432 = !DILocation(line: 0, scope: !50)
!433 = !DILocation(line: 628, column: 12, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !51, line: 628, column: 11)
!435 = distinct !DILexicalBlock(scope: !50, file: !51, line: 627, column: 5)
!436 = !DILocation(line: 628, column: 11, scope: !434)
!437 = !DILocation(line: 628, column: 22, scope: !434)
!438 = !DILocation(line: 628, column: 29, scope: !434)
!439 = !DILocation(line: 628, column: 34, scope: !434)
!440 = !DILocation(line: 628, column: 44, scope: !434)
!441 = !DILocation(line: 628, column: 32, scope: !434)
!442 = !DILocation(line: 628, column: 49, scope: !434)
!443 = !DILocation(line: 628, column: 11, scope: !435)
!444 = !DILocation(line: 629, column: 22, scope: !434)
!445 = !DILocation(line: 629, column: 9, scope: !434)
!446 = !DILocation(line: 630, column: 11, scope: !447)
!447 = distinct !DILexicalBlock(scope: !435, file: !51, line: 630, column: 11)
!448 = !DILocation(line: 630, column: 11, scope: !435)
!449 = !DILocation(line: 632, column: 16, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !51, line: 632, column: 15)
!451 = distinct !DILexicalBlock(scope: !447, file: !51, line: 631, column: 9)
!452 = !DILocation(line: 632, column: 15, scope: !450)
!453 = !DILocation(line: 632, column: 26, scope: !450)
!454 = !DILocation(line: 632, column: 34, scope: !450)
!455 = !DILocation(line: 632, column: 37, scope: !450)
!456 = !DILocation(line: 632, column: 15, scope: !451)
!457 = !DILocation(line: 633, column: 13, scope: !450)
!458 = !DILocation(line: 636, column: 16, scope: !459)
!459 = distinct !DILexicalBlock(scope: !451, file: !51, line: 636, column: 15)
!460 = !DILocation(line: 636, column: 29, scope: !459)
!461 = !DILocation(line: 636, column: 34, scope: !459)
!462 = !DILocation(line: 636, column: 44, scope: !459)
!463 = !DILocation(line: 636, column: 32, scope: !459)
!464 = !DILocation(line: 636, column: 49, scope: !459)
!465 = !DILocation(line: 636, column: 15, scope: !451)
!466 = !DILocation(line: 637, column: 13, scope: !459)
!467 = !DILocation(line: 638, column: 9, scope: !451)
!468 = !DILocation(line: 640, column: 16, scope: !435)
!469 = distinct !{!469, !425, !470, !405}
!470 = !DILocation(line: 641, column: 5, scope: !50)
!471 = !DILocation(line: 644, column: 3, scope: !50)
!472 = !DILocalVariable(name: "url_program", scope: !50, file: !51, line: 648, type: !54)
!473 = !DILocation(line: 648, column: 15, scope: !50)
!474 = !DILocation(line: 648, column: 38, scope: !50)
!475 = !DILocation(line: 648, column: 31, scope: !50)
!476 = !DILocation(line: 649, column: 38, scope: !50)
!477 = !DILocation(line: 649, column: 31, scope: !50)
!478 = !DILocation(line: 650, column: 38, scope: !50)
!479 = !DILocation(line: 650, column: 31, scope: !50)
!480 = !DILocation(line: 651, column: 38, scope: !50)
!481 = !DILocation(line: 651, column: 31, scope: !50)
!482 = !DILocation(line: 652, column: 38, scope: !50)
!483 = !DILocation(line: 652, column: 31, scope: !50)
!484 = !DILocation(line: 653, column: 38, scope: !50)
!485 = !DILocation(line: 653, column: 31, scope: !50)
!486 = !DILocation(line: 654, column: 38, scope: !50)
!487 = !DILocation(line: 654, column: 31, scope: !50)
!488 = !DILocation(line: 655, column: 38, scope: !50)
!489 = !DILocation(line: 655, column: 31, scope: !50)
!490 = !DILocation(line: 656, column: 38, scope: !50)
!491 = !DILocation(line: 656, column: 31, scope: !50)
!492 = !DILocation(line: 657, column: 38, scope: !50)
!493 = !DILocation(line: 657, column: 31, scope: !50)
!494 = !DILocation(line: 658, column: 31, scope: !50)
!495 = !DILocation(line: 663, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !50, file: !51, line: 663, column: 7)
!497 = !DILocation(line: 664, column: 7, scope: !496)
!498 = !DILocation(line: 664, column: 10, scope: !496)
!499 = !DILocation(line: 663, column: 7, scope: !50)
!500 = !DILocation(line: 670, column: 15, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !51, line: 665, column: 5)
!502 = !DILocation(line: 670, column: 28, scope: !501)
!503 = !DILocation(line: 670, column: 47, scope: !501)
!504 = !DILocation(line: 670, column: 41, scope: !501)
!505 = !DILocation(line: 670, column: 59, scope: !501)
!506 = !DILocation(line: 669, column: 7, scope: !501)
!507 = !DILocation(line: 671, column: 5, scope: !501)
!508 = !DILocation(line: 676, column: 48, scope: !509)
!509 = distinct !DILexicalBlock(scope: !496, file: !51, line: 673, column: 5)
!510 = !DILocation(line: 677, column: 21, scope: !509)
!511 = !DILocation(line: 677, column: 15, scope: !509)
!512 = !DILocation(line: 677, column: 33, scope: !509)
!513 = !DILocation(line: 676, column: 7, scope: !509)
!514 = !DILocation(line: 679, column: 3, scope: !50)
!515 = !DILocation(line: 683, column: 3, scope: !50)
!516 = !DILocation(line: 686, column: 3, scope: !50)
!517 = !DILocation(line: 688, column: 3, scope: !50)
!518 = !DILocation(line: 691, column: 3, scope: !50)
!519 = !DILocation(line: 695, column: 3, scope: !50)
!520 = !DILocation(line: 696, column: 1, scope: !50)
!521 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !51, file: !51, line: 836, type: !522, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !54}
!524 = !DILocalVariable(name: "program", arg: 1, scope: !521, file: !51, line: 836, type: !54)
!525 = !DILocation(line: 836, column: 34, scope: !521)
!526 = !DILocalVariable(name: "infomap", scope: !521, file: !51, line: 838, type: !527)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 896, elements: !533)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !521, file: !51, line: 838, size: 128, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !529, file: !51, line: 838, baseType: !54, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !529, file: !51, line: 838, baseType: !54, size: 64, offset: 64)
!533 = !{!534}
!534 = !DISubrange(count: 7)
!535 = !DILocation(line: 838, column: 67, scope: !521)
!536 = !DILocalVariable(name: "node", scope: !521, file: !51, line: 848, type: !54)
!537 = !DILocation(line: 848, column: 15, scope: !521)
!538 = !DILocation(line: 848, column: 22, scope: !521)
!539 = !DILocalVariable(name: "map_prog", scope: !521, file: !51, line: 849, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!541 = !DILocation(line: 849, column: 25, scope: !521)
!542 = !DILocation(line: 849, column: 36, scope: !521)
!543 = !DILocation(line: 851, column: 3, scope: !521)
!544 = !DILocation(line: 851, column: 10, scope: !521)
!545 = !DILocation(line: 851, column: 20, scope: !521)
!546 = !DILocation(line: 851, column: 28, scope: !521)
!547 = !DILocation(line: 851, column: 40, scope: !521)
!548 = !DILocation(line: 851, column: 49, scope: !521)
!549 = !DILocation(line: 851, column: 59, scope: !521)
!550 = !DILocation(line: 851, column: 33, scope: !521)
!551 = !DILocation(line: 851, column: 31, scope: !521)
!552 = !DILocation(line: 0, scope: !521)
!553 = !DILocation(line: 852, column: 13, scope: !521)
!554 = distinct !{!554, !543, !553, !405}
!555 = !DILocation(line: 854, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !521, file: !51, line: 854, column: 7)
!557 = !DILocation(line: 854, column: 17, scope: !556)
!558 = !DILocation(line: 854, column: 7, scope: !521)
!559 = !DILocation(line: 855, column: 12, scope: !556)
!560 = !DILocation(line: 855, column: 22, scope: !556)
!561 = !DILocation(line: 855, column: 10, scope: !556)
!562 = !DILocation(line: 855, column: 5, scope: !556)
!563 = !DILocation(line: 857, column: 3, scope: !521)
!564 = !DILocalVariable(name: "lc_messages", scope: !521, file: !51, line: 861, type: !54)
!565 = !DILocation(line: 861, column: 15, scope: !521)
!566 = !DILocation(line: 861, column: 29, scope: !521)
!567 = !DILocation(line: 862, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !521, file: !51, line: 862, column: 7)
!569 = !DILocation(line: 862, column: 19, scope: !568)
!570 = !DILocation(line: 862, column: 22, scope: !568)
!571 = !DILocation(line: 862, column: 7, scope: !521)
!572 = !DILocation(line: 868, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !568, file: !51, line: 863, column: 5)
!574 = !DILocation(line: 870, column: 5, scope: !573)
!575 = !DILocalVariable(name: "url_program", scope: !521, file: !51, line: 874, type: !54)
!576 = !DILocation(line: 874, column: 15, scope: !521)
!577 = !DILocation(line: 874, column: 36, scope: !521)
!578 = !DILocation(line: 874, column: 29, scope: !521)
!579 = !DILocation(line: 874, column: 61, scope: !521)
!580 = !DILocation(line: 875, column: 11, scope: !521)
!581 = !DILocation(line: 876, column: 24, scope: !521)
!582 = !DILocation(line: 875, column: 3, scope: !521)
!583 = !DILocation(line: 877, column: 11, scope: !521)
!584 = !DILocation(line: 878, column: 11, scope: !521)
!585 = !DILocation(line: 878, column: 17, scope: !521)
!586 = !DILocation(line: 878, column: 25, scope: !521)
!587 = !DILocation(line: 878, column: 22, scope: !521)
!588 = !DILocation(line: 877, column: 3, scope: !521)
!589 = !DILocation(line: 879, column: 1, scope: !521)
!590 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 166, type: !591, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!591 = !DISubroutineType(types: !592)
!592 = !{!45, !45, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!594 = !DILocalVariable(name: "argc", arg: 1, scope: !590, file: !3, line: 166, type: !45)
!595 = !DILocation(line: 166, column: 11, scope: !590)
!596 = !DILocalVariable(name: "argv", arg: 2, scope: !590, file: !3, line: 166, type: !593)
!597 = !DILocation(line: 166, column: 24, scope: !590)
!598 = !DILocalVariable(name: "arg_data", scope: !590, file: !3, line: 168, type: !81)
!599 = !DILocation(line: 168, column: 8, scope: !590)
!600 = !DILocalVariable(name: "arg_file_system", scope: !590, file: !3, line: 168, type: !81)
!601 = !DILocation(line: 168, column: 26, scope: !590)
!602 = !DILocalVariable(name: "ok", scope: !590, file: !3, line: 169, type: !81)
!603 = !DILocation(line: 169, column: 8, scope: !590)
!604 = !DILocation(line: 172, column: 21, scope: !590)
!605 = !DILocation(line: 172, column: 3, scope: !590)
!606 = !DILocation(line: 173, column: 3, scope: !590)
!607 = !DILocation(line: 174, column: 3, scope: !590)
!608 = !DILocation(line: 175, column: 3, scope: !590)
!609 = !DILocation(line: 177, column: 3, scope: !590)
!610 = !DILocalVariable(name: "c", scope: !590, file: !3, line: 179, type: !45)
!611 = !DILocation(line: 179, column: 7, scope: !590)
!612 = !DILocation(line: 180, column: 3, scope: !590)
!613 = !DILocation(line: 180, column: 28, scope: !590)
!614 = !DILocation(line: 180, column: 34, scope: !590)
!615 = !DILocation(line: 180, column: 15, scope: !590)
!616 = !DILocation(line: 180, column: 13, scope: !590)
!617 = !DILocation(line: 181, column: 10, scope: !590)
!618 = !DILocation(line: 183, column: 15, scope: !619)
!619 = distinct !DILexicalBlock(scope: !590, file: !3, line: 182, column: 5)
!620 = !DILocation(line: 183, column: 7, scope: !619)
!621 = !DILocation(line: 186, column: 20, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !3, line: 184, column: 9)
!623 = !DILocation(line: 187, column: 11, scope: !622)
!624 = !DILocation(line: 190, column: 27, scope: !622)
!625 = !DILocation(line: 191, column: 11, scope: !622)
!626 = !DILocation(line: 193, column: 9, scope: !622)
!627 = !DILocation(line: 195, column: 9, scope: !622)
!628 = !DILocation(line: 198, column: 11, scope: !622)
!629 = distinct !{!629, !612, !630, !405}
!630 = !DILocation(line: 200, column: 5, scope: !590)
!631 = !DILocalVariable(name: "args_specified", scope: !590, file: !3, line: 202, type: !81)
!632 = !DILocation(line: 202, column: 8, scope: !590)
!633 = !DILocation(line: 202, column: 25, scope: !590)
!634 = !DILocation(line: 202, column: 34, scope: !590)
!635 = !DILocation(line: 202, column: 32, scope: !590)
!636 = !DILocation(line: 204, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !590, file: !3, line: 204, column: 7)
!638 = !DILocation(line: 204, column: 16, scope: !637)
!639 = !DILocation(line: 204, column: 19, scope: !637)
!640 = !DILocation(line: 204, column: 7, scope: !590)
!641 = !DILocation(line: 205, column: 5, scope: !637)
!642 = !DILocation(line: 208, column: 8, scope: !643)
!643 = distinct !DILexicalBlock(scope: !590, file: !3, line: 208, column: 7)
!644 = !DILocation(line: 208, column: 23, scope: !643)
!645 = !DILocation(line: 208, column: 26, scope: !643)
!646 = !DILocation(line: 208, column: 7, scope: !590)
!647 = !DILocation(line: 209, column: 5, scope: !643)
!648 = !DILocalVariable(name: "mode", scope: !590, file: !3, line: 211, type: !5)
!649 = !DILocation(line: 211, column: 18, scope: !590)
!650 = !DILocation(line: 212, column: 9, scope: !651)
!651 = distinct !DILexicalBlock(scope: !590, file: !3, line: 212, column: 7)
!652 = !DILocation(line: 212, column: 24, scope: !651)
!653 = !DILocation(line: 212, column: 28, scope: !651)
!654 = !DILocation(line: 212, column: 44, scope: !651)
!655 = !DILocation(line: 212, column: 7, scope: !590)
!656 = !DILocation(line: 213, column: 10, scope: !651)
!657 = !DILocation(line: 213, column: 5, scope: !651)
!658 = !DILocation(line: 214, column: 12, scope: !659)
!659 = distinct !DILexicalBlock(scope: !651, file: !3, line: 214, column: 12)
!660 = !DILocation(line: 214, column: 12, scope: !651)
!661 = !DILocation(line: 215, column: 10, scope: !659)
!662 = !DILocation(line: 215, column: 5, scope: !659)
!663 = !DILocation(line: 216, column: 14, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !3, line: 216, column: 12)
!665 = !DILocation(line: 216, column: 12, scope: !659)
!666 = !DILocation(line: 217, column: 10, scope: !664)
!667 = !DILocation(line: 217, column: 5, scope: !664)
!668 = !DILocation(line: 219, column: 10, scope: !664)
!669 = !DILocation(line: 221, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !590, file: !3, line: 221, column: 7)
!671 = !DILocation(line: 221, column: 12, scope: !670)
!672 = !DILocation(line: 221, column: 7, scope: !590)
!673 = !DILocation(line: 222, column: 5, scope: !670)
!674 = !DILocation(line: 225, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !670, file: !3, line: 224, column: 5)
!676 = !DILocation(line: 225, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !3, line: 225, column: 7)
!678 = distinct !DILexicalBlock(scope: !675, file: !3, line: 225, column: 7)
!679 = !DILocation(line: 225, column: 23, scope: !677)
!680 = !DILocation(line: 225, column: 21, scope: !677)
!681 = !DILocation(line: 225, column: 7, scope: !678)
!682 = !DILocation(line: 226, column: 25, scope: !677)
!683 = !DILocation(line: 226, column: 31, scope: !677)
!684 = !DILocation(line: 226, column: 36, scope: !677)
!685 = !DILocation(line: 226, column: 15, scope: !677)
!686 = !DILocation(line: 226, column: 12, scope: !677)
!687 = !DILocation(line: 226, column: 9, scope: !677)
!688 = !DILocation(line: 225, column: 35, scope: !677)
!689 = !DILocation(line: 225, column: 7, scope: !677)
!690 = distinct !{!690, !681, !691, !405}
!691 = !DILocation(line: 226, column: 43, scope: !678)
!692 = !DILocation(line: 229, column: 10, scope: !590)
!693 = !DILocation(line: 229, column: 3, scope: !590)
!694 = distinct !DISubprogram(name: "sync_arg", scope: !3, file: !3, line: 87, type: !695, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!695 = !DISubroutineType(types: !696)
!696 = !{!81, !5, !54}
!697 = !DILocalVariable(name: "mode", arg: 1, scope: !694, file: !3, line: 87, type: !5)
!698 = !DILocation(line: 87, column: 26, scope: !694)
!699 = !DILocalVariable(name: "file", arg: 2, scope: !694, file: !3, line: 87, type: !54)
!700 = !DILocation(line: 87, column: 44, scope: !694)
!701 = !DILocalVariable(name: "open_flags", scope: !694, file: !3, line: 89, type: !45)
!702 = !DILocation(line: 89, column: 7, scope: !694)
!703 = !DILocalVariable(name: "fd", scope: !694, file: !3, line: 99, type: !45)
!704 = !DILocation(line: 99, column: 7, scope: !694)
!705 = !DILocation(line: 99, column: 18, scope: !694)
!706 = !DILocation(line: 99, column: 24, scope: !694)
!707 = !DILocation(line: 99, column: 12, scope: !694)
!708 = !DILocation(line: 100, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !694, file: !3, line: 100, column: 7)
!710 = !DILocation(line: 100, column: 10, scope: !709)
!711 = !DILocation(line: 100, column: 7, scope: !694)
!712 = !DILocalVariable(name: "rd_errno", scope: !713, file: !3, line: 104, type: !45)
!713 = distinct !DILexicalBlock(scope: !709, file: !3, line: 101, column: 5)
!714 = !DILocation(line: 104, column: 11, scope: !713)
!715 = !DILocation(line: 104, column: 22, scope: !713)
!716 = !DILocation(line: 105, column: 11, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !3, line: 105, column: 11)
!718 = !DILocation(line: 105, column: 22, scope: !717)
!719 = !DILocation(line: 105, column: 11, scope: !713)
!720 = !DILocation(line: 106, column: 20, scope: !717)
!721 = !DILocation(line: 106, column: 14, scope: !717)
!722 = !DILocation(line: 106, column: 12, scope: !717)
!723 = !DILocation(line: 106, column: 9, scope: !717)
!724 = !DILocation(line: 107, column: 11, scope: !725)
!725 = distinct !DILexicalBlock(scope: !713, file: !3, line: 107, column: 11)
!726 = !DILocation(line: 107, column: 14, scope: !725)
!727 = !DILocation(line: 107, column: 11, scope: !713)
!728 = !DILocation(line: 109, column: 11, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !3, line: 108, column: 9)
!730 = !DILocation(line: 110, column: 11, scope: !729)
!731 = !DILocation(line: 112, column: 5, scope: !713)
!732 = !DILocalVariable(name: "ret", scope: !694, file: !3, line: 114, type: !81)
!733 = !DILocation(line: 114, column: 8, scope: !694)
!734 = !DILocalVariable(name: "fdflags", scope: !694, file: !3, line: 117, type: !45)
!735 = !DILocation(line: 117, column: 7, scope: !694)
!736 = !DILocation(line: 117, column: 24, scope: !694)
!737 = !DILocation(line: 117, column: 17, scope: !694)
!738 = !DILocation(line: 118, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !694, file: !3, line: 118, column: 7)
!740 = !DILocation(line: 118, column: 15, scope: !739)
!741 = !DILocation(line: 119, column: 7, scope: !739)
!742 = !DILocation(line: 119, column: 17, scope: !739)
!743 = !DILocation(line: 119, column: 30, scope: !739)
!744 = !DILocation(line: 119, column: 38, scope: !739)
!745 = !DILocation(line: 119, column: 10, scope: !739)
!746 = !DILocation(line: 119, column: 53, scope: !739)
!747 = !DILocation(line: 118, column: 7, scope: !694)
!748 = !DILocation(line: 121, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !739, file: !3, line: 120, column: 5)
!750 = !DILocation(line: 123, column: 11, scope: !749)
!751 = !DILocation(line: 124, column: 5, scope: !749)
!752 = !DILocation(line: 126, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !694, file: !3, line: 126, column: 7)
!754 = !DILocation(line: 126, column: 7, scope: !694)
!755 = !DILocalVariable(name: "sync_status", scope: !756, file: !3, line: 128, type: !45)
!756 = distinct !DILexicalBlock(scope: !753, file: !3, line: 127, column: 5)
!757 = !DILocation(line: 128, column: 11, scope: !756)
!758 = !DILocation(line: 130, column: 15, scope: !756)
!759 = !DILocation(line: 130, column: 7, scope: !756)
!760 = !DILocation(line: 133, column: 36, scope: !761)
!761 = distinct !DILexicalBlock(scope: !756, file: !3, line: 131, column: 9)
!762 = !DILocation(line: 133, column: 25, scope: !761)
!763 = !DILocation(line: 133, column: 23, scope: !761)
!764 = !DILocation(line: 134, column: 11, scope: !761)
!765 = !DILocation(line: 137, column: 32, scope: !761)
!766 = !DILocation(line: 137, column: 25, scope: !761)
!767 = !DILocation(line: 137, column: 23, scope: !761)
!768 = !DILocation(line: 138, column: 11, scope: !761)
!769 = !DILocation(line: 142, column: 33, scope: !761)
!770 = !DILocation(line: 142, column: 25, scope: !761)
!771 = !DILocation(line: 142, column: 23, scope: !761)
!772 = !DILocation(line: 143, column: 11, scope: !761)
!773 = !DILocation(line: 145, column: 9, scope: !761)
!774 = !DILocation(line: 146, column: 11, scope: !761)
!775 = !DILocation(line: 149, column: 11, scope: !776)
!776 = distinct !DILexicalBlock(scope: !756, file: !3, line: 149, column: 11)
!777 = !DILocation(line: 149, column: 23, scope: !776)
!778 = !DILocation(line: 149, column: 11, scope: !756)
!779 = !DILocation(line: 151, column: 11, scope: !780)
!780 = distinct !DILexicalBlock(scope: !776, file: !3, line: 150, column: 9)
!781 = !DILocation(line: 152, column: 15, scope: !780)
!782 = !DILocation(line: 153, column: 9, scope: !780)
!783 = !DILocation(line: 154, column: 5, scope: !756)
!784 = !DILocation(line: 156, column: 14, scope: !785)
!785 = distinct !DILexicalBlock(scope: !694, file: !3, line: 156, column: 7)
!786 = !DILocation(line: 156, column: 7, scope: !785)
!787 = !DILocation(line: 156, column: 18, scope: !785)
!788 = !DILocation(line: 156, column: 7, scope: !694)
!789 = !DILocation(line: 158, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !3, line: 157, column: 5)
!791 = !DILocation(line: 159, column: 11, scope: !790)
!792 = !DILocation(line: 160, column: 5, scope: !790)
!793 = !DILocation(line: 162, column: 10, scope: !694)
!794 = !DILocation(line: 162, column: 3, scope: !694)
!795 = !DILocation(line: 163, column: 1, scope: !694)
!796 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !77, file: !77, line: 50, type: !522, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !56)
!797 = !DILocalVariable(name: "file", arg: 1, scope: !796, file: !77, line: 50, type: !54)
!798 = !DILocation(line: 50, column: 41, scope: !796)
!799 = !DILocation(line: 52, column: 15, scope: !796)
!800 = !DILocation(line: 52, column: 13, scope: !796)
!801 = !DILocation(line: 53, column: 1, scope: !796)
!802 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !77, file: !77, line: 87, type: !803, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !56)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !81}
!805 = !DILocalVariable(name: "ignore", arg: 1, scope: !802, file: !77, line: 87, type: !81)
!806 = !DILocation(line: 87, column: 37, scope: !802)
!807 = !DILocation(line: 89, column: 18, scope: !802)
!808 = !DILocation(line: 89, column: 16, scope: !802)
!809 = !DILocation(line: 90, column: 1, scope: !802)
!810 = distinct !DISubprogram(name: "close_stdout", scope: !77, file: !77, line: 116, type: !114, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !56)
!811 = !DILocation(line: 118, column: 21, scope: !812)
!812 = distinct !DILexicalBlock(scope: !810, file: !77, line: 118, column: 7)
!813 = !DILocation(line: 118, column: 7, scope: !812)
!814 = !DILocation(line: 118, column: 29, scope: !812)
!815 = !DILocation(line: 119, column: 7, scope: !812)
!816 = !DILocation(line: 119, column: 12, scope: !812)
!817 = !DILocation(line: 119, column: 25, scope: !812)
!818 = !DILocation(line: 119, column: 28, scope: !812)
!819 = !DILocation(line: 119, column: 34, scope: !812)
!820 = !DILocation(line: 118, column: 7, scope: !810)
!821 = !DILocalVariable(name: "write_error", scope: !822, file: !77, line: 121, type: !54)
!822 = distinct !DILexicalBlock(scope: !812, file: !77, line: 120, column: 5)
!823 = !DILocation(line: 121, column: 19, scope: !822)
!824 = !DILocation(line: 121, column: 33, scope: !822)
!825 = !DILocation(line: 122, column: 11, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !77, line: 122, column: 11)
!827 = !DILocation(line: 122, column: 11, scope: !822)
!828 = !DILocation(line: 123, column: 9, scope: !826)
!829 = !DILocation(line: 126, column: 9, scope: !826)
!830 = !DILocation(line: 128, column: 14, scope: !822)
!831 = !DILocation(line: 128, column: 7, scope: !822)
!832 = !DILocation(line: 133, column: 42, scope: !833)
!833 = distinct !DILexicalBlock(scope: !810, file: !77, line: 133, column: 7)
!834 = !DILocation(line: 133, column: 28, scope: !833)
!835 = !DILocation(line: 133, column: 50, scope: !833)
!836 = !DILocation(line: 133, column: 7, scope: !810)
!837 = !DILocation(line: 134, column: 12, scope: !833)
!838 = !DILocation(line: 134, column: 5, scope: !833)
!839 = !DILocation(line: 135, column: 1, scope: !810)
!840 = distinct !DISubprogram(name: "verror", scope: !85, file: !85, line: 251, type: !841, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !56)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !45, !45, !54, !93}
!843 = !DILocalVariable(name: "status", arg: 1, scope: !840, file: !85, line: 251, type: !45)
!844 = !DILocation(line: 251, column: 1, scope: !840)
!845 = !DILocalVariable(name: "errnum", arg: 2, scope: !840, file: !85, line: 251, type: !45)
!846 = !DILocalVariable(name: "message", arg: 3, scope: !840, file: !85, line: 251, type: !54)
!847 = !DILocalVariable(name: "args", arg: 4, scope: !840, file: !85, line: 251, type: !93)
!848 = !DILocation(line: 261, column: 3, scope: !840)
!849 = !DILocation(line: 265, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !840, file: !85, line: 265, column: 7)
!851 = !DILocation(line: 265, column: 7, scope: !840)
!852 = !DILocation(line: 266, column: 7, scope: !850)
!853 = !DILocation(line: 266, column: 5, scope: !850)
!854 = !DILocation(line: 272, column: 16, scope: !855)
!855 = distinct !DILexicalBlock(scope: !850, file: !85, line: 268, column: 5)
!856 = !DILocation(line: 272, column: 32, scope: !855)
!857 = !DILocation(line: 272, column: 7, scope: !855)
!858 = !DILocation(line: 276, column: 3, scope: !840)
!859 = !DILocation(line: 282, column: 1, scope: !840)
!860 = distinct !DISubprogram(name: "flush_stdout", scope: !85, file: !85, line: 163, type: !114, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !56)
!861 = !DILocalVariable(name: "stdout_fd", scope: !860, file: !85, line: 166, type: !45)
!862 = !DILocation(line: 166, column: 7, scope: !860)
!863 = !DILocation(line: 172, column: 13, scope: !860)
!864 = !DILocation(line: 182, column: 12, scope: !865)
!865 = distinct !DILexicalBlock(scope: !860, file: !85, line: 182, column: 7)
!866 = !DILocation(line: 182, column: 9, scope: !865)
!867 = !DILocation(line: 182, column: 22, scope: !865)
!868 = !DILocation(line: 182, column: 34, scope: !865)
!869 = !DILocation(line: 182, column: 25, scope: !865)
!870 = !DILocation(line: 182, column: 7, scope: !860)
!871 = !DILocation(line: 184, column: 5, scope: !865)
!872 = !DILocation(line: 185, column: 1, scope: !860)
!873 = distinct !DISubprogram(name: "error_tail", scope: !85, file: !85, line: 219, type: !841, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !56)
!874 = !DILocalVariable(name: "status", arg: 1, scope: !873, file: !85, line: 219, type: !45)
!875 = !DILocation(line: 219, column: 1, scope: !873)
!876 = !DILocalVariable(name: "errnum", arg: 2, scope: !873, file: !85, line: 219, type: !45)
!877 = !DILocalVariable(name: "message", arg: 3, scope: !873, file: !85, line: 219, type: !54)
!878 = !DILocalVariable(name: "args", arg: 4, scope: !873, file: !85, line: 219, type: !93)
!879 = !DILocation(line: 229, column: 13, scope: !873)
!880 = !DILocation(line: 229, column: 21, scope: !873)
!881 = !DILocation(line: 229, column: 3, scope: !873)
!882 = !DILocation(line: 232, column: 3, scope: !873)
!883 = !DILocation(line: 233, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !873, file: !85, line: 233, column: 7)
!885 = !DILocation(line: 233, column: 7, scope: !873)
!886 = !DILocation(line: 234, column: 26, scope: !884)
!887 = !DILocation(line: 234, column: 5, scope: !884)
!888 = !DILocation(line: 238, column: 3, scope: !873)
!889 = !DILocation(line: 240, column: 3, scope: !873)
!890 = !DILocation(line: 241, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !873, file: !85, line: 241, column: 7)
!892 = !DILocation(line: 241, column: 7, scope: !873)
!893 = !DILocation(line: 242, column: 11, scope: !891)
!894 = !DILocation(line: 242, column: 5, scope: !891)
!895 = !DILocation(line: 243, column: 1, scope: !873)
!896 = distinct !DISubprogram(name: "print_errno_message", scope: !85, file: !85, line: 188, type: !311, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !56)
!897 = !DILocalVariable(name: "errnum", arg: 1, scope: !896, file: !85, line: 188, type: !45)
!898 = !DILocation(line: 188, column: 26, scope: !896)
!899 = !DILocalVariable(name: "s", scope: !896, file: !85, line: 190, type: !54)
!900 = !DILocation(line: 190, column: 15, scope: !896)
!901 = !DILocalVariable(name: "errbuf", scope: !896, file: !85, line: 193, type: !902)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8192, elements: !903)
!903 = !{!904}
!904 = !DISubrange(count: 1024)
!905 = !DILocation(line: 193, column: 8, scope: !896)
!906 = !DILocation(line: 195, column: 21, scope: !896)
!907 = !DILocation(line: 195, column: 29, scope: !896)
!908 = !DILocation(line: 195, column: 7, scope: !896)
!909 = !DILocation(line: 195, column: 5, scope: !896)
!910 = !DILocation(line: 207, column: 9, scope: !911)
!911 = distinct !DILexicalBlock(scope: !896, file: !85, line: 207, column: 7)
!912 = !DILocation(line: 207, column: 7, scope: !896)
!913 = !DILocation(line: 208, column: 9, scope: !911)
!914 = !DILocation(line: 208, column: 7, scope: !911)
!915 = !DILocation(line: 208, column: 5, scope: !911)
!916 = !DILocation(line: 214, column: 12, scope: !896)
!917 = !DILocation(line: 214, column: 28, scope: !896)
!918 = !DILocation(line: 214, column: 3, scope: !896)
!919 = !DILocation(line: 216, column: 1, scope: !896)
!920 = distinct !DISubprogram(name: "is_open", scope: !85, file: !85, line: 145, type: !921, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !56)
!921 = !DISubroutineType(types: !922)
!922 = !{!45, !45}
!923 = !DILocalVariable(name: "fd", arg: 1, scope: !920, file: !85, line: 145, type: !45)
!924 = !DILocation(line: 145, column: 14, scope: !920)
!925 = !DILocation(line: 157, column: 22, scope: !920)
!926 = !DILocation(line: 157, column: 15, scope: !920)
!927 = !DILocation(line: 157, column: 12, scope: !920)
!928 = !DILocation(line: 157, column: 3, scope: !920)
!929 = distinct !DISubprogram(name: "error", scope: !85, file: !85, line: 285, type: !930, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !56)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !45, !45, !54, null}
!932 = !DILocalVariable(name: "status", arg: 1, scope: !929, file: !85, line: 285, type: !45)
!933 = !DILocation(line: 285, column: 12, scope: !929)
!934 = !DILocalVariable(name: "errnum", arg: 2, scope: !929, file: !85, line: 285, type: !45)
!935 = !DILocation(line: 285, column: 24, scope: !929)
!936 = !DILocalVariable(name: "message", arg: 3, scope: !929, file: !85, line: 285, type: !54)
!937 = !DILocation(line: 285, column: 44, scope: !929)
!938 = !DILocalVariable(name: "ap", scope: !929, file: !85, line: 287, type: !93)
!939 = !DILocation(line: 287, column: 11, scope: !929)
!940 = !DILocation(line: 288, column: 3, scope: !929)
!941 = !DILocation(line: 289, column: 3, scope: !929)
!942 = !DILocation(line: 290, column: 3, scope: !929)
!943 = !DILocation(line: 291, column: 1, scope: !929)
!944 = !DILocalVariable(name: "status", arg: 1, scope: !90, file: !85, line: 298, type: !45)
!945 = !DILocation(line: 298, column: 1, scope: !90)
!946 = !DILocalVariable(name: "errnum", arg: 2, scope: !90, file: !85, line: 298, type: !45)
!947 = !DILocalVariable(name: "file_name", arg: 3, scope: !90, file: !85, line: 298, type: !54)
!948 = !DILocalVariable(name: "line_number", arg: 4, scope: !90, file: !85, line: 298, type: !6)
!949 = !DILocalVariable(name: "message", arg: 5, scope: !90, file: !85, line: 298, type: !54)
!950 = !DILocalVariable(name: "args", arg: 6, scope: !90, file: !85, line: 298, type: !93)
!951 = !DILocation(line: 302, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !90, file: !85, line: 302, column: 7)
!953 = !DILocation(line: 302, column: 7, scope: !90)
!954 = !DILocation(line: 307, column: 11, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !85, line: 307, column: 11)
!956 = distinct !DILexicalBlock(scope: !952, file: !85, line: 303, column: 5)
!957 = !DILocation(line: 307, column: 30, scope: !955)
!958 = !DILocation(line: 307, column: 27, scope: !955)
!959 = !DILocation(line: 308, column: 11, scope: !955)
!960 = !DILocation(line: 308, column: 15, scope: !955)
!961 = !DILocation(line: 308, column: 28, scope: !955)
!962 = !DILocation(line: 308, column: 25, scope: !955)
!963 = !DILocation(line: 309, column: 15, scope: !955)
!964 = !DILocation(line: 309, column: 19, scope: !955)
!965 = !DILocation(line: 309, column: 33, scope: !955)
!966 = !DILocation(line: 310, column: 19, scope: !955)
!967 = !DILocation(line: 310, column: 22, scope: !955)
!968 = !DILocation(line: 310, column: 32, scope: !955)
!969 = !DILocation(line: 311, column: 19, scope: !955)
!970 = !DILocation(line: 311, column: 30, scope: !955)
!971 = !DILocation(line: 311, column: 45, scope: !955)
!972 = !DILocation(line: 311, column: 22, scope: !955)
!973 = !DILocation(line: 311, column: 56, scope: !955)
!974 = !DILocation(line: 307, column: 11, scope: !956)
!975 = !DILocation(line: 314, column: 9, scope: !955)
!976 = !DILocation(line: 316, column: 23, scope: !956)
!977 = !DILocation(line: 316, column: 21, scope: !956)
!978 = !DILocation(line: 317, column: 25, scope: !956)
!979 = !DILocation(line: 317, column: 23, scope: !956)
!980 = !DILocation(line: 318, column: 5, scope: !956)
!981 = !DILocation(line: 327, column: 3, scope: !90)
!982 = !DILocation(line: 331, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !90, file: !85, line: 331, column: 7)
!984 = !DILocation(line: 331, column: 7, scope: !90)
!985 = !DILocation(line: 332, column: 7, scope: !983)
!986 = !DILocation(line: 332, column: 5, scope: !983)
!987 = !DILocation(line: 338, column: 16, scope: !988)
!988 = distinct !DILexicalBlock(scope: !983, file: !85, line: 334, column: 5)
!989 = !DILocation(line: 338, column: 31, scope: !988)
!990 = !DILocation(line: 338, column: 7, scope: !988)
!991 = !DILocation(line: 346, column: 12, scope: !90)
!992 = !DILocation(line: 346, column: 20, scope: !90)
!993 = !DILocation(line: 346, column: 30, scope: !90)
!994 = !DILocation(line: 347, column: 12, scope: !90)
!995 = !DILocation(line: 347, column: 23, scope: !90)
!996 = !DILocation(line: 346, column: 3, scope: !90)
!997 = !DILocation(line: 350, column: 3, scope: !90)
!998 = !DILocation(line: 356, column: 1, scope: !90)
!999 = distinct !DISubprogram(name: "error_at_line", scope: !85, file: !85, line: 359, type: !1000, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !56)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !45, !45, !54, !6, !54, null}
!1002 = !DILocalVariable(name: "status", arg: 1, scope: !999, file: !85, line: 359, type: !45)
!1003 = !DILocation(line: 359, column: 20, scope: !999)
!1004 = !DILocalVariable(name: "errnum", arg: 2, scope: !999, file: !85, line: 359, type: !45)
!1005 = !DILocation(line: 359, column: 32, scope: !999)
!1006 = !DILocalVariable(name: "file_name", arg: 3, scope: !999, file: !85, line: 359, type: !54)
!1007 = !DILocation(line: 359, column: 52, scope: !999)
!1008 = !DILocalVariable(name: "line_number", arg: 4, scope: !999, file: !85, line: 360, type: !6)
!1009 = !DILocation(line: 360, column: 29, scope: !999)
!1010 = !DILocalVariable(name: "message", arg: 5, scope: !999, file: !85, line: 360, type: !54)
!1011 = !DILocation(line: 360, column: 54, scope: !999)
!1012 = !DILocalVariable(name: "ap", scope: !999, file: !85, line: 362, type: !93)
!1013 = !DILocation(line: 362, column: 11, scope: !999)
!1014 = !DILocation(line: 363, column: 3, scope: !999)
!1015 = !DILocation(line: 364, column: 3, scope: !999)
!1016 = !DILocation(line: 366, column: 3, scope: !999)
!1017 = !DILocation(line: 367, column: 1, scope: !999)
!1018 = distinct !DISubprogram(name: "rpl_fcntl", scope: !119, file: !119, line: 202, type: !1019, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !56)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!45, !45, !45, null}
!1021 = !DILocalVariable(name: "fd", arg: 1, scope: !1018, file: !119, line: 202, type: !45)
!1022 = !DILocation(line: 202, column: 12, scope: !1018)
!1023 = !DILocalVariable(name: "action", arg: 2, scope: !1018, file: !119, line: 202, type: !45)
!1024 = !DILocation(line: 202, column: 20, scope: !1018)
!1025 = !DILocalVariable(name: "arg", scope: !1018, file: !119, line: 208, type: !1026)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !96, line: 14, baseType: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1028, baseType: !1029)
!1028 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !100, size: 256, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1029, file: !1028, line: 208, baseType: !44, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1029, file: !1028, line: 208, baseType: !44, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1029, file: !1028, line: 208, baseType: !44, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1029, file: !1028, line: 208, baseType: !45, size: 32, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1029, file: !1028, line: 208, baseType: !45, size: 32, offset: 224)
!1036 = !DILocation(line: 208, column: 11, scope: !1018)
!1037 = !DILocation(line: 209, column: 3, scope: !1018)
!1038 = !DILocalVariable(name: "result", scope: !1018, file: !119, line: 211, type: !45)
!1039 = !DILocation(line: 211, column: 7, scope: !1018)
!1040 = !DILocation(line: 212, column: 11, scope: !1018)
!1041 = !DILocation(line: 212, column: 3, scope: !1018)
!1042 = !DILocalVariable(name: "target", scope: !1043, file: !119, line: 216, type: !45)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !119, line: 215, column: 7)
!1044 = distinct !DILexicalBlock(scope: !1018, file: !119, line: 213, column: 5)
!1045 = !DILocation(line: 216, column: 13, scope: !1043)
!1046 = !DILocation(line: 216, column: 22, scope: !1043)
!1047 = !DILocation(line: 217, column: 35, scope: !1043)
!1048 = !DILocation(line: 217, column: 39, scope: !1043)
!1049 = !DILocation(line: 217, column: 18, scope: !1043)
!1050 = !DILocation(line: 217, column: 16, scope: !1043)
!1051 = !DILocation(line: 218, column: 9, scope: !1043)
!1052 = !DILocalVariable(name: "target", scope: !1053, file: !119, line: 223, type: !45)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !119, line: 222, column: 7)
!1054 = !DILocation(line: 223, column: 13, scope: !1053)
!1055 = !DILocation(line: 223, column: 22, scope: !1053)
!1056 = !DILocation(line: 224, column: 43, scope: !1053)
!1057 = !DILocation(line: 224, column: 47, scope: !1053)
!1058 = !DILocation(line: 224, column: 18, scope: !1053)
!1059 = !DILocation(line: 224, column: 16, scope: !1053)
!1060 = !DILocation(line: 225, column: 9, scope: !1053)
!1061 = !DILocation(line: 260, column: 17, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1044, file: !119, line: 258, column: 7)
!1063 = !DILocation(line: 260, column: 9, scope: !1062)
!1064 = !DILocation(line: 329, column: 29, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !119, line: 261, column: 11)
!1066 = !DILocation(line: 329, column: 33, scope: !1065)
!1067 = !DILocation(line: 329, column: 22, scope: !1065)
!1068 = !DILocation(line: 329, column: 20, scope: !1065)
!1069 = !DILocation(line: 330, column: 13, scope: !1065)
!1070 = !DILocalVariable(name: "x", scope: !1071, file: !119, line: 418, type: !45)
!1071 = distinct !DILexicalBlock(scope: !1065, file: !119, line: 417, column: 13)
!1072 = !DILocation(line: 418, column: 19, scope: !1071)
!1073 = !DILocation(line: 418, column: 23, scope: !1071)
!1074 = !DILocation(line: 419, column: 31, scope: !1071)
!1075 = !DILocation(line: 419, column: 35, scope: !1071)
!1076 = !DILocation(line: 419, column: 43, scope: !1071)
!1077 = !DILocation(line: 419, column: 24, scope: !1071)
!1078 = !DILocation(line: 419, column: 22, scope: !1071)
!1079 = !DILocation(line: 421, column: 13, scope: !1065)
!1080 = !DILocalVariable(name: "p", scope: !1081, file: !119, line: 426, type: !44)
!1081 = distinct !DILexicalBlock(scope: !1065, file: !119, line: 425, column: 13)
!1082 = !DILocation(line: 426, column: 21, scope: !1081)
!1083 = !DILocation(line: 426, column: 25, scope: !1081)
!1084 = !DILocation(line: 427, column: 31, scope: !1081)
!1085 = !DILocation(line: 427, column: 35, scope: !1081)
!1086 = !DILocation(line: 427, column: 43, scope: !1081)
!1087 = !DILocation(line: 427, column: 24, scope: !1081)
!1088 = !DILocation(line: 427, column: 22, scope: !1081)
!1089 = !DILocation(line: 429, column: 13, scope: !1065)
!1090 = !DILocation(line: 434, column: 9, scope: !1062)
!1091 = !DILocation(line: 438, column: 3, scope: !1018)
!1092 = !DILocation(line: 440, column: 10, scope: !1018)
!1093 = !DILocation(line: 440, column: 3, scope: !1018)
!1094 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !119, file: !119, line: 444, type: !120, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !56)
!1095 = !DILocalVariable(name: "fd", arg: 1, scope: !1094, file: !119, line: 444, type: !45)
!1096 = !DILocation(line: 444, column: 22, scope: !1094)
!1097 = !DILocalVariable(name: "target", arg: 2, scope: !1094, file: !119, line: 444, type: !45)
!1098 = !DILocation(line: 444, column: 30, scope: !1094)
!1099 = !DILocalVariable(name: "result", scope: !1094, file: !119, line: 446, type: !45)
!1100 = !DILocation(line: 446, column: 7, scope: !1094)
!1101 = !DILocation(line: 479, column: 19, scope: !1094)
!1102 = !DILocation(line: 479, column: 32, scope: !1094)
!1103 = !DILocation(line: 479, column: 12, scope: !1094)
!1104 = !DILocation(line: 479, column: 10, scope: !1094)
!1105 = !DILocation(line: 481, column: 10, scope: !1094)
!1106 = !DILocation(line: 481, column: 3, scope: !1094)
!1107 = !DILocalVariable(name: "fd", arg: 1, scope: !118, file: !119, line: 485, type: !45)
!1108 = !DILocation(line: 485, column: 30, scope: !118)
!1109 = !DILocalVariable(name: "target", arg: 2, scope: !118, file: !119, line: 485, type: !45)
!1110 = !DILocation(line: 485, column: 38, scope: !118)
!1111 = !DILocalVariable(name: "result", scope: !118, file: !119, line: 487, type: !45)
!1112 = !DILocation(line: 487, column: 7, scope: !118)
!1113 = !DILocation(line: 507, column: 12, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !118, file: !119, line: 507, column: 7)
!1115 = !DILocation(line: 507, column: 9, scope: !1114)
!1116 = !DILocation(line: 507, column: 7, scope: !118)
!1117 = !DILocation(line: 509, column: 23, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !119, line: 508, column: 5)
!1119 = !DILocation(line: 509, column: 44, scope: !1118)
!1120 = !DILocation(line: 509, column: 16, scope: !1118)
!1121 = !DILocation(line: 509, column: 14, scope: !1118)
!1122 = !DILocation(line: 510, column: 16, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !119, line: 510, column: 11)
!1124 = !DILocation(line: 510, column: 13, scope: !1123)
!1125 = !DILocation(line: 510, column: 23, scope: !1123)
!1126 = !DILocation(line: 510, column: 26, scope: !1123)
!1127 = !DILocation(line: 510, column: 32, scope: !1123)
!1128 = !DILocation(line: 510, column: 11, scope: !1118)
!1129 = !DILocation(line: 512, column: 30, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1123, file: !119, line: 511, column: 9)
!1131 = !DILocation(line: 517, column: 9, scope: !1130)
!1132 = !DILocation(line: 520, column: 37, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1123, file: !119, line: 519, column: 9)
!1134 = !DILocation(line: 520, column: 41, scope: !1133)
!1135 = !DILocation(line: 520, column: 20, scope: !1133)
!1136 = !DILocation(line: 520, column: 18, scope: !1133)
!1137 = !DILocation(line: 521, column: 15, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !119, line: 521, column: 15)
!1139 = !DILocation(line: 521, column: 22, scope: !1138)
!1140 = !DILocation(line: 521, column: 15, scope: !1133)
!1141 = !DILocation(line: 522, column: 32, scope: !1138)
!1142 = !DILocation(line: 522, column: 13, scope: !1138)
!1143 = !DILocation(line: 524, column: 5, scope: !1118)
!1144 = !DILocation(line: 527, column: 31, scope: !1114)
!1145 = !DILocation(line: 527, column: 35, scope: !1114)
!1146 = !DILocation(line: 527, column: 14, scope: !1114)
!1147 = !DILocation(line: 527, column: 12, scope: !1114)
!1148 = !DILocation(line: 528, column: 12, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !118, file: !119, line: 528, column: 7)
!1150 = !DILocation(line: 528, column: 9, scope: !1149)
!1151 = !DILocation(line: 528, column: 19, scope: !1149)
!1152 = !DILocation(line: 528, column: 22, scope: !1149)
!1153 = !DILocation(line: 528, column: 41, scope: !1149)
!1154 = !DILocation(line: 528, column: 7, scope: !118)
!1155 = !DILocalVariable(name: "flags", scope: !1156, file: !119, line: 530, type: !45)
!1156 = distinct !DILexicalBlock(scope: !1149, file: !119, line: 529, column: 5)
!1157 = !DILocation(line: 530, column: 11, scope: !1156)
!1158 = !DILocation(line: 530, column: 26, scope: !1156)
!1159 = !DILocation(line: 530, column: 19, scope: !1156)
!1160 = !DILocation(line: 531, column: 11, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !119, line: 531, column: 11)
!1162 = !DILocation(line: 531, column: 17, scope: !1161)
!1163 = !DILocation(line: 531, column: 21, scope: !1161)
!1164 = !DILocation(line: 531, column: 31, scope: !1161)
!1165 = !DILocation(line: 531, column: 48, scope: !1161)
!1166 = !DILocation(line: 531, column: 54, scope: !1161)
!1167 = !DILocation(line: 531, column: 24, scope: !1161)
!1168 = !DILocation(line: 531, column: 68, scope: !1161)
!1169 = !DILocation(line: 531, column: 11, scope: !1156)
!1170 = !DILocalVariable(name: "saved_errno", scope: !1171, file: !119, line: 533, type: !45)
!1171 = distinct !DILexicalBlock(scope: !1161, file: !119, line: 532, column: 9)
!1172 = !DILocation(line: 533, column: 15, scope: !1171)
!1173 = !DILocation(line: 533, column: 29, scope: !1171)
!1174 = !DILocation(line: 534, column: 18, scope: !1171)
!1175 = !DILocation(line: 534, column: 11, scope: !1171)
!1176 = !DILocation(line: 535, column: 19, scope: !1171)
!1177 = !DILocation(line: 535, column: 11, scope: !1171)
!1178 = !DILocation(line: 535, column: 17, scope: !1171)
!1179 = !DILocation(line: 536, column: 18, scope: !1171)
!1180 = !DILocation(line: 537, column: 9, scope: !1171)
!1181 = !DILocation(line: 538, column: 5, scope: !1156)
!1182 = !DILocation(line: 540, column: 10, scope: !118)
!1183 = !DILocation(line: 540, column: 3, scope: !118)
!1184 = distinct !DISubprogram(name: "getprogname", scope: !240, file: !240, line: 54, type: !1185, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !56)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!54}
!1187 = !DILocation(line: 58, column: 10, scope: !1184)
!1188 = !DILocation(line: 58, column: 3, scope: !1184)
!1189 = distinct !DISubprogram(name: "set_program_name", scope: !127, file: !127, line: 37, type: !522, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !56)
!1190 = !DILocalVariable(name: "argv0", arg: 1, scope: !1189, file: !127, line: 37, type: !54)
!1191 = !DILocation(line: 37, column: 31, scope: !1189)
!1192 = !DILocalVariable(name: "slash", scope: !1189, file: !127, line: 44, type: !54)
!1193 = !DILocation(line: 44, column: 15, scope: !1189)
!1194 = !DILocation(line: 44, column: 32, scope: !1189)
!1195 = !DILocation(line: 44, column: 23, scope: !1189)
!1196 = !DILocalVariable(name: "base", scope: !1189, file: !127, line: 45, type: !54)
!1197 = !DILocation(line: 45, column: 15, scope: !1189)
!1198 = !DILocation(line: 45, column: 22, scope: !1189)
!1199 = !DILocation(line: 45, column: 30, scope: !1189)
!1200 = !DILocation(line: 45, column: 36, scope: !1189)
!1201 = !DILocation(line: 45, column: 42, scope: !1189)
!1202 = !DILocation(line: 46, column: 12, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1189, file: !127, line: 46, column: 7)
!1204 = !DILocation(line: 46, column: 19, scope: !1203)
!1205 = !DILocation(line: 46, column: 17, scope: !1203)
!1206 = !DILocation(line: 46, column: 9, scope: !1203)
!1207 = !DILocation(line: 46, column: 25, scope: !1203)
!1208 = !DILocation(line: 46, column: 35, scope: !1203)
!1209 = !DILocation(line: 46, column: 40, scope: !1203)
!1210 = !DILocation(line: 46, column: 28, scope: !1203)
!1211 = !DILocation(line: 46, column: 7, scope: !1189)
!1212 = !DILocation(line: 48, column: 15, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1203, file: !127, line: 47, column: 5)
!1214 = !DILocation(line: 48, column: 13, scope: !1213)
!1215 = !DILocation(line: 49, column: 20, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !127, line: 49, column: 11)
!1217 = !DILocation(line: 49, column: 11, scope: !1216)
!1218 = !DILocation(line: 49, column: 36, scope: !1216)
!1219 = !DILocation(line: 49, column: 11, scope: !1213)
!1220 = !DILocation(line: 51, column: 16, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !127, line: 50, column: 9)
!1222 = !DILocation(line: 52, column: 19, scope: !1221)
!1223 = !DILocation(line: 52, column: 17, scope: !1221)
!1224 = !DILocation(line: 53, column: 9, scope: !1221)
!1225 = !DILocation(line: 54, column: 5, scope: !1213)
!1226 = !DILocation(line: 65, column: 18, scope: !1189)
!1227 = !DILocation(line: 65, column: 16, scope: !1189)
!1228 = !DILocation(line: 71, column: 38, scope: !1189)
!1229 = !DILocation(line: 71, column: 27, scope: !1189)
!1230 = !DILocation(line: 74, column: 44, scope: !1189)
!1231 = !DILocation(line: 74, column: 33, scope: !1189)
!1232 = !DILocation(line: 76, column: 1, scope: !1189)
!1233 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !132, file: !133, line: 38, type: !54)
!1234 = !DILocation(line: 38, column: 31, scope: !132)
!1235 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !132, file: !133, line: 38, type: !54)
!1236 = !DILocation(line: 38, column: 66, scope: !132)
!1237 = !DILocalVariable(name: "translation", scope: !132, file: !133, line: 40, type: !54)
!1238 = !DILocation(line: 40, column: 15, scope: !132)
!1239 = !DILocation(line: 40, column: 38, scope: !132)
!1240 = !DILocation(line: 40, column: 29, scope: !132)
!1241 = !DILocation(line: 41, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !132, file: !133, line: 41, column: 7)
!1243 = !DILocation(line: 41, column: 22, scope: !1242)
!1244 = !DILocation(line: 41, column: 19, scope: !1242)
!1245 = !DILocation(line: 41, column: 7, scope: !132)
!1246 = !DILocation(line: 42, column: 12, scope: !1242)
!1247 = !DILocation(line: 42, column: 5, scope: !1242)
!1248 = !DILocalVariable(name: "w", scope: !132, file: !133, line: 47, type: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1250, line: 37, baseType: !1251)
!1250 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1252, line: 57, baseType: !1253)
!1252 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1252, line: 42, baseType: !6)
!1254 = !DILocation(line: 47, column: 12, scope: !132)
!1255 = !DILocalVariable(name: "mbs", scope: !132, file: !133, line: 48, type: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !226, line: 6, baseType: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !228, line: 21, baseType: !1258)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 13, size: 64, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1258, file: !228, line: 15, baseType: !45, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1258, file: !228, line: 20, baseType: !1262, size: 32, offset: 32)
!1262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !228, line: 16, size: 32, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1262, file: !228, line: 18, baseType: !6, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1262, file: !228, line: 19, baseType: !237, size: 32)
!1266 = !DILocation(line: 48, column: 13, scope: !132)
!1267 = !DILocation(line: 48, column: 18, scope: !132)
!1268 = !DILocation(line: 49, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !132, file: !133, line: 49, column: 7)
!1270 = !DILocation(line: 49, column: 39, scope: !1269)
!1271 = !DILocation(line: 49, column: 44, scope: !1269)
!1272 = !DILocation(line: 49, column: 47, scope: !1269)
!1273 = !DILocation(line: 49, column: 49, scope: !1269)
!1274 = !DILocation(line: 49, column: 7, scope: !132)
!1275 = !DILocation(line: 50, column: 12, scope: !1269)
!1276 = !DILocation(line: 50, column: 5, scope: !1269)
!1277 = !DILocation(line: 53, column: 10, scope: !132)
!1278 = !DILocation(line: 53, column: 3, scope: !132)
!1279 = !DILocation(line: 54, column: 1, scope: !132)
!1280 = distinct !DISubprogram(name: "clone_quoting_options", scope: !144, file: !144, line: 113, type: !1281, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!1283, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1284 = !DILocalVariable(name: "o", arg: 1, scope: !1280, file: !144, line: 113, type: !1283)
!1285 = !DILocation(line: 113, column: 48, scope: !1280)
!1286 = !DILocalVariable(name: "saved_errno", scope: !1280, file: !144, line: 115, type: !45)
!1287 = !DILocation(line: 115, column: 7, scope: !1280)
!1288 = !DILocation(line: 115, column: 21, scope: !1280)
!1289 = !DILocalVariable(name: "p", scope: !1280, file: !144, line: 116, type: !1283)
!1290 = !DILocation(line: 116, column: 27, scope: !1280)
!1291 = !DILocation(line: 116, column: 40, scope: !1280)
!1292 = !DILocation(line: 116, column: 44, scope: !1280)
!1293 = !DILocation(line: 116, column: 31, scope: !1280)
!1294 = !DILocation(line: 118, column: 11, scope: !1280)
!1295 = !DILocation(line: 118, column: 3, scope: !1280)
!1296 = !DILocation(line: 118, column: 9, scope: !1280)
!1297 = !DILocation(line: 119, column: 10, scope: !1280)
!1298 = !DILocation(line: 119, column: 3, scope: !1280)
!1299 = distinct !DISubprogram(name: "get_quoting_style", scope: !144, file: !144, line: 124, type: !1300, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!27, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1304 = !DILocalVariable(name: "o", arg: 1, scope: !1299, file: !144, line: 124, type: !1302)
!1305 = !DILocation(line: 124, column: 50, scope: !1299)
!1306 = !DILocation(line: 126, column: 11, scope: !1299)
!1307 = !DILocation(line: 126, column: 15, scope: !1299)
!1308 = !DILocation(line: 126, column: 46, scope: !1299)
!1309 = !DILocation(line: 126, column: 3, scope: !1299)
!1310 = distinct !DISubprogram(name: "set_quoting_style", scope: !144, file: !144, line: 132, type: !1311, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !1283, !27}
!1313 = !DILocalVariable(name: "o", arg: 1, scope: !1310, file: !144, line: 132, type: !1283)
!1314 = !DILocation(line: 132, column: 44, scope: !1310)
!1315 = !DILocalVariable(name: "s", arg: 2, scope: !1310, file: !144, line: 132, type: !27)
!1316 = !DILocation(line: 132, column: 66, scope: !1310)
!1317 = !DILocation(line: 134, column: 47, scope: !1310)
!1318 = !DILocation(line: 134, column: 4, scope: !1310)
!1319 = !DILocation(line: 134, column: 8, scope: !1310)
!1320 = !DILocation(line: 134, column: 39, scope: !1310)
!1321 = !DILocation(line: 134, column: 45, scope: !1310)
!1322 = !DILocation(line: 135, column: 1, scope: !1310)
!1323 = distinct !DISubprogram(name: "set_char_quoting", scope: !144, file: !144, line: 143, type: !1324, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!45, !1283, !43, !45}
!1326 = !DILocalVariable(name: "o", arg: 1, scope: !1323, file: !144, line: 143, type: !1283)
!1327 = !DILocation(line: 143, column: 43, scope: !1323)
!1328 = !DILocalVariable(name: "c", arg: 2, scope: !1323, file: !144, line: 143, type: !43)
!1329 = !DILocation(line: 143, column: 51, scope: !1323)
!1330 = !DILocalVariable(name: "i", arg: 3, scope: !1323, file: !144, line: 143, type: !45)
!1331 = !DILocation(line: 143, column: 58, scope: !1323)
!1332 = !DILocalVariable(name: "uc", scope: !1323, file: !144, line: 145, type: !223)
!1333 = !DILocation(line: 145, column: 17, scope: !1323)
!1334 = !DILocation(line: 145, column: 22, scope: !1323)
!1335 = !DILocalVariable(name: "p", scope: !1323, file: !144, line: 146, type: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1337 = !DILocation(line: 146, column: 17, scope: !1323)
!1338 = !DILocation(line: 147, column: 6, scope: !1323)
!1339 = !DILocation(line: 147, column: 10, scope: !1323)
!1340 = !DILocation(line: 147, column: 41, scope: !1323)
!1341 = !DILocation(line: 147, column: 5, scope: !1323)
!1342 = !DILocation(line: 147, column: 59, scope: !1323)
!1343 = !DILocation(line: 147, column: 62, scope: !1323)
!1344 = !DILocation(line: 147, column: 57, scope: !1323)
!1345 = !DILocalVariable(name: "shift", scope: !1323, file: !144, line: 148, type: !45)
!1346 = !DILocation(line: 148, column: 7, scope: !1323)
!1347 = !DILocation(line: 148, column: 15, scope: !1323)
!1348 = !DILocation(line: 148, column: 18, scope: !1323)
!1349 = !DILocalVariable(name: "r", scope: !1323, file: !144, line: 149, type: !6)
!1350 = !DILocation(line: 149, column: 16, scope: !1323)
!1351 = !DILocation(line: 149, column: 22, scope: !1323)
!1352 = !DILocation(line: 149, column: 21, scope: !1323)
!1353 = !DILocation(line: 149, column: 27, scope: !1323)
!1354 = !DILocation(line: 149, column: 24, scope: !1323)
!1355 = !DILocation(line: 149, column: 34, scope: !1323)
!1356 = !DILocation(line: 150, column: 11, scope: !1323)
!1357 = !DILocation(line: 150, column: 13, scope: !1323)
!1358 = !DILocation(line: 150, column: 21, scope: !1323)
!1359 = !DILocation(line: 150, column: 19, scope: !1323)
!1360 = !DILocation(line: 150, column: 27, scope: !1323)
!1361 = !DILocation(line: 150, column: 24, scope: !1323)
!1362 = !DILocation(line: 150, column: 4, scope: !1323)
!1363 = !DILocation(line: 150, column: 6, scope: !1323)
!1364 = !DILocation(line: 151, column: 10, scope: !1323)
!1365 = !DILocation(line: 151, column: 3, scope: !1323)
!1366 = distinct !DISubprogram(name: "set_quoting_flags", scope: !144, file: !144, line: 159, type: !1367, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!45, !1283, !45}
!1369 = !DILocalVariable(name: "o", arg: 1, scope: !1366, file: !144, line: 159, type: !1283)
!1370 = !DILocation(line: 159, column: 44, scope: !1366)
!1371 = !DILocalVariable(name: "i", arg: 2, scope: !1366, file: !144, line: 159, type: !45)
!1372 = !DILocation(line: 159, column: 51, scope: !1366)
!1373 = !DILocation(line: 161, column: 8, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1366, file: !144, line: 161, column: 7)
!1375 = !DILocation(line: 161, column: 7, scope: !1366)
!1376 = !DILocation(line: 162, column: 7, scope: !1374)
!1377 = !DILocation(line: 162, column: 5, scope: !1374)
!1378 = !DILocalVariable(name: "r", scope: !1366, file: !144, line: 163, type: !45)
!1379 = !DILocation(line: 163, column: 7, scope: !1366)
!1380 = !DILocation(line: 163, column: 11, scope: !1366)
!1381 = !DILocation(line: 163, column: 14, scope: !1366)
!1382 = !DILocation(line: 164, column: 14, scope: !1366)
!1383 = !DILocation(line: 164, column: 3, scope: !1366)
!1384 = !DILocation(line: 164, column: 6, scope: !1366)
!1385 = !DILocation(line: 164, column: 12, scope: !1366)
!1386 = !DILocation(line: 165, column: 10, scope: !1366)
!1387 = !DILocation(line: 165, column: 3, scope: !1366)
!1388 = distinct !DISubprogram(name: "set_custom_quoting", scope: !144, file: !144, line: 169, type: !1389, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !1283, !54, !54}
!1391 = !DILocalVariable(name: "o", arg: 1, scope: !1388, file: !144, line: 169, type: !1283)
!1392 = !DILocation(line: 169, column: 45, scope: !1388)
!1393 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1388, file: !144, line: 170, type: !54)
!1394 = !DILocation(line: 170, column: 33, scope: !1388)
!1395 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1388, file: !144, line: 170, type: !54)
!1396 = !DILocation(line: 170, column: 57, scope: !1388)
!1397 = !DILocation(line: 172, column: 8, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1388, file: !144, line: 172, column: 7)
!1399 = !DILocation(line: 172, column: 7, scope: !1388)
!1400 = !DILocation(line: 173, column: 7, scope: !1398)
!1401 = !DILocation(line: 173, column: 5, scope: !1398)
!1402 = !DILocation(line: 174, column: 3, scope: !1388)
!1403 = !DILocation(line: 174, column: 6, scope: !1388)
!1404 = !DILocation(line: 174, column: 12, scope: !1388)
!1405 = !DILocation(line: 175, column: 8, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1388, file: !144, line: 175, column: 7)
!1407 = !DILocation(line: 175, column: 19, scope: !1406)
!1408 = !DILocation(line: 175, column: 23, scope: !1406)
!1409 = !DILocation(line: 175, column: 7, scope: !1388)
!1410 = !DILocation(line: 176, column: 5, scope: !1406)
!1411 = !DILocation(line: 177, column: 19, scope: !1388)
!1412 = !DILocation(line: 177, column: 3, scope: !1388)
!1413 = !DILocation(line: 177, column: 6, scope: !1388)
!1414 = !DILocation(line: 177, column: 17, scope: !1388)
!1415 = !DILocation(line: 178, column: 20, scope: !1388)
!1416 = !DILocation(line: 178, column: 3, scope: !1388)
!1417 = !DILocation(line: 178, column: 6, scope: !1388)
!1418 = !DILocation(line: 178, column: 18, scope: !1388)
!1419 = !DILocation(line: 179, column: 1, scope: !1388)
!1420 = distinct !DISubprogram(name: "quotearg_buffer", scope: !144, file: !144, line: 774, type: !1421, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!152, !42, !152, !54, !152, !1302}
!1423 = !DILocalVariable(name: "buffer", arg: 1, scope: !1420, file: !144, line: 774, type: !42)
!1424 = !DILocation(line: 774, column: 24, scope: !1420)
!1425 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1420, file: !144, line: 774, type: !152)
!1426 = !DILocation(line: 774, column: 39, scope: !1420)
!1427 = !DILocalVariable(name: "arg", arg: 3, scope: !1420, file: !144, line: 775, type: !54)
!1428 = !DILocation(line: 775, column: 30, scope: !1420)
!1429 = !DILocalVariable(name: "argsize", arg: 4, scope: !1420, file: !144, line: 775, type: !152)
!1430 = !DILocation(line: 775, column: 42, scope: !1420)
!1431 = !DILocalVariable(name: "o", arg: 5, scope: !1420, file: !144, line: 776, type: !1302)
!1432 = !DILocation(line: 776, column: 48, scope: !1420)
!1433 = !DILocalVariable(name: "p", scope: !1420, file: !144, line: 778, type: !1302)
!1434 = !DILocation(line: 778, column: 33, scope: !1420)
!1435 = !DILocation(line: 778, column: 37, scope: !1420)
!1436 = !DILocation(line: 778, column: 41, scope: !1420)
!1437 = !DILocalVariable(name: "saved_errno", scope: !1420, file: !144, line: 779, type: !45)
!1438 = !DILocation(line: 779, column: 7, scope: !1420)
!1439 = !DILocation(line: 779, column: 21, scope: !1420)
!1440 = !DILocalVariable(name: "r", scope: !1420, file: !144, line: 780, type: !152)
!1441 = !DILocation(line: 780, column: 10, scope: !1420)
!1442 = !DILocation(line: 780, column: 40, scope: !1420)
!1443 = !DILocation(line: 780, column: 48, scope: !1420)
!1444 = !DILocation(line: 780, column: 60, scope: !1420)
!1445 = !DILocation(line: 780, column: 65, scope: !1420)
!1446 = !DILocation(line: 781, column: 40, scope: !1420)
!1447 = !DILocation(line: 781, column: 43, scope: !1420)
!1448 = !DILocation(line: 781, column: 50, scope: !1420)
!1449 = !DILocation(line: 781, column: 53, scope: !1420)
!1450 = !DILocation(line: 781, column: 60, scope: !1420)
!1451 = !DILocation(line: 781, column: 63, scope: !1420)
!1452 = !DILocation(line: 782, column: 40, scope: !1420)
!1453 = !DILocation(line: 782, column: 43, scope: !1420)
!1454 = !DILocation(line: 782, column: 55, scope: !1420)
!1455 = !DILocation(line: 782, column: 58, scope: !1420)
!1456 = !DILocation(line: 780, column: 14, scope: !1420)
!1457 = !DILocation(line: 783, column: 11, scope: !1420)
!1458 = !DILocation(line: 783, column: 3, scope: !1420)
!1459 = !DILocation(line: 783, column: 9, scope: !1420)
!1460 = !DILocation(line: 784, column: 10, scope: !1420)
!1461 = !DILocation(line: 784, column: 3, scope: !1420)
!1462 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !144, file: !144, line: 251, type: !1463, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !143, retainedNodes: !56)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!152, !42, !152, !54, !152, !27, !45, !1465, !54, !54}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1467 = !DILocalVariable(name: "buffer", arg: 1, scope: !1462, file: !144, line: 251, type: !42)
!1468 = !DILocation(line: 251, column: 33, scope: !1462)
!1469 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1462, file: !144, line: 251, type: !152)
!1470 = !DILocation(line: 251, column: 48, scope: !1462)
!1471 = !DILocalVariable(name: "arg", arg: 3, scope: !1462, file: !144, line: 252, type: !54)
!1472 = !DILocation(line: 252, column: 39, scope: !1462)
!1473 = !DILocalVariable(name: "argsize", arg: 4, scope: !1462, file: !144, line: 252, type: !152)
!1474 = !DILocation(line: 252, column: 51, scope: !1462)
!1475 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1462, file: !144, line: 253, type: !27)
!1476 = !DILocation(line: 253, column: 46, scope: !1462)
!1477 = !DILocalVariable(name: "flags", arg: 6, scope: !1462, file: !144, line: 253, type: !45)
!1478 = !DILocation(line: 253, column: 65, scope: !1462)
!1479 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1462, file: !144, line: 254, type: !1465)
!1480 = !DILocation(line: 254, column: 47, scope: !1462)
!1481 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1462, file: !144, line: 255, type: !54)
!1482 = !DILocation(line: 255, column: 39, scope: !1462)
!1483 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1462, file: !144, line: 256, type: !54)
!1484 = !DILocation(line: 256, column: 39, scope: !1462)
!1485 = !DILocalVariable(name: "unibyte_locale", scope: !1462, file: !144, line: 258, type: !81)
!1486 = !DILocation(line: 258, column: 8, scope: !1462)
!1487 = !DILocation(line: 258, column: 25, scope: !1462)
!1488 = !DILocation(line: 258, column: 36, scope: !1462)
!1489 = !DILocalVariable(name: "len", scope: !1462, file: !144, line: 260, type: !152)
!1490 = !DILocation(line: 260, column: 10, scope: !1462)
!1491 = !DILocalVariable(name: "orig_buffersize", scope: !1462, file: !144, line: 261, type: !152)
!1492 = !DILocation(line: 261, column: 10, scope: !1462)
!1493 = !DILocalVariable(name: "quote_string", scope: !1462, file: !144, line: 262, type: !54)
!1494 = !DILocation(line: 262, column: 15, scope: !1462)
!1495 = !DILocalVariable(name: "quote_string_len", scope: !1462, file: !144, line: 263, type: !152)
!1496 = !DILocation(line: 263, column: 10, scope: !1462)
!1497 = !DILocalVariable(name: "backslash_escapes", scope: !1462, file: !144, line: 264, type: !81)
!1498 = !DILocation(line: 264, column: 8, scope: !1462)
!1499 = !DILocalVariable(name: "elide_outer_quotes", scope: !1462, file: !144, line: 265, type: !81)
!1500 = !DILocation(line: 265, column: 8, scope: !1462)
!1501 = !DILocation(line: 265, column: 30, scope: !1462)
!1502 = !DILocation(line: 265, column: 36, scope: !1462)
!1503 = !DILocation(line: 265, column: 61, scope: !1462)
!1504 = !DILocalVariable(name: "encountered_single_quote", scope: !1462, file: !144, line: 266, type: !81)
!1505 = !DILocation(line: 266, column: 8, scope: !1462)
!1506 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1462, file: !144, line: 267, type: !81)
!1507 = !DILocation(line: 267, column: 8, scope: !1462)
!1508 = !DILocation(line: 267, column: 3, scope: !1462)
!1509 = !DILabel(scope: !1462, name: "process_input", file: !144, line: 308)
!1510 = !DILocation(line: 308, column: 2, scope: !1462)
!1511 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1462, file: !144, line: 309, type: !81)
!1512 = !DILocation(line: 309, column: 8, scope: !1462)
!1513 = !DILocation(line: 311, column: 11, scope: !1462)
!1514 = !DILocation(line: 311, column: 3, scope: !1462)
!1515 = !DILocation(line: 314, column: 21, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1462, file: !144, line: 312, column: 5)
!1517 = !DILocation(line: 315, column: 26, scope: !1516)
!1518 = !DILocation(line: 315, column: 7, scope: !1516)
!1519 = !DILocation(line: 318, column: 12, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !144, line: 318, column: 11)
!1521 = !DILocation(line: 318, column: 11, scope: !1516)
!1522 = !DILocation(line: 319, column: 9, scope: !1520)
!1523 = !DILocation(line: 319, column: 9, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !144, line: 319, column: 9)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !144, line: 319, column: 9)
!1526 = !DILocation(line: 319, column: 9, scope: !1525)
!1527 = !DILocation(line: 320, column: 25, scope: !1516)
!1528 = !DILocation(line: 321, column: 20, scope: !1516)
!1529 = !DILocation(line: 322, column: 24, scope: !1516)
!1530 = !DILocation(line: 323, column: 7, scope: !1516)
!1531 = !DILocation(line: 326, column: 25, scope: !1516)
!1532 = !DILocation(line: 327, column: 26, scope: !1516)
!1533 = !DILocation(line: 328, column: 7, scope: !1516)
!1534 = !DILocation(line: 334, column: 13, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !144, line: 334, column: 13)
!1536 = distinct !DILexicalBlock(scope: !1516, file: !144, line: 333, column: 7)
!1537 = !DILocation(line: 334, column: 27, scope: !1535)
!1538 = !DILocation(line: 334, column: 13, scope: !1536)
!1539 = !DILocation(line: 357, column: 50, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !144, line: 335, column: 11)
!1541 = !DILocation(line: 357, column: 26, scope: !1540)
!1542 = !DILocation(line: 357, column: 24, scope: !1540)
!1543 = !DILocation(line: 358, column: 51, scope: !1540)
!1544 = !DILocation(line: 358, column: 27, scope: !1540)
!1545 = !DILocation(line: 358, column: 25, scope: !1540)
!1546 = !DILocation(line: 359, column: 11, scope: !1540)
!1547 = !DILocation(line: 360, column: 14, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1536, file: !144, line: 360, column: 13)
!1549 = !DILocation(line: 360, column: 13, scope: !1536)
!1550 = !DILocalVariable(name: "lq", scope: !1551, file: !144, line: 361, type: !54)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !144, line: 361, column: 11)
!1552 = !DILocation(line: 361, column: 28, scope: !1551)
!1553 = !DILocation(line: 361, column: 33, scope: !1551)
!1554 = !DILocation(line: 361, column: 16, scope: !1551)
!1555 = !DILocation(line: 361, column: 46, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !144, line: 361, column: 11)
!1557 = !DILocation(line: 361, column: 45, scope: !1556)
!1558 = !DILocation(line: 361, column: 11, scope: !1551)
!1559 = !DILocation(line: 362, column: 13, scope: !1556)
!1560 = !DILocation(line: 362, column: 13, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !144, line: 362, column: 13)
!1562 = distinct !DILexicalBlock(scope: !1556, file: !144, line: 362, column: 13)
!1563 = !DILocation(line: 362, column: 13, scope: !1562)
!1564 = !DILocation(line: 361, column: 52, scope: !1556)
!1565 = !DILocation(line: 361, column: 11, scope: !1556)
!1566 = distinct !{!1566, !1558, !1567, !405}
!1567 = !DILocation(line: 362, column: 13, scope: !1551)
!1568 = !DILocation(line: 363, column: 27, scope: !1536)
!1569 = !DILocation(line: 364, column: 24, scope: !1536)
!1570 = !DILocation(line: 364, column: 22, scope: !1536)
!1571 = !DILocation(line: 365, column: 36, scope: !1536)
!1572 = !DILocation(line: 365, column: 28, scope: !1536)
!1573 = !DILocation(line: 365, column: 26, scope: !1536)
!1574 = !DILocation(line: 367, column: 7, scope: !1516)
!1575 = !DILocation(line: 370, column: 25, scope: !1516)
!1576 = !DILocation(line: 370, column: 7, scope: !1516)
!1577 = !DILocation(line: 373, column: 26, scope: !1516)
!1578 = !DILocation(line: 373, column: 7, scope: !1516)
!1579 = !DILocation(line: 376, column: 12, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1516, file: !144, line: 376, column: 11)
!1581 = !DILocation(line: 376, column: 11, scope: !1516)
!1582 = !DILocation(line: 377, column: 27, scope: !1580)
!1583 = !DILocation(line: 377, column: 9, scope: !1580)
!1584 = !DILocation(line: 380, column: 21, scope: !1516)
!1585 = !DILocation(line: 381, column: 12, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1516, file: !144, line: 381, column: 11)
!1587 = !DILocation(line: 381, column: 11, scope: !1516)
!1588 = !DILocation(line: 382, column: 9, scope: !1586)
!1589 = !DILocation(line: 382, column: 9, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !144, line: 382, column: 9)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !144, line: 382, column: 9)
!1592 = !DILocation(line: 382, column: 9, scope: !1591)
!1593 = !DILocation(line: 383, column: 20, scope: !1516)
!1594 = !DILocation(line: 384, column: 24, scope: !1516)
!1595 = !DILocation(line: 385, column: 7, scope: !1516)
!1596 = !DILocation(line: 388, column: 26, scope: !1516)
!1597 = !DILocation(line: 389, column: 7, scope: !1516)
!1598 = !DILocation(line: 392, column: 7, scope: !1516)
!1599 = !DILocalVariable(name: "i", scope: !1600, file: !144, line: 395, type: !152)
!1600 = distinct !DILexicalBlock(scope: !1462, file: !144, line: 395, column: 3)
!1601 = !DILocation(line: 395, column: 15, scope: !1600)
!1602 = !DILocation(line: 395, column: 8, scope: !1600)
!1603 = !DILocation(line: 395, column: 26, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !144, line: 395, column: 3)
!1605 = !DILocation(line: 395, column: 34, scope: !1604)
!1606 = !DILocation(line: 395, column: 48, scope: !1604)
!1607 = !DILocation(line: 395, column: 52, scope: !1604)
!1608 = !DILocation(line: 395, column: 55, scope: !1604)
!1609 = !DILocation(line: 395, column: 65, scope: !1604)
!1610 = !DILocation(line: 395, column: 70, scope: !1604)
!1611 = !DILocation(line: 395, column: 67, scope: !1604)
!1612 = !DILocation(line: 395, column: 23, scope: !1604)
!1613 = !DILocation(line: 395, column: 3, scope: !1600)
!1614 = !DILocalVariable(name: "is_right_quote", scope: !1615, file: !144, line: 397, type: !81)
!1615 = distinct !DILexicalBlock(scope: !1604, file: !144, line: 396, column: 5)
!1616 = !DILocation(line: 397, column: 12, scope: !1615)
!1617 = !DILocalVariable(name: "escaping", scope: !1615, file: !144, line: 398, type: !81)
!1618 = !DILocation(line: 398, column: 12, scope: !1615)
!1619 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1615, file: !144, line: 399, type: !81)
!1620 = !DILocation(line: 399, column: 12, scope: !1615)
!1621 = !DILocation(line: 401, column: 11, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1615, file: !144, line: 401, column: 11)
!1623 = !DILocation(line: 402, column: 11, scope: !1622)
!1624 = !DILocation(line: 402, column: 14, scope: !1622)
!1625 = !DILocation(line: 402, column: 28, scope: !1622)
!1626 = !DILocation(line: 403, column: 11, scope: !1622)
!1627 = !DILocation(line: 403, column: 14, scope: !1622)
!1628 = !DILocation(line: 404, column: 11, scope: !1622)
!1629 = !DILocation(line: 404, column: 15, scope: !1622)
!1630 = !DILocation(line: 404, column: 19, scope: !1622)
!1631 = !DILocation(line: 404, column: 17, scope: !1622)
!1632 = !DILocation(line: 405, column: 19, scope: !1622)
!1633 = !DILocation(line: 405, column: 27, scope: !1622)
!1634 = !DILocation(line: 405, column: 39, scope: !1622)
!1635 = !DILocation(line: 405, column: 46, scope: !1622)
!1636 = !DILocation(line: 405, column: 44, scope: !1622)
!1637 = !DILocation(line: 409, column: 40, scope: !1622)
!1638 = !DILocation(line: 409, column: 32, scope: !1622)
!1639 = !DILocation(line: 409, column: 30, scope: !1622)
!1640 = !DILocation(line: 409, column: 48, scope: !1622)
!1641 = !DILocation(line: 405, column: 15, scope: !1622)
!1642 = !DILocation(line: 410, column: 11, scope: !1622)
!1643 = !DILocation(line: 410, column: 21, scope: !1622)
!1644 = !DILocation(line: 410, column: 27, scope: !1622)
!1645 = !DILocation(line: 410, column: 25, scope: !1622)
!1646 = !DILocation(line: 410, column: 30, scope: !1622)
!1647 = !DILocation(line: 410, column: 44, scope: !1622)
!1648 = !DILocation(line: 410, column: 14, scope: !1622)
!1649 = !DILocation(line: 401, column: 11, scope: !1615)
!1650 = !DILocation(line: 412, column: 15, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !144, line: 412, column: 15)
!1652 = distinct !DILexicalBlock(scope: !1622, file: !144, line: 411, column: 9)
!1653 = !DILocation(line: 412, column: 15, scope: !1652)
!1654 = !DILocation(line: 413, column: 13, scope: !1651)
!1655 = !DILocation(line: 414, column: 26, scope: !1652)
!1656 = !DILocation(line: 415, column: 9, scope: !1652)
!1657 = !DILocalVariable(name: "c", scope: !1615, file: !144, line: 417, type: !223)
!1658 = !DILocation(line: 417, column: 21, scope: !1615)
!1659 = !DILocation(line: 417, column: 25, scope: !1615)
!1660 = !DILocation(line: 417, column: 29, scope: !1615)
!1661 = !DILocation(line: 418, column: 15, scope: !1615)
!1662 = !DILocation(line: 418, column: 7, scope: !1615)
!1663 = !DILocation(line: 421, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !144, line: 421, column: 15)
!1665 = distinct !DILexicalBlock(scope: !1615, file: !144, line: 419, column: 9)
!1666 = !DILocation(line: 421, column: 15, scope: !1665)
!1667 = !DILocation(line: 423, column: 15, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !144, line: 422, column: 13)
!1669 = !DILocation(line: 423, column: 15, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !144, line: 423, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1668, file: !144, line: 423, column: 15)
!1672 = !DILocation(line: 423, column: 15, scope: !1671)
!1673 = !DILocation(line: 423, column: 15, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !144, line: 423, column: 15)
!1675 = !DILocation(line: 423, column: 15, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1674, file: !144, line: 423, column: 15)
!1677 = !DILocation(line: 423, column: 15, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !144, line: 423, column: 15)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !144, line: 423, column: 15)
!1680 = !DILocation(line: 423, column: 15, scope: !1679)
!1681 = !DILocation(line: 423, column: 15, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !144, line: 423, column: 15)
!1683 = distinct !DILexicalBlock(scope: !1676, file: !144, line: 423, column: 15)
!1684 = !DILocation(line: 423, column: 15, scope: !1683)
!1685 = !DILocation(line: 423, column: 15, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !144, line: 423, column: 15)
!1687 = distinct !DILexicalBlock(scope: !1676, file: !144, line: 423, column: 15)
!1688 = !DILocation(line: 423, column: 15, scope: !1687)
!1689 = !DILocation(line: 423, column: 15, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !144, line: 423, column: 15)
!1691 = distinct !DILexicalBlock(scope: !1671, file: !144, line: 423, column: 15)
!1692 = !DILocation(line: 423, column: 15, scope: !1691)
!1693 = !DILocation(line: 430, column: 19, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1668, file: !144, line: 430, column: 19)
!1695 = !DILocation(line: 430, column: 33, scope: !1694)
!1696 = !DILocation(line: 431, column: 19, scope: !1694)
!1697 = !DILocation(line: 431, column: 22, scope: !1694)
!1698 = !DILocation(line: 431, column: 24, scope: !1694)
!1699 = !DILocation(line: 431, column: 30, scope: !1694)
!1700 = !DILocation(line: 431, column: 28, scope: !1694)
!1701 = !DILocation(line: 431, column: 38, scope: !1694)
!1702 = !DILocation(line: 431, column: 48, scope: !1694)
!1703 = !DILocation(line: 431, column: 52, scope: !1694)
!1704 = !DILocation(line: 431, column: 54, scope: !1694)
!1705 = !DILocation(line: 431, column: 45, scope: !1694)
!1706 = !DILocation(line: 431, column: 59, scope: !1694)
!1707 = !DILocation(line: 431, column: 62, scope: !1694)
!1708 = !DILocation(line: 431, column: 66, scope: !1694)
!1709 = !DILocation(line: 431, column: 68, scope: !1694)
!1710 = !DILocation(line: 431, column: 73, scope: !1694)
!1711 = !DILocation(line: 430, column: 19, scope: !1668)
!1712 = !DILocation(line: 433, column: 19, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1694, file: !144, line: 432, column: 17)
!1714 = !DILocation(line: 433, column: 19, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !144, line: 433, column: 19)
!1716 = distinct !DILexicalBlock(scope: !1713, file: !144, line: 433, column: 19)
!1717 = !DILocation(line: 433, column: 19, scope: !1716)
!1718 = !DILocation(line: 434, column: 19, scope: !1713)
!1719 = !DILocation(line: 434, column: 19, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !144, line: 434, column: 19)
!1721 = distinct !DILexicalBlock(scope: !1713, file: !144, line: 434, column: 19)
!1722 = !DILocation(line: 434, column: 19, scope: !1721)
!1723 = !DILocation(line: 435, column: 17, scope: !1713)
!1724 = !DILocation(line: 436, column: 17, scope: !1668)
!1725 = !DILocation(line: 441, column: 13, scope: !1668)
!1726 = !DILocation(line: 442, column: 20, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1664, file: !144, line: 442, column: 20)
!1728 = !DILocation(line: 442, column: 26, scope: !1727)
!1729 = !DILocation(line: 442, column: 20, scope: !1664)
!1730 = !DILocation(line: 443, column: 13, scope: !1727)
!1731 = !DILocation(line: 444, column: 11, scope: !1665)
!1732 = !DILocation(line: 447, column: 20, scope: !1665)
!1733 = !DILocation(line: 447, column: 11, scope: !1665)
!1734 = !DILocation(line: 450, column: 19, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !144, line: 450, column: 19)
!1736 = distinct !DILexicalBlock(scope: !1665, file: !144, line: 448, column: 13)
!1737 = !DILocation(line: 450, column: 19, scope: !1736)
!1738 = !DILocation(line: 451, column: 17, scope: !1735)
!1739 = !DILocation(line: 452, column: 15, scope: !1736)
!1740 = !DILocation(line: 455, column: 20, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1736, file: !144, line: 455, column: 19)
!1742 = !DILocation(line: 455, column: 26, scope: !1741)
!1743 = !DILocation(line: 456, column: 19, scope: !1741)
!1744 = !DILocation(line: 456, column: 22, scope: !1741)
!1745 = !DILocation(line: 456, column: 24, scope: !1741)
!1746 = !DILocation(line: 456, column: 30, scope: !1741)
!1747 = !DILocation(line: 456, column: 28, scope: !1741)
!1748 = !DILocation(line: 456, column: 38, scope: !1741)
!1749 = !DILocation(line: 456, column: 41, scope: !1741)
!1750 = !DILocation(line: 456, column: 45, scope: !1741)
!1751 = !DILocation(line: 456, column: 47, scope: !1741)
!1752 = !DILocation(line: 456, column: 52, scope: !1741)
!1753 = !DILocation(line: 455, column: 19, scope: !1736)
!1754 = !DILocation(line: 457, column: 25, scope: !1741)
!1755 = !DILocation(line: 457, column: 29, scope: !1741)
!1756 = !DILocation(line: 457, column: 31, scope: !1741)
!1757 = !DILocation(line: 457, column: 17, scope: !1741)
!1758 = !DILocation(line: 464, column: 25, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !144, line: 464, column: 25)
!1760 = distinct !DILexicalBlock(scope: !1741, file: !144, line: 458, column: 19)
!1761 = !DILocation(line: 464, column: 25, scope: !1760)
!1762 = !DILocation(line: 465, column: 23, scope: !1759)
!1763 = !DILocation(line: 466, column: 25, scope: !1760)
!1764 = !DILocation(line: 466, column: 29, scope: !1760)
!1765 = !DILocation(line: 466, column: 31, scope: !1760)
!1766 = !DILocation(line: 466, column: 23, scope: !1760)
!1767 = !DILocation(line: 467, column: 23, scope: !1760)
!1768 = !DILocation(line: 468, column: 21, scope: !1760)
!1769 = !DILocation(line: 468, column: 21, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !144, line: 468, column: 21)
!1771 = distinct !DILexicalBlock(scope: !1760, file: !144, line: 468, column: 21)
!1772 = !DILocation(line: 468, column: 21, scope: !1771)
!1773 = !DILocation(line: 469, column: 21, scope: !1760)
!1774 = !DILocation(line: 469, column: 21, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !144, line: 469, column: 21)
!1776 = distinct !DILexicalBlock(scope: !1760, file: !144, line: 469, column: 21)
!1777 = !DILocation(line: 469, column: 21, scope: !1776)
!1778 = !DILocation(line: 470, column: 21, scope: !1760)
!1779 = !DILocation(line: 470, column: 21, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !144, line: 470, column: 21)
!1781 = distinct !DILexicalBlock(scope: !1760, file: !144, line: 470, column: 21)
!1782 = !DILocation(line: 470, column: 21, scope: !1781)
!1783 = !DILocation(line: 471, column: 21, scope: !1760)
!1784 = !DILocation(line: 471, column: 21, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !144, line: 471, column: 21)
!1786 = distinct !DILexicalBlock(scope: !1760, file: !144, line: 471, column: 21)
!1787 = !DILocation(line: 471, column: 21, scope: !1786)
!1788 = !DILocation(line: 472, column: 21, scope: !1760)
!1789 = !DILocation(line: 473, column: 19, scope: !1760)
!1790 = !DILocation(line: 474, column: 15, scope: !1736)
!1791 = !DILocation(line: 476, column: 11, scope: !1665)
!1792 = !DILocation(line: 481, column: 26, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1665, file: !144, line: 478, column: 9)
!1794 = !DILocation(line: 481, column: 33, scope: !1793)
!1795 = !DILocation(line: 482, column: 26, scope: !1793)
!1796 = !DILocation(line: 482, column: 33, scope: !1793)
!1797 = !DILocation(line: 483, column: 26, scope: !1793)
!1798 = !DILocation(line: 483, column: 33, scope: !1793)
!1799 = !DILocation(line: 484, column: 26, scope: !1793)
!1800 = !DILocation(line: 484, column: 33, scope: !1793)
!1801 = !DILocation(line: 485, column: 26, scope: !1793)
!1802 = !DILocation(line: 485, column: 33, scope: !1793)
!1803 = !DILocation(line: 486, column: 26, scope: !1793)
!1804 = !DILocation(line: 486, column: 33, scope: !1793)
!1805 = !DILocation(line: 487, column: 26, scope: !1793)
!1806 = !DILocation(line: 487, column: 33, scope: !1793)
!1807 = !DILocation(line: 488, column: 28, scope: !1793)
!1808 = !DILocation(line: 488, column: 26, scope: !1793)
!1809 = !DILocation(line: 490, column: 17, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1793, file: !144, line: 490, column: 17)
!1811 = !DILocation(line: 490, column: 31, scope: !1810)
!1812 = !DILocation(line: 490, column: 17, scope: !1793)
!1813 = !DILocation(line: 492, column: 21, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !144, line: 492, column: 21)
!1815 = distinct !DILexicalBlock(scope: !1810, file: !144, line: 491, column: 15)
!1816 = !DILocation(line: 492, column: 21, scope: !1815)
!1817 = !DILocation(line: 493, column: 19, scope: !1814)
!1818 = !DILocation(line: 494, column: 17, scope: !1815)
!1819 = !DILocation(line: 499, column: 17, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1793, file: !144, line: 499, column: 17)
!1821 = !DILocation(line: 499, column: 35, scope: !1820)
!1822 = !DILocation(line: 499, column: 38, scope: !1820)
!1823 = !DILocation(line: 499, column: 57, scope: !1820)
!1824 = !DILocation(line: 499, column: 60, scope: !1820)
!1825 = !DILocation(line: 499, column: 17, scope: !1793)
!1826 = !DILocation(line: 500, column: 15, scope: !1820)
!1827 = !DILabel(scope: !1793, name: "c_and_shell_escape", file: !144, line: 502)
!1828 = !DILocation(line: 502, column: 11, scope: !1793)
!1829 = !DILocation(line: 503, column: 17, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1793, file: !144, line: 503, column: 17)
!1831 = !DILocation(line: 503, column: 31, scope: !1830)
!1832 = !DILocation(line: 504, column: 17, scope: !1830)
!1833 = !DILocation(line: 504, column: 20, scope: !1830)
!1834 = !DILocation(line: 503, column: 17, scope: !1793)
!1835 = !DILocation(line: 505, column: 15, scope: !1830)
!1836 = !DILabel(scope: !1793, name: "c_escape", file: !144, line: 507)
!1837 = !DILocation(line: 507, column: 11, scope: !1793)
!1838 = !DILocation(line: 508, column: 17, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1793, file: !144, line: 508, column: 17)
!1840 = !DILocation(line: 508, column: 17, scope: !1793)
!1841 = !DILocation(line: 510, column: 21, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !144, line: 509, column: 15)
!1843 = !DILocation(line: 510, column: 19, scope: !1842)
!1844 = !DILocation(line: 511, column: 17, scope: !1842)
!1845 = !DILocation(line: 513, column: 13, scope: !1793)
!1846 = !DILocation(line: 517, column: 18, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1665, file: !144, line: 517, column: 15)
!1848 = !DILocation(line: 517, column: 26, scope: !1847)
!1849 = !DILocation(line: 517, column: 15, scope: !1665)
!1850 = !DILocation(line: 517, column: 40, scope: !1847)
!1851 = !DILocation(line: 517, column: 47, scope: !1847)
!1852 = !DILocation(line: 517, column: 57, scope: !1847)
!1853 = !DILocation(line: 517, column: 65, scope: !1847)
!1854 = !DILocation(line: 518, column: 13, scope: !1847)
!1855 = !DILocation(line: 517, column: 69, scope: !1847)
!1856 = !DILocation(line: 521, column: 15, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1665, file: !144, line: 521, column: 15)
!1858 = !DILocation(line: 521, column: 17, scope: !1857)
!1859 = !DILocation(line: 521, column: 15, scope: !1665)
!1860 = !DILocation(line: 522, column: 13, scope: !1857)
!1861 = !DILocation(line: 521, column: 20, scope: !1857)
!1862 = !DILocation(line: 525, column: 36, scope: !1665)
!1863 = !DILocation(line: 525, column: 11, scope: !1665)
!1864 = !DILocation(line: 536, column: 15, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1665, file: !144, line: 536, column: 15)
!1866 = !DILocation(line: 536, column: 29, scope: !1865)
!1867 = !DILocation(line: 537, column: 15, scope: !1865)
!1868 = !DILocation(line: 537, column: 18, scope: !1865)
!1869 = !DILocation(line: 536, column: 15, scope: !1665)
!1870 = !DILocation(line: 538, column: 13, scope: !1865)
!1871 = !DILocation(line: 539, column: 11, scope: !1665)
!1872 = !DILocation(line: 542, column: 36, scope: !1665)
!1873 = !DILocation(line: 543, column: 36, scope: !1665)
!1874 = !DILocation(line: 544, column: 15, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1665, file: !144, line: 544, column: 15)
!1876 = !DILocation(line: 544, column: 29, scope: !1875)
!1877 = !DILocation(line: 544, column: 15, scope: !1665)
!1878 = !DILocation(line: 546, column: 19, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !144, line: 546, column: 19)
!1880 = distinct !DILexicalBlock(scope: !1875, file: !144, line: 545, column: 13)
!1881 = !DILocation(line: 546, column: 19, scope: !1880)
!1882 = !DILocation(line: 547, column: 17, scope: !1879)
!1883 = !DILocation(line: 549, column: 19, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !144, line: 549, column: 19)
!1885 = !DILocation(line: 549, column: 30, scope: !1884)
!1886 = !DILocation(line: 549, column: 35, scope: !1884)
!1887 = !DILocation(line: 549, column: 19, scope: !1880)
!1888 = !DILocation(line: 554, column: 37, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1884, file: !144, line: 550, column: 17)
!1890 = !DILocation(line: 554, column: 35, scope: !1889)
!1891 = !DILocation(line: 555, column: 30, scope: !1889)
!1892 = !DILocation(line: 556, column: 17, scope: !1889)
!1893 = !DILocation(line: 558, column: 15, scope: !1880)
!1894 = !DILocation(line: 558, column: 15, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !144, line: 558, column: 15)
!1896 = distinct !DILexicalBlock(scope: !1880, file: !144, line: 558, column: 15)
!1897 = !DILocation(line: 558, column: 15, scope: !1896)
!1898 = !DILocation(line: 559, column: 15, scope: !1880)
!1899 = !DILocation(line: 559, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !144, line: 559, column: 15)
!1901 = distinct !DILexicalBlock(scope: !1880, file: !144, line: 559, column: 15)
!1902 = !DILocation(line: 559, column: 15, scope: !1901)
!1903 = !DILocation(line: 560, column: 15, scope: !1880)
!1904 = !DILocation(line: 560, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !144, line: 560, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1880, file: !144, line: 560, column: 15)
!1907 = !DILocation(line: 560, column: 15, scope: !1906)
!1908 = !DILocation(line: 561, column: 40, scope: !1880)
!1909 = !DILocation(line: 562, column: 13, scope: !1880)
!1910 = !DILocation(line: 563, column: 11, scope: !1665)
!1911 = !DILocation(line: 587, column: 36, scope: !1665)
!1912 = !DILocation(line: 588, column: 11, scope: !1665)
!1913 = !DILocalVariable(name: "m", scope: !1914, file: !144, line: 598, type: !152)
!1914 = distinct !DILexicalBlock(scope: !1665, file: !144, line: 596, column: 11)
!1915 = !DILocation(line: 598, column: 20, scope: !1914)
!1916 = !DILocalVariable(name: "printable", scope: !1914, file: !144, line: 600, type: !81)
!1917 = !DILocation(line: 600, column: 18, scope: !1914)
!1918 = !DILocation(line: 602, column: 17, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1914, file: !144, line: 602, column: 17)
!1920 = !DILocation(line: 602, column: 17, scope: !1914)
!1921 = !DILocation(line: 604, column: 19, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !144, line: 603, column: 15)
!1923 = !DILocation(line: 605, column: 29, scope: !1922)
!1924 = !DILocation(line: 605, column: 41, scope: !1922)
!1925 = !DILocation(line: 605, column: 27, scope: !1922)
!1926 = !DILocation(line: 606, column: 15, scope: !1922)
!1927 = !DILocalVariable(name: "mbs", scope: !1928, file: !144, line: 609, type: !1929)
!1928 = distinct !DILexicalBlock(scope: !1919, file: !144, line: 608, column: 15)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !226, line: 6, baseType: !1930)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !228, line: 21, baseType: !1931)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 13, size: 64, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1931, file: !228, line: 15, baseType: !45, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1931, file: !228, line: 20, baseType: !1935, size: 32, offset: 32)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1931, file: !228, line: 16, size: 32, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1935, file: !228, line: 18, baseType: !6, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1935, file: !228, line: 19, baseType: !237, size: 32)
!1939 = !DILocation(line: 609, column: 27, scope: !1928)
!1940 = !DILocation(line: 609, column: 32, scope: !1928)
!1941 = !DILocation(line: 611, column: 19, scope: !1928)
!1942 = !DILocation(line: 612, column: 27, scope: !1928)
!1943 = !DILocation(line: 613, column: 21, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1928, file: !144, line: 613, column: 21)
!1945 = !DILocation(line: 613, column: 29, scope: !1944)
!1946 = !DILocation(line: 613, column: 21, scope: !1928)
!1947 = !DILocation(line: 614, column: 37, scope: !1944)
!1948 = !DILocation(line: 614, column: 29, scope: !1944)
!1949 = !DILocation(line: 614, column: 27, scope: !1944)
!1950 = !DILocation(line: 614, column: 19, scope: !1944)
!1951 = !DILocation(line: 616, column: 17, scope: !1928)
!1952 = !DILocalVariable(name: "w", scope: !1953, file: !144, line: 618, type: !1249)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !144, line: 617, column: 19)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !144, line: 616, column: 17)
!1955 = distinct !DILexicalBlock(scope: !1928, file: !144, line: 616, column: 17)
!1956 = !DILocation(line: 618, column: 30, scope: !1953)
!1957 = !DILocalVariable(name: "bytes", scope: !1953, file: !144, line: 619, type: !152)
!1958 = !DILocation(line: 619, column: 28, scope: !1953)
!1959 = !DILocation(line: 619, column: 51, scope: !1953)
!1960 = !DILocation(line: 619, column: 55, scope: !1953)
!1961 = !DILocation(line: 619, column: 59, scope: !1953)
!1962 = !DILocation(line: 619, column: 57, scope: !1953)
!1963 = !DILocation(line: 620, column: 46, scope: !1953)
!1964 = !DILocation(line: 620, column: 57, scope: !1953)
!1965 = !DILocation(line: 620, column: 61, scope: !1953)
!1966 = !DILocation(line: 620, column: 59, scope: !1953)
!1967 = !DILocation(line: 620, column: 54, scope: !1953)
!1968 = !DILocation(line: 619, column: 36, scope: !1953)
!1969 = !DILocation(line: 621, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1953, file: !144, line: 621, column: 25)
!1971 = !DILocation(line: 621, column: 31, scope: !1970)
!1972 = !DILocation(line: 621, column: 25, scope: !1953)
!1973 = !DILocation(line: 622, column: 23, scope: !1970)
!1974 = !DILocation(line: 623, column: 30, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1970, file: !144, line: 623, column: 30)
!1976 = !DILocation(line: 623, column: 36, scope: !1975)
!1977 = !DILocation(line: 623, column: 30, scope: !1970)
!1978 = !DILocation(line: 625, column: 35, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !144, line: 624, column: 23)
!1980 = !DILocation(line: 626, column: 25, scope: !1979)
!1981 = !DILocation(line: 628, column: 30, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1975, file: !144, line: 628, column: 30)
!1983 = !DILocation(line: 628, column: 36, scope: !1982)
!1984 = !DILocation(line: 628, column: 30, scope: !1975)
!1985 = !DILocation(line: 630, column: 35, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !144, line: 629, column: 23)
!1987 = !DILocation(line: 631, column: 25, scope: !1986)
!1988 = !DILocation(line: 631, column: 32, scope: !1986)
!1989 = !DILocation(line: 631, column: 36, scope: !1986)
!1990 = !DILocation(line: 631, column: 34, scope: !1986)
!1991 = !DILocation(line: 631, column: 40, scope: !1986)
!1992 = !DILocation(line: 631, column: 38, scope: !1986)
!1993 = !DILocation(line: 631, column: 48, scope: !1986)
!1994 = !DILocation(line: 631, column: 51, scope: !1986)
!1995 = !DILocation(line: 631, column: 55, scope: !1986)
!1996 = !DILocation(line: 631, column: 59, scope: !1986)
!1997 = !DILocation(line: 631, column: 57, scope: !1986)
!1998 = !DILocation(line: 0, scope: !1986)
!1999 = !DILocation(line: 632, column: 28, scope: !1986)
!2000 = distinct !{!2000, !1987, !1999, !405}
!2001 = !DILocation(line: 633, column: 25, scope: !1986)
!2002 = !DILocation(line: 645, column: 44, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !144, line: 645, column: 29)
!2004 = distinct !DILexicalBlock(scope: !1982, file: !144, line: 636, column: 23)
!2005 = !DILocation(line: 646, column: 29, scope: !2003)
!2006 = !DILocation(line: 646, column: 32, scope: !2003)
!2007 = !DILocation(line: 646, column: 46, scope: !2003)
!2008 = !DILocation(line: 645, column: 29, scope: !2004)
!2009 = !DILocalVariable(name: "j", scope: !2010, file: !144, line: 648, type: !152)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !144, line: 648, column: 29)
!2011 = distinct !DILexicalBlock(scope: !2003, file: !144, line: 647, column: 27)
!2012 = !DILocation(line: 648, column: 41, scope: !2010)
!2013 = !DILocation(line: 648, column: 34, scope: !2010)
!2014 = !DILocation(line: 648, column: 48, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2010, file: !144, line: 648, column: 29)
!2016 = !DILocation(line: 648, column: 52, scope: !2015)
!2017 = !DILocation(line: 648, column: 50, scope: !2015)
!2018 = !DILocation(line: 648, column: 29, scope: !2010)
!2019 = !DILocation(line: 649, column: 39, scope: !2015)
!2020 = !DILocation(line: 649, column: 43, scope: !2015)
!2021 = !DILocation(line: 649, column: 47, scope: !2015)
!2022 = !DILocation(line: 649, column: 45, scope: !2015)
!2023 = !DILocation(line: 649, column: 51, scope: !2015)
!2024 = !DILocation(line: 649, column: 49, scope: !2015)
!2025 = !DILocation(line: 649, column: 31, scope: !2015)
!2026 = !DILocation(line: 653, column: 35, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2015, file: !144, line: 650, column: 33)
!2028 = !DILocation(line: 654, column: 33, scope: !2027)
!2029 = !DILocation(line: 648, column: 60, scope: !2015)
!2030 = !DILocation(line: 648, column: 29, scope: !2015)
!2031 = distinct !{!2031, !2018, !2032, !405}
!2032 = !DILocation(line: 654, column: 33, scope: !2010)
!2033 = !DILocation(line: 655, column: 27, scope: !2011)
!2034 = !DILocation(line: 657, column: 43, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2004, file: !144, line: 657, column: 29)
!2036 = !DILocation(line: 657, column: 31, scope: !2035)
!2037 = !DILocation(line: 657, column: 29, scope: !2004)
!2038 = !DILocation(line: 658, column: 37, scope: !2035)
!2039 = !DILocation(line: 658, column: 27, scope: !2035)
!2040 = !DILocation(line: 659, column: 30, scope: !2004)
!2041 = !DILocation(line: 659, column: 27, scope: !2004)
!2042 = !DILocation(line: 664, column: 23, scope: !1953)
!2043 = !DILocation(line: 668, column: 40, scope: !1914)
!2044 = !DILocation(line: 668, column: 38, scope: !1914)
!2045 = !DILocation(line: 670, column: 21, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1914, file: !144, line: 670, column: 17)
!2047 = !DILocation(line: 670, column: 19, scope: !2046)
!2048 = !DILocation(line: 670, column: 23, scope: !2046)
!2049 = !DILocation(line: 670, column: 27, scope: !2046)
!2050 = !DILocation(line: 670, column: 45, scope: !2046)
!2051 = !DILocation(line: 670, column: 50, scope: !2046)
!2052 = !DILocation(line: 670, column: 17, scope: !1914)
!2053 = !DILocalVariable(name: "ilim", scope: !2054, file: !144, line: 674, type: !152)
!2054 = distinct !DILexicalBlock(scope: !2046, file: !144, line: 671, column: 15)
!2055 = !DILocation(line: 674, column: 24, scope: !2054)
!2056 = !DILocation(line: 674, column: 31, scope: !2054)
!2057 = !DILocation(line: 674, column: 35, scope: !2054)
!2058 = !DILocation(line: 674, column: 33, scope: !2054)
!2059 = !DILocation(line: 676, column: 17, scope: !2054)
!2060 = !DILocation(line: 678, column: 25, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !144, line: 678, column: 25)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !144, line: 677, column: 19)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !144, line: 676, column: 17)
!2064 = distinct !DILexicalBlock(scope: !2054, file: !144, line: 676, column: 17)
!2065 = !DILocation(line: 678, column: 43, scope: !2061)
!2066 = !DILocation(line: 678, column: 48, scope: !2061)
!2067 = !DILocation(line: 678, column: 25, scope: !2062)
!2068 = !DILocation(line: 680, column: 25, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2061, file: !144, line: 679, column: 23)
!2070 = !DILocation(line: 680, column: 25, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !144, line: 680, column: 25)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !144, line: 680, column: 25)
!2073 = !DILocation(line: 680, column: 25, scope: !2072)
!2074 = !DILocation(line: 680, column: 25, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !144, line: 680, column: 25)
!2076 = !DILocation(line: 680, column: 25, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2075, file: !144, line: 680, column: 25)
!2078 = !DILocation(line: 680, column: 25, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !144, line: 680, column: 25)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !144, line: 680, column: 25)
!2081 = !DILocation(line: 680, column: 25, scope: !2080)
!2082 = !DILocation(line: 680, column: 25, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !144, line: 680, column: 25)
!2084 = distinct !DILexicalBlock(scope: !2077, file: !144, line: 680, column: 25)
!2085 = !DILocation(line: 680, column: 25, scope: !2084)
!2086 = !DILocation(line: 680, column: 25, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !144, line: 680, column: 25)
!2088 = distinct !DILexicalBlock(scope: !2077, file: !144, line: 680, column: 25)
!2089 = !DILocation(line: 680, column: 25, scope: !2088)
!2090 = !DILocation(line: 680, column: 25, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !144, line: 680, column: 25)
!2092 = distinct !DILexicalBlock(scope: !2072, file: !144, line: 680, column: 25)
!2093 = !DILocation(line: 680, column: 25, scope: !2092)
!2094 = !DILocation(line: 681, column: 25, scope: !2069)
!2095 = !DILocation(line: 681, column: 25, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !144, line: 681, column: 25)
!2097 = distinct !DILexicalBlock(scope: !2069, file: !144, line: 681, column: 25)
!2098 = !DILocation(line: 681, column: 25, scope: !2097)
!2099 = !DILocation(line: 682, column: 25, scope: !2069)
!2100 = !DILocation(line: 682, column: 25, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !144, line: 682, column: 25)
!2102 = distinct !DILexicalBlock(scope: !2069, file: !144, line: 682, column: 25)
!2103 = !DILocation(line: 682, column: 25, scope: !2102)
!2104 = !DILocation(line: 683, column: 36, scope: !2069)
!2105 = !DILocation(line: 683, column: 38, scope: !2069)
!2106 = !DILocation(line: 683, column: 33, scope: !2069)
!2107 = !DILocation(line: 683, column: 29, scope: !2069)
!2108 = !DILocation(line: 683, column: 27, scope: !2069)
!2109 = !DILocation(line: 684, column: 23, scope: !2069)
!2110 = !DILocation(line: 685, column: 30, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2061, file: !144, line: 685, column: 30)
!2112 = !DILocation(line: 685, column: 30, scope: !2061)
!2113 = !DILocation(line: 687, column: 25, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !144, line: 686, column: 23)
!2115 = !DILocation(line: 687, column: 25, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !144, line: 687, column: 25)
!2117 = distinct !DILexicalBlock(scope: !2114, file: !144, line: 687, column: 25)
!2118 = !DILocation(line: 687, column: 25, scope: !2117)
!2119 = !DILocation(line: 688, column: 40, scope: !2114)
!2120 = !DILocation(line: 689, column: 23, scope: !2114)
!2121 = !DILocation(line: 690, column: 25, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2062, file: !144, line: 690, column: 25)
!2123 = !DILocation(line: 690, column: 33, scope: !2122)
!2124 = !DILocation(line: 690, column: 35, scope: !2122)
!2125 = !DILocation(line: 690, column: 30, scope: !2122)
!2126 = !DILocation(line: 690, column: 25, scope: !2062)
!2127 = !DILocation(line: 691, column: 23, scope: !2122)
!2128 = !DILocation(line: 692, column: 21, scope: !2062)
!2129 = !DILocation(line: 692, column: 21, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !144, line: 692, column: 21)
!2131 = distinct !DILexicalBlock(scope: !2062, file: !144, line: 692, column: 21)
!2132 = !DILocation(line: 692, column: 21, scope: !2131)
!2133 = !DILocation(line: 692, column: 21, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !144, line: 692, column: 21)
!2135 = !DILocation(line: 692, column: 21, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !144, line: 692, column: 21)
!2137 = distinct !DILexicalBlock(scope: !2134, file: !144, line: 692, column: 21)
!2138 = !DILocation(line: 692, column: 21, scope: !2137)
!2139 = !DILocation(line: 692, column: 21, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !144, line: 692, column: 21)
!2141 = distinct !DILexicalBlock(scope: !2134, file: !144, line: 692, column: 21)
!2142 = !DILocation(line: 692, column: 21, scope: !2141)
!2143 = !DILocation(line: 693, column: 21, scope: !2062)
!2144 = !DILocation(line: 693, column: 21, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !144, line: 693, column: 21)
!2146 = distinct !DILexicalBlock(scope: !2062, file: !144, line: 693, column: 21)
!2147 = !DILocation(line: 693, column: 21, scope: !2146)
!2148 = !DILocation(line: 694, column: 25, scope: !2062)
!2149 = !DILocation(line: 694, column: 29, scope: !2062)
!2150 = !DILocation(line: 694, column: 23, scope: !2062)
!2151 = !DILocation(line: 676, column: 17, scope: !2063)
!2152 = distinct !{!2152, !2153, !2154}
!2153 = !DILocation(line: 676, column: 17, scope: !2064)
!2154 = !DILocation(line: 695, column: 19, scope: !2064)
!2155 = !DILocation(line: 697, column: 17, scope: !2054)
!2156 = !DILocation(line: 700, column: 9, scope: !1665)
!2157 = !DILocation(line: 702, column: 16, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !1615, file: !144, line: 702, column: 11)
!2159 = !DILocation(line: 702, column: 34, scope: !2158)
!2160 = !DILocation(line: 702, column: 37, scope: !2158)
!2161 = !DILocation(line: 702, column: 51, scope: !2158)
!2162 = !DILocation(line: 703, column: 15, scope: !2158)
!2163 = !DILocation(line: 703, column: 18, scope: !2158)
!2164 = !DILocation(line: 704, column: 14, scope: !2158)
!2165 = !DILocation(line: 704, column: 17, scope: !2158)
!2166 = !DILocation(line: 705, column: 14, scope: !2158)
!2167 = !DILocation(line: 705, column: 17, scope: !2158)
!2168 = !DILocation(line: 705, column: 33, scope: !2158)
!2169 = !DILocation(line: 705, column: 35, scope: !2158)
!2170 = !DILocation(line: 705, column: 51, scope: !2158)
!2171 = !DILocation(line: 705, column: 53, scope: !2158)
!2172 = !DILocation(line: 705, column: 47, scope: !2158)
!2173 = !DILocation(line: 705, column: 65, scope: !2158)
!2174 = !DILocation(line: 706, column: 11, scope: !2158)
!2175 = !DILocation(line: 706, column: 15, scope: !2158)
!2176 = !DILocation(line: 702, column: 11, scope: !1615)
!2177 = !DILocation(line: 707, column: 9, scope: !2158)
!2178 = !DILabel(scope: !1615, name: "store_escape", file: !144, line: 709)
!2179 = !DILocation(line: 709, column: 5, scope: !1615)
!2180 = !DILocation(line: 710, column: 7, scope: !1615)
!2181 = !DILocation(line: 710, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !144, line: 710, column: 7)
!2183 = distinct !DILexicalBlock(scope: !1615, file: !144, line: 710, column: 7)
!2184 = !DILocation(line: 710, column: 7, scope: !2183)
!2185 = !DILocation(line: 710, column: 7, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2183, file: !144, line: 710, column: 7)
!2187 = !DILocation(line: 710, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2186, file: !144, line: 710, column: 7)
!2189 = !DILocation(line: 710, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !144, line: 710, column: 7)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !144, line: 710, column: 7)
!2192 = !DILocation(line: 710, column: 7, scope: !2191)
!2193 = !DILocation(line: 710, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !144, line: 710, column: 7)
!2195 = distinct !DILexicalBlock(scope: !2188, file: !144, line: 710, column: 7)
!2196 = !DILocation(line: 710, column: 7, scope: !2195)
!2197 = !DILocation(line: 710, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !144, line: 710, column: 7)
!2199 = distinct !DILexicalBlock(scope: !2188, file: !144, line: 710, column: 7)
!2200 = !DILocation(line: 710, column: 7, scope: !2199)
!2201 = !DILocation(line: 710, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !144, line: 710, column: 7)
!2203 = distinct !DILexicalBlock(scope: !2183, file: !144, line: 710, column: 7)
!2204 = !DILocation(line: 710, column: 7, scope: !2203)
!2205 = !DILabel(scope: !1615, name: "store_c", file: !144, line: 712)
!2206 = !DILocation(line: 712, column: 5, scope: !1615)
!2207 = !DILocation(line: 713, column: 7, scope: !1615)
!2208 = !DILocation(line: 713, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !144, line: 713, column: 7)
!2210 = distinct !DILexicalBlock(scope: !1615, file: !144, line: 713, column: 7)
!2211 = !DILocation(line: 713, column: 7, scope: !2210)
!2212 = !DILocation(line: 713, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2209, file: !144, line: 713, column: 7)
!2214 = !DILocation(line: 713, column: 7, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !144, line: 713, column: 7)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !144, line: 713, column: 7)
!2217 = !DILocation(line: 713, column: 7, scope: !2216)
!2218 = !DILocation(line: 713, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !144, line: 713, column: 7)
!2220 = distinct !DILexicalBlock(scope: !2213, file: !144, line: 713, column: 7)
!2221 = !DILocation(line: 713, column: 7, scope: !2220)
!2222 = !DILocation(line: 714, column: 7, scope: !1615)
!2223 = !DILocation(line: 714, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !144, line: 714, column: 7)
!2225 = distinct !DILexicalBlock(scope: !1615, file: !144, line: 714, column: 7)
!2226 = !DILocation(line: 714, column: 7, scope: !2225)
!2227 = !DILocation(line: 716, column: 13, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !1615, file: !144, line: 716, column: 11)
!2229 = !DILocation(line: 716, column: 11, scope: !1615)
!2230 = !DILocation(line: 717, column: 38, scope: !2228)
!2231 = !DILocation(line: 717, column: 9, scope: !2228)
!2232 = !DILocation(line: 718, column: 5, scope: !1615)
!2233 = !DILocation(line: 395, column: 82, scope: !1604)
!2234 = !DILocation(line: 395, column: 3, scope: !1604)
!2235 = distinct !{!2235, !1613, !2236, !405}
!2236 = !DILocation(line: 718, column: 5, scope: !1600)
!2237 = !DILocation(line: 720, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !1462, file: !144, line: 720, column: 7)
!2239 = !DILocation(line: 720, column: 11, scope: !2238)
!2240 = !DILocation(line: 720, column: 16, scope: !2238)
!2241 = !DILocation(line: 720, column: 19, scope: !2238)
!2242 = !DILocation(line: 720, column: 33, scope: !2238)
!2243 = !DILocation(line: 721, column: 7, scope: !2238)
!2244 = !DILocation(line: 721, column: 10, scope: !2238)
!2245 = !DILocation(line: 720, column: 7, scope: !1462)
!2246 = !DILocation(line: 722, column: 5, scope: !2238)
!2247 = !DILocation(line: 728, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1462, file: !144, line: 728, column: 7)
!2249 = !DILocation(line: 728, column: 21, scope: !2248)
!2250 = !DILocation(line: 728, column: 51, scope: !2248)
!2251 = !DILocation(line: 728, column: 56, scope: !2248)
!2252 = !DILocation(line: 729, column: 7, scope: !2248)
!2253 = !DILocation(line: 729, column: 10, scope: !2248)
!2254 = !DILocation(line: 728, column: 7, scope: !1462)
!2255 = !DILocation(line: 731, column: 11, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !144, line: 731, column: 11)
!2257 = distinct !DILexicalBlock(scope: !2248, file: !144, line: 730, column: 5)
!2258 = !DILocation(line: 731, column: 11, scope: !2257)
!2259 = !DILocation(line: 732, column: 42, scope: !2256)
!2260 = !DILocation(line: 732, column: 50, scope: !2256)
!2261 = !DILocation(line: 732, column: 67, scope: !2256)
!2262 = !DILocation(line: 732, column: 72, scope: !2256)
!2263 = !DILocation(line: 734, column: 42, scope: !2256)
!2264 = !DILocation(line: 734, column: 49, scope: !2256)
!2265 = !DILocation(line: 735, column: 42, scope: !2256)
!2266 = !DILocation(line: 735, column: 54, scope: !2256)
!2267 = !DILocation(line: 732, column: 16, scope: !2256)
!2268 = !DILocation(line: 732, column: 9, scope: !2256)
!2269 = !DILocation(line: 736, column: 18, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2256, file: !144, line: 736, column: 16)
!2271 = !DILocation(line: 736, column: 29, scope: !2270)
!2272 = !DILocation(line: 736, column: 32, scope: !2270)
!2273 = !DILocation(line: 736, column: 16, scope: !2256)
!2274 = !DILocation(line: 739, column: 24, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2270, file: !144, line: 737, column: 9)
!2276 = !DILocation(line: 739, column: 22, scope: !2275)
!2277 = !DILocation(line: 740, column: 15, scope: !2275)
!2278 = !DILocation(line: 741, column: 11, scope: !2275)
!2279 = !DILocation(line: 743, column: 5, scope: !2257)
!2280 = !DILocation(line: 745, column: 7, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !1462, file: !144, line: 745, column: 7)
!2282 = !DILocation(line: 745, column: 20, scope: !2281)
!2283 = !DILocation(line: 745, column: 24, scope: !2281)
!2284 = !DILocation(line: 745, column: 7, scope: !1462)
!2285 = !DILocation(line: 746, column: 5, scope: !2281)
!2286 = !DILocation(line: 746, column: 13, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !144, line: 746, column: 5)
!2288 = distinct !DILexicalBlock(scope: !2281, file: !144, line: 746, column: 5)
!2289 = !DILocation(line: 746, column: 12, scope: !2287)
!2290 = !DILocation(line: 746, column: 5, scope: !2288)
!2291 = !DILocation(line: 747, column: 7, scope: !2287)
!2292 = !DILocation(line: 747, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !144, line: 747, column: 7)
!2294 = distinct !DILexicalBlock(scope: !2287, file: !144, line: 747, column: 7)
!2295 = !DILocation(line: 747, column: 7, scope: !2294)
!2296 = !DILocation(line: 746, column: 39, scope: !2287)
!2297 = !DILocation(line: 746, column: 5, scope: !2287)
!2298 = distinct !{!2298, !2290, !2299, !405}
!2299 = !DILocation(line: 747, column: 7, scope: !2288)
!2300 = !DILocation(line: 749, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !1462, file: !144, line: 749, column: 7)
!2302 = !DILocation(line: 749, column: 13, scope: !2301)
!2303 = !DILocation(line: 749, column: 11, scope: !2301)
!2304 = !DILocation(line: 749, column: 7, scope: !1462)
!2305 = !DILocation(line: 750, column: 5, scope: !2301)
!2306 = !DILocation(line: 750, column: 12, scope: !2301)
!2307 = !DILocation(line: 750, column: 17, scope: !2301)
!2308 = !DILocation(line: 751, column: 10, scope: !1462)
!2309 = !DILocation(line: 751, column: 3, scope: !1462)
!2310 = !DILabel(scope: !1462, name: "force_outer_quoting_style", file: !144, line: 753)
!2311 = !DILocation(line: 753, column: 2, scope: !1462)
!2312 = !DILocation(line: 756, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !1462, file: !144, line: 756, column: 7)
!2314 = !DILocation(line: 756, column: 21, scope: !2313)
!2315 = !DILocation(line: 756, column: 51, scope: !2313)
!2316 = !DILocation(line: 756, column: 54, scope: !2313)
!2317 = !DILocation(line: 756, column: 7, scope: !1462)
!2318 = !DILocation(line: 757, column: 19, scope: !2313)
!2319 = !DILocation(line: 757, column: 5, scope: !2313)
!2320 = !DILocation(line: 758, column: 36, scope: !1462)
!2321 = !DILocation(line: 758, column: 44, scope: !1462)
!2322 = !DILocation(line: 758, column: 56, scope: !1462)
!2323 = !DILocation(line: 758, column: 61, scope: !1462)
!2324 = !DILocation(line: 759, column: 36, scope: !1462)
!2325 = !DILocation(line: 760, column: 36, scope: !1462)
!2326 = !DILocation(line: 760, column: 42, scope: !1462)
!2327 = !DILocation(line: 761, column: 36, scope: !1462)
!2328 = !DILocation(line: 761, column: 48, scope: !1462)
!2329 = !DILocation(line: 758, column: 10, scope: !1462)
!2330 = !DILocation(line: 758, column: 3, scope: !1462)
!2331 = !DILocation(line: 762, column: 1, scope: !1462)
!2332 = !DILocalVariable(name: "msgid", arg: 1, scope: !183, file: !144, line: 197, type: !54)
!2333 = !DILocation(line: 197, column: 28, scope: !183)
!2334 = !DILocalVariable(name: "s", arg: 2, scope: !183, file: !144, line: 197, type: !27)
!2335 = !DILocation(line: 197, column: 54, scope: !183)
!2336 = !DILocalVariable(name: "translation", scope: !183, file: !144, line: 199, type: !54)
!2337 = !DILocation(line: 199, column: 15, scope: !183)
!2338 = !DILocation(line: 199, column: 29, scope: !183)
!2339 = !DILocation(line: 201, column: 7, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !183, file: !144, line: 201, column: 7)
!2341 = !DILocation(line: 201, column: 22, scope: !2340)
!2342 = !DILocation(line: 201, column: 19, scope: !2340)
!2343 = !DILocation(line: 201, column: 7, scope: !183)
!2344 = !DILocation(line: 202, column: 12, scope: !2340)
!2345 = !DILocation(line: 202, column: 5, scope: !2340)
!2346 = !DILocalVariable(name: "w", scope: !183, file: !144, line: 229, type: !1249)
!2347 = !DILocation(line: 229, column: 12, scope: !183)
!2348 = !DILocalVariable(name: "mbs", scope: !183, file: !144, line: 230, type: !1929)
!2349 = !DILocation(line: 230, column: 13, scope: !183)
!2350 = !DILocation(line: 230, column: 18, scope: !183)
!2351 = !DILocation(line: 231, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !183, file: !144, line: 231, column: 7)
!2353 = !DILocation(line: 231, column: 40, scope: !2352)
!2354 = !DILocation(line: 231, column: 45, scope: !2352)
!2355 = !DILocation(line: 231, column: 48, scope: !2352)
!2356 = !DILocation(line: 231, column: 50, scope: !2352)
!2357 = !DILocation(line: 231, column: 7, scope: !183)
!2358 = !DILocation(line: 232, column: 18, scope: !2352)
!2359 = !DILocation(line: 232, column: 27, scope: !2352)
!2360 = !DILocation(line: 232, column: 12, scope: !2352)
!2361 = !DILocation(line: 232, column: 5, scope: !2352)
!2362 = !DILocation(line: 234, column: 11, scope: !183)
!2363 = !DILocation(line: 234, column: 13, scope: !183)
!2364 = !DILocation(line: 234, column: 3, scope: !183)
!2365 = !DILocation(line: 235, column: 1, scope: !183)
!2366 = distinct !DISubprogram(name: "quotearg_alloc", scope: !144, file: !144, line: 788, type: !2367, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!42, !54, !152, !1302}
!2369 = !DILocalVariable(name: "arg", arg: 1, scope: !2366, file: !144, line: 788, type: !54)
!2370 = !DILocation(line: 788, column: 29, scope: !2366)
!2371 = !DILocalVariable(name: "argsize", arg: 2, scope: !2366, file: !144, line: 788, type: !152)
!2372 = !DILocation(line: 788, column: 41, scope: !2366)
!2373 = !DILocalVariable(name: "o", arg: 3, scope: !2366, file: !144, line: 789, type: !1302)
!2374 = !DILocation(line: 789, column: 47, scope: !2366)
!2375 = !DILocation(line: 791, column: 30, scope: !2366)
!2376 = !DILocation(line: 791, column: 35, scope: !2366)
!2377 = !DILocation(line: 791, column: 50, scope: !2366)
!2378 = !DILocation(line: 791, column: 10, scope: !2366)
!2379 = !DILocation(line: 791, column: 3, scope: !2366)
!2380 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !144, file: !144, line: 801, type: !2381, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!42, !54, !152, !256, !1302}
!2383 = !DILocalVariable(name: "arg", arg: 1, scope: !2380, file: !144, line: 801, type: !54)
!2384 = !DILocation(line: 801, column: 33, scope: !2380)
!2385 = !DILocalVariable(name: "argsize", arg: 2, scope: !2380, file: !144, line: 801, type: !152)
!2386 = !DILocation(line: 801, column: 45, scope: !2380)
!2387 = !DILocalVariable(name: "size", arg: 3, scope: !2380, file: !144, line: 801, type: !256)
!2388 = !DILocation(line: 801, column: 62, scope: !2380)
!2389 = !DILocalVariable(name: "o", arg: 4, scope: !2380, file: !144, line: 802, type: !1302)
!2390 = !DILocation(line: 802, column: 51, scope: !2380)
!2391 = !DILocalVariable(name: "p", scope: !2380, file: !144, line: 804, type: !1302)
!2392 = !DILocation(line: 804, column: 33, scope: !2380)
!2393 = !DILocation(line: 804, column: 37, scope: !2380)
!2394 = !DILocation(line: 804, column: 41, scope: !2380)
!2395 = !DILocalVariable(name: "saved_errno", scope: !2380, file: !144, line: 805, type: !45)
!2396 = !DILocation(line: 805, column: 7, scope: !2380)
!2397 = !DILocation(line: 805, column: 21, scope: !2380)
!2398 = !DILocalVariable(name: "flags", scope: !2380, file: !144, line: 807, type: !45)
!2399 = !DILocation(line: 807, column: 7, scope: !2380)
!2400 = !DILocation(line: 807, column: 15, scope: !2380)
!2401 = !DILocation(line: 807, column: 18, scope: !2380)
!2402 = !DILocation(line: 807, column: 27, scope: !2380)
!2403 = !DILocation(line: 807, column: 24, scope: !2380)
!2404 = !DILocalVariable(name: "bufsize", scope: !2380, file: !144, line: 808, type: !152)
!2405 = !DILocation(line: 808, column: 10, scope: !2380)
!2406 = !DILocation(line: 808, column: 55, scope: !2380)
!2407 = !DILocation(line: 808, column: 60, scope: !2380)
!2408 = !DILocation(line: 808, column: 69, scope: !2380)
!2409 = !DILocation(line: 808, column: 72, scope: !2380)
!2410 = !DILocation(line: 809, column: 46, scope: !2380)
!2411 = !DILocation(line: 809, column: 53, scope: !2380)
!2412 = !DILocation(line: 809, column: 56, scope: !2380)
!2413 = !DILocation(line: 810, column: 46, scope: !2380)
!2414 = !DILocation(line: 810, column: 49, scope: !2380)
!2415 = !DILocation(line: 811, column: 46, scope: !2380)
!2416 = !DILocation(line: 811, column: 49, scope: !2380)
!2417 = !DILocation(line: 808, column: 20, scope: !2380)
!2418 = !DILocation(line: 811, column: 62, scope: !2380)
!2419 = !DILocalVariable(name: "buf", scope: !2380, file: !144, line: 812, type: !42)
!2420 = !DILocation(line: 812, column: 9, scope: !2380)
!2421 = !DILocation(line: 812, column: 27, scope: !2380)
!2422 = !DILocation(line: 812, column: 15, scope: !2380)
!2423 = !DILocation(line: 813, column: 29, scope: !2380)
!2424 = !DILocation(line: 813, column: 34, scope: !2380)
!2425 = !DILocation(line: 813, column: 43, scope: !2380)
!2426 = !DILocation(line: 813, column: 48, scope: !2380)
!2427 = !DILocation(line: 813, column: 57, scope: !2380)
!2428 = !DILocation(line: 813, column: 60, scope: !2380)
!2429 = !DILocation(line: 813, column: 67, scope: !2380)
!2430 = !DILocation(line: 814, column: 29, scope: !2380)
!2431 = !DILocation(line: 814, column: 32, scope: !2380)
!2432 = !DILocation(line: 815, column: 29, scope: !2380)
!2433 = !DILocation(line: 815, column: 32, scope: !2380)
!2434 = !DILocation(line: 815, column: 44, scope: !2380)
!2435 = !DILocation(line: 815, column: 47, scope: !2380)
!2436 = !DILocation(line: 813, column: 3, scope: !2380)
!2437 = !DILocation(line: 816, column: 11, scope: !2380)
!2438 = !DILocation(line: 816, column: 3, scope: !2380)
!2439 = !DILocation(line: 816, column: 9, scope: !2380)
!2440 = !DILocation(line: 817, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2380, file: !144, line: 817, column: 7)
!2442 = !DILocation(line: 817, column: 7, scope: !2380)
!2443 = !DILocation(line: 818, column: 13, scope: !2441)
!2444 = !DILocation(line: 818, column: 21, scope: !2441)
!2445 = !DILocation(line: 818, column: 6, scope: !2441)
!2446 = !DILocation(line: 818, column: 11, scope: !2441)
!2447 = !DILocation(line: 818, column: 5, scope: !2441)
!2448 = !DILocation(line: 819, column: 10, scope: !2380)
!2449 = !DILocation(line: 819, column: 3, scope: !2380)
!2450 = distinct !DISubprogram(name: "quotearg_free", scope: !144, file: !144, line: 837, type: !114, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2451 = !DILocalVariable(name: "sv", scope: !2450, file: !144, line: 839, type: !191)
!2452 = !DILocation(line: 839, column: 19, scope: !2450)
!2453 = !DILocation(line: 839, column: 24, scope: !2450)
!2454 = !DILocalVariable(name: "i", scope: !2455, file: !144, line: 840, type: !45)
!2455 = distinct !DILexicalBlock(scope: !2450, file: !144, line: 840, column: 3)
!2456 = !DILocation(line: 840, column: 12, scope: !2455)
!2457 = !DILocation(line: 840, column: 8, scope: !2455)
!2458 = !DILocation(line: 840, column: 19, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !144, line: 840, column: 3)
!2460 = !DILocation(line: 840, column: 23, scope: !2459)
!2461 = !DILocation(line: 840, column: 21, scope: !2459)
!2462 = !DILocation(line: 840, column: 3, scope: !2455)
!2463 = !DILocation(line: 841, column: 11, scope: !2459)
!2464 = !DILocation(line: 841, column: 14, scope: !2459)
!2465 = !DILocation(line: 841, column: 17, scope: !2459)
!2466 = !DILocation(line: 841, column: 5, scope: !2459)
!2467 = !DILocation(line: 840, column: 32, scope: !2459)
!2468 = !DILocation(line: 840, column: 3, scope: !2459)
!2469 = distinct !{!2469, !2462, !2470, !405}
!2470 = !DILocation(line: 841, column: 20, scope: !2455)
!2471 = !DILocation(line: 842, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2450, file: !144, line: 842, column: 7)
!2473 = !DILocation(line: 842, column: 13, scope: !2472)
!2474 = !DILocation(line: 842, column: 17, scope: !2472)
!2475 = !DILocation(line: 842, column: 7, scope: !2450)
!2476 = !DILocation(line: 844, column: 13, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2472, file: !144, line: 843, column: 5)
!2478 = !DILocation(line: 844, column: 19, scope: !2477)
!2479 = !DILocation(line: 844, column: 7, scope: !2477)
!2480 = !DILocation(line: 845, column: 21, scope: !2477)
!2481 = !DILocation(line: 846, column: 20, scope: !2477)
!2482 = !DILocation(line: 847, column: 5, scope: !2477)
!2483 = !DILocation(line: 848, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2450, file: !144, line: 848, column: 7)
!2485 = !DILocation(line: 848, column: 10, scope: !2484)
!2486 = !DILocation(line: 848, column: 7, scope: !2450)
!2487 = !DILocation(line: 850, column: 13, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !144, line: 849, column: 5)
!2489 = !DILocation(line: 850, column: 7, scope: !2488)
!2490 = !DILocation(line: 851, column: 15, scope: !2488)
!2491 = !DILocation(line: 852, column: 5, scope: !2488)
!2492 = !DILocation(line: 853, column: 10, scope: !2450)
!2493 = !DILocation(line: 854, column: 1, scope: !2450)
!2494 = distinct !DISubprogram(name: "quotearg_n", scope: !144, file: !144, line: 919, type: !2495, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!42, !45, !54}
!2497 = !DILocalVariable(name: "n", arg: 1, scope: !2494, file: !144, line: 919, type: !45)
!2498 = !DILocation(line: 919, column: 17, scope: !2494)
!2499 = !DILocalVariable(name: "arg", arg: 2, scope: !2494, file: !144, line: 919, type: !54)
!2500 = !DILocation(line: 919, column: 32, scope: !2494)
!2501 = !DILocation(line: 921, column: 30, scope: !2494)
!2502 = !DILocation(line: 921, column: 33, scope: !2494)
!2503 = !DILocation(line: 921, column: 10, scope: !2494)
!2504 = !DILocation(line: 921, column: 3, scope: !2494)
!2505 = distinct !DISubprogram(name: "quotearg_n_options", scope: !144, file: !144, line: 866, type: !2506, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!42, !45, !54, !152, !1302}
!2508 = !DILocalVariable(name: "n", arg: 1, scope: !2505, file: !144, line: 866, type: !45)
!2509 = !DILocation(line: 866, column: 25, scope: !2505)
!2510 = !DILocalVariable(name: "arg", arg: 2, scope: !2505, file: !144, line: 866, type: !54)
!2511 = !DILocation(line: 866, column: 40, scope: !2505)
!2512 = !DILocalVariable(name: "argsize", arg: 3, scope: !2505, file: !144, line: 866, type: !152)
!2513 = !DILocation(line: 866, column: 52, scope: !2505)
!2514 = !DILocalVariable(name: "options", arg: 4, scope: !2505, file: !144, line: 867, type: !1302)
!2515 = !DILocation(line: 867, column: 51, scope: !2505)
!2516 = !DILocalVariable(name: "saved_errno", scope: !2505, file: !144, line: 869, type: !45)
!2517 = !DILocation(line: 869, column: 7, scope: !2505)
!2518 = !DILocation(line: 869, column: 21, scope: !2505)
!2519 = !DILocalVariable(name: "sv", scope: !2505, file: !144, line: 871, type: !191)
!2520 = !DILocation(line: 871, column: 19, scope: !2505)
!2521 = !DILocation(line: 871, column: 24, scope: !2505)
!2522 = !DILocalVariable(name: "nslots_max", scope: !2505, file: !144, line: 873, type: !45)
!2523 = !DILocation(line: 873, column: 7, scope: !2505)
!2524 = !DILocation(line: 874, column: 15, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2505, file: !144, line: 874, column: 7)
!2526 = !DILocation(line: 874, column: 12, scope: !2525)
!2527 = !DILocation(line: 874, column: 17, scope: !2525)
!2528 = !DILocation(line: 874, column: 20, scope: !2525)
!2529 = !DILocation(line: 874, column: 24, scope: !2525)
!2530 = !DILocation(line: 874, column: 22, scope: !2525)
!2531 = !DILocation(line: 874, column: 7, scope: !2505)
!2532 = !DILocation(line: 875, column: 5, scope: !2525)
!2533 = !DILocation(line: 877, column: 7, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2505, file: !144, line: 877, column: 7)
!2535 = !DILocation(line: 877, column: 17, scope: !2534)
!2536 = !DILocation(line: 877, column: 14, scope: !2534)
!2537 = !DILocation(line: 877, column: 7, scope: !2505)
!2538 = !DILocalVariable(name: "preallocated", scope: !2539, file: !144, line: 879, type: !81)
!2539 = distinct !DILexicalBlock(scope: !2534, file: !144, line: 878, column: 5)
!2540 = !DILocation(line: 879, column: 12, scope: !2539)
!2541 = !DILocation(line: 879, column: 28, scope: !2539)
!2542 = !DILocation(line: 879, column: 31, scope: !2539)
!2543 = !DILocalVariable(name: "new_nslots", scope: !2539, file: !144, line: 880, type: !264)
!2544 = !DILocation(line: 880, column: 13, scope: !2539)
!2545 = !DILocation(line: 880, column: 26, scope: !2539)
!2546 = !DILocation(line: 882, column: 31, scope: !2539)
!2547 = !DILocation(line: 882, column: 53, scope: !2539)
!2548 = !DILocation(line: 883, column: 31, scope: !2539)
!2549 = !DILocation(line: 883, column: 35, scope: !2539)
!2550 = !DILocation(line: 883, column: 33, scope: !2539)
!2551 = !DILocation(line: 883, column: 42, scope: !2539)
!2552 = !DILocation(line: 883, column: 47, scope: !2539)
!2553 = !DILocation(line: 882, column: 22, scope: !2539)
!2554 = !DILocation(line: 882, column: 20, scope: !2539)
!2555 = !DILocation(line: 882, column: 15, scope: !2539)
!2556 = !DILocation(line: 884, column: 11, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2539, file: !144, line: 884, column: 11)
!2558 = !DILocation(line: 884, column: 11, scope: !2539)
!2559 = !DILocation(line: 885, column: 10, scope: !2557)
!2560 = !DILocation(line: 885, column: 15, scope: !2557)
!2561 = !DILocation(line: 885, column: 9, scope: !2557)
!2562 = !DILocation(line: 886, column: 15, scope: !2539)
!2563 = !DILocation(line: 886, column: 20, scope: !2539)
!2564 = !DILocation(line: 886, column: 18, scope: !2539)
!2565 = !DILocation(line: 886, column: 7, scope: !2539)
!2566 = !DILocation(line: 886, column: 32, scope: !2539)
!2567 = !DILocation(line: 886, column: 45, scope: !2539)
!2568 = !DILocation(line: 886, column: 43, scope: !2539)
!2569 = !DILocation(line: 886, column: 53, scope: !2539)
!2570 = !DILocation(line: 887, column: 16, scope: !2539)
!2571 = !DILocation(line: 887, column: 14, scope: !2539)
!2572 = !DILocation(line: 888, column: 5, scope: !2539)
!2573 = !DILocalVariable(name: "size", scope: !2574, file: !144, line: 891, type: !152)
!2574 = distinct !DILexicalBlock(scope: !2505, file: !144, line: 890, column: 3)
!2575 = !DILocation(line: 891, column: 12, scope: !2574)
!2576 = !DILocation(line: 891, column: 19, scope: !2574)
!2577 = !DILocation(line: 891, column: 22, scope: !2574)
!2578 = !DILocation(line: 891, column: 25, scope: !2574)
!2579 = !DILocalVariable(name: "val", scope: !2574, file: !144, line: 892, type: !42)
!2580 = !DILocation(line: 892, column: 11, scope: !2574)
!2581 = !DILocation(line: 892, column: 17, scope: !2574)
!2582 = !DILocation(line: 892, column: 20, scope: !2574)
!2583 = !DILocation(line: 892, column: 23, scope: !2574)
!2584 = !DILocalVariable(name: "flags", scope: !2574, file: !144, line: 894, type: !45)
!2585 = !DILocation(line: 894, column: 9, scope: !2574)
!2586 = !DILocation(line: 894, column: 17, scope: !2574)
!2587 = !DILocation(line: 894, column: 26, scope: !2574)
!2588 = !DILocation(line: 894, column: 32, scope: !2574)
!2589 = !DILocalVariable(name: "qsize", scope: !2574, file: !144, line: 895, type: !152)
!2590 = !DILocation(line: 895, column: 12, scope: !2574)
!2591 = !DILocation(line: 895, column: 46, scope: !2574)
!2592 = !DILocation(line: 895, column: 51, scope: !2574)
!2593 = !DILocation(line: 895, column: 57, scope: !2574)
!2594 = !DILocation(line: 895, column: 62, scope: !2574)
!2595 = !DILocation(line: 896, column: 46, scope: !2574)
!2596 = !DILocation(line: 896, column: 55, scope: !2574)
!2597 = !DILocation(line: 896, column: 62, scope: !2574)
!2598 = !DILocation(line: 897, column: 46, scope: !2574)
!2599 = !DILocation(line: 897, column: 55, scope: !2574)
!2600 = !DILocation(line: 898, column: 46, scope: !2574)
!2601 = !DILocation(line: 898, column: 55, scope: !2574)
!2602 = !DILocation(line: 899, column: 46, scope: !2574)
!2603 = !DILocation(line: 899, column: 55, scope: !2574)
!2604 = !DILocation(line: 895, column: 20, scope: !2574)
!2605 = !DILocation(line: 901, column: 9, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2574, file: !144, line: 901, column: 9)
!2607 = !DILocation(line: 901, column: 17, scope: !2606)
!2608 = !DILocation(line: 901, column: 14, scope: !2606)
!2609 = !DILocation(line: 901, column: 9, scope: !2574)
!2610 = !DILocation(line: 903, column: 29, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2606, file: !144, line: 902, column: 7)
!2612 = !DILocation(line: 903, column: 35, scope: !2611)
!2613 = !DILocation(line: 903, column: 27, scope: !2611)
!2614 = !DILocation(line: 903, column: 9, scope: !2611)
!2615 = !DILocation(line: 903, column: 12, scope: !2611)
!2616 = !DILocation(line: 903, column: 15, scope: !2611)
!2617 = !DILocation(line: 903, column: 20, scope: !2611)
!2618 = !DILocation(line: 904, column: 13, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2611, file: !144, line: 904, column: 13)
!2620 = !DILocation(line: 904, column: 17, scope: !2619)
!2621 = !DILocation(line: 904, column: 13, scope: !2611)
!2622 = !DILocation(line: 905, column: 17, scope: !2619)
!2623 = !DILocation(line: 905, column: 11, scope: !2619)
!2624 = !DILocation(line: 906, column: 39, scope: !2611)
!2625 = !DILocation(line: 906, column: 27, scope: !2611)
!2626 = !DILocation(line: 906, column: 25, scope: !2611)
!2627 = !DILocation(line: 906, column: 9, scope: !2611)
!2628 = !DILocation(line: 906, column: 12, scope: !2611)
!2629 = !DILocation(line: 906, column: 15, scope: !2611)
!2630 = !DILocation(line: 906, column: 19, scope: !2611)
!2631 = !DILocation(line: 907, column: 35, scope: !2611)
!2632 = !DILocation(line: 907, column: 40, scope: !2611)
!2633 = !DILocation(line: 907, column: 46, scope: !2611)
!2634 = !DILocation(line: 907, column: 51, scope: !2611)
!2635 = !DILocation(line: 907, column: 60, scope: !2611)
!2636 = !DILocation(line: 907, column: 69, scope: !2611)
!2637 = !DILocation(line: 908, column: 35, scope: !2611)
!2638 = !DILocation(line: 908, column: 42, scope: !2611)
!2639 = !DILocation(line: 908, column: 51, scope: !2611)
!2640 = !DILocation(line: 909, column: 35, scope: !2611)
!2641 = !DILocation(line: 909, column: 44, scope: !2611)
!2642 = !DILocation(line: 910, column: 35, scope: !2611)
!2643 = !DILocation(line: 910, column: 44, scope: !2611)
!2644 = !DILocation(line: 907, column: 9, scope: !2611)
!2645 = !DILocation(line: 911, column: 7, scope: !2611)
!2646 = !DILocation(line: 913, column: 13, scope: !2574)
!2647 = !DILocation(line: 913, column: 5, scope: !2574)
!2648 = !DILocation(line: 913, column: 11, scope: !2574)
!2649 = !DILocation(line: 914, column: 12, scope: !2574)
!2650 = !DILocation(line: 914, column: 5, scope: !2574)
!2651 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !144, file: !144, line: 925, type: !2652, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!42, !45, !54, !152}
!2654 = !DILocalVariable(name: "n", arg: 1, scope: !2651, file: !144, line: 925, type: !45)
!2655 = !DILocation(line: 925, column: 21, scope: !2651)
!2656 = !DILocalVariable(name: "arg", arg: 2, scope: !2651, file: !144, line: 925, type: !54)
!2657 = !DILocation(line: 925, column: 36, scope: !2651)
!2658 = !DILocalVariable(name: "argsize", arg: 3, scope: !2651, file: !144, line: 925, type: !152)
!2659 = !DILocation(line: 925, column: 48, scope: !2651)
!2660 = !DILocation(line: 927, column: 30, scope: !2651)
!2661 = !DILocation(line: 927, column: 33, scope: !2651)
!2662 = !DILocation(line: 927, column: 38, scope: !2651)
!2663 = !DILocation(line: 927, column: 10, scope: !2651)
!2664 = !DILocation(line: 927, column: 3, scope: !2651)
!2665 = distinct !DISubprogram(name: "quotearg", scope: !144, file: !144, line: 931, type: !2666, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!42, !54}
!2668 = !DILocalVariable(name: "arg", arg: 1, scope: !2665, file: !144, line: 931, type: !54)
!2669 = !DILocation(line: 931, column: 23, scope: !2665)
!2670 = !DILocation(line: 933, column: 25, scope: !2665)
!2671 = !DILocation(line: 933, column: 10, scope: !2665)
!2672 = !DILocation(line: 933, column: 3, scope: !2665)
!2673 = distinct !DISubprogram(name: "quotearg_mem", scope: !144, file: !144, line: 937, type: !2674, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!42, !54, !152}
!2676 = !DILocalVariable(name: "arg", arg: 1, scope: !2673, file: !144, line: 937, type: !54)
!2677 = !DILocation(line: 937, column: 27, scope: !2673)
!2678 = !DILocalVariable(name: "argsize", arg: 2, scope: !2673, file: !144, line: 937, type: !152)
!2679 = !DILocation(line: 937, column: 39, scope: !2673)
!2680 = !DILocation(line: 939, column: 29, scope: !2673)
!2681 = !DILocation(line: 939, column: 34, scope: !2673)
!2682 = !DILocation(line: 939, column: 10, scope: !2673)
!2683 = !DILocation(line: 939, column: 3, scope: !2673)
!2684 = distinct !DISubprogram(name: "quotearg_n_style", scope: !144, file: !144, line: 943, type: !2685, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!42, !45, !27, !54}
!2687 = !DILocalVariable(name: "n", arg: 1, scope: !2684, file: !144, line: 943, type: !45)
!2688 = !DILocation(line: 943, column: 23, scope: !2684)
!2689 = !DILocalVariable(name: "s", arg: 2, scope: !2684, file: !144, line: 943, type: !27)
!2690 = !DILocation(line: 943, column: 45, scope: !2684)
!2691 = !DILocalVariable(name: "arg", arg: 3, scope: !2684, file: !144, line: 943, type: !54)
!2692 = !DILocation(line: 943, column: 60, scope: !2684)
!2693 = !DILocalVariable(name: "o", scope: !2684, file: !144, line: 945, type: !1303)
!2694 = !DILocation(line: 945, column: 32, scope: !2684)
!2695 = !DILocation(line: 945, column: 64, scope: !2684)
!2696 = !DILocation(line: 945, column: 36, scope: !2684)
!2697 = !DILocation(line: 946, column: 30, scope: !2684)
!2698 = !DILocation(line: 946, column: 33, scope: !2684)
!2699 = !DILocation(line: 946, column: 10, scope: !2684)
!2700 = !DILocation(line: 946, column: 3, scope: !2684)
!2701 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !144, file: !144, line: 183, type: !2702, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!164, !27}
!2704 = !DILocalVariable(name: "style", arg: 1, scope: !2701, file: !144, line: 183, type: !27)
!2705 = !DILocation(line: 183, column: 48, scope: !2701)
!2706 = !DILocalVariable(name: "o", scope: !2701, file: !144, line: 185, type: !164)
!2707 = !DILocation(line: 185, column: 26, scope: !2701)
!2708 = !DILocation(line: 186, column: 7, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2701, file: !144, line: 186, column: 7)
!2710 = !DILocation(line: 186, column: 13, scope: !2709)
!2711 = !DILocation(line: 186, column: 7, scope: !2701)
!2712 = !DILocation(line: 187, column: 5, scope: !2709)
!2713 = !DILocation(line: 188, column: 13, scope: !2701)
!2714 = !DILocation(line: 188, column: 5, scope: !2701)
!2715 = !DILocation(line: 188, column: 11, scope: !2701)
!2716 = !DILocation(line: 189, column: 3, scope: !2701)
!2717 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !144, file: !144, line: 950, type: !2718, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!42, !45, !27, !54, !152}
!2720 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !144, line: 950, type: !45)
!2721 = !DILocation(line: 950, column: 27, scope: !2717)
!2722 = !DILocalVariable(name: "s", arg: 2, scope: !2717, file: !144, line: 950, type: !27)
!2723 = !DILocation(line: 950, column: 49, scope: !2717)
!2724 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !144, line: 951, type: !54)
!2725 = !DILocation(line: 951, column: 35, scope: !2717)
!2726 = !DILocalVariable(name: "argsize", arg: 4, scope: !2717, file: !144, line: 951, type: !152)
!2727 = !DILocation(line: 951, column: 47, scope: !2717)
!2728 = !DILocalVariable(name: "o", scope: !2717, file: !144, line: 953, type: !1303)
!2729 = !DILocation(line: 953, column: 32, scope: !2717)
!2730 = !DILocation(line: 953, column: 64, scope: !2717)
!2731 = !DILocation(line: 953, column: 36, scope: !2717)
!2732 = !DILocation(line: 954, column: 30, scope: !2717)
!2733 = !DILocation(line: 954, column: 33, scope: !2717)
!2734 = !DILocation(line: 954, column: 38, scope: !2717)
!2735 = !DILocation(line: 954, column: 10, scope: !2717)
!2736 = !DILocation(line: 954, column: 3, scope: !2717)
!2737 = distinct !DISubprogram(name: "quotearg_style", scope: !144, file: !144, line: 958, type: !2738, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!42, !27, !54}
!2740 = !DILocalVariable(name: "s", arg: 1, scope: !2737, file: !144, line: 958, type: !27)
!2741 = !DILocation(line: 958, column: 36, scope: !2737)
!2742 = !DILocalVariable(name: "arg", arg: 2, scope: !2737, file: !144, line: 958, type: !54)
!2743 = !DILocation(line: 958, column: 51, scope: !2737)
!2744 = !DILocation(line: 960, column: 31, scope: !2737)
!2745 = !DILocation(line: 960, column: 34, scope: !2737)
!2746 = !DILocation(line: 960, column: 10, scope: !2737)
!2747 = !DILocation(line: 960, column: 3, scope: !2737)
!2748 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !144, file: !144, line: 964, type: !2749, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!42, !27, !54, !152}
!2751 = !DILocalVariable(name: "s", arg: 1, scope: !2748, file: !144, line: 964, type: !27)
!2752 = !DILocation(line: 964, column: 40, scope: !2748)
!2753 = !DILocalVariable(name: "arg", arg: 2, scope: !2748, file: !144, line: 964, type: !54)
!2754 = !DILocation(line: 964, column: 55, scope: !2748)
!2755 = !DILocalVariable(name: "argsize", arg: 3, scope: !2748, file: !144, line: 964, type: !152)
!2756 = !DILocation(line: 964, column: 67, scope: !2748)
!2757 = !DILocation(line: 966, column: 35, scope: !2748)
!2758 = !DILocation(line: 966, column: 38, scope: !2748)
!2759 = !DILocation(line: 966, column: 43, scope: !2748)
!2760 = !DILocation(line: 966, column: 10, scope: !2748)
!2761 = !DILocation(line: 966, column: 3, scope: !2748)
!2762 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !144, file: !144, line: 970, type: !2763, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!42, !54, !152, !43}
!2765 = !DILocalVariable(name: "arg", arg: 1, scope: !2762, file: !144, line: 970, type: !54)
!2766 = !DILocation(line: 970, column: 32, scope: !2762)
!2767 = !DILocalVariable(name: "argsize", arg: 2, scope: !2762, file: !144, line: 970, type: !152)
!2768 = !DILocation(line: 970, column: 44, scope: !2762)
!2769 = !DILocalVariable(name: "ch", arg: 3, scope: !2762, file: !144, line: 970, type: !43)
!2770 = !DILocation(line: 970, column: 58, scope: !2762)
!2771 = !DILocalVariable(name: "options", scope: !2762, file: !144, line: 972, type: !164)
!2772 = !DILocation(line: 972, column: 26, scope: !2762)
!2773 = !DILocation(line: 973, column: 13, scope: !2762)
!2774 = !DILocation(line: 974, column: 31, scope: !2762)
!2775 = !DILocation(line: 974, column: 3, scope: !2762)
!2776 = !DILocation(line: 975, column: 33, scope: !2762)
!2777 = !DILocation(line: 975, column: 38, scope: !2762)
!2778 = !DILocation(line: 975, column: 10, scope: !2762)
!2779 = !DILocation(line: 975, column: 3, scope: !2762)
!2780 = distinct !DISubprogram(name: "quotearg_char", scope: !144, file: !144, line: 979, type: !2781, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!42, !54, !43}
!2783 = !DILocalVariable(name: "arg", arg: 1, scope: !2780, file: !144, line: 979, type: !54)
!2784 = !DILocation(line: 979, column: 28, scope: !2780)
!2785 = !DILocalVariable(name: "ch", arg: 2, scope: !2780, file: !144, line: 979, type: !43)
!2786 = !DILocation(line: 979, column: 38, scope: !2780)
!2787 = !DILocation(line: 981, column: 29, scope: !2780)
!2788 = !DILocation(line: 981, column: 44, scope: !2780)
!2789 = !DILocation(line: 981, column: 10, scope: !2780)
!2790 = !DILocation(line: 981, column: 3, scope: !2780)
!2791 = distinct !DISubprogram(name: "quotearg_colon", scope: !144, file: !144, line: 985, type: !2666, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2792 = !DILocalVariable(name: "arg", arg: 1, scope: !2791, file: !144, line: 985, type: !54)
!2793 = !DILocation(line: 985, column: 29, scope: !2791)
!2794 = !DILocation(line: 987, column: 25, scope: !2791)
!2795 = !DILocation(line: 987, column: 10, scope: !2791)
!2796 = !DILocation(line: 987, column: 3, scope: !2791)
!2797 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !144, file: !144, line: 991, type: !2674, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2798 = !DILocalVariable(name: "arg", arg: 1, scope: !2797, file: !144, line: 991, type: !54)
!2799 = !DILocation(line: 991, column: 33, scope: !2797)
!2800 = !DILocalVariable(name: "argsize", arg: 2, scope: !2797, file: !144, line: 991, type: !152)
!2801 = !DILocation(line: 991, column: 45, scope: !2797)
!2802 = !DILocation(line: 993, column: 29, scope: !2797)
!2803 = !DILocation(line: 993, column: 34, scope: !2797)
!2804 = !DILocation(line: 993, column: 10, scope: !2797)
!2805 = !DILocation(line: 993, column: 3, scope: !2797)
!2806 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !144, file: !144, line: 997, type: !2685, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2807 = !DILocalVariable(name: "n", arg: 1, scope: !2806, file: !144, line: 997, type: !45)
!2808 = !DILocation(line: 997, column: 29, scope: !2806)
!2809 = !DILocalVariable(name: "s", arg: 2, scope: !2806, file: !144, line: 997, type: !27)
!2810 = !DILocation(line: 997, column: 51, scope: !2806)
!2811 = !DILocalVariable(name: "arg", arg: 3, scope: !2806, file: !144, line: 997, type: !54)
!2812 = !DILocation(line: 997, column: 66, scope: !2806)
!2813 = !DILocalVariable(name: "options", scope: !2806, file: !144, line: 999, type: !164)
!2814 = !DILocation(line: 999, column: 26, scope: !2806)
!2815 = !DILocation(line: 1000, column: 41, scope: !2806)
!2816 = !DILocation(line: 1000, column: 13, scope: !2806)
!2817 = !DILocation(line: 1001, column: 3, scope: !2806)
!2818 = !DILocation(line: 1002, column: 30, scope: !2806)
!2819 = !DILocation(line: 1002, column: 33, scope: !2806)
!2820 = !DILocation(line: 1002, column: 10, scope: !2806)
!2821 = !DILocation(line: 1002, column: 3, scope: !2806)
!2822 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !144, file: !144, line: 1006, type: !2823, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!42, !45, !54, !54, !54}
!2825 = !DILocalVariable(name: "n", arg: 1, scope: !2822, file: !144, line: 1006, type: !45)
!2826 = !DILocation(line: 1006, column: 24, scope: !2822)
!2827 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2822, file: !144, line: 1006, type: !54)
!2828 = !DILocation(line: 1006, column: 39, scope: !2822)
!2829 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2822, file: !144, line: 1007, type: !54)
!2830 = !DILocation(line: 1007, column: 32, scope: !2822)
!2831 = !DILocalVariable(name: "arg", arg: 4, scope: !2822, file: !144, line: 1007, type: !54)
!2832 = !DILocation(line: 1007, column: 57, scope: !2822)
!2833 = !DILocation(line: 1009, column: 33, scope: !2822)
!2834 = !DILocation(line: 1009, column: 36, scope: !2822)
!2835 = !DILocation(line: 1009, column: 48, scope: !2822)
!2836 = !DILocation(line: 1009, column: 61, scope: !2822)
!2837 = !DILocation(line: 1009, column: 10, scope: !2822)
!2838 = !DILocation(line: 1009, column: 3, scope: !2822)
!2839 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !144, file: !144, line: 1014, type: !2840, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!42, !45, !54, !54, !54, !152}
!2842 = !DILocalVariable(name: "n", arg: 1, scope: !2839, file: !144, line: 1014, type: !45)
!2843 = !DILocation(line: 1014, column: 28, scope: !2839)
!2844 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2839, file: !144, line: 1014, type: !54)
!2845 = !DILocation(line: 1014, column: 43, scope: !2839)
!2846 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2839, file: !144, line: 1015, type: !54)
!2847 = !DILocation(line: 1015, column: 36, scope: !2839)
!2848 = !DILocalVariable(name: "arg", arg: 4, scope: !2839, file: !144, line: 1016, type: !54)
!2849 = !DILocation(line: 1016, column: 36, scope: !2839)
!2850 = !DILocalVariable(name: "argsize", arg: 5, scope: !2839, file: !144, line: 1016, type: !152)
!2851 = !DILocation(line: 1016, column: 48, scope: !2839)
!2852 = !DILocalVariable(name: "o", scope: !2839, file: !144, line: 1018, type: !164)
!2853 = !DILocation(line: 1018, column: 26, scope: !2839)
!2854 = !DILocation(line: 1018, column: 30, scope: !2839)
!2855 = !DILocation(line: 1019, column: 27, scope: !2839)
!2856 = !DILocation(line: 1019, column: 39, scope: !2839)
!2857 = !DILocation(line: 1019, column: 3, scope: !2839)
!2858 = !DILocation(line: 1020, column: 30, scope: !2839)
!2859 = !DILocation(line: 1020, column: 33, scope: !2839)
!2860 = !DILocation(line: 1020, column: 38, scope: !2839)
!2861 = !DILocation(line: 1020, column: 10, scope: !2839)
!2862 = !DILocation(line: 1020, column: 3, scope: !2839)
!2863 = distinct !DISubprogram(name: "quotearg_custom", scope: !144, file: !144, line: 1024, type: !2864, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!42, !54, !54, !54}
!2866 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2863, file: !144, line: 1024, type: !54)
!2867 = !DILocation(line: 1024, column: 30, scope: !2863)
!2868 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2863, file: !144, line: 1024, type: !54)
!2869 = !DILocation(line: 1024, column: 54, scope: !2863)
!2870 = !DILocalVariable(name: "arg", arg: 3, scope: !2863, file: !144, line: 1025, type: !54)
!2871 = !DILocation(line: 1025, column: 30, scope: !2863)
!2872 = !DILocation(line: 1027, column: 32, scope: !2863)
!2873 = !DILocation(line: 1027, column: 44, scope: !2863)
!2874 = !DILocation(line: 1027, column: 57, scope: !2863)
!2875 = !DILocation(line: 1027, column: 10, scope: !2863)
!2876 = !DILocation(line: 1027, column: 3, scope: !2863)
!2877 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !144, file: !144, line: 1031, type: !2878, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!42, !54, !54, !54, !152}
!2880 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2877, file: !144, line: 1031, type: !54)
!2881 = !DILocation(line: 1031, column: 34, scope: !2877)
!2882 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2877, file: !144, line: 1031, type: !54)
!2883 = !DILocation(line: 1031, column: 58, scope: !2877)
!2884 = !DILocalVariable(name: "arg", arg: 3, scope: !2877, file: !144, line: 1032, type: !54)
!2885 = !DILocation(line: 1032, column: 34, scope: !2877)
!2886 = !DILocalVariable(name: "argsize", arg: 4, scope: !2877, file: !144, line: 1032, type: !152)
!2887 = !DILocation(line: 1032, column: 46, scope: !2877)
!2888 = !DILocation(line: 1034, column: 36, scope: !2877)
!2889 = !DILocation(line: 1034, column: 48, scope: !2877)
!2890 = !DILocation(line: 1034, column: 61, scope: !2877)
!2891 = !DILocation(line: 1035, column: 33, scope: !2877)
!2892 = !DILocation(line: 1034, column: 10, scope: !2877)
!2893 = !DILocation(line: 1034, column: 3, scope: !2877)
!2894 = distinct !DISubprogram(name: "quote_n_mem", scope: !144, file: !144, line: 1049, type: !2895, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!54, !45, !54, !152}
!2897 = !DILocalVariable(name: "n", arg: 1, scope: !2894, file: !144, line: 1049, type: !45)
!2898 = !DILocation(line: 1049, column: 18, scope: !2894)
!2899 = !DILocalVariable(name: "arg", arg: 2, scope: !2894, file: !144, line: 1049, type: !54)
!2900 = !DILocation(line: 1049, column: 33, scope: !2894)
!2901 = !DILocalVariable(name: "argsize", arg: 3, scope: !2894, file: !144, line: 1049, type: !152)
!2902 = !DILocation(line: 1049, column: 45, scope: !2894)
!2903 = !DILocation(line: 1051, column: 30, scope: !2894)
!2904 = !DILocation(line: 1051, column: 33, scope: !2894)
!2905 = !DILocation(line: 1051, column: 38, scope: !2894)
!2906 = !DILocation(line: 1051, column: 10, scope: !2894)
!2907 = !DILocation(line: 1051, column: 3, scope: !2894)
!2908 = distinct !DISubprogram(name: "quote_mem", scope: !144, file: !144, line: 1055, type: !2909, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!54, !54, !152}
!2911 = !DILocalVariable(name: "arg", arg: 1, scope: !2908, file: !144, line: 1055, type: !54)
!2912 = !DILocation(line: 1055, column: 24, scope: !2908)
!2913 = !DILocalVariable(name: "argsize", arg: 2, scope: !2908, file: !144, line: 1055, type: !152)
!2914 = !DILocation(line: 1055, column: 36, scope: !2908)
!2915 = !DILocation(line: 1057, column: 26, scope: !2908)
!2916 = !DILocation(line: 1057, column: 31, scope: !2908)
!2917 = !DILocation(line: 1057, column: 10, scope: !2908)
!2918 = !DILocation(line: 1057, column: 3, scope: !2908)
!2919 = distinct !DISubprogram(name: "quote_n", scope: !144, file: !144, line: 1061, type: !2920, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!54, !45, !54}
!2922 = !DILocalVariable(name: "n", arg: 1, scope: !2919, file: !144, line: 1061, type: !45)
!2923 = !DILocation(line: 1061, column: 14, scope: !2919)
!2924 = !DILocalVariable(name: "arg", arg: 2, scope: !2919, file: !144, line: 1061, type: !54)
!2925 = !DILocation(line: 1061, column: 29, scope: !2919)
!2926 = !DILocation(line: 1063, column: 23, scope: !2919)
!2927 = !DILocation(line: 1063, column: 26, scope: !2919)
!2928 = !DILocation(line: 1063, column: 10, scope: !2919)
!2929 = !DILocation(line: 1063, column: 3, scope: !2919)
!2930 = distinct !DISubprogram(name: "quote", scope: !144, file: !144, line: 1067, type: !2931, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !56)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!54, !54}
!2933 = !DILocalVariable(name: "arg", arg: 1, scope: !2930, file: !144, line: 1067, type: !54)
!2934 = !DILocation(line: 1067, column: 20, scope: !2930)
!2935 = !DILocation(line: 1069, column: 22, scope: !2930)
!2936 = !DILocation(line: 1069, column: 10, scope: !2930)
!2937 = !DILocation(line: 1069, column: 3, scope: !2930)
!2938 = distinct !DISubprogram(name: "streq", scope: !2939, file: !2939, line: 1359, type: !2940, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !56)
!2939 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!81, !54, !54}
!2942 = !DILocalVariable(name: "__s1", arg: 1, scope: !2938, file: !2939, line: 1359, type: !54)
!2943 = !DILocation(line: 1359, column: 20, scope: !2938)
!2944 = !DILocalVariable(name: "__s2", arg: 2, scope: !2938, file: !2939, line: 1359, type: !54)
!2945 = !DILocation(line: 1359, column: 38, scope: !2938)
!2946 = !DILocation(line: 1361, column: 19, scope: !2938)
!2947 = !DILocation(line: 1361, column: 25, scope: !2938)
!2948 = !DILocation(line: 1361, column: 11, scope: !2938)
!2949 = !DILocation(line: 1361, column: 10, scope: !2938)
!2950 = !DILocation(line: 1361, column: 3, scope: !2938)
!2951 = distinct !DISubprogram(name: "version_etc_arn", scope: !244, file: !244, line: 61, type: !2952, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !56)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !2954, !54, !54, !54, !3007, !152}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2956, line: 7, baseType: !2957)
!2956 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2958, line: 49, size: 1728, elements: !2959)
!2958 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2975, !2977, !2978, !2979, !2981, !2982, !2984, !2988, !2991, !2993, !2996, !2999, !3000, !3001, !3002, !3003}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2957, file: !2958, line: 51, baseType: !45, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2957, file: !2958, line: 54, baseType: !42, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2957, file: !2958, line: 55, baseType: !42, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2957, file: !2958, line: 56, baseType: !42, size: 64, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2957, file: !2958, line: 57, baseType: !42, size: 64, offset: 256)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2957, file: !2958, line: 58, baseType: !42, size: 64, offset: 320)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2957, file: !2958, line: 59, baseType: !42, size: 64, offset: 384)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2957, file: !2958, line: 60, baseType: !42, size: 64, offset: 448)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2957, file: !2958, line: 61, baseType: !42, size: 64, offset: 512)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2957, file: !2958, line: 64, baseType: !42, size: 64, offset: 576)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2957, file: !2958, line: 65, baseType: !42, size: 64, offset: 640)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2957, file: !2958, line: 66, baseType: !42, size: 64, offset: 704)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2957, file: !2958, line: 68, baseType: !2973, size: 64, offset: 768)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2958, line: 36, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2957, file: !2958, line: 70, baseType: !2976, size: 64, offset: 832)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2957, file: !2958, line: 72, baseType: !45, size: 32, offset: 896)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2957, file: !2958, line: 73, baseType: !45, size: 32, offset: 928)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2957, file: !2958, line: 74, baseType: !2980, size: 64, offset: 960)
!2980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1252, line: 152, baseType: !267)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2957, file: !2958, line: 77, baseType: !46, size: 16, offset: 1024)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2957, file: !2958, line: 78, baseType: !2983, size: 8, offset: 1040)
!2983 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2957, file: !2958, line: 79, baseType: !2985, size: 8, offset: 1048)
!2985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !2986)
!2986 = !{!2987}
!2987 = !DISubrange(count: 1)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2957, file: !2958, line: 81, baseType: !2989, size: 64, offset: 1088)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2958, line: 43, baseType: null)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2957, file: !2958, line: 89, baseType: !2992, size: 64, offset: 1152)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1252, line: 153, baseType: !267)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2957, file: !2958, line: 91, baseType: !2994, size: 64, offset: 1216)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2958, line: 37, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2957, file: !2958, line: 92, baseType: !2997, size: 64, offset: 1280)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2958, line: 38, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2957, file: !2958, line: 93, baseType: !2976, size: 64, offset: 1344)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2957, file: !2958, line: 94, baseType: !44, size: 64, offset: 1408)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2957, file: !2958, line: 95, baseType: !152, size: 64, offset: 1472)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2957, file: !2958, line: 96, baseType: !45, size: 32, offset: 1536)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2957, file: !2958, line: 98, baseType: !3004, size: 160, offset: 1568)
!3004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !3005)
!3005 = !{!3006}
!3006 = !DISubrange(count: 20)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!3008 = !DILocalVariable(name: "stream", arg: 1, scope: !2951, file: !244, line: 61, type: !2954)
!3009 = !DILocation(line: 61, column: 24, scope: !2951)
!3010 = !DILocalVariable(name: "command_name", arg: 2, scope: !2951, file: !244, line: 62, type: !54)
!3011 = !DILocation(line: 62, column: 30, scope: !2951)
!3012 = !DILocalVariable(name: "package", arg: 3, scope: !2951, file: !244, line: 62, type: !54)
!3013 = !DILocation(line: 62, column: 56, scope: !2951)
!3014 = !DILocalVariable(name: "version", arg: 4, scope: !2951, file: !244, line: 63, type: !54)
!3015 = !DILocation(line: 63, column: 30, scope: !2951)
!3016 = !DILocalVariable(name: "authors", arg: 5, scope: !2951, file: !244, line: 64, type: !3007)
!3017 = !DILocation(line: 64, column: 39, scope: !2951)
!3018 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2951, file: !244, line: 64, type: !152)
!3019 = !DILocation(line: 64, column: 55, scope: !2951)
!3020 = !DILocation(line: 66, column: 7, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2951, file: !244, line: 66, column: 7)
!3022 = !DILocation(line: 66, column: 7, scope: !2951)
!3023 = !DILocation(line: 67, column: 14, scope: !3021)
!3024 = !DILocation(line: 67, column: 38, scope: !3021)
!3025 = !DILocation(line: 67, column: 52, scope: !3021)
!3026 = !DILocation(line: 67, column: 61, scope: !3021)
!3027 = !DILocation(line: 67, column: 5, scope: !3021)
!3028 = !DILocation(line: 69, column: 14, scope: !3021)
!3029 = !DILocation(line: 69, column: 33, scope: !3021)
!3030 = !DILocation(line: 69, column: 42, scope: !3021)
!3031 = !DILocation(line: 69, column: 5, scope: !3021)
!3032 = !DILocation(line: 83, column: 12, scope: !2951)
!3033 = !DILocation(line: 83, column: 43, scope: !2951)
!3034 = !DILocation(line: 83, column: 3, scope: !2951)
!3035 = !DILocation(line: 85, column: 3, scope: !2951)
!3036 = !DILocation(line: 88, column: 12, scope: !2951)
!3037 = !DILocation(line: 88, column: 20, scope: !2951)
!3038 = !DILocation(line: 88, column: 3, scope: !2951)
!3039 = !DILocation(line: 95, column: 3, scope: !2951)
!3040 = !DILocation(line: 97, column: 11, scope: !2951)
!3041 = !DILocation(line: 97, column: 3, scope: !2951)
!3042 = !DILocation(line: 102, column: 7, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2951, file: !244, line: 98, column: 5)
!3044 = !DILocation(line: 105, column: 16, scope: !3043)
!3045 = !DILocation(line: 105, column: 24, scope: !3043)
!3046 = !DILocation(line: 105, column: 47, scope: !3043)
!3047 = !DILocation(line: 105, column: 7, scope: !3043)
!3048 = !DILocation(line: 106, column: 7, scope: !3043)
!3049 = !DILocation(line: 109, column: 16, scope: !3043)
!3050 = !DILocation(line: 109, column: 24, scope: !3043)
!3051 = !DILocation(line: 109, column: 54, scope: !3043)
!3052 = !DILocation(line: 109, column: 66, scope: !3043)
!3053 = !DILocation(line: 109, column: 7, scope: !3043)
!3054 = !DILocation(line: 110, column: 7, scope: !3043)
!3055 = !DILocation(line: 113, column: 16, scope: !3043)
!3056 = !DILocation(line: 113, column: 24, scope: !3043)
!3057 = !DILocation(line: 114, column: 16, scope: !3043)
!3058 = !DILocation(line: 114, column: 28, scope: !3043)
!3059 = !DILocation(line: 114, column: 40, scope: !3043)
!3060 = !DILocation(line: 113, column: 7, scope: !3043)
!3061 = !DILocation(line: 115, column: 7, scope: !3043)
!3062 = !DILocation(line: 120, column: 16, scope: !3043)
!3063 = !DILocation(line: 120, column: 24, scope: !3043)
!3064 = !DILocation(line: 121, column: 16, scope: !3043)
!3065 = !DILocation(line: 121, column: 28, scope: !3043)
!3066 = !DILocation(line: 121, column: 40, scope: !3043)
!3067 = !DILocation(line: 121, column: 52, scope: !3043)
!3068 = !DILocation(line: 120, column: 7, scope: !3043)
!3069 = !DILocation(line: 122, column: 7, scope: !3043)
!3070 = !DILocation(line: 127, column: 16, scope: !3043)
!3071 = !DILocation(line: 127, column: 24, scope: !3043)
!3072 = !DILocation(line: 128, column: 16, scope: !3043)
!3073 = !DILocation(line: 128, column: 28, scope: !3043)
!3074 = !DILocation(line: 128, column: 40, scope: !3043)
!3075 = !DILocation(line: 128, column: 52, scope: !3043)
!3076 = !DILocation(line: 128, column: 64, scope: !3043)
!3077 = !DILocation(line: 127, column: 7, scope: !3043)
!3078 = !DILocation(line: 129, column: 7, scope: !3043)
!3079 = !DILocation(line: 134, column: 16, scope: !3043)
!3080 = !DILocation(line: 134, column: 24, scope: !3043)
!3081 = !DILocation(line: 135, column: 16, scope: !3043)
!3082 = !DILocation(line: 135, column: 28, scope: !3043)
!3083 = !DILocation(line: 135, column: 40, scope: !3043)
!3084 = !DILocation(line: 135, column: 52, scope: !3043)
!3085 = !DILocation(line: 135, column: 64, scope: !3043)
!3086 = !DILocation(line: 136, column: 16, scope: !3043)
!3087 = !DILocation(line: 134, column: 7, scope: !3043)
!3088 = !DILocation(line: 137, column: 7, scope: !3043)
!3089 = !DILocation(line: 142, column: 16, scope: !3043)
!3090 = !DILocation(line: 142, column: 24, scope: !3043)
!3091 = !DILocation(line: 143, column: 16, scope: !3043)
!3092 = !DILocation(line: 143, column: 28, scope: !3043)
!3093 = !DILocation(line: 143, column: 40, scope: !3043)
!3094 = !DILocation(line: 143, column: 52, scope: !3043)
!3095 = !DILocation(line: 143, column: 64, scope: !3043)
!3096 = !DILocation(line: 144, column: 16, scope: !3043)
!3097 = !DILocation(line: 144, column: 28, scope: !3043)
!3098 = !DILocation(line: 142, column: 7, scope: !3043)
!3099 = !DILocation(line: 145, column: 7, scope: !3043)
!3100 = !DILocation(line: 150, column: 16, scope: !3043)
!3101 = !DILocation(line: 150, column: 24, scope: !3043)
!3102 = !DILocation(line: 152, column: 17, scope: !3043)
!3103 = !DILocation(line: 152, column: 29, scope: !3043)
!3104 = !DILocation(line: 152, column: 41, scope: !3043)
!3105 = !DILocation(line: 152, column: 53, scope: !3043)
!3106 = !DILocation(line: 152, column: 65, scope: !3043)
!3107 = !DILocation(line: 153, column: 17, scope: !3043)
!3108 = !DILocation(line: 153, column: 29, scope: !3043)
!3109 = !DILocation(line: 153, column: 41, scope: !3043)
!3110 = !DILocation(line: 150, column: 7, scope: !3043)
!3111 = !DILocation(line: 154, column: 7, scope: !3043)
!3112 = !DILocation(line: 159, column: 16, scope: !3043)
!3113 = !DILocation(line: 159, column: 24, scope: !3043)
!3114 = !DILocation(line: 161, column: 16, scope: !3043)
!3115 = !DILocation(line: 161, column: 28, scope: !3043)
!3116 = !DILocation(line: 161, column: 40, scope: !3043)
!3117 = !DILocation(line: 161, column: 52, scope: !3043)
!3118 = !DILocation(line: 161, column: 64, scope: !3043)
!3119 = !DILocation(line: 162, column: 16, scope: !3043)
!3120 = !DILocation(line: 162, column: 28, scope: !3043)
!3121 = !DILocation(line: 162, column: 40, scope: !3043)
!3122 = !DILocation(line: 162, column: 52, scope: !3043)
!3123 = !DILocation(line: 159, column: 7, scope: !3043)
!3124 = !DILocation(line: 163, column: 7, scope: !3043)
!3125 = !DILocation(line: 170, column: 16, scope: !3043)
!3126 = !DILocation(line: 170, column: 24, scope: !3043)
!3127 = !DILocation(line: 172, column: 17, scope: !3043)
!3128 = !DILocation(line: 172, column: 29, scope: !3043)
!3129 = !DILocation(line: 172, column: 41, scope: !3043)
!3130 = !DILocation(line: 172, column: 53, scope: !3043)
!3131 = !DILocation(line: 172, column: 65, scope: !3043)
!3132 = !DILocation(line: 173, column: 17, scope: !3043)
!3133 = !DILocation(line: 173, column: 29, scope: !3043)
!3134 = !DILocation(line: 173, column: 41, scope: !3043)
!3135 = !DILocation(line: 173, column: 53, scope: !3043)
!3136 = !DILocation(line: 170, column: 7, scope: !3043)
!3137 = !DILocation(line: 174, column: 7, scope: !3043)
!3138 = !DILocation(line: 176, column: 1, scope: !2951)
!3139 = distinct !DISubprogram(name: "version_etc_ar", scope: !244, file: !244, line: 183, type: !3140, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !56)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{null, !2954, !54, !54, !54, !3007}
!3142 = !DILocalVariable(name: "stream", arg: 1, scope: !3139, file: !244, line: 183, type: !2954)
!3143 = !DILocation(line: 183, column: 23, scope: !3139)
!3144 = !DILocalVariable(name: "command_name", arg: 2, scope: !3139, file: !244, line: 184, type: !54)
!3145 = !DILocation(line: 184, column: 29, scope: !3139)
!3146 = !DILocalVariable(name: "package", arg: 3, scope: !3139, file: !244, line: 184, type: !54)
!3147 = !DILocation(line: 184, column: 55, scope: !3139)
!3148 = !DILocalVariable(name: "version", arg: 4, scope: !3139, file: !244, line: 185, type: !54)
!3149 = !DILocation(line: 185, column: 29, scope: !3139)
!3150 = !DILocalVariable(name: "authors", arg: 5, scope: !3139, file: !244, line: 185, type: !3007)
!3151 = !DILocation(line: 185, column: 59, scope: !3139)
!3152 = !DILocalVariable(name: "n_authors", scope: !3139, file: !244, line: 187, type: !152)
!3153 = !DILocation(line: 187, column: 10, scope: !3139)
!3154 = !DILocation(line: 189, column: 18, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3139, file: !244, line: 189, column: 3)
!3156 = !DILocation(line: 189, column: 8, scope: !3155)
!3157 = !DILocation(line: 189, column: 23, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3155, file: !244, line: 189, column: 3)
!3159 = !DILocation(line: 189, column: 31, scope: !3158)
!3160 = !DILocation(line: 189, column: 3, scope: !3155)
!3161 = !DILocation(line: 189, column: 52, scope: !3158)
!3162 = !DILocation(line: 189, column: 3, scope: !3158)
!3163 = distinct !{!3163, !3160, !3164, !405}
!3164 = !DILocation(line: 190, column: 5, scope: !3155)
!3165 = !DILocation(line: 191, column: 20, scope: !3139)
!3166 = !DILocation(line: 191, column: 28, scope: !3139)
!3167 = !DILocation(line: 191, column: 42, scope: !3139)
!3168 = !DILocation(line: 191, column: 51, scope: !3139)
!3169 = !DILocation(line: 191, column: 60, scope: !3139)
!3170 = !DILocation(line: 191, column: 69, scope: !3139)
!3171 = !DILocation(line: 191, column: 3, scope: !3139)
!3172 = !DILocation(line: 192, column: 1, scope: !3139)
!3173 = distinct !DISubprogram(name: "version_etc_va", scope: !244, file: !244, line: 199, type: !3174, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !56)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{null, !2954, !54, !54, !54, !3176}
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !94, line: 52, baseType: !3177)
!3177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !96, line: 32, baseType: !3178)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3179, baseType: !3180)
!3179 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !100, size: 256, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3185, !3186}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3180, file: !3179, line: 192, baseType: !44, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3180, file: !3179, line: 192, baseType: !44, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3180, file: !3179, line: 192, baseType: !44, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3180, file: !3179, line: 192, baseType: !45, size: 32, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3180, file: !3179, line: 192, baseType: !45, size: 32, offset: 224)
!3187 = !DILocalVariable(name: "stream", arg: 1, scope: !3173, file: !244, line: 199, type: !2954)
!3188 = !DILocation(line: 199, column: 23, scope: !3173)
!3189 = !DILocalVariable(name: "command_name", arg: 2, scope: !3173, file: !244, line: 200, type: !54)
!3190 = !DILocation(line: 200, column: 29, scope: !3173)
!3191 = !DILocalVariable(name: "package", arg: 3, scope: !3173, file: !244, line: 200, type: !54)
!3192 = !DILocation(line: 200, column: 55, scope: !3173)
!3193 = !DILocalVariable(name: "version", arg: 4, scope: !3173, file: !244, line: 201, type: !54)
!3194 = !DILocation(line: 201, column: 29, scope: !3173)
!3195 = !DILocalVariable(name: "authors", arg: 5, scope: !3173, file: !244, line: 201, type: !3176)
!3196 = !DILocation(line: 201, column: 46, scope: !3173)
!3197 = !DILocalVariable(name: "n_authors", scope: !3173, file: !244, line: 203, type: !152)
!3198 = !DILocation(line: 203, column: 10, scope: !3173)
!3199 = !DILocalVariable(name: "authtab", scope: !3173, file: !244, line: 204, type: !3200)
!3200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 640, elements: !160)
!3201 = !DILocation(line: 204, column: 15, scope: !3173)
!3202 = !DILocation(line: 206, column: 18, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3173, file: !244, line: 206, column: 3)
!3204 = !DILocation(line: 206, column: 8, scope: !3203)
!3205 = !DILocation(line: 207, column: 8, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3203, file: !244, line: 206, column: 3)
!3207 = !DILocation(line: 207, column: 18, scope: !3206)
!3208 = !DILocation(line: 208, column: 10, scope: !3206)
!3209 = !DILocation(line: 208, column: 35, scope: !3206)
!3210 = !DILocation(line: 208, column: 22, scope: !3206)
!3211 = !DILocation(line: 208, column: 14, scope: !3206)
!3212 = !DILocation(line: 208, column: 33, scope: !3206)
!3213 = !DILocation(line: 208, column: 67, scope: !3206)
!3214 = !DILocation(line: 0, scope: !3206)
!3215 = !DILocation(line: 206, column: 3, scope: !3203)
!3216 = !DILocation(line: 209, column: 17, scope: !3206)
!3217 = !DILocation(line: 206, column: 3, scope: !3206)
!3218 = distinct !{!3218, !3215, !3219, !405}
!3219 = !DILocation(line: 210, column: 5, scope: !3203)
!3220 = !DILocation(line: 211, column: 20, scope: !3173)
!3221 = !DILocation(line: 211, column: 28, scope: !3173)
!3222 = !DILocation(line: 211, column: 42, scope: !3173)
!3223 = !DILocation(line: 211, column: 51, scope: !3173)
!3224 = !DILocation(line: 212, column: 20, scope: !3173)
!3225 = !DILocation(line: 212, column: 29, scope: !3173)
!3226 = !DILocation(line: 211, column: 3, scope: !3173)
!3227 = !DILocation(line: 213, column: 1, scope: !3173)
!3228 = distinct !DISubprogram(name: "version_etc", scope: !244, file: !244, line: 230, type: !3229, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !56)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !2954, !54, !54, !54, null}
!3231 = !DILocalVariable(name: "stream", arg: 1, scope: !3228, file: !244, line: 230, type: !2954)
!3232 = !DILocation(line: 230, column: 20, scope: !3228)
!3233 = !DILocalVariable(name: "command_name", arg: 2, scope: !3228, file: !244, line: 231, type: !54)
!3234 = !DILocation(line: 231, column: 26, scope: !3228)
!3235 = !DILocalVariable(name: "package", arg: 3, scope: !3228, file: !244, line: 231, type: !54)
!3236 = !DILocation(line: 231, column: 52, scope: !3228)
!3237 = !DILocalVariable(name: "version", arg: 4, scope: !3228, file: !244, line: 232, type: !54)
!3238 = !DILocation(line: 232, column: 26, scope: !3228)
!3239 = !DILocalVariable(name: "authors", scope: !3228, file: !244, line: 234, type: !3176)
!3240 = !DILocation(line: 234, column: 11, scope: !3228)
!3241 = !DILocation(line: 235, column: 3, scope: !3228)
!3242 = !DILocation(line: 236, column: 19, scope: !3228)
!3243 = !DILocation(line: 236, column: 27, scope: !3228)
!3244 = !DILocation(line: 236, column: 41, scope: !3228)
!3245 = !DILocation(line: 236, column: 50, scope: !3228)
!3246 = !DILocation(line: 236, column: 3, scope: !3228)
!3247 = !DILocation(line: 237, column: 3, scope: !3228)
!3248 = !DILocation(line: 238, column: 1, scope: !3228)
!3249 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !244, file: !244, line: 241, type: !114, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !56)
!3250 = !DILocation(line: 243, column: 3, scope: !3249)
!3251 = !DILocation(line: 248, column: 11, scope: !3249)
!3252 = !DILocation(line: 248, column: 3, scope: !3249)
!3253 = !DILocation(line: 254, column: 11, scope: !3249)
!3254 = !DILocation(line: 254, column: 3, scope: !3249)
!3255 = !DILocation(line: 259, column: 11, scope: !3249)
!3256 = !DILocation(line: 259, column: 3, scope: !3249)
!3257 = !DILocation(line: 261, column: 1, scope: !3249)
!3258 = distinct !DISubprogram(name: "xnrealloc", scope: !3259, file: !3259, line: 147, type: !3260, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3259 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!44, !44, !152, !152}
!3262 = !DILocalVariable(name: "p", arg: 1, scope: !3258, file: !3259, line: 147, type: !44)
!3263 = !DILocation(line: 147, column: 18, scope: !3258)
!3264 = !DILocalVariable(name: "n", arg: 2, scope: !3258, file: !3259, line: 147, type: !152)
!3265 = !DILocation(line: 147, column: 28, scope: !3258)
!3266 = !DILocalVariable(name: "s", arg: 3, scope: !3258, file: !3259, line: 147, type: !152)
!3267 = !DILocation(line: 147, column: 38, scope: !3258)
!3268 = !DILocation(line: 149, column: 25, scope: !3258)
!3269 = !DILocation(line: 149, column: 28, scope: !3258)
!3270 = !DILocation(line: 149, column: 31, scope: !3258)
!3271 = !DILocation(line: 149, column: 10, scope: !3258)
!3272 = !DILocation(line: 149, column: 3, scope: !3258)
!3273 = distinct !DISubprogram(name: "xreallocarray", scope: !250, file: !250, line: 83, type: !3260, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3274 = !DILocalVariable(name: "p", arg: 1, scope: !3273, file: !250, line: 83, type: !44)
!3275 = !DILocation(line: 83, column: 22, scope: !3273)
!3276 = !DILocalVariable(name: "n", arg: 2, scope: !3273, file: !250, line: 83, type: !152)
!3277 = !DILocation(line: 83, column: 32, scope: !3273)
!3278 = !DILocalVariable(name: "s", arg: 3, scope: !3273, file: !250, line: 83, type: !152)
!3279 = !DILocation(line: 83, column: 42, scope: !3273)
!3280 = !DILocation(line: 85, column: 39, scope: !3273)
!3281 = !DILocation(line: 85, column: 42, scope: !3273)
!3282 = !DILocation(line: 85, column: 45, scope: !3273)
!3283 = !DILocation(line: 85, column: 25, scope: !3273)
!3284 = !DILocation(line: 85, column: 10, scope: !3273)
!3285 = !DILocation(line: 85, column: 3, scope: !3273)
!3286 = distinct !DISubprogram(name: "check_nonnull", scope: !250, file: !250, line: 37, type: !3287, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!44, !44}
!3289 = !DILocalVariable(name: "p", arg: 1, scope: !3286, file: !250, line: 37, type: !44)
!3290 = !DILocation(line: 37, column: 22, scope: !3286)
!3291 = !DILocation(line: 39, column: 8, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3286, file: !250, line: 39, column: 7)
!3293 = !DILocation(line: 39, column: 7, scope: !3286)
!3294 = !DILocation(line: 40, column: 5, scope: !3292)
!3295 = !DILocation(line: 41, column: 10, scope: !3286)
!3296 = !DILocation(line: 41, column: 3, scope: !3286)
!3297 = distinct !DISubprogram(name: "xmalloc", scope: !250, file: !250, line: 47, type: !3298, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!44, !152}
!3300 = !DILocalVariable(name: "s", arg: 1, scope: !3297, file: !250, line: 47, type: !152)
!3301 = !DILocation(line: 47, column: 17, scope: !3297)
!3302 = !DILocation(line: 49, column: 33, scope: !3297)
!3303 = !DILocation(line: 49, column: 25, scope: !3297)
!3304 = !DILocation(line: 49, column: 10, scope: !3297)
!3305 = !DILocation(line: 49, column: 3, scope: !3297)
!3306 = distinct !DISubprogram(name: "ximalloc", scope: !250, file: !250, line: 53, type: !3307, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!44, !264}
!3309 = !DILocalVariable(name: "s", arg: 1, scope: !3306, file: !250, line: 53, type: !264)
!3310 = !DILocation(line: 53, column: 17, scope: !3306)
!3311 = !DILocation(line: 55, column: 34, scope: !3306)
!3312 = !DILocation(line: 55, column: 25, scope: !3306)
!3313 = !DILocation(line: 55, column: 10, scope: !3306)
!3314 = !DILocation(line: 55, column: 3, scope: !3306)
!3315 = distinct !DISubprogram(name: "xcharalloc", scope: !250, file: !250, line: 59, type: !3316, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!42, !152}
!3318 = !DILocalVariable(name: "n", arg: 1, scope: !3315, file: !250, line: 59, type: !152)
!3319 = !DILocation(line: 59, column: 20, scope: !3315)
!3320 = !DILocation(line: 61, column: 10, scope: !3315)
!3321 = !DILocation(line: 61, column: 3, scope: !3315)
!3322 = distinct !DISubprogram(name: "xrealloc", scope: !250, file: !250, line: 68, type: !3323, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!44, !44, !152}
!3325 = !DILocalVariable(name: "p", arg: 1, scope: !3322, file: !250, line: 68, type: !44)
!3326 = !DILocation(line: 68, column: 17, scope: !3322)
!3327 = !DILocalVariable(name: "s", arg: 2, scope: !3322, file: !250, line: 68, type: !152)
!3328 = !DILocation(line: 68, column: 27, scope: !3322)
!3329 = !DILocation(line: 70, column: 34, scope: !3322)
!3330 = !DILocation(line: 70, column: 37, scope: !3322)
!3331 = !DILocation(line: 70, column: 25, scope: !3322)
!3332 = !DILocation(line: 70, column: 10, scope: !3322)
!3333 = !DILocation(line: 70, column: 3, scope: !3322)
!3334 = distinct !DISubprogram(name: "xirealloc", scope: !250, file: !250, line: 74, type: !3335, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!44, !44, !264}
!3337 = !DILocalVariable(name: "p", arg: 1, scope: !3334, file: !250, line: 74, type: !44)
!3338 = !DILocation(line: 74, column: 18, scope: !3334)
!3339 = !DILocalVariable(name: "s", arg: 2, scope: !3334, file: !250, line: 74, type: !264)
!3340 = !DILocation(line: 74, column: 27, scope: !3334)
!3341 = !DILocation(line: 76, column: 35, scope: !3334)
!3342 = !DILocation(line: 76, column: 38, scope: !3334)
!3343 = !DILocation(line: 76, column: 25, scope: !3334)
!3344 = !DILocation(line: 76, column: 10, scope: !3334)
!3345 = !DILocation(line: 76, column: 3, scope: !3334)
!3346 = distinct !DISubprogram(name: "xireallocarray", scope: !250, file: !250, line: 89, type: !3347, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!44, !44, !264, !264}
!3349 = !DILocalVariable(name: "p", arg: 1, scope: !3346, file: !250, line: 89, type: !44)
!3350 = !DILocation(line: 89, column: 23, scope: !3346)
!3351 = !DILocalVariable(name: "n", arg: 2, scope: !3346, file: !250, line: 89, type: !264)
!3352 = !DILocation(line: 89, column: 32, scope: !3346)
!3353 = !DILocalVariable(name: "s", arg: 3, scope: !3346, file: !250, line: 89, type: !264)
!3354 = !DILocation(line: 89, column: 41, scope: !3346)
!3355 = !DILocation(line: 91, column: 40, scope: !3346)
!3356 = !DILocation(line: 91, column: 43, scope: !3346)
!3357 = !DILocation(line: 91, column: 46, scope: !3346)
!3358 = !DILocation(line: 91, column: 25, scope: !3346)
!3359 = !DILocation(line: 91, column: 10, scope: !3346)
!3360 = !DILocation(line: 91, column: 3, scope: !3346)
!3361 = distinct !DISubprogram(name: "xnmalloc", scope: !250, file: !250, line: 98, type: !3362, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!44, !152, !152}
!3364 = !DILocalVariable(name: "n", arg: 1, scope: !3361, file: !250, line: 98, type: !152)
!3365 = !DILocation(line: 98, column: 18, scope: !3361)
!3366 = !DILocalVariable(name: "s", arg: 2, scope: !3361, file: !250, line: 98, type: !152)
!3367 = !DILocation(line: 98, column: 28, scope: !3361)
!3368 = !DILocation(line: 100, column: 31, scope: !3361)
!3369 = !DILocation(line: 100, column: 34, scope: !3361)
!3370 = !DILocation(line: 100, column: 10, scope: !3361)
!3371 = !DILocation(line: 100, column: 3, scope: !3361)
!3372 = distinct !DISubprogram(name: "xinmalloc", scope: !250, file: !250, line: 104, type: !3373, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!44, !264, !264}
!3375 = !DILocalVariable(name: "n", arg: 1, scope: !3372, file: !250, line: 104, type: !264)
!3376 = !DILocation(line: 104, column: 18, scope: !3372)
!3377 = !DILocalVariable(name: "s", arg: 2, scope: !3372, file: !250, line: 104, type: !264)
!3378 = !DILocation(line: 104, column: 27, scope: !3372)
!3379 = !DILocation(line: 106, column: 32, scope: !3372)
!3380 = !DILocation(line: 106, column: 35, scope: !3372)
!3381 = !DILocation(line: 106, column: 10, scope: !3372)
!3382 = !DILocation(line: 106, column: 3, scope: !3372)
!3383 = distinct !DISubprogram(name: "x2realloc", scope: !250, file: !250, line: 116, type: !3384, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!44, !44, !256}
!3386 = !DILocalVariable(name: "p", arg: 1, scope: !3383, file: !250, line: 116, type: !44)
!3387 = !DILocation(line: 116, column: 18, scope: !3383)
!3388 = !DILocalVariable(name: "ps", arg: 2, scope: !3383, file: !250, line: 116, type: !256)
!3389 = !DILocation(line: 116, column: 29, scope: !3383)
!3390 = !DILocation(line: 118, column: 22, scope: !3383)
!3391 = !DILocation(line: 118, column: 25, scope: !3383)
!3392 = !DILocation(line: 118, column: 10, scope: !3383)
!3393 = !DILocation(line: 118, column: 3, scope: !3383)
!3394 = !DILocalVariable(name: "p", arg: 1, scope: !253, file: !250, line: 176, type: !44)
!3395 = !DILocation(line: 176, column: 19, scope: !253)
!3396 = !DILocalVariable(name: "pn", arg: 2, scope: !253, file: !250, line: 176, type: !256)
!3397 = !DILocation(line: 176, column: 30, scope: !253)
!3398 = !DILocalVariable(name: "s", arg: 3, scope: !253, file: !250, line: 176, type: !152)
!3399 = !DILocation(line: 176, column: 41, scope: !253)
!3400 = !DILocalVariable(name: "n", scope: !253, file: !250, line: 178, type: !152)
!3401 = !DILocation(line: 178, column: 10, scope: !253)
!3402 = !DILocation(line: 178, column: 15, scope: !253)
!3403 = !DILocation(line: 178, column: 14, scope: !253)
!3404 = !DILocation(line: 180, column: 9, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !253, file: !250, line: 180, column: 7)
!3406 = !DILocation(line: 180, column: 7, scope: !253)
!3407 = !DILocation(line: 182, column: 13, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3409, file: !250, line: 182, column: 11)
!3409 = distinct !DILexicalBlock(scope: !3405, file: !250, line: 181, column: 5)
!3410 = !DILocation(line: 182, column: 11, scope: !3409)
!3411 = !DILocation(line: 190, column: 32, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3408, file: !250, line: 183, column: 9)
!3413 = !DILocation(line: 190, column: 30, scope: !3412)
!3414 = !DILocation(line: 190, column: 13, scope: !3412)
!3415 = !DILocation(line: 191, column: 17, scope: !3412)
!3416 = !DILocation(line: 191, column: 16, scope: !3412)
!3417 = !DILocation(line: 191, column: 13, scope: !3412)
!3418 = !DILocation(line: 192, column: 9, scope: !3412)
!3419 = !DILocation(line: 193, column: 5, scope: !3409)
!3420 = !DILocation(line: 197, column: 11, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !250, line: 197, column: 11)
!3422 = distinct !DILexicalBlock(scope: !3405, file: !250, line: 195, column: 5)
!3423 = !DILocation(line: 197, column: 11, scope: !3422)
!3424 = !DILocation(line: 198, column: 9, scope: !3421)
!3425 = !DILocation(line: 201, column: 22, scope: !253)
!3426 = !DILocation(line: 201, column: 25, scope: !253)
!3427 = !DILocation(line: 201, column: 28, scope: !253)
!3428 = !DILocation(line: 201, column: 7, scope: !253)
!3429 = !DILocation(line: 201, column: 5, scope: !253)
!3430 = !DILocation(line: 202, column: 9, scope: !253)
!3431 = !DILocation(line: 202, column: 4, scope: !253)
!3432 = !DILocation(line: 202, column: 7, scope: !253)
!3433 = !DILocation(line: 203, column: 10, scope: !253)
!3434 = !DILocation(line: 203, column: 3, scope: !253)
!3435 = !DILocalVariable(name: "pa", arg: 1, scope: !260, file: !250, line: 223, type: !44)
!3436 = !DILocation(line: 223, column: 16, scope: !260)
!3437 = !DILocalVariable(name: "pn", arg: 2, scope: !260, file: !250, line: 223, type: !263)
!3438 = !DILocation(line: 223, column: 27, scope: !260)
!3439 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !260, file: !250, line: 223, type: !264)
!3440 = !DILocation(line: 223, column: 37, scope: !260)
!3441 = !DILocalVariable(name: "n_max", arg: 4, scope: !260, file: !250, line: 223, type: !266)
!3442 = !DILocation(line: 223, column: 59, scope: !260)
!3443 = !DILocalVariable(name: "s", arg: 5, scope: !260, file: !250, line: 223, type: !264)
!3444 = !DILocation(line: 223, column: 72, scope: !260)
!3445 = !DILocalVariable(name: "n0", scope: !260, file: !250, line: 230, type: !264)
!3446 = !DILocation(line: 230, column: 9, scope: !260)
!3447 = !DILocation(line: 230, column: 15, scope: !260)
!3448 = !DILocation(line: 230, column: 14, scope: !260)
!3449 = !DILocalVariable(name: "n", scope: !260, file: !250, line: 237, type: !264)
!3450 = !DILocation(line: 237, column: 9, scope: !260)
!3451 = !DILocation(line: 238, column: 7, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !260, file: !250, line: 238, column: 7)
!3453 = !DILocation(line: 238, column: 7, scope: !260)
!3454 = !DILocation(line: 239, column: 7, scope: !3452)
!3455 = !DILocation(line: 239, column: 5, scope: !3452)
!3456 = !DILocation(line: 240, column: 12, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !260, file: !250, line: 240, column: 7)
!3458 = !DILocation(line: 240, column: 9, scope: !3457)
!3459 = !DILocation(line: 240, column: 18, scope: !3457)
!3460 = !DILocation(line: 240, column: 21, scope: !3457)
!3461 = !DILocation(line: 240, column: 29, scope: !3457)
!3462 = !DILocation(line: 240, column: 27, scope: !3457)
!3463 = !DILocation(line: 240, column: 7, scope: !260)
!3464 = !DILocation(line: 241, column: 9, scope: !3457)
!3465 = !DILocation(line: 241, column: 7, scope: !3457)
!3466 = !DILocation(line: 241, column: 5, scope: !3457)
!3467 = !DILocalVariable(name: "nbytes", scope: !260, file: !250, line: 248, type: !264)
!3468 = !DILocation(line: 248, column: 9, scope: !260)
!3469 = !DILocalVariable(name: "adjusted_nbytes", scope: !260, file: !250, line: 252, type: !264)
!3470 = !DILocation(line: 252, column: 9, scope: !260)
!3471 = !DILocation(line: 253, column: 8, scope: !260)
!3472 = !DILocation(line: 255, column: 10, scope: !260)
!3473 = !DILocation(line: 255, column: 17, scope: !260)
!3474 = !DILocation(line: 256, column: 7, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !260, file: !250, line: 256, column: 7)
!3476 = !DILocation(line: 256, column: 7, scope: !260)
!3477 = !DILocation(line: 258, column: 11, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3475, file: !250, line: 257, column: 5)
!3479 = !DILocation(line: 258, column: 29, scope: !3478)
!3480 = !DILocation(line: 258, column: 27, scope: !3478)
!3481 = !DILocation(line: 258, column: 9, scope: !3478)
!3482 = !DILocation(line: 259, column: 16, scope: !3478)
!3483 = !DILocation(line: 259, column: 34, scope: !3478)
!3484 = !DILocation(line: 259, column: 52, scope: !3478)
!3485 = !DILocation(line: 259, column: 50, scope: !3478)
!3486 = !DILocation(line: 259, column: 32, scope: !3478)
!3487 = !DILocation(line: 259, column: 14, scope: !3478)
!3488 = !DILocation(line: 260, column: 5, scope: !3478)
!3489 = !DILocation(line: 262, column: 9, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !260, file: !250, line: 262, column: 7)
!3491 = !DILocation(line: 262, column: 7, scope: !260)
!3492 = !DILocation(line: 263, column: 6, scope: !3490)
!3493 = !DILocation(line: 263, column: 9, scope: !3490)
!3494 = !DILocation(line: 263, column: 5, scope: !3490)
!3495 = !DILocation(line: 264, column: 7, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !260, file: !250, line: 264, column: 7)
!3497 = !DILocation(line: 264, column: 11, scope: !3496)
!3498 = !DILocation(line: 264, column: 9, scope: !3496)
!3499 = !DILocation(line: 264, column: 16, scope: !3496)
!3500 = !DILocation(line: 264, column: 14, scope: !3496)
!3501 = !DILocation(line: 265, column: 7, scope: !3496)
!3502 = !DILocation(line: 265, column: 11, scope: !3496)
!3503 = !DILocation(line: 266, column: 11, scope: !3496)
!3504 = !DILocation(line: 266, column: 20, scope: !3496)
!3505 = !DILocation(line: 266, column: 17, scope: !3496)
!3506 = !DILocation(line: 266, column: 26, scope: !3496)
!3507 = !DILocation(line: 266, column: 29, scope: !3496)
!3508 = !DILocation(line: 266, column: 37, scope: !3496)
!3509 = !DILocation(line: 266, column: 35, scope: !3496)
!3510 = !DILocation(line: 267, column: 11, scope: !3496)
!3511 = !DILocation(line: 267, column: 14, scope: !3496)
!3512 = !DILocation(line: 264, column: 7, scope: !260)
!3513 = !DILocation(line: 268, column: 5, scope: !3496)
!3514 = !DILocation(line: 269, column: 18, scope: !260)
!3515 = !DILocation(line: 269, column: 22, scope: !260)
!3516 = !DILocation(line: 269, column: 8, scope: !260)
!3517 = !DILocation(line: 269, column: 6, scope: !260)
!3518 = !DILocation(line: 270, column: 9, scope: !260)
!3519 = !DILocation(line: 270, column: 4, scope: !260)
!3520 = !DILocation(line: 270, column: 7, scope: !260)
!3521 = !DILocation(line: 271, column: 10, scope: !260)
!3522 = !DILocation(line: 271, column: 3, scope: !260)
!3523 = distinct !DISubprogram(name: "xzalloc", scope: !250, file: !250, line: 279, type: !3298, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3524 = !DILocalVariable(name: "s", arg: 1, scope: !3523, file: !250, line: 279, type: !152)
!3525 = !DILocation(line: 279, column: 17, scope: !3523)
!3526 = !DILocation(line: 281, column: 19, scope: !3523)
!3527 = !DILocation(line: 281, column: 10, scope: !3523)
!3528 = !DILocation(line: 281, column: 3, scope: !3523)
!3529 = distinct !DISubprogram(name: "xcalloc", scope: !250, file: !250, line: 294, type: !3362, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3530 = !DILocalVariable(name: "n", arg: 1, scope: !3529, file: !250, line: 294, type: !152)
!3531 = !DILocation(line: 294, column: 17, scope: !3529)
!3532 = !DILocalVariable(name: "s", arg: 2, scope: !3529, file: !250, line: 294, type: !152)
!3533 = !DILocation(line: 294, column: 27, scope: !3529)
!3534 = !DILocation(line: 296, column: 33, scope: !3529)
!3535 = !DILocation(line: 296, column: 36, scope: !3529)
!3536 = !DILocation(line: 296, column: 25, scope: !3529)
!3537 = !DILocation(line: 296, column: 10, scope: !3529)
!3538 = !DILocation(line: 296, column: 3, scope: !3529)
!3539 = distinct !DISubprogram(name: "xizalloc", scope: !250, file: !250, line: 285, type: !3307, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3540 = !DILocalVariable(name: "s", arg: 1, scope: !3539, file: !250, line: 285, type: !264)
!3541 = !DILocation(line: 285, column: 17, scope: !3539)
!3542 = !DILocation(line: 287, column: 20, scope: !3539)
!3543 = !DILocation(line: 287, column: 10, scope: !3539)
!3544 = !DILocation(line: 287, column: 3, scope: !3539)
!3545 = distinct !DISubprogram(name: "xicalloc", scope: !250, file: !250, line: 300, type: !3373, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3546 = !DILocalVariable(name: "n", arg: 1, scope: !3545, file: !250, line: 300, type: !264)
!3547 = !DILocation(line: 300, column: 17, scope: !3545)
!3548 = !DILocalVariable(name: "s", arg: 2, scope: !3545, file: !250, line: 300, type: !264)
!3549 = !DILocation(line: 300, column: 26, scope: !3545)
!3550 = !DILocation(line: 302, column: 34, scope: !3545)
!3551 = !DILocation(line: 302, column: 37, scope: !3545)
!3552 = !DILocation(line: 302, column: 25, scope: !3545)
!3553 = !DILocation(line: 302, column: 10, scope: !3545)
!3554 = !DILocation(line: 302, column: 3, scope: !3545)
!3555 = distinct !DISubprogram(name: "xmemdup", scope: !250, file: !250, line: 310, type: !3556, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!44, !3558, !152}
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3560 = !DILocalVariable(name: "p", arg: 1, scope: !3555, file: !250, line: 310, type: !3558)
!3561 = !DILocation(line: 310, column: 22, scope: !3555)
!3562 = !DILocalVariable(name: "s", arg: 2, scope: !3555, file: !250, line: 310, type: !152)
!3563 = !DILocation(line: 310, column: 32, scope: !3555)
!3564 = !DILocation(line: 312, column: 27, scope: !3555)
!3565 = !DILocation(line: 312, column: 18, scope: !3555)
!3566 = !DILocation(line: 312, column: 31, scope: !3555)
!3567 = !DILocation(line: 312, column: 34, scope: !3555)
!3568 = !DILocation(line: 312, column: 10, scope: !3555)
!3569 = !DILocation(line: 312, column: 3, scope: !3555)
!3570 = distinct !DISubprogram(name: "ximemdup", scope: !250, file: !250, line: 316, type: !3571, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!44, !3558, !264}
!3573 = !DILocalVariable(name: "p", arg: 1, scope: !3570, file: !250, line: 316, type: !3558)
!3574 = !DILocation(line: 316, column: 23, scope: !3570)
!3575 = !DILocalVariable(name: "s", arg: 2, scope: !3570, file: !250, line: 316, type: !264)
!3576 = !DILocation(line: 316, column: 32, scope: !3570)
!3577 = !DILocation(line: 318, column: 28, scope: !3570)
!3578 = !DILocation(line: 318, column: 18, scope: !3570)
!3579 = !DILocation(line: 318, column: 32, scope: !3570)
!3580 = !DILocation(line: 318, column: 35, scope: !3570)
!3581 = !DILocation(line: 318, column: 10, scope: !3570)
!3582 = !DILocation(line: 318, column: 3, scope: !3570)
!3583 = distinct !DISubprogram(name: "ximemdup0", scope: !250, file: !250, line: 325, type: !3584, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!42, !3558, !264}
!3586 = !DILocalVariable(name: "p", arg: 1, scope: !3583, file: !250, line: 325, type: !3558)
!3587 = !DILocation(line: 325, column: 24, scope: !3583)
!3588 = !DILocalVariable(name: "s", arg: 2, scope: !3583, file: !250, line: 325, type: !264)
!3589 = !DILocation(line: 325, column: 33, scope: !3583)
!3590 = !DILocalVariable(name: "result", scope: !3583, file: !250, line: 327, type: !42)
!3591 = !DILocation(line: 327, column: 9, scope: !3583)
!3592 = !DILocation(line: 327, column: 28, scope: !3583)
!3593 = !DILocation(line: 327, column: 30, scope: !3583)
!3594 = !DILocation(line: 327, column: 18, scope: !3583)
!3595 = !DILocation(line: 328, column: 3, scope: !3583)
!3596 = !DILocation(line: 328, column: 10, scope: !3583)
!3597 = !DILocation(line: 328, column: 13, scope: !3583)
!3598 = !DILocation(line: 329, column: 18, scope: !3583)
!3599 = !DILocation(line: 329, column: 26, scope: !3583)
!3600 = !DILocation(line: 329, column: 29, scope: !3583)
!3601 = !DILocation(line: 329, column: 10, scope: !3583)
!3602 = !DILocation(line: 329, column: 3, scope: !3583)
!3603 = distinct !DISubprogram(name: "xstrdup", scope: !250, file: !250, line: 335, type: !2666, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !56)
!3604 = !DILocalVariable(name: "string", arg: 1, scope: !3603, file: !250, line: 335, type: !54)
!3605 = !DILocation(line: 335, column: 22, scope: !3603)
!3606 = !DILocation(line: 337, column: 19, scope: !3603)
!3607 = !DILocation(line: 337, column: 35, scope: !3603)
!3608 = !DILocation(line: 337, column: 27, scope: !3603)
!3609 = !DILocation(line: 337, column: 43, scope: !3603)
!3610 = !DILocation(line: 337, column: 10, scope: !3603)
!3611 = !DILocation(line: 337, column: 3, scope: !3603)
!3612 = distinct !DISubprogram(name: "xalloc_die", scope: !270, file: !270, line: 32, type: !114, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !269, retainedNodes: !56)
!3613 = !DILocalVariable(name: "__errstatus", scope: !3614, file: !270, line: 34, type: !3615)
!3614 = distinct !DILexicalBlock(scope: !3612, file: !270, line: 34, column: 3)
!3615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!3616 = !DILocation(line: 34, column: 3, scope: !3614)
!3617 = !DILocation(line: 40, column: 3, scope: !3612)
!3618 = distinct !DISubprogram(name: "c32isprint", scope: !3619, file: !3619, line: 41, type: !3620, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !56)
!3619 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!45, !3622}
!3622 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3623, line: 20, baseType: !6)
!3623 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3624 = !DILocalVariable(name: "wc", arg: 1, scope: !3618, file: !3619, line: 41, type: !3622)
!3625 = !DILocation(line: 41, column: 14, scope: !3618)
!3626 = !DILocation(line: 66, column: 22, scope: !3618)
!3627 = !DILocation(line: 66, column: 10, scope: !3618)
!3628 = !DILocation(line: 66, column: 3, scope: !3618)
!3629 = distinct !DISubprogram(name: "close_stream", scope: !274, file: !274, line: 55, type: !3630, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !56)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!45, !3632}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2956, line: 7, baseType: !3634)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2958, line: 49, size: 1728, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3634, file: !2958, line: 51, baseType: !45, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3634, file: !2958, line: 54, baseType: !42, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3634, file: !2958, line: 55, baseType: !42, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3634, file: !2958, line: 56, baseType: !42, size: 64, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3634, file: !2958, line: 57, baseType: !42, size: 64, offset: 256)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3634, file: !2958, line: 58, baseType: !42, size: 64, offset: 320)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3634, file: !2958, line: 59, baseType: !42, size: 64, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3634, file: !2958, line: 60, baseType: !42, size: 64, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3634, file: !2958, line: 61, baseType: !42, size: 64, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3634, file: !2958, line: 64, baseType: !42, size: 64, offset: 576)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3634, file: !2958, line: 65, baseType: !42, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3634, file: !2958, line: 66, baseType: !42, size: 64, offset: 704)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3634, file: !2958, line: 68, baseType: !2973, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3634, file: !2958, line: 70, baseType: !3650, size: 64, offset: 832)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3634, file: !2958, line: 72, baseType: !45, size: 32, offset: 896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3634, file: !2958, line: 73, baseType: !45, size: 32, offset: 928)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3634, file: !2958, line: 74, baseType: !2980, size: 64, offset: 960)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3634, file: !2958, line: 77, baseType: !46, size: 16, offset: 1024)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3634, file: !2958, line: 78, baseType: !2983, size: 8, offset: 1040)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3634, file: !2958, line: 79, baseType: !2985, size: 8, offset: 1048)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3634, file: !2958, line: 81, baseType: !2989, size: 64, offset: 1088)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3634, file: !2958, line: 89, baseType: !2992, size: 64, offset: 1152)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3634, file: !2958, line: 91, baseType: !2994, size: 64, offset: 1216)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3634, file: !2958, line: 92, baseType: !2997, size: 64, offset: 1280)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3634, file: !2958, line: 93, baseType: !3650, size: 64, offset: 1344)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3634, file: !2958, line: 94, baseType: !44, size: 64, offset: 1408)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3634, file: !2958, line: 95, baseType: !152, size: 64, offset: 1472)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3634, file: !2958, line: 96, baseType: !45, size: 32, offset: 1536)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3634, file: !2958, line: 98, baseType: !3004, size: 160, offset: 1568)
!3666 = !DILocalVariable(name: "stream", arg: 1, scope: !3629, file: !274, line: 55, type: !3632)
!3667 = !DILocation(line: 55, column: 21, scope: !3629)
!3668 = !DILocalVariable(name: "some_pending", scope: !3629, file: !274, line: 57, type: !3669)
!3669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!3670 = !DILocation(line: 57, column: 14, scope: !3629)
!3671 = !DILocation(line: 57, column: 42, scope: !3629)
!3672 = !DILocation(line: 57, column: 30, scope: !3629)
!3673 = !DILocation(line: 57, column: 50, scope: !3629)
!3674 = !DILocalVariable(name: "prev_fail", scope: !3629, file: !274, line: 58, type: !3669)
!3675 = !DILocation(line: 58, column: 14, scope: !3629)
!3676 = !DILocation(line: 58, column: 27, scope: !3629)
!3677 = !DILocation(line: 58, column: 43, scope: !3629)
!3678 = !DILocalVariable(name: "fclose_fail", scope: !3629, file: !274, line: 59, type: !3669)
!3679 = !DILocation(line: 59, column: 14, scope: !3629)
!3680 = !DILocation(line: 59, column: 37, scope: !3629)
!3681 = !DILocation(line: 59, column: 29, scope: !3629)
!3682 = !DILocation(line: 59, column: 45, scope: !3629)
!3683 = !DILocation(line: 69, column: 7, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3629, file: !274, line: 69, column: 7)
!3685 = !DILocation(line: 69, column: 17, scope: !3684)
!3686 = !DILocation(line: 69, column: 21, scope: !3684)
!3687 = !DILocation(line: 69, column: 33, scope: !3684)
!3688 = !DILocation(line: 69, column: 37, scope: !3684)
!3689 = !DILocation(line: 69, column: 50, scope: !3684)
!3690 = !DILocation(line: 69, column: 53, scope: !3684)
!3691 = !DILocation(line: 69, column: 59, scope: !3684)
!3692 = !DILocation(line: 69, column: 7, scope: !3629)
!3693 = !DILocation(line: 71, column: 13, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !274, line: 71, column: 11)
!3695 = distinct !DILexicalBlock(scope: !3684, file: !274, line: 70, column: 5)
!3696 = !DILocation(line: 71, column: 11, scope: !3695)
!3697 = !DILocation(line: 72, column: 9, scope: !3694)
!3698 = !DILocation(line: 72, column: 15, scope: !3694)
!3699 = !DILocation(line: 73, column: 7, scope: !3695)
!3700 = !DILocation(line: 76, column: 3, scope: !3629)
!3701 = !DILocation(line: 77, column: 1, scope: !3629)
!3702 = distinct !DISubprogram(name: "rpl_fclose", scope: !276, file: !276, line: 58, type: !3703, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !56)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!45, !3705}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2956, line: 7, baseType: !3707)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2958, line: 49, size: 1728, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3707, file: !2958, line: 51, baseType: !45, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3707, file: !2958, line: 54, baseType: !42, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3707, file: !2958, line: 55, baseType: !42, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3707, file: !2958, line: 56, baseType: !42, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3707, file: !2958, line: 57, baseType: !42, size: 64, offset: 256)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3707, file: !2958, line: 58, baseType: !42, size: 64, offset: 320)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3707, file: !2958, line: 59, baseType: !42, size: 64, offset: 384)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3707, file: !2958, line: 60, baseType: !42, size: 64, offset: 448)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3707, file: !2958, line: 61, baseType: !42, size: 64, offset: 512)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3707, file: !2958, line: 64, baseType: !42, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3707, file: !2958, line: 65, baseType: !42, size: 64, offset: 640)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3707, file: !2958, line: 66, baseType: !42, size: 64, offset: 704)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3707, file: !2958, line: 68, baseType: !2973, size: 64, offset: 768)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3707, file: !2958, line: 70, baseType: !3723, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3707, file: !2958, line: 72, baseType: !45, size: 32, offset: 896)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3707, file: !2958, line: 73, baseType: !45, size: 32, offset: 928)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3707, file: !2958, line: 74, baseType: !2980, size: 64, offset: 960)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3707, file: !2958, line: 77, baseType: !46, size: 16, offset: 1024)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3707, file: !2958, line: 78, baseType: !2983, size: 8, offset: 1040)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3707, file: !2958, line: 79, baseType: !2985, size: 8, offset: 1048)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3707, file: !2958, line: 81, baseType: !2989, size: 64, offset: 1088)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3707, file: !2958, line: 89, baseType: !2992, size: 64, offset: 1152)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3707, file: !2958, line: 91, baseType: !2994, size: 64, offset: 1216)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3707, file: !2958, line: 92, baseType: !2997, size: 64, offset: 1280)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3707, file: !2958, line: 93, baseType: !3723, size: 64, offset: 1344)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3707, file: !2958, line: 94, baseType: !44, size: 64, offset: 1408)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3707, file: !2958, line: 95, baseType: !152, size: 64, offset: 1472)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3707, file: !2958, line: 96, baseType: !45, size: 32, offset: 1536)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3707, file: !2958, line: 98, baseType: !3004, size: 160, offset: 1568)
!3739 = !DILocalVariable(name: "fp", arg: 1, scope: !3702, file: !276, line: 58, type: !3705)
!3740 = !DILocation(line: 58, column: 19, scope: !3702)
!3741 = !DILocalVariable(name: "saved_errno", scope: !3702, file: !276, line: 60, type: !45)
!3742 = !DILocation(line: 60, column: 7, scope: !3702)
!3743 = !DILocalVariable(name: "fd", scope: !3702, file: !276, line: 63, type: !45)
!3744 = !DILocation(line: 63, column: 7, scope: !3702)
!3745 = !DILocation(line: 63, column: 20, scope: !3702)
!3746 = !DILocation(line: 63, column: 12, scope: !3702)
!3747 = !DILocation(line: 64, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3702, file: !276, line: 64, column: 7)
!3749 = !DILocation(line: 64, column: 10, scope: !3748)
!3750 = !DILocation(line: 64, column: 7, scope: !3702)
!3751 = !DILocation(line: 65, column: 28, scope: !3748)
!3752 = !DILocation(line: 65, column: 12, scope: !3748)
!3753 = !DILocation(line: 65, column: 5, scope: !3748)
!3754 = !DILocation(line: 70, column: 9, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3702, file: !276, line: 70, column: 7)
!3756 = !DILocation(line: 70, column: 23, scope: !3755)
!3757 = !DILocation(line: 70, column: 41, scope: !3755)
!3758 = !DILocation(line: 70, column: 33, scope: !3755)
!3759 = !DILocation(line: 70, column: 26, scope: !3755)
!3760 = !DILocation(line: 70, column: 59, scope: !3755)
!3761 = !DILocation(line: 71, column: 7, scope: !3755)
!3762 = !DILocation(line: 71, column: 18, scope: !3755)
!3763 = !DILocation(line: 71, column: 10, scope: !3755)
!3764 = !DILocation(line: 70, column: 7, scope: !3702)
!3765 = !DILocation(line: 72, column: 19, scope: !3755)
!3766 = !DILocation(line: 72, column: 17, scope: !3755)
!3767 = !DILocation(line: 72, column: 5, scope: !3755)
!3768 = !DILocalVariable(name: "result", scope: !3702, file: !276, line: 74, type: !45)
!3769 = !DILocation(line: 74, column: 7, scope: !3702)
!3770 = !DILocation(line: 100, column: 28, scope: !3702)
!3771 = !DILocation(line: 100, column: 12, scope: !3702)
!3772 = !DILocation(line: 100, column: 10, scope: !3702)
!3773 = !DILocation(line: 105, column: 7, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3702, file: !276, line: 105, column: 7)
!3775 = !DILocation(line: 105, column: 19, scope: !3774)
!3776 = !DILocation(line: 105, column: 7, scope: !3702)
!3777 = !DILocation(line: 107, column: 15, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3774, file: !276, line: 106, column: 5)
!3779 = !DILocation(line: 107, column: 7, scope: !3778)
!3780 = !DILocation(line: 107, column: 13, scope: !3778)
!3781 = !DILocation(line: 108, column: 14, scope: !3778)
!3782 = !DILocation(line: 109, column: 5, scope: !3778)
!3783 = !DILocation(line: 111, column: 10, scope: !3702)
!3784 = !DILocation(line: 111, column: 3, scope: !3702)
!3785 = !DILocation(line: 112, column: 1, scope: !3702)
!3786 = distinct !DISubprogram(name: "rpl_fflush", scope: !278, file: !278, line: 130, type: !3787, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !56)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!45, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2956, line: 7, baseType: !3791)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2958, line: 49, size: 1728, elements: !3792)
!3792 = !{!3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3791, file: !2958, line: 51, baseType: !45, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3791, file: !2958, line: 54, baseType: !42, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3791, file: !2958, line: 55, baseType: !42, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3791, file: !2958, line: 56, baseType: !42, size: 64, offset: 192)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3791, file: !2958, line: 57, baseType: !42, size: 64, offset: 256)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3791, file: !2958, line: 58, baseType: !42, size: 64, offset: 320)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3791, file: !2958, line: 59, baseType: !42, size: 64, offset: 384)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3791, file: !2958, line: 60, baseType: !42, size: 64, offset: 448)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3791, file: !2958, line: 61, baseType: !42, size: 64, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3791, file: !2958, line: 64, baseType: !42, size: 64, offset: 576)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3791, file: !2958, line: 65, baseType: !42, size: 64, offset: 640)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3791, file: !2958, line: 66, baseType: !42, size: 64, offset: 704)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3791, file: !2958, line: 68, baseType: !2973, size: 64, offset: 768)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3791, file: !2958, line: 70, baseType: !3807, size: 64, offset: 832)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3791, file: !2958, line: 72, baseType: !45, size: 32, offset: 896)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3791, file: !2958, line: 73, baseType: !45, size: 32, offset: 928)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3791, file: !2958, line: 74, baseType: !2980, size: 64, offset: 960)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3791, file: !2958, line: 77, baseType: !46, size: 16, offset: 1024)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3791, file: !2958, line: 78, baseType: !2983, size: 8, offset: 1040)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3791, file: !2958, line: 79, baseType: !2985, size: 8, offset: 1048)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3791, file: !2958, line: 81, baseType: !2989, size: 64, offset: 1088)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3791, file: !2958, line: 89, baseType: !2992, size: 64, offset: 1152)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3791, file: !2958, line: 91, baseType: !2994, size: 64, offset: 1216)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3791, file: !2958, line: 92, baseType: !2997, size: 64, offset: 1280)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3791, file: !2958, line: 93, baseType: !3807, size: 64, offset: 1344)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3791, file: !2958, line: 94, baseType: !44, size: 64, offset: 1408)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3791, file: !2958, line: 95, baseType: !152, size: 64, offset: 1472)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3791, file: !2958, line: 96, baseType: !45, size: 32, offset: 1536)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3791, file: !2958, line: 98, baseType: !3004, size: 160, offset: 1568)
!3823 = !DILocalVariable(name: "stream", arg: 1, scope: !3786, file: !278, line: 130, type: !3789)
!3824 = !DILocation(line: 130, column: 19, scope: !3786)
!3825 = !DILocation(line: 151, column: 7, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3786, file: !278, line: 151, column: 7)
!3827 = !DILocation(line: 151, column: 14, scope: !3826)
!3828 = !DILocation(line: 151, column: 22, scope: !3826)
!3829 = !DILocation(line: 151, column: 27, scope: !3826)
!3830 = !DILocation(line: 151, column: 7, scope: !3786)
!3831 = !DILocation(line: 152, column: 20, scope: !3826)
!3832 = !DILocation(line: 152, column: 12, scope: !3826)
!3833 = !DILocation(line: 152, column: 5, scope: !3826)
!3834 = !DILocation(line: 157, column: 44, scope: !3786)
!3835 = !DILocation(line: 157, column: 3, scope: !3786)
!3836 = !DILocation(line: 159, column: 18, scope: !3786)
!3837 = !DILocation(line: 159, column: 10, scope: !3786)
!3838 = !DILocation(line: 159, column: 3, scope: !3786)
!3839 = !DILocation(line: 236, column: 1, scope: !3786)
!3840 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !278, file: !278, line: 42, type: !3841, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !277, retainedNodes: !56)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{null, !3789}
!3843 = !DILocalVariable(name: "fp", arg: 1, scope: !3840, file: !278, line: 42, type: !3789)
!3844 = !DILocation(line: 42, column: 48, scope: !3840)
!3845 = !DILocation(line: 44, column: 7, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3840, file: !278, line: 44, column: 7)
!3847 = !DILocation(line: 44, column: 12, scope: !3846)
!3848 = !DILocation(line: 44, column: 19, scope: !3846)
!3849 = !DILocation(line: 44, column: 7, scope: !3840)
!3850 = !DILocation(line: 46, column: 13, scope: !3846)
!3851 = !DILocation(line: 46, column: 5, scope: !3846)
!3852 = !DILocation(line: 47, column: 1, scope: !3840)
!3853 = distinct !DISubprogram(name: "rpl_fseeko", scope: !280, file: !280, line: 28, type: !3854, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !279, retainedNodes: !56)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!45, !3856, !3890, !45}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2956, line: 7, baseType: !3858)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2958, line: 49, size: 1728, elements: !3859)
!3859 = !{!3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3858, file: !2958, line: 51, baseType: !45, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3858, file: !2958, line: 54, baseType: !42, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3858, file: !2958, line: 55, baseType: !42, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3858, file: !2958, line: 56, baseType: !42, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3858, file: !2958, line: 57, baseType: !42, size: 64, offset: 256)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3858, file: !2958, line: 58, baseType: !42, size: 64, offset: 320)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3858, file: !2958, line: 59, baseType: !42, size: 64, offset: 384)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3858, file: !2958, line: 60, baseType: !42, size: 64, offset: 448)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3858, file: !2958, line: 61, baseType: !42, size: 64, offset: 512)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3858, file: !2958, line: 64, baseType: !42, size: 64, offset: 576)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3858, file: !2958, line: 65, baseType: !42, size: 64, offset: 640)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3858, file: !2958, line: 66, baseType: !42, size: 64, offset: 704)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3858, file: !2958, line: 68, baseType: !2973, size: 64, offset: 768)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3858, file: !2958, line: 70, baseType: !3874, size: 64, offset: 832)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3858, file: !2958, line: 72, baseType: !45, size: 32, offset: 896)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3858, file: !2958, line: 73, baseType: !45, size: 32, offset: 928)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3858, file: !2958, line: 74, baseType: !2980, size: 64, offset: 960)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3858, file: !2958, line: 77, baseType: !46, size: 16, offset: 1024)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3858, file: !2958, line: 78, baseType: !2983, size: 8, offset: 1040)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3858, file: !2958, line: 79, baseType: !2985, size: 8, offset: 1048)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3858, file: !2958, line: 81, baseType: !2989, size: 64, offset: 1088)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3858, file: !2958, line: 89, baseType: !2992, size: 64, offset: 1152)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3858, file: !2958, line: 91, baseType: !2994, size: 64, offset: 1216)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3858, file: !2958, line: 92, baseType: !2997, size: 64, offset: 1280)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3858, file: !2958, line: 93, baseType: !3874, size: 64, offset: 1344)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3858, file: !2958, line: 94, baseType: !44, size: 64, offset: 1408)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3858, file: !2958, line: 95, baseType: !152, size: 64, offset: 1472)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3858, file: !2958, line: 96, baseType: !45, size: 32, offset: 1536)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3858, file: !2958, line: 98, baseType: !3004, size: 160, offset: 1568)
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !94, line: 63, baseType: !2980)
!3891 = !DILocalVariable(name: "fp", arg: 1, scope: !3853, file: !280, line: 28, type: !3856)
!3892 = !DILocation(line: 28, column: 15, scope: !3853)
!3893 = !DILocalVariable(name: "offset", arg: 2, scope: !3853, file: !280, line: 28, type: !3890)
!3894 = !DILocation(line: 28, column: 25, scope: !3853)
!3895 = !DILocalVariable(name: "whence", arg: 3, scope: !3853, file: !280, line: 28, type: !45)
!3896 = !DILocation(line: 28, column: 37, scope: !3853)
!3897 = !DILocation(line: 55, column: 7, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3853, file: !280, line: 55, column: 7)
!3899 = !DILocation(line: 55, column: 12, scope: !3898)
!3900 = !DILocation(line: 55, column: 28, scope: !3898)
!3901 = !DILocation(line: 55, column: 33, scope: !3898)
!3902 = !DILocation(line: 55, column: 25, scope: !3898)
!3903 = !DILocation(line: 56, column: 7, scope: !3898)
!3904 = !DILocation(line: 56, column: 10, scope: !3898)
!3905 = !DILocation(line: 56, column: 15, scope: !3898)
!3906 = !DILocation(line: 56, column: 32, scope: !3898)
!3907 = !DILocation(line: 56, column: 37, scope: !3898)
!3908 = !DILocation(line: 56, column: 29, scope: !3898)
!3909 = !DILocation(line: 57, column: 7, scope: !3898)
!3910 = !DILocation(line: 57, column: 10, scope: !3898)
!3911 = !DILocation(line: 57, column: 15, scope: !3898)
!3912 = !DILocation(line: 57, column: 29, scope: !3898)
!3913 = !DILocation(line: 55, column: 7, scope: !3853)
!3914 = !DILocalVariable(name: "pos", scope: !3915, file: !280, line: 123, type: !3890)
!3915 = distinct !DILexicalBlock(scope: !3898, file: !280, line: 119, column: 5)
!3916 = !DILocation(line: 123, column: 13, scope: !3915)
!3917 = !DILocation(line: 123, column: 34, scope: !3915)
!3918 = !DILocation(line: 123, column: 26, scope: !3915)
!3919 = !DILocation(line: 123, column: 39, scope: !3915)
!3920 = !DILocation(line: 123, column: 47, scope: !3915)
!3921 = !DILocation(line: 123, column: 19, scope: !3915)
!3922 = !DILocation(line: 124, column: 11, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3915, file: !280, line: 124, column: 11)
!3924 = !DILocation(line: 124, column: 15, scope: !3923)
!3925 = !DILocation(line: 124, column: 11, scope: !3915)
!3926 = !DILocation(line: 130, column: 11, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3923, file: !280, line: 125, column: 9)
!3928 = !DILocation(line: 135, column: 7, scope: !3915)
!3929 = !DILocation(line: 135, column: 12, scope: !3915)
!3930 = !DILocation(line: 135, column: 19, scope: !3915)
!3931 = !DILocation(line: 136, column: 22, scope: !3915)
!3932 = !DILocation(line: 136, column: 7, scope: !3915)
!3933 = !DILocation(line: 136, column: 12, scope: !3915)
!3934 = !DILocation(line: 136, column: 20, scope: !3915)
!3935 = !DILocation(line: 167, column: 7, scope: !3915)
!3936 = !DILocation(line: 169, column: 18, scope: !3853)
!3937 = !DILocation(line: 169, column: 22, scope: !3853)
!3938 = !DILocation(line: 169, column: 30, scope: !3853)
!3939 = !DILocation(line: 169, column: 10, scope: !3853)
!3940 = !DILocation(line: 169, column: 3, scope: !3853)
!3941 = !DILocation(line: 170, column: 1, scope: !3853)
!3942 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3943, file: !3943, line: 43, type: !3944, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !56)
!3943 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3944 = !DISubroutineType(types: !86)
!3945 = !DILocation(line: 45, column: 3, scope: !3942)
!3946 = !DILocation(line: 45, column: 9, scope: !3942)
!3947 = !DILocation(line: 46, column: 3, scope: !3942)
!3948 = distinct !DISubprogram(name: "imalloc", scope: !3943, file: !3943, line: 55, type: !3307, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !56)
!3949 = !DILocalVariable(name: "s", arg: 1, scope: !3948, file: !3943, line: 55, type: !264)
!3950 = !DILocation(line: 55, column: 16, scope: !3948)
!3951 = !DILocation(line: 57, column: 10, scope: !3948)
!3952 = !DILocation(line: 57, column: 12, scope: !3948)
!3953 = !DILocation(line: 57, column: 34, scope: !3948)
!3954 = !DILocation(line: 57, column: 26, scope: !3948)
!3955 = !DILocation(line: 57, column: 39, scope: !3948)
!3956 = !DILocation(line: 57, column: 3, scope: !3948)
!3957 = distinct !DISubprogram(name: "irealloc", scope: !3943, file: !3943, line: 66, type: !3335, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !56)
!3958 = !DILocalVariable(name: "p", arg: 1, scope: !3957, file: !3943, line: 66, type: !44)
!3959 = !DILocation(line: 66, column: 17, scope: !3957)
!3960 = !DILocalVariable(name: "s", arg: 2, scope: !3957, file: !3943, line: 66, type: !264)
!3961 = !DILocation(line: 66, column: 26, scope: !3957)
!3962 = !DILocation(line: 68, column: 10, scope: !3957)
!3963 = !DILocation(line: 68, column: 12, scope: !3957)
!3964 = !DILocation(line: 68, column: 35, scope: !3957)
!3965 = !DILocation(line: 68, column: 38, scope: !3957)
!3966 = !DILocation(line: 68, column: 26, scope: !3957)
!3967 = !DILocation(line: 68, column: 43, scope: !3957)
!3968 = !DILocation(line: 68, column: 3, scope: !3957)
!3969 = distinct !DISubprogram(name: "icalloc", scope: !3943, file: !3943, line: 77, type: !3373, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !56)
!3970 = !DILocalVariable(name: "n", arg: 1, scope: !3969, file: !3943, line: 77, type: !264)
!3971 = !DILocation(line: 77, column: 16, scope: !3969)
!3972 = !DILocalVariable(name: "s", arg: 2, scope: !3969, file: !3943, line: 77, type: !264)
!3973 = !DILocation(line: 77, column: 25, scope: !3969)
!3974 = !DILocation(line: 79, column: 18, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3969, file: !3943, line: 79, column: 7)
!3976 = !DILocation(line: 79, column: 16, scope: !3975)
!3977 = !DILocation(line: 79, column: 7, scope: !3969)
!3978 = !DILocation(line: 81, column: 11, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !3943, line: 81, column: 11)
!3980 = distinct !DILexicalBlock(scope: !3975, file: !3943, line: 80, column: 5)
!3981 = !DILocation(line: 81, column: 13, scope: !3979)
!3982 = !DILocation(line: 81, column: 11, scope: !3980)
!3983 = !DILocation(line: 82, column: 16, scope: !3979)
!3984 = !DILocation(line: 82, column: 9, scope: !3979)
!3985 = !DILocation(line: 83, column: 9, scope: !3980)
!3986 = !DILocation(line: 84, column: 5, scope: !3980)
!3987 = !DILocation(line: 85, column: 18, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3969, file: !3943, line: 85, column: 7)
!3989 = !DILocation(line: 85, column: 16, scope: !3988)
!3990 = !DILocation(line: 85, column: 7, scope: !3969)
!3991 = !DILocation(line: 87, column: 11, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !3943, line: 87, column: 11)
!3993 = distinct !DILexicalBlock(scope: !3988, file: !3943, line: 86, column: 5)
!3994 = !DILocation(line: 87, column: 13, scope: !3992)
!3995 = !DILocation(line: 87, column: 11, scope: !3993)
!3996 = !DILocation(line: 88, column: 16, scope: !3992)
!3997 = !DILocation(line: 88, column: 9, scope: !3992)
!3998 = !DILocation(line: 89, column: 9, scope: !3993)
!3999 = !DILocation(line: 90, column: 5, scope: !3993)
!4000 = !DILocation(line: 91, column: 18, scope: !3969)
!4001 = !DILocation(line: 91, column: 21, scope: !3969)
!4002 = !DILocation(line: 91, column: 10, scope: !3969)
!4003 = !DILocation(line: 91, column: 3, scope: !3969)
!4004 = !DILocation(line: 92, column: 1, scope: !3969)
!4005 = distinct !DISubprogram(name: "ireallocarray", scope: !3943, file: !3943, line: 98, type: !3347, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !56)
!4006 = !DILocalVariable(name: "p", arg: 1, scope: !4005, file: !3943, line: 98, type: !44)
!4007 = !DILocation(line: 98, column: 22, scope: !4005)
!4008 = !DILocalVariable(name: "n", arg: 2, scope: !4005, file: !3943, line: 98, type: !264)
!4009 = !DILocation(line: 98, column: 31, scope: !4005)
!4010 = !DILocalVariable(name: "s", arg: 3, scope: !4005, file: !3943, line: 98, type: !264)
!4011 = !DILocation(line: 98, column: 40, scope: !4005)
!4012 = !DILocation(line: 100, column: 11, scope: !4005)
!4013 = !DILocation(line: 100, column: 13, scope: !4005)
!4014 = !DILocation(line: 100, column: 25, scope: !4005)
!4015 = !DILocation(line: 100, column: 28, scope: !4005)
!4016 = !DILocation(line: 100, column: 30, scope: !4005)
!4017 = !DILocation(line: 101, column: 27, scope: !4005)
!4018 = !DILocation(line: 101, column: 30, scope: !4005)
!4019 = !DILocation(line: 101, column: 33, scope: !4005)
!4020 = !DILocation(line: 101, column: 13, scope: !4005)
!4021 = !DILocation(line: 102, column: 13, scope: !4005)
!4022 = !DILocation(line: 100, column: 3, scope: !4005)
!4023 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !221, file: !221, line: 100, type: !4024, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !220, retainedNodes: !56)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!152, !4026, !54, !152, !4027}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!4028 = !DILocalVariable(name: "pwc", arg: 1, scope: !4023, file: !221, line: 100, type: !4026)
!4029 = !DILocation(line: 100, column: 21, scope: !4023)
!4030 = !DILocalVariable(name: "s", arg: 2, scope: !4023, file: !221, line: 100, type: !54)
!4031 = !DILocation(line: 100, column: 38, scope: !4023)
!4032 = !DILocalVariable(name: "n", arg: 3, scope: !4023, file: !221, line: 100, type: !152)
!4033 = !DILocation(line: 100, column: 48, scope: !4023)
!4034 = !DILocalVariable(name: "ps", arg: 4, scope: !4023, file: !221, line: 100, type: !4027)
!4035 = !DILocation(line: 100, column: 62, scope: !4023)
!4036 = !DILocation(line: 105, column: 7, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4023, file: !221, line: 105, column: 7)
!4038 = !DILocation(line: 105, column: 9, scope: !4037)
!4039 = !DILocation(line: 105, column: 7, scope: !4023)
!4040 = !DILocation(line: 107, column: 11, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4037, file: !221, line: 106, column: 5)
!4042 = !DILocation(line: 108, column: 9, scope: !4041)
!4043 = !DILocation(line: 109, column: 9, scope: !4041)
!4044 = !DILocation(line: 110, column: 5, scope: !4041)
!4045 = !DILocation(line: 117, column: 7, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4023, file: !221, line: 117, column: 7)
!4047 = !DILocation(line: 117, column: 10, scope: !4046)
!4048 = !DILocation(line: 117, column: 7, scope: !4023)
!4049 = !DILocation(line: 118, column: 8, scope: !4046)
!4050 = !DILocation(line: 118, column: 5, scope: !4046)
!4051 = !DILocalVariable(name: "ret", scope: !4023, file: !221, line: 130, type: !152)
!4052 = !DILocation(line: 130, column: 10, scope: !4023)
!4053 = !DILocation(line: 130, column: 26, scope: !4023)
!4054 = !DILocation(line: 130, column: 31, scope: !4023)
!4055 = !DILocation(line: 130, column: 34, scope: !4023)
!4056 = !DILocation(line: 130, column: 37, scope: !4023)
!4057 = !DILocation(line: 130, column: 16, scope: !4023)
!4058 = !DILocation(line: 135, column: 7, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4023, file: !221, line: 135, column: 7)
!4060 = !DILocation(line: 135, column: 11, scope: !4059)
!4061 = !DILocation(line: 135, column: 25, scope: !4059)
!4062 = !DILocation(line: 135, column: 39, scope: !4059)
!4063 = !DILocation(line: 135, column: 30, scope: !4059)
!4064 = !DILocation(line: 135, column: 7, scope: !4023)
!4065 = !DILocation(line: 137, column: 14, scope: !4059)
!4066 = !DILocation(line: 137, column: 5, scope: !4059)
!4067 = !DILocation(line: 138, column: 7, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4023, file: !221, line: 138, column: 7)
!4069 = !DILocation(line: 138, column: 11, scope: !4068)
!4070 = !DILocation(line: 138, column: 7, scope: !4023)
!4071 = !DILocation(line: 139, column: 5, scope: !4068)
!4072 = !DILocation(line: 143, column: 22, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4023, file: !221, line: 143, column: 7)
!4074 = !DILocation(line: 143, column: 19, scope: !4073)
!4075 = !DILocation(line: 143, column: 26, scope: !4073)
!4076 = !DILocation(line: 143, column: 29, scope: !4073)
!4077 = !DILocation(line: 143, column: 31, scope: !4073)
!4078 = !DILocation(line: 143, column: 36, scope: !4073)
!4079 = !DILocation(line: 143, column: 41, scope: !4073)
!4080 = !DILocation(line: 143, column: 7, scope: !4023)
!4081 = !DILocation(line: 145, column: 11, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !221, line: 145, column: 11)
!4083 = distinct !DILexicalBlock(scope: !4073, file: !221, line: 144, column: 5)
!4084 = !DILocation(line: 145, column: 15, scope: !4082)
!4085 = !DILocation(line: 145, column: 11, scope: !4083)
!4086 = !DILocation(line: 146, column: 33, scope: !4082)
!4087 = !DILocation(line: 146, column: 32, scope: !4082)
!4088 = !DILocation(line: 146, column: 16, scope: !4082)
!4089 = !DILocation(line: 146, column: 10, scope: !4082)
!4090 = !DILocation(line: 146, column: 14, scope: !4082)
!4091 = !DILocation(line: 146, column: 9, scope: !4082)
!4092 = !DILocation(line: 147, column: 7, scope: !4083)
!4093 = !DILocation(line: 151, column: 10, scope: !4023)
!4094 = !DILocation(line: 151, column: 3, scope: !4023)
!4095 = !DILocation(line: 286, column: 1, scope: !4023)
!4096 = distinct !DISubprogram(name: "mbszero", scope: !4097, file: !4097, line: 1135, type: !4098, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !56)
!4097 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4098 = !DISubroutineType(types: !4099)
!4099 = !{null, !4100}
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !226, line: 6, baseType: !4102)
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !228, line: 21, baseType: !4103)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 13, size: 64, elements: !4104)
!4104 = !{!4105, !4106}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4103, file: !228, line: 15, baseType: !45, size: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4103, file: !228, line: 20, baseType: !4107, size: 32, offset: 32)
!4107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4103, file: !228, line: 16, size: 32, elements: !4108)
!4108 = !{!4109, !4110}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4107, file: !228, line: 18, baseType: !6, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4107, file: !228, line: 19, baseType: !237, size: 32)
!4111 = !DILocalVariable(name: "ps", arg: 1, scope: !4096, file: !4097, line: 1135, type: !4100)
!4112 = !DILocation(line: 1135, column: 21, scope: !4096)
!4113 = !DILocation(line: 1137, column: 11, scope: !4096)
!4114 = !DILocation(line: 1137, column: 3, scope: !4096)
!4115 = !DILocation(line: 1138, column: 1, scope: !4096)
!4116 = distinct !DISubprogram(name: "memeq", scope: !2939, file: !2939, line: 974, type: !4117, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !56)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!81, !3558, !3558, !152}
!4119 = !DILocalVariable(name: "__s1", arg: 1, scope: !4116, file: !2939, line: 974, type: !3558)
!4120 = !DILocation(line: 974, column: 20, scope: !4116)
!4121 = !DILocalVariable(name: "__s2", arg: 2, scope: !4116, file: !2939, line: 974, type: !3558)
!4122 = !DILocation(line: 974, column: 38, scope: !4116)
!4123 = !DILocalVariable(name: "__n", arg: 3, scope: !4116, file: !2939, line: 974, type: !152)
!4124 = !DILocation(line: 974, column: 51, scope: !4116)
!4125 = !DILocation(line: 976, column: 19, scope: !4116)
!4126 = !DILocation(line: 976, column: 25, scope: !4116)
!4127 = !DILocation(line: 976, column: 31, scope: !4116)
!4128 = !DILocation(line: 976, column: 11, scope: !4116)
!4129 = !DILocation(line: 976, column: 10, scope: !4116)
!4130 = !DILocation(line: 976, column: 3, scope: !4116)
!4131 = distinct !DISubprogram(name: "rpl_realloc", scope: !4132, file: !4132, line: 2057, type: !3323, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !287, retainedNodes: !56)
!4132 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4133 = !DILocalVariable(name: "ptr", arg: 1, scope: !4131, file: !4132, line: 2057, type: !44)
!4134 = !DILocation(line: 2057, column: 20, scope: !4131)
!4135 = !DILocalVariable(name: "size", arg: 2, scope: !4131, file: !4132, line: 2057, type: !152)
!4136 = !DILocation(line: 2057, column: 32, scope: !4131)
!4137 = !DILocation(line: 2059, column: 19, scope: !4131)
!4138 = !DILocation(line: 2059, column: 24, scope: !4131)
!4139 = !DILocation(line: 2059, column: 31, scope: !4131)
!4140 = !DILocation(line: 2059, column: 10, scope: !4131)
!4141 = !DILocation(line: 2059, column: 3, scope: !4131)
!4142 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !290, file: !290, line: 27, type: !3260, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !56)
!4143 = !DILocalVariable(name: "ptr", arg: 1, scope: !4142, file: !290, line: 27, type: !44)
!4144 = !DILocation(line: 27, column: 21, scope: !4142)
!4145 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4142, file: !290, line: 27, type: !152)
!4146 = !DILocation(line: 27, column: 33, scope: !4142)
!4147 = !DILocalVariable(name: "size", arg: 3, scope: !4142, file: !290, line: 27, type: !152)
!4148 = !DILocation(line: 27, column: 47, scope: !4142)
!4149 = !DILocalVariable(name: "nbytes", scope: !4142, file: !290, line: 29, type: !152)
!4150 = !DILocation(line: 29, column: 10, scope: !4142)
!4151 = !DILocation(line: 30, column: 7, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4142, file: !290, line: 30, column: 7)
!4153 = !DILocation(line: 30, column: 7, scope: !4142)
!4154 = !DILocation(line: 32, column: 7, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4152, file: !290, line: 31, column: 5)
!4156 = !DILocation(line: 32, column: 13, scope: !4155)
!4157 = !DILocation(line: 33, column: 7, scope: !4155)
!4158 = !DILocation(line: 37, column: 19, scope: !4142)
!4159 = !DILocation(line: 37, column: 24, scope: !4142)
!4160 = !DILocation(line: 37, column: 10, scope: !4142)
!4161 = !DILocation(line: 37, column: 3, scope: !4142)
!4162 = !DILocation(line: 38, column: 1, scope: !4142)
!4163 = distinct !DISubprogram(name: "hard_locale", scope: !293, file: !293, line: 28, type: !4164, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !292, retainedNodes: !56)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!81, !45}
!4166 = !DILocalVariable(name: "category", arg: 1, scope: !4163, file: !293, line: 28, type: !45)
!4167 = !DILocation(line: 28, column: 18, scope: !4163)
!4168 = !DILocalVariable(name: "locale", scope: !4163, file: !293, line: 30, type: !4169)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2056, elements: !4170)
!4170 = !{!4171}
!4171 = !DISubrange(count: 257)
!4172 = !DILocation(line: 30, column: 8, scope: !4163)
!4173 = !DILocation(line: 32, column: 25, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4163, file: !293, line: 32, column: 7)
!4175 = !DILocation(line: 32, column: 35, scope: !4174)
!4176 = !DILocation(line: 32, column: 7, scope: !4174)
!4177 = !DILocation(line: 32, column: 7, scope: !4163)
!4178 = !DILocation(line: 33, column: 5, scope: !4174)
!4179 = !DILocation(line: 35, column: 16, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4163, file: !293, line: 35, column: 7)
!4181 = !DILocation(line: 35, column: 9, scope: !4180)
!4182 = !DILocation(line: 35, column: 29, scope: !4180)
!4183 = !DILocation(line: 35, column: 39, scope: !4180)
!4184 = !DILocation(line: 35, column: 32, scope: !4180)
!4185 = !DILocation(line: 35, column: 7, scope: !4163)
!4186 = !DILocation(line: 36, column: 5, scope: !4180)
!4187 = !DILocation(line: 46, column: 3, scope: !4163)
!4188 = !DILocation(line: 47, column: 1, scope: !4163)
!4189 = distinct !DISubprogram(name: "setlocale_null_r", scope: !295, file: !295, line: 154, type: !4190, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !56)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!45, !45, !42, !152}
!4192 = !DILocalVariable(name: "category", arg: 1, scope: !4189, file: !295, line: 154, type: !45)
!4193 = !DILocation(line: 154, column: 23, scope: !4189)
!4194 = !DILocalVariable(name: "buf", arg: 2, scope: !4189, file: !295, line: 154, type: !42)
!4195 = !DILocation(line: 154, column: 39, scope: !4189)
!4196 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4189, file: !295, line: 154, type: !152)
!4197 = !DILocation(line: 154, column: 51, scope: !4189)
!4198 = !DILocation(line: 159, column: 37, scope: !4189)
!4199 = !DILocation(line: 159, column: 47, scope: !4189)
!4200 = !DILocation(line: 159, column: 52, scope: !4189)
!4201 = !DILocation(line: 159, column: 10, scope: !4189)
!4202 = !DILocation(line: 159, column: 3, scope: !4189)
!4203 = distinct !DISubprogram(name: "setlocale_null", scope: !295, file: !295, line: 186, type: !4204, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !56)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!54, !45}
!4206 = !DILocalVariable(name: "category", arg: 1, scope: !4203, file: !295, line: 186, type: !45)
!4207 = !DILocation(line: 186, column: 21, scope: !4203)
!4208 = !DILocation(line: 189, column: 35, scope: !4203)
!4209 = !DILocation(line: 189, column: 10, scope: !4203)
!4210 = !DILocation(line: 189, column: 3, scope: !4203)
!4211 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !297, file: !297, line: 35, type: !4204, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !296, retainedNodes: !56)
!4212 = !DILocalVariable(name: "category", arg: 1, scope: !4211, file: !297, line: 35, type: !45)
!4213 = !DILocation(line: 35, column: 30, scope: !4211)
!4214 = !DILocalVariable(name: "result", scope: !4211, file: !297, line: 37, type: !54)
!4215 = !DILocation(line: 37, column: 15, scope: !4211)
!4216 = !DILocation(line: 37, column: 35, scope: !4211)
!4217 = !DILocation(line: 37, column: 24, scope: !4211)
!4218 = !DILocation(line: 62, column: 10, scope: !4211)
!4219 = !DILocation(line: 62, column: 3, scope: !4211)
!4220 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !297, file: !297, line: 66, type: !4190, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !296, retainedNodes: !56)
!4221 = !DILocalVariable(name: "category", arg: 1, scope: !4220, file: !297, line: 66, type: !45)
!4222 = !DILocation(line: 66, column: 32, scope: !4220)
!4223 = !DILocalVariable(name: "buf", arg: 2, scope: !4220, file: !297, line: 66, type: !42)
!4224 = !DILocation(line: 66, column: 48, scope: !4220)
!4225 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4220, file: !297, line: 66, type: !152)
!4226 = !DILocation(line: 66, column: 60, scope: !4220)
!4227 = !DILocalVariable(name: "result", scope: !4220, file: !297, line: 111, type: !54)
!4228 = !DILocation(line: 111, column: 15, scope: !4220)
!4229 = !DILocation(line: 111, column: 49, scope: !4220)
!4230 = !DILocation(line: 111, column: 24, scope: !4220)
!4231 = !DILocation(line: 113, column: 7, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4220, file: !297, line: 113, column: 7)
!4233 = !DILocation(line: 113, column: 14, scope: !4232)
!4234 = !DILocation(line: 113, column: 7, scope: !4220)
!4235 = !DILocation(line: 116, column: 11, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4237, file: !297, line: 116, column: 11)
!4237 = distinct !DILexicalBlock(scope: !4232, file: !297, line: 114, column: 5)
!4238 = !DILocation(line: 116, column: 19, scope: !4236)
!4239 = !DILocation(line: 116, column: 11, scope: !4237)
!4240 = !DILocation(line: 120, column: 9, scope: !4236)
!4241 = !DILocation(line: 120, column: 16, scope: !4236)
!4242 = !DILocation(line: 121, column: 7, scope: !4237)
!4243 = !DILocalVariable(name: "length", scope: !4244, file: !297, line: 125, type: !152)
!4244 = distinct !DILexicalBlock(scope: !4232, file: !297, line: 124, column: 5)
!4245 = !DILocation(line: 125, column: 14, scope: !4244)
!4246 = !DILocation(line: 125, column: 31, scope: !4244)
!4247 = !DILocation(line: 125, column: 23, scope: !4244)
!4248 = !DILocation(line: 126, column: 11, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4244, file: !297, line: 126, column: 11)
!4250 = !DILocation(line: 126, column: 20, scope: !4249)
!4251 = !DILocation(line: 126, column: 18, scope: !4249)
!4252 = !DILocation(line: 126, column: 11, scope: !4244)
!4253 = !DILocation(line: 128, column: 19, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4249, file: !297, line: 127, column: 9)
!4255 = !DILocation(line: 128, column: 24, scope: !4254)
!4256 = !DILocation(line: 128, column: 32, scope: !4254)
!4257 = !DILocation(line: 128, column: 39, scope: !4254)
!4258 = !DILocation(line: 128, column: 11, scope: !4254)
!4259 = !DILocation(line: 129, column: 11, scope: !4254)
!4260 = !DILocation(line: 133, column: 15, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !297, line: 133, column: 15)
!4262 = distinct !DILexicalBlock(scope: !4249, file: !297, line: 132, column: 9)
!4263 = !DILocation(line: 133, column: 23, scope: !4261)
!4264 = !DILocation(line: 133, column: 15, scope: !4262)
!4265 = !DILocation(line: 138, column: 23, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4261, file: !297, line: 134, column: 13)
!4267 = !DILocation(line: 138, column: 28, scope: !4266)
!4268 = !DILocation(line: 138, column: 36, scope: !4266)
!4269 = !DILocation(line: 138, column: 44, scope: !4266)
!4270 = !DILocation(line: 138, column: 15, scope: !4266)
!4271 = !DILocation(line: 139, column: 15, scope: !4266)
!4272 = !DILocation(line: 139, column: 19, scope: !4266)
!4273 = !DILocation(line: 139, column: 27, scope: !4266)
!4274 = !DILocation(line: 139, column: 32, scope: !4266)
!4275 = !DILocation(line: 140, column: 13, scope: !4266)
!4276 = !DILocation(line: 141, column: 11, scope: !4262)
!4277 = !DILocation(line: 145, column: 1, scope: !4220)
