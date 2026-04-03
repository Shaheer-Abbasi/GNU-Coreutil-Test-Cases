; ModuleID = 'src/mkfifo.bc'
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
%struct.selabel_handle = type opaque
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Create named pipes (FIFOs) with the given NAMEs.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"  -m, --mode=MODE\0A         set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"  -Z\0A         set the SELinux security context to default type\0A\00", align 1
@.str.6 = private unnamed_addr constant [127 x i8] c"      --context[=CTX]\0A         like -Z, or if CTX is specified then set the\0A         SELinux or SMACK security context to CTX\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external global i8*, align 8
@.str.13 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"failed to set default file creation context to %s\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"cannot create fifo %s\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.22 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !42
@.str.23 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.45 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.53 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.54 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), align 8, !dbg !63
@file_name = internal global i8* null, align 8, !dbg !68
@ignore_EPIPE = internal global i8 0, align 1, !dbg !73
@.str.65 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.66 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.67 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !76
@stderr = external global %struct._IO_FILE*, align 8
@.str.69 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !105
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !82
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !101
@.str.1.75 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.76 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.77 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !103
@.str.4.70 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.71 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.72 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !110
@.str.90 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.91 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !116
@.str.94 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.95 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.96 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.97 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.98 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.99 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.100 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.101 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.102 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.103 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.95, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.96, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.97, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.98, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.99, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.102, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.103, i32 0, i32 0), i8* null], align 8, !dbg !127
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !142
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !160
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !175
@nslots = internal global i32 1, align 4, !dbg !182
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !162
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !184
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !148
@.str.10.104 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.105 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.106 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !167
@.str.118 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.119 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.120 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.121 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.122 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.123 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.124 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.125 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.126 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.127 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.128 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.129 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.130 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.131 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.132 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.133 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.134 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.139 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.140 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.141 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.142 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.143 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.144 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.145 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !190
@exit_failure = dso_local global i32 1, align 4, !dbg !198
@.str.162 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.160 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.161 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.183 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !204
@.str.194 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.195 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !309 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !312, metadata !DIExpression()), !dbg !313
  %3 = load i32, i32* %2, align 4, !dbg !314
  %4 = icmp ne i32 %3, 0, !dbg !316
  br i1 %4, label %5, label %12, !dbg !317

5:                                                ; preds = %1
  br label %6, !dbg !318

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !319
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !319
  %9 = load i8*, i8** @program_name, align 8, !dbg !319
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !319
  br label %11, !dbg !319

11:                                               ; preds = %6
  br label %24, !dbg !319

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !321
  %14 = load i8*, i8** @program_name, align 8, !dbg !323
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !324
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !325
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !325
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !325
  call void @emit_mandatory_arg_note(), !dbg !326
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !327
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !327
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !328
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !328
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([127 x i8], [127 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !329
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !329
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !330
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !330
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !331
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23), !dbg !331
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !332
  br label %24

24:                                               ; preds = %12, %11
  %25 = load i32, i32* %2, align 4, !dbg !333
  call void @exit(i32 noundef %25) #19, !dbg !334
  unreachable, !dbg !334
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #4 !dbg !335 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0)) #18, !dbg !336
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !336
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !44 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !338, metadata !DIExpression()), !dbg !339
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !340, metadata !DIExpression()), !dbg !341
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !342
  %15 = icmp eq i32 %14, -1, !dbg !344
  br i1 %15, label %16, label %30, !dbg !345

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !346, metadata !DIExpression()), !dbg !348
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #18, !dbg !349
  store i8* %17, i8** %5, align 8, !dbg !348
  %18 = load i8*, i8** %5, align 8, !dbg !350
  %19 = icmp ne i8* %18, null, !dbg !350
  br i1 %19, label %20, label %27, !dbg !351

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !352
  %22 = load i8, i8* %21, align 1, !dbg !353
  %23 = icmp ne i8 %22, 0, !dbg !353
  br i1 %23, label %24, label %27, !dbg !354

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !355
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)), !dbg !356
  br label %27, !dbg !354

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !354
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !357
  br label %30, !dbg !358

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !359
  %32 = icmp ne i32 %31, 0, !dbg !359
  br i1 %32, label %33, label %37, !dbg !361

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !362
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !362
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !362
  br label %274, !dbg !364

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !365, metadata !DIExpression()), !dbg !366
  store i8 1, i8* %6, align 1, !dbg !366
  call void @llvm.dbg.declare(metadata i8** %7, metadata !367, metadata !DIExpression()), !dbg !368
  %38 = load i8*, i8** %4, align 8, !dbg !369
  %39 = load i8*, i8** %4, align 8, !dbg !370
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0)) #20, !dbg !371
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !372
  store i8* %41, i8** %7, align 8, !dbg !368
  call void @llvm.dbg.declare(metadata i8** %8, metadata !373, metadata !DIExpression()), !dbg !374
  %42 = load i8*, i8** %4, align 8, !dbg !375
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !376
  store i8* %43, i8** %8, align 8, !dbg !374
  %44 = load i8*, i8** %8, align 8, !dbg !377
  %45 = icmp ne i8* %44, null, !dbg !377
  br i1 %45, label %48, label %46, !dbg !379

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !380
  store i8* %47, i8** %8, align 8, !dbg !382
  store i8 0, i8* %6, align 1, !dbg !383
  br label %89, !dbg !384

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !385
  %50 = load i8*, i8** %7, align 8, !dbg !387
  %51 = icmp ne i8* %49, %50, !dbg !388
  br i1 %51, label %52, label %88, !dbg !389

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !390, metadata !DIExpression()), !dbg !392
  %53 = load i8*, i8** %7, align 8, !dbg !393
  store i8* %53, i8** %9, align 8, !dbg !392
  call void @llvm.dbg.declare(metadata i64* %10, metadata !394, metadata !DIExpression()), !dbg !395
  store i64 0, i64* %10, align 8, !dbg !395
  br label %54, !dbg !396

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !397
  %56 = load i8*, i8** %8, align 8, !dbg !398
  %57 = icmp ult i8* %55, %56, !dbg !399
  br i1 %57, label %58, label %61, !dbg !400

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !401
  %60 = icmp ult i64 %59, 2, !dbg !402
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !403
  br i1 %62, label %63, label %82, !dbg !396

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !404
  %65 = load i16*, i16** %64, align 8, !dbg !404
  %66 = load i8*, i8** %9, align 8, !dbg !404
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !404
  store i8* %67, i8** %9, align 8, !dbg !404
  %68 = load i8, i8* %66, align 1, !dbg !404
  %69 = zext i8 %68 to i32, !dbg !404
  %70 = sext i32 %69 to i64, !dbg !404
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !404
  %72 = load i16, i16* %71, align 2, !dbg !404
  %73 = zext i16 %72 to i32, !dbg !404
  %74 = and i32 %73, 8192, !dbg !404
  %75 = icmp ne i32 %74, 0, !dbg !405
  %76 = xor i1 %75, true, !dbg !405
  %77 = xor i1 %76, true, !dbg !406
  %78 = zext i1 %77 to i32, !dbg !406
  %79 = sext i32 %78 to i64, !dbg !406
  %80 = load i64, i64* %10, align 8, !dbg !407
  %81 = add i64 %80, %79, !dbg !407
  store i64 %81, i64* %10, align 8, !dbg !407
  br label %54, !dbg !396, !llvm.loop !408

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !410
  %84 = icmp eq i64 %83, 2, !dbg !412
  br i1 %84, label %85, label %87, !dbg !413

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !414
  store i8* %86, i8** %8, align 8, !dbg !416
  store i8 0, i8* %6, align 1, !dbg !417
  br label %87, !dbg !418

87:                                               ; preds = %85, %82
  br label %88, !dbg !419

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !420, metadata !DIExpression()), !dbg !421
  %90 = load i8*, i8** %8, align 8, !dbg !422
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #20, !dbg !423
  store i64 %91, i64* %11, align 8, !dbg !421
  call void @llvm.dbg.declare(metadata i8** %12, metadata !424, metadata !DIExpression()), !dbg !425
  %92 = load i8*, i8** %8, align 8, !dbg !426
  %93 = load i64, i64* %11, align 8, !dbg !427
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !428
  store i8* %94, i8** %12, align 8, !dbg !425
  br label %95, !dbg !429

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !430
  %97 = load i8, i8* %96, align 1, !dbg !431
  %98 = zext i8 %97 to i32, !dbg !431
  %99 = icmp ne i32 %98, 0, !dbg !431
  br i1 %99, label %100, label %105, !dbg !432

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !433
  %102 = load i8, i8* %101, align 1, !dbg !434
  %103 = zext i8 %102 to i32, !dbg !434
  %104 = icmp ne i32 %103, 10, !dbg !435
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !436
  br i1 %106, label %107, label %164, !dbg !429

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !437
  %109 = load i8, i8* %108, align 1, !dbg !440
  %110 = zext i8 %109 to i32, !dbg !440
  %111 = icmp eq i32 %110, 45, !dbg !441
  br i1 %111, label %112, label %119, !dbg !442

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !443
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !444
  %115 = load i8, i8* %114, align 1, !dbg !445
  %116 = zext i8 %115 to i32, !dbg !445
  %117 = icmp eq i32 %116, 45, !dbg !446
  br i1 %117, label %118, label %119, !dbg !447

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !448
  br label %119, !dbg !449

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !450
  %121 = load i16*, i16** %120, align 8, !dbg !450
  %122 = load i8*, i8** %12, align 8, !dbg !450
  %123 = load i8, i8* %122, align 1, !dbg !450
  %124 = zext i8 %123 to i32, !dbg !450
  %125 = sext i32 %124 to i64, !dbg !450
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !450
  %127 = load i16, i16* %126, align 2, !dbg !450
  %128 = zext i16 %127 to i32, !dbg !450
  %129 = and i32 %128, 8192, !dbg !450
  %130 = icmp ne i32 %129, 0, !dbg !450
  br i1 %130, label %131, label %161, !dbg !452

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !453
  %133 = load i8, i8* %132, align 1, !dbg !456
  %134 = zext i8 %133 to i32, !dbg !456
  %135 = icmp eq i32 %134, 9, !dbg !457
  br i1 %135, label %149, label %136, !dbg !458

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !459
  %138 = load i16*, i16** %137, align 8, !dbg !459
  %139 = load i8*, i8** %12, align 8, !dbg !459
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !459
  %141 = load i8, i8* %140, align 1, !dbg !459
  %142 = zext i8 %141 to i32, !dbg !459
  %143 = sext i32 %142 to i64, !dbg !459
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !459
  %145 = load i16, i16* %144, align 2, !dbg !459
  %146 = zext i16 %145 to i32, !dbg !459
  %147 = and i32 %146, 8192, !dbg !459
  %148 = icmp ne i32 %147, 0, !dbg !459
  br i1 %148, label %149, label %150, !dbg !460

149:                                              ; preds = %136, %131
  br label %164, !dbg !461

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !462
  %152 = trunc i8 %151 to i1, !dbg !462
  br i1 %152, label %160, label %153, !dbg !464

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !465
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !466
  %156 = load i8, i8* %155, align 1, !dbg !467
  %157 = zext i8 %156 to i32, !dbg !467
  %158 = icmp ne i32 %157, 45, !dbg !468
  br i1 %158, label %159, label %160, !dbg !469

159:                                              ; preds = %153
  br label %164, !dbg !470

160:                                              ; preds = %153, %150
  br label %161, !dbg !471

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !472
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !472
  store i8* %163, i8** %12, align 8, !dbg !472
  br label %95, !dbg !429, !llvm.loop !473

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !475
  %166 = load i8*, i8** %7, align 8, !dbg !475
  %167 = load i8*, i8** %4, align 8, !dbg !475
  %168 = ptrtoint i8* %166 to i64, !dbg !475
  %169 = ptrtoint i8* %167 to i64, !dbg !475
  %170 = sub i64 %168, %169, !dbg !475
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !475
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !475
  call void @llvm.dbg.declare(metadata i8** %13, metadata !476, metadata !DIExpression()), !dbg !477
  %173 = load i8*, i8** %3, align 8, !dbg !478
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)), !dbg !479
  br i1 %174, label %175, label %176, !dbg !479

175:                                              ; preds = %164
  br label %232, !dbg !479

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !480
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)), !dbg !481
  br i1 %178, label %179, label %180, !dbg !481

179:                                              ; preds = %176
  br label %230, !dbg !481

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !482
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0)), !dbg !483
  br i1 %182, label %183, label %184, !dbg !483

183:                                              ; preds = %180
  br label %228, !dbg !483

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !484
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)), !dbg !485
  br i1 %186, label %187, label %188, !dbg !485

187:                                              ; preds = %184
  br label %226, !dbg !485

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !486
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)), !dbg !487
  br i1 %190, label %191, label %192, !dbg !487

191:                                              ; preds = %188
  br label %224, !dbg !487

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !488
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0)), !dbg !489
  br i1 %194, label %195, label %196, !dbg !489

195:                                              ; preds = %192
  br label %222, !dbg !489

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !490
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0)), !dbg !491
  br i1 %198, label %199, label %200, !dbg !491

199:                                              ; preds = %196
  br label %220, !dbg !491

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !492
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0)), !dbg !493
  br i1 %202, label %203, label %204, !dbg !493

203:                                              ; preds = %200
  br label %218, !dbg !493

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !494
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)), !dbg !495
  br i1 %206, label %207, label %208, !dbg !495

207:                                              ; preds = %204
  br label %216, !dbg !495

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !496
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0)), !dbg !497
  br i1 %210, label %211, label %212, !dbg !497

211:                                              ; preds = %208
  br label %214, !dbg !497

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !498
  br label %214, !dbg !497

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !497
  br label %216, !dbg !495

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !495
  br label %218, !dbg !493

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !493
  br label %220, !dbg !491

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !491
  br label %222, !dbg !489

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !489
  br label %224, !dbg !487

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !487
  br label %226, !dbg !485

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !485
  br label %228, !dbg !483

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !483
  br label %230, !dbg !481

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !481
  br label %232, !dbg !479

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !479
  store i8* %233, i8** %13, align 8, !dbg !477
  %234 = load i8*, i8** %8, align 8, !dbg !499
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i64 noundef 6) #20, !dbg !499
  %236 = icmp eq i32 %235, 0, !dbg !499
  br i1 %236, label %241, label %237, !dbg !501

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !502
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i64 noundef 9) #20, !dbg !502
  %240 = icmp eq i32 %239, 0, !dbg !502
  br i1 %240, label %241, label %248, !dbg !503

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !504
  %243 = load i8*, i8** %13, align 8, !dbg !506
  %244 = load i64, i64* %11, align 8, !dbg !507
  %245 = trunc i64 %244 to i32, !dbg !508
  %246 = load i8*, i8** %8, align 8, !dbg !509
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !510
  br label %254, !dbg !511

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !512
  %250 = load i64, i64* %11, align 8, !dbg !514
  %251 = trunc i64 %250 to i32, !dbg !515
  %252 = load i8*, i8** %8, align 8, !dbg !516
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.45, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !517
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !518
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !518
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !519
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !519
  %259 = load i8*, i8** %7, align 8, !dbg !520
  %260 = load i8*, i8** %12, align 8, !dbg !520
  %261 = load i8*, i8** %7, align 8, !dbg !520
  %262 = ptrtoint i8* %260 to i64, !dbg !520
  %263 = ptrtoint i8* %261 to i64, !dbg !520
  %264 = sub i64 %262, %263, !dbg !520
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !520
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !520
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !521
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !521
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !522
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !522
  %271 = load i8*, i8** %12, align 8, !dbg !523
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !523
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !523
  br label %274, !dbg !524

274:                                              ; preds = %254, %33
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !525 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !528, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !530, metadata !DIExpression()), !dbg !539
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !539
  call void @llvm.dbg.declare(metadata i8** %4, metadata !540, metadata !DIExpression()), !dbg !541
  %9 = load i8*, i8** %2, align 8, !dbg !542
  store i8* %9, i8** %4, align 8, !dbg !541
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !543, metadata !DIExpression()), !dbg !545
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !546
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !545
  br label %11, !dbg !547

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !548
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !549
  %14 = load i8*, i8** %13, align 8, !dbg !549
  %15 = icmp ne i8* %14, null, !dbg !548
  br i1 %15, label %16, label %23, !dbg !550

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !551
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !552
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !553
  %20 = load i8*, i8** %19, align 8, !dbg !553
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !554
  %22 = xor i1 %21, true, !dbg !555
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !556
  br i1 %24, label %25, label %28, !dbg !547

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !557
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !557
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !557
  br label %11, !dbg !547, !llvm.loop !558

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !559
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !561
  %31 = load i8*, i8** %30, align 8, !dbg !561
  %32 = icmp ne i8* %31, null, !dbg !559
  br i1 %32, label %33, label %37, !dbg !562

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !563
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !564
  %36 = load i8*, i8** %35, align 8, !dbg !564
  store i8* %36, i8** %4, align 8, !dbg !565
  br label %37, !dbg !566

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !567
  call void @llvm.dbg.declare(metadata i8** %6, metadata !568, metadata !DIExpression()), !dbg !569
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !570
  store i8* %38, i8** %6, align 8, !dbg !569
  %39 = load i8*, i8** %6, align 8, !dbg !571
  %40 = icmp ne i8* %39, null, !dbg !571
  br i1 %40, label %41, label %49, !dbg !573

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !574
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i64 noundef 3) #20, !dbg !574
  %44 = icmp ne i32 %43, 0, !dbg !574
  br i1 %44, label %45, label %49, !dbg !575

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.54, i64 0, i64 0)) #18, !dbg !576
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !576
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !576
  br label %49, !dbg !578

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !579, metadata !DIExpression()), !dbg !580
  %50 = load i8*, i8** %2, align 8, !dbg !581
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)), !dbg !582
  br i1 %51, label %52, label %53, !dbg !582

52:                                               ; preds = %49
  br label %55, !dbg !582

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !583
  br label %55, !dbg !582

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !582
  store i8* %56, i8** %7, align 8, !dbg !580
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0)) #18, !dbg !584
  %58 = load i8*, i8** %7, align 8, !dbg !585
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef %58), !dbg !586
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.56, i64 0, i64 0)) #18, !dbg !587
  %61 = load i8*, i8** %4, align 8, !dbg !588
  %62 = load i8*, i8** %4, align 8, !dbg !589
  %63 = load i8*, i8** %2, align 8, !dbg !590
  %64 = icmp eq i8* %62, %63, !dbg !591
  %65 = zext i1 %64 to i64, !dbg !589
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !589
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !592
  ret void, !dbg !593
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !594 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.selabel_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mode_change*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !598, metadata !DIExpression()), !dbg !599
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !600, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.declare(metadata i8** %6, metadata !602, metadata !DIExpression()), !dbg !603
  store i8* null, i8** %6, align 8, !dbg !603
  call void @llvm.dbg.declare(metadata i8** %7, metadata !604, metadata !DIExpression()), !dbg !605
  store i8* null, i8** %7, align 8, !dbg !605
  call void @llvm.dbg.declare(metadata %struct.selabel_handle** %8, metadata !606, metadata !DIExpression()), !dbg !610
  store %struct.selabel_handle* null, %struct.selabel_handle** %8, align 8, !dbg !610
  %15 = load i8**, i8*** %5, align 8, !dbg !611
  %16 = getelementptr inbounds i8*, i8** %15, i64 0, !dbg !611
  %17 = load i8*, i8** %16, align 8, !dbg !611
  call void @set_program_name(i8* noundef %17), !dbg !612
  %18 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !613
  %19 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !614
  %20 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !615
  %21 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !616
  call void @llvm.dbg.declare(metadata i32* %9, metadata !617, metadata !DIExpression()), !dbg !618
  br label %22, !dbg !619

22:                                               ; preds = %48, %2
  %23 = load i32, i32* %4, align 4, !dbg !620
  %24 = load i8**, i8*** %5, align 8, !dbg !621
  %25 = call i32 @getopt_long(i32 noundef %23, i8** noundef %24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !622
  store i32 %25, i32* %9, align 4, !dbg !623
  %26 = icmp ne i32 %25, -1, !dbg !624
  br i1 %26, label %27, label %49, !dbg !619

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4, !dbg !625
  switch i32 %28, label %47 [
    i32 109, label %29
    i32 90, label %31
    i32 -2, label %42
    i32 -3, label %43
  ], !dbg !627

29:                                               ; preds = %27
  %30 = load i8*, i8** @optarg, align 8, !dbg !628
  store i8* %30, i8** %6, align 8, !dbg !630
  br label %48, !dbg !631

31:                                               ; preds = %27
  %32 = call i1 @is_smack_enabled(), !dbg !632
  br i1 %32, label %33, label %35, !dbg !634

33:                                               ; preds = %31
  %34 = load i8*, i8** @optarg, align 8, !dbg !635
  store i8* %34, i8** %7, align 8, !dbg !637
  br label %41, !dbg !638

35:                                               ; preds = %31
  %36 = load i8*, i8** @optarg, align 8, !dbg !639
  %37 = icmp ne i8* %36, null, !dbg !639
  br i1 %37, label %38, label %40, !dbg !642

38:                                               ; preds = %35
  %39 = call i8* @gettext(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !643
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %39), !dbg !643
  br label %40, !dbg !645

40:                                               ; preds = %38, %35
  br label %41

41:                                               ; preds = %40, %33
  br label %48, !dbg !646

42:                                               ; preds = %27
  call void @usage(i32 noundef 0) #22, !dbg !647
  unreachable, !dbg !647

43:                                               ; preds = %27
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !648
  %45 = load i8*, i8** @Version, align 8, !dbg !648
  %46 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)), !dbg !648
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef %45, i8* noundef %46, i8* noundef null), !dbg !648
  call void @exit(i32 noundef 0) #19, !dbg !648
  unreachable, !dbg !648

47:                                               ; preds = %27
  call void @usage(i32 noundef 1) #22, !dbg !649
  unreachable, !dbg !649

48:                                               ; preds = %41, %29
  br label %22, !dbg !619, !llvm.loop !650

49:                                               ; preds = %22
  %50 = load i32, i32* @optind, align 4, !dbg !652
  %51 = load i32, i32* %4, align 4, !dbg !654
  %52 = icmp eq i32 %50, %51, !dbg !655
  br i1 %52, label %53, label %55, !dbg !656

53:                                               ; preds = %49
  %54 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !657
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %54), !dbg !657
  call void @usage(i32 noundef 1) #22, !dbg !659
  unreachable, !dbg !659

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8, !dbg !660
  %57 = icmp ne i8* %56, null, !dbg !660
  br i1 %57, label %58, label %76, !dbg !662

58:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata i32* %10, metadata !663, metadata !DIExpression()), !dbg !665
  store i32 0, i32* %10, align 4, !dbg !665
  %59 = call i1 @is_smack_enabled(), !dbg !666
  br i1 %59, label %60, label %63, !dbg !668

60:                                               ; preds = %58
  %61 = load i8*, i8** %7, align 8, !dbg !669
  %62 = call i32 @smack_set_label_for_self(i8* noundef %61), !dbg !670
  store i32 %62, i32* %10, align 4, !dbg !671
  br label %66, !dbg !672

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8, !dbg !673
  %65 = call i32 @setfscreatecon(i8* noundef %64), !dbg !674
  store i32 %65, i32* %10, align 4, !dbg !675
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %10, align 4, !dbg !676
  %68 = icmp slt i32 %67, 0, !dbg !678
  br i1 %68, label %69, label %75, !dbg !679

69:                                               ; preds = %66
  %70 = call i32* @__errno_location() #21, !dbg !680
  %71 = load i32, i32* %70, align 4, !dbg !680
  %72 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0)) #18, !dbg !680
  %73 = load i8*, i8** %7, align 8, !dbg !680
  %74 = call i8* @quote(i8* noundef %73), !dbg !680
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %71, i8* noundef %72, i8* noundef %74), !dbg !680
  unreachable, !dbg !680

75:                                               ; preds = %66
  br label %76, !dbg !681

76:                                               ; preds = %75, %55
  call void @llvm.dbg.declare(metadata i32* %11, metadata !682, metadata !DIExpression()), !dbg !687
  store i32 438, i32* %11, align 4, !dbg !687
  %77 = load i8*, i8** %6, align 8, !dbg !688
  %78 = icmp ne i8* %77, null, !dbg !688
  br i1 %78, label %79, label %102, !dbg !690

79:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata %struct.mode_change** %12, metadata !691, metadata !DIExpression()), !dbg !696
  %80 = load i8*, i8** %6, align 8, !dbg !697
  %81 = call noalias %struct.mode_change* @mode_compile(i8* noundef %80), !dbg !698
  store %struct.mode_change* %81, %struct.mode_change** %12, align 8, !dbg !696
  %82 = load %struct.mode_change*, %struct.mode_change** %12, align 8, !dbg !699
  %83 = icmp ne %struct.mode_change* %82, null, !dbg !699
  br i1 %83, label %86, label %84, !dbg !701

84:                                               ; preds = %79
  %85 = call i8* @gettext(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0)) #18, !dbg !702
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %85), !dbg !702
  unreachable, !dbg !702

86:                                               ; preds = %79
  call void @llvm.dbg.declare(metadata i32* %13, metadata !703, metadata !DIExpression()), !dbg !704
  %87 = call i32 @umask(i32 noundef 0) #18, !dbg !705
  store i32 %87, i32* %13, align 4, !dbg !704
  %88 = load i32, i32* %13, align 4, !dbg !706
  %89 = call i32 @umask(i32 noundef %88) #18, !dbg !707
  %90 = load i32, i32* %11, align 4, !dbg !708
  %91 = load i32, i32* %13, align 4, !dbg !709
  %92 = load %struct.mode_change*, %struct.mode_change** %12, align 8, !dbg !710
  %93 = call i32 @mode_adjust(i32 noundef %90, i1 noundef false, i32 noundef %91, %struct.mode_change* noundef %92, i32* noundef null) #20, !dbg !711
  store i32 %93, i32* %11, align 4, !dbg !712
  %94 = load %struct.mode_change*, %struct.mode_change** %12, align 8, !dbg !713
  %95 = bitcast %struct.mode_change* %94 to i8*, !dbg !713
  call void @free(i8* noundef %95) #18, !dbg !714
  %96 = load i32, i32* %11, align 4, !dbg !715
  %97 = and i32 %96, -512, !dbg !717
  %98 = icmp ne i32 %97, 0, !dbg !717
  br i1 %98, label %99, label %101, !dbg !718

99:                                               ; preds = %86
  %100 = call i8* @gettext(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0)) #18, !dbg !719
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %100), !dbg !719
  unreachable, !dbg !719

101:                                              ; preds = %86
  br label %102, !dbg !720

102:                                              ; preds = %101, %76
  call void @llvm.dbg.declare(metadata i32* %14, metadata !721, metadata !DIExpression()), !dbg !722
  store i32 0, i32* %14, align 4, !dbg !722
  br label %103, !dbg !723

103:                                              ; preds = %161, %102
  %104 = load i32, i32* @optind, align 4, !dbg !724
  %105 = load i32, i32* %4, align 4, !dbg !727
  %106 = icmp slt i32 %104, %105, !dbg !728
  br i1 %106, label %107, label %164, !dbg !729

107:                                              ; preds = %103
  %108 = load %struct.selabel_handle*, %struct.selabel_handle** %8, align 8, !dbg !730
  %109 = icmp ne %struct.selabel_handle* %108, null, !dbg !730
  br i1 %109, label %110, label %118, !dbg !733

110:                                              ; preds = %107
  %111 = load %struct.selabel_handle*, %struct.selabel_handle** %8, align 8, !dbg !734
  %112 = load i8**, i8*** %5, align 8, !dbg !735
  %113 = load i32, i32* @optind, align 4, !dbg !736
  %114 = sext i32 %113 to i64, !dbg !735
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114, !dbg !735
  %116 = load i8*, i8** %115, align 8, !dbg !735
  %117 = call i32 @defaultcon(%struct.selabel_handle* noundef %111, i8* noundef %116, i32 noundef 4096), !dbg !737
  br label %118, !dbg !737

118:                                              ; preds = %110, %107
  %119 = load i8**, i8*** %5, align 8, !dbg !738
  %120 = load i32, i32* @optind, align 4, !dbg !740
  %121 = sext i32 %120 to i64, !dbg !738
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121, !dbg !738
  %123 = load i8*, i8** %122, align 8, !dbg !738
  %124 = load i32, i32* %11, align 4, !dbg !741
  %125 = call i32 @mkfifo(i8* noundef %123, i32 noundef %124) #18, !dbg !742
  %126 = icmp ne i32 %125, 0, !dbg !743
  br i1 %126, label %127, label %137, !dbg !744

127:                                              ; preds = %118
  %128 = call i32* @__errno_location() #21, !dbg !745
  %129 = load i32, i32* %128, align 4, !dbg !745
  %130 = call i8* @gettext(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0)) #18, !dbg !745
  %131 = load i8**, i8*** %5, align 8, !dbg !745
  %132 = load i32, i32* @optind, align 4, !dbg !745
  %133 = sext i32 %132 to i64, !dbg !745
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133, !dbg !745
  %135 = load i8*, i8** %134, align 8, !dbg !745
  %136 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %135), !dbg !745
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %129, i8* noundef %130, i8* noundef %136), !dbg !745
  store i32 1, i32* %14, align 4, !dbg !747
  br label %160, !dbg !748

137:                                              ; preds = %118
  %138 = load i8*, i8** %6, align 8, !dbg !749
  %139 = icmp ne i8* %138, null, !dbg !749
  br i1 %139, label %140, label %159, !dbg !751

140:                                              ; preds = %137
  %141 = load i8**, i8*** %5, align 8, !dbg !752
  %142 = load i32, i32* @optind, align 4, !dbg !753
  %143 = sext i32 %142 to i64, !dbg !752
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143, !dbg !752
  %145 = load i8*, i8** %144, align 8, !dbg !752
  %146 = load i32, i32* %11, align 4, !dbg !754
  %147 = call i32 @lchmod(i8* noundef %145, i32 noundef %146) #18, !dbg !755
  %148 = icmp ne i32 %147, 0, !dbg !756
  br i1 %148, label %149, label %159, !dbg !757

149:                                              ; preds = %140
  %150 = call i32* @__errno_location() #21, !dbg !758
  %151 = load i32, i32* %150, align 4, !dbg !758
  %152 = call i8* @gettext(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0)) #18, !dbg !758
  %153 = load i8**, i8*** %5, align 8, !dbg !758
  %154 = load i32, i32* @optind, align 4, !dbg !758
  %155 = sext i32 %154 to i64, !dbg !758
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155, !dbg !758
  %157 = load i8*, i8** %156, align 8, !dbg !758
  %158 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %157), !dbg !758
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %151, i8* noundef %152, i8* noundef %158), !dbg !758
  store i32 1, i32* %14, align 4, !dbg !760
  br label %159, !dbg !761

159:                                              ; preds = %149, %140, %137
  br label %160

160:                                              ; preds = %159, %127
  br label %161, !dbg !762

161:                                              ; preds = %160
  %162 = load i32, i32* @optind, align 4, !dbg !763
  %163 = add nsw i32 %162, 1, !dbg !763
  store i32 %163, i32* @optind, align 4, !dbg !763
  br label %103, !dbg !764, !llvm.loop !765

164:                                              ; preds = %103
  %165 = load i32, i32* %14, align 4, !dbg !767
  ret i32 %165, !dbg !768
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
define internal i1 @is_smack_enabled() #4 !dbg !769 {
  ret i1 false, !dbg !773
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_set_label_for_self(i8* noundef %0) #4 !dbg !774 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !777, metadata !DIExpression()), !dbg !778
  ret i32 -1, !dbg !779
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defaultcon(%struct.selabel_handle* noundef %0, i8* noundef %1, i32 noundef %2) #4 !dbg !780 {
  %4 = alloca %struct.selabel_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.selabel_handle* %0, %struct.selabel_handle** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.selabel_handle** %4, metadata !784, metadata !DIExpression()), !dbg !785
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !786, metadata !DIExpression()), !dbg !787
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !788, metadata !DIExpression()), !dbg !789
  %7 = call i32* @__errno_location() #21, !dbg !790
  store i32 95, i32* %7, align 4, !dbg !791
  ret i32 -1, !dbg !792
}

; Function Attrs: nounwind
declare i32 @mkfifo(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @lchmod(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !793 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !794, metadata !DIExpression()), !dbg !795
  %3 = load i8*, i8** %2, align 8, !dbg !796
  store i8* %3, i8** @file_name, align 8, !dbg !797
  ret void, !dbg !798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !799 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !802, metadata !DIExpression()), !dbg !803
  %4 = load i8, i8* %2, align 1, !dbg !804
  %5 = trunc i8 %4 to i1, !dbg !804
  %6 = zext i1 %5 to i8, !dbg !805
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !805
  ret void, !dbg !806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !807 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !808
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !810
  %4 = icmp ne i32 %3, 0, !dbg !811
  br i1 %4, label %5, label %28, !dbg !812

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !813
  %7 = trunc i8 %6 to i1, !dbg !813
  br i1 %7, label %8, label %12, !dbg !814

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !815
  %10 = load i32, i32* %9, align 4, !dbg !815
  %11 = icmp eq i32 %10, 32, !dbg !816
  br i1 %11, label %28, label %12, !dbg !817

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !818, metadata !DIExpression()), !dbg !820
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.66, i64 0, i64 0)) #18, !dbg !821
  store i8* %13, i8** %1, align 8, !dbg !820
  %14 = load i8*, i8** @file_name, align 8, !dbg !822
  %15 = icmp ne i8* %14, null, !dbg !822
  br i1 %15, label %16, label %22, !dbg !824

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !825
  %18 = load i32, i32* %17, align 4, !dbg !825
  %19 = load i8*, i8** @file_name, align 8, !dbg !825
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !825
  %21 = load i8*, i8** %1, align 8, !dbg !825
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.67, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !825
  br label %26, !dbg !825

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !826
  %24 = load i32, i32* %23, align 4, !dbg !826
  %25 = load i8*, i8** %1, align 8, !dbg !826
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.68, i64 0, i64 0), i8* noundef %25), !dbg !826
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !827
  call void @_exit(i32 noundef %27) #22, !dbg !828
  unreachable, !dbg !828

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !829
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !831
  %31 = icmp ne i32 %30, 0, !dbg !832
  br i1 %31, label %32, label %34, !dbg !833

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !834
  call void @_exit(i32 noundef %33) #22, !dbg !835
  unreachable, !dbg !835

34:                                               ; preds = %28
  ret void, !dbg !836
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !837 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !840, metadata !DIExpression()), !dbg !841
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !842, metadata !DIExpression()), !dbg !841
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !843, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !844, metadata !DIExpression()), !dbg !841
  call void @flush_stdout(), !dbg !845
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !846
  %10 = icmp ne void ()* %9, null, !dbg !846
  br i1 %10, label %11, label %13, !dbg !848

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !849
  call void %12(), !dbg !850
  br label %17, !dbg !850

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !851
  %15 = call i8* @getprogname() #20, !dbg !853
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), i8* noundef %15), !dbg !854
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !855
  %19 = load i32, i32* %6, align 4, !dbg !855
  %20 = load i8*, i8** %7, align 8, !dbg !855
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !855
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !855
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !855
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !855
  ret void, !dbg !856
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !857 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !858, metadata !DIExpression()), !dbg !859
  store i32 1, i32* %1, align 4, !dbg !860
  %2 = load i32, i32* %1, align 4, !dbg !861
  %3 = icmp sle i32 0, %2, !dbg !863
  br i1 %3, label %4, label %11, !dbg !864

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !865
  %6 = call i32 @is_open(i32 noundef %5), !dbg !866
  %7 = icmp ne i32 %6, 0, !dbg !866
  br i1 %7, label %8, label %11, !dbg !867

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !868
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !868
  br label %11, !dbg !868

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !869
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !870 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !871, metadata !DIExpression()), !dbg !872
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !873, metadata !DIExpression()), !dbg !872
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !874, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !875, metadata !DIExpression()), !dbg !872
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !876
  %10 = load i8*, i8** %7, align 8, !dbg !877
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !878
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !878
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !878
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !878
  %14 = load i32, i32* @error_message_count, align 4, !dbg !879
  %15 = add i32 %14, 1, !dbg !879
  store i32 %15, i32* @error_message_count, align 4, !dbg !879
  %16 = load i32, i32* %6, align 4, !dbg !880
  %17 = icmp ne i32 %16, 0, !dbg !880
  br i1 %17, label %18, label %20, !dbg !882

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !883
  call void @print_errno_message(i32 noundef %19), !dbg !884
  br label %20, !dbg !884

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !885
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !885
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !886
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !886
  %25 = load i32, i32* %5, align 4, !dbg !887
  %26 = icmp ne i32 %25, 0, !dbg !887
  br i1 %26, label %27, label %29, !dbg !889

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !890
  call void @exit(i32 noundef %28) #19, !dbg !891
  unreachable, !dbg !891

29:                                               ; preds = %20
  ret void, !dbg !892
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !893 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !894, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.declare(metadata i8** %3, metadata !896, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !898, metadata !DIExpression()), !dbg !902
  %5 = load i32, i32* %2, align 4, !dbg !903
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !904
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !905
  store i8* %7, i8** %3, align 8, !dbg !906
  %8 = load i8*, i8** %3, align 8, !dbg !907
  %9 = icmp ne i8* %8, null, !dbg !907
  br i1 %9, label %12, label %10, !dbg !909

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.71, i64 0, i64 0)) #18, !dbg !910
  store i8* %11, i8** %3, align 8, !dbg !911
  br label %12, !dbg !912

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !913
  %14 = load i8*, i8** %3, align 8, !dbg !914
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.72, i64 0, i64 0), i8* noundef %14), !dbg !915
  ret void, !dbg !916
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !917 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !920, metadata !DIExpression()), !dbg !921
  %3 = load i32, i32* %2, align 4, !dbg !922
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !923
  %5 = icmp sle i32 0, %4, !dbg !924
  %6 = zext i1 %5 to i32, !dbg !924
  ret i32 %6, !dbg !925
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !926 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !929, metadata !DIExpression()), !dbg !930
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !931, metadata !DIExpression()), !dbg !932
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !933, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !935, metadata !DIExpression()), !dbg !936
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !937
  call void @llvm.va_start(i8* %9), !dbg !937
  %10 = load i32, i32* %4, align 4, !dbg !938
  %11 = load i32, i32* %5, align 4, !dbg !938
  %12 = load i8*, i8** %6, align 8, !dbg !938
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !938
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !938
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !938
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !939
  call void @llvm.va_end(i8* %15), !dbg !939
  ret void, !dbg !940
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !84 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !941, metadata !DIExpression()), !dbg !942
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !943, metadata !DIExpression()), !dbg !942
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !944, metadata !DIExpression()), !dbg !942
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !945, metadata !DIExpression()), !dbg !942
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !946, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !947, metadata !DIExpression()), !dbg !942
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !948
  %14 = icmp ne i32 %13, 0, !dbg !948
  br i1 %14, label %15, label %38, !dbg !950

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !951
  %17 = load i32, i32* %10, align 4, !dbg !954
  %18 = icmp eq i32 %16, %17, !dbg !955
  br i1 %18, label %19, label %35, !dbg !956

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !957
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !958
  %22 = icmp eq i8* %20, %21, !dbg !959
  br i1 %22, label %34, label %23, !dbg !960

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !961
  %25 = icmp ne i8* %24, null, !dbg !962
  br i1 %25, label %26, label %35, !dbg !963

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !964
  %28 = icmp ne i8* %27, null, !dbg !965
  br i1 %28, label %29, label %35, !dbg !966

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !967
  %31 = load i8*, i8** %9, align 8, !dbg !968
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !969
  %33 = icmp eq i32 %32, 0, !dbg !970
  br i1 %33, label %34, label %35, !dbg !971

34:                                               ; preds = %29, %19
  br label %61, !dbg !972

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !973
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !974
  %37 = load i32, i32* %10, align 4, !dbg !975
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !976
  br label %38, !dbg !977

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !978
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !979
  %40 = icmp ne void ()* %39, null, !dbg !979
  br i1 %40, label %41, label %43, !dbg !981

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !982
  call void %42(), !dbg !983
  br label %47, !dbg !983

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !984
  %45 = call i8* @getprogname() #20, !dbg !986
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.75, i64 0, i64 0), i8* noundef %45), !dbg !987
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !988
  %49 = load i8*, i8** %9, align 8, !dbg !989
  %50 = icmp ne i8* %49, null, !dbg !990
  %51 = zext i1 %50 to i64, !dbg !989
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), !dbg !989
  %53 = load i8*, i8** %9, align 8, !dbg !991
  %54 = load i32, i32* %10, align 4, !dbg !992
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !993
  %56 = load i32, i32* %7, align 4, !dbg !994
  %57 = load i32, i32* %8, align 4, !dbg !994
  %58 = load i8*, i8** %11, align 8, !dbg !994
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !994
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !994
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !994
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !994
  br label %61, !dbg !995

61:                                               ; preds = %47, %34
  ret void, !dbg !995
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !996 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !999, metadata !DIExpression()), !dbg !1000
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1001, metadata !DIExpression()), !dbg !1002
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1003, metadata !DIExpression()), !dbg !1004
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1005, metadata !DIExpression()), !dbg !1006
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1007, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1009, metadata !DIExpression()), !dbg !1010
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1011
  call void @llvm.va_start(i8* %13), !dbg !1011
  %14 = load i32, i32* %6, align 4, !dbg !1012
  %15 = load i32, i32* %7, align 4, !dbg !1012
  %16 = load i8*, i8** %8, align 8, !dbg !1012
  %17 = load i32, i32* %9, align 4, !dbg !1012
  %18 = load i8*, i8** %10, align 8, !dbg !1012
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1012
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1012
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !1012
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1013
  call void @llvm.va_end(i8* %21), !dbg !1013
  ret void, !dbg !1014
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1015 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1018
  ret i8* %1, !dbg !1019
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* noundef %0) #4 !dbg !1020 {
  %2 = alloca %struct.mode_change*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mode_change*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca %struct.mode_change*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1031, metadata !DIExpression()), !dbg !1032
  %20 = load i8*, i8** %3, align 8, !dbg !1033
  %21 = load i8, i8* %20, align 1, !dbg !1035
  %22 = zext i8 %21 to i32, !dbg !1035
  %23 = icmp sle i32 48, %22, !dbg !1036
  br i1 %23, label %24, label %81, !dbg !1037

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8, !dbg !1038
  %26 = load i8, i8* %25, align 1, !dbg !1039
  %27 = zext i8 %26 to i32, !dbg !1039
  %28 = icmp slt i32 %27, 56, !dbg !1040
  br i1 %28, label %29, label %81, !dbg !1041

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1042, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1045, metadata !DIExpression()), !dbg !1046
  store i32 0, i32* %5, align 4, !dbg !1046
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1047, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1049, metadata !DIExpression()), !dbg !1050
  %30 = load i8*, i8** %3, align 8, !dbg !1051
  store i8* %30, i8** %4, align 8, !dbg !1052
  br label %31, !dbg !1053

31:                                               ; preds = %54, %29
  %32 = load i32, i32* %5, align 4, !dbg !1054
  %33 = mul i32 8, %32, !dbg !1056
  %34 = load i8*, i8** %4, align 8, !dbg !1057
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !1057
  store i8* %35, i8** %4, align 8, !dbg !1057
  %36 = load i8, i8* %34, align 1, !dbg !1058
  %37 = zext i8 %36 to i32, !dbg !1058
  %38 = add i32 %33, %37, !dbg !1059
  %39 = sub i32 %38, 48, !dbg !1060
  store i32 %39, i32* %5, align 4, !dbg !1061
  %40 = load i32, i32* %5, align 4, !dbg !1062
  %41 = icmp ult i32 4095, %40, !dbg !1064
  br i1 %41, label %42, label %43, !dbg !1065

42:                                               ; preds = %31
  store %struct.mode_change* null, %struct.mode_change** %2, align 8, !dbg !1066
  br label %304, !dbg !1066

43:                                               ; preds = %31
  br label %44, !dbg !1067

44:                                               ; preds = %43
  %45 = load i8*, i8** %4, align 8, !dbg !1068
  %46 = load i8, i8* %45, align 1, !dbg !1069
  %47 = zext i8 %46 to i32, !dbg !1069
  %48 = icmp sle i32 48, %47, !dbg !1070
  br i1 %48, label %49, label %54, !dbg !1071

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8, !dbg !1072
  %51 = load i8, i8* %50, align 1, !dbg !1073
  %52 = zext i8 %51 to i32, !dbg !1073
  %53 = icmp slt i32 %52, 56, !dbg !1074
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i1 [ false, %44 ], [ %53, %49 ], !dbg !1075
  br i1 %55, label %31, label %56, !dbg !1067, !llvm.loop !1076

56:                                               ; preds = %54
  %57 = load i8*, i8** %4, align 8, !dbg !1078
  %58 = load i8, i8* %57, align 1, !dbg !1080
  %59 = icmp ne i8 %58, 0, !dbg !1080
  br i1 %59, label %60, label %61, !dbg !1081

60:                                               ; preds = %56
  store %struct.mode_change* null, %struct.mode_change** %2, align 8, !dbg !1082
  br label %304, !dbg !1082

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4, !dbg !1083
  %63 = call i32 @octal_to_mode(i32 noundef %62), !dbg !1084
  store i32 %63, i32* %6, align 4, !dbg !1085
  %64 = load i8*, i8** %4, align 8, !dbg !1086
  %65 = load i8*, i8** %3, align 8, !dbg !1087
  %66 = ptrtoint i8* %64 to i64, !dbg !1088
  %67 = ptrtoint i8* %65 to i64, !dbg !1088
  %68 = sub i64 %66, %67, !dbg !1088
  %69 = icmp slt i64 %68, 5, !dbg !1089
  br i1 %69, label %70, label %75, !dbg !1086

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4, !dbg !1090
  %72 = and i32 %71, 3072, !dbg !1091
  %73 = or i32 %72, 512, !dbg !1092
  %74 = or i32 %73, 511, !dbg !1093
  br label %76, !dbg !1086

75:                                               ; preds = %61
  br label %76, !dbg !1086

76:                                               ; preds = %75, %70
  %77 = phi i32 [ %74, %70 ], [ 4095, %75 ], !dbg !1086
  store i32 %77, i32* %7, align 4, !dbg !1094
  %78 = load i32, i32* %6, align 4, !dbg !1095
  %79 = load i32, i32* %7, align 4, !dbg !1096
  %80 = call %struct.mode_change* @make_node_op_equals(i32 noundef %78, i32 noundef %79), !dbg !1097
  store %struct.mode_change* %80, %struct.mode_change** %2, align 8, !dbg !1098
  br label %304, !dbg !1098

81:                                               ; preds = %24, %1
  call void @llvm.dbg.declare(metadata %struct.mode_change** %8, metadata !1099, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1101, metadata !DIExpression()), !dbg !1103
  store i64 1, i64* %9, align 8, !dbg !1103
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1104, metadata !DIExpression()), !dbg !1106
  %82 = load i8*, i8** %3, align 8, !dbg !1107
  store i8* %82, i8** %10, align 8, !dbg !1106
  br label %83, !dbg !1108

83:                                               ; preds = %108, %81
  %84 = load i8*, i8** %10, align 8, !dbg !1109
  %85 = load i8, i8* %84, align 1, !dbg !1111
  %86 = icmp ne i8 %85, 0, !dbg !1112
  br i1 %86, label %87, label %111, !dbg !1112

87:                                               ; preds = %83
  %88 = load i8*, i8** %10, align 8, !dbg !1113
  %89 = load i8, i8* %88, align 1, !dbg !1114
  %90 = zext i8 %89 to i32, !dbg !1114
  %91 = icmp eq i32 %90, 61, !dbg !1115
  br i1 %91, label %102, label %92, !dbg !1116

92:                                               ; preds = %87
  %93 = load i8*, i8** %10, align 8, !dbg !1117
  %94 = load i8, i8* %93, align 1, !dbg !1118
  %95 = zext i8 %94 to i32, !dbg !1118
  %96 = icmp eq i32 %95, 43, !dbg !1119
  br i1 %96, label %102, label %97, !dbg !1120

97:                                               ; preds = %92
  %98 = load i8*, i8** %10, align 8, !dbg !1121
  %99 = load i8, i8* %98, align 1, !dbg !1122
  %100 = zext i8 %99 to i32, !dbg !1122
  %101 = icmp eq i32 %100, 45, !dbg !1123
  br label %102, !dbg !1120

102:                                              ; preds = %97, %92, %87
  %103 = phi i1 [ true, %92 ], [ true, %87 ], [ %101, %97 ]
  %104 = zext i1 %103 to i32, !dbg !1120
  %105 = sext i32 %104 to i64, !dbg !1124
  %106 = load i64, i64* %9, align 8, !dbg !1125
  %107 = add i64 %106, %105, !dbg !1125
  store i64 %107, i64* %9, align 8, !dbg !1125
  br label %108, !dbg !1126

108:                                              ; preds = %102
  %109 = load i8*, i8** %10, align 8, !dbg !1127
  %110 = getelementptr inbounds i8, i8* %109, i32 1, !dbg !1127
  store i8* %110, i8** %10, align 8, !dbg !1127
  br label %83, !dbg !1128, !llvm.loop !1129

111:                                              ; preds = %83
  %112 = load i64, i64* %9, align 8, !dbg !1131
  %113 = call noalias nonnull i8* @xnmalloc(i64 noundef %112, i64 noundef 16) #24, !dbg !1132
  %114 = bitcast i8* %113 to %struct.mode_change*, !dbg !1132
  store %struct.mode_change* %114, %struct.mode_change** %8, align 8, !dbg !1133
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1134, metadata !DIExpression()), !dbg !1135
  store i64 0, i64* %11, align 8, !dbg !1135
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1136, metadata !DIExpression()), !dbg !1137
  %115 = load i8*, i8** %3, align 8, !dbg !1138
  store i8* %115, i8** %12, align 8, !dbg !1140
  br label %116, !dbg !1141

116:                                              ; preds = %286, %111
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1142, metadata !DIExpression()), !dbg !1145
  store i32 0, i32* %13, align 4, !dbg !1145
  br label %117, !dbg !1146

117:                                              ; preds = %136, %116
  %118 = load i8*, i8** %12, align 8, !dbg !1147
  %119 = load i8, i8* %118, align 1, !dbg !1150
  %120 = zext i8 %119 to i32, !dbg !1150
  switch i32 %120, label %121 [
    i32 117, label %122
    i32 103, label %125
    i32 111, label %128
    i32 97, label %131
    i32 61, label %134
    i32 43, label %134
    i32 45, label %134
  ], !dbg !1151

121:                                              ; preds = %117
  br label %301, !dbg !1152

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4, !dbg !1154
  %124 = or i32 %123, 2496, !dbg !1154
  store i32 %124, i32* %13, align 4, !dbg !1154
  br label %135, !dbg !1155

125:                                              ; preds = %117
  %126 = load i32, i32* %13, align 4, !dbg !1156
  %127 = or i32 %126, 1080, !dbg !1156
  store i32 %127, i32* %13, align 4, !dbg !1156
  br label %135, !dbg !1157

128:                                              ; preds = %117
  %129 = load i32, i32* %13, align 4, !dbg !1158
  %130 = or i32 %129, 519, !dbg !1158
  store i32 %130, i32* %13, align 4, !dbg !1158
  br label %135, !dbg !1159

131:                                              ; preds = %117
  %132 = load i32, i32* %13, align 4, !dbg !1160
  %133 = or i32 %132, 4095, !dbg !1160
  store i32 %133, i32* %13, align 4, !dbg !1160
  br label %135, !dbg !1161

134:                                              ; preds = %117, %117, %117
  br label %139, !dbg !1162

135:                                              ; preds = %131, %128, %125, %122
  br label %136, !dbg !1163

136:                                              ; preds = %135
  %137 = load i8*, i8** %12, align 8, !dbg !1164
  %138 = getelementptr inbounds i8, i8* %137, i32 1, !dbg !1164
  store i8* %138, i8** %12, align 8, !dbg !1164
  br label %117, !dbg !1165, !llvm.loop !1166

139:                                              ; preds = %134
  call void @llvm.dbg.label(metadata !1169), !dbg !1170
  br label %140, !dbg !1171

140:                                              ; preds = %277, %139
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1172, metadata !DIExpression()), !dbg !1174
  %141 = load i8*, i8** %12, align 8, !dbg !1175
  %142 = getelementptr inbounds i8, i8* %141, i32 1, !dbg !1175
  store i8* %142, i8** %12, align 8, !dbg !1175
  %143 = load i8, i8* %141, align 1, !dbg !1176
  store i8 %143, i8* %14, align 1, !dbg !1174
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1177, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1179, metadata !DIExpression()), !dbg !1180
  store i32 0, i32* %16, align 4, !dbg !1180
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1181, metadata !DIExpression()), !dbg !1182
  store i8 3, i8* %17, align 1, !dbg !1182
  %144 = load i8*, i8** %12, align 8, !dbg !1183
  %145 = load i8, i8* %144, align 1, !dbg !1184
  %146 = zext i8 %145 to i32, !dbg !1184
  switch i32 %146, label %199 [
    i32 48, label %147
    i32 49, label %147
    i32 50, label %147
    i32 51, label %147
    i32 52, label %147
    i32 53, label %147
    i32 54, label %147
    i32 55, label %147
    i32 117, label %190
    i32 103, label %193
    i32 111, label %196
  ], !dbg !1185

147:                                              ; preds = %140, %140, %140, %140, %140, %140, %140, %140
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1186, metadata !DIExpression()), !dbg !1189
  store i32 0, i32* %18, align 4, !dbg !1189
  br label %148, !dbg !1190

148:                                              ; preds = %171, %147
  %149 = load i32, i32* %18, align 4, !dbg !1191
  %150 = mul i32 8, %149, !dbg !1193
  %151 = load i8*, i8** %12, align 8, !dbg !1194
  %152 = getelementptr inbounds i8, i8* %151, i32 1, !dbg !1194
  store i8* %152, i8** %12, align 8, !dbg !1194
  %153 = load i8, i8* %151, align 1, !dbg !1195
  %154 = zext i8 %153 to i32, !dbg !1195
  %155 = add i32 %150, %154, !dbg !1196
  %156 = sub i32 %155, 48, !dbg !1197
  store i32 %156, i32* %18, align 4, !dbg !1198
  %157 = load i32, i32* %18, align 4, !dbg !1199
  %158 = icmp ult i32 4095, %157, !dbg !1201
  br i1 %158, label %159, label %160, !dbg !1202

159:                                              ; preds = %148
  br label %301, !dbg !1203

160:                                              ; preds = %148
  br label %161, !dbg !1204

161:                                              ; preds = %160
  %162 = load i8*, i8** %12, align 8, !dbg !1205
  %163 = load i8, i8* %162, align 1, !dbg !1206
  %164 = zext i8 %163 to i32, !dbg !1206
  %165 = icmp sle i32 48, %164, !dbg !1207
  br i1 %165, label %166, label %171, !dbg !1208

166:                                              ; preds = %161
  %167 = load i8*, i8** %12, align 8, !dbg !1209
  %168 = load i8, i8* %167, align 1, !dbg !1210
  %169 = zext i8 %168 to i32, !dbg !1210
  %170 = icmp slt i32 %169, 56, !dbg !1211
  br label %171

171:                                              ; preds = %166, %161
  %172 = phi i1 [ false, %161 ], [ %170, %166 ], !dbg !1212
  br i1 %172, label %148, label %173, !dbg !1204, !llvm.loop !1213

173:                                              ; preds = %171
  %174 = load i32, i32* %13, align 4, !dbg !1215
  %175 = icmp ne i32 %174, 0, !dbg !1215
  br i1 %175, label %186, label %176, !dbg !1217

176:                                              ; preds = %173
  %177 = load i8*, i8** %12, align 8, !dbg !1218
  %178 = load i8, i8* %177, align 1, !dbg !1219
  %179 = zext i8 %178 to i32, !dbg !1219
  %180 = icmp ne i32 %179, 0, !dbg !1219
  br i1 %180, label %181, label %187, !dbg !1220

181:                                              ; preds = %176
  %182 = load i8*, i8** %12, align 8, !dbg !1221
  %183 = load i8, i8* %182, align 1, !dbg !1222
  %184 = zext i8 %183 to i32, !dbg !1222
  %185 = icmp ne i32 %184, 44, !dbg !1223
  br i1 %185, label %186, label %187, !dbg !1224

186:                                              ; preds = %181, %173
  br label %301, !dbg !1225

187:                                              ; preds = %181, %176
  store i32 4095, i32* %16, align 4, !dbg !1226
  store i32 4095, i32* %13, align 4, !dbg !1227
  %188 = load i32, i32* %18, align 4, !dbg !1228
  %189 = call i32 @octal_to_mode(i32 noundef %188), !dbg !1229
  store i32 %189, i32* %15, align 4, !dbg !1230
  store i8 1, i8* %17, align 1, !dbg !1231
  br label %226, !dbg !1232

190:                                              ; preds = %140
  store i32 448, i32* %15, align 4, !dbg !1233
  %191 = load i8*, i8** %12, align 8, !dbg !1234
  %192 = getelementptr inbounds i8, i8* %191, i32 1, !dbg !1234
  store i8* %192, i8** %12, align 8, !dbg !1234
  br label %226, !dbg !1235

193:                                              ; preds = %140
  store i32 56, i32* %15, align 4, !dbg !1236
  %194 = load i8*, i8** %12, align 8, !dbg !1237
  %195 = getelementptr inbounds i8, i8* %194, i32 1, !dbg !1237
  store i8* %195, i8** %12, align 8, !dbg !1237
  br label %226, !dbg !1238

196:                                              ; preds = %140
  store i32 7, i32* %15, align 4, !dbg !1239
  %197 = load i8*, i8** %12, align 8, !dbg !1240
  %198 = getelementptr inbounds i8, i8* %197, i32 1, !dbg !1240
  store i8* %198, i8** %12, align 8, !dbg !1240
  br label %226, !dbg !1241

199:                                              ; preds = %140
  store i32 0, i32* %15, align 4, !dbg !1242
  store i8 1, i8* %17, align 1, !dbg !1243
  br label %200, !dbg !1244

200:                                              ; preds = %222, %199
  %201 = load i8*, i8** %12, align 8, !dbg !1245
  %202 = load i8, i8* %201, align 1, !dbg !1248
  %203 = zext i8 %202 to i32, !dbg !1248
  switch i32 %203, label %220 [
    i32 114, label %204
    i32 119, label %207
    i32 120, label %210
    i32 88, label %213
    i32 115, label %214
    i32 116, label %217
  ], !dbg !1249

204:                                              ; preds = %200
  %205 = load i32, i32* %15, align 4, !dbg !1250
  %206 = or i32 %205, 292, !dbg !1250
  store i32 %206, i32* %15, align 4, !dbg !1250
  br label %221, !dbg !1252

207:                                              ; preds = %200
  %208 = load i32, i32* %15, align 4, !dbg !1253
  %209 = or i32 %208, 146, !dbg !1253
  store i32 %209, i32* %15, align 4, !dbg !1253
  br label %221, !dbg !1254

210:                                              ; preds = %200
  %211 = load i32, i32* %15, align 4, !dbg !1255
  %212 = or i32 %211, 73, !dbg !1255
  store i32 %212, i32* %15, align 4, !dbg !1255
  br label %221, !dbg !1256

213:                                              ; preds = %200
  store i8 2, i8* %17, align 1, !dbg !1257
  br label %221, !dbg !1258

214:                                              ; preds = %200
  %215 = load i32, i32* %15, align 4, !dbg !1259
  %216 = or i32 %215, 3072, !dbg !1259
  store i32 %216, i32* %15, align 4, !dbg !1259
  br label %221, !dbg !1260

217:                                              ; preds = %200
  %218 = load i32, i32* %15, align 4, !dbg !1261
  %219 = or i32 %218, 512, !dbg !1261
  store i32 %219, i32* %15, align 4, !dbg !1261
  br label %221, !dbg !1262

220:                                              ; preds = %200
  br label %225, !dbg !1263

221:                                              ; preds = %217, %214, %213, %210, %207, %204
  br label %222, !dbg !1264

222:                                              ; preds = %221
  %223 = load i8*, i8** %12, align 8, !dbg !1265
  %224 = getelementptr inbounds i8, i8* %223, i32 1, !dbg !1265
  store i8* %224, i8** %12, align 8, !dbg !1265
  br label %200, !dbg !1266, !llvm.loop !1267

225:                                              ; preds = %220
  call void @llvm.dbg.label(metadata !1270), !dbg !1271
  br label %226, !dbg !1272

226:                                              ; preds = %225, %196, %193, %190, %187
  call void @llvm.dbg.declare(metadata %struct.mode_change** %19, metadata !1273, metadata !DIExpression()), !dbg !1274
  %227 = load %struct.mode_change*, %struct.mode_change** %8, align 8, !dbg !1275
  %228 = load i64, i64* %11, align 8, !dbg !1276
  %229 = add i64 %228, 1, !dbg !1276
  store i64 %229, i64* %11, align 8, !dbg !1276
  %230 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %227, i64 %228, !dbg !1275
  store %struct.mode_change* %230, %struct.mode_change** %19, align 8, !dbg !1277
  %231 = load i8, i8* %14, align 1, !dbg !1278
  %232 = load %struct.mode_change*, %struct.mode_change** %19, align 8, !dbg !1279
  %233 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %232, i32 0, i32 0, !dbg !1280
  store i8 %231, i8* %233, align 4, !dbg !1281
  %234 = load i8, i8* %17, align 1, !dbg !1282
  %235 = load %struct.mode_change*, %struct.mode_change** %19, align 8, !dbg !1283
  %236 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %235, i32 0, i32 1, !dbg !1284
  store i8 %234, i8* %236, align 1, !dbg !1285
  %237 = load i32, i32* %13, align 4, !dbg !1286
  %238 = load %struct.mode_change*, %struct.mode_change** %19, align 8, !dbg !1287
  %239 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %238, i32 0, i32 2, !dbg !1288
  store i32 %237, i32* %239, align 4, !dbg !1289
  %240 = load i32, i32* %15, align 4, !dbg !1290
  %241 = load %struct.mode_change*, %struct.mode_change** %19, align 8, !dbg !1291
  %242 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %241, i32 0, i32 3, !dbg !1292
  store i32 %240, i32* %242, align 4, !dbg !1293
  %243 = load i32, i32* %16, align 4, !dbg !1294
  %244 = icmp ne i32 %243, 0, !dbg !1294
  br i1 %244, label %245, label %247, !dbg !1294

245:                                              ; preds = %226
  %246 = load i32, i32* %16, align 4, !dbg !1295
  br label %258, !dbg !1294

247:                                              ; preds = %226
  %248 = load i32, i32* %13, align 4, !dbg !1296
  %249 = icmp ne i32 %248, 0, !dbg !1296
  br i1 %249, label %250, label %254, !dbg !1296

250:                                              ; preds = %247
  %251 = load i32, i32* %13, align 4, !dbg !1297
  %252 = load i32, i32* %15, align 4, !dbg !1298
  %253 = and i32 %251, %252, !dbg !1299
  br label %256, !dbg !1296

254:                                              ; preds = %247
  %255 = load i32, i32* %15, align 4, !dbg !1300
  br label %256, !dbg !1296

256:                                              ; preds = %254, %250
  %257 = phi i32 [ %253, %250 ], [ %255, %254 ], !dbg !1296
  br label %258, !dbg !1294

258:                                              ; preds = %256, %245
  %259 = phi i32 [ %246, %245 ], [ %257, %256 ], !dbg !1294
  %260 = load %struct.mode_change*, %struct.mode_change** %19, align 8, !dbg !1301
  %261 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %260, i32 0, i32 4, !dbg !1302
  store i32 %259, i32* %261, align 4, !dbg !1303
  br label %262, !dbg !1304

262:                                              ; preds = %258
  %263 = load i8*, i8** %12, align 8, !dbg !1305
  %264 = load i8, i8* %263, align 1, !dbg !1306
  %265 = zext i8 %264 to i32, !dbg !1306
  %266 = icmp eq i32 %265, 61, !dbg !1307
  br i1 %266, label %277, label %267, !dbg !1308

267:                                              ; preds = %262
  %268 = load i8*, i8** %12, align 8, !dbg !1309
  %269 = load i8, i8* %268, align 1, !dbg !1310
  %270 = zext i8 %269 to i32, !dbg !1310
  %271 = icmp eq i32 %270, 43, !dbg !1311
  br i1 %271, label %277, label %272, !dbg !1312

272:                                              ; preds = %267
  %273 = load i8*, i8** %12, align 8, !dbg !1313
  %274 = load i8, i8* %273, align 1, !dbg !1314
  %275 = zext i8 %274 to i32, !dbg !1314
  %276 = icmp eq i32 %275, 45, !dbg !1315
  br label %277, !dbg !1312

277:                                              ; preds = %272, %267, %262
  %278 = phi i1 [ true, %267 ], [ true, %262 ], [ %276, %272 ]
  br i1 %278, label %140, label %279, !dbg !1304, !llvm.loop !1316

279:                                              ; preds = %277
  %280 = load i8*, i8** %12, align 8, !dbg !1318
  %281 = load i8, i8* %280, align 1, !dbg !1320
  %282 = zext i8 %281 to i32, !dbg !1320
  %283 = icmp ne i32 %282, 44, !dbg !1321
  br i1 %283, label %284, label %285, !dbg !1322

284:                                              ; preds = %279
  br label %289, !dbg !1323

285:                                              ; preds = %279
  br label %286, !dbg !1324

286:                                              ; preds = %285
  %287 = load i8*, i8** %12, align 8, !dbg !1325
  %288 = getelementptr inbounds i8, i8* %287, i32 1, !dbg !1325
  store i8* %288, i8** %12, align 8, !dbg !1325
  br label %116, !dbg !1326, !llvm.loop !1327

289:                                              ; preds = %284
  %290 = load i8*, i8** %12, align 8, !dbg !1330
  %291 = load i8, i8* %290, align 1, !dbg !1332
  %292 = zext i8 %291 to i32, !dbg !1332
  %293 = icmp eq i32 %292, 0, !dbg !1333
  br i1 %293, label %294, label %300, !dbg !1334

294:                                              ; preds = %289
  %295 = load %struct.mode_change*, %struct.mode_change** %8, align 8, !dbg !1335
  %296 = load i64, i64* %11, align 8, !dbg !1337
  %297 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %295, i64 %296, !dbg !1335
  %298 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %297, i32 0, i32 1, !dbg !1338
  store i8 0, i8* %298, align 1, !dbg !1339
  %299 = load %struct.mode_change*, %struct.mode_change** %8, align 8, !dbg !1340
  store %struct.mode_change* %299, %struct.mode_change** %2, align 8, !dbg !1341
  br label %304, !dbg !1341

300:                                              ; preds = %289
  br label %301, !dbg !1342

301:                                              ; preds = %300, %186, %159, %121
  call void @llvm.dbg.label(metadata !1343), !dbg !1344
  %302 = load %struct.mode_change*, %struct.mode_change** %8, align 8, !dbg !1345
  %303 = bitcast %struct.mode_change* %302 to i8*, !dbg !1345
  call void @free(i8* noundef %303) #18, !dbg !1346
  store %struct.mode_change* null, %struct.mode_change** %2, align 8, !dbg !1347
  br label %304, !dbg !1347

304:                                              ; preds = %301, %294, %76, %60, %42
  %305 = load %struct.mode_change*, %struct.mode_change** %2, align 8, !dbg !1348
  ret %struct.mode_change* %305, !dbg !1348
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octal_to_mode(i32 noundef %0) #4 !dbg !1349 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1352, metadata !DIExpression()), !dbg !1353
  %3 = load i32, i32* %2, align 4, !dbg !1354
  ret i32 %3, !dbg !1355
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mode_change* @make_node_op_equals(i32 noundef %0, i32 noundef %1) #4 !dbg !1356 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mode_change*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1359, metadata !DIExpression()), !dbg !1360
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1361, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.declare(metadata %struct.mode_change** %5, metadata !1363, metadata !DIExpression()), !dbg !1364
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef 32) #25, !dbg !1365
  %7 = bitcast i8* %6 to %struct.mode_change*, !dbg !1365
  store %struct.mode_change* %7, %struct.mode_change** %5, align 8, !dbg !1364
  %8 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1366
  %9 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %8, i32 0, i32 0, !dbg !1367
  store i8 61, i8* %9, align 4, !dbg !1368
  %10 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1369
  %11 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %10, i32 0, i32 1, !dbg !1370
  store i8 1, i8* %11, align 1, !dbg !1371
  %12 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1372
  %13 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %12, i32 0, i32 2, !dbg !1373
  store i32 4095, i32* %13, align 4, !dbg !1374
  %14 = load i32, i32* %3, align 4, !dbg !1375
  %15 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1376
  %16 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %15, i32 0, i32 3, !dbg !1377
  store i32 %14, i32* %16, align 4, !dbg !1378
  %17 = load i32, i32* %4, align 4, !dbg !1379
  %18 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1380
  %19 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %18, i32 0, i32 4, !dbg !1381
  store i32 %17, i32* %19, align 4, !dbg !1382
  %20 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1383
  %21 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %20, i64 1, !dbg !1383
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %21, i32 0, i32 1, !dbg !1384
  store i8 0, i8* %22, align 1, !dbg !1385
  %23 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1386
  ret %struct.mode_change* %23, !dbg !1387
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* noundef %0) #4 !dbg !1388 {
  %2 = alloca %struct.mode_change*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1389, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1391, metadata !DIExpression()), !dbg !1427
  %5 = load i8*, i8** %3, align 8, !dbg !1428
  %6 = call i32 @stat(i8* noundef %5, %struct.stat* noundef %4) #18, !dbg !1430
  %7 = icmp ne i32 %6, 0, !dbg !1431
  br i1 %7, label %8, label %9, !dbg !1432

8:                                                ; preds = %1
  store %struct.mode_change* null, %struct.mode_change** %2, align 8, !dbg !1433
  br label %13, !dbg !1433

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2, !dbg !1434
  %11 = load i32, i32* %10, align 8, !dbg !1434
  %12 = call %struct.mode_change* @make_node_op_equals(i32 noundef %11, i32 noundef 4095), !dbg !1435
  store %struct.mode_change* %12, %struct.mode_change** %2, align 8, !dbg !1436
  br label %13, !dbg !1436

13:                                               ; preds = %9, %8
  %14 = load %struct.mode_change*, %struct.mode_change** %2, align 8, !dbg !1437
  ret %struct.mode_change* %14, !dbg !1437
}

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, %struct.mode_change* noundef %3, i32* noundef %4) #12 !dbg !1438 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.mode_change*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1444, metadata !DIExpression()), !dbg !1445
  %17 = zext i1 %1 to i8
  store i8 %17, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1446, metadata !DIExpression()), !dbg !1447
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1448, metadata !DIExpression()), !dbg !1449
  store %struct.mode_change* %3, %struct.mode_change** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.mode_change** %9, metadata !1450, metadata !DIExpression()), !dbg !1451
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !1452, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1454, metadata !DIExpression()), !dbg !1455
  %18 = load i32, i32* %6, align 4, !dbg !1456
  %19 = and i32 %18, 4095, !dbg !1457
  store i32 %19, i32* %11, align 4, !dbg !1455
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1458, metadata !DIExpression()), !dbg !1459
  store i32 0, i32* %12, align 4, !dbg !1459
  br label %20, !dbg !1460

20:                                               ; preds = %138, %5
  %21 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1461
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %21, i32 0, i32 1, !dbg !1464
  %23 = load i8, i8* %22, align 1, !dbg !1464
  %24 = zext i8 %23 to i32, !dbg !1461
  %25 = icmp ne i32 %24, 0, !dbg !1465
  br i1 %25, label %26, label %141, !dbg !1466

26:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1467, metadata !DIExpression()), !dbg !1469
  %27 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1470
  %28 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %27, i32 0, i32 2, !dbg !1471
  %29 = load i32, i32* %28, align 4, !dbg !1471
  store i32 %29, i32* %13, align 4, !dbg !1469
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1472, metadata !DIExpression()), !dbg !1473
  %30 = load i8, i8* %7, align 1, !dbg !1474
  %31 = trunc i8 %30 to i1, !dbg !1474
  %32 = zext i1 %31 to i64, !dbg !1474
  %33 = select i1 %31, i32 3072, i32 0, !dbg !1474
  %34 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1475
  %35 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %34, i32 0, i32 4, !dbg !1476
  %36 = load i32, i32* %35, align 4, !dbg !1476
  %37 = xor i32 %36, -1, !dbg !1477
  %38 = and i32 %33, %37, !dbg !1478
  store i32 %38, i32* %14, align 4, !dbg !1473
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1479, metadata !DIExpression()), !dbg !1480
  %39 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1481
  %40 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %39, i32 0, i32 3, !dbg !1482
  %41 = load i32, i32* %40, align 4, !dbg !1482
  store i32 %41, i32* %15, align 4, !dbg !1480
  %42 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1483
  %43 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %42, i32 0, i32 1, !dbg !1484
  %44 = load i8, i8* %43, align 1, !dbg !1484
  %45 = zext i8 %44 to i32, !dbg !1483
  switch i32 %45, label %82 [
    i32 1, label %46
    i32 3, label %47
    i32 2, label %70
  ], !dbg !1485

46:                                               ; preds = %26
  br label %82, !dbg !1486

47:                                               ; preds = %26
  %48 = load i32, i32* %11, align 4, !dbg !1488
  %49 = load i32, i32* %15, align 4, !dbg !1489
  %50 = and i32 %49, %48, !dbg !1489
  store i32 %50, i32* %15, align 4, !dbg !1489
  %51 = load i32, i32* %15, align 4, !dbg !1490
  %52 = and i32 %51, 292, !dbg !1491
  %53 = icmp ne i32 %52, 0, !dbg !1490
  %54 = zext i1 %53 to i64, !dbg !1490
  %55 = select i1 %53, i32 292, i32 0, !dbg !1490
  %56 = load i32, i32* %15, align 4, !dbg !1492
  %57 = and i32 %56, 146, !dbg !1493
  %58 = icmp ne i32 %57, 0, !dbg !1492
  %59 = zext i1 %58 to i64, !dbg !1492
  %60 = select i1 %58, i32 146, i32 0, !dbg !1492
  %61 = or i32 %55, %60, !dbg !1494
  %62 = load i32, i32* %15, align 4, !dbg !1495
  %63 = and i32 %62, 73, !dbg !1496
  %64 = icmp ne i32 %63, 0, !dbg !1495
  %65 = zext i1 %64 to i64, !dbg !1495
  %66 = select i1 %64, i32 73, i32 0, !dbg !1495
  %67 = or i32 %61, %66, !dbg !1497
  %68 = load i32, i32* %15, align 4, !dbg !1498
  %69 = or i32 %68, %67, !dbg !1498
  store i32 %69, i32* %15, align 4, !dbg !1498
  br label %82, !dbg !1499

70:                                               ; preds = %26
  %71 = load i32, i32* %11, align 4, !dbg !1500
  %72 = and i32 %71, 73, !dbg !1502
  %73 = load i8, i8* %7, align 1, !dbg !1503
  %74 = trunc i8 %73 to i1, !dbg !1503
  %75 = zext i1 %74 to i32, !dbg !1503
  %76 = or i32 %72, %75, !dbg !1504
  %77 = icmp ne i32 %76, 0, !dbg !1504
  br i1 %77, label %78, label %81, !dbg !1505

78:                                               ; preds = %70
  %79 = load i32, i32* %15, align 4, !dbg !1506
  %80 = or i32 %79, 73, !dbg !1506
  store i32 %80, i32* %15, align 4, !dbg !1506
  br label %81, !dbg !1507

81:                                               ; preds = %78, %70
  br label %82, !dbg !1508

82:                                               ; preds = %26, %81, %47, %46
  %83 = load i32, i32* %13, align 4, !dbg !1509
  %84 = icmp ne i32 %83, 0, !dbg !1509
  br i1 %84, label %85, label %87, !dbg !1509

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4, !dbg !1510
  br label %90, !dbg !1509

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4, !dbg !1511
  %89 = xor i32 %88, -1, !dbg !1512
  br label %90, !dbg !1509

90:                                               ; preds = %87, %85
  %91 = phi i32 [ %86, %85 ], [ %89, %87 ], !dbg !1509
  %92 = load i32, i32* %14, align 4, !dbg !1513
  %93 = xor i32 %92, -1, !dbg !1514
  %94 = and i32 %91, %93, !dbg !1515
  %95 = load i32, i32* %15, align 4, !dbg !1516
  %96 = and i32 %95, %94, !dbg !1516
  store i32 %96, i32* %15, align 4, !dbg !1516
  %97 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1517
  %98 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %97, i32 0, i32 0, !dbg !1518
  %99 = load i8, i8* %98, align 4, !dbg !1518
  %100 = zext i8 %99 to i32, !dbg !1517
  switch i32 %100, label %137 [
    i32 61, label %101
    i32 43, label %122
    i32 45, label %129
  ], !dbg !1519

101:                                              ; preds = %90
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1520, metadata !DIExpression()), !dbg !1523
  %102 = load i32, i32* %13, align 4, !dbg !1524
  %103 = icmp ne i32 %102, 0, !dbg !1524
  br i1 %103, label %104, label %107, !dbg !1524

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4, !dbg !1525
  %106 = xor i32 %105, -1, !dbg !1526
  br label %108, !dbg !1524

107:                                              ; preds = %101
  br label %108, !dbg !1524

108:                                              ; preds = %107, %104
  %109 = phi i32 [ %106, %104 ], [ 0, %107 ], !dbg !1524
  %110 = load i32, i32* %14, align 4, !dbg !1527
  %111 = or i32 %109, %110, !dbg !1528
  store i32 %111, i32* %16, align 4, !dbg !1523
  %112 = load i32, i32* %16, align 4, !dbg !1529
  %113 = xor i32 %112, -1, !dbg !1530
  %114 = and i32 4095, %113, !dbg !1531
  %115 = load i32, i32* %12, align 4, !dbg !1532
  %116 = or i32 %115, %114, !dbg !1532
  store i32 %116, i32* %12, align 4, !dbg !1532
  %117 = load i32, i32* %11, align 4, !dbg !1533
  %118 = load i32, i32* %16, align 4, !dbg !1534
  %119 = and i32 %117, %118, !dbg !1535
  %120 = load i32, i32* %15, align 4, !dbg !1536
  %121 = or i32 %119, %120, !dbg !1537
  store i32 %121, i32* %11, align 4, !dbg !1538
  br label %137, !dbg !1539

122:                                              ; preds = %90
  %123 = load i32, i32* %15, align 4, !dbg !1540
  %124 = load i32, i32* %12, align 4, !dbg !1541
  %125 = or i32 %124, %123, !dbg !1541
  store i32 %125, i32* %12, align 4, !dbg !1541
  %126 = load i32, i32* %15, align 4, !dbg !1542
  %127 = load i32, i32* %11, align 4, !dbg !1543
  %128 = or i32 %127, %126, !dbg !1543
  store i32 %128, i32* %11, align 4, !dbg !1543
  br label %137, !dbg !1544

129:                                              ; preds = %90
  %130 = load i32, i32* %15, align 4, !dbg !1545
  %131 = load i32, i32* %12, align 4, !dbg !1546
  %132 = or i32 %131, %130, !dbg !1546
  store i32 %132, i32* %12, align 4, !dbg !1546
  %133 = load i32, i32* %15, align 4, !dbg !1547
  %134 = xor i32 %133, -1, !dbg !1548
  %135 = load i32, i32* %11, align 4, !dbg !1549
  %136 = and i32 %135, %134, !dbg !1549
  store i32 %136, i32* %11, align 4, !dbg !1549
  br label %137, !dbg !1550

137:                                              ; preds = %90, %129, %122, %108
  br label %138, !dbg !1551

138:                                              ; preds = %137
  %139 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1552
  %140 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %139, i32 1, !dbg !1552
  store %struct.mode_change* %140, %struct.mode_change** %9, align 8, !dbg !1552
  br label %20, !dbg !1553, !llvm.loop !1554

141:                                              ; preds = %20
  %142 = load i32*, i32** %10, align 8, !dbg !1556
  %143 = icmp ne i32* %142, null, !dbg !1556
  br i1 %143, label %144, label %147, !dbg !1558

144:                                              ; preds = %141
  %145 = load i32, i32* %12, align 4, !dbg !1559
  %146 = load i32*, i32** %10, align 8, !dbg !1560
  store i32 %145, i32* %146, align 4, !dbg !1561
  br label %147, !dbg !1562

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %11, align 4, !dbg !1563
  ret i32 %148, !dbg !1564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1565 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1568, metadata !DIExpression()), !dbg !1569
  %5 = load i8*, i8** %2, align 8, !dbg !1570
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1571
  store i8* %6, i8** %3, align 8, !dbg !1569
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1572, metadata !DIExpression()), !dbg !1573
  %7 = load i8*, i8** %3, align 8, !dbg !1574
  %8 = icmp ne i8* %7, null, !dbg !1574
  br i1 %8, label %9, label %12, !dbg !1574

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1575
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1576
  br label %14, !dbg !1574

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1577
  br label %14, !dbg !1574

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1574
  store i8* %15, i8** %4, align 8, !dbg !1573
  %16 = load i8*, i8** %4, align 8, !dbg !1578
  %17 = load i8*, i8** %2, align 8, !dbg !1580
  %18 = ptrtoint i8* %16 to i64, !dbg !1581
  %19 = ptrtoint i8* %17 to i64, !dbg !1581
  %20 = sub i64 %18, %19, !dbg !1581
  %21 = icmp sle i64 7, %20, !dbg !1582
  br i1 %21, label %22, label %36, !dbg !1583

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1584
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1585
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i64 0, i64 0), i64 noundef 7), !dbg !1586
  br i1 %25, label %26, label %36, !dbg !1587

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1588
  store i8* %27, i8** %2, align 8, !dbg !1590
  %28 = load i8*, i8** %4, align 8, !dbg !1591
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.91, i64 0, i64 0), i64 noundef 3) #20, !dbg !1593
  %30 = icmp eq i32 %29, 0, !dbg !1594
  br i1 %30, label %31, label %35, !dbg !1595

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1596
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1596
  store i8* %33, i8** %4, align 8, !dbg !1596
  %34 = load i8*, i8** %4, align 8, !dbg !1598
  store i8* %34, i8** %2, align 8, !dbg !1599
  br label %35, !dbg !1600

35:                                               ; preds = %31, %26
  br label %36, !dbg !1601

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1602
  store i8* %37, i8** @program_name, align 8, !dbg !1603
  %38 = load i8*, i8** %2, align 8, !dbg !1604
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1605
  %39 = load i8*, i8** %4, align 8, !dbg !1606
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1607
  ret void, !dbg !1608
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !118 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1609, metadata !DIExpression()), !dbg !1610
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1611, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1613, metadata !DIExpression()), !dbg !1614
  %9 = load i8*, i8** %4, align 8, !dbg !1615
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1616
  store i8* %10, i8** %6, align 8, !dbg !1614
  %11 = load i8*, i8** %6, align 8, !dbg !1617
  %12 = load i8*, i8** %4, align 8, !dbg !1619
  %13 = icmp ne i8* %11, %12, !dbg !1620
  br i1 %13, label %14, label %16, !dbg !1621

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1622
  store i8* %15, i8** %3, align 8, !dbg !1623
  br label %26, !dbg !1623

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1624, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1630, metadata !DIExpression()), !dbg !1641
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1642
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1643
  %18 = icmp eq i64 %17, 2, !dbg !1645
  br i1 %18, label %19, label %24, !dbg !1646

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1647
  %21 = icmp eq i32 %20, 2047, !dbg !1648
  br i1 %21, label %22, label %24, !dbg !1649

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1650
  store i8* %23, i8** %3, align 8, !dbg !1651
  br label %26, !dbg !1651

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1652
  store i8* %25, i8** %3, align 8, !dbg !1653
  br label %26, !dbg !1653

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1654
  ret i8* %27, !dbg !1654
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1655 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1659, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1661, metadata !DIExpression()), !dbg !1662
  %5 = call i32* @__errno_location() #21, !dbg !1663
  %6 = load i32, i32* %5, align 4, !dbg !1663
  store i32 %6, i32* %3, align 4, !dbg !1662
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1664, metadata !DIExpression()), !dbg !1665
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1666
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1666
  br i1 %8, label %9, label %11, !dbg !1666

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1667
  br label %12, !dbg !1666

11:                                               ; preds = %1
  br label %12, !dbg !1666

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1666
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1666
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #26, !dbg !1668
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1668
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1665
  %17 = load i32, i32* %3, align 4, !dbg !1669
  %18 = call i32* @__errno_location() #21, !dbg !1670
  store i32 %17, i32* %18, align 4, !dbg !1671
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1672
  ret %struct.quoting_options* %19, !dbg !1673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1674 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1679, metadata !DIExpression()), !dbg !1680
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1681
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1681
  br i1 %4, label %5, label %7, !dbg !1681

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1682
  br label %8, !dbg !1681

7:                                                ; preds = %1
  br label %8, !dbg !1681

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1681
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1683
  %11 = load i32, i32* %10, align 8, !dbg !1683
  ret i32 %11, !dbg !1684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1685 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1688, metadata !DIExpression()), !dbg !1689
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1690, metadata !DIExpression()), !dbg !1691
  %5 = load i32, i32* %4, align 4, !dbg !1692
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1693
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1693
  br i1 %7, label %8, label %10, !dbg !1693

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1694
  br label %11, !dbg !1693

10:                                               ; preds = %2
  br label %11, !dbg !1693

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1693
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1695
  store i32 %5, i32* %13, align 8, !dbg !1696
  ret void, !dbg !1697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1698 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1701, metadata !DIExpression()), !dbg !1702
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1703, metadata !DIExpression()), !dbg !1704
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1705, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1707, metadata !DIExpression()), !dbg !1708
  %11 = load i8, i8* %5, align 1, !dbg !1709
  store i8 %11, i8* %7, align 1, !dbg !1708
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1710, metadata !DIExpression()), !dbg !1712
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1713
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1713
  br i1 %13, label %14, label %16, !dbg !1713

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1714
  br label %17, !dbg !1713

16:                                               ; preds = %3
  br label %17, !dbg !1713

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1713
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1715
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1716
  %21 = load i8, i8* %7, align 1, !dbg !1717
  %22 = zext i8 %21 to i64, !dbg !1717
  %23 = udiv i64 %22, 32, !dbg !1718
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1719
  store i32* %24, i32** %8, align 8, !dbg !1712
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1720, metadata !DIExpression()), !dbg !1721
  %25 = load i8, i8* %7, align 1, !dbg !1722
  %26 = zext i8 %25 to i64, !dbg !1722
  %27 = urem i64 %26, 32, !dbg !1723
  %28 = trunc i64 %27 to i32, !dbg !1722
  store i32 %28, i32* %9, align 4, !dbg !1721
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1724, metadata !DIExpression()), !dbg !1725
  %29 = load i32*, i32** %8, align 8, !dbg !1726
  %30 = load i32, i32* %29, align 4, !dbg !1727
  %31 = load i32, i32* %9, align 4, !dbg !1728
  %32 = lshr i32 %30, %31, !dbg !1729
  %33 = and i32 %32, 1, !dbg !1730
  store i32 %33, i32* %10, align 4, !dbg !1725
  %34 = load i32, i32* %6, align 4, !dbg !1731
  %35 = and i32 %34, 1, !dbg !1732
  %36 = load i32, i32* %10, align 4, !dbg !1733
  %37 = xor i32 %35, %36, !dbg !1734
  %38 = load i32, i32* %9, align 4, !dbg !1735
  %39 = shl i32 %37, %38, !dbg !1736
  %40 = load i32*, i32** %8, align 8, !dbg !1737
  %41 = load i32, i32* %40, align 4, !dbg !1738
  %42 = xor i32 %41, %39, !dbg !1738
  store i32 %42, i32* %40, align 4, !dbg !1738
  %43 = load i32, i32* %10, align 4, !dbg !1739
  ret i32 %43, !dbg !1740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1741 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1744, metadata !DIExpression()), !dbg !1745
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1746, metadata !DIExpression()), !dbg !1747
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1748
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1748
  br i1 %7, label %9, label %8, !dbg !1750

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1751
  br label %9, !dbg !1752

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1753, metadata !DIExpression()), !dbg !1754
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1755
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1756
  %12 = load i32, i32* %11, align 4, !dbg !1756
  store i32 %12, i32* %5, align 4, !dbg !1754
  %13 = load i32, i32* %4, align 4, !dbg !1757
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1758
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1759
  store i32 %13, i32* %15, align 4, !dbg !1760
  %16 = load i32, i32* %5, align 4, !dbg !1761
  ret i32 %16, !dbg !1762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1763 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1766, metadata !DIExpression()), !dbg !1767
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1768, metadata !DIExpression()), !dbg !1769
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1770, metadata !DIExpression()), !dbg !1771
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1772
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1772
  br i1 %8, label %10, label %9, !dbg !1774

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1775
  br label %10, !dbg !1776

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1777
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1778
  store i32 10, i32* %12, align 8, !dbg !1779
  %13 = load i8*, i8** %5, align 8, !dbg !1780
  %14 = icmp ne i8* %13, null, !dbg !1780
  br i1 %14, label %15, label %18, !dbg !1782

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1783
  %17 = icmp ne i8* %16, null, !dbg !1783
  br i1 %17, label %19, label %18, !dbg !1784

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1785
  unreachable, !dbg !1785

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1786
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1787
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1788
  store i8* %20, i8** %22, align 8, !dbg !1789
  %23 = load i8*, i8** %6, align 8, !dbg !1790
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1791
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1792
  store i8* %23, i8** %25, align 8, !dbg !1793
  ret void, !dbg !1794
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1795 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1798, metadata !DIExpression()), !dbg !1799
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1800, metadata !DIExpression()), !dbg !1801
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1802, metadata !DIExpression()), !dbg !1803
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1804, metadata !DIExpression()), !dbg !1805
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1806, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1808, metadata !DIExpression()), !dbg !1809
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1810
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1810
  br i1 %15, label %16, label %18, !dbg !1810

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1811
  br label %19, !dbg !1810

18:                                               ; preds = %5
  br label %19, !dbg !1810

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1810
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1809
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1812, metadata !DIExpression()), !dbg !1813
  %21 = call i32* @__errno_location() #21, !dbg !1814
  %22 = load i32, i32* %21, align 4, !dbg !1814
  store i32 %22, i32* %12, align 4, !dbg !1813
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1815, metadata !DIExpression()), !dbg !1816
  %23 = load i8*, i8** %6, align 8, !dbg !1817
  %24 = load i64, i64* %7, align 8, !dbg !1818
  %25 = load i8*, i8** %8, align 8, !dbg !1819
  %26 = load i64, i64* %9, align 8, !dbg !1820
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1821
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1822
  %29 = load i32, i32* %28, align 8, !dbg !1822
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1823
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1824
  %32 = load i32, i32* %31, align 4, !dbg !1824
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1825
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1826
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1825
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1827
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1828
  %38 = load i8*, i8** %37, align 8, !dbg !1828
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1829
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1830
  %41 = load i8*, i8** %40, align 8, !dbg !1830
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1831
  store i64 %42, i64* %13, align 8, !dbg !1816
  %43 = load i32, i32* %12, align 4, !dbg !1832
  %44 = call i32* @__errno_location() #21, !dbg !1833
  store i32 %43, i32* %44, align 4, !dbg !1834
  %45 = load i64, i64* %13, align 8, !dbg !1835
  ret i64 %45, !dbg !1836
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1837 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1842, metadata !DIExpression()), !dbg !1843
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1844, metadata !DIExpression()), !dbg !1845
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1846, metadata !DIExpression()), !dbg !1847
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1848, metadata !DIExpression()), !dbg !1849
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1850, metadata !DIExpression()), !dbg !1851
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1852, metadata !DIExpression()), !dbg !1853
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1854, metadata !DIExpression()), !dbg !1855
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1856, metadata !DIExpression()), !dbg !1857
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1858, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1860, metadata !DIExpression()), !dbg !1861
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1862
  %45 = icmp eq i64 %44, 1, !dbg !1863
  %46 = zext i1 %45 to i8, !dbg !1861
  store i8 %46, i8* %20, align 1, !dbg !1861
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1864, metadata !DIExpression()), !dbg !1865
  store i64 0, i64* %21, align 8, !dbg !1865
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1866, metadata !DIExpression()), !dbg !1867
  store i64 0, i64* %22, align 8, !dbg !1867
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1868, metadata !DIExpression()), !dbg !1869
  store i8* null, i8** %23, align 8, !dbg !1869
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1870, metadata !DIExpression()), !dbg !1871
  store i64 0, i64* %24, align 8, !dbg !1871
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1872, metadata !DIExpression()), !dbg !1873
  store i8 0, i8* %25, align 1, !dbg !1873
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1874, metadata !DIExpression()), !dbg !1875
  %47 = load i32, i32* %16, align 4, !dbg !1876
  %48 = and i32 %47, 2, !dbg !1877
  %49 = icmp ne i32 %48, 0, !dbg !1878
  %50 = zext i1 %49 to i8, !dbg !1875
  store i8 %50, i8* %26, align 1, !dbg !1875
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1879, metadata !DIExpression()), !dbg !1880
  store i8 0, i8* %27, align 1, !dbg !1880
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1881, metadata !DIExpression()), !dbg !1882
  store i8 1, i8* %28, align 1, !dbg !1882
  br label %51, !dbg !1883

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1884), !dbg !1885
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1886, metadata !DIExpression()), !dbg !1887
  store i8 0, i8* %29, align 1, !dbg !1887
  %52 = load i32, i32* %15, align 4, !dbg !1888
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
  ], !dbg !1889

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1890
  store i8 1, i8* %26, align 1, !dbg !1892
  br label %54, !dbg !1893

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1894
  %56 = trunc i8 %55 to i1, !dbg !1894
  br i1 %56, label %70, label %57, !dbg !1896

57:                                               ; preds = %54
  br label %58, !dbg !1897

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1898
  %60 = load i64, i64* %12, align 8, !dbg !1898
  %61 = icmp ult i64 %59, %60, !dbg !1898
  br i1 %61, label %62, label %66, !dbg !1901

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1898
  %64 = load i64, i64* %21, align 8, !dbg !1898
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1898
  store i8 34, i8* %65, align 1, !dbg !1898
  br label %66, !dbg !1898

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1901
  %68 = add i64 %67, 1, !dbg !1901
  store i64 %68, i64* %21, align 8, !dbg !1901
  br label %69, !dbg !1901

69:                                               ; preds = %66
  br label %70, !dbg !1901

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1902
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.104, i64 0, i64 0), i8** %23, align 8, !dbg !1903
  store i64 1, i64* %24, align 8, !dbg !1904
  br label %138, !dbg !1905

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1906
  store i8 0, i8* %26, align 1, !dbg !1907
  br label %138, !dbg !1908

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1909
  %74 = icmp ne i32 %73, 10, !dbg !1912
  br i1 %74, label %75, label %80, !dbg !1913

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1914
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.105, i64 0, i64 0), i32 noundef %76), !dbg !1916
  store i8* %77, i8** %18, align 8, !dbg !1917
  %78 = load i32, i32* %15, align 4, !dbg !1918
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), i32 noundef %78), !dbg !1919
  store i8* %79, i8** %19, align 8, !dbg !1920
  br label %80, !dbg !1921

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1922
  %82 = trunc i8 %81 to i1, !dbg !1922
  br i1 %82, label %108, label %83, !dbg !1924

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1925, metadata !DIExpression()), !dbg !1927
  %84 = load i8*, i8** %18, align 8, !dbg !1928
  store i8* %84, i8** %30, align 8, !dbg !1927
  br label %85, !dbg !1929

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1930
  %87 = load i8, i8* %86, align 1, !dbg !1932
  %88 = icmp ne i8 %87, 0, !dbg !1933
  br i1 %88, label %89, label %107, !dbg !1933

89:                                               ; preds = %85
  br label %90, !dbg !1934

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1935
  %92 = load i64, i64* %12, align 8, !dbg !1935
  %93 = icmp ult i64 %91, %92, !dbg !1935
  br i1 %93, label %94, label %100, !dbg !1938

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1935
  %96 = load i8, i8* %95, align 1, !dbg !1935
  %97 = load i8*, i8** %11, align 8, !dbg !1935
  %98 = load i64, i64* %21, align 8, !dbg !1935
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1935
  store i8 %96, i8* %99, align 1, !dbg !1935
  br label %100, !dbg !1935

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1938
  %102 = add i64 %101, 1, !dbg !1938
  store i64 %102, i64* %21, align 8, !dbg !1938
  br label %103, !dbg !1938

103:                                              ; preds = %100
  br label %104, !dbg !1938

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1939
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1939
  store i8* %106, i8** %30, align 8, !dbg !1939
  br label %85, !dbg !1940, !llvm.loop !1941

107:                                              ; preds = %85
  br label %108, !dbg !1942

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1943
  %109 = load i8*, i8** %19, align 8, !dbg !1944
  store i8* %109, i8** %23, align 8, !dbg !1945
  %110 = load i8*, i8** %23, align 8, !dbg !1946
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1947
  store i64 %111, i64* %24, align 8, !dbg !1948
  br label %138, !dbg !1949

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1950
  br label %113, !dbg !1951

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1952
  br label %114, !dbg !1953

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1954
  %116 = trunc i8 %115 to i1, !dbg !1954
  br i1 %116, label %118, label %117, !dbg !1956

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1957
  br label %118, !dbg !1958

118:                                              ; preds = %117, %114
  br label %119, !dbg !1954

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1959
  %120 = load i8, i8* %26, align 1, !dbg !1960
  %121 = trunc i8 %120 to i1, !dbg !1960
  br i1 %121, label %135, label %122, !dbg !1962

122:                                              ; preds = %119
  br label %123, !dbg !1963

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1964
  %125 = load i64, i64* %12, align 8, !dbg !1964
  %126 = icmp ult i64 %124, %125, !dbg !1964
  br i1 %126, label %127, label %131, !dbg !1967

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1964
  %129 = load i64, i64* %21, align 8, !dbg !1964
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1964
  store i8 39, i8* %130, align 1, !dbg !1964
  br label %131, !dbg !1964

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1967
  %133 = add i64 %132, 1, !dbg !1967
  store i64 %133, i64* %21, align 8, !dbg !1967
  br label %134, !dbg !1967

134:                                              ; preds = %131
  br label %135, !dbg !1967

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), i8** %23, align 8, !dbg !1968
  store i64 1, i64* %24, align 8, !dbg !1969
  br label %138, !dbg !1970

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1971
  br label %138, !dbg !1972

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1973
  unreachable, !dbg !1973

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1974, metadata !DIExpression()), !dbg !1976
  store i64 0, i64* %31, align 8, !dbg !1976
  br label %139, !dbg !1977

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1978
  %141 = icmp eq i64 %140, -1, !dbg !1980
  br i1 %141, label %142, label %150, !dbg !1978

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1981
  %144 = load i64, i64* %31, align 8, !dbg !1982
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1981
  %146 = load i8, i8* %145, align 1, !dbg !1981
  %147 = zext i8 %146 to i32, !dbg !1981
  %148 = icmp eq i32 %147, 0, !dbg !1983
  %149 = zext i1 %148 to i32, !dbg !1983
  br label %155, !dbg !1978

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1984
  %152 = load i64, i64* %14, align 8, !dbg !1985
  %153 = icmp eq i64 %151, %152, !dbg !1986
  %154 = zext i1 %153 to i32, !dbg !1986
  br label %155, !dbg !1978

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1978
  %157 = icmp ne i32 %156, 0, !dbg !1987
  %158 = xor i1 %157, true, !dbg !1987
  br i1 %158, label %159, label %996, !dbg !1988

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1989, metadata !DIExpression()), !dbg !1991
  store i8 0, i8* %32, align 1, !dbg !1991
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1992, metadata !DIExpression()), !dbg !1993
  store i8 0, i8* %33, align 1, !dbg !1993
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1994, metadata !DIExpression()), !dbg !1995
  store i8 0, i8* %34, align 1, !dbg !1995
  %160 = load i8, i8* %25, align 1, !dbg !1996
  %161 = trunc i8 %160 to i1, !dbg !1996
  br i1 %161, label %162, label %197, !dbg !1998

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1999
  %164 = icmp ne i32 %163, 2, !dbg !2000
  br i1 %164, label %165, label %197, !dbg !2001

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !2002
  %167 = icmp ne i64 %166, 0, !dbg !2002
  br i1 %167, label %168, label %197, !dbg !2003

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !2004
  %170 = load i64, i64* %24, align 8, !dbg !2005
  %171 = add i64 %169, %170, !dbg !2006
  %172 = load i64, i64* %14, align 8, !dbg !2007
  %173 = icmp eq i64 %172, -1, !dbg !2008
  br i1 %173, label %174, label %180, !dbg !2009

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !2010
  %176 = icmp ult i64 1, %175, !dbg !2011
  br i1 %176, label %177, label %180, !dbg !2007

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !2012
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !2013
  store i64 %179, i64* %14, align 8, !dbg !2014
  br label %182, !dbg !2007

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !2015
  br label %182, !dbg !2007

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !2007
  %184 = icmp ule i64 %171, %183, !dbg !2016
  br i1 %184, label %185, label %197, !dbg !2017

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !2018
  %187 = load i64, i64* %31, align 8, !dbg !2019
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !2020
  %189 = load i8*, i8** %23, align 8, !dbg !2021
  %190 = load i64, i64* %24, align 8, !dbg !2022
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !2023
  br i1 %191, label %192, label %197, !dbg !2024

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !2025
  %194 = trunc i8 %193 to i1, !dbg !2025
  br i1 %194, label %195, label %196, !dbg !2028

195:                                              ; preds = %192
  br label %1078, !dbg !2029

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !2030
  br label %197, !dbg !2031

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !2032, metadata !DIExpression()), !dbg !2033
  %198 = load i8*, i8** %13, align 8, !dbg !2034
  %199 = load i64, i64* %31, align 8, !dbg !2035
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !2034
  %201 = load i8, i8* %200, align 1, !dbg !2034
  store i8 %201, i8* %35, align 1, !dbg !2033
  %202 = load i8, i8* %35, align 1, !dbg !2036
  %203 = zext i8 %202 to i32, !dbg !2036
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
  ], !dbg !2037

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !2038
  %206 = trunc i8 %205 to i1, !dbg !2038
  br i1 %206, label %207, label %318, !dbg !2041

207:                                              ; preds = %204
  br label %208, !dbg !2042

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !2044
  %210 = trunc i8 %209 to i1, !dbg !2044
  br i1 %210, label %211, label %212, !dbg !2047

211:                                              ; preds = %208
  br label %1078, !dbg !2044

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !2047
  %213 = load i32, i32* %15, align 4, !dbg !2048
  %214 = icmp eq i32 %213, 2, !dbg !2048
  br i1 %214, label %215, label %255, !dbg !2048

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !2048
  %217 = trunc i8 %216 to i1, !dbg !2048
  br i1 %217, label %255, label %218, !dbg !2047

218:                                              ; preds = %215
  br label %219, !dbg !2050

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2052
  %221 = load i64, i64* %12, align 8, !dbg !2052
  %222 = icmp ult i64 %220, %221, !dbg !2052
  br i1 %222, label %223, label %227, !dbg !2055

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2052
  %225 = load i64, i64* %21, align 8, !dbg !2052
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2052
  store i8 39, i8* %226, align 1, !dbg !2052
  br label %227, !dbg !2052

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2055
  %229 = add i64 %228, 1, !dbg !2055
  store i64 %229, i64* %21, align 8, !dbg !2055
  br label %230, !dbg !2055

230:                                              ; preds = %227
  br label %231, !dbg !2050

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2056
  %233 = load i64, i64* %12, align 8, !dbg !2056
  %234 = icmp ult i64 %232, %233, !dbg !2056
  br i1 %234, label %235, label %239, !dbg !2059

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2056
  %237 = load i64, i64* %21, align 8, !dbg !2056
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2056
  store i8 36, i8* %238, align 1, !dbg !2056
  br label %239, !dbg !2056

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2059
  %241 = add i64 %240, 1, !dbg !2059
  store i64 %241, i64* %21, align 8, !dbg !2059
  br label %242, !dbg !2059

242:                                              ; preds = %239
  br label %243, !dbg !2050

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2060
  %245 = load i64, i64* %12, align 8, !dbg !2060
  %246 = icmp ult i64 %244, %245, !dbg !2060
  br i1 %246, label %247, label %251, !dbg !2063

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2060
  %249 = load i64, i64* %21, align 8, !dbg !2060
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2060
  store i8 39, i8* %250, align 1, !dbg !2060
  br label %251, !dbg !2060

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2063
  %253 = add i64 %252, 1, !dbg !2063
  store i64 %253, i64* %21, align 8, !dbg !2063
  br label %254, !dbg !2063

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !2050
  br label %255, !dbg !2050

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2047

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2064
  %258 = load i64, i64* %12, align 8, !dbg !2064
  %259 = icmp ult i64 %257, %258, !dbg !2064
  br i1 %259, label %260, label %264, !dbg !2067

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2064
  %262 = load i64, i64* %21, align 8, !dbg !2064
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2064
  store i8 92, i8* %263, align 1, !dbg !2064
  br label %264, !dbg !2064

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2067
  %266 = add i64 %265, 1, !dbg !2067
  store i64 %266, i64* %21, align 8, !dbg !2067
  br label %267, !dbg !2067

267:                                              ; preds = %264
  br label %268, !dbg !2047

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2068
  %270 = icmp ne i32 %269, 2, !dbg !2070
  br i1 %270, label %271, label %317, !dbg !2071

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !2072
  %273 = add i64 %272, 1, !dbg !2073
  %274 = load i64, i64* %14, align 8, !dbg !2074
  %275 = icmp ult i64 %273, %274, !dbg !2075
  br i1 %275, label %276, label %317, !dbg !2076

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2077
  %278 = load i64, i64* %31, align 8, !dbg !2078
  %279 = add i64 %278, 1, !dbg !2079
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2077
  %281 = load i8, i8* %280, align 1, !dbg !2077
  %282 = zext i8 %281 to i32, !dbg !2077
  %283 = icmp sle i32 48, %282, !dbg !2080
  br i1 %283, label %284, label %317, !dbg !2081

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2082
  %286 = load i64, i64* %31, align 8, !dbg !2083
  %287 = add i64 %286, 1, !dbg !2084
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2082
  %289 = load i8, i8* %288, align 1, !dbg !2082
  %290 = zext i8 %289 to i32, !dbg !2082
  %291 = icmp sle i32 %290, 57, !dbg !2085
  br i1 %291, label %292, label %317, !dbg !2086

292:                                              ; preds = %284
  br label %293, !dbg !2087

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2089
  %295 = load i64, i64* %12, align 8, !dbg !2089
  %296 = icmp ult i64 %294, %295, !dbg !2089
  br i1 %296, label %297, label %301, !dbg !2092

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2089
  %299 = load i64, i64* %21, align 8, !dbg !2089
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2089
  store i8 48, i8* %300, align 1, !dbg !2089
  br label %301, !dbg !2089

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2092
  %303 = add i64 %302, 1, !dbg !2092
  store i64 %303, i64* %21, align 8, !dbg !2092
  br label %304, !dbg !2092

304:                                              ; preds = %301
  br label %305, !dbg !2093

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2094
  %307 = load i64, i64* %12, align 8, !dbg !2094
  %308 = icmp ult i64 %306, %307, !dbg !2094
  br i1 %308, label %309, label %313, !dbg !2097

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2094
  %311 = load i64, i64* %21, align 8, !dbg !2094
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2094
  store i8 48, i8* %312, align 1, !dbg !2094
  br label %313, !dbg !2094

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2097
  %315 = add i64 %314, 1, !dbg !2097
  store i64 %315, i64* %21, align 8, !dbg !2097
  br label %316, !dbg !2097

316:                                              ; preds = %313
  br label %317, !dbg !2098

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !2099
  br label %324, !dbg !2100

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2101
  %320 = and i32 %319, 1, !dbg !2103
  %321 = icmp ne i32 %320, 0, !dbg !2103
  br i1 %321, label %322, label %323, !dbg !2104

322:                                              ; preds = %318
  br label %993, !dbg !2105

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !2106

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2107
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2108

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !2109
  %329 = trunc i8 %328 to i1, !dbg !2109
  br i1 %329, label %330, label %331, !dbg !2112

330:                                              ; preds = %327
  br label %1078, !dbg !2113

331:                                              ; preds = %327
  br label %418, !dbg !2114

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2115
  %334 = and i32 %333, 4, !dbg !2117
  %335 = icmp ne i32 %334, 0, !dbg !2117
  br i1 %335, label %336, label %417, !dbg !2118

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !2119
  %338 = add i64 %337, 2, !dbg !2120
  %339 = load i64, i64* %14, align 8, !dbg !2121
  %340 = icmp ult i64 %338, %339, !dbg !2122
  br i1 %340, label %341, label %417, !dbg !2123

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2124
  %343 = load i64, i64* %31, align 8, !dbg !2125
  %344 = add i64 %343, 1, !dbg !2126
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2124
  %346 = load i8, i8* %345, align 1, !dbg !2124
  %347 = zext i8 %346 to i32, !dbg !2124
  %348 = icmp eq i32 %347, 63, !dbg !2127
  br i1 %348, label %349, label %417, !dbg !2128

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2129
  %351 = load i64, i64* %31, align 8, !dbg !2130
  %352 = add i64 %351, 2, !dbg !2131
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2129
  %354 = load i8, i8* %353, align 1, !dbg !2129
  %355 = zext i8 %354 to i32, !dbg !2129
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
  ], !dbg !2132

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !2133
  %358 = trunc i8 %357 to i1, !dbg !2133
  br i1 %358, label %359, label %360, !dbg !2136

359:                                              ; preds = %356
  br label %1078, !dbg !2137

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2138
  %362 = load i64, i64* %31, align 8, !dbg !2139
  %363 = add i64 %362, 2, !dbg !2140
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2138
  %365 = load i8, i8* %364, align 1, !dbg !2138
  store i8 %365, i8* %35, align 1, !dbg !2141
  %366 = load i64, i64* %31, align 8, !dbg !2142
  %367 = add i64 %366, 2, !dbg !2142
  store i64 %367, i64* %31, align 8, !dbg !2142
  br label %368, !dbg !2143

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2144
  %370 = load i64, i64* %12, align 8, !dbg !2144
  %371 = icmp ult i64 %369, %370, !dbg !2144
  br i1 %371, label %372, label %376, !dbg !2147

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2144
  %374 = load i64, i64* %21, align 8, !dbg !2144
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2144
  store i8 63, i8* %375, align 1, !dbg !2144
  br label %376, !dbg !2144

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2147
  %378 = add i64 %377, 1, !dbg !2147
  store i64 %378, i64* %21, align 8, !dbg !2147
  br label %379, !dbg !2147

379:                                              ; preds = %376
  br label %380, !dbg !2148

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2149
  %382 = load i64, i64* %12, align 8, !dbg !2149
  %383 = icmp ult i64 %381, %382, !dbg !2149
  br i1 %383, label %384, label %388, !dbg !2152

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2149
  %386 = load i64, i64* %21, align 8, !dbg !2149
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2149
  store i8 34, i8* %387, align 1, !dbg !2149
  br label %388, !dbg !2149

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2152
  %390 = add i64 %389, 1, !dbg !2152
  store i64 %390, i64* %21, align 8, !dbg !2152
  br label %391, !dbg !2152

391:                                              ; preds = %388
  br label %392, !dbg !2153

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2154
  %394 = load i64, i64* %12, align 8, !dbg !2154
  %395 = icmp ult i64 %393, %394, !dbg !2154
  br i1 %395, label %396, label %400, !dbg !2157

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2154
  %398 = load i64, i64* %21, align 8, !dbg !2154
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2154
  store i8 34, i8* %399, align 1, !dbg !2154
  br label %400, !dbg !2154

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2157
  %402 = add i64 %401, 1, !dbg !2157
  store i64 %402, i64* %21, align 8, !dbg !2157
  br label %403, !dbg !2157

403:                                              ; preds = %400
  br label %404, !dbg !2158

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2159
  %406 = load i64, i64* %12, align 8, !dbg !2159
  %407 = icmp ult i64 %405, %406, !dbg !2159
  br i1 %407, label %408, label %412, !dbg !2162

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2159
  %410 = load i64, i64* %21, align 8, !dbg !2159
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2159
  store i8 63, i8* %411, align 1, !dbg !2159
  br label %412, !dbg !2159

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2162
  %414 = add i64 %413, 1, !dbg !2162
  store i64 %414, i64* %21, align 8, !dbg !2162
  br label %415, !dbg !2162

415:                                              ; preds = %412
  br label %416, !dbg !2163

416:                                              ; preds = %349, %415
  br label %417, !dbg !2164

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2165

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2166

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2167
  br label %454, !dbg !2169

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2170
  br label %454, !dbg !2171

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2172
  br label %454, !dbg !2173

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2174
  br label %446, !dbg !2175

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2176
  br label %446, !dbg !2177

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2178
  br label %446, !dbg !2179

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2180
  br label %454, !dbg !2181

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2182
  store i8 %427, i8* %36, align 1, !dbg !2183
  %428 = load i32, i32* %15, align 4, !dbg !2184
  %429 = icmp eq i32 %428, 2, !dbg !2186
  br i1 %429, label %430, label %435, !dbg !2187

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2188
  %432 = trunc i8 %431 to i1, !dbg !2188
  br i1 %432, label %433, label %434, !dbg !2191

433:                                              ; preds = %430
  br label %1078, !dbg !2192

434:                                              ; preds = %430
  br label %942, !dbg !2193

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2194
  %437 = trunc i8 %436 to i1, !dbg !2194
  br i1 %437, label %438, label %445, !dbg !2196

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2197
  %440 = trunc i8 %439 to i1, !dbg !2197
  br i1 %440, label %441, label %445, !dbg !2198

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2199
  %443 = icmp ne i64 %442, 0, !dbg !2199
  br i1 %443, label %444, label %445, !dbg !2200

444:                                              ; preds = %441
  br label %942, !dbg !2201

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2199

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2202), !dbg !2203
  %447 = load i32, i32* %15, align 4, !dbg !2204
  %448 = icmp eq i32 %447, 2, !dbg !2206
  br i1 %448, label %449, label %453, !dbg !2207

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2208
  %451 = trunc i8 %450 to i1, !dbg !2208
  br i1 %451, label %452, label %453, !dbg !2209

452:                                              ; preds = %449
  br label %1078, !dbg !2210

453:                                              ; preds = %449, %446
  br label %454, !dbg !2208

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2211), !dbg !2212
  %455 = load i8, i8* %25, align 1, !dbg !2213
  %456 = trunc i8 %455 to i1, !dbg !2213
  br i1 %456, label %457, label %459, !dbg !2215

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2216
  store i8 %458, i8* %35, align 1, !dbg !2218
  br label %880, !dbg !2219

459:                                              ; preds = %454
  br label %849, !dbg !2220

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2221
  %462 = icmp eq i64 %461, -1, !dbg !2223
  br i1 %462, label %463, label %469, !dbg !2224

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2225
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2225
  %466 = load i8, i8* %465, align 1, !dbg !2225
  %467 = zext i8 %466 to i32, !dbg !2225
  %468 = icmp eq i32 %467, 0, !dbg !2226
  br i1 %468, label %473, label %472, !dbg !2221

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2227
  %471 = icmp eq i64 %470, 1, !dbg !2228
  br i1 %471, label %473, label %472, !dbg !2224

472:                                              ; preds = %469, %463
  br label %849, !dbg !2229

473:                                              ; preds = %469, %463
  br label %474, !dbg !2230

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2231
  %476 = icmp ne i64 %475, 0, !dbg !2233
  br i1 %476, label %477, label %478, !dbg !2234

477:                                              ; preds = %474
  br label %849, !dbg !2235

478:                                              ; preds = %474
  br label %479, !dbg !2236

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2237
  br label %480, !dbg !2238

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2239
  %482 = icmp eq i32 %481, 2, !dbg !2241
  br i1 %482, label %483, label %487, !dbg !2242

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2243
  %485 = trunc i8 %484 to i1, !dbg !2243
  br i1 %485, label %486, label %487, !dbg !2244

486:                                              ; preds = %483
  br label %1078, !dbg !2245

487:                                              ; preds = %483, %480
  br label %849, !dbg !2246

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2247
  store i8 1, i8* %34, align 1, !dbg !2248
  %489 = load i32, i32* %15, align 4, !dbg !2249
  %490 = icmp eq i32 %489, 2, !dbg !2251
  br i1 %490, label %491, label %540, !dbg !2252

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2253
  %493 = trunc i8 %492 to i1, !dbg !2253
  br i1 %493, label %494, label %495, !dbg !2256

494:                                              ; preds = %491
  br label %1078, !dbg !2257

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2258
  %497 = icmp ne i64 %496, 0, !dbg !2258
  br i1 %497, label %498, label %503, !dbg !2260

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2261
  %500 = icmp ne i64 %499, 0, !dbg !2261
  br i1 %500, label %503, label %501, !dbg !2262

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2263
  store i64 %502, i64* %22, align 8, !dbg !2265
  store i64 0, i64* %12, align 8, !dbg !2266
  br label %503, !dbg !2267

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2268

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2269
  %506 = load i64, i64* %12, align 8, !dbg !2269
  %507 = icmp ult i64 %505, %506, !dbg !2269
  br i1 %507, label %508, label %512, !dbg !2272

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2269
  %510 = load i64, i64* %21, align 8, !dbg !2269
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2269
  store i8 39, i8* %511, align 1, !dbg !2269
  br label %512, !dbg !2269

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2272
  %514 = add i64 %513, 1, !dbg !2272
  store i64 %514, i64* %21, align 8, !dbg !2272
  br label %515, !dbg !2272

515:                                              ; preds = %512
  br label %516, !dbg !2273

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2274
  %518 = load i64, i64* %12, align 8, !dbg !2274
  %519 = icmp ult i64 %517, %518, !dbg !2274
  br i1 %519, label %520, label %524, !dbg !2277

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2274
  %522 = load i64, i64* %21, align 8, !dbg !2274
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2274
  store i8 92, i8* %523, align 1, !dbg !2274
  br label %524, !dbg !2274

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2277
  %526 = add i64 %525, 1, !dbg !2277
  store i64 %526, i64* %21, align 8, !dbg !2277
  br label %527, !dbg !2277

527:                                              ; preds = %524
  br label %528, !dbg !2278

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2279
  %530 = load i64, i64* %12, align 8, !dbg !2279
  %531 = icmp ult i64 %529, %530, !dbg !2279
  br i1 %531, label %532, label %536, !dbg !2282

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2279
  %534 = load i64, i64* %21, align 8, !dbg !2279
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2279
  store i8 39, i8* %535, align 1, !dbg !2279
  br label %536, !dbg !2279

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2282
  %538 = add i64 %537, 1, !dbg !2282
  store i64 %538, i64* %21, align 8, !dbg !2282
  br label %539, !dbg !2282

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2283
  br label %540, !dbg !2284

540:                                              ; preds = %539, %488
  br label %849, !dbg !2285

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2286
  br label %849, !dbg !2287

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2288, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2291, metadata !DIExpression()), !dbg !2292
  %543 = load i8, i8* %20, align 1, !dbg !2293
  %544 = trunc i8 %543 to i1, !dbg !2293
  br i1 %544, label %545, label %557, !dbg !2295

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2296
  %546 = call i16** @__ctype_b_loc() #21, !dbg !2298
  %547 = load i16*, i16** %546, align 8, !dbg !2298
  %548 = load i8, i8* %35, align 1, !dbg !2298
  %549 = zext i8 %548 to i32, !dbg !2298
  %550 = sext i32 %549 to i64, !dbg !2298
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2298
  %552 = load i16, i16* %551, align 2, !dbg !2298
  %553 = zext i16 %552 to i32, !dbg !2298
  %554 = and i32 %553, 16384, !dbg !2298
  %555 = icmp ne i32 %554, 0, !dbg !2299
  %556 = zext i1 %555 to i8, !dbg !2300
  store i8 %556, i8* %38, align 1, !dbg !2300
  br label %648, !dbg !2301

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2302, metadata !DIExpression()), !dbg !2314
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2315
  store i64 0, i64* %37, align 8, !dbg !2316
  store i8 1, i8* %38, align 1, !dbg !2317
  %558 = load i64, i64* %14, align 8, !dbg !2318
  %559 = icmp eq i64 %558, -1, !dbg !2320
  br i1 %559, label %560, label %563, !dbg !2321

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2322
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !2323
  store i64 %562, i64* %14, align 8, !dbg !2324
  br label %563, !dbg !2325

563:                                              ; preds = %560, %557
  br label %564, !dbg !2326

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2327, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2332, metadata !DIExpression()), !dbg !2333
  %565 = load i8*, i8** %13, align 8, !dbg !2334
  %566 = load i64, i64* %31, align 8, !dbg !2335
  %567 = load i64, i64* %37, align 8, !dbg !2336
  %568 = add i64 %566, %567, !dbg !2337
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2334
  %570 = load i64, i64* %14, align 8, !dbg !2338
  %571 = load i64, i64* %31, align 8, !dbg !2339
  %572 = load i64, i64* %37, align 8, !dbg !2340
  %573 = add i64 %571, %572, !dbg !2341
  %574 = sub i64 %570, %573, !dbg !2342
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2343
  store i64 %575, i64* %41, align 8, !dbg !2333
  %576 = load i64, i64* %41, align 8, !dbg !2344
  %577 = icmp eq i64 %576, 0, !dbg !2346
  br i1 %577, label %578, label %579, !dbg !2347

578:                                              ; preds = %564
  br label %647, !dbg !2348

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2349
  %581 = icmp eq i64 %580, -1, !dbg !2351
  br i1 %581, label %582, label %583, !dbg !2352

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2353
  br label %647, !dbg !2355

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2356
  %585 = icmp eq i64 %584, -2, !dbg !2358
  br i1 %585, label %586, label %608, !dbg !2359

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2360
  br label %587, !dbg !2362

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2363
  %589 = load i64, i64* %37, align 8, !dbg !2364
  %590 = add i64 %588, %589, !dbg !2365
  %591 = load i64, i64* %14, align 8, !dbg !2366
  %592 = icmp ult i64 %590, %591, !dbg !2367
  br i1 %592, label %593, label %602, !dbg !2368

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2369
  %595 = load i64, i64* %31, align 8, !dbg !2370
  %596 = load i64, i64* %37, align 8, !dbg !2371
  %597 = add i64 %595, %596, !dbg !2372
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2369
  %599 = load i8, i8* %598, align 1, !dbg !2369
  %600 = zext i8 %599 to i32, !dbg !2369
  %601 = icmp ne i32 %600, 0, !dbg !2368
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2373
  br i1 %603, label %604, label %607, !dbg !2362

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2374
  %606 = add i64 %605, 1, !dbg !2374
  store i64 %606, i64* %37, align 8, !dbg !2374
  br label %587, !dbg !2362, !llvm.loop !2375

607:                                              ; preds = %602
  br label %647, !dbg !2376

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2377
  %610 = trunc i8 %609 to i1, !dbg !2377
  br i1 %610, label %611, label %635, !dbg !2380

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2381
  %613 = icmp eq i32 %612, 2, !dbg !2382
  br i1 %613, label %614, label %635, !dbg !2383

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2384, metadata !DIExpression()), !dbg !2387
  store i64 1, i64* %42, align 8, !dbg !2387
  br label %615, !dbg !2388

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2389
  %617 = load i64, i64* %41, align 8, !dbg !2391
  %618 = icmp ult i64 %616, %617, !dbg !2392
  br i1 %618, label %619, label %634, !dbg !2393

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2394
  %621 = load i64, i64* %31, align 8, !dbg !2395
  %622 = load i64, i64* %37, align 8, !dbg !2396
  %623 = add i64 %621, %622, !dbg !2397
  %624 = load i64, i64* %42, align 8, !dbg !2398
  %625 = add i64 %623, %624, !dbg !2399
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2394
  %627 = load i8, i8* %626, align 1, !dbg !2394
  %628 = zext i8 %627 to i32, !dbg !2394
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2400

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2401

630:                                              ; preds = %619
  br label %631, !dbg !2403

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2404
  %633 = add i64 %632, 1, !dbg !2404
  store i64 %633, i64* %42, align 8, !dbg !2404
  br label %615, !dbg !2405, !llvm.loop !2406

634:                                              ; preds = %615
  br label %635, !dbg !2408

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2409
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2411
  %638 = icmp ne i32 %637, 0, !dbg !2411
  br i1 %638, label %640, label %639, !dbg !2412

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2413
  br label %640, !dbg !2414

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2415
  %642 = load i64, i64* %37, align 8, !dbg !2416
  %643 = add i64 %642, %641, !dbg !2416
  store i64 %643, i64* %37, align 8, !dbg !2416
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2417

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2418
  %650 = trunc i8 %649 to i1, !dbg !2418
  %651 = zext i1 %650 to i8, !dbg !2419
  store i8 %651, i8* %34, align 1, !dbg !2419
  %652 = load i64, i64* %37, align 8, !dbg !2420
  %653 = icmp ult i64 1, %652, !dbg !2422
  br i1 %653, label %660, label %654, !dbg !2423

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2424
  %656 = trunc i8 %655 to i1, !dbg !2424
  br i1 %656, label %657, label %848, !dbg !2425

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2426
  %659 = trunc i8 %658 to i1, !dbg !2426
  br i1 %659, label %848, label %660, !dbg !2427

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2428, metadata !DIExpression()), !dbg !2430
  %661 = load i64, i64* %31, align 8, !dbg !2431
  %662 = load i64, i64* %37, align 8, !dbg !2432
  %663 = add i64 %661, %662, !dbg !2433
  store i64 %663, i64* %43, align 8, !dbg !2430
  br label %664, !dbg !2434

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2435
  %666 = trunc i8 %665 to i1, !dbg !2435
  br i1 %666, label %667, label %772, !dbg !2440

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2441
  %669 = trunc i8 %668 to i1, !dbg !2441
  br i1 %669, label %772, label %670, !dbg !2442

670:                                              ; preds = %667
  br label %671, !dbg !2443

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2445
  %673 = trunc i8 %672 to i1, !dbg !2445
  br i1 %673, label %674, label %675, !dbg !2448

674:                                              ; preds = %671
  br label %1078, !dbg !2445

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2448
  %676 = load i32, i32* %15, align 4, !dbg !2449
  %677 = icmp eq i32 %676, 2, !dbg !2449
  br i1 %677, label %678, label %718, !dbg !2449

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2449
  %680 = trunc i8 %679 to i1, !dbg !2449
  br i1 %680, label %718, label %681, !dbg !2448

681:                                              ; preds = %678
  br label %682, !dbg !2451

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2453
  %684 = load i64, i64* %12, align 8, !dbg !2453
  %685 = icmp ult i64 %683, %684, !dbg !2453
  br i1 %685, label %686, label %690, !dbg !2456

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2453
  %688 = load i64, i64* %21, align 8, !dbg !2453
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2453
  store i8 39, i8* %689, align 1, !dbg !2453
  br label %690, !dbg !2453

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2456
  %692 = add i64 %691, 1, !dbg !2456
  store i64 %692, i64* %21, align 8, !dbg !2456
  br label %693, !dbg !2456

693:                                              ; preds = %690
  br label %694, !dbg !2451

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2457
  %696 = load i64, i64* %12, align 8, !dbg !2457
  %697 = icmp ult i64 %695, %696, !dbg !2457
  br i1 %697, label %698, label %702, !dbg !2460

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2457
  %700 = load i64, i64* %21, align 8, !dbg !2457
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2457
  store i8 36, i8* %701, align 1, !dbg !2457
  br label %702, !dbg !2457

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2460
  %704 = add i64 %703, 1, !dbg !2460
  store i64 %704, i64* %21, align 8, !dbg !2460
  br label %705, !dbg !2460

705:                                              ; preds = %702
  br label %706, !dbg !2451

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2461
  %708 = load i64, i64* %12, align 8, !dbg !2461
  %709 = icmp ult i64 %707, %708, !dbg !2461
  br i1 %709, label %710, label %714, !dbg !2464

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2461
  %712 = load i64, i64* %21, align 8, !dbg !2461
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2461
  store i8 39, i8* %713, align 1, !dbg !2461
  br label %714, !dbg !2461

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2464
  %716 = add i64 %715, 1, !dbg !2464
  store i64 %716, i64* %21, align 8, !dbg !2464
  br label %717, !dbg !2464

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2451
  br label %718, !dbg !2451

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2448

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2465
  %721 = load i64, i64* %12, align 8, !dbg !2465
  %722 = icmp ult i64 %720, %721, !dbg !2465
  br i1 %722, label %723, label %727, !dbg !2468

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2465
  %725 = load i64, i64* %21, align 8, !dbg !2465
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2465
  store i8 92, i8* %726, align 1, !dbg !2465
  br label %727, !dbg !2465

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2468
  %729 = add i64 %728, 1, !dbg !2468
  store i64 %729, i64* %21, align 8, !dbg !2468
  br label %730, !dbg !2468

730:                                              ; preds = %727
  br label %731, !dbg !2448

731:                                              ; preds = %730
  br label %732, !dbg !2469

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2470
  %734 = load i64, i64* %12, align 8, !dbg !2470
  %735 = icmp ult i64 %733, %734, !dbg !2470
  br i1 %735, label %736, label %745, !dbg !2473

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2470
  %738 = zext i8 %737 to i32, !dbg !2470
  %739 = ashr i32 %738, 6, !dbg !2470
  %740 = add nsw i32 48, %739, !dbg !2470
  %741 = trunc i32 %740 to i8, !dbg !2470
  %742 = load i8*, i8** %11, align 8, !dbg !2470
  %743 = load i64, i64* %21, align 8, !dbg !2470
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2470
  store i8 %741, i8* %744, align 1, !dbg !2470
  br label %745, !dbg !2470

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2473
  %747 = add i64 %746, 1, !dbg !2473
  store i64 %747, i64* %21, align 8, !dbg !2473
  br label %748, !dbg !2473

748:                                              ; preds = %745
  br label %749, !dbg !2474

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2475
  %751 = load i64, i64* %12, align 8, !dbg !2475
  %752 = icmp ult i64 %750, %751, !dbg !2475
  br i1 %752, label %753, label %763, !dbg !2478

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2475
  %755 = zext i8 %754 to i32, !dbg !2475
  %756 = ashr i32 %755, 3, !dbg !2475
  %757 = and i32 %756, 7, !dbg !2475
  %758 = add nsw i32 48, %757, !dbg !2475
  %759 = trunc i32 %758 to i8, !dbg !2475
  %760 = load i8*, i8** %11, align 8, !dbg !2475
  %761 = load i64, i64* %21, align 8, !dbg !2475
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2475
  store i8 %759, i8* %762, align 1, !dbg !2475
  br label %763, !dbg !2475

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2478
  %765 = add i64 %764, 1, !dbg !2478
  store i64 %765, i64* %21, align 8, !dbg !2478
  br label %766, !dbg !2478

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2479
  %768 = zext i8 %767 to i32, !dbg !2479
  %769 = and i32 %768, 7, !dbg !2480
  %770 = add nsw i32 48, %769, !dbg !2481
  %771 = trunc i32 %770 to i8, !dbg !2482
  store i8 %771, i8* %35, align 1, !dbg !2483
  br label %789, !dbg !2484

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2485
  %774 = trunc i8 %773 to i1, !dbg !2485
  br i1 %774, label %775, label %788, !dbg !2487

775:                                              ; preds = %772
  br label %776, !dbg !2488

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2490
  %778 = load i64, i64* %12, align 8, !dbg !2490
  %779 = icmp ult i64 %777, %778, !dbg !2490
  br i1 %779, label %780, label %784, !dbg !2493

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2490
  %782 = load i64, i64* %21, align 8, !dbg !2490
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2490
  store i8 92, i8* %783, align 1, !dbg !2490
  br label %784, !dbg !2490

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2493
  %786 = add i64 %785, 1, !dbg !2493
  store i64 %786, i64* %21, align 8, !dbg !2493
  br label %787, !dbg !2493

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2494
  br label %788, !dbg !2495

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2496
  %791 = load i64, i64* %31, align 8, !dbg !2498
  %792 = add i64 %791, 1, !dbg !2499
  %793 = icmp ule i64 %790, %792, !dbg !2500
  br i1 %793, label %794, label %795, !dbg !2501

794:                                              ; preds = %789
  br label %847, !dbg !2502

795:                                              ; preds = %789
  br label %796, !dbg !2503

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2504
  %798 = trunc i8 %797 to i1, !dbg !2504
  br i1 %798, label %799, label %827, !dbg !2504

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2504
  %801 = trunc i8 %800 to i1, !dbg !2504
  br i1 %801, label %827, label %802, !dbg !2507

802:                                              ; preds = %799
  br label %803, !dbg !2508

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2510
  %805 = load i64, i64* %12, align 8, !dbg !2510
  %806 = icmp ult i64 %804, %805, !dbg !2510
  br i1 %806, label %807, label %811, !dbg !2513

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2510
  %809 = load i64, i64* %21, align 8, !dbg !2510
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2510
  store i8 39, i8* %810, align 1, !dbg !2510
  br label %811, !dbg !2510

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2513
  %813 = add i64 %812, 1, !dbg !2513
  store i64 %813, i64* %21, align 8, !dbg !2513
  br label %814, !dbg !2513

814:                                              ; preds = %811
  br label %815, !dbg !2508

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2514
  %817 = load i64, i64* %12, align 8, !dbg !2514
  %818 = icmp ult i64 %816, %817, !dbg !2514
  br i1 %818, label %819, label %823, !dbg !2517

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2514
  %821 = load i64, i64* %21, align 8, !dbg !2514
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2514
  store i8 39, i8* %822, align 1, !dbg !2514
  br label %823, !dbg !2514

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2517
  %825 = add i64 %824, 1, !dbg !2517
  store i64 %825, i64* %21, align 8, !dbg !2517
  br label %826, !dbg !2517

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2508
  br label %827, !dbg !2508

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2507

828:                                              ; preds = %827
  br label %829, !dbg !2518

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2519
  %831 = load i64, i64* %12, align 8, !dbg !2519
  %832 = icmp ult i64 %830, %831, !dbg !2519
  br i1 %832, label %833, label %838, !dbg !2522

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2519
  %835 = load i8*, i8** %11, align 8, !dbg !2519
  %836 = load i64, i64* %21, align 8, !dbg !2519
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2519
  store i8 %834, i8* %837, align 1, !dbg !2519
  br label %838, !dbg !2519

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2522
  %840 = add i64 %839, 1, !dbg !2522
  store i64 %840, i64* %21, align 8, !dbg !2522
  br label %841, !dbg !2522

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2523
  %843 = load i64, i64* %31, align 8, !dbg !2524
  %844 = add i64 %843, 1, !dbg !2524
  store i64 %844, i64* %31, align 8, !dbg !2524
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2523
  %846 = load i8, i8* %845, align 1, !dbg !2523
  store i8 %846, i8* %35, align 1, !dbg !2525
  br label %664, !dbg !2526, !llvm.loop !2527

847:                                              ; preds = %794
  br label %942, !dbg !2530

848:                                              ; preds = %657, %654
  br label %849, !dbg !2531

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2532
  %851 = trunc i8 %850 to i1, !dbg !2532
  br i1 %851, label %852, label %855, !dbg !2534

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2535
  %854 = icmp ne i32 %853, 2, !dbg !2536
  br i1 %854, label %858, label %855, !dbg !2537

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2538
  %857 = trunc i8 %856 to i1, !dbg !2538
  br i1 %857, label %858, label %875, !dbg !2539

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2540
  %860 = icmp ne i32* %859, null, !dbg !2540
  br i1 %860, label %861, label %875, !dbg !2541

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2542
  %863 = load i8, i8* %35, align 1, !dbg !2543
  %864 = zext i8 %863 to i64, !dbg !2543
  %865 = udiv i64 %864, 32, !dbg !2544
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2542
  %867 = load i32, i32* %866, align 4, !dbg !2542
  %868 = load i8, i8* %35, align 1, !dbg !2545
  %869 = zext i8 %868 to i64, !dbg !2545
  %870 = urem i64 %869, 32, !dbg !2546
  %871 = trunc i64 %870 to i32, !dbg !2547
  %872 = lshr i32 %867, %871, !dbg !2547
  %873 = and i32 %872, 1, !dbg !2548
  %874 = icmp ne i32 %873, 0, !dbg !2548
  br i1 %874, label %879, label %875, !dbg !2549

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2550
  %877 = trunc i8 %876 to i1, !dbg !2550
  br i1 %877, label %879, label %878, !dbg !2551

878:                                              ; preds = %875
  br label %942, !dbg !2552

879:                                              ; preds = %875, %861
  br label %880, !dbg !2550

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2553), !dbg !2554
  br label %881, !dbg !2555

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2556
  %883 = trunc i8 %882 to i1, !dbg !2556
  br i1 %883, label %884, label %885, !dbg !2559

884:                                              ; preds = %881
  br label %1078, !dbg !2556

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2559
  %886 = load i32, i32* %15, align 4, !dbg !2560
  %887 = icmp eq i32 %886, 2, !dbg !2560
  br i1 %887, label %888, label %928, !dbg !2560

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2560
  %890 = trunc i8 %889 to i1, !dbg !2560
  br i1 %890, label %928, label %891, !dbg !2559

891:                                              ; preds = %888
  br label %892, !dbg !2562

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2564
  %894 = load i64, i64* %12, align 8, !dbg !2564
  %895 = icmp ult i64 %893, %894, !dbg !2564
  br i1 %895, label %896, label %900, !dbg !2567

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2564
  %898 = load i64, i64* %21, align 8, !dbg !2564
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2564
  store i8 39, i8* %899, align 1, !dbg !2564
  br label %900, !dbg !2564

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2567
  %902 = add i64 %901, 1, !dbg !2567
  store i64 %902, i64* %21, align 8, !dbg !2567
  br label %903, !dbg !2567

903:                                              ; preds = %900
  br label %904, !dbg !2562

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2568
  %906 = load i64, i64* %12, align 8, !dbg !2568
  %907 = icmp ult i64 %905, %906, !dbg !2568
  br i1 %907, label %908, label %912, !dbg !2571

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2568
  %910 = load i64, i64* %21, align 8, !dbg !2568
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2568
  store i8 36, i8* %911, align 1, !dbg !2568
  br label %912, !dbg !2568

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2571
  %914 = add i64 %913, 1, !dbg !2571
  store i64 %914, i64* %21, align 8, !dbg !2571
  br label %915, !dbg !2571

915:                                              ; preds = %912
  br label %916, !dbg !2562

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2572
  %918 = load i64, i64* %12, align 8, !dbg !2572
  %919 = icmp ult i64 %917, %918, !dbg !2572
  br i1 %919, label %920, label %924, !dbg !2575

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2572
  %922 = load i64, i64* %21, align 8, !dbg !2572
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2572
  store i8 39, i8* %923, align 1, !dbg !2572
  br label %924, !dbg !2572

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2575
  %926 = add i64 %925, 1, !dbg !2575
  store i64 %926, i64* %21, align 8, !dbg !2575
  br label %927, !dbg !2575

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2562
  br label %928, !dbg !2562

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2559

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2576
  %931 = load i64, i64* %12, align 8, !dbg !2576
  %932 = icmp ult i64 %930, %931, !dbg !2576
  br i1 %932, label %933, label %937, !dbg !2579

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2576
  %935 = load i64, i64* %21, align 8, !dbg !2576
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2576
  store i8 92, i8* %936, align 1, !dbg !2576
  br label %937, !dbg !2576

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2579
  %939 = add i64 %938, 1, !dbg !2579
  store i64 %939, i64* %21, align 8, !dbg !2579
  br label %940, !dbg !2579

940:                                              ; preds = %937
  br label %941, !dbg !2559

941:                                              ; preds = %940
  br label %942, !dbg !2559

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2580), !dbg !2581
  br label %943, !dbg !2582

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2583
  %945 = trunc i8 %944 to i1, !dbg !2583
  br i1 %945, label %946, label %974, !dbg !2583

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2583
  %948 = trunc i8 %947 to i1, !dbg !2583
  br i1 %948, label %974, label %949, !dbg !2586

949:                                              ; preds = %946
  br label %950, !dbg !2587

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2589
  %952 = load i64, i64* %12, align 8, !dbg !2589
  %953 = icmp ult i64 %951, %952, !dbg !2589
  br i1 %953, label %954, label %958, !dbg !2592

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2589
  %956 = load i64, i64* %21, align 8, !dbg !2589
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2589
  store i8 39, i8* %957, align 1, !dbg !2589
  br label %958, !dbg !2589

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2592
  %960 = add i64 %959, 1, !dbg !2592
  store i64 %960, i64* %21, align 8, !dbg !2592
  br label %961, !dbg !2592

961:                                              ; preds = %958
  br label %962, !dbg !2587

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2593
  %964 = load i64, i64* %12, align 8, !dbg !2593
  %965 = icmp ult i64 %963, %964, !dbg !2593
  br i1 %965, label %966, label %970, !dbg !2596

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2593
  %968 = load i64, i64* %21, align 8, !dbg !2593
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2593
  store i8 39, i8* %969, align 1, !dbg !2593
  br label %970, !dbg !2593

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2596
  %972 = add i64 %971, 1, !dbg !2596
  store i64 %972, i64* %21, align 8, !dbg !2596
  br label %973, !dbg !2596

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2587
  br label %974, !dbg !2587

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2586

975:                                              ; preds = %974
  br label %976, !dbg !2597

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2598
  %978 = load i64, i64* %12, align 8, !dbg !2598
  %979 = icmp ult i64 %977, %978, !dbg !2598
  br i1 %979, label %980, label %985, !dbg !2601

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2598
  %982 = load i8*, i8** %11, align 8, !dbg !2598
  %983 = load i64, i64* %21, align 8, !dbg !2598
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2598
  store i8 %981, i8* %984, align 1, !dbg !2598
  br label %985, !dbg !2598

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2601
  %987 = add i64 %986, 1, !dbg !2601
  store i64 %987, i64* %21, align 8, !dbg !2601
  br label %988, !dbg !2601

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2602
  %990 = trunc i8 %989 to i1, !dbg !2602
  br i1 %990, label %992, label %991, !dbg !2604

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2605
  br label %992, !dbg !2606

992:                                              ; preds = %991, %988
  br label %993, !dbg !2607

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2608
  %995 = add i64 %994, 1, !dbg !2608
  store i64 %995, i64* %31, align 8, !dbg !2608
  br label %139, !dbg !2609, !llvm.loop !2610

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2612
  %998 = icmp eq i64 %997, 0, !dbg !2614
  br i1 %998, label %999, label %1006, !dbg !2615

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2616
  %1001 = icmp eq i32 %1000, 2, !dbg !2617
  br i1 %1001, label %1002, label %1006, !dbg !2618

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2619
  %1004 = trunc i8 %1003 to i1, !dbg !2619
  br i1 %1004, label %1005, label %1006, !dbg !2620

1005:                                             ; preds = %1002
  br label %1078, !dbg !2621

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2622
  %1008 = icmp eq i32 %1007, 2, !dbg !2624
  br i1 %1008, label %1009, label %1038, !dbg !2625

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2626
  %1011 = trunc i8 %1010 to i1, !dbg !2626
  br i1 %1011, label %1038, label %1012, !dbg !2627

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2628
  %1014 = trunc i8 %1013 to i1, !dbg !2628
  br i1 %1014, label %1015, label %1038, !dbg !2629

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2630
  %1017 = trunc i8 %1016 to i1, !dbg !2630
  br i1 %1017, label %1018, label %1028, !dbg !2633

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2634
  %1020 = load i64, i64* %22, align 8, !dbg !2635
  %1021 = load i8*, i8** %13, align 8, !dbg !2636
  %1022 = load i64, i64* %14, align 8, !dbg !2637
  %1023 = load i32, i32* %16, align 4, !dbg !2638
  %1024 = load i32*, i32** %17, align 8, !dbg !2639
  %1025 = load i8*, i8** %18, align 8, !dbg !2640
  %1026 = load i8*, i8** %19, align 8, !dbg !2641
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2642
  store i64 %1027, i64* %10, align 8, !dbg !2643
  br label %1096, !dbg !2643

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2644
  %1030 = icmp ne i64 %1029, 0, !dbg !2644
  br i1 %1030, label %1036, label %1031, !dbg !2646

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2647
  %1033 = icmp ne i64 %1032, 0, !dbg !2647
  br i1 %1033, label %1034, label %1036, !dbg !2648

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2649
  store i64 %1035, i64* %12, align 8, !dbg !2651
  store i64 0, i64* %21, align 8, !dbg !2652
  br label %51, !dbg !2653

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2654

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2655
  %1040 = icmp ne i8* %1039, null, !dbg !2655
  br i1 %1040, label %1041, label %1068, !dbg !2657

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2658
  %1043 = trunc i8 %1042 to i1, !dbg !2658
  br i1 %1043, label %1068, label %1044, !dbg !2659

1044:                                             ; preds = %1041
  br label %1045, !dbg !2660

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2661
  %1047 = load i8, i8* %1046, align 1, !dbg !2664
  %1048 = icmp ne i8 %1047, 0, !dbg !2665
  br i1 %1048, label %1049, label %1067, !dbg !2665

1049:                                             ; preds = %1045
  br label %1050, !dbg !2666

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2667
  %1052 = load i64, i64* %12, align 8, !dbg !2667
  %1053 = icmp ult i64 %1051, %1052, !dbg !2667
  br i1 %1053, label %1054, label %1060, !dbg !2670

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2667
  %1056 = load i8, i8* %1055, align 1, !dbg !2667
  %1057 = load i8*, i8** %11, align 8, !dbg !2667
  %1058 = load i64, i64* %21, align 8, !dbg !2667
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2667
  store i8 %1056, i8* %1059, align 1, !dbg !2667
  br label %1060, !dbg !2667

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2670
  %1062 = add i64 %1061, 1, !dbg !2670
  store i64 %1062, i64* %21, align 8, !dbg !2670
  br label %1063, !dbg !2670

1063:                                             ; preds = %1060
  br label %1064, !dbg !2670

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2671
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2671
  store i8* %1066, i8** %23, align 8, !dbg !2671
  br label %1045, !dbg !2672, !llvm.loop !2673

1067:                                             ; preds = %1045
  br label %1068, !dbg !2674

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2675
  %1070 = load i64, i64* %12, align 8, !dbg !2677
  %1071 = icmp ult i64 %1069, %1070, !dbg !2678
  br i1 %1071, label %1072, label %1076, !dbg !2679

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2680
  %1074 = load i64, i64* %21, align 8, !dbg !2681
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2680
  store i8 0, i8* %1075, align 1, !dbg !2682
  br label %1076, !dbg !2680

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2683
  store i64 %1077, i64* %10, align 8, !dbg !2684
  br label %1096, !dbg !2684

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2685), !dbg !2686
  %1079 = load i32, i32* %15, align 4, !dbg !2687
  %1080 = icmp eq i32 %1079, 2, !dbg !2689
  br i1 %1080, label %1081, label %1085, !dbg !2690

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2691
  %1083 = trunc i8 %1082 to i1, !dbg !2691
  br i1 %1083, label %1084, label %1085, !dbg !2692

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2693
  br label %1085, !dbg !2694

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2695
  %1087 = load i64, i64* %12, align 8, !dbg !2696
  %1088 = load i8*, i8** %13, align 8, !dbg !2697
  %1089 = load i64, i64* %14, align 8, !dbg !2698
  %1090 = load i32, i32* %15, align 4, !dbg !2699
  %1091 = load i32, i32* %16, align 4, !dbg !2700
  %1092 = and i32 %1091, -3, !dbg !2701
  %1093 = load i8*, i8** %18, align 8, !dbg !2702
  %1094 = load i8*, i8** %19, align 8, !dbg !2703
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2704
  store i64 %1095, i64* %10, align 8, !dbg !2705
  br label %1096, !dbg !2705

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2706
  ret i64 %1097, !dbg !2706
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !169 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2707, metadata !DIExpression()), !dbg !2708
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2709, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2711, metadata !DIExpression()), !dbg !2712
  %9 = load i8*, i8** %4, align 8, !dbg !2713
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.107, i64 0, i64 0), i8* noundef %9) #18, !dbg !2713
  store i8* %10, i8** %6, align 8, !dbg !2712
  %11 = load i8*, i8** %6, align 8, !dbg !2714
  %12 = load i8*, i8** %4, align 8, !dbg !2716
  %13 = icmp ne i8* %11, %12, !dbg !2717
  br i1 %13, label %14, label %16, !dbg !2718

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2719
  store i8* %15, i8** %3, align 8, !dbg !2720
  br label %37, !dbg !2720

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2721, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2723, metadata !DIExpression()), !dbg !2724
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2725
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2726
  %18 = icmp eq i64 %17, 3, !dbg !2728
  br i1 %18, label %19, label %32, !dbg !2729

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2730
  %21 = icmp eq i32 %20, 8216, !dbg !2731
  br i1 %21, label %22, label %32, !dbg !2732

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2733
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2733
  %25 = load i8, i8* %24, align 1, !dbg !2733
  %26 = zext i8 %25 to i32, !dbg !2733
  %27 = icmp eq i32 %26, 39, !dbg !2734
  %28 = zext i1 %27 to i32, !dbg !2734
  %29 = sext i32 %28 to i64, !dbg !2735
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2735
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2735
  store i8* %31, i8** %3, align 8, !dbg !2736
  br label %37, !dbg !2736

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2737
  %34 = icmp eq i32 %33, 9, !dbg !2738
  %35 = zext i1 %34 to i64, !dbg !2737
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.104, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), !dbg !2737
  store i8* %36, i8** %3, align 8, !dbg !2739
  br label %37, !dbg !2739

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2740
  ret i8* %38, !dbg !2740
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2741 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2744, metadata !DIExpression()), !dbg !2745
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2746, metadata !DIExpression()), !dbg !2747
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2748, metadata !DIExpression()), !dbg !2749
  %7 = load i8*, i8** %4, align 8, !dbg !2750
  %8 = load i64, i64* %5, align 8, !dbg !2751
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2752
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2753
  ret i8* %10, !dbg !2754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2755 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2758, metadata !DIExpression()), !dbg !2759
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2760, metadata !DIExpression()), !dbg !2761
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2762, metadata !DIExpression()), !dbg !2763
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2764, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2766, metadata !DIExpression()), !dbg !2767
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2768
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2768
  br i1 %15, label %16, label %18, !dbg !2768

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2769
  br label %19, !dbg !2768

18:                                               ; preds = %4
  br label %19, !dbg !2768

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2768
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2767
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2770, metadata !DIExpression()), !dbg !2771
  %21 = call i32* @__errno_location() #21, !dbg !2772
  %22 = load i32, i32* %21, align 4, !dbg !2772
  store i32 %22, i32* %10, align 4, !dbg !2771
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2773, metadata !DIExpression()), !dbg !2774
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2775
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2776
  %25 = load i32, i32* %24, align 4, !dbg !2776
  %26 = load i64*, i64** %7, align 8, !dbg !2777
  %27 = icmp ne i64* %26, null, !dbg !2777
  %28 = zext i1 %27 to i64, !dbg !2777
  %29 = select i1 %27, i32 0, i32 1, !dbg !2777
  %30 = or i32 %25, %29, !dbg !2778
  store i32 %30, i32* %11, align 4, !dbg !2774
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2779, metadata !DIExpression()), !dbg !2780
  %31 = load i8*, i8** %5, align 8, !dbg !2781
  %32 = load i64, i64* %6, align 8, !dbg !2782
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2783
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2784
  %35 = load i32, i32* %34, align 8, !dbg !2784
  %36 = load i32, i32* %11, align 4, !dbg !2785
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2786
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2787
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2786
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2788
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2789
  %42 = load i8*, i8** %41, align 8, !dbg !2789
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2790
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2791
  %45 = load i8*, i8** %44, align 8, !dbg !2791
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2792
  %47 = add i64 %46, 1, !dbg !2793
  store i64 %47, i64* %12, align 8, !dbg !2780
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2794, metadata !DIExpression()), !dbg !2795
  %48 = load i64, i64* %12, align 8, !dbg !2796
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2797
  store i8* %49, i8** %13, align 8, !dbg !2795
  %50 = load i8*, i8** %13, align 8, !dbg !2798
  %51 = load i64, i64* %12, align 8, !dbg !2799
  %52 = load i8*, i8** %5, align 8, !dbg !2800
  %53 = load i64, i64* %6, align 8, !dbg !2801
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2802
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2803
  %56 = load i32, i32* %55, align 8, !dbg !2803
  %57 = load i32, i32* %11, align 4, !dbg !2804
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2805
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2806
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2805
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2807
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2808
  %63 = load i8*, i8** %62, align 8, !dbg !2808
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2809
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2810
  %66 = load i8*, i8** %65, align 8, !dbg !2810
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2811
  %68 = load i32, i32* %10, align 4, !dbg !2812
  %69 = call i32* @__errno_location() #21, !dbg !2813
  store i32 %68, i32* %69, align 4, !dbg !2814
  %70 = load i64*, i64** %7, align 8, !dbg !2815
  %71 = icmp ne i64* %70, null, !dbg !2815
  br i1 %71, label %72, label %76, !dbg !2817

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2818
  %74 = sub i64 %73, 1, !dbg !2819
  %75 = load i64*, i64** %7, align 8, !dbg !2820
  store i64 %74, i64* %75, align 8, !dbg !2821
  br label %76, !dbg !2822

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2823
  ret i8* %77, !dbg !2824
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2825 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2826, metadata !DIExpression()), !dbg !2827
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2828
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2827
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2829, metadata !DIExpression()), !dbg !2831
  store i32 1, i32* %2, align 4, !dbg !2831
  br label %4, !dbg !2832

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2833
  %6 = load i32, i32* @nslots, align 4, !dbg !2835
  %7 = icmp slt i32 %5, %6, !dbg !2836
  br i1 %7, label %8, label %18, !dbg !2837

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2838
  %10 = load i32, i32* %2, align 4, !dbg !2839
  %11 = sext i32 %10 to i64, !dbg !2838
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2838
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2840
  %14 = load i8*, i8** %13, align 8, !dbg !2840
  call void @free(i8* noundef %14) #18, !dbg !2841
  br label %15, !dbg !2841

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2842
  %17 = add nsw i32 %16, 1, !dbg !2842
  store i32 %17, i32* %2, align 4, !dbg !2842
  br label %4, !dbg !2843, !llvm.loop !2844

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2846
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2846
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2848
  %22 = load i8*, i8** %21, align 8, !dbg !2848
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2849
  br i1 %23, label %24, label %29, !dbg !2850

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2851
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2851
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2853
  %28 = load i8*, i8** %27, align 8, !dbg !2853
  call void @free(i8* noundef %28) #18, !dbg !2854
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2855
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2856
  br label %29, !dbg !2857

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2858
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2860
  br i1 %31, label %32, label %35, !dbg !2861

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2862
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2862
  call void @free(i8* noundef %34) #18, !dbg !2864
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2865
  br label %35, !dbg !2866

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2867
  ret void, !dbg !2868
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2869 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2872, metadata !DIExpression()), !dbg !2873
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2874, metadata !DIExpression()), !dbg !2875
  %5 = load i32, i32* %3, align 4, !dbg !2876
  %6 = load i8*, i8** %4, align 8, !dbg !2877
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2878
  ret i8* %7, !dbg !2879
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2880 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2883, metadata !DIExpression()), !dbg !2884
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2885, metadata !DIExpression()), !dbg !2886
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2887, metadata !DIExpression()), !dbg !2888
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2889, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2891, metadata !DIExpression()), !dbg !2892
  %18 = call i32* @__errno_location() #21, !dbg !2893
  %19 = load i32, i32* %18, align 4, !dbg !2893
  store i32 %19, i32* %9, align 4, !dbg !2892
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2894, metadata !DIExpression()), !dbg !2895
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2896
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2895
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2897, metadata !DIExpression()), !dbg !2898
  store i32 2147483647, i32* %11, align 4, !dbg !2898
  %21 = load i32, i32* %5, align 4, !dbg !2899
  %22 = icmp sle i32 0, %21, !dbg !2901
  br i1 %22, label %23, label %27, !dbg !2902

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2903
  %25 = load i32, i32* %11, align 4, !dbg !2904
  %26 = icmp slt i32 %24, %25, !dbg !2905
  br i1 %26, label %28, label %27, !dbg !2906

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2907
  unreachable, !dbg !2907

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2908
  %30 = load i32, i32* %5, align 4, !dbg !2910
  %31 = icmp sle i32 %29, %30, !dbg !2911
  br i1 %31, label %32, label %73, !dbg !2912

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2913, metadata !DIExpression()), !dbg !2915
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2916
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2917
  %35 = zext i1 %34 to i8, !dbg !2915
  store i8 %35, i8* %12, align 1, !dbg !2915
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2918, metadata !DIExpression()), !dbg !2919
  %36 = load i32, i32* @nslots, align 4, !dbg !2920
  %37 = sext i32 %36 to i64, !dbg !2920
  store i64 %37, i64* %13, align 8, !dbg !2919
  %38 = load i8, i8* %12, align 1, !dbg !2921
  %39 = trunc i8 %38 to i1, !dbg !2921
  br i1 %39, label %40, label %41, !dbg !2921

40:                                               ; preds = %32
  br label %43, !dbg !2921

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2922
  br label %43, !dbg !2921

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2921
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2921
  %46 = load i32, i32* %5, align 4, !dbg !2923
  %47 = load i32, i32* @nslots, align 4, !dbg !2924
  %48 = sub nsw i32 %46, %47, !dbg !2925
  %49 = add nsw i32 %48, 1, !dbg !2926
  %50 = sext i32 %49 to i64, !dbg !2923
  %51 = load i32, i32* %11, align 4, !dbg !2927
  %52 = sext i32 %51 to i64, !dbg !2927
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2928
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2928
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2929
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2930
  %55 = load i8, i8* %12, align 1, !dbg !2931
  %56 = trunc i8 %55 to i1, !dbg !2931
  br i1 %56, label %57, label %60, !dbg !2933

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2934
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2935
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2935
  br label %60, !dbg !2936

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2937
  %62 = load i32, i32* @nslots, align 4, !dbg !2938
  %63 = sext i32 %62 to i64, !dbg !2939
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2939
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2940
  %66 = load i64, i64* %13, align 8, !dbg !2941
  %67 = load i32, i32* @nslots, align 4, !dbg !2942
  %68 = sext i32 %67 to i64, !dbg !2942
  %69 = sub nsw i64 %66, %68, !dbg !2943
  %70 = mul i64 %69, 16, !dbg !2944
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2940
  %71 = load i64, i64* %13, align 8, !dbg !2945
  %72 = trunc i64 %71 to i32, !dbg !2945
  store i32 %72, i32* @nslots, align 4, !dbg !2946
  br label %73, !dbg !2947

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2948, metadata !DIExpression()), !dbg !2950
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2951
  %75 = load i32, i32* %5, align 4, !dbg !2952
  %76 = sext i32 %75 to i64, !dbg !2951
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2951
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2953
  %79 = load i64, i64* %78, align 8, !dbg !2953
  store i64 %79, i64* %14, align 8, !dbg !2950
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2954, metadata !DIExpression()), !dbg !2955
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2956
  %81 = load i32, i32* %5, align 4, !dbg !2957
  %82 = sext i32 %81 to i64, !dbg !2956
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2956
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2958
  %85 = load i8*, i8** %84, align 8, !dbg !2958
  store i8* %85, i8** %15, align 8, !dbg !2955
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2959, metadata !DIExpression()), !dbg !2960
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2961
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2962
  %88 = load i32, i32* %87, align 4, !dbg !2962
  %89 = or i32 %88, 1, !dbg !2963
  store i32 %89, i32* %16, align 4, !dbg !2960
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2964, metadata !DIExpression()), !dbg !2965
  %90 = load i8*, i8** %15, align 8, !dbg !2966
  %91 = load i64, i64* %14, align 8, !dbg !2967
  %92 = load i8*, i8** %6, align 8, !dbg !2968
  %93 = load i64, i64* %7, align 8, !dbg !2969
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2970
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2971
  %96 = load i32, i32* %95, align 8, !dbg !2971
  %97 = load i32, i32* %16, align 4, !dbg !2972
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2973
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2974
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2973
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2975
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2976
  %103 = load i8*, i8** %102, align 8, !dbg !2976
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2977
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2978
  %106 = load i8*, i8** %105, align 8, !dbg !2978
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2979
  store i64 %107, i64* %17, align 8, !dbg !2965
  %108 = load i64, i64* %14, align 8, !dbg !2980
  %109 = load i64, i64* %17, align 8, !dbg !2982
  %110 = icmp ule i64 %108, %109, !dbg !2983
  br i1 %110, label %111, label %149, !dbg !2984

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2985
  %113 = add i64 %112, 1, !dbg !2987
  store i64 %113, i64* %14, align 8, !dbg !2988
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2989
  %115 = load i32, i32* %5, align 4, !dbg !2990
  %116 = sext i32 %115 to i64, !dbg !2989
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2989
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2991
  store i64 %113, i64* %118, align 8, !dbg !2992
  %119 = load i8*, i8** %15, align 8, !dbg !2993
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2995
  br i1 %120, label %121, label %123, !dbg !2996

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2997
  call void @free(i8* noundef %122) #18, !dbg !2998
  br label %123, !dbg !2998

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2999
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !3000
  store i8* %125, i8** %15, align 8, !dbg !3001
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3002
  %127 = load i32, i32* %5, align 4, !dbg !3003
  %128 = sext i32 %127 to i64, !dbg !3002
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !3002
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !3004
  store i8* %125, i8** %130, align 8, !dbg !3005
  %131 = load i8*, i8** %15, align 8, !dbg !3006
  %132 = load i64, i64* %14, align 8, !dbg !3007
  %133 = load i8*, i8** %6, align 8, !dbg !3008
  %134 = load i64, i64* %7, align 8, !dbg !3009
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3010
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !3011
  %137 = load i32, i32* %136, align 8, !dbg !3011
  %138 = load i32, i32* %16, align 4, !dbg !3012
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3013
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !3014
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !3013
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3015
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !3016
  %144 = load i8*, i8** %143, align 8, !dbg !3016
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3017
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !3018
  %147 = load i8*, i8** %146, align 8, !dbg !3018
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !3019
  br label %149, !dbg !3020

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !3021
  %151 = call i32* @__errno_location() #21, !dbg !3022
  store i32 %150, i32* %151, align 4, !dbg !3023
  %152 = load i8*, i8** %15, align 8, !dbg !3024
  ret i8* %152, !dbg !3025
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3026 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3029, metadata !DIExpression()), !dbg !3030
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3031, metadata !DIExpression()), !dbg !3032
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3033, metadata !DIExpression()), !dbg !3034
  %7 = load i32, i32* %4, align 4, !dbg !3035
  %8 = load i8*, i8** %5, align 8, !dbg !3036
  %9 = load i64, i64* %6, align 8, !dbg !3037
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !3038
  ret i8* %10, !dbg !3039
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !3040 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3043, metadata !DIExpression()), !dbg !3044
  %3 = load i8*, i8** %2, align 8, !dbg !3045
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !3046
  ret i8* %4, !dbg !3047
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3048 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3051, metadata !DIExpression()), !dbg !3052
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3053, metadata !DIExpression()), !dbg !3054
  %5 = load i8*, i8** %3, align 8, !dbg !3055
  %6 = load i64, i64* %4, align 8, !dbg !3056
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3057
  ret i8* %7, !dbg !3058
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3059 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3062, metadata !DIExpression()), !dbg !3063
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3064, metadata !DIExpression()), !dbg !3065
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3066, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3068, metadata !DIExpression()), !dbg !3069
  %8 = load i32, i32* %5, align 4, !dbg !3070
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !3071
  %9 = load i32, i32* %4, align 4, !dbg !3072
  %10 = load i8*, i8** %6, align 8, !dbg !3073
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3074
  ret i8* %11, !dbg !3075
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !3076 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3081, metadata !DIExpression()), !dbg !3082
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3082
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3082
  %5 = load i32, i32* %3, align 4, !dbg !3083
  %6 = icmp eq i32 %5, 10, !dbg !3085
  br i1 %6, label %7, label %8, !dbg !3086

7:                                                ; preds = %2
  call void @abort() #19, !dbg !3087
  unreachable, !dbg !3087

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3088
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3089
  store i32 %9, i32* %10, align 8, !dbg !3090
  ret void, !dbg !3091
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3092 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3095, metadata !DIExpression()), !dbg !3096
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3097, metadata !DIExpression()), !dbg !3098
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3099, metadata !DIExpression()), !dbg !3100
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3101, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3103, metadata !DIExpression()), !dbg !3104
  %10 = load i32, i32* %6, align 4, !dbg !3105
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !3106
  %11 = load i32, i32* %5, align 4, !dbg !3107
  %12 = load i8*, i8** %7, align 8, !dbg !3108
  %13 = load i64, i64* %8, align 8, !dbg !3109
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !3110
  ret i8* %14, !dbg !3111
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !3112 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3115, metadata !DIExpression()), !dbg !3116
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3117, metadata !DIExpression()), !dbg !3118
  %5 = load i32, i32* %3, align 4, !dbg !3119
  %6 = load i8*, i8** %4, align 8, !dbg !3120
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !3121
  ret i8* %7, !dbg !3122
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3123 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3126, metadata !DIExpression()), !dbg !3127
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3128, metadata !DIExpression()), !dbg !3129
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3130, metadata !DIExpression()), !dbg !3131
  %7 = load i32, i32* %4, align 4, !dbg !3132
  %8 = load i8*, i8** %5, align 8, !dbg !3133
  %9 = load i64, i64* %6, align 8, !dbg !3134
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3135
  ret i8* %10, !dbg !3136
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !3137 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3140, metadata !DIExpression()), !dbg !3141
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3142, metadata !DIExpression()), !dbg !3143
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3146, metadata !DIExpression()), !dbg !3147
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3148
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3148
  %9 = load i8, i8* %6, align 1, !dbg !3149
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !3150
  %11 = load i8*, i8** %4, align 8, !dbg !3151
  %12 = load i64, i64* %5, align 8, !dbg !3152
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !3153
  ret i8* %13, !dbg !3154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !3155 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3158, metadata !DIExpression()), !dbg !3159
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3160, metadata !DIExpression()), !dbg !3161
  %5 = load i8*, i8** %3, align 8, !dbg !3162
  %6 = load i8, i8* %4, align 1, !dbg !3163
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3164
  ret i8* %7, !dbg !3165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3166 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3167, metadata !DIExpression()), !dbg !3168
  %3 = load i8*, i8** %2, align 8, !dbg !3169
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3170
  ret i8* %4, !dbg !3171
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3172 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3173, metadata !DIExpression()), !dbg !3174
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3175, metadata !DIExpression()), !dbg !3176
  %5 = load i8*, i8** %3, align 8, !dbg !3177
  %6 = load i64, i64* %4, align 8, !dbg !3178
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3179
  ret i8* %7, !dbg !3180
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3181 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3182, metadata !DIExpression()), !dbg !3183
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3184, metadata !DIExpression()), !dbg !3185
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3186, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3188, metadata !DIExpression()), !dbg !3189
  %9 = load i32, i32* %5, align 4, !dbg !3190
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3191
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3191
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3191
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3191
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3192
  %13 = load i32, i32* %4, align 4, !dbg !3193
  %14 = load i8*, i8** %6, align 8, !dbg !3194
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3195
  ret i8* %15, !dbg !3196
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3197 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3200, metadata !DIExpression()), !dbg !3201
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3202, metadata !DIExpression()), !dbg !3203
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3204, metadata !DIExpression()), !dbg !3205
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3206, metadata !DIExpression()), !dbg !3207
  %9 = load i32, i32* %5, align 4, !dbg !3208
  %10 = load i8*, i8** %6, align 8, !dbg !3209
  %11 = load i8*, i8** %7, align 8, !dbg !3210
  %12 = load i8*, i8** %8, align 8, !dbg !3211
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3212
  ret i8* %13, !dbg !3213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3214 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3217, metadata !DIExpression()), !dbg !3218
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3219, metadata !DIExpression()), !dbg !3220
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3221, metadata !DIExpression()), !dbg !3222
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3223, metadata !DIExpression()), !dbg !3224
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3225, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3227, metadata !DIExpression()), !dbg !3228
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3229
  %13 = load i8*, i8** %7, align 8, !dbg !3230
  %14 = load i8*, i8** %8, align 8, !dbg !3231
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3232
  %15 = load i32, i32* %6, align 4, !dbg !3233
  %16 = load i8*, i8** %9, align 8, !dbg !3234
  %17 = load i64, i64* %10, align 8, !dbg !3235
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3236
  ret i8* %18, !dbg !3237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3238 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3241, metadata !DIExpression()), !dbg !3242
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3243, metadata !DIExpression()), !dbg !3244
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3245, metadata !DIExpression()), !dbg !3246
  %7 = load i8*, i8** %4, align 8, !dbg !3247
  %8 = load i8*, i8** %5, align 8, !dbg !3248
  %9 = load i8*, i8** %6, align 8, !dbg !3249
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3250
  ret i8* %10, !dbg !3251
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3252 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3255, metadata !DIExpression()), !dbg !3256
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3259, metadata !DIExpression()), !dbg !3260
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3261, metadata !DIExpression()), !dbg !3262
  %9 = load i8*, i8** %5, align 8, !dbg !3263
  %10 = load i8*, i8** %6, align 8, !dbg !3264
  %11 = load i8*, i8** %7, align 8, !dbg !3265
  %12 = load i64, i64* %8, align 8, !dbg !3266
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3267
  ret i8* %13, !dbg !3268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3269 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3272, metadata !DIExpression()), !dbg !3273
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3274, metadata !DIExpression()), !dbg !3275
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3276, metadata !DIExpression()), !dbg !3277
  %7 = load i32, i32* %4, align 4, !dbg !3278
  %8 = load i8*, i8** %5, align 8, !dbg !3279
  %9 = load i64, i64* %6, align 8, !dbg !3280
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3281
  ret i8* %10, !dbg !3282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3283 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3286, metadata !DIExpression()), !dbg !3287
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3288, metadata !DIExpression()), !dbg !3289
  %5 = load i8*, i8** %3, align 8, !dbg !3290
  %6 = load i64, i64* %4, align 8, !dbg !3291
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3292
  ret i8* %7, !dbg !3293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3294 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3297, metadata !DIExpression()), !dbg !3298
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3299, metadata !DIExpression()), !dbg !3300
  %5 = load i32, i32* %3, align 4, !dbg !3301
  %6 = load i8*, i8** %4, align 8, !dbg !3302
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3303
  ret i8* %7, !dbg !3304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3305 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3308, metadata !DIExpression()), !dbg !3309
  %3 = load i8*, i8** %2, align 8, !dbg !3310
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3311
  ret i8* %4, !dbg !3312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getcon(i8** noundef %0) #4 !dbg !3313 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3317, metadata !DIExpression()), !dbg !3318
  %3 = call i32* @__errno_location() #21, !dbg !3319
  store i32 95, i32* %3, align 4, !dbg !3320
  ret i32 -1, !dbg !3321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getcon_raw(i8** noundef %0) #4 !dbg !3322 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3323, metadata !DIExpression()), !dbg !3324
  %3 = call i32* @__errno_location() #21, !dbg !3325
  store i32 95, i32* %3, align 4, !dbg !3326
  ret i32 -1, !dbg !3327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freecon(i8* noundef %0) #4 !dbg !3328 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3331, metadata !DIExpression()), !dbg !3332
  ret void, !dbg !3333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfscreatecon(i8** noundef %0) #4 !dbg !3334 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3335, metadata !DIExpression()), !dbg !3336
  %3 = call i32* @__errno_location() #21, !dbg !3337
  store i32 95, i32* %3, align 4, !dbg !3338
  ret i32 -1, !dbg !3339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfscreatecon_raw(i8** noundef %0) #4 !dbg !3340 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3341, metadata !DIExpression()), !dbg !3342
  %3 = call i32* @__errno_location() #21, !dbg !3343
  store i32 95, i32* %3, align 4, !dbg !3344
  ret i32 -1, !dbg !3345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfscreatecon(i8* noundef %0) #4 !dbg !3346 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3347, metadata !DIExpression()), !dbg !3348
  %3 = call i32* @__errno_location() #21, !dbg !3349
  store i32 95, i32* %3, align 4, !dbg !3350
  ret i32 -1, !dbg !3351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfscreatecon_raw(i8* noundef %0) #4 !dbg !3352 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3353, metadata !DIExpression()), !dbg !3354
  %3 = call i32* @__errno_location() #21, !dbg !3355
  store i32 95, i32* %3, align 4, !dbg !3356
  ret i32 -1, !dbg !3357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matchpathcon(i8* noundef %0, i32 noundef %1, i8** noundef %2) #4 !dbg !3358 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3361, metadata !DIExpression()), !dbg !3362
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3363, metadata !DIExpression()), !dbg !3364
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !3365, metadata !DIExpression()), !dbg !3366
  %7 = call i32* @__errno_location() #21, !dbg !3367
  store i32 95, i32* %7, align 4, !dbg !3368
  ret i32 -1, !dbg !3369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfilecon(i8* noundef %0, i8** noundef %1) #4 !dbg !3370 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3373, metadata !DIExpression()), !dbg !3374
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3375, metadata !DIExpression()), !dbg !3376
  %5 = call i32* @__errno_location() #21, !dbg !3377
  store i32 95, i32* %5, align 4, !dbg !3378
  ret i32 -1, !dbg !3379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfilecon_raw(i8* noundef %0, i8** noundef %1) #4 !dbg !3380 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3381, metadata !DIExpression()), !dbg !3382
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3383, metadata !DIExpression()), !dbg !3384
  %5 = call i32* @__errno_location() #21, !dbg !3385
  store i32 95, i32* %5, align 4, !dbg !3386
  ret i32 -1, !dbg !3387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lgetfilecon(i8* noundef %0, i8** noundef %1) #4 !dbg !3388 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3389, metadata !DIExpression()), !dbg !3390
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3391, metadata !DIExpression()), !dbg !3392
  %5 = call i32* @__errno_location() #21, !dbg !3393
  store i32 95, i32* %5, align 4, !dbg !3394
  ret i32 -1, !dbg !3395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lgetfilecon_raw(i8* noundef %0, i8** noundef %1) #4 !dbg !3396 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3397, metadata !DIExpression()), !dbg !3398
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3399, metadata !DIExpression()), !dbg !3400
  %5 = call i32* @__errno_location() #21, !dbg !3401
  store i32 95, i32* %5, align 4, !dbg !3402
  ret i32 -1, !dbg !3403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fgetfilecon(i32 noundef %0, i8** noundef %1) #4 !dbg !3404 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3405, metadata !DIExpression()), !dbg !3406
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3407, metadata !DIExpression()), !dbg !3408
  %5 = call i32* @__errno_location() #21, !dbg !3409
  store i32 95, i32* %5, align 4, !dbg !3410
  ret i32 -1, !dbg !3411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fgetfilecon_raw(i32 noundef %0, i8** noundef %1) #4 !dbg !3412 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3413, metadata !DIExpression()), !dbg !3414
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3415, metadata !DIExpression()), !dbg !3416
  %5 = call i32* @__errno_location() #21, !dbg !3417
  store i32 95, i32* %5, align 4, !dbg !3418
  ret i32 -1, !dbg !3419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfilecon(i8* noundef %0, i8* noundef %1) #4 !dbg !3420 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3423, metadata !DIExpression()), !dbg !3424
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3425, metadata !DIExpression()), !dbg !3426
  %5 = call i32* @__errno_location() #21, !dbg !3427
  store i32 95, i32* %5, align 4, !dbg !3428
  ret i32 -1, !dbg !3429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfilecon_raw(i8* noundef %0, i8* noundef %1) #4 !dbg !3430 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3431, metadata !DIExpression()), !dbg !3432
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3433, metadata !DIExpression()), !dbg !3434
  %5 = call i32* @__errno_location() #21, !dbg !3435
  store i32 95, i32* %5, align 4, !dbg !3436
  ret i32 -1, !dbg !3437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsetfilecon(i8* noundef %0, i8* noundef %1) #4 !dbg !3438 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3441, metadata !DIExpression()), !dbg !3442
  %5 = call i32* @__errno_location() #21, !dbg !3443
  store i32 95, i32* %5, align 4, !dbg !3444
  ret i32 -1, !dbg !3445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsetfilecon_raw(i8* noundef %0, i8* noundef %1) #4 !dbg !3446 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3447, metadata !DIExpression()), !dbg !3448
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3449, metadata !DIExpression()), !dbg !3450
  %5 = call i32* @__errno_location() #21, !dbg !3451
  store i32 95, i32* %5, align 4, !dbg !3452
  ret i32 -1, !dbg !3453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsetfilecon(i32 noundef %0, i8* noundef %1) #4 !dbg !3454 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3457, metadata !DIExpression()), !dbg !3458
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3459, metadata !DIExpression()), !dbg !3460
  %5 = call i32* @__errno_location() #21, !dbg !3461
  store i32 95, i32* %5, align 4, !dbg !3462
  ret i32 -1, !dbg !3463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsetfilecon_raw(i32 noundef %0, i8* noundef %1) #4 !dbg !3464 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3465, metadata !DIExpression()), !dbg !3466
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3467, metadata !DIExpression()), !dbg !3468
  %5 = call i32* @__errno_location() #21, !dbg !3469
  store i32 95, i32* %5, align 4, !dbg !3470
  ret i32 -1, !dbg !3471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_check_context(i8* noundef %0) #4 !dbg !3472 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3473, metadata !DIExpression()), !dbg !3474
  %3 = call i32* @__errno_location() #21, !dbg !3475
  store i32 95, i32* %3, align 4, !dbg !3476
  ret i32 -1, !dbg !3477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_check_context_raw(i8* noundef %0) #4 !dbg !3478 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3479, metadata !DIExpression()), !dbg !3480
  %3 = call i32* @__errno_location() #21, !dbg !3481
  store i32 95, i32* %3, align 4, !dbg !3482
  ret i32 -1, !dbg !3483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setexeccon(i8* noundef %0) #4 !dbg !3484 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3485, metadata !DIExpression()), !dbg !3486
  %3 = call i32* @__errno_location() #21, !dbg !3487
  store i32 95, i32* %3, align 4, !dbg !3488
  ret i32 -1, !dbg !3489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setexeccon_raw(i8* noundef %0) #4 !dbg !3490 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3491, metadata !DIExpression()), !dbg !3492
  %3 = call i32* @__errno_location() #21, !dbg !3493
  store i32 95, i32* %3, align 4, !dbg !3494
  ret i32 -1, !dbg !3495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_compute_create(i8* noundef %0, i8* noundef %1, i16 noundef %2, i8** noundef %3) #4 !dbg !3496 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3500, metadata !DIExpression()), !dbg !3501
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3502, metadata !DIExpression()), !dbg !3503
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !3504, metadata !DIExpression()), !dbg !3505
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !3506, metadata !DIExpression()), !dbg !3507
  %9 = call i32* @__errno_location() #21, !dbg !3508
  store i32 95, i32* %9, align 4, !dbg !3509
  ret i32 -1, !dbg !3510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_compute_create_raw(i8* noundef %0, i8* noundef %1, i16 noundef %2, i8** noundef %3) #4 !dbg !3511 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3512, metadata !DIExpression()), !dbg !3513
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3514, metadata !DIExpression()), !dbg !3515
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !3516, metadata !DIExpression()), !dbg !3517
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !3518, metadata !DIExpression()), !dbg !3519
  %9 = call i32* @__errno_location() #21, !dbg !3520
  store i32 95, i32* %9, align 4, !dbg !3521
  ret i32 -1, !dbg !3522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16 @string_to_security_class(i8* noundef %0) #4 !dbg !3523 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3526, metadata !DIExpression()), !dbg !3527
  %3 = call i32* @__errno_location() #21, !dbg !3528
  store i32 95, i32* %3, align 4, !dbg !3529
  ret i16 0, !dbg !3530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matchpathcon_init_prefix(i8* noundef %0, i8* noundef %1) #4 !dbg !3531 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3532, metadata !DIExpression()), !dbg !3533
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3534, metadata !DIExpression()), !dbg !3535
  %5 = call i32* @__errno_location() #21, !dbg !3536
  store i32 95, i32* %5, align 4, !dbg !3537
  ret i32 -1, !dbg !3538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3539 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3543, metadata !DIExpression()), !dbg !3544
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3545, metadata !DIExpression()), !dbg !3546
  %5 = load i8*, i8** %3, align 8, !dbg !3547
  %6 = load i8*, i8** %4, align 8, !dbg !3548
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !3549
  %8 = icmp ne i32 %7, 0, !dbg !3550
  %9 = xor i1 %8, true, !dbg !3550
  ret i1 %9, !dbg !3551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3552 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3608, metadata !DIExpression()), !dbg !3609
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3610, metadata !DIExpression()), !dbg !3611
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3612, metadata !DIExpression()), !dbg !3613
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3614, metadata !DIExpression()), !dbg !3615
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3616, metadata !DIExpression()), !dbg !3617
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3618, metadata !DIExpression()), !dbg !3619
  %13 = load i8*, i8** %8, align 8, !dbg !3620
  %14 = icmp ne i8* %13, null, !dbg !3620
  br i1 %14, label %15, label %21, !dbg !3622

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3623
  %17 = load i8*, i8** %8, align 8, !dbg !3624
  %18 = load i8*, i8** %9, align 8, !dbg !3625
  %19 = load i8*, i8** %10, align 8, !dbg !3626
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3627
  br label %26, !dbg !3627

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3628
  %23 = load i8*, i8** %9, align 8, !dbg !3629
  %24 = load i8*, i8** %10, align 8, !dbg !3630
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.119, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3631
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3632
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.121, i64 0, i64 0)) #18, !dbg !3633
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3634
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3635
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.122, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3635
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3636
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.123, i64 0, i64 0)) #18, !dbg !3637
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.124, i64 0, i64 0)), !dbg !3638
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3639
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.122, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3639
  %37 = load i64, i64* %12, align 8, !dbg !3640
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
  ], !dbg !3641

38:                                               ; preds = %26
  br label %241, !dbg !3642

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3644
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.125, i64 0, i64 0)) #18, !dbg !3645
  %42 = load i8**, i8*** %11, align 8, !dbg !3646
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3646
  %44 = load i8*, i8** %43, align 8, !dbg !3646
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3647
  br label %241, !dbg !3648

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3649
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.126, i64 0, i64 0)) #18, !dbg !3650
  %49 = load i8**, i8*** %11, align 8, !dbg !3651
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3651
  %51 = load i8*, i8** %50, align 8, !dbg !3651
  %52 = load i8**, i8*** %11, align 8, !dbg !3652
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3652
  %54 = load i8*, i8** %53, align 8, !dbg !3652
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3653
  br label %241, !dbg !3654

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3655
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.127, i64 0, i64 0)) #18, !dbg !3656
  %59 = load i8**, i8*** %11, align 8, !dbg !3657
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3657
  %61 = load i8*, i8** %60, align 8, !dbg !3657
  %62 = load i8**, i8*** %11, align 8, !dbg !3658
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3658
  %64 = load i8*, i8** %63, align 8, !dbg !3658
  %65 = load i8**, i8*** %11, align 8, !dbg !3659
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3659
  %67 = load i8*, i8** %66, align 8, !dbg !3659
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3660
  br label %241, !dbg !3661

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3662
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.128, i64 0, i64 0)) #18, !dbg !3663
  %72 = load i8**, i8*** %11, align 8, !dbg !3664
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3664
  %74 = load i8*, i8** %73, align 8, !dbg !3664
  %75 = load i8**, i8*** %11, align 8, !dbg !3665
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3665
  %77 = load i8*, i8** %76, align 8, !dbg !3665
  %78 = load i8**, i8*** %11, align 8, !dbg !3666
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3666
  %80 = load i8*, i8** %79, align 8, !dbg !3666
  %81 = load i8**, i8*** %11, align 8, !dbg !3667
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3667
  %83 = load i8*, i8** %82, align 8, !dbg !3667
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3668
  br label %241, !dbg !3669

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3670
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.129, i64 0, i64 0)) #18, !dbg !3671
  %88 = load i8**, i8*** %11, align 8, !dbg !3672
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3672
  %90 = load i8*, i8** %89, align 8, !dbg !3672
  %91 = load i8**, i8*** %11, align 8, !dbg !3673
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3673
  %93 = load i8*, i8** %92, align 8, !dbg !3673
  %94 = load i8**, i8*** %11, align 8, !dbg !3674
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3674
  %96 = load i8*, i8** %95, align 8, !dbg !3674
  %97 = load i8**, i8*** %11, align 8, !dbg !3675
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3675
  %99 = load i8*, i8** %98, align 8, !dbg !3675
  %100 = load i8**, i8*** %11, align 8, !dbg !3676
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3676
  %102 = load i8*, i8** %101, align 8, !dbg !3676
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3677
  br label %241, !dbg !3678

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3679
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.130, i64 0, i64 0)) #18, !dbg !3680
  %107 = load i8**, i8*** %11, align 8, !dbg !3681
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3681
  %109 = load i8*, i8** %108, align 8, !dbg !3681
  %110 = load i8**, i8*** %11, align 8, !dbg !3682
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3682
  %112 = load i8*, i8** %111, align 8, !dbg !3682
  %113 = load i8**, i8*** %11, align 8, !dbg !3683
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3683
  %115 = load i8*, i8** %114, align 8, !dbg !3683
  %116 = load i8**, i8*** %11, align 8, !dbg !3684
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3684
  %118 = load i8*, i8** %117, align 8, !dbg !3684
  %119 = load i8**, i8*** %11, align 8, !dbg !3685
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3685
  %121 = load i8*, i8** %120, align 8, !dbg !3685
  %122 = load i8**, i8*** %11, align 8, !dbg !3686
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3686
  %124 = load i8*, i8** %123, align 8, !dbg !3686
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3687
  br label %241, !dbg !3688

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3689
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.131, i64 0, i64 0)) #18, !dbg !3690
  %129 = load i8**, i8*** %11, align 8, !dbg !3691
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3691
  %131 = load i8*, i8** %130, align 8, !dbg !3691
  %132 = load i8**, i8*** %11, align 8, !dbg !3692
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3692
  %134 = load i8*, i8** %133, align 8, !dbg !3692
  %135 = load i8**, i8*** %11, align 8, !dbg !3693
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3693
  %137 = load i8*, i8** %136, align 8, !dbg !3693
  %138 = load i8**, i8*** %11, align 8, !dbg !3694
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3694
  %140 = load i8*, i8** %139, align 8, !dbg !3694
  %141 = load i8**, i8*** %11, align 8, !dbg !3695
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3695
  %143 = load i8*, i8** %142, align 8, !dbg !3695
  %144 = load i8**, i8*** %11, align 8, !dbg !3696
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3696
  %146 = load i8*, i8** %145, align 8, !dbg !3696
  %147 = load i8**, i8*** %11, align 8, !dbg !3697
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3697
  %149 = load i8*, i8** %148, align 8, !dbg !3697
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3698
  br label %241, !dbg !3699

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3700
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.132, i64 0, i64 0)) #18, !dbg !3701
  %154 = load i8**, i8*** %11, align 8, !dbg !3702
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3702
  %156 = load i8*, i8** %155, align 8, !dbg !3702
  %157 = load i8**, i8*** %11, align 8, !dbg !3703
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3703
  %159 = load i8*, i8** %158, align 8, !dbg !3703
  %160 = load i8**, i8*** %11, align 8, !dbg !3704
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3704
  %162 = load i8*, i8** %161, align 8, !dbg !3704
  %163 = load i8**, i8*** %11, align 8, !dbg !3705
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3705
  %165 = load i8*, i8** %164, align 8, !dbg !3705
  %166 = load i8**, i8*** %11, align 8, !dbg !3706
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3706
  %168 = load i8*, i8** %167, align 8, !dbg !3706
  %169 = load i8**, i8*** %11, align 8, !dbg !3707
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3707
  %171 = load i8*, i8** %170, align 8, !dbg !3707
  %172 = load i8**, i8*** %11, align 8, !dbg !3708
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3708
  %174 = load i8*, i8** %173, align 8, !dbg !3708
  %175 = load i8**, i8*** %11, align 8, !dbg !3709
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3709
  %177 = load i8*, i8** %176, align 8, !dbg !3709
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3710
  br label %241, !dbg !3711

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3712
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.133, i64 0, i64 0)) #18, !dbg !3713
  %182 = load i8**, i8*** %11, align 8, !dbg !3714
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3714
  %184 = load i8*, i8** %183, align 8, !dbg !3714
  %185 = load i8**, i8*** %11, align 8, !dbg !3715
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3715
  %187 = load i8*, i8** %186, align 8, !dbg !3715
  %188 = load i8**, i8*** %11, align 8, !dbg !3716
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3716
  %190 = load i8*, i8** %189, align 8, !dbg !3716
  %191 = load i8**, i8*** %11, align 8, !dbg !3717
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3717
  %193 = load i8*, i8** %192, align 8, !dbg !3717
  %194 = load i8**, i8*** %11, align 8, !dbg !3718
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3718
  %196 = load i8*, i8** %195, align 8, !dbg !3718
  %197 = load i8**, i8*** %11, align 8, !dbg !3719
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3719
  %199 = load i8*, i8** %198, align 8, !dbg !3719
  %200 = load i8**, i8*** %11, align 8, !dbg !3720
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3720
  %202 = load i8*, i8** %201, align 8, !dbg !3720
  %203 = load i8**, i8*** %11, align 8, !dbg !3721
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3721
  %205 = load i8*, i8** %204, align 8, !dbg !3721
  %206 = load i8**, i8*** %11, align 8, !dbg !3722
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3722
  %208 = load i8*, i8** %207, align 8, !dbg !3722
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3723
  br label %241, !dbg !3724

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3725
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.134, i64 0, i64 0)) #18, !dbg !3726
  %213 = load i8**, i8*** %11, align 8, !dbg !3727
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3727
  %215 = load i8*, i8** %214, align 8, !dbg !3727
  %216 = load i8**, i8*** %11, align 8, !dbg !3728
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3728
  %218 = load i8*, i8** %217, align 8, !dbg !3728
  %219 = load i8**, i8*** %11, align 8, !dbg !3729
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3729
  %221 = load i8*, i8** %220, align 8, !dbg !3729
  %222 = load i8**, i8*** %11, align 8, !dbg !3730
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3730
  %224 = load i8*, i8** %223, align 8, !dbg !3730
  %225 = load i8**, i8*** %11, align 8, !dbg !3731
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3731
  %227 = load i8*, i8** %226, align 8, !dbg !3731
  %228 = load i8**, i8*** %11, align 8, !dbg !3732
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3732
  %230 = load i8*, i8** %229, align 8, !dbg !3732
  %231 = load i8**, i8*** %11, align 8, !dbg !3733
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3733
  %233 = load i8*, i8** %232, align 8, !dbg !3733
  %234 = load i8**, i8*** %11, align 8, !dbg !3734
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3734
  %236 = load i8*, i8** %235, align 8, !dbg !3734
  %237 = load i8**, i8*** %11, align 8, !dbg !3735
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3735
  %239 = load i8*, i8** %238, align 8, !dbg !3735
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3736
  br label %241, !dbg !3737

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3739 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3742, metadata !DIExpression()), !dbg !3743
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3744, metadata !DIExpression()), !dbg !3745
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3746, metadata !DIExpression()), !dbg !3747
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3748, metadata !DIExpression()), !dbg !3749
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3750, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3752, metadata !DIExpression()), !dbg !3753
  store i64 0, i64* %11, align 8, !dbg !3754
  br label %12, !dbg !3756

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3757
  %14 = load i64, i64* %11, align 8, !dbg !3759
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3757
  %16 = load i8*, i8** %15, align 8, !dbg !3757
  %17 = icmp ne i8* %16, null, !dbg !3760
  br i1 %17, label %18, label %22, !dbg !3760

18:                                               ; preds = %12
  br label %19, !dbg !3760

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3761
  %21 = add i64 %20, 1, !dbg !3761
  store i64 %21, i64* %11, align 8, !dbg !3761
  br label %12, !dbg !3762, !llvm.loop !3763

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3765
  %24 = load i8*, i8** %7, align 8, !dbg !3766
  %25 = load i8*, i8** %8, align 8, !dbg !3767
  %26 = load i8*, i8** %9, align 8, !dbg !3768
  %27 = load i8**, i8*** %10, align 8, !dbg !3769
  %28 = load i64, i64* %11, align 8, !dbg !3770
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3771
  ret void, !dbg !3772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3773 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3787, metadata !DIExpression()), !dbg !3788
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3789, metadata !DIExpression()), !dbg !3790
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3791, metadata !DIExpression()), !dbg !3792
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3793, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3795, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3797, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3799, metadata !DIExpression()), !dbg !3801
  store i64 0, i64* %10, align 8, !dbg !3802
  br label %12, !dbg !3804

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3805
  %14 = icmp ult i64 %13, 10, !dbg !3807
  br i1 %14, label %15, label %38, !dbg !3808

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3809
  %17 = load i32, i32* %16, align 8, !dbg !3809
  %18 = icmp sge i32 %17, 0, !dbg !3809
  br i1 %18, label %27, label %19, !dbg !3809

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3809
  store i32 %20, i32* %16, align 8, !dbg !3809
  %21 = icmp sle i32 %20, 0, !dbg !3809
  br i1 %21, label %22, label %27, !dbg !3809

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3809
  %24 = load i8*, i8** %23, align 8, !dbg !3809
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3809
  %26 = bitcast i8* %25 to i8**, !dbg !3809
  br label %32, !dbg !3809

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3809
  %29 = load i8*, i8** %28, align 8, !dbg !3809
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3809
  store i8* %30, i8** %28, align 8, !dbg !3809
  %31 = bitcast i8* %29 to i8**, !dbg !3809
  br label %32, !dbg !3809

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3809
  %34 = load i8*, i8** %33, align 8, !dbg !3809
  %35 = load i64, i64* %10, align 8, !dbg !3810
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3811
  store i8* %34, i8** %36, align 8, !dbg !3812
  %37 = icmp ne i8* %34, null, !dbg !3813
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3814
  br i1 %39, label %40, label %44, !dbg !3815

40:                                               ; preds = %38
  br label %41, !dbg !3815

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3816
  %43 = add i64 %42, 1, !dbg !3816
  store i64 %43, i64* %10, align 8, !dbg !3816
  br label %12, !dbg !3817, !llvm.loop !3818

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3820
  %46 = load i8*, i8** %7, align 8, !dbg !3821
  %47 = load i8*, i8** %8, align 8, !dbg !3822
  %48 = load i8*, i8** %9, align 8, !dbg !3823
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3824
  %50 = load i64, i64* %10, align 8, !dbg !3825
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3826
  ret void, !dbg !3827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3828 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3831, metadata !DIExpression()), !dbg !3832
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3833, metadata !DIExpression()), !dbg !3834
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3835, metadata !DIExpression()), !dbg !3836
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3837, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3839, metadata !DIExpression()), !dbg !3840
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3841
  call void @llvm.va_start(i8* %11), !dbg !3841
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3842
  %13 = load i8*, i8** %6, align 8, !dbg !3843
  %14 = load i8*, i8** %7, align 8, !dbg !3844
  %15 = load i8*, i8** %8, align 8, !dbg !3845
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3846
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3846
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3846
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3847
  call void @llvm.va_end(i8* %18), !dbg !3847
  ret void, !dbg !3848
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3849 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3850
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.122, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3850
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.139, i64 0, i64 0)) #18, !dbg !3851
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.140, i64 0, i64 0)), !dbg !3852
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.141, i64 0, i64 0)) #18, !dbg !3853
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.143, i64 0, i64 0)), !dbg !3854
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.144, i64 0, i64 0)) #18, !dbg !3855
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.145, i64 0, i64 0)), !dbg !3856
  ret void, !dbg !3857
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3858 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3862, metadata !DIExpression()), !dbg !3863
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3864, metadata !DIExpression()), !dbg !3865
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3866, metadata !DIExpression()), !dbg !3867
  %7 = load i8*, i8** %4, align 8, !dbg !3868
  %8 = load i64, i64* %5, align 8, !dbg !3869
  %9 = load i64, i64* %6, align 8, !dbg !3870
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #27, !dbg !3871
  ret i8* %10, !dbg !3872
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3873 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3874, metadata !DIExpression()), !dbg !3875
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3876, metadata !DIExpression()), !dbg !3877
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3878, metadata !DIExpression()), !dbg !3879
  %7 = load i8*, i8** %4, align 8, !dbg !3880
  %8 = load i64, i64* %5, align 8, !dbg !3881
  %9 = load i64, i64* %6, align 8, !dbg !3882
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3883
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3884
  ret i8* %11, !dbg !3885
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3886 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3889, metadata !DIExpression()), !dbg !3890
  %3 = load i8*, i8** %2, align 8, !dbg !3891
  %4 = icmp ne i8* %3, null, !dbg !3891
  br i1 %4, label %6, label %5, !dbg !3893

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3894
  unreachable, !dbg !3894

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3895
  ret i8* %7, !dbg !3896
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3897 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3900, metadata !DIExpression()), !dbg !3901
  %3 = load i64, i64* %2, align 8, !dbg !3902
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3903
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3904
  ret i8* %5, !dbg !3905
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3906 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3909, metadata !DIExpression()), !dbg !3910
  %3 = load i64, i64* %2, align 8, !dbg !3911
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3912
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3913
  ret i8* %5, !dbg !3914
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3915 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3918, metadata !DIExpression()), !dbg !3919
  %3 = load i64, i64* %2, align 8, !dbg !3920
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3920
  ret i8* %4, !dbg !3921
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3922 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3925, metadata !DIExpression()), !dbg !3926
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3927, metadata !DIExpression()), !dbg !3928
  %5 = load i8*, i8** %3, align 8, !dbg !3929
  %6 = load i64, i64* %4, align 8, !dbg !3930
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3931
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3932
  ret i8* %8, !dbg !3933
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3934 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3937, metadata !DIExpression()), !dbg !3938
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3939, metadata !DIExpression()), !dbg !3940
  %5 = load i8*, i8** %3, align 8, !dbg !3941
  %6 = load i64, i64* %4, align 8, !dbg !3942
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3943
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3944
  ret i8* %8, !dbg !3945
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3946 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3949, metadata !DIExpression()), !dbg !3950
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3951, metadata !DIExpression()), !dbg !3952
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3953, metadata !DIExpression()), !dbg !3954
  %7 = load i8*, i8** %4, align 8, !dbg !3955
  %8 = load i64, i64* %5, align 8, !dbg !3956
  %9 = load i64, i64* %6, align 8, !dbg !3957
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3958
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3959
  ret i8* %11, !dbg !3960
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3961 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3964, metadata !DIExpression()), !dbg !3965
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3966, metadata !DIExpression()), !dbg !3967
  %5 = load i64, i64* %3, align 8, !dbg !3968
  %6 = load i64, i64* %4, align 8, !dbg !3969
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3970
  ret i8* %7, !dbg !3971
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3972 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3975, metadata !DIExpression()), !dbg !3976
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3977, metadata !DIExpression()), !dbg !3978
  %5 = load i64, i64* %3, align 8, !dbg !3979
  %6 = load i64, i64* %4, align 8, !dbg !3980
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3981
  ret i8* %7, !dbg !3982
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3983 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3986, metadata !DIExpression()), !dbg !3987
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3988, metadata !DIExpression()), !dbg !3989
  %5 = load i8*, i8** %3, align 8, !dbg !3990
  %6 = load i64*, i64** %4, align 8, !dbg !3991
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3992
  ret i8* %7, !dbg !3993
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !252 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3994, metadata !DIExpression()), !dbg !3995
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3996, metadata !DIExpression()), !dbg !3997
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4000, metadata !DIExpression()), !dbg !4001
  %8 = load i64*, i64** %5, align 8, !dbg !4002
  %9 = load i64, i64* %8, align 8, !dbg !4003
  store i64 %9, i64* %7, align 8, !dbg !4001
  %10 = load i8*, i8** %4, align 8, !dbg !4004
  %11 = icmp ne i8* %10, null, !dbg !4004
  br i1 %11, label %26, label %12, !dbg !4006

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4007
  %14 = icmp ne i64 %13, 0, !dbg !4007
  br i1 %14, label %25, label %15, !dbg !4010

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4011
  %17 = udiv i64 128, %16, !dbg !4013
  store i64 %17, i64* %7, align 8, !dbg !4014
  %18 = load i64, i64* %7, align 8, !dbg !4015
  %19 = icmp ne i64 %18, 0, !dbg !4016
  %20 = xor i1 %19, true, !dbg !4016
  %21 = zext i1 %20 to i32, !dbg !4016
  %22 = sext i32 %21 to i64, !dbg !4016
  %23 = load i64, i64* %7, align 8, !dbg !4017
  %24 = add i64 %23, %22, !dbg !4017
  store i64 %24, i64* %7, align 8, !dbg !4017
  br label %25, !dbg !4018

25:                                               ; preds = %15, %12
  br label %36, !dbg !4019

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !4020
  %28 = load i64, i64* %7, align 8, !dbg !4020
  %29 = lshr i64 %28, 1, !dbg !4020
  %30 = add i64 %29, 1, !dbg !4020
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !4020
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !4020
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !4020
  store i64 %33, i64* %7, align 8, !dbg !4020
  br i1 %32, label %34, label %35, !dbg !4023

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !4024
  unreachable, !dbg !4024

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !4025
  %38 = load i64, i64* %7, align 8, !dbg !4026
  %39 = load i64, i64* %6, align 8, !dbg !4027
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #27, !dbg !4028
  store i8* %40, i8** %4, align 8, !dbg !4029
  %41 = load i64, i64* %7, align 8, !dbg !4030
  %42 = load i64*, i64** %5, align 8, !dbg !4031
  store i64 %41, i64* %42, align 8, !dbg !4032
  %43 = load i8*, i8** %4, align 8, !dbg !4033
  ret i8* %43, !dbg !4034
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !259 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4035, metadata !DIExpression()), !dbg !4036
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4037, metadata !DIExpression()), !dbg !4038
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4039, metadata !DIExpression()), !dbg !4040
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4041, metadata !DIExpression()), !dbg !4042
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4043, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4045, metadata !DIExpression()), !dbg !4046
  %15 = load i64*, i64** %7, align 8, !dbg !4047
  %16 = load i64, i64* %15, align 8, !dbg !4048
  store i64 %16, i64* %11, align 8, !dbg !4046
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4049, metadata !DIExpression()), !dbg !4050
  %17 = load i64, i64* %11, align 8, !dbg !4051
  %18 = load i64, i64* %11, align 8, !dbg !4051
  %19 = ashr i64 %18, 1, !dbg !4051
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !4051
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !4051
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !4051
  store i64 %22, i64* %12, align 8, !dbg !4051
  br i1 %21, label %23, label %24, !dbg !4053

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !4054
  br label %24, !dbg !4055

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !4056
  %26 = icmp sle i64 0, %25, !dbg !4058
  br i1 %26, label %27, label %33, !dbg !4059

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !4060
  %29 = load i64, i64* %12, align 8, !dbg !4061
  %30 = icmp slt i64 %28, %29, !dbg !4062
  br i1 %30, label %31, label %33, !dbg !4063

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !4064
  store i64 %32, i64* %12, align 8, !dbg !4065
  br label %33, !dbg !4066

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4067, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4069, metadata !DIExpression()), !dbg !4070
  %34 = load i64, i64* %10, align 8, !dbg !4071
  %35 = icmp slt i64 %34, 0, !dbg !4071
  br i1 %35, label %36, label %82, !dbg !4071

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !4071
  %38 = icmp slt i64 %37, 0, !dbg !4071
  br i1 %38, label %39, label %62, !dbg !4071

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !4071

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !4071
  %42 = load i64, i64* %10, align 8, !dbg !4071
  %43 = sdiv i64 9223372036854775807, %42, !dbg !4071
  %44 = icmp slt i64 %41, %43, !dbg !4071
  br i1 %44, label %111, label %115, !dbg !4071

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !4071

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !4071
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !4071
  br i1 %48, label %52, label %53, !dbg !4071

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !4071
  %51 = icmp slt i64 0, %50, !dbg !4071
  br i1 %51, label %52, label %53, !dbg !4071

52:                                               ; preds = %49, %46
  br label %57, !dbg !4071

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !4071
  %55 = sub nsw i64 0, %54, !dbg !4071
  %56 = sdiv i64 9223372036854775807, %55, !dbg !4071
  br label %57, !dbg !4071

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !4071
  %59 = load i64, i64* %12, align 8, !dbg !4071
  %60 = sub nsw i64 -1, %59, !dbg !4071
  %61 = icmp sle i64 %58, %60, !dbg !4071
  br i1 %61, label %111, label %115, !dbg !4071

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !4071
  %64 = icmp eq i64 %63, -1, !dbg !4071
  br i1 %64, label %65, label %77, !dbg !4071

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !4071

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !4071
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !4071
  %69 = icmp slt i64 0, %68, !dbg !4071
  br i1 %69, label %111, label %115, !dbg !4071

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !4071
  %72 = icmp slt i64 0, %71, !dbg !4071
  br i1 %72, label %73, label %115, !dbg !4071

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !4071
  %75 = sub nsw i64 %74, 1, !dbg !4071
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !4071
  br i1 %76, label %111, label %115, !dbg !4071

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !4071
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !4071
  %80 = load i64, i64* %12, align 8, !dbg !4071
  %81 = icmp slt i64 %79, %80, !dbg !4071
  br i1 %81, label %111, label %115, !dbg !4071

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !4071
  %84 = icmp eq i64 %83, 0, !dbg !4071
  br i1 %84, label %85, label %86, !dbg !4071

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !4071

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !4071
  %88 = icmp slt i64 %87, 0, !dbg !4071
  br i1 %88, label %89, label %106, !dbg !4071

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !4071
  %91 = icmp eq i64 %90, -1, !dbg !4071
  br i1 %91, label %92, label %101, !dbg !4071

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !4071

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !4071
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !4071
  %96 = icmp slt i64 0, %95, !dbg !4071
  br i1 %96, label %111, label %115, !dbg !4071

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !4071
  %99 = sub nsw i64 %98, 1, !dbg !4071
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !4071
  br i1 %100, label %111, label %115, !dbg !4071

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !4071
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !4071
  %104 = load i64, i64* %10, align 8, !dbg !4071
  %105 = icmp slt i64 %103, %104, !dbg !4071
  br i1 %105, label %111, label %115, !dbg !4071

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !4071
  %108 = sdiv i64 9223372036854775807, %107, !dbg !4071
  %109 = load i64, i64* %12, align 8, !dbg !4071
  %110 = icmp slt i64 %108, %109, !dbg !4071
  br i1 %110, label %111, label %115, !dbg !4071

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !4071
  %113 = load i64, i64* %10, align 8, !dbg !4071
  %114 = mul i64 %112, %113, !dbg !4071
  store i64 %114, i64* %13, align 8, !dbg !4071
  br label %119, !dbg !4071

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !4071
  %117 = load i64, i64* %10, align 8, !dbg !4071
  %118 = mul i64 %116, %117, !dbg !4071
  store i64 %118, i64* %13, align 8, !dbg !4071
  br label %119, !dbg !4071

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !4071
  %121 = icmp ne i32 %120, 0, !dbg !4071
  br i1 %121, label %122, label %123, !dbg !4071

122:                                              ; preds = %119
  br label %129, !dbg !4071

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !4072
  %125 = icmp slt i64 %124, 128, !dbg !4073
  %126 = zext i1 %125 to i64, !dbg !4072
  %127 = select i1 %125, i32 128, i32 0, !dbg !4072
  %128 = sext i32 %127 to i64, !dbg !4072
  br label %129, !dbg !4071

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !4071
  store i64 %130, i64* %14, align 8, !dbg !4070
  %131 = load i64, i64* %14, align 8, !dbg !4074
  %132 = icmp ne i64 %131, 0, !dbg !4074
  br i1 %132, label %133, label %142, !dbg !4076

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !4077
  %135 = load i64, i64* %10, align 8, !dbg !4079
  %136 = sdiv i64 %134, %135, !dbg !4080
  store i64 %136, i64* %12, align 8, !dbg !4081
  %137 = load i64, i64* %14, align 8, !dbg !4082
  %138 = load i64, i64* %14, align 8, !dbg !4083
  %139 = load i64, i64* %10, align 8, !dbg !4084
  %140 = srem i64 %138, %139, !dbg !4085
  %141 = sub nsw i64 %137, %140, !dbg !4086
  store i64 %141, i64* %13, align 8, !dbg !4087
  br label %142, !dbg !4088

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !4089
  %144 = icmp ne i8* %143, null, !dbg !4089
  br i1 %144, label %147, label %145, !dbg !4091

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !4092
  store i64 0, i64* %146, align 8, !dbg !4093
  br label %147, !dbg !4094

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !4095
  %149 = load i64, i64* %11, align 8, !dbg !4097
  %150 = sub nsw i64 %148, %149, !dbg !4098
  %151 = load i64, i64* %8, align 8, !dbg !4099
  %152 = icmp slt i64 %150, %151, !dbg !4100
  br i1 %152, label %153, label %256, !dbg !4101

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !4102
  %155 = load i64, i64* %8, align 8, !dbg !4102
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !4102
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !4102
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !4102
  store i64 %158, i64* %12, align 8, !dbg !4102
  br i1 %157, label %255, label %159, !dbg !4103

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !4104
  %161 = icmp sle i64 0, %160, !dbg !4105
  br i1 %161, label %162, label %166, !dbg !4106

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !4107
  %164 = load i64, i64* %12, align 8, !dbg !4108
  %165 = icmp slt i64 %163, %164, !dbg !4109
  br i1 %165, label %255, label %166, !dbg !4110

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !4111
  %168 = icmp slt i64 %167, 0, !dbg !4111
  br i1 %168, label %169, label %215, !dbg !4111

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !4111
  %171 = icmp slt i64 %170, 0, !dbg !4111
  br i1 %171, label %172, label %195, !dbg !4111

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !4111

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !4111
  %175 = load i64, i64* %10, align 8, !dbg !4111
  %176 = sdiv i64 9223372036854775807, %175, !dbg !4111
  %177 = icmp slt i64 %174, %176, !dbg !4111
  br i1 %177, label %244, label %248, !dbg !4111

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !4111

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !4111
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !4111
  br i1 %181, label %185, label %186, !dbg !4111

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !4111
  %184 = icmp slt i64 0, %183, !dbg !4111
  br i1 %184, label %185, label %186, !dbg !4111

185:                                              ; preds = %182, %179
  br label %190, !dbg !4111

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !4111
  %188 = sub nsw i64 0, %187, !dbg !4111
  %189 = sdiv i64 9223372036854775807, %188, !dbg !4111
  br label %190, !dbg !4111

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !4111
  %192 = load i64, i64* %12, align 8, !dbg !4111
  %193 = sub nsw i64 -1, %192, !dbg !4111
  %194 = icmp sle i64 %191, %193, !dbg !4111
  br i1 %194, label %244, label %248, !dbg !4111

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !4111
  %197 = icmp eq i64 %196, -1, !dbg !4111
  br i1 %197, label %198, label %210, !dbg !4111

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !4111

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !4111
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !4111
  %202 = icmp slt i64 0, %201, !dbg !4111
  br i1 %202, label %244, label %248, !dbg !4111

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !4111
  %205 = icmp slt i64 0, %204, !dbg !4111
  br i1 %205, label %206, label %248, !dbg !4111

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !4111
  %208 = sub nsw i64 %207, 1, !dbg !4111
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !4111
  br i1 %209, label %244, label %248, !dbg !4111

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !4111
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !4111
  %213 = load i64, i64* %12, align 8, !dbg !4111
  %214 = icmp slt i64 %212, %213, !dbg !4111
  br i1 %214, label %244, label %248, !dbg !4111

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !4111
  %217 = icmp eq i64 %216, 0, !dbg !4111
  br i1 %217, label %218, label %219, !dbg !4111

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !4111

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !4111
  %221 = icmp slt i64 %220, 0, !dbg !4111
  br i1 %221, label %222, label %239, !dbg !4111

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !4111
  %224 = icmp eq i64 %223, -1, !dbg !4111
  br i1 %224, label %225, label %234, !dbg !4111

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !4111

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !4111
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !4111
  %229 = icmp slt i64 0, %228, !dbg !4111
  br i1 %229, label %244, label %248, !dbg !4111

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !4111
  %232 = sub nsw i64 %231, 1, !dbg !4111
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !4111
  br i1 %233, label %244, label %248, !dbg !4111

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !4111
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !4111
  %237 = load i64, i64* %10, align 8, !dbg !4111
  %238 = icmp slt i64 %236, %237, !dbg !4111
  br i1 %238, label %244, label %248, !dbg !4111

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !4111
  %241 = sdiv i64 9223372036854775807, %240, !dbg !4111
  %242 = load i64, i64* %12, align 8, !dbg !4111
  %243 = icmp slt i64 %241, %242, !dbg !4111
  br i1 %243, label %244, label %248, !dbg !4111

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !4111
  %246 = load i64, i64* %10, align 8, !dbg !4111
  %247 = mul i64 %245, %246, !dbg !4111
  store i64 %247, i64* %13, align 8, !dbg !4111
  br label %252, !dbg !4111

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !4111
  %250 = load i64, i64* %10, align 8, !dbg !4111
  %251 = mul i64 %249, %250, !dbg !4111
  store i64 %251, i64* %13, align 8, !dbg !4111
  br label %252, !dbg !4111

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !4111
  %254 = icmp ne i32 %253, 0, !dbg !4111
  br i1 %254, label %255, label %256, !dbg !4112

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !4113
  unreachable, !dbg !4113

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !4114
  %258 = load i64, i64* %13, align 8, !dbg !4115
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #26, !dbg !4116
  store i8* %259, i8** %6, align 8, !dbg !4117
  %260 = load i64, i64* %12, align 8, !dbg !4118
  %261 = load i64*, i64** %7, align 8, !dbg !4119
  store i64 %260, i64* %261, align 8, !dbg !4120
  %262 = load i8*, i8** %6, align 8, !dbg !4121
  ret i8* %262, !dbg !4122
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !4123 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4124, metadata !DIExpression()), !dbg !4125
  %3 = load i64, i64* %2, align 8, !dbg !4126
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #24, !dbg !4127
  ret i8* %4, !dbg !4128
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4129 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4130, metadata !DIExpression()), !dbg !4131
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4132, metadata !DIExpression()), !dbg !4133
  %5 = load i64, i64* %3, align 8, !dbg !4134
  %6 = load i64, i64* %4, align 8, !dbg !4135
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !4136
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4137
  ret i8* %8, !dbg !4138
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !4139 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4140, metadata !DIExpression()), !dbg !4141
  %3 = load i64, i64* %2, align 8, !dbg !4142
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #24, !dbg !4143
  ret i8* %4, !dbg !4144
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4145 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4146, metadata !DIExpression()), !dbg !4147
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4148, metadata !DIExpression()), !dbg !4149
  %5 = load i64, i64* %3, align 8, !dbg !4150
  %6 = load i64, i64* %4, align 8, !dbg !4151
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !4152
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4153
  ret i8* %8, !dbg !4154
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4155 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4160, metadata !DIExpression()), !dbg !4161
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4162, metadata !DIExpression()), !dbg !4163
  %5 = load i64, i64* %4, align 8, !dbg !4164
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !4165
  %7 = load i8*, i8** %3, align 8, !dbg !4166
  %8 = load i64, i64* %4, align 8, !dbg !4167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4168
  ret i8* %6, !dbg !4169
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4170 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4173, metadata !DIExpression()), !dbg !4174
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4175, metadata !DIExpression()), !dbg !4176
  %5 = load i64, i64* %4, align 8, !dbg !4177
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !4178
  %7 = load i8*, i8** %3, align 8, !dbg !4179
  %8 = load i64, i64* %4, align 8, !dbg !4180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4181
  ret i8* %6, !dbg !4182
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !4183 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4186, metadata !DIExpression()), !dbg !4187
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4188, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4190, metadata !DIExpression()), !dbg !4191
  %6 = load i64, i64* %4, align 8, !dbg !4192
  %7 = add nsw i64 %6, 1, !dbg !4193
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !4194
  store i8* %8, i8** %5, align 8, !dbg !4191
  %9 = load i8*, i8** %5, align 8, !dbg !4195
  %10 = load i64, i64* %4, align 8, !dbg !4196
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !4195
  store i8 0, i8* %11, align 1, !dbg !4197
  %12 = load i8*, i8** %5, align 8, !dbg !4198
  %13 = load i8*, i8** %3, align 8, !dbg !4199
  %14 = load i64, i64* %4, align 8, !dbg !4200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !4201
  ret i8* %12, !dbg !4202
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !4203 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4204, metadata !DIExpression()), !dbg !4205
  %3 = load i8*, i8** %2, align 8, !dbg !4206
  %4 = load i8*, i8** %2, align 8, !dbg !4207
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !4208
  %6 = add i64 %5, 1, !dbg !4209
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #26, !dbg !4210
  ret i8* %7, !dbg !4211
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4212 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4213, metadata !DIExpression()), !dbg !4216
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !4216
  store i32 %2, i32* %1, align 4, !dbg !4216
  %3 = load i32, i32* %1, align 4, !dbg !4216
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.161, i64 0, i64 0)) #18, !dbg !4216
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i64 0, i64 0), i8* noundef %4), !dbg !4216
  %5 = load i32, i32* %1, align 4, !dbg !4216
  %6 = icmp ne i32 %5, 0, !dbg !4216
  br i1 %6, label %7, label %9, !dbg !4216

7:                                                ; preds = %0
  unreachable, !dbg !4216

8:                                                ; No predecessors!
  br label %10, !dbg !4216

9:                                                ; preds = %0
  br label %10, !dbg !4216

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !4217
  unreachable, !dbg !4217
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !4218 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4224, metadata !DIExpression()), !dbg !4225
  %3 = load i32, i32* %2, align 4, !dbg !4226
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !4227
  ret i32 %4, !dbg !4228
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !4229 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4266, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4268, metadata !DIExpression()), !dbg !4270
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4271
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !4272
  %9 = icmp ne i64 %8, 0, !dbg !4273
  %10 = zext i1 %9 to i8, !dbg !4270
  store i8 %10, i8* %4, align 1, !dbg !4270
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4274, metadata !DIExpression()), !dbg !4275
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4276
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !4276
  %13 = icmp ne i32 %12, 0, !dbg !4277
  %14 = zext i1 %13 to i8, !dbg !4275
  store i8 %14, i8* %5, align 1, !dbg !4275
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4278, metadata !DIExpression()), !dbg !4279
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4280
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !4281
  %17 = icmp ne i32 %16, 0, !dbg !4282
  %18 = zext i1 %17 to i8, !dbg !4279
  store i8 %18, i8* %6, align 1, !dbg !4279
  %19 = load i8, i8* %5, align 1, !dbg !4283
  %20 = trunc i8 %19 to i1, !dbg !4283
  br i1 %20, label %31, label %21, !dbg !4285

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4286
  %23 = trunc i8 %22 to i1, !dbg !4286
  br i1 %23, label %24, label %37, !dbg !4287

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4288
  %26 = trunc i8 %25 to i1, !dbg !4288
  br i1 %26, label %31, label %27, !dbg !4289

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !4290
  %29 = load i32, i32* %28, align 4, !dbg !4290
  %30 = icmp ne i32 %29, 9, !dbg !4291
  br i1 %30, label %31, label %37, !dbg !4292

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4293
  %33 = trunc i8 %32 to i1, !dbg !4293
  br i1 %33, label %36, label %34, !dbg !4296

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !4297
  store i32 0, i32* %35, align 4, !dbg !4298
  br label %36, !dbg !4297

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4299
  br label %38, !dbg !4299

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4300
  br label %38, !dbg !4300

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4301
  ret i32 %39, !dbg !4301
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !4302 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4339, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4341, metadata !DIExpression()), !dbg !4342
  store i32 0, i32* %4, align 4, !dbg !4342
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4343, metadata !DIExpression()), !dbg !4344
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4345
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !4346
  store i32 %8, i32* %5, align 4, !dbg !4344
  %9 = load i32, i32* %5, align 4, !dbg !4347
  %10 = icmp slt i32 %9, 0, !dbg !4349
  br i1 %10, label %11, label %14, !dbg !4350

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4351
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !4352
  store i32 %13, i32* %2, align 4, !dbg !4353
  br label %40, !dbg !4353

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4354
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !4354
  %17 = icmp ne i32 %16, 0, !dbg !4354
  br i1 %17, label %18, label %23, !dbg !4356

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4357
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !4358
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !4359
  %22 = icmp ne i64 %21, -1, !dbg !4360
  br i1 %22, label %23, label %30, !dbg !4361

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4362
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !4363
  %26 = icmp ne i32 %25, 0, !dbg !4363
  br i1 %26, label %27, label %30, !dbg !4364

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !4365
  %29 = load i32, i32* %28, align 4, !dbg !4365
  store i32 %29, i32* %4, align 4, !dbg !4366
  br label %30, !dbg !4367

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4368, metadata !DIExpression()), !dbg !4369
  store i32 0, i32* %6, align 4, !dbg !4369
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4370
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !4371
  store i32 %32, i32* %6, align 4, !dbg !4372
  %33 = load i32, i32* %4, align 4, !dbg !4373
  %34 = icmp ne i32 %33, 0, !dbg !4375
  br i1 %34, label %35, label %38, !dbg !4376

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4377
  %37 = call i32* @__errno_location() #21, !dbg !4379
  store i32 %36, i32* %37, align 4, !dbg !4380
  store i32 -1, i32* %6, align 4, !dbg !4381
  br label %38, !dbg !4382

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4383
  store i32 %39, i32* %2, align 4, !dbg !4384
  br label %40, !dbg !4384

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4385
  ret i32 %41, !dbg !4385
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !4386 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4423, metadata !DIExpression()), !dbg !4424
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4425
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4427
  br i1 %5, label %10, label %6, !dbg !4428

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4429
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !4429
  %9 = icmp ne i32 %8, 0, !dbg !4429
  br i1 %9, label %13, label %10, !dbg !4430

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4431
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !4432
  store i32 %12, i32* %2, align 4, !dbg !4433
  br label %17, !dbg !4433

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4434
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !4435
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4436
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !4437
  store i32 %16, i32* %2, align 4, !dbg !4438
  br label %17, !dbg !4438

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4439
  ret i32 %18, !dbg !4439
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !4440 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4443, metadata !DIExpression()), !dbg !4444
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4445
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4447
  %5 = load i32, i32* %4, align 8, !dbg !4447
  %6 = and i32 %5, 256, !dbg !4448
  %7 = icmp ne i32 %6, 0, !dbg !4448
  br i1 %7, label %8, label %11, !dbg !4449

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4450
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4451
  br label %11, !dbg !4451

11:                                               ; preds = %8, %1
  ret void, !dbg !4452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4453 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4491, metadata !DIExpression()), !dbg !4492
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4493, metadata !DIExpression()), !dbg !4494
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4495, metadata !DIExpression()), !dbg !4496
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4497
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4499
  %11 = load i8*, i8** %10, align 8, !dbg !4499
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4500
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4501
  %14 = load i8*, i8** %13, align 8, !dbg !4501
  %15 = icmp eq i8* %11, %14, !dbg !4502
  br i1 %15, label %16, label %46, !dbg !4503

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4504
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4505
  %19 = load i8*, i8** %18, align 8, !dbg !4505
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4506
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4507
  %22 = load i8*, i8** %21, align 8, !dbg !4507
  %23 = icmp eq i8* %19, %22, !dbg !4508
  br i1 %23, label %24, label %46, !dbg !4509

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4510
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4511
  %27 = load i8*, i8** %26, align 8, !dbg !4511
  %28 = icmp eq i8* %27, null, !dbg !4512
  br i1 %28, label %29, label %46, !dbg !4513

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4514, metadata !DIExpression()), !dbg !4516
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4517
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !4518
  %32 = load i64, i64* %6, align 8, !dbg !4519
  %33 = load i32, i32* %7, align 4, !dbg !4520
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !4521
  store i64 %34, i64* %8, align 8, !dbg !4516
  %35 = load i64, i64* %8, align 8, !dbg !4522
  %36 = icmp eq i64 %35, -1, !dbg !4524
  br i1 %36, label %37, label %38, !dbg !4525

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4526
  br label %51, !dbg !4526

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4528
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4529
  %41 = load i32, i32* %40, align 8, !dbg !4530
  %42 = and i32 %41, -17, !dbg !4530
  store i32 %42, i32* %40, align 8, !dbg !4530
  %43 = load i64, i64* %8, align 8, !dbg !4531
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4532
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4533
  store i64 %43, i64* %45, align 8, !dbg !4534
  store i32 0, i32* %4, align 4, !dbg !4535
  br label %51, !dbg !4535

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4536
  %48 = load i64, i64* %6, align 8, !dbg !4537
  %49 = load i32, i32* %7, align 4, !dbg !4538
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4539
  store i32 %50, i32* %4, align 4, !dbg !4540
  br label %51, !dbg !4540

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4541
  ret i32 %52, !dbg !4541
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !4542 {
  %1 = call i32* @__errno_location() #21, !dbg !4545
  store i32 12, i32* %1, align 4, !dbg !4546
  ret i8* null, !dbg !4547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4548 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4549, metadata !DIExpression()), !dbg !4550
  %3 = load i64, i64* %2, align 8, !dbg !4551
  %4 = icmp ule i64 %3, -1, !dbg !4552
  br i1 %4, label %5, label %8, !dbg !4551

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4553
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !4554
  br label %10, !dbg !4551

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !4555
  br label %10, !dbg !4551

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4551
  ret i8* %11, !dbg !4556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4557 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4558, metadata !DIExpression()), !dbg !4559
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4560, metadata !DIExpression()), !dbg !4561
  %5 = load i64, i64* %4, align 8, !dbg !4562
  %6 = icmp ule i64 %5, -1, !dbg !4563
  br i1 %6, label %7, label %11, !dbg !4562

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4564
  %9 = load i64, i64* %4, align 8, !dbg !4565
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4566
  br label %13, !dbg !4562

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4567
  br label %13, !dbg !4562

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4562
  ret i8* %14, !dbg !4568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4569 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4570, metadata !DIExpression()), !dbg !4571
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4572, metadata !DIExpression()), !dbg !4573
  %6 = load i64, i64* %4, align 8, !dbg !4574
  %7 = icmp ult i64 -1, %6, !dbg !4576
  br i1 %7, label %8, label %14, !dbg !4577

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4578
  %10 = icmp ne i64 %9, 0, !dbg !4581
  br i1 %10, label %11, label %13, !dbg !4582

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4583
  store i8* %12, i8** %3, align 8, !dbg !4584
  br label %27, !dbg !4584

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4585
  br label %14, !dbg !4586

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4587
  %16 = icmp ult i64 -1, %15, !dbg !4589
  br i1 %16, label %17, label %23, !dbg !4590

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4591
  %19 = icmp ne i64 %18, 0, !dbg !4594
  br i1 %19, label %20, label %22, !dbg !4595

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !4596
  store i8* %21, i8** %3, align 8, !dbg !4597
  br label %27, !dbg !4597

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4598
  br label %23, !dbg !4599

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4600
  %25 = load i64, i64* %5, align 8, !dbg !4601
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !4602
  store i8* %26, i8** %3, align 8, !dbg !4603
  br label %27, !dbg !4603

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4604
  ret i8* %28, !dbg !4604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4605 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4606, metadata !DIExpression()), !dbg !4607
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4608, metadata !DIExpression()), !dbg !4609
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4610, metadata !DIExpression()), !dbg !4611
  %7 = load i64, i64* %5, align 8, !dbg !4612
  %8 = icmp ule i64 %7, -1, !dbg !4613
  br i1 %8, label %9, label %17, !dbg !4614

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4615
  %11 = icmp ule i64 %10, -1, !dbg !4616
  br i1 %11, label %12, label %17, !dbg !4612

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4617
  %14 = load i64, i64* %5, align 8, !dbg !4618
  %15 = load i64, i64* %6, align 8, !dbg !4619
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4620
  br label %19, !dbg !4612

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !4621
  br label %19, !dbg !4612

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4612
  ret i8* %20, !dbg !4622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4623 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4628, metadata !DIExpression()), !dbg !4629
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4630, metadata !DIExpression()), !dbg !4631
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4632, metadata !DIExpression()), !dbg !4633
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4634, metadata !DIExpression()), !dbg !4635
  %11 = load i8*, i8** %7, align 8, !dbg !4636
  %12 = icmp eq i8* %11, null, !dbg !4638
  br i1 %12, label %13, label %14, !dbg !4639

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4640
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.183, i64 0, i64 0), i8** %7, align 8, !dbg !4642
  store i64 1, i64* %8, align 8, !dbg !4643
  br label %14, !dbg !4644

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4645
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4647
  br i1 %16, label %17, label %18, !dbg !4648

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4649
  br label %18, !dbg !4650

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4651, metadata !DIExpression()), !dbg !4652
  %19 = load i32*, i32** %6, align 8, !dbg !4653
  %20 = load i8*, i8** %7, align 8, !dbg !4654
  %21 = load i64, i64* %8, align 8, !dbg !4655
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4656
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !4657
  store i64 %23, i64* %10, align 8, !dbg !4652
  %24 = load i64, i64* %10, align 8, !dbg !4658
  %25 = icmp ult i64 %24, -3, !dbg !4660
  br i1 %25, label %26, label %32, !dbg !4661

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4662
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !4663
  %29 = icmp ne i32 %28, 0, !dbg !4663
  br i1 %29, label %32, label %30, !dbg !4664

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4665
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4666
  br label %32, !dbg !4666

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4667
  %34 = icmp eq i64 %33, -3, !dbg !4669
  br i1 %34, label %35, label %36, !dbg !4670

35:                                               ; preds = %32
  call void @abort() #19, !dbg !4671
  unreachable, !dbg !4671

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4672
  %38 = icmp ule i64 -2, %37, !dbg !4674
  br i1 %38, label %39, label %53, !dbg !4675

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4676
  %41 = icmp ne i64 %40, 0, !dbg !4677
  br i1 %41, label %42, label %53, !dbg !4678

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4679
  br i1 %43, label %53, label %44, !dbg !4680

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4681
  %46 = icmp ne i32* %45, null, !dbg !4684
  br i1 %46, label %47, label %52, !dbg !4685

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4686
  %49 = load i8, i8* %48, align 1, !dbg !4687
  %50 = zext i8 %49 to i32, !dbg !4688
  %51 = load i32*, i32** %6, align 8, !dbg !4689
  store i32 %50, i32* %51, align 4, !dbg !4690
  br label %52, !dbg !4691

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4692
  br label %55, !dbg !4692

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4693
  store i64 %54, i64* %5, align 8, !dbg !4694
  br label %55, !dbg !4694

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4695
  ret i64 %56, !dbg !4695
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4696 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4711, metadata !DIExpression()), !dbg !4712
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4713
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4714
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4714
  ret void, !dbg !4715
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4716 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4719, metadata !DIExpression()), !dbg !4720
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4721, metadata !DIExpression()), !dbg !4722
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4723, metadata !DIExpression()), !dbg !4724
  %7 = load i8*, i8** %4, align 8, !dbg !4725
  %8 = load i8*, i8** %5, align 8, !dbg !4726
  %9 = load i64, i64* %6, align 8, !dbg !4727
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !4728
  %11 = icmp ne i32 %10, 0, !dbg !4729
  %12 = xor i1 %11, true, !dbg !4729
  ret i1 %12, !dbg !4730
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4731 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4733, metadata !DIExpression()), !dbg !4734
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4735, metadata !DIExpression()), !dbg !4736
  %5 = load i8*, i8** %3, align 8, !dbg !4737
  %6 = load i64, i64* %4, align 8, !dbg !4738
  %7 = icmp ne i64 %6, 0, !dbg !4738
  br i1 %7, label %8, label %10, !dbg !4738

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4739
  br label %11, !dbg !4738

10:                                               ; preds = %2
  br label %11, !dbg !4738

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4738
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !4740
  ret i8* %13, !dbg !4741
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4742 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4743, metadata !DIExpression()), !dbg !4744
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4745, metadata !DIExpression()), !dbg !4746
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4747, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4749, metadata !DIExpression()), !dbg !4750
  %9 = load i64, i64* %7, align 8, !dbg !4751
  %10 = icmp ult i64 %9, 0, !dbg !4751
  br i1 %10, label %11, label %60, !dbg !4751

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4751
  %13 = icmp ult i64 %12, 0, !dbg !4751
  br i1 %13, label %14, label %37, !dbg !4751

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4751

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4751
  %17 = load i64, i64* %7, align 8, !dbg !4751
  %18 = udiv i64 -1, %17, !dbg !4751
  %19 = icmp ult i64 %16, %18, !dbg !4751
  br i1 %19, label %92, label %96, !dbg !4751

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4751

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4751
  %23 = icmp ult i64 %22, 1, !dbg !4751
  br i1 %23, label %27, label %28, !dbg !4751

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4751
  %26 = icmp ult i64 0, %25, !dbg !4751
  br i1 %26, label %27, label %28, !dbg !4751

27:                                               ; preds = %24, %21
  br label %32, !dbg !4751

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4751
  %30 = sub i64 0, %29, !dbg !4751
  %31 = udiv i64 -1, %30, !dbg !4751
  br label %32, !dbg !4751

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4751
  %34 = load i64, i64* %6, align 8, !dbg !4751
  %35 = sub i64 -1, %34, !dbg !4751
  %36 = icmp ule i64 %33, %35, !dbg !4751
  br i1 %36, label %92, label %96, !dbg !4751

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4751

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4751

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4751

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4751
  %42 = icmp eq i64 %41, -1, !dbg !4751
  br i1 %42, label %43, label %55, !dbg !4751

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4751

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4751
  %46 = add i64 %45, 0, !dbg !4751
  %47 = icmp ult i64 0, %46, !dbg !4751
  br i1 %47, label %92, label %96, !dbg !4751

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4751
  %50 = icmp ult i64 0, %49, !dbg !4751
  br i1 %50, label %51, label %96, !dbg !4751

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4751
  %53 = sub i64 %52, 1, !dbg !4751
  %54 = icmp ult i64 -1, %53, !dbg !4751
  br i1 %54, label %92, label %96, !dbg !4751

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4751
  %57 = udiv i64 0, %56, !dbg !4751
  %58 = load i64, i64* %6, align 8, !dbg !4751
  %59 = icmp ult i64 %57, %58, !dbg !4751
  br i1 %59, label %92, label %96, !dbg !4751

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4751
  %62 = icmp eq i64 %61, 0, !dbg !4751
  br i1 %62, label %63, label %64, !dbg !4751

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4751

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4751
  %66 = icmp ult i64 %65, 0, !dbg !4751
  br i1 %66, label %67, label %87, !dbg !4751

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4751

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4751

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4751

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4751
  %72 = icmp eq i64 %71, -1, !dbg !4751
  br i1 %72, label %73, label %82, !dbg !4751

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4751

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4751
  %76 = add i64 %75, 0, !dbg !4751
  %77 = icmp ult i64 0, %76, !dbg !4751
  br i1 %77, label %92, label %96, !dbg !4751

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4751
  %80 = sub i64 %79, 1, !dbg !4751
  %81 = icmp ult i64 -1, %80, !dbg !4751
  br i1 %81, label %92, label %96, !dbg !4751

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4751
  %84 = udiv i64 0, %83, !dbg !4751
  %85 = load i64, i64* %7, align 8, !dbg !4751
  %86 = icmp ult i64 %84, %85, !dbg !4751
  br i1 %86, label %92, label %96, !dbg !4751

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4751
  %89 = udiv i64 -1, %88, !dbg !4751
  %90 = load i64, i64* %6, align 8, !dbg !4751
  %91 = icmp ult i64 %89, %90, !dbg !4751
  br i1 %91, label %92, label %96, !dbg !4751

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4751
  %94 = load i64, i64* %7, align 8, !dbg !4751
  %95 = mul i64 %93, %94, !dbg !4751
  store i64 %95, i64* %8, align 8, !dbg !4751
  br label %100, !dbg !4751

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4751
  %98 = load i64, i64* %7, align 8, !dbg !4751
  %99 = mul i64 %97, %98, !dbg !4751
  store i64 %99, i64* %8, align 8, !dbg !4751
  br label %100, !dbg !4751

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4751
  %102 = icmp ne i32 %101, 0, !dbg !4751
  br i1 %102, label %103, label %105, !dbg !4753

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4754
  store i32 12, i32* %104, align 4, !dbg !4756
  store i8* null, i8** %4, align 8, !dbg !4757
  br label %109, !dbg !4757

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4758
  %107 = load i64, i64* %8, align 8, !dbg !4759
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4760
  store i8* %108, i8** %4, align 8, !dbg !4761
  br label %109, !dbg !4761

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4762
  ret i8* %110, !dbg !4762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4763 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4766, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4768, metadata !DIExpression()), !dbg !4772
  %5 = load i32, i32* %3, align 4, !dbg !4773
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4775
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4776
  %8 = icmp ne i32 %7, 0, !dbg !4776
  br i1 %8, label %9, label %10, !dbg !4777

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4778
  br label %18, !dbg !4778

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4779
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i64 0, i64 0)), !dbg !4781
  br i1 %12, label %17, label %13, !dbg !4782

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4783
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.195, i64 0, i64 0)), !dbg !4784
  br i1 %15, label %17, label %16, !dbg !4785

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4786
  br label %18, !dbg !4786

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4787
  br label %18, !dbg !4787

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4788
  ret i1 %19, !dbg !4788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4789 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4792, metadata !DIExpression()), !dbg !4793
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4794, metadata !DIExpression()), !dbg !4795
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4796, metadata !DIExpression()), !dbg !4797
  %7 = load i32, i32* %4, align 4, !dbg !4798
  %8 = load i8*, i8** %5, align 8, !dbg !4799
  %9 = load i64, i64* %6, align 8, !dbg !4800
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4801
  ret i32 %10, !dbg !4802
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4803 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4806, metadata !DIExpression()), !dbg !4807
  %3 = load i32, i32* %2, align 4, !dbg !4808
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4809
  ret i8* %4, !dbg !4810
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4811 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4812, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4814, metadata !DIExpression()), !dbg !4815
  %4 = load i32, i32* %2, align 4, !dbg !4816
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4817
  store i8* %5, i8** %3, align 8, !dbg !4815
  %6 = load i8*, i8** %3, align 8, !dbg !4818
  ret i8* %6, !dbg !4819
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4820 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4821, metadata !DIExpression()), !dbg !4822
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4823, metadata !DIExpression()), !dbg !4824
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4825, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4827, metadata !DIExpression()), !dbg !4828
  %10 = load i32, i32* %5, align 4, !dbg !4829
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4830
  store i8* %11, i8** %8, align 8, !dbg !4828
  %12 = load i8*, i8** %8, align 8, !dbg !4831
  %13 = icmp eq i8* %12, null, !dbg !4833
  br i1 %13, label %14, label %21, !dbg !4834

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4835
  %16 = icmp ugt i64 %15, 0, !dbg !4838
  br i1 %16, label %17, label %20, !dbg !4839

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4840
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4840
  store i8 0, i8* %19, align 1, !dbg !4841
  br label %20, !dbg !4840

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4842
  br label %45, !dbg !4842

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4843, metadata !DIExpression()), !dbg !4845
  %22 = load i8*, i8** %8, align 8, !dbg !4846
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4847
  store i64 %23, i64* %9, align 8, !dbg !4845
  %24 = load i64, i64* %9, align 8, !dbg !4848
  %25 = load i64, i64* %7, align 8, !dbg !4850
  %26 = icmp ult i64 %24, %25, !dbg !4851
  br i1 %26, label %27, label %32, !dbg !4852

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4853
  %29 = load i8*, i8** %8, align 8, !dbg !4855
  %30 = load i64, i64* %9, align 8, !dbg !4856
  %31 = add i64 %30, 1, !dbg !4857
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4858
  store i32 0, i32* %4, align 4, !dbg !4859
  br label %45, !dbg !4859

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4860
  %34 = icmp ugt i64 %33, 0, !dbg !4863
  br i1 %34, label %35, label %44, !dbg !4864

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4865
  %37 = load i8*, i8** %8, align 8, !dbg !4867
  %38 = load i64, i64* %7, align 8, !dbg !4868
  %39 = sub i64 %38, 1, !dbg !4869
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4870
  %40 = load i8*, i8** %6, align 8, !dbg !4871
  %41 = load i64, i64* %7, align 8, !dbg !4872
  %42 = sub i64 %41, 1, !dbg !4873
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4871
  store i8 0, i8* %43, align 1, !dbg !4874
  br label %44, !dbg !4875

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4876
  br label %45, !dbg !4876

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4877
  ret i32 %46, !dbg !4877
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
attributes #24 = { allocsize(0,1) }
attributes #25 = { allocsize(0) }
attributes #26 = { allocsize(1) }
attributes #27 = { allocsize(1,2) }

!llvm.dbg.cu = !{!2, !225, !65, !70, !78, !200, !227, !229, !112, !122, !129, !238, !240, !242, !192, !248, !268, !270, !272, !274, !276, !278, !280, !206, !282, !284, !286, !288, !291, !293, !295}
!llvm.ident = !{!297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297, !297}
!llvm.module.flags = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 36, type: !51, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, globals: !41, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mkfifo.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0ee63ed749703cce6fd462844f0b7c3f")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 42, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!23 = !DIEnumerator(name: "_ISupper", value: 256)
!24 = !DIEnumerator(name: "_ISlower", value: 512)
!25 = !DIEnumerator(name: "_ISalpha", value: 1024)
!26 = !DIEnumerator(name: "_ISdigit", value: 2048)
!27 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!28 = !DIEnumerator(name: "_ISspace", value: 8192)
!29 = !DIEnumerator(name: "_ISprint", value: 16384)
!30 = !DIEnumerator(name: "_ISgraph", value: 32768)
!31 = !DIEnumerator(name: "_ISblank", value: 1)
!32 = !DIEnumerator(name: "_IScntrl", value: 2)
!33 = !DIEnumerator(name: "_ISpunct", value: 4)
!34 = !DIEnumerator(name: "_ISalnum", value: 8)
!35 = !{!36, !38, !39, !40}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !{!42, !0}
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !44, file: !45, line: 575, type: !39, isLocal: true, isDefinition: true)
!44 = distinct !DISubprogram(name: "oputs_", scope: !45, file: !45, line: 573, type: !46, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!45 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!50 = !{}
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 1280, elements: !61)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !54, line: 50, size: 256, elements: !55)
!54 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!55 = !{!56, !57, !58, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !54, line: 52, baseType: !48, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !53, file: !54, line: 55, baseType: !39, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !53, file: !54, line: 56, baseType: !59, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !54, line: 57, baseType: !39, size: 32, offset: 192)
!61 = !{!62}
!62 = !DISubrange(count: 5)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "Version", scope: !65, file: !66, line: 3, type: !48, isLocal: false, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !67, splitDebugInlining: false, nameTableKind: None)
!66 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!67 = !{!63}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "file_name", scope: !70, file: !71, line: 45, type: !48, isLocal: true, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !72, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!72 = !{!68, !73}
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !70, file: !71, line: 55, type: !75, isLocal: true, isDefinition: true)
!75 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !78, file: !79, line: 66, type: !107, isLocal: false, isDefinition: true)
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !80, globals: !81, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!80 = !{!38}
!81 = !{!82, !101, !76, !103, !105}
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "old_file_name", scope: !84, file: !79, line: 304, type: !48, isLocal: true, isDefinition: true)
!84 = distinct !DISubprogram(name: "verror_at_line", scope: !79, file: !79, line: 298, type: !85, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !50)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !39, !39, !48, !7, !48, !87}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !88, line: 52, baseType: !89)
!88 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !90, line: 32, baseType: !91)
!90 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !92, baseType: !93)
!92 = !DIFile(filename: "lib/error.c", directory: "/src")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !94, size: 256, elements: !95)
!94 = !DINamespace(name: "std", scope: null)
!95 = !{!96, !97, !98, !99, !100}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !93, file: !92, baseType: !38, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !93, file: !92, baseType: !38, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !93, file: !92, baseType: !38, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !93, file: !92, baseType: !39, size: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !93, file: !92, baseType: !39, size: 32, offset: 224)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "old_line_number", scope: !84, file: !79, line: 305, type: !7, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "error_message_count", scope: !78, file: !79, line: 69, type: !7, isLocal: false, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !78, file: !79, line: 295, type: !39, isLocal: false, isDefinition: true)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null}
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "program_name", scope: !112, file: !113, line: 31, type: !48, isLocal: false, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !114, globals: !115, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!114 = !{!36}
!115 = !{!110}
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "utf07FF", scope: !118, file: !119, line: 46, type: !124, isLocal: true, isDefinition: true)
!118 = distinct !DISubprogram(name: "proper_name_lite", scope: !119, file: !119, line: 38, type: !120, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !50)
!119 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!120 = !DISubroutineType(types: !121)
!121 = !{!48, !48, !48}
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !123, splitDebugInlining: false, nameTableKind: None)
!123 = !{!116}
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 16, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 2)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !129, file: !130, line: 76, type: !186, isLocal: false, isDefinition: true)
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, retainedTypes: !137, globals: !141, splitDebugInlining: false, nameTableKind: None)
!130 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!131 = !{!5, !132, !20}
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 254, baseType: !7, size: 32, elements: !133)
!133 = !{!134, !135, !136}
!134 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!135 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!136 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!137 = !{!39, !40, !138}
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!140 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!141 = !{!127, !142, !148, !160, !162, !167, !175, !182, !184}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !129, file: !130, line: 92, type: !144, isLocal: false, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 320, elements: !146)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!146 = !{!147}
!147 = !DISubrange(count: 10)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !129, file: !130, line: 1040, type: !150, isLocal: false, isDefinition: true)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !130, line: 56, size: 448, elements: !151)
!151 = !{!152, !153, !154, !158, !159}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !150, file: !130, line: 59, baseType: !5, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !130, line: 62, baseType: !39, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !150, file: !130, line: 66, baseType: !155, size: 256, offset: 64)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !150, file: !130, line: 69, baseType: !48, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !150, file: !130, line: 72, baseType: !48, size: 64, offset: 384)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !129, file: !130, line: 107, type: !150, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "slot0", scope: !129, file: !130, line: 831, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 256)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "quote", scope: !169, file: !130, line: 228, type: !172, isLocal: true, isDefinition: true)
!169 = distinct !DISubprogram(name: "gettext_quote", scope: !130, file: !130, line: 197, type: !170, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !50)
!170 = !DISubroutineType(types: !171)
!171 = !{!48, !48, !5}
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !173)
!173 = !{!126, !174}
!174 = !DISubrange(count: 4)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "slotvec", scope: !129, file: !130, line: 834, type: !177, isLocal: true, isDefinition: true)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !130, line: 823, size: 128, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !178, file: !130, line: 825, baseType: !138, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !178, file: !130, line: 826, baseType: !36, size: 64, offset: 64)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "nslots", scope: !129, file: !130, line: 832, type: !39, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "slotvec0", scope: !129, file: !130, line: 833, type: !178, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 704, elements: !188)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!188 = !{!189}
!189 = !DISubrange(count: 11)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !192, file: !193, line: 26, type: !195, isLocal: false, isDefinition: true)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !194, splitDebugInlining: false, nameTableKind: None)
!193 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!194 = !{!190}
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 376, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 47)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "exit_failure", scope: !200, file: !201, line: 24, type: !203, isLocal: false, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !202, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!202 = !{!198}
!203 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "internal_state", scope: !206, file: !207, line: 97, type: !211, isLocal: true, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !208, globals: !210, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!208 = !{!38, !138, !209}
!209 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!210 = !{!204}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !212, line: 6, baseType: !213)
!212 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !214, line: 21, baseType: !215)
!214 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 13, size: 64, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !215, file: !214, line: 15, baseType: !39, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !215, file: !214, line: 20, baseType: !219, size: 32, offset: 32)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !214, line: 16, size: 32, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !219, file: !214, line: 18, baseType: !7, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !219, file: !214, line: 19, baseType: !223, size: 32)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !224)
!224 = !{!174}
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !231, splitDebugInlining: false, nameTableKind: None)
!230 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!231 = !{!232}
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !230, line: 78, baseType: !7, size: 32, elements: !233)
!233 = !{!234, !235, !236, !237}
!234 = !DIEnumerator(name: "MODE_DONE", value: 0)
!235 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!236 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!237 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/se-selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cd8f10965091a99e212a6fcf580f5e3b")
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!241 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !244, retainedTypes: !80, splitDebugInlining: false, nameTableKind: None)
!243 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!244 = !{!245}
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !243, line: 40, baseType: !7, size: 32, elements: !246)
!246 = !{!247}
!247 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !250, retainedTypes: !267, splitDebugInlining: false, nameTableKind: None)
!249 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!250 = !{!251, !258}
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !252, file: !249, line: 188, baseType: !7, size: 32, elements: !256)
!252 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 176, type: !253, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!253 = !DISubroutineType(types: !254)
!254 = !{!38, !38, !255, !138}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!256 = !{!257}
!257 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !259, file: !249, line: 228, baseType: !7, size: 32, elements: !256)
!259 = distinct !DISubprogram(name: "xpalloc", scope: !249, file: !249, line: 223, type: !260, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!260 = !DISubroutineType(types: !261)
!261 = !{!38, !38, !262, !263, !265, !263}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !264, line: 130, baseType: !265)
!264 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !139, line: 35, baseType: !266)
!266 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!267 = !{!36, !38, !75, !266, !140}
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !80, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !80, splitDebugInlining: false, nameTableKind: None)
!279 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !80, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!285 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !290, splitDebugInlining: false, nameTableKind: None)
!289 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!290 = !{!75, !140, !38}
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !80, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!297 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!298 = !{i32 7, !"Dwarf Version", i32 5}
!299 = !{i32 2, !"Debug Info Version", i32 3}
!300 = !{i32 1, !"wchar_size", i32 4}
!301 = !{i32 1, !"branch-target-enforcement", i32 0}
!302 = !{i32 1, !"sign-return-address", i32 0}
!303 = !{i32 1, !"sign-return-address-all", i32 0}
!304 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!305 = !{i32 7, !"PIC Level", i32 2}
!306 = !{i32 7, !"PIE Level", i32 2}
!307 = !{i32 7, !"uwtable", i32 1}
!308 = !{i32 7, !"frame-pointer", i32 1}
!309 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 46, type: !310, scopeLine: 47, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !50)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !39}
!312 = !DILocalVariable(name: "status", arg: 1, scope: !309, file: !3, line: 46, type: !39)
!313 = !DILocation(line: 46, column: 12, scope: !309)
!314 = !DILocation(line: 48, column: 7, scope: !315)
!315 = distinct !DILexicalBlock(scope: !309, file: !3, line: 48, column: 7)
!316 = !DILocation(line: 48, column: 14, scope: !315)
!317 = !DILocation(line: 48, column: 7, scope: !309)
!318 = !DILocation(line: 49, column: 5, scope: !315)
!319 = !DILocation(line: 49, column: 5, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !3, line: 49, column: 5)
!321 = !DILocation(line: 52, column: 15, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !3, line: 51, column: 5)
!323 = !DILocation(line: 52, column: 53, scope: !322)
!324 = !DILocation(line: 52, column: 7, scope: !322)
!325 = !DILocation(line: 53, column: 7, scope: !322)
!326 = !DILocation(line: 57, column: 7, scope: !322)
!327 = !DILocation(line: 59, column: 7, scope: !322)
!328 = !DILocation(line: 63, column: 7, scope: !322)
!329 = !DILocation(line: 67, column: 7, scope: !322)
!330 = !DILocation(line: 72, column: 7, scope: !322)
!331 = !DILocation(line: 73, column: 7, scope: !322)
!332 = !DILocation(line: 74, column: 7, scope: !322)
!333 = !DILocation(line: 76, column: 9, scope: !309)
!334 = !DILocation(line: 76, column: 3, scope: !309)
!335 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !45, file: !45, line: 734, type: !108, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!336 = !DILocation(line: 736, column: 3, scope: !335)
!337 = !DILocation(line: 739, column: 1, scope: !335)
!338 = !DILocalVariable(name: "program", arg: 1, scope: !44, file: !45, line: 573, type: !48)
!339 = !DILocation(line: 573, column: 34, scope: !44)
!340 = !DILocalVariable(name: "option", arg: 2, scope: !44, file: !45, line: 573, type: !48)
!341 = !DILocation(line: 573, column: 55, scope: !44)
!342 = !DILocation(line: 581, column: 7, scope: !343)
!343 = distinct !DILexicalBlock(scope: !44, file: !45, line: 581, column: 7)
!344 = !DILocation(line: 581, column: 19, scope: !343)
!345 = !DILocation(line: 581, column: 7, scope: !44)
!346 = !DILocalVariable(name: "term", scope: !347, file: !45, line: 585, type: !48)
!347 = distinct !DILexicalBlock(scope: !343, file: !45, line: 582, column: 5)
!348 = !DILocation(line: 585, column: 19, scope: !347)
!349 = !DILocation(line: 585, column: 26, scope: !347)
!350 = !DILocation(line: 586, column: 23, scope: !347)
!351 = !DILocation(line: 586, column: 28, scope: !347)
!352 = !DILocation(line: 586, column: 33, scope: !347)
!353 = !DILocation(line: 586, column: 32, scope: !347)
!354 = !DILocation(line: 586, column: 38, scope: !347)
!355 = !DILocation(line: 586, column: 48, scope: !347)
!356 = !DILocation(line: 586, column: 41, scope: !347)
!357 = !DILocation(line: 586, column: 19, scope: !347)
!358 = !DILocation(line: 587, column: 5, scope: !347)
!359 = !DILocation(line: 588, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !44, file: !45, line: 588, column: 7)
!361 = !DILocation(line: 588, column: 7, scope: !44)
!362 = !DILocation(line: 590, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !45, line: 589, column: 5)
!364 = !DILocation(line: 591, column: 7, scope: !363)
!365 = !DILocalVariable(name: "double_space", scope: !44, file: !45, line: 594, type: !75)
!366 = !DILocation(line: 594, column: 8, scope: !44)
!367 = !DILocalVariable(name: "first_word", scope: !44, file: !45, line: 595, type: !48)
!368 = !DILocation(line: 595, column: 15, scope: !44)
!369 = !DILocation(line: 595, column: 28, scope: !44)
!370 = !DILocation(line: 595, column: 45, scope: !44)
!371 = !DILocation(line: 595, column: 37, scope: !44)
!372 = !DILocation(line: 595, column: 35, scope: !44)
!373 = !DILocalVariable(name: "option_text", scope: !44, file: !45, line: 596, type: !48)
!374 = !DILocation(line: 596, column: 15, scope: !44)
!375 = !DILocation(line: 596, column: 37, scope: !44)
!376 = !DILocation(line: 596, column: 29, scope: !44)
!377 = !DILocation(line: 597, column: 8, scope: !378)
!378 = distinct !DILexicalBlock(scope: !44, file: !45, line: 597, column: 7)
!379 = !DILocation(line: 597, column: 7, scope: !44)
!380 = !DILocation(line: 599, column: 21, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !45, line: 598, column: 5)
!382 = !DILocation(line: 599, column: 19, scope: !381)
!383 = !DILocation(line: 602, column: 20, scope: !381)
!384 = !DILocation(line: 603, column: 5, scope: !381)
!385 = !DILocation(line: 604, column: 12, scope: !386)
!386 = distinct !DILexicalBlock(scope: !378, file: !45, line: 604, column: 12)
!387 = !DILocation(line: 604, column: 27, scope: !386)
!388 = !DILocation(line: 604, column: 24, scope: !386)
!389 = !DILocation(line: 604, column: 12, scope: !378)
!390 = !DILocalVariable(name: "s", scope: !391, file: !45, line: 608, type: !48)
!391 = distinct !DILexicalBlock(scope: !386, file: !45, line: 605, column: 5)
!392 = !DILocation(line: 608, column: 19, scope: !391)
!393 = !DILocation(line: 608, column: 23, scope: !391)
!394 = !DILocalVariable(name: "spaces", scope: !391, file: !45, line: 609, type: !138)
!395 = !DILocation(line: 609, column: 14, scope: !391)
!396 = !DILocation(line: 610, column: 7, scope: !391)
!397 = !DILocation(line: 610, column: 14, scope: !391)
!398 = !DILocation(line: 610, column: 18, scope: !391)
!399 = !DILocation(line: 610, column: 16, scope: !391)
!400 = !DILocation(line: 610, column: 30, scope: !391)
!401 = !DILocation(line: 610, column: 33, scope: !391)
!402 = !DILocation(line: 610, column: 40, scope: !391)
!403 = !DILocation(line: 0, scope: !391)
!404 = !DILocation(line: 611, column: 21, scope: !391)
!405 = !DILocation(line: 611, column: 20, scope: !391)
!406 = !DILocation(line: 611, column: 19, scope: !391)
!407 = !DILocation(line: 611, column: 16, scope: !391)
!408 = distinct !{!408, !396, !404, !409}
!409 = !{!"llvm.loop.mustprogress"}
!410 = !DILocation(line: 612, column: 11, scope: !411)
!411 = distinct !DILexicalBlock(scope: !391, file: !45, line: 612, column: 11)
!412 = !DILocation(line: 612, column: 18, scope: !411)
!413 = !DILocation(line: 612, column: 11, scope: !391)
!414 = !DILocation(line: 615, column: 25, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !45, line: 613, column: 9)
!416 = !DILocation(line: 615, column: 23, scope: !415)
!417 = !DILocation(line: 616, column: 24, scope: !415)
!418 = !DILocation(line: 617, column: 9, scope: !415)
!419 = !DILocation(line: 618, column: 5, scope: !391)
!420 = !DILocalVariable(name: "anchor_len", scope: !44, file: !45, line: 620, type: !138)
!421 = !DILocation(line: 620, column: 10, scope: !44)
!422 = !DILocation(line: 620, column: 32, scope: !44)
!423 = !DILocation(line: 620, column: 23, scope: !44)
!424 = !DILocalVariable(name: "desc_text", scope: !44, file: !45, line: 625, type: !48)
!425 = !DILocation(line: 625, column: 15, scope: !44)
!426 = !DILocation(line: 625, column: 27, scope: !44)
!427 = !DILocation(line: 625, column: 41, scope: !44)
!428 = !DILocation(line: 625, column: 39, scope: !44)
!429 = !DILocation(line: 626, column: 3, scope: !44)
!430 = !DILocation(line: 626, column: 11, scope: !44)
!431 = !DILocation(line: 626, column: 10, scope: !44)
!432 = !DILocation(line: 626, column: 21, scope: !44)
!433 = !DILocation(line: 626, column: 25, scope: !44)
!434 = !DILocation(line: 626, column: 24, scope: !44)
!435 = !DILocation(line: 626, column: 35, scope: !44)
!436 = !DILocation(line: 0, scope: !44)
!437 = !DILocation(line: 628, column: 12, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !45, line: 628, column: 11)
!439 = distinct !DILexicalBlock(scope: !44, file: !45, line: 627, column: 5)
!440 = !DILocation(line: 628, column: 11, scope: !438)
!441 = !DILocation(line: 628, column: 22, scope: !438)
!442 = !DILocation(line: 628, column: 29, scope: !438)
!443 = !DILocation(line: 628, column: 34, scope: !438)
!444 = !DILocation(line: 628, column: 44, scope: !438)
!445 = !DILocation(line: 628, column: 32, scope: !438)
!446 = !DILocation(line: 628, column: 49, scope: !438)
!447 = !DILocation(line: 628, column: 11, scope: !439)
!448 = !DILocation(line: 629, column: 22, scope: !438)
!449 = !DILocation(line: 629, column: 9, scope: !438)
!450 = !DILocation(line: 630, column: 11, scope: !451)
!451 = distinct !DILexicalBlock(scope: !439, file: !45, line: 630, column: 11)
!452 = !DILocation(line: 630, column: 11, scope: !439)
!453 = !DILocation(line: 632, column: 16, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !45, line: 632, column: 15)
!455 = distinct !DILexicalBlock(scope: !451, file: !45, line: 631, column: 9)
!456 = !DILocation(line: 632, column: 15, scope: !454)
!457 = !DILocation(line: 632, column: 26, scope: !454)
!458 = !DILocation(line: 632, column: 34, scope: !454)
!459 = !DILocation(line: 632, column: 37, scope: !454)
!460 = !DILocation(line: 632, column: 15, scope: !455)
!461 = !DILocation(line: 633, column: 13, scope: !454)
!462 = !DILocation(line: 636, column: 16, scope: !463)
!463 = distinct !DILexicalBlock(scope: !455, file: !45, line: 636, column: 15)
!464 = !DILocation(line: 636, column: 29, scope: !463)
!465 = !DILocation(line: 636, column: 34, scope: !463)
!466 = !DILocation(line: 636, column: 44, scope: !463)
!467 = !DILocation(line: 636, column: 32, scope: !463)
!468 = !DILocation(line: 636, column: 49, scope: !463)
!469 = !DILocation(line: 636, column: 15, scope: !455)
!470 = !DILocation(line: 637, column: 13, scope: !463)
!471 = !DILocation(line: 638, column: 9, scope: !455)
!472 = !DILocation(line: 640, column: 16, scope: !439)
!473 = distinct !{!473, !429, !474, !409}
!474 = !DILocation(line: 641, column: 5, scope: !44)
!475 = !DILocation(line: 644, column: 3, scope: !44)
!476 = !DILocalVariable(name: "url_program", scope: !44, file: !45, line: 648, type: !48)
!477 = !DILocation(line: 648, column: 15, scope: !44)
!478 = !DILocation(line: 648, column: 38, scope: !44)
!479 = !DILocation(line: 648, column: 31, scope: !44)
!480 = !DILocation(line: 649, column: 38, scope: !44)
!481 = !DILocation(line: 649, column: 31, scope: !44)
!482 = !DILocation(line: 650, column: 38, scope: !44)
!483 = !DILocation(line: 650, column: 31, scope: !44)
!484 = !DILocation(line: 651, column: 38, scope: !44)
!485 = !DILocation(line: 651, column: 31, scope: !44)
!486 = !DILocation(line: 652, column: 38, scope: !44)
!487 = !DILocation(line: 652, column: 31, scope: !44)
!488 = !DILocation(line: 653, column: 38, scope: !44)
!489 = !DILocation(line: 653, column: 31, scope: !44)
!490 = !DILocation(line: 654, column: 38, scope: !44)
!491 = !DILocation(line: 654, column: 31, scope: !44)
!492 = !DILocation(line: 655, column: 38, scope: !44)
!493 = !DILocation(line: 655, column: 31, scope: !44)
!494 = !DILocation(line: 656, column: 38, scope: !44)
!495 = !DILocation(line: 656, column: 31, scope: !44)
!496 = !DILocation(line: 657, column: 38, scope: !44)
!497 = !DILocation(line: 657, column: 31, scope: !44)
!498 = !DILocation(line: 658, column: 31, scope: !44)
!499 = !DILocation(line: 663, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !44, file: !45, line: 663, column: 7)
!501 = !DILocation(line: 664, column: 7, scope: !500)
!502 = !DILocation(line: 664, column: 10, scope: !500)
!503 = !DILocation(line: 663, column: 7, scope: !44)
!504 = !DILocation(line: 670, column: 15, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !45, line: 665, column: 5)
!506 = !DILocation(line: 670, column: 28, scope: !505)
!507 = !DILocation(line: 670, column: 47, scope: !505)
!508 = !DILocation(line: 670, column: 41, scope: !505)
!509 = !DILocation(line: 670, column: 59, scope: !505)
!510 = !DILocation(line: 669, column: 7, scope: !505)
!511 = !DILocation(line: 671, column: 5, scope: !505)
!512 = !DILocation(line: 676, column: 48, scope: !513)
!513 = distinct !DILexicalBlock(scope: !500, file: !45, line: 673, column: 5)
!514 = !DILocation(line: 677, column: 21, scope: !513)
!515 = !DILocation(line: 677, column: 15, scope: !513)
!516 = !DILocation(line: 677, column: 33, scope: !513)
!517 = !DILocation(line: 676, column: 7, scope: !513)
!518 = !DILocation(line: 679, column: 3, scope: !44)
!519 = !DILocation(line: 683, column: 3, scope: !44)
!520 = !DILocation(line: 686, column: 3, scope: !44)
!521 = !DILocation(line: 688, column: 3, scope: !44)
!522 = !DILocation(line: 691, column: 3, scope: !44)
!523 = !DILocation(line: 695, column: 3, scope: !44)
!524 = !DILocation(line: 696, column: 1, scope: !44)
!525 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !45, file: !45, line: 836, type: !526, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !48}
!528 = !DILocalVariable(name: "program", arg: 1, scope: !525, file: !45, line: 836, type: !48)
!529 = !DILocation(line: 836, column: 34, scope: !525)
!530 = !DILocalVariable(name: "infomap", scope: !525, file: !45, line: 838, type: !531)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 896, elements: !537)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !525, file: !45, line: 838, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !533, file: !45, line: 838, baseType: !48, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !533, file: !45, line: 838, baseType: !48, size: 64, offset: 64)
!537 = !{!538}
!538 = !DISubrange(count: 7)
!539 = !DILocation(line: 838, column: 67, scope: !525)
!540 = !DILocalVariable(name: "node", scope: !525, file: !45, line: 848, type: !48)
!541 = !DILocation(line: 848, column: 15, scope: !525)
!542 = !DILocation(line: 848, column: 22, scope: !525)
!543 = !DILocalVariable(name: "map_prog", scope: !525, file: !45, line: 849, type: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!545 = !DILocation(line: 849, column: 25, scope: !525)
!546 = !DILocation(line: 849, column: 36, scope: !525)
!547 = !DILocation(line: 851, column: 3, scope: !525)
!548 = !DILocation(line: 851, column: 10, scope: !525)
!549 = !DILocation(line: 851, column: 20, scope: !525)
!550 = !DILocation(line: 851, column: 28, scope: !525)
!551 = !DILocation(line: 851, column: 40, scope: !525)
!552 = !DILocation(line: 851, column: 49, scope: !525)
!553 = !DILocation(line: 851, column: 59, scope: !525)
!554 = !DILocation(line: 851, column: 33, scope: !525)
!555 = !DILocation(line: 851, column: 31, scope: !525)
!556 = !DILocation(line: 0, scope: !525)
!557 = !DILocation(line: 852, column: 13, scope: !525)
!558 = distinct !{!558, !547, !557, !409}
!559 = !DILocation(line: 854, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !525, file: !45, line: 854, column: 7)
!561 = !DILocation(line: 854, column: 17, scope: !560)
!562 = !DILocation(line: 854, column: 7, scope: !525)
!563 = !DILocation(line: 855, column: 12, scope: !560)
!564 = !DILocation(line: 855, column: 22, scope: !560)
!565 = !DILocation(line: 855, column: 10, scope: !560)
!566 = !DILocation(line: 855, column: 5, scope: !560)
!567 = !DILocation(line: 857, column: 3, scope: !525)
!568 = !DILocalVariable(name: "lc_messages", scope: !525, file: !45, line: 861, type: !48)
!569 = !DILocation(line: 861, column: 15, scope: !525)
!570 = !DILocation(line: 861, column: 29, scope: !525)
!571 = !DILocation(line: 862, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !525, file: !45, line: 862, column: 7)
!573 = !DILocation(line: 862, column: 19, scope: !572)
!574 = !DILocation(line: 862, column: 22, scope: !572)
!575 = !DILocation(line: 862, column: 7, scope: !525)
!576 = !DILocation(line: 868, column: 7, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !45, line: 863, column: 5)
!578 = !DILocation(line: 870, column: 5, scope: !577)
!579 = !DILocalVariable(name: "url_program", scope: !525, file: !45, line: 874, type: !48)
!580 = !DILocation(line: 874, column: 15, scope: !525)
!581 = !DILocation(line: 874, column: 36, scope: !525)
!582 = !DILocation(line: 874, column: 29, scope: !525)
!583 = !DILocation(line: 874, column: 61, scope: !525)
!584 = !DILocation(line: 875, column: 11, scope: !525)
!585 = !DILocation(line: 876, column: 24, scope: !525)
!586 = !DILocation(line: 875, column: 3, scope: !525)
!587 = !DILocation(line: 877, column: 11, scope: !525)
!588 = !DILocation(line: 878, column: 11, scope: !525)
!589 = !DILocation(line: 878, column: 17, scope: !525)
!590 = !DILocation(line: 878, column: 25, scope: !525)
!591 = !DILocation(line: 878, column: 22, scope: !525)
!592 = !DILocation(line: 877, column: 3, scope: !525)
!593 = !DILocation(line: 879, column: 1, scope: !525)
!594 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 80, type: !595, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !50)
!595 = !DISubroutineType(types: !596)
!596 = !{!39, !39, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!598 = !DILocalVariable(name: "argc", arg: 1, scope: !594, file: !3, line: 80, type: !39)
!599 = !DILocation(line: 80, column: 11, scope: !594)
!600 = !DILocalVariable(name: "argv", arg: 2, scope: !594, file: !3, line: 80, type: !597)
!601 = !DILocation(line: 80, column: 24, scope: !594)
!602 = !DILocalVariable(name: "specified_mode", scope: !594, file: !3, line: 82, type: !48)
!603 = !DILocation(line: 82, column: 15, scope: !594)
!604 = !DILocalVariable(name: "scontext", scope: !594, file: !3, line: 83, type: !48)
!605 = !DILocation(line: 83, column: 15, scope: !594)
!606 = !DILocalVariable(name: "set_security_context", scope: !594, file: !3, line: 84, type: !607)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !609, line: 53, flags: DIFlagFwdDecl)
!609 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!610 = !DILocation(line: 84, column: 26, scope: !594)
!611 = !DILocation(line: 87, column: 21, scope: !594)
!612 = !DILocation(line: 87, column: 3, scope: !594)
!613 = !DILocation(line: 88, column: 3, scope: !594)
!614 = !DILocation(line: 89, column: 3, scope: !594)
!615 = !DILocation(line: 90, column: 3, scope: !594)
!616 = !DILocation(line: 92, column: 3, scope: !594)
!617 = !DILocalVariable(name: "optc", scope: !594, file: !3, line: 94, type: !39)
!618 = !DILocation(line: 94, column: 7, scope: !594)
!619 = !DILocation(line: 95, column: 3, scope: !594)
!620 = !DILocation(line: 95, column: 31, scope: !594)
!621 = !DILocation(line: 95, column: 37, scope: !594)
!622 = !DILocation(line: 95, column: 18, scope: !594)
!623 = !DILocation(line: 95, column: 16, scope: !594)
!624 = !DILocation(line: 95, column: 67, scope: !594)
!625 = !DILocation(line: 97, column: 15, scope: !626)
!626 = distinct !DILexicalBlock(scope: !594, file: !3, line: 96, column: 5)
!627 = !DILocation(line: 97, column: 7, scope: !626)
!628 = !DILocation(line: 100, column: 28, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !3, line: 98, column: 9)
!630 = !DILocation(line: 100, column: 26, scope: !629)
!631 = !DILocation(line: 101, column: 11, scope: !629)
!632 = !DILocation(line: 103, column: 15, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !3, line: 103, column: 15)
!634 = !DILocation(line: 103, column: 15, scope: !629)
!635 = !DILocation(line: 106, column: 26, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !3, line: 104, column: 13)
!637 = !DILocation(line: 106, column: 24, scope: !636)
!638 = !DILocation(line: 107, column: 13, scope: !636)
!639 = !DILocation(line: 120, column: 20, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 120, column: 20)
!641 = distinct !DILexicalBlock(scope: !633, file: !3, line: 108, column: 20)
!642 = !DILocation(line: 120, column: 20, scope: !641)
!643 = !DILocation(line: 122, column: 15, scope: !644)
!644 = distinct !DILexicalBlock(scope: !640, file: !3, line: 121, column: 13)
!645 = !DILocation(line: 125, column: 13, scope: !644)
!646 = !DILocation(line: 126, column: 11, scope: !629)
!647 = !DILocation(line: 127, column: 9, scope: !629)
!648 = !DILocation(line: 128, column: 9, scope: !629)
!649 = !DILocation(line: 130, column: 11, scope: !629)
!650 = distinct !{!650, !619, !651, !409}
!651 = !DILocation(line: 132, column: 5, scope: !594)
!652 = !DILocation(line: 134, column: 7, scope: !653)
!653 = distinct !DILexicalBlock(scope: !594, file: !3, line: 134, column: 7)
!654 = !DILocation(line: 134, column: 17, scope: !653)
!655 = !DILocation(line: 134, column: 14, scope: !653)
!656 = !DILocation(line: 134, column: 7, scope: !594)
!657 = !DILocation(line: 136, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !653, file: !3, line: 135, column: 5)
!659 = !DILocation(line: 137, column: 7, scope: !658)
!660 = !DILocation(line: 140, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !594, file: !3, line: 140, column: 7)
!662 = !DILocation(line: 140, column: 7, scope: !594)
!663 = !DILocalVariable(name: "ret", scope: !664, file: !3, line: 142, type: !39)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 141, column: 5)
!665 = !DILocation(line: 142, column: 11, scope: !664)
!666 = !DILocation(line: 143, column: 11, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !3, line: 143, column: 11)
!668 = !DILocation(line: 143, column: 11, scope: !664)
!669 = !DILocation(line: 144, column: 41, scope: !667)
!670 = !DILocation(line: 144, column: 15, scope: !667)
!671 = !DILocation(line: 144, column: 13, scope: !667)
!672 = !DILocation(line: 144, column: 9, scope: !667)
!673 = !DILocation(line: 146, column: 31, scope: !667)
!674 = !DILocation(line: 146, column: 15, scope: !667)
!675 = !DILocation(line: 146, column: 13, scope: !667)
!676 = !DILocation(line: 148, column: 11, scope: !677)
!677 = distinct !DILexicalBlock(scope: !664, file: !3, line: 148, column: 11)
!678 = !DILocation(line: 148, column: 15, scope: !677)
!679 = !DILocation(line: 148, column: 11, scope: !664)
!680 = !DILocation(line: 149, column: 9, scope: !677)
!681 = !DILocation(line: 152, column: 5, scope: !664)
!682 = !DILocalVariable(name: "newmode", scope: !594, file: !3, line: 154, type: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !684, line: 69, baseType: !685)
!684 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !686, line: 150, baseType: !7)
!686 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!687 = !DILocation(line: 154, column: 10, scope: !594)
!688 = !DILocation(line: 155, column: 7, scope: !689)
!689 = distinct !DILexicalBlock(scope: !594, file: !3, line: 155, column: 7)
!690 = !DILocation(line: 155, column: 7, scope: !594)
!691 = !DILocalVariable(name: "change", scope: !692, file: !3, line: 157, type: !693)
!692 = distinct !DILexicalBlock(scope: !689, file: !3, line: 156, column: 5)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !695, line: 35, flags: DIFlagFwdDecl)
!695 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!696 = !DILocation(line: 157, column: 27, scope: !692)
!697 = !DILocation(line: 157, column: 50, scope: !692)
!698 = !DILocation(line: 157, column: 36, scope: !692)
!699 = !DILocation(line: 158, column: 12, scope: !700)
!700 = distinct !DILexicalBlock(scope: !692, file: !3, line: 158, column: 11)
!701 = !DILocation(line: 158, column: 11, scope: !692)
!702 = !DILocation(line: 159, column: 9, scope: !700)
!703 = !DILocalVariable(name: "umask_value", scope: !692, file: !3, line: 160, type: !683)
!704 = !DILocation(line: 160, column: 14, scope: !692)
!705 = !DILocation(line: 160, column: 28, scope: !692)
!706 = !DILocation(line: 161, column: 14, scope: !692)
!707 = !DILocation(line: 161, column: 7, scope: !692)
!708 = !DILocation(line: 162, column: 30, scope: !692)
!709 = !DILocation(line: 162, column: 46, scope: !692)
!710 = !DILocation(line: 162, column: 59, scope: !692)
!711 = !DILocation(line: 162, column: 17, scope: !692)
!712 = !DILocation(line: 162, column: 15, scope: !692)
!713 = !DILocation(line: 163, column: 13, scope: !692)
!714 = !DILocation(line: 163, column: 7, scope: !692)
!715 = !DILocation(line: 164, column: 11, scope: !716)
!716 = distinct !DILexicalBlock(scope: !692, file: !3, line: 164, column: 11)
!717 = !DILocation(line: 164, column: 19, scope: !716)
!718 = !DILocation(line: 164, column: 11, scope: !692)
!719 = !DILocation(line: 165, column: 9, scope: !716)
!720 = !DILocation(line: 167, column: 5, scope: !692)
!721 = !DILocalVariable(name: "exit_status", scope: !594, file: !3, line: 169, type: !39)
!722 = !DILocation(line: 169, column: 7, scope: !594)
!723 = !DILocation(line: 170, column: 3, scope: !594)
!724 = !DILocation(line: 170, column: 10, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 170, column: 3)
!726 = distinct !DILexicalBlock(scope: !594, file: !3, line: 170, column: 3)
!727 = !DILocation(line: 170, column: 19, scope: !725)
!728 = !DILocation(line: 170, column: 17, scope: !725)
!729 = !DILocation(line: 170, column: 3, scope: !726)
!730 = !DILocation(line: 172, column: 11, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 172, column: 11)
!732 = distinct !DILexicalBlock(scope: !725, file: !3, line: 171, column: 5)
!733 = !DILocation(line: 172, column: 11, scope: !732)
!734 = !DILocation(line: 173, column: 21, scope: !731)
!735 = !DILocation(line: 173, column: 43, scope: !731)
!736 = !DILocation(line: 173, column: 48, scope: !731)
!737 = !DILocation(line: 173, column: 9, scope: !731)
!738 = !DILocation(line: 174, column: 19, scope: !739)
!739 = distinct !DILexicalBlock(scope: !732, file: !3, line: 174, column: 11)
!740 = !DILocation(line: 174, column: 24, scope: !739)
!741 = !DILocation(line: 174, column: 33, scope: !739)
!742 = !DILocation(line: 174, column: 11, scope: !739)
!743 = !DILocation(line: 174, column: 42, scope: !739)
!744 = !DILocation(line: 174, column: 11, scope: !732)
!745 = !DILocation(line: 176, column: 11, scope: !746)
!746 = distinct !DILexicalBlock(scope: !739, file: !3, line: 175, column: 9)
!747 = !DILocation(line: 177, column: 23, scope: !746)
!748 = !DILocation(line: 178, column: 9, scope: !746)
!749 = !DILocation(line: 179, column: 16, scope: !750)
!750 = distinct !DILexicalBlock(scope: !739, file: !3, line: 179, column: 16)
!751 = !DILocation(line: 179, column: 31, scope: !750)
!752 = !DILocation(line: 179, column: 42, scope: !750)
!753 = !DILocation(line: 179, column: 47, scope: !750)
!754 = !DILocation(line: 179, column: 56, scope: !750)
!755 = !DILocation(line: 179, column: 34, scope: !750)
!756 = !DILocation(line: 179, column: 65, scope: !750)
!757 = !DILocation(line: 179, column: 16, scope: !739)
!758 = !DILocation(line: 181, column: 11, scope: !759)
!759 = distinct !DILexicalBlock(scope: !750, file: !3, line: 180, column: 9)
!760 = !DILocation(line: 183, column: 23, scope: !759)
!761 = !DILocation(line: 184, column: 9, scope: !759)
!762 = !DILocation(line: 185, column: 5, scope: !732)
!763 = !DILocation(line: 170, column: 25, scope: !725)
!764 = !DILocation(line: 170, column: 3, scope: !725)
!765 = distinct !{!765, !729, !766, !409}
!766 = !DILocation(line: 185, column: 5, scope: !726)
!767 = !DILocation(line: 187, column: 10, scope: !594)
!768 = !DILocation(line: 187, column: 3, scope: !594)
!769 = distinct !DISubprogram(name: "is_smack_enabled", scope: !770, file: !770, line: 37, type: !771, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!770 = !DIFile(filename: "./lib/smack.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f8a0c9df6e268b12bd40a2b1000b787d")
!771 = !DISubroutineType(types: !772)
!772 = !{!75}
!773 = !DILocation(line: 42, column: 3, scope: !769)
!774 = distinct !DISubprogram(name: "smack_set_label_for_self", scope: !770, file: !770, line: 30, type: !775, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!775 = !DISubroutineType(types: !776)
!776 = !{!39, !48}
!777 = !DILocalVariable(name: "label", arg: 1, scope: !774, file: !770, line: 30, type: !48)
!778 = !DILocation(line: 30, column: 52, scope: !774)
!779 = !DILocation(line: 32, column: 3, scope: !774)
!780 = distinct !DISubprogram(name: "defaultcon", scope: !781, file: !781, line: 49, type: !782, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!781 = !DIFile(filename: "src/selinux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "13efa93c67c6cc8e1be8195655a2b752")
!782 = !DISubroutineType(types: !783)
!783 = !{!39, !607, !48, !683}
!784 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !780, file: !781, line: 49, type: !607)
!785 = !DILocation(line: 49, column: 49, scope: !780)
!786 = !DILocalVariable(name: "path", arg: 2, scope: !780, file: !781, line: 50, type: !48)
!787 = !DILocation(line: 50, column: 38, scope: !780)
!788 = !DILocalVariable(name: "mode", arg: 3, scope: !780, file: !781, line: 50, type: !683)
!789 = !DILocation(line: 50, column: 64, scope: !780)
!790 = !DILocation(line: 51, column: 3, scope: !780)
!791 = !DILocation(line: 51, column: 9, scope: !780)
!792 = !DILocation(line: 51, column: 20, scope: !780)
!793 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !71, file: !71, line: 50, type: !526, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !50)
!794 = !DILocalVariable(name: "file", arg: 1, scope: !793, file: !71, line: 50, type: !48)
!795 = !DILocation(line: 50, column: 41, scope: !793)
!796 = !DILocation(line: 52, column: 15, scope: !793)
!797 = !DILocation(line: 52, column: 13, scope: !793)
!798 = !DILocation(line: 53, column: 1, scope: !793)
!799 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !71, file: !71, line: 87, type: !800, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !50)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !75}
!802 = !DILocalVariable(name: "ignore", arg: 1, scope: !799, file: !71, line: 87, type: !75)
!803 = !DILocation(line: 87, column: 37, scope: !799)
!804 = !DILocation(line: 89, column: 18, scope: !799)
!805 = !DILocation(line: 89, column: 16, scope: !799)
!806 = !DILocation(line: 90, column: 1, scope: !799)
!807 = distinct !DISubprogram(name: "close_stdout", scope: !71, file: !71, line: 116, type: !108, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !50)
!808 = !DILocation(line: 118, column: 21, scope: !809)
!809 = distinct !DILexicalBlock(scope: !807, file: !71, line: 118, column: 7)
!810 = !DILocation(line: 118, column: 7, scope: !809)
!811 = !DILocation(line: 118, column: 29, scope: !809)
!812 = !DILocation(line: 119, column: 7, scope: !809)
!813 = !DILocation(line: 119, column: 12, scope: !809)
!814 = !DILocation(line: 119, column: 25, scope: !809)
!815 = !DILocation(line: 119, column: 28, scope: !809)
!816 = !DILocation(line: 119, column: 34, scope: !809)
!817 = !DILocation(line: 118, column: 7, scope: !807)
!818 = !DILocalVariable(name: "write_error", scope: !819, file: !71, line: 121, type: !48)
!819 = distinct !DILexicalBlock(scope: !809, file: !71, line: 120, column: 5)
!820 = !DILocation(line: 121, column: 19, scope: !819)
!821 = !DILocation(line: 121, column: 33, scope: !819)
!822 = !DILocation(line: 122, column: 11, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !71, line: 122, column: 11)
!824 = !DILocation(line: 122, column: 11, scope: !819)
!825 = !DILocation(line: 123, column: 9, scope: !823)
!826 = !DILocation(line: 126, column: 9, scope: !823)
!827 = !DILocation(line: 128, column: 14, scope: !819)
!828 = !DILocation(line: 128, column: 7, scope: !819)
!829 = !DILocation(line: 133, column: 42, scope: !830)
!830 = distinct !DILexicalBlock(scope: !807, file: !71, line: 133, column: 7)
!831 = !DILocation(line: 133, column: 28, scope: !830)
!832 = !DILocation(line: 133, column: 50, scope: !830)
!833 = !DILocation(line: 133, column: 7, scope: !807)
!834 = !DILocation(line: 134, column: 12, scope: !830)
!835 = !DILocation(line: 134, column: 5, scope: !830)
!836 = !DILocation(line: 135, column: 1, scope: !807)
!837 = distinct !DISubprogram(name: "verror", scope: !79, file: !79, line: 251, type: !838, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !50)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !39, !39, !48, !87}
!840 = !DILocalVariable(name: "status", arg: 1, scope: !837, file: !79, line: 251, type: !39)
!841 = !DILocation(line: 251, column: 1, scope: !837)
!842 = !DILocalVariable(name: "errnum", arg: 2, scope: !837, file: !79, line: 251, type: !39)
!843 = !DILocalVariable(name: "message", arg: 3, scope: !837, file: !79, line: 251, type: !48)
!844 = !DILocalVariable(name: "args", arg: 4, scope: !837, file: !79, line: 251, type: !87)
!845 = !DILocation(line: 261, column: 3, scope: !837)
!846 = !DILocation(line: 265, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !837, file: !79, line: 265, column: 7)
!848 = !DILocation(line: 265, column: 7, scope: !837)
!849 = !DILocation(line: 266, column: 7, scope: !847)
!850 = !DILocation(line: 266, column: 5, scope: !847)
!851 = !DILocation(line: 272, column: 16, scope: !852)
!852 = distinct !DILexicalBlock(scope: !847, file: !79, line: 268, column: 5)
!853 = !DILocation(line: 272, column: 32, scope: !852)
!854 = !DILocation(line: 272, column: 7, scope: !852)
!855 = !DILocation(line: 276, column: 3, scope: !837)
!856 = !DILocation(line: 282, column: 1, scope: !837)
!857 = distinct !DISubprogram(name: "flush_stdout", scope: !79, file: !79, line: 163, type: !108, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !78, retainedNodes: !50)
!858 = !DILocalVariable(name: "stdout_fd", scope: !857, file: !79, line: 166, type: !39)
!859 = !DILocation(line: 166, column: 7, scope: !857)
!860 = !DILocation(line: 172, column: 13, scope: !857)
!861 = !DILocation(line: 182, column: 12, scope: !862)
!862 = distinct !DILexicalBlock(scope: !857, file: !79, line: 182, column: 7)
!863 = !DILocation(line: 182, column: 9, scope: !862)
!864 = !DILocation(line: 182, column: 22, scope: !862)
!865 = !DILocation(line: 182, column: 34, scope: !862)
!866 = !DILocation(line: 182, column: 25, scope: !862)
!867 = !DILocation(line: 182, column: 7, scope: !857)
!868 = !DILocation(line: 184, column: 5, scope: !862)
!869 = !DILocation(line: 185, column: 1, scope: !857)
!870 = distinct !DISubprogram(name: "error_tail", scope: !79, file: !79, line: 219, type: !838, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !78, retainedNodes: !50)
!871 = !DILocalVariable(name: "status", arg: 1, scope: !870, file: !79, line: 219, type: !39)
!872 = !DILocation(line: 219, column: 1, scope: !870)
!873 = !DILocalVariable(name: "errnum", arg: 2, scope: !870, file: !79, line: 219, type: !39)
!874 = !DILocalVariable(name: "message", arg: 3, scope: !870, file: !79, line: 219, type: !48)
!875 = !DILocalVariable(name: "args", arg: 4, scope: !870, file: !79, line: 219, type: !87)
!876 = !DILocation(line: 229, column: 13, scope: !870)
!877 = !DILocation(line: 229, column: 21, scope: !870)
!878 = !DILocation(line: 229, column: 3, scope: !870)
!879 = !DILocation(line: 232, column: 3, scope: !870)
!880 = !DILocation(line: 233, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !870, file: !79, line: 233, column: 7)
!882 = !DILocation(line: 233, column: 7, scope: !870)
!883 = !DILocation(line: 234, column: 26, scope: !881)
!884 = !DILocation(line: 234, column: 5, scope: !881)
!885 = !DILocation(line: 238, column: 3, scope: !870)
!886 = !DILocation(line: 240, column: 3, scope: !870)
!887 = !DILocation(line: 241, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !870, file: !79, line: 241, column: 7)
!889 = !DILocation(line: 241, column: 7, scope: !870)
!890 = !DILocation(line: 242, column: 11, scope: !888)
!891 = !DILocation(line: 242, column: 5, scope: !888)
!892 = !DILocation(line: 243, column: 1, scope: !870)
!893 = distinct !DISubprogram(name: "print_errno_message", scope: !79, file: !79, line: 188, type: !310, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !78, retainedNodes: !50)
!894 = !DILocalVariable(name: "errnum", arg: 1, scope: !893, file: !79, line: 188, type: !39)
!895 = !DILocation(line: 188, column: 26, scope: !893)
!896 = !DILocalVariable(name: "s", scope: !893, file: !79, line: 190, type: !48)
!897 = !DILocation(line: 190, column: 15, scope: !893)
!898 = !DILocalVariable(name: "errbuf", scope: !893, file: !79, line: 193, type: !899)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8192, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 1024)
!902 = !DILocation(line: 193, column: 8, scope: !893)
!903 = !DILocation(line: 195, column: 21, scope: !893)
!904 = !DILocation(line: 195, column: 29, scope: !893)
!905 = !DILocation(line: 195, column: 7, scope: !893)
!906 = !DILocation(line: 195, column: 5, scope: !893)
!907 = !DILocation(line: 207, column: 9, scope: !908)
!908 = distinct !DILexicalBlock(scope: !893, file: !79, line: 207, column: 7)
!909 = !DILocation(line: 207, column: 7, scope: !893)
!910 = !DILocation(line: 208, column: 9, scope: !908)
!911 = !DILocation(line: 208, column: 7, scope: !908)
!912 = !DILocation(line: 208, column: 5, scope: !908)
!913 = !DILocation(line: 214, column: 12, scope: !893)
!914 = !DILocation(line: 214, column: 28, scope: !893)
!915 = !DILocation(line: 214, column: 3, scope: !893)
!916 = !DILocation(line: 216, column: 1, scope: !893)
!917 = distinct !DISubprogram(name: "is_open", scope: !79, file: !79, line: 145, type: !918, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !78, retainedNodes: !50)
!918 = !DISubroutineType(types: !919)
!919 = !{!39, !39}
!920 = !DILocalVariable(name: "fd", arg: 1, scope: !917, file: !79, line: 145, type: !39)
!921 = !DILocation(line: 145, column: 14, scope: !917)
!922 = !DILocation(line: 157, column: 22, scope: !917)
!923 = !DILocation(line: 157, column: 15, scope: !917)
!924 = !DILocation(line: 157, column: 12, scope: !917)
!925 = !DILocation(line: 157, column: 3, scope: !917)
!926 = distinct !DISubprogram(name: "error", scope: !79, file: !79, line: 285, type: !927, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !50)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !39, !39, !48, null}
!929 = !DILocalVariable(name: "status", arg: 1, scope: !926, file: !79, line: 285, type: !39)
!930 = !DILocation(line: 285, column: 12, scope: !926)
!931 = !DILocalVariable(name: "errnum", arg: 2, scope: !926, file: !79, line: 285, type: !39)
!932 = !DILocation(line: 285, column: 24, scope: !926)
!933 = !DILocalVariable(name: "message", arg: 3, scope: !926, file: !79, line: 285, type: !48)
!934 = !DILocation(line: 285, column: 44, scope: !926)
!935 = !DILocalVariable(name: "ap", scope: !926, file: !79, line: 287, type: !87)
!936 = !DILocation(line: 287, column: 11, scope: !926)
!937 = !DILocation(line: 288, column: 3, scope: !926)
!938 = !DILocation(line: 289, column: 3, scope: !926)
!939 = !DILocation(line: 290, column: 3, scope: !926)
!940 = !DILocation(line: 291, column: 1, scope: !926)
!941 = !DILocalVariable(name: "status", arg: 1, scope: !84, file: !79, line: 298, type: !39)
!942 = !DILocation(line: 298, column: 1, scope: !84)
!943 = !DILocalVariable(name: "errnum", arg: 2, scope: !84, file: !79, line: 298, type: !39)
!944 = !DILocalVariable(name: "file_name", arg: 3, scope: !84, file: !79, line: 298, type: !48)
!945 = !DILocalVariable(name: "line_number", arg: 4, scope: !84, file: !79, line: 298, type: !7)
!946 = !DILocalVariable(name: "message", arg: 5, scope: !84, file: !79, line: 298, type: !48)
!947 = !DILocalVariable(name: "args", arg: 6, scope: !84, file: !79, line: 298, type: !87)
!948 = !DILocation(line: 302, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !84, file: !79, line: 302, column: 7)
!950 = !DILocation(line: 302, column: 7, scope: !84)
!951 = !DILocation(line: 307, column: 11, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !79, line: 307, column: 11)
!953 = distinct !DILexicalBlock(scope: !949, file: !79, line: 303, column: 5)
!954 = !DILocation(line: 307, column: 30, scope: !952)
!955 = !DILocation(line: 307, column: 27, scope: !952)
!956 = !DILocation(line: 308, column: 11, scope: !952)
!957 = !DILocation(line: 308, column: 15, scope: !952)
!958 = !DILocation(line: 308, column: 28, scope: !952)
!959 = !DILocation(line: 308, column: 25, scope: !952)
!960 = !DILocation(line: 309, column: 15, scope: !952)
!961 = !DILocation(line: 309, column: 19, scope: !952)
!962 = !DILocation(line: 309, column: 33, scope: !952)
!963 = !DILocation(line: 310, column: 19, scope: !952)
!964 = !DILocation(line: 310, column: 22, scope: !952)
!965 = !DILocation(line: 310, column: 32, scope: !952)
!966 = !DILocation(line: 311, column: 19, scope: !952)
!967 = !DILocation(line: 311, column: 30, scope: !952)
!968 = !DILocation(line: 311, column: 45, scope: !952)
!969 = !DILocation(line: 311, column: 22, scope: !952)
!970 = !DILocation(line: 311, column: 56, scope: !952)
!971 = !DILocation(line: 307, column: 11, scope: !953)
!972 = !DILocation(line: 314, column: 9, scope: !952)
!973 = !DILocation(line: 316, column: 23, scope: !953)
!974 = !DILocation(line: 316, column: 21, scope: !953)
!975 = !DILocation(line: 317, column: 25, scope: !953)
!976 = !DILocation(line: 317, column: 23, scope: !953)
!977 = !DILocation(line: 318, column: 5, scope: !953)
!978 = !DILocation(line: 327, column: 3, scope: !84)
!979 = !DILocation(line: 331, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !84, file: !79, line: 331, column: 7)
!981 = !DILocation(line: 331, column: 7, scope: !84)
!982 = !DILocation(line: 332, column: 7, scope: !980)
!983 = !DILocation(line: 332, column: 5, scope: !980)
!984 = !DILocation(line: 338, column: 16, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !79, line: 334, column: 5)
!986 = !DILocation(line: 338, column: 31, scope: !985)
!987 = !DILocation(line: 338, column: 7, scope: !985)
!988 = !DILocation(line: 346, column: 12, scope: !84)
!989 = !DILocation(line: 346, column: 20, scope: !84)
!990 = !DILocation(line: 346, column: 30, scope: !84)
!991 = !DILocation(line: 347, column: 12, scope: !84)
!992 = !DILocation(line: 347, column: 23, scope: !84)
!993 = !DILocation(line: 346, column: 3, scope: !84)
!994 = !DILocation(line: 350, column: 3, scope: !84)
!995 = !DILocation(line: 356, column: 1, scope: !84)
!996 = distinct !DISubprogram(name: "error_at_line", scope: !79, file: !79, line: 359, type: !997, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !50)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !39, !39, !48, !7, !48, null}
!999 = !DILocalVariable(name: "status", arg: 1, scope: !996, file: !79, line: 359, type: !39)
!1000 = !DILocation(line: 359, column: 20, scope: !996)
!1001 = !DILocalVariable(name: "errnum", arg: 2, scope: !996, file: !79, line: 359, type: !39)
!1002 = !DILocation(line: 359, column: 32, scope: !996)
!1003 = !DILocalVariable(name: "file_name", arg: 3, scope: !996, file: !79, line: 359, type: !48)
!1004 = !DILocation(line: 359, column: 52, scope: !996)
!1005 = !DILocalVariable(name: "line_number", arg: 4, scope: !996, file: !79, line: 360, type: !7)
!1006 = !DILocation(line: 360, column: 29, scope: !996)
!1007 = !DILocalVariable(name: "message", arg: 5, scope: !996, file: !79, line: 360, type: !48)
!1008 = !DILocation(line: 360, column: 54, scope: !996)
!1009 = !DILocalVariable(name: "ap", scope: !996, file: !79, line: 362, type: !87)
!1010 = !DILocation(line: 362, column: 11, scope: !996)
!1011 = !DILocation(line: 363, column: 3, scope: !996)
!1012 = !DILocation(line: 364, column: 3, scope: !996)
!1013 = !DILocation(line: 366, column: 3, scope: !996)
!1014 = !DILocation(line: 367, column: 1, scope: !996)
!1015 = distinct !DISubprogram(name: "getprogname", scope: !228, file: !228, line: 54, type: !1016, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !227, retainedNodes: !50)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!48}
!1018 = !DILocation(line: 58, column: 10, scope: !1015)
!1019 = !DILocation(line: 58, column: 3, scope: !1015)
!1020 = distinct !DISubprogram(name: "mode_compile", scope: !230, file: !230, line: 134, type: !1021, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !229, retainedNodes: !50)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!1023, !48}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !230, line: 98, size: 128, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1024, file: !230, line: 100, baseType: !37, size: 8)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1024, file: !230, line: 101, baseType: !37, size: 8, offset: 8)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1024, file: !230, line: 102, baseType: !683, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1024, file: !230, line: 103, baseType: !683, size: 32, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1024, file: !230, line: 104, baseType: !683, size: 32, offset: 96)
!1031 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1020, file: !230, line: 134, type: !48)
!1032 = !DILocation(line: 134, column: 27, scope: !1020)
!1033 = !DILocation(line: 136, column: 15, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1020, file: !230, line: 136, column: 7)
!1035 = !DILocation(line: 136, column: 14, scope: !1034)
!1036 = !DILocation(line: 136, column: 11, scope: !1034)
!1037 = !DILocation(line: 136, column: 27, scope: !1034)
!1038 = !DILocation(line: 136, column: 31, scope: !1034)
!1039 = !DILocation(line: 136, column: 30, scope: !1034)
!1040 = !DILocation(line: 136, column: 43, scope: !1034)
!1041 = !DILocation(line: 136, column: 7, scope: !1020)
!1042 = !DILocalVariable(name: "p", scope: !1043, file: !230, line: 138, type: !48)
!1043 = distinct !DILexicalBlock(scope: !1034, file: !230, line: 137, column: 5)
!1044 = !DILocation(line: 138, column: 19, scope: !1043)
!1045 = !DILocalVariable(name: "octal_mode", scope: !1043, file: !230, line: 139, type: !7)
!1046 = !DILocation(line: 139, column: 20, scope: !1043)
!1047 = !DILocalVariable(name: "mode", scope: !1043, file: !230, line: 140, type: !683)
!1048 = !DILocation(line: 140, column: 14, scope: !1043)
!1049 = !DILocalVariable(name: "mentioned", scope: !1043, file: !230, line: 141, type: !683)
!1050 = !DILocation(line: 141, column: 14, scope: !1043)
!1051 = !DILocation(line: 143, column: 11, scope: !1043)
!1052 = !DILocation(line: 143, column: 9, scope: !1043)
!1053 = !DILocation(line: 144, column: 7, scope: !1043)
!1054 = !DILocation(line: 146, column: 28, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1043, file: !230, line: 145, column: 9)
!1056 = !DILocation(line: 146, column: 26, scope: !1055)
!1057 = !DILocation(line: 146, column: 43, scope: !1055)
!1058 = !DILocation(line: 146, column: 41, scope: !1055)
!1059 = !DILocation(line: 146, column: 39, scope: !1055)
!1060 = !DILocation(line: 146, column: 46, scope: !1055)
!1061 = !DILocation(line: 146, column: 22, scope: !1055)
!1062 = !DILocation(line: 147, column: 22, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1055, file: !230, line: 147, column: 15)
!1064 = !DILocation(line: 147, column: 20, scope: !1063)
!1065 = !DILocation(line: 147, column: 15, scope: !1055)
!1066 = !DILocation(line: 148, column: 13, scope: !1063)
!1067 = !DILocation(line: 149, column: 9, scope: !1055)
!1068 = !DILocation(line: 150, column: 22, scope: !1043)
!1069 = !DILocation(line: 150, column: 21, scope: !1043)
!1070 = !DILocation(line: 150, column: 18, scope: !1043)
!1071 = !DILocation(line: 150, column: 24, scope: !1043)
!1072 = !DILocation(line: 150, column: 28, scope: !1043)
!1073 = !DILocation(line: 150, column: 27, scope: !1043)
!1074 = !DILocation(line: 150, column: 30, scope: !1043)
!1075 = !DILocation(line: 0, scope: !1043)
!1076 = distinct !{!1076, !1053, !1077, !409}
!1077 = !DILocation(line: 150, column: 35, scope: !1043)
!1078 = !DILocation(line: 152, column: 12, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1043, file: !230, line: 152, column: 11)
!1080 = !DILocation(line: 152, column: 11, scope: !1079)
!1081 = !DILocation(line: 152, column: 11, scope: !1043)
!1082 = !DILocation(line: 153, column: 9, scope: !1079)
!1083 = !DILocation(line: 155, column: 29, scope: !1043)
!1084 = !DILocation(line: 155, column: 14, scope: !1043)
!1085 = !DILocation(line: 155, column: 12, scope: !1043)
!1086 = !DILocation(line: 156, column: 20, scope: !1043)
!1087 = !DILocation(line: 156, column: 24, scope: !1043)
!1088 = !DILocation(line: 156, column: 22, scope: !1043)
!1089 = !DILocation(line: 156, column: 36, scope: !1043)
!1090 = !DILocation(line: 157, column: 23, scope: !1043)
!1091 = !DILocation(line: 157, column: 28, scope: !1043)
!1092 = !DILocation(line: 157, column: 51, scope: !1043)
!1093 = !DILocation(line: 157, column: 61, scope: !1043)
!1094 = !DILocation(line: 156, column: 17, scope: !1043)
!1095 = !DILocation(line: 159, column: 35, scope: !1043)
!1096 = !DILocation(line: 159, column: 41, scope: !1043)
!1097 = !DILocation(line: 159, column: 14, scope: !1043)
!1098 = !DILocation(line: 159, column: 7, scope: !1043)
!1099 = !DILocalVariable(name: "mc", scope: !1020, file: !230, line: 163, type: !1023)
!1100 = !DILocation(line: 163, column: 23, scope: !1020)
!1101 = !DILocalVariable(name: "needed", scope: !1102, file: !230, line: 167, type: !138)
!1102 = distinct !DILexicalBlock(scope: !1020, file: !230, line: 166, column: 3)
!1103 = !DILocation(line: 167, column: 12, scope: !1102)
!1104 = !DILocalVariable(name: "p", scope: !1105, file: !230, line: 168, type: !48)
!1105 = distinct !DILexicalBlock(scope: !1102, file: !230, line: 168, column: 5)
!1106 = !DILocation(line: 168, column: 22, scope: !1105)
!1107 = !DILocation(line: 168, column: 26, scope: !1105)
!1108 = !DILocation(line: 168, column: 10, scope: !1105)
!1109 = !DILocation(line: 168, column: 40, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !230, line: 168, column: 5)
!1111 = !DILocation(line: 168, column: 39, scope: !1110)
!1112 = !DILocation(line: 168, column: 5, scope: !1105)
!1113 = !DILocation(line: 169, column: 19, scope: !1110)
!1114 = !DILocation(line: 169, column: 18, scope: !1110)
!1115 = !DILocation(line: 169, column: 21, scope: !1110)
!1116 = !DILocation(line: 169, column: 28, scope: !1110)
!1117 = !DILocation(line: 169, column: 32, scope: !1110)
!1118 = !DILocation(line: 169, column: 31, scope: !1110)
!1119 = !DILocation(line: 169, column: 34, scope: !1110)
!1120 = !DILocation(line: 169, column: 41, scope: !1110)
!1121 = !DILocation(line: 169, column: 45, scope: !1110)
!1122 = !DILocation(line: 169, column: 44, scope: !1110)
!1123 = !DILocation(line: 169, column: 47, scope: !1110)
!1124 = !DILocation(line: 169, column: 17, scope: !1110)
!1125 = !DILocation(line: 169, column: 14, scope: !1110)
!1126 = !DILocation(line: 169, column: 7, scope: !1110)
!1127 = !DILocation(line: 168, column: 44, scope: !1110)
!1128 = !DILocation(line: 168, column: 5, scope: !1110)
!1129 = distinct !{!1129, !1112, !1130, !409}
!1130 = !DILocation(line: 169, column: 53, scope: !1105)
!1131 = !DILocation(line: 170, column: 20, scope: !1102)
!1132 = !DILocation(line: 170, column: 10, scope: !1102)
!1133 = !DILocation(line: 170, column: 8, scope: !1102)
!1134 = !DILocalVariable(name: "used", scope: !1020, file: !230, line: 175, type: !138)
!1135 = !DILocation(line: 175, column: 10, scope: !1020)
!1136 = !DILocalVariable(name: "p", scope: !1020, file: !230, line: 176, type: !48)
!1137 = !DILocation(line: 176, column: 15, scope: !1020)
!1138 = !DILocation(line: 177, column: 12, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1020, file: !230, line: 177, column: 3)
!1140 = !DILocation(line: 177, column: 10, scope: !1139)
!1141 = !DILocation(line: 177, column: 8, scope: !1139)
!1142 = !DILocalVariable(name: "affected", scope: !1143, file: !230, line: 180, type: !683)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !230, line: 178, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !230, line: 177, column: 3)
!1145 = !DILocation(line: 180, column: 14, scope: !1143)
!1146 = !DILocation(line: 183, column: 7, scope: !1143)
!1147 = !DILocation(line: 184, column: 18, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !230, line: 183, column: 7)
!1149 = distinct !DILexicalBlock(scope: !1143, file: !230, line: 183, column: 7)
!1150 = !DILocation(line: 184, column: 17, scope: !1148)
!1151 = !DILocation(line: 184, column: 9, scope: !1148)
!1152 = !DILocation(line: 187, column: 13, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !230, line: 185, column: 11)
!1154 = !DILocation(line: 189, column: 22, scope: !1153)
!1155 = !DILocation(line: 190, column: 13, scope: !1153)
!1156 = !DILocation(line: 192, column: 22, scope: !1153)
!1157 = !DILocation(line: 193, column: 13, scope: !1153)
!1158 = !DILocation(line: 195, column: 22, scope: !1153)
!1159 = !DILocation(line: 196, column: 13, scope: !1153)
!1160 = !DILocation(line: 198, column: 22, scope: !1153)
!1161 = !DILocation(line: 199, column: 13, scope: !1153)
!1162 = !DILocation(line: 201, column: 13, scope: !1153)
!1163 = !DILocation(line: 202, column: 11, scope: !1153)
!1164 = !DILocation(line: 183, column: 16, scope: !1148)
!1165 = !DILocation(line: 183, column: 7, scope: !1148)
!1166 = distinct !{!1166, !1167, !1168}
!1167 = !DILocation(line: 183, column: 7, scope: !1149)
!1168 = !DILocation(line: 202, column: 11, scope: !1149)
!1169 = !DILabel(scope: !1143, name: "no_more_affected", file: !230, line: 203)
!1170 = !DILocation(line: 203, column: 5, scope: !1143)
!1171 = !DILocation(line: 205, column: 7, scope: !1143)
!1172 = !DILocalVariable(name: "op", scope: !1173, file: !230, line: 207, type: !37)
!1173 = distinct !DILexicalBlock(scope: !1143, file: !230, line: 206, column: 9)
!1174 = !DILocation(line: 207, column: 16, scope: !1173)
!1175 = !DILocation(line: 207, column: 23, scope: !1173)
!1176 = !DILocation(line: 207, column: 21, scope: !1173)
!1177 = !DILocalVariable(name: "value", scope: !1173, file: !230, line: 208, type: !683)
!1178 = !DILocation(line: 208, column: 18, scope: !1173)
!1179 = !DILocalVariable(name: "mentioned", scope: !1173, file: !230, line: 209, type: !683)
!1180 = !DILocation(line: 209, column: 18, scope: !1173)
!1181 = !DILocalVariable(name: "flag", scope: !1173, file: !230, line: 210, type: !37)
!1182 = !DILocation(line: 210, column: 16, scope: !1173)
!1183 = !DILocation(line: 212, column: 20, scope: !1173)
!1184 = !DILocation(line: 212, column: 19, scope: !1173)
!1185 = !DILocation(line: 212, column: 11, scope: !1173)
!1186 = !DILocalVariable(name: "octal_mode", scope: !1187, file: !230, line: 217, type: !7)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !230, line: 216, column: 15)
!1188 = distinct !DILexicalBlock(scope: !1173, file: !230, line: 213, column: 13)
!1189 = !DILocation(line: 217, column: 30, scope: !1187)
!1190 = !DILocation(line: 219, column: 17, scope: !1187)
!1191 = !DILocation(line: 221, column: 38, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !230, line: 220, column: 19)
!1193 = !DILocation(line: 221, column: 36, scope: !1192)
!1194 = !DILocation(line: 221, column: 53, scope: !1192)
!1195 = !DILocation(line: 221, column: 51, scope: !1192)
!1196 = !DILocation(line: 221, column: 49, scope: !1192)
!1197 = !DILocation(line: 221, column: 56, scope: !1192)
!1198 = !DILocation(line: 221, column: 32, scope: !1192)
!1199 = !DILocation(line: 222, column: 32, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1192, file: !230, line: 222, column: 25)
!1201 = !DILocation(line: 222, column: 30, scope: !1200)
!1202 = !DILocation(line: 222, column: 25, scope: !1192)
!1203 = !DILocation(line: 223, column: 23, scope: !1200)
!1204 = !DILocation(line: 224, column: 19, scope: !1192)
!1205 = !DILocation(line: 225, column: 32, scope: !1187)
!1206 = !DILocation(line: 225, column: 31, scope: !1187)
!1207 = !DILocation(line: 225, column: 28, scope: !1187)
!1208 = !DILocation(line: 225, column: 34, scope: !1187)
!1209 = !DILocation(line: 225, column: 38, scope: !1187)
!1210 = !DILocation(line: 225, column: 37, scope: !1187)
!1211 = !DILocation(line: 225, column: 40, scope: !1187)
!1212 = !DILocation(line: 0, scope: !1187)
!1213 = distinct !{!1213, !1190, !1214, !409}
!1214 = !DILocation(line: 225, column: 45, scope: !1187)
!1215 = !DILocation(line: 227, column: 21, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1187, file: !230, line: 227, column: 21)
!1217 = !DILocation(line: 227, column: 30, scope: !1216)
!1218 = !DILocation(line: 227, column: 35, scope: !1216)
!1219 = !DILocation(line: 227, column: 34, scope: !1216)
!1220 = !DILocation(line: 227, column: 37, scope: !1216)
!1221 = !DILocation(line: 227, column: 41, scope: !1216)
!1222 = !DILocation(line: 227, column: 40, scope: !1216)
!1223 = !DILocation(line: 227, column: 43, scope: !1216)
!1224 = !DILocation(line: 227, column: 21, scope: !1187)
!1225 = !DILocation(line: 228, column: 19, scope: !1216)
!1226 = !DILocation(line: 229, column: 38, scope: !1187)
!1227 = !DILocation(line: 229, column: 26, scope: !1187)
!1228 = !DILocation(line: 230, column: 40, scope: !1187)
!1229 = !DILocation(line: 230, column: 25, scope: !1187)
!1230 = !DILocation(line: 230, column: 23, scope: !1187)
!1231 = !DILocation(line: 231, column: 22, scope: !1187)
!1232 = !DILocation(line: 232, column: 17, scope: !1187)
!1233 = !DILocation(line: 238, column: 21, scope: !1188)
!1234 = !DILocation(line: 239, column: 16, scope: !1188)
!1235 = !DILocation(line: 240, column: 15, scope: !1188)
!1236 = !DILocation(line: 244, column: 21, scope: !1188)
!1237 = !DILocation(line: 245, column: 16, scope: !1188)
!1238 = !DILocation(line: 246, column: 15, scope: !1188)
!1239 = !DILocation(line: 250, column: 21, scope: !1188)
!1240 = !DILocation(line: 251, column: 16, scope: !1188)
!1241 = !DILocation(line: 252, column: 15, scope: !1188)
!1242 = !DILocation(line: 255, column: 21, scope: !1188)
!1243 = !DILocation(line: 256, column: 20, scope: !1188)
!1244 = !DILocation(line: 258, column: 15, scope: !1188)
!1245 = !DILocation(line: 259, column: 26, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !230, line: 258, column: 15)
!1247 = distinct !DILexicalBlock(scope: !1188, file: !230, line: 258, column: 15)
!1248 = !DILocation(line: 259, column: 25, scope: !1246)
!1249 = !DILocation(line: 259, column: 17, scope: !1246)
!1250 = !DILocation(line: 262, column: 27, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !230, line: 260, column: 19)
!1252 = !DILocation(line: 263, column: 21, scope: !1251)
!1253 = !DILocation(line: 265, column: 27, scope: !1251)
!1254 = !DILocation(line: 266, column: 21, scope: !1251)
!1255 = !DILocation(line: 268, column: 27, scope: !1251)
!1256 = !DILocation(line: 269, column: 21, scope: !1251)
!1257 = !DILocation(line: 271, column: 26, scope: !1251)
!1258 = !DILocation(line: 272, column: 21, scope: !1251)
!1259 = !DILocation(line: 275, column: 27, scope: !1251)
!1260 = !DILocation(line: 276, column: 21, scope: !1251)
!1261 = !DILocation(line: 279, column: 27, scope: !1251)
!1262 = !DILocation(line: 280, column: 21, scope: !1251)
!1263 = !DILocation(line: 282, column: 21, scope: !1251)
!1264 = !DILocation(line: 283, column: 19, scope: !1251)
!1265 = !DILocation(line: 258, column: 24, scope: !1246)
!1266 = !DILocation(line: 258, column: 15, scope: !1246)
!1267 = distinct !{!1267, !1268, !1269}
!1268 = !DILocation(line: 258, column: 15, scope: !1247)
!1269 = !DILocation(line: 283, column: 19, scope: !1247)
!1270 = !DILabel(scope: !1188, name: "no_more_values", file: !230, line: 284)
!1271 = !DILocation(line: 284, column: 13, scope: !1188)
!1272 = !DILocation(line: 285, column: 13, scope: !1188)
!1273 = !DILocalVariable(name: "change", scope: !1173, file: !230, line: 287, type: !1023)
!1274 = !DILocation(line: 287, column: 31, scope: !1173)
!1275 = !DILocation(line: 288, column: 21, scope: !1173)
!1276 = !DILocation(line: 288, column: 28, scope: !1173)
!1277 = !DILocation(line: 288, column: 18, scope: !1173)
!1278 = !DILocation(line: 289, column: 24, scope: !1173)
!1279 = !DILocation(line: 289, column: 11, scope: !1173)
!1280 = !DILocation(line: 289, column: 19, scope: !1173)
!1281 = !DILocation(line: 289, column: 22, scope: !1173)
!1282 = !DILocation(line: 290, column: 26, scope: !1173)
!1283 = !DILocation(line: 290, column: 11, scope: !1173)
!1284 = !DILocation(line: 290, column: 19, scope: !1173)
!1285 = !DILocation(line: 290, column: 24, scope: !1173)
!1286 = !DILocation(line: 291, column: 30, scope: !1173)
!1287 = !DILocation(line: 291, column: 11, scope: !1173)
!1288 = !DILocation(line: 291, column: 19, scope: !1173)
!1289 = !DILocation(line: 291, column: 28, scope: !1173)
!1290 = !DILocation(line: 292, column: 27, scope: !1173)
!1291 = !DILocation(line: 292, column: 11, scope: !1173)
!1292 = !DILocation(line: 292, column: 19, scope: !1173)
!1293 = !DILocation(line: 292, column: 25, scope: !1173)
!1294 = !DILocation(line: 294, column: 14, scope: !1173)
!1295 = !DILocation(line: 294, column: 26, scope: !1173)
!1296 = !DILocation(line: 294, column: 38, scope: !1173)
!1297 = !DILocation(line: 294, column: 49, scope: !1173)
!1298 = !DILocation(line: 294, column: 60, scope: !1173)
!1299 = !DILocation(line: 294, column: 58, scope: !1173)
!1300 = !DILocation(line: 294, column: 68, scope: !1173)
!1301 = !DILocation(line: 293, column: 11, scope: !1173)
!1302 = !DILocation(line: 293, column: 19, scope: !1173)
!1303 = !DILocation(line: 293, column: 29, scope: !1173)
!1304 = !DILocation(line: 295, column: 9, scope: !1173)
!1305 = !DILocation(line: 296, column: 15, scope: !1143)
!1306 = !DILocation(line: 296, column: 14, scope: !1143)
!1307 = !DILocation(line: 296, column: 17, scope: !1143)
!1308 = !DILocation(line: 296, column: 24, scope: !1143)
!1309 = !DILocation(line: 296, column: 28, scope: !1143)
!1310 = !DILocation(line: 296, column: 27, scope: !1143)
!1311 = !DILocation(line: 296, column: 30, scope: !1143)
!1312 = !DILocation(line: 296, column: 37, scope: !1143)
!1313 = !DILocation(line: 296, column: 41, scope: !1143)
!1314 = !DILocation(line: 296, column: 40, scope: !1143)
!1315 = !DILocation(line: 296, column: 43, scope: !1143)
!1316 = distinct !{!1316, !1171, !1317, !409}
!1317 = !DILocation(line: 296, column: 49, scope: !1143)
!1318 = !DILocation(line: 298, column: 12, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1143, file: !230, line: 298, column: 11)
!1320 = !DILocation(line: 298, column: 11, scope: !1319)
!1321 = !DILocation(line: 298, column: 14, scope: !1319)
!1322 = !DILocation(line: 298, column: 11, scope: !1143)
!1323 = !DILocation(line: 299, column: 9, scope: !1319)
!1324 = !DILocation(line: 300, column: 5, scope: !1143)
!1325 = !DILocation(line: 177, column: 28, scope: !1144)
!1326 = !DILocation(line: 177, column: 3, scope: !1144)
!1327 = distinct !{!1327, !1328, !1329}
!1328 = !DILocation(line: 177, column: 3, scope: !1139)
!1329 = !DILocation(line: 300, column: 5, scope: !1139)
!1330 = !DILocation(line: 302, column: 8, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1020, file: !230, line: 302, column: 7)
!1332 = !DILocation(line: 302, column: 7, scope: !1331)
!1333 = !DILocation(line: 302, column: 10, scope: !1331)
!1334 = !DILocation(line: 302, column: 7, scope: !1020)
!1335 = !DILocation(line: 304, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !230, line: 303, column: 5)
!1337 = !DILocation(line: 304, column: 10, scope: !1336)
!1338 = !DILocation(line: 304, column: 16, scope: !1336)
!1339 = !DILocation(line: 304, column: 21, scope: !1336)
!1340 = !DILocation(line: 305, column: 14, scope: !1336)
!1341 = !DILocation(line: 305, column: 7, scope: !1336)
!1342 = !DILocation(line: 302, column: 13, scope: !1331)
!1343 = !DILabel(scope: !1020, name: "invalid", file: !230, line: 308)
!1344 = !DILocation(line: 308, column: 1, scope: !1020)
!1345 = !DILocation(line: 309, column: 9, scope: !1020)
!1346 = !DILocation(line: 309, column: 3, scope: !1020)
!1347 = !DILocation(line: 310, column: 3, scope: !1020)
!1348 = !DILocation(line: 311, column: 1, scope: !1020)
!1349 = distinct !DISubprogram(name: "octal_to_mode", scope: !230, file: !230, line: 54, type: !1350, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !229, retainedNodes: !50)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!683, !7}
!1352 = !DILocalVariable(name: "octal", arg: 1, scope: !1349, file: !230, line: 54, type: !7)
!1353 = !DILocation(line: 54, column: 29, scope: !1349)
!1354 = !DILocation(line: 62, column: 13, scope: !1349)
!1355 = !DILocation(line: 58, column: 3, scope: !1349)
!1356 = distinct !DISubprogram(name: "make_node_op_equals", scope: !230, file: !230, line: 112, type: !1357, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !229, retainedNodes: !50)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!1023, !683, !683}
!1359 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1356, file: !230, line: 112, type: !683)
!1360 = !DILocation(line: 112, column: 29, scope: !1356)
!1361 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1356, file: !230, line: 112, type: !683)
!1362 = !DILocation(line: 112, column: 46, scope: !1356)
!1363 = !DILocalVariable(name: "p", scope: !1356, file: !230, line: 114, type: !1023)
!1364 = !DILocation(line: 114, column: 23, scope: !1356)
!1365 = !DILocation(line: 114, column: 27, scope: !1356)
!1366 = !DILocation(line: 115, column: 3, scope: !1356)
!1367 = !DILocation(line: 115, column: 6, scope: !1356)
!1368 = !DILocation(line: 115, column: 9, scope: !1356)
!1369 = !DILocation(line: 116, column: 3, scope: !1356)
!1370 = !DILocation(line: 116, column: 6, scope: !1356)
!1371 = !DILocation(line: 116, column: 11, scope: !1356)
!1372 = !DILocation(line: 117, column: 3, scope: !1356)
!1373 = !DILocation(line: 117, column: 6, scope: !1356)
!1374 = !DILocation(line: 117, column: 15, scope: !1356)
!1375 = !DILocation(line: 118, column: 14, scope: !1356)
!1376 = !DILocation(line: 118, column: 3, scope: !1356)
!1377 = !DILocation(line: 118, column: 6, scope: !1356)
!1378 = !DILocation(line: 118, column: 12, scope: !1356)
!1379 = !DILocation(line: 119, column: 18, scope: !1356)
!1380 = !DILocation(line: 119, column: 3, scope: !1356)
!1381 = !DILocation(line: 119, column: 6, scope: !1356)
!1382 = !DILocation(line: 119, column: 16, scope: !1356)
!1383 = !DILocation(line: 120, column: 3, scope: !1356)
!1384 = !DILocation(line: 120, column: 8, scope: !1356)
!1385 = !DILocation(line: 120, column: 13, scope: !1356)
!1386 = !DILocation(line: 121, column: 10, scope: !1356)
!1387 = !DILocation(line: 121, column: 3, scope: !1356)
!1388 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !230, file: !230, line: 317, type: !1021, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !229, retainedNodes: !50)
!1389 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1388, file: !230, line: 317, type: !48)
!1390 = !DILocation(line: 317, column: 35, scope: !1388)
!1391 = !DILocalVariable(name: "ref_stats", scope: !1388, file: !230, line: 319, type: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1393, line: 44, size: 1024, elements: !1394)
!1393 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1394 = !{!1395, !1397, !1399, !1400, !1402, !1404, !1406, !1407, !1408, !1410, !1412, !1413, !1415, !1423, !1424, !1425}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1392, file: !1393, line: 46, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !686, line: 145, baseType: !140)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1392, file: !1393, line: 47, baseType: !1398, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !686, line: 148, baseType: !140)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1392, file: !1393, line: 48, baseType: !685, size: 32, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1392, file: !1393, line: 49, baseType: !1401, size: 32, offset: 160)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !686, line: 151, baseType: !7)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1392, file: !1393, line: 50, baseType: !1403, size: 32, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !686, line: 146, baseType: !7)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1392, file: !1393, line: 51, baseType: !1405, size: 32, offset: 224)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !686, line: 147, baseType: !7)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1392, file: !1393, line: 52, baseType: !1396, size: 64, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1392, file: !1393, line: 53, baseType: !1396, size: 64, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1392, file: !1393, line: 54, baseType: !1409, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !686, line: 152, baseType: !266)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1392, file: !1393, line: 55, baseType: !1411, size: 32, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !686, line: 175, baseType: !39)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1392, file: !1393, line: 56, baseType: !39, size: 32, offset: 480)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1392, file: !1393, line: 57, baseType: !1414, size: 64, offset: 512)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !686, line: 180, baseType: !266)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1392, file: !1393, line: 65, baseType: !1416, size: 128, offset: 576)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1417, line: 11, size: 128, elements: !1418)
!1417 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1418 = !{!1419, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1416, file: !1417, line: 16, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !686, line: 160, baseType: !266)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1416, file: !1417, line: 21, baseType: !1422, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !686, line: 197, baseType: !266)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1392, file: !1393, line: 66, baseType: !1416, size: 128, offset: 704)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1392, file: !1393, line: 67, baseType: !1416, size: 128, offset: 832)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1392, file: !1393, line: 79, baseType: !1426, size: 64, offset: 960)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !125)
!1427 = !DILocation(line: 319, column: 15, scope: !1388)
!1428 = !DILocation(line: 321, column: 13, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1388, file: !230, line: 321, column: 7)
!1430 = !DILocation(line: 321, column: 7, scope: !1429)
!1431 = !DILocation(line: 321, column: 35, scope: !1429)
!1432 = !DILocation(line: 321, column: 7, scope: !1388)
!1433 = !DILocation(line: 322, column: 5, scope: !1429)
!1434 = !DILocation(line: 323, column: 41, scope: !1388)
!1435 = !DILocation(line: 323, column: 10, scope: !1388)
!1436 = !DILocation(line: 323, column: 3, scope: !1388)
!1437 = !DILocation(line: 324, column: 1, scope: !1388)
!1438 = distinct !DISubprogram(name: "mode_adjust", scope: !230, file: !230, line: 340, type: !1439, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !229, retainedNodes: !50)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!683, !683, !75, !683, !1441, !1443}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!1444 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1438, file: !230, line: 340, type: !683)
!1445 = !DILocation(line: 340, column: 21, scope: !1438)
!1446 = !DILocalVariable(name: "dir", arg: 2, scope: !1438, file: !230, line: 340, type: !75)
!1447 = !DILocation(line: 340, column: 35, scope: !1438)
!1448 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1438, file: !230, line: 340, type: !683)
!1449 = !DILocation(line: 340, column: 47, scope: !1438)
!1450 = !DILocalVariable(name: "changes", arg: 4, scope: !1438, file: !230, line: 341, type: !1441)
!1451 = !DILocation(line: 341, column: 40, scope: !1438)
!1452 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1438, file: !230, line: 341, type: !1443)
!1453 = !DILocation(line: 341, column: 57, scope: !1438)
!1454 = !DILocalVariable(name: "newmode", scope: !1438, file: !230, line: 344, type: !683)
!1455 = !DILocation(line: 344, column: 10, scope: !1438)
!1456 = !DILocation(line: 344, column: 20, scope: !1438)
!1457 = !DILocation(line: 344, column: 28, scope: !1438)
!1458 = !DILocalVariable(name: "mode_bits", scope: !1438, file: !230, line: 347, type: !683)
!1459 = !DILocation(line: 347, column: 10, scope: !1438)
!1460 = !DILocation(line: 349, column: 3, scope: !1438)
!1461 = !DILocation(line: 349, column: 10, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !230, line: 349, column: 3)
!1463 = distinct !DILexicalBlock(scope: !1438, file: !230, line: 349, column: 3)
!1464 = !DILocation(line: 349, column: 19, scope: !1462)
!1465 = !DILocation(line: 349, column: 24, scope: !1462)
!1466 = !DILocation(line: 349, column: 3, scope: !1463)
!1467 = !DILocalVariable(name: "affected", scope: !1468, file: !230, line: 351, type: !683)
!1468 = distinct !DILexicalBlock(scope: !1462, file: !230, line: 350, column: 5)
!1469 = !DILocation(line: 351, column: 14, scope: !1468)
!1470 = !DILocation(line: 351, column: 25, scope: !1468)
!1471 = !DILocation(line: 351, column: 34, scope: !1468)
!1472 = !DILocalVariable(name: "omit_change", scope: !1468, file: !230, line: 352, type: !683)
!1473 = !DILocation(line: 352, column: 14, scope: !1468)
!1474 = !DILocation(line: 353, column: 10, scope: !1468)
!1475 = !DILocation(line: 353, column: 43, scope: !1468)
!1476 = !DILocation(line: 353, column: 52, scope: !1468)
!1477 = !DILocation(line: 353, column: 41, scope: !1468)
!1478 = !DILocation(line: 353, column: 39, scope: !1468)
!1479 = !DILocalVariable(name: "value", scope: !1468, file: !230, line: 354, type: !683)
!1480 = !DILocation(line: 354, column: 14, scope: !1468)
!1481 = !DILocation(line: 354, column: 22, scope: !1468)
!1482 = !DILocation(line: 354, column: 31, scope: !1468)
!1483 = !DILocation(line: 356, column: 15, scope: !1468)
!1484 = !DILocation(line: 356, column: 24, scope: !1468)
!1485 = !DILocation(line: 356, column: 7, scope: !1468)
!1486 = !DILocation(line: 359, column: 11, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1468, file: !230, line: 357, column: 9)
!1488 = !DILocation(line: 363, column: 20, scope: !1487)
!1489 = !DILocation(line: 363, column: 17, scope: !1487)
!1490 = !DILocation(line: 366, column: 22, scope: !1487)
!1491 = !DILocation(line: 366, column: 28, scope: !1487)
!1492 = !DILocation(line: 368, column: 24, scope: !1487)
!1493 = !DILocation(line: 368, column: 30, scope: !1487)
!1494 = !DILocation(line: 368, column: 21, scope: !1487)
!1495 = !DILocation(line: 370, column: 24, scope: !1487)
!1496 = !DILocation(line: 370, column: 30, scope: !1487)
!1497 = !DILocation(line: 370, column: 21, scope: !1487)
!1498 = !DILocation(line: 366, column: 17, scope: !1487)
!1499 = !DILocation(line: 372, column: 11, scope: !1487)
!1500 = !DILocation(line: 377, column: 16, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1487, file: !230, line: 377, column: 15)
!1502 = !DILocation(line: 377, column: 24, scope: !1501)
!1503 = !DILocation(line: 377, column: 59, scope: !1501)
!1504 = !DILocation(line: 377, column: 57, scope: !1501)
!1505 = !DILocation(line: 377, column: 15, scope: !1487)
!1506 = !DILocation(line: 378, column: 19, scope: !1501)
!1507 = !DILocation(line: 378, column: 13, scope: !1501)
!1508 = !DILocation(line: 379, column: 11, scope: !1487)
!1509 = !DILocation(line: 385, column: 17, scope: !1468)
!1510 = !DILocation(line: 385, column: 28, scope: !1468)
!1511 = !DILocation(line: 385, column: 40, scope: !1468)
!1512 = !DILocation(line: 385, column: 39, scope: !1468)
!1513 = !DILocation(line: 385, column: 57, scope: !1468)
!1514 = !DILocation(line: 385, column: 55, scope: !1468)
!1515 = !DILocation(line: 385, column: 53, scope: !1468)
!1516 = !DILocation(line: 385, column: 13, scope: !1468)
!1517 = !DILocation(line: 387, column: 15, scope: !1468)
!1518 = !DILocation(line: 387, column: 24, scope: !1468)
!1519 = !DILocation(line: 387, column: 7, scope: !1468)
!1520 = !DILocalVariable(name: "preserved", scope: !1521, file: !230, line: 394, type: !683)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !230, line: 393, column: 11)
!1522 = distinct !DILexicalBlock(scope: !1468, file: !230, line: 388, column: 9)
!1523 = !DILocation(line: 394, column: 20, scope: !1521)
!1524 = !DILocation(line: 394, column: 33, scope: !1521)
!1525 = !DILocation(line: 394, column: 45, scope: !1521)
!1526 = !DILocation(line: 394, column: 44, scope: !1521)
!1527 = !DILocation(line: 394, column: 61, scope: !1521)
!1528 = !DILocation(line: 394, column: 59, scope: !1521)
!1529 = !DILocation(line: 395, column: 45, scope: !1521)
!1530 = !DILocation(line: 395, column: 44, scope: !1521)
!1531 = !DILocation(line: 395, column: 42, scope: !1521)
!1532 = !DILocation(line: 395, column: 23, scope: !1521)
!1533 = !DILocation(line: 396, column: 24, scope: !1521)
!1534 = !DILocation(line: 396, column: 34, scope: !1521)
!1535 = !DILocation(line: 396, column: 32, scope: !1521)
!1536 = !DILocation(line: 396, column: 47, scope: !1521)
!1537 = !DILocation(line: 396, column: 45, scope: !1521)
!1538 = !DILocation(line: 396, column: 21, scope: !1521)
!1539 = !DILocation(line: 397, column: 13, scope: !1521)
!1540 = !DILocation(line: 401, column: 24, scope: !1522)
!1541 = !DILocation(line: 401, column: 21, scope: !1522)
!1542 = !DILocation(line: 402, column: 22, scope: !1522)
!1543 = !DILocation(line: 402, column: 19, scope: !1522)
!1544 = !DILocation(line: 403, column: 11, scope: !1522)
!1545 = !DILocation(line: 406, column: 24, scope: !1522)
!1546 = !DILocation(line: 406, column: 21, scope: !1522)
!1547 = !DILocation(line: 407, column: 23, scope: !1522)
!1548 = !DILocation(line: 407, column: 22, scope: !1522)
!1549 = !DILocation(line: 407, column: 19, scope: !1522)
!1550 = !DILocation(line: 408, column: 11, scope: !1522)
!1551 = !DILocation(line: 410, column: 5, scope: !1468)
!1552 = !DILocation(line: 349, column: 45, scope: !1462)
!1553 = !DILocation(line: 349, column: 3, scope: !1462)
!1554 = distinct !{!1554, !1466, !1555, !409}
!1555 = !DILocation(line: 410, column: 5, scope: !1463)
!1556 = !DILocation(line: 412, column: 7, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1438, file: !230, line: 412, column: 7)
!1558 = !DILocation(line: 412, column: 7, scope: !1438)
!1559 = !DILocation(line: 413, column: 19, scope: !1557)
!1560 = !DILocation(line: 413, column: 6, scope: !1557)
!1561 = !DILocation(line: 413, column: 17, scope: !1557)
!1562 = !DILocation(line: 413, column: 5, scope: !1557)
!1563 = !DILocation(line: 414, column: 10, scope: !1438)
!1564 = !DILocation(line: 414, column: 3, scope: !1438)
!1565 = distinct !DISubprogram(name: "set_program_name", scope: !113, file: !113, line: 37, type: !526, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !50)
!1566 = !DILocalVariable(name: "argv0", arg: 1, scope: !1565, file: !113, line: 37, type: !48)
!1567 = !DILocation(line: 37, column: 31, scope: !1565)
!1568 = !DILocalVariable(name: "slash", scope: !1565, file: !113, line: 44, type: !48)
!1569 = !DILocation(line: 44, column: 15, scope: !1565)
!1570 = !DILocation(line: 44, column: 32, scope: !1565)
!1571 = !DILocation(line: 44, column: 23, scope: !1565)
!1572 = !DILocalVariable(name: "base", scope: !1565, file: !113, line: 45, type: !48)
!1573 = !DILocation(line: 45, column: 15, scope: !1565)
!1574 = !DILocation(line: 45, column: 22, scope: !1565)
!1575 = !DILocation(line: 45, column: 30, scope: !1565)
!1576 = !DILocation(line: 45, column: 36, scope: !1565)
!1577 = !DILocation(line: 45, column: 42, scope: !1565)
!1578 = !DILocation(line: 46, column: 12, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1565, file: !113, line: 46, column: 7)
!1580 = !DILocation(line: 46, column: 19, scope: !1579)
!1581 = !DILocation(line: 46, column: 17, scope: !1579)
!1582 = !DILocation(line: 46, column: 9, scope: !1579)
!1583 = !DILocation(line: 46, column: 25, scope: !1579)
!1584 = !DILocation(line: 46, column: 35, scope: !1579)
!1585 = !DILocation(line: 46, column: 40, scope: !1579)
!1586 = !DILocation(line: 46, column: 28, scope: !1579)
!1587 = !DILocation(line: 46, column: 7, scope: !1565)
!1588 = !DILocation(line: 48, column: 15, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1579, file: !113, line: 47, column: 5)
!1590 = !DILocation(line: 48, column: 13, scope: !1589)
!1591 = !DILocation(line: 49, column: 20, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1589, file: !113, line: 49, column: 11)
!1593 = !DILocation(line: 49, column: 11, scope: !1592)
!1594 = !DILocation(line: 49, column: 36, scope: !1592)
!1595 = !DILocation(line: 49, column: 11, scope: !1589)
!1596 = !DILocation(line: 51, column: 16, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !113, line: 50, column: 9)
!1598 = !DILocation(line: 52, column: 19, scope: !1597)
!1599 = !DILocation(line: 52, column: 17, scope: !1597)
!1600 = !DILocation(line: 53, column: 9, scope: !1597)
!1601 = !DILocation(line: 54, column: 5, scope: !1589)
!1602 = !DILocation(line: 65, column: 18, scope: !1565)
!1603 = !DILocation(line: 65, column: 16, scope: !1565)
!1604 = !DILocation(line: 71, column: 38, scope: !1565)
!1605 = !DILocation(line: 71, column: 27, scope: !1565)
!1606 = !DILocation(line: 74, column: 44, scope: !1565)
!1607 = !DILocation(line: 74, column: 33, scope: !1565)
!1608 = !DILocation(line: 76, column: 1, scope: !1565)
!1609 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !118, file: !119, line: 38, type: !48)
!1610 = !DILocation(line: 38, column: 31, scope: !118)
!1611 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !118, file: !119, line: 38, type: !48)
!1612 = !DILocation(line: 38, column: 66, scope: !118)
!1613 = !DILocalVariable(name: "translation", scope: !118, file: !119, line: 40, type: !48)
!1614 = !DILocation(line: 40, column: 15, scope: !118)
!1615 = !DILocation(line: 40, column: 38, scope: !118)
!1616 = !DILocation(line: 40, column: 29, scope: !118)
!1617 = !DILocation(line: 41, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !118, file: !119, line: 41, column: 7)
!1619 = !DILocation(line: 41, column: 22, scope: !1618)
!1620 = !DILocation(line: 41, column: 19, scope: !1618)
!1621 = !DILocation(line: 41, column: 7, scope: !118)
!1622 = !DILocation(line: 42, column: 12, scope: !1618)
!1623 = !DILocation(line: 42, column: 5, scope: !1618)
!1624 = !DILocalVariable(name: "w", scope: !118, file: !119, line: 47, type: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1626, line: 37, baseType: !1627)
!1626 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !686, line: 57, baseType: !1628)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !686, line: 42, baseType: !7)
!1629 = !DILocation(line: 47, column: 12, scope: !118)
!1630 = !DILocalVariable(name: "mbs", scope: !118, file: !119, line: 48, type: !1631)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !212, line: 6, baseType: !1632)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !214, line: 21, baseType: !1633)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 13, size: 64, elements: !1634)
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1633, file: !214, line: 15, baseType: !39, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1633, file: !214, line: 20, baseType: !1637, size: 32, offset: 32)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1633, file: !214, line: 16, size: 32, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1637, file: !214, line: 18, baseType: !7, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1637, file: !214, line: 19, baseType: !223, size: 32)
!1641 = !DILocation(line: 48, column: 13, scope: !118)
!1642 = !DILocation(line: 48, column: 18, scope: !118)
!1643 = !DILocation(line: 49, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !118, file: !119, line: 49, column: 7)
!1645 = !DILocation(line: 49, column: 39, scope: !1644)
!1646 = !DILocation(line: 49, column: 44, scope: !1644)
!1647 = !DILocation(line: 49, column: 47, scope: !1644)
!1648 = !DILocation(line: 49, column: 49, scope: !1644)
!1649 = !DILocation(line: 49, column: 7, scope: !118)
!1650 = !DILocation(line: 50, column: 12, scope: !1644)
!1651 = !DILocation(line: 50, column: 5, scope: !1644)
!1652 = !DILocation(line: 53, column: 10, scope: !118)
!1653 = !DILocation(line: 53, column: 3, scope: !118)
!1654 = !DILocation(line: 54, column: 1, scope: !118)
!1655 = distinct !DISubprogram(name: "clone_quoting_options", scope: !130, file: !130, line: 113, type: !1656, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1658, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1659 = !DILocalVariable(name: "o", arg: 1, scope: !1655, file: !130, line: 113, type: !1658)
!1660 = !DILocation(line: 113, column: 48, scope: !1655)
!1661 = !DILocalVariable(name: "saved_errno", scope: !1655, file: !130, line: 115, type: !39)
!1662 = !DILocation(line: 115, column: 7, scope: !1655)
!1663 = !DILocation(line: 115, column: 21, scope: !1655)
!1664 = !DILocalVariable(name: "p", scope: !1655, file: !130, line: 116, type: !1658)
!1665 = !DILocation(line: 116, column: 27, scope: !1655)
!1666 = !DILocation(line: 116, column: 40, scope: !1655)
!1667 = !DILocation(line: 116, column: 44, scope: !1655)
!1668 = !DILocation(line: 116, column: 31, scope: !1655)
!1669 = !DILocation(line: 118, column: 11, scope: !1655)
!1670 = !DILocation(line: 118, column: 3, scope: !1655)
!1671 = !DILocation(line: 118, column: 9, scope: !1655)
!1672 = !DILocation(line: 119, column: 10, scope: !1655)
!1673 = !DILocation(line: 119, column: 3, scope: !1655)
!1674 = distinct !DISubprogram(name: "get_quoting_style", scope: !130, file: !130, line: 124, type: !1675, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!5, !1677}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!1679 = !DILocalVariable(name: "o", arg: 1, scope: !1674, file: !130, line: 124, type: !1677)
!1680 = !DILocation(line: 124, column: 50, scope: !1674)
!1681 = !DILocation(line: 126, column: 11, scope: !1674)
!1682 = !DILocation(line: 126, column: 15, scope: !1674)
!1683 = !DILocation(line: 126, column: 46, scope: !1674)
!1684 = !DILocation(line: 126, column: 3, scope: !1674)
!1685 = distinct !DISubprogram(name: "set_quoting_style", scope: !130, file: !130, line: 132, type: !1686, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1658, !5}
!1688 = !DILocalVariable(name: "o", arg: 1, scope: !1685, file: !130, line: 132, type: !1658)
!1689 = !DILocation(line: 132, column: 44, scope: !1685)
!1690 = !DILocalVariable(name: "s", arg: 2, scope: !1685, file: !130, line: 132, type: !5)
!1691 = !DILocation(line: 132, column: 66, scope: !1685)
!1692 = !DILocation(line: 134, column: 47, scope: !1685)
!1693 = !DILocation(line: 134, column: 4, scope: !1685)
!1694 = !DILocation(line: 134, column: 8, scope: !1685)
!1695 = !DILocation(line: 134, column: 39, scope: !1685)
!1696 = !DILocation(line: 134, column: 45, scope: !1685)
!1697 = !DILocation(line: 135, column: 1, scope: !1685)
!1698 = distinct !DISubprogram(name: "set_char_quoting", scope: !130, file: !130, line: 143, type: !1699, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!39, !1658, !37, !39}
!1701 = !DILocalVariable(name: "o", arg: 1, scope: !1698, file: !130, line: 143, type: !1658)
!1702 = !DILocation(line: 143, column: 43, scope: !1698)
!1703 = !DILocalVariable(name: "c", arg: 2, scope: !1698, file: !130, line: 143, type: !37)
!1704 = !DILocation(line: 143, column: 51, scope: !1698)
!1705 = !DILocalVariable(name: "i", arg: 3, scope: !1698, file: !130, line: 143, type: !39)
!1706 = !DILocation(line: 143, column: 58, scope: !1698)
!1707 = !DILocalVariable(name: "uc", scope: !1698, file: !130, line: 145, type: !209)
!1708 = !DILocation(line: 145, column: 17, scope: !1698)
!1709 = !DILocation(line: 145, column: 22, scope: !1698)
!1710 = !DILocalVariable(name: "p", scope: !1698, file: !130, line: 146, type: !1711)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1712 = !DILocation(line: 146, column: 17, scope: !1698)
!1713 = !DILocation(line: 147, column: 6, scope: !1698)
!1714 = !DILocation(line: 147, column: 10, scope: !1698)
!1715 = !DILocation(line: 147, column: 41, scope: !1698)
!1716 = !DILocation(line: 147, column: 5, scope: !1698)
!1717 = !DILocation(line: 147, column: 59, scope: !1698)
!1718 = !DILocation(line: 147, column: 62, scope: !1698)
!1719 = !DILocation(line: 147, column: 57, scope: !1698)
!1720 = !DILocalVariable(name: "shift", scope: !1698, file: !130, line: 148, type: !39)
!1721 = !DILocation(line: 148, column: 7, scope: !1698)
!1722 = !DILocation(line: 148, column: 15, scope: !1698)
!1723 = !DILocation(line: 148, column: 18, scope: !1698)
!1724 = !DILocalVariable(name: "r", scope: !1698, file: !130, line: 149, type: !7)
!1725 = !DILocation(line: 149, column: 16, scope: !1698)
!1726 = !DILocation(line: 149, column: 22, scope: !1698)
!1727 = !DILocation(line: 149, column: 21, scope: !1698)
!1728 = !DILocation(line: 149, column: 27, scope: !1698)
!1729 = !DILocation(line: 149, column: 24, scope: !1698)
!1730 = !DILocation(line: 149, column: 34, scope: !1698)
!1731 = !DILocation(line: 150, column: 11, scope: !1698)
!1732 = !DILocation(line: 150, column: 13, scope: !1698)
!1733 = !DILocation(line: 150, column: 21, scope: !1698)
!1734 = !DILocation(line: 150, column: 19, scope: !1698)
!1735 = !DILocation(line: 150, column: 27, scope: !1698)
!1736 = !DILocation(line: 150, column: 24, scope: !1698)
!1737 = !DILocation(line: 150, column: 4, scope: !1698)
!1738 = !DILocation(line: 150, column: 6, scope: !1698)
!1739 = !DILocation(line: 151, column: 10, scope: !1698)
!1740 = !DILocation(line: 151, column: 3, scope: !1698)
!1741 = distinct !DISubprogram(name: "set_quoting_flags", scope: !130, file: !130, line: 159, type: !1742, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!39, !1658, !39}
!1744 = !DILocalVariable(name: "o", arg: 1, scope: !1741, file: !130, line: 159, type: !1658)
!1745 = !DILocation(line: 159, column: 44, scope: !1741)
!1746 = !DILocalVariable(name: "i", arg: 2, scope: !1741, file: !130, line: 159, type: !39)
!1747 = !DILocation(line: 159, column: 51, scope: !1741)
!1748 = !DILocation(line: 161, column: 8, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1741, file: !130, line: 161, column: 7)
!1750 = !DILocation(line: 161, column: 7, scope: !1741)
!1751 = !DILocation(line: 162, column: 7, scope: !1749)
!1752 = !DILocation(line: 162, column: 5, scope: !1749)
!1753 = !DILocalVariable(name: "r", scope: !1741, file: !130, line: 163, type: !39)
!1754 = !DILocation(line: 163, column: 7, scope: !1741)
!1755 = !DILocation(line: 163, column: 11, scope: !1741)
!1756 = !DILocation(line: 163, column: 14, scope: !1741)
!1757 = !DILocation(line: 164, column: 14, scope: !1741)
!1758 = !DILocation(line: 164, column: 3, scope: !1741)
!1759 = !DILocation(line: 164, column: 6, scope: !1741)
!1760 = !DILocation(line: 164, column: 12, scope: !1741)
!1761 = !DILocation(line: 165, column: 10, scope: !1741)
!1762 = !DILocation(line: 165, column: 3, scope: !1741)
!1763 = distinct !DISubprogram(name: "set_custom_quoting", scope: !130, file: !130, line: 169, type: !1764, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !1658, !48, !48}
!1766 = !DILocalVariable(name: "o", arg: 1, scope: !1763, file: !130, line: 169, type: !1658)
!1767 = !DILocation(line: 169, column: 45, scope: !1763)
!1768 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1763, file: !130, line: 170, type: !48)
!1769 = !DILocation(line: 170, column: 33, scope: !1763)
!1770 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1763, file: !130, line: 170, type: !48)
!1771 = !DILocation(line: 170, column: 57, scope: !1763)
!1772 = !DILocation(line: 172, column: 8, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1763, file: !130, line: 172, column: 7)
!1774 = !DILocation(line: 172, column: 7, scope: !1763)
!1775 = !DILocation(line: 173, column: 7, scope: !1773)
!1776 = !DILocation(line: 173, column: 5, scope: !1773)
!1777 = !DILocation(line: 174, column: 3, scope: !1763)
!1778 = !DILocation(line: 174, column: 6, scope: !1763)
!1779 = !DILocation(line: 174, column: 12, scope: !1763)
!1780 = !DILocation(line: 175, column: 8, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1763, file: !130, line: 175, column: 7)
!1782 = !DILocation(line: 175, column: 19, scope: !1781)
!1783 = !DILocation(line: 175, column: 23, scope: !1781)
!1784 = !DILocation(line: 175, column: 7, scope: !1763)
!1785 = !DILocation(line: 176, column: 5, scope: !1781)
!1786 = !DILocation(line: 177, column: 19, scope: !1763)
!1787 = !DILocation(line: 177, column: 3, scope: !1763)
!1788 = !DILocation(line: 177, column: 6, scope: !1763)
!1789 = !DILocation(line: 177, column: 17, scope: !1763)
!1790 = !DILocation(line: 178, column: 20, scope: !1763)
!1791 = !DILocation(line: 178, column: 3, scope: !1763)
!1792 = !DILocation(line: 178, column: 6, scope: !1763)
!1793 = !DILocation(line: 178, column: 18, scope: !1763)
!1794 = !DILocation(line: 179, column: 1, scope: !1763)
!1795 = distinct !DISubprogram(name: "quotearg_buffer", scope: !130, file: !130, line: 774, type: !1796, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!138, !36, !138, !48, !138, !1677}
!1798 = !DILocalVariable(name: "buffer", arg: 1, scope: !1795, file: !130, line: 774, type: !36)
!1799 = !DILocation(line: 774, column: 24, scope: !1795)
!1800 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1795, file: !130, line: 774, type: !138)
!1801 = !DILocation(line: 774, column: 39, scope: !1795)
!1802 = !DILocalVariable(name: "arg", arg: 3, scope: !1795, file: !130, line: 775, type: !48)
!1803 = !DILocation(line: 775, column: 30, scope: !1795)
!1804 = !DILocalVariable(name: "argsize", arg: 4, scope: !1795, file: !130, line: 775, type: !138)
!1805 = !DILocation(line: 775, column: 42, scope: !1795)
!1806 = !DILocalVariable(name: "o", arg: 5, scope: !1795, file: !130, line: 776, type: !1677)
!1807 = !DILocation(line: 776, column: 48, scope: !1795)
!1808 = !DILocalVariable(name: "p", scope: !1795, file: !130, line: 778, type: !1677)
!1809 = !DILocation(line: 778, column: 33, scope: !1795)
!1810 = !DILocation(line: 778, column: 37, scope: !1795)
!1811 = !DILocation(line: 778, column: 41, scope: !1795)
!1812 = !DILocalVariable(name: "saved_errno", scope: !1795, file: !130, line: 779, type: !39)
!1813 = !DILocation(line: 779, column: 7, scope: !1795)
!1814 = !DILocation(line: 779, column: 21, scope: !1795)
!1815 = !DILocalVariable(name: "r", scope: !1795, file: !130, line: 780, type: !138)
!1816 = !DILocation(line: 780, column: 10, scope: !1795)
!1817 = !DILocation(line: 780, column: 40, scope: !1795)
!1818 = !DILocation(line: 780, column: 48, scope: !1795)
!1819 = !DILocation(line: 780, column: 60, scope: !1795)
!1820 = !DILocation(line: 780, column: 65, scope: !1795)
!1821 = !DILocation(line: 781, column: 40, scope: !1795)
!1822 = !DILocation(line: 781, column: 43, scope: !1795)
!1823 = !DILocation(line: 781, column: 50, scope: !1795)
!1824 = !DILocation(line: 781, column: 53, scope: !1795)
!1825 = !DILocation(line: 781, column: 60, scope: !1795)
!1826 = !DILocation(line: 781, column: 63, scope: !1795)
!1827 = !DILocation(line: 782, column: 40, scope: !1795)
!1828 = !DILocation(line: 782, column: 43, scope: !1795)
!1829 = !DILocation(line: 782, column: 55, scope: !1795)
!1830 = !DILocation(line: 782, column: 58, scope: !1795)
!1831 = !DILocation(line: 780, column: 14, scope: !1795)
!1832 = !DILocation(line: 783, column: 11, scope: !1795)
!1833 = !DILocation(line: 783, column: 3, scope: !1795)
!1834 = !DILocation(line: 783, column: 9, scope: !1795)
!1835 = !DILocation(line: 784, column: 10, scope: !1795)
!1836 = !DILocation(line: 784, column: 3, scope: !1795)
!1837 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !130, file: !130, line: 251, type: !1838, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !50)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!138, !36, !138, !48, !138, !5, !39, !1840, !48, !48}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1842 = !DILocalVariable(name: "buffer", arg: 1, scope: !1837, file: !130, line: 251, type: !36)
!1843 = !DILocation(line: 251, column: 33, scope: !1837)
!1844 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1837, file: !130, line: 251, type: !138)
!1845 = !DILocation(line: 251, column: 48, scope: !1837)
!1846 = !DILocalVariable(name: "arg", arg: 3, scope: !1837, file: !130, line: 252, type: !48)
!1847 = !DILocation(line: 252, column: 39, scope: !1837)
!1848 = !DILocalVariable(name: "argsize", arg: 4, scope: !1837, file: !130, line: 252, type: !138)
!1849 = !DILocation(line: 252, column: 51, scope: !1837)
!1850 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1837, file: !130, line: 253, type: !5)
!1851 = !DILocation(line: 253, column: 46, scope: !1837)
!1852 = !DILocalVariable(name: "flags", arg: 6, scope: !1837, file: !130, line: 253, type: !39)
!1853 = !DILocation(line: 253, column: 65, scope: !1837)
!1854 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1837, file: !130, line: 254, type: !1840)
!1855 = !DILocation(line: 254, column: 47, scope: !1837)
!1856 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1837, file: !130, line: 255, type: !48)
!1857 = !DILocation(line: 255, column: 39, scope: !1837)
!1858 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1837, file: !130, line: 256, type: !48)
!1859 = !DILocation(line: 256, column: 39, scope: !1837)
!1860 = !DILocalVariable(name: "unibyte_locale", scope: !1837, file: !130, line: 258, type: !75)
!1861 = !DILocation(line: 258, column: 8, scope: !1837)
!1862 = !DILocation(line: 258, column: 25, scope: !1837)
!1863 = !DILocation(line: 258, column: 36, scope: !1837)
!1864 = !DILocalVariable(name: "len", scope: !1837, file: !130, line: 260, type: !138)
!1865 = !DILocation(line: 260, column: 10, scope: !1837)
!1866 = !DILocalVariable(name: "orig_buffersize", scope: !1837, file: !130, line: 261, type: !138)
!1867 = !DILocation(line: 261, column: 10, scope: !1837)
!1868 = !DILocalVariable(name: "quote_string", scope: !1837, file: !130, line: 262, type: !48)
!1869 = !DILocation(line: 262, column: 15, scope: !1837)
!1870 = !DILocalVariable(name: "quote_string_len", scope: !1837, file: !130, line: 263, type: !138)
!1871 = !DILocation(line: 263, column: 10, scope: !1837)
!1872 = !DILocalVariable(name: "backslash_escapes", scope: !1837, file: !130, line: 264, type: !75)
!1873 = !DILocation(line: 264, column: 8, scope: !1837)
!1874 = !DILocalVariable(name: "elide_outer_quotes", scope: !1837, file: !130, line: 265, type: !75)
!1875 = !DILocation(line: 265, column: 8, scope: !1837)
!1876 = !DILocation(line: 265, column: 30, scope: !1837)
!1877 = !DILocation(line: 265, column: 36, scope: !1837)
!1878 = !DILocation(line: 265, column: 61, scope: !1837)
!1879 = !DILocalVariable(name: "encountered_single_quote", scope: !1837, file: !130, line: 266, type: !75)
!1880 = !DILocation(line: 266, column: 8, scope: !1837)
!1881 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1837, file: !130, line: 267, type: !75)
!1882 = !DILocation(line: 267, column: 8, scope: !1837)
!1883 = !DILocation(line: 267, column: 3, scope: !1837)
!1884 = !DILabel(scope: !1837, name: "process_input", file: !130, line: 308)
!1885 = !DILocation(line: 308, column: 2, scope: !1837)
!1886 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1837, file: !130, line: 309, type: !75)
!1887 = !DILocation(line: 309, column: 8, scope: !1837)
!1888 = !DILocation(line: 311, column: 11, scope: !1837)
!1889 = !DILocation(line: 311, column: 3, scope: !1837)
!1890 = !DILocation(line: 314, column: 21, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1837, file: !130, line: 312, column: 5)
!1892 = !DILocation(line: 315, column: 26, scope: !1891)
!1893 = !DILocation(line: 315, column: 7, scope: !1891)
!1894 = !DILocation(line: 318, column: 12, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !130, line: 318, column: 11)
!1896 = !DILocation(line: 318, column: 11, scope: !1891)
!1897 = !DILocation(line: 319, column: 9, scope: !1895)
!1898 = !DILocation(line: 319, column: 9, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !130, line: 319, column: 9)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !130, line: 319, column: 9)
!1901 = !DILocation(line: 319, column: 9, scope: !1900)
!1902 = !DILocation(line: 320, column: 25, scope: !1891)
!1903 = !DILocation(line: 321, column: 20, scope: !1891)
!1904 = !DILocation(line: 322, column: 24, scope: !1891)
!1905 = !DILocation(line: 323, column: 7, scope: !1891)
!1906 = !DILocation(line: 326, column: 25, scope: !1891)
!1907 = !DILocation(line: 327, column: 26, scope: !1891)
!1908 = !DILocation(line: 328, column: 7, scope: !1891)
!1909 = !DILocation(line: 334, column: 13, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !130, line: 334, column: 13)
!1911 = distinct !DILexicalBlock(scope: !1891, file: !130, line: 333, column: 7)
!1912 = !DILocation(line: 334, column: 27, scope: !1910)
!1913 = !DILocation(line: 334, column: 13, scope: !1911)
!1914 = !DILocation(line: 357, column: 50, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !130, line: 335, column: 11)
!1916 = !DILocation(line: 357, column: 26, scope: !1915)
!1917 = !DILocation(line: 357, column: 24, scope: !1915)
!1918 = !DILocation(line: 358, column: 51, scope: !1915)
!1919 = !DILocation(line: 358, column: 27, scope: !1915)
!1920 = !DILocation(line: 358, column: 25, scope: !1915)
!1921 = !DILocation(line: 359, column: 11, scope: !1915)
!1922 = !DILocation(line: 360, column: 14, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1911, file: !130, line: 360, column: 13)
!1924 = !DILocation(line: 360, column: 13, scope: !1911)
!1925 = !DILocalVariable(name: "lq", scope: !1926, file: !130, line: 361, type: !48)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !130, line: 361, column: 11)
!1927 = !DILocation(line: 361, column: 28, scope: !1926)
!1928 = !DILocation(line: 361, column: 33, scope: !1926)
!1929 = !DILocation(line: 361, column: 16, scope: !1926)
!1930 = !DILocation(line: 361, column: 46, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1926, file: !130, line: 361, column: 11)
!1932 = !DILocation(line: 361, column: 45, scope: !1931)
!1933 = !DILocation(line: 361, column: 11, scope: !1926)
!1934 = !DILocation(line: 362, column: 13, scope: !1931)
!1935 = !DILocation(line: 362, column: 13, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !130, line: 362, column: 13)
!1937 = distinct !DILexicalBlock(scope: !1931, file: !130, line: 362, column: 13)
!1938 = !DILocation(line: 362, column: 13, scope: !1937)
!1939 = !DILocation(line: 361, column: 52, scope: !1931)
!1940 = !DILocation(line: 361, column: 11, scope: !1931)
!1941 = distinct !{!1941, !1933, !1942, !409}
!1942 = !DILocation(line: 362, column: 13, scope: !1926)
!1943 = !DILocation(line: 363, column: 27, scope: !1911)
!1944 = !DILocation(line: 364, column: 24, scope: !1911)
!1945 = !DILocation(line: 364, column: 22, scope: !1911)
!1946 = !DILocation(line: 365, column: 36, scope: !1911)
!1947 = !DILocation(line: 365, column: 28, scope: !1911)
!1948 = !DILocation(line: 365, column: 26, scope: !1911)
!1949 = !DILocation(line: 367, column: 7, scope: !1891)
!1950 = !DILocation(line: 370, column: 25, scope: !1891)
!1951 = !DILocation(line: 370, column: 7, scope: !1891)
!1952 = !DILocation(line: 373, column: 26, scope: !1891)
!1953 = !DILocation(line: 373, column: 7, scope: !1891)
!1954 = !DILocation(line: 376, column: 12, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1891, file: !130, line: 376, column: 11)
!1956 = !DILocation(line: 376, column: 11, scope: !1891)
!1957 = !DILocation(line: 377, column: 27, scope: !1955)
!1958 = !DILocation(line: 377, column: 9, scope: !1955)
!1959 = !DILocation(line: 380, column: 21, scope: !1891)
!1960 = !DILocation(line: 381, column: 12, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1891, file: !130, line: 381, column: 11)
!1962 = !DILocation(line: 381, column: 11, scope: !1891)
!1963 = !DILocation(line: 382, column: 9, scope: !1961)
!1964 = !DILocation(line: 382, column: 9, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !130, line: 382, column: 9)
!1966 = distinct !DILexicalBlock(scope: !1961, file: !130, line: 382, column: 9)
!1967 = !DILocation(line: 382, column: 9, scope: !1966)
!1968 = !DILocation(line: 383, column: 20, scope: !1891)
!1969 = !DILocation(line: 384, column: 24, scope: !1891)
!1970 = !DILocation(line: 385, column: 7, scope: !1891)
!1971 = !DILocation(line: 388, column: 26, scope: !1891)
!1972 = !DILocation(line: 389, column: 7, scope: !1891)
!1973 = !DILocation(line: 392, column: 7, scope: !1891)
!1974 = !DILocalVariable(name: "i", scope: !1975, file: !130, line: 395, type: !138)
!1975 = distinct !DILexicalBlock(scope: !1837, file: !130, line: 395, column: 3)
!1976 = !DILocation(line: 395, column: 15, scope: !1975)
!1977 = !DILocation(line: 395, column: 8, scope: !1975)
!1978 = !DILocation(line: 395, column: 26, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !130, line: 395, column: 3)
!1980 = !DILocation(line: 395, column: 34, scope: !1979)
!1981 = !DILocation(line: 395, column: 48, scope: !1979)
!1982 = !DILocation(line: 395, column: 52, scope: !1979)
!1983 = !DILocation(line: 395, column: 55, scope: !1979)
!1984 = !DILocation(line: 395, column: 65, scope: !1979)
!1985 = !DILocation(line: 395, column: 70, scope: !1979)
!1986 = !DILocation(line: 395, column: 67, scope: !1979)
!1987 = !DILocation(line: 395, column: 23, scope: !1979)
!1988 = !DILocation(line: 395, column: 3, scope: !1975)
!1989 = !DILocalVariable(name: "is_right_quote", scope: !1990, file: !130, line: 397, type: !75)
!1990 = distinct !DILexicalBlock(scope: !1979, file: !130, line: 396, column: 5)
!1991 = !DILocation(line: 397, column: 12, scope: !1990)
!1992 = !DILocalVariable(name: "escaping", scope: !1990, file: !130, line: 398, type: !75)
!1993 = !DILocation(line: 398, column: 12, scope: !1990)
!1994 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1990, file: !130, line: 399, type: !75)
!1995 = !DILocation(line: 399, column: 12, scope: !1990)
!1996 = !DILocation(line: 401, column: 11, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1990, file: !130, line: 401, column: 11)
!1998 = !DILocation(line: 402, column: 11, scope: !1997)
!1999 = !DILocation(line: 402, column: 14, scope: !1997)
!2000 = !DILocation(line: 402, column: 28, scope: !1997)
!2001 = !DILocation(line: 403, column: 11, scope: !1997)
!2002 = !DILocation(line: 403, column: 14, scope: !1997)
!2003 = !DILocation(line: 404, column: 11, scope: !1997)
!2004 = !DILocation(line: 404, column: 15, scope: !1997)
!2005 = !DILocation(line: 404, column: 19, scope: !1997)
!2006 = !DILocation(line: 404, column: 17, scope: !1997)
!2007 = !DILocation(line: 405, column: 19, scope: !1997)
!2008 = !DILocation(line: 405, column: 27, scope: !1997)
!2009 = !DILocation(line: 405, column: 39, scope: !1997)
!2010 = !DILocation(line: 405, column: 46, scope: !1997)
!2011 = !DILocation(line: 405, column: 44, scope: !1997)
!2012 = !DILocation(line: 409, column: 40, scope: !1997)
!2013 = !DILocation(line: 409, column: 32, scope: !1997)
!2014 = !DILocation(line: 409, column: 30, scope: !1997)
!2015 = !DILocation(line: 409, column: 48, scope: !1997)
!2016 = !DILocation(line: 405, column: 15, scope: !1997)
!2017 = !DILocation(line: 410, column: 11, scope: !1997)
!2018 = !DILocation(line: 410, column: 21, scope: !1997)
!2019 = !DILocation(line: 410, column: 27, scope: !1997)
!2020 = !DILocation(line: 410, column: 25, scope: !1997)
!2021 = !DILocation(line: 410, column: 30, scope: !1997)
!2022 = !DILocation(line: 410, column: 44, scope: !1997)
!2023 = !DILocation(line: 410, column: 14, scope: !1997)
!2024 = !DILocation(line: 401, column: 11, scope: !1990)
!2025 = !DILocation(line: 412, column: 15, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !130, line: 412, column: 15)
!2027 = distinct !DILexicalBlock(scope: !1997, file: !130, line: 411, column: 9)
!2028 = !DILocation(line: 412, column: 15, scope: !2027)
!2029 = !DILocation(line: 413, column: 13, scope: !2026)
!2030 = !DILocation(line: 414, column: 26, scope: !2027)
!2031 = !DILocation(line: 415, column: 9, scope: !2027)
!2032 = !DILocalVariable(name: "c", scope: !1990, file: !130, line: 417, type: !209)
!2033 = !DILocation(line: 417, column: 21, scope: !1990)
!2034 = !DILocation(line: 417, column: 25, scope: !1990)
!2035 = !DILocation(line: 417, column: 29, scope: !1990)
!2036 = !DILocation(line: 418, column: 15, scope: !1990)
!2037 = !DILocation(line: 418, column: 7, scope: !1990)
!2038 = !DILocation(line: 421, column: 15, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !130, line: 421, column: 15)
!2040 = distinct !DILexicalBlock(scope: !1990, file: !130, line: 419, column: 9)
!2041 = !DILocation(line: 421, column: 15, scope: !2040)
!2042 = !DILocation(line: 423, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !130, line: 422, column: 13)
!2044 = !DILocation(line: 423, column: 15, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !130, line: 423, column: 15)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !130, line: 423, column: 15)
!2047 = !DILocation(line: 423, column: 15, scope: !2046)
!2048 = !DILocation(line: 423, column: 15, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !130, line: 423, column: 15)
!2050 = !DILocation(line: 423, column: 15, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2049, file: !130, line: 423, column: 15)
!2052 = !DILocation(line: 423, column: 15, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !130, line: 423, column: 15)
!2054 = distinct !DILexicalBlock(scope: !2051, file: !130, line: 423, column: 15)
!2055 = !DILocation(line: 423, column: 15, scope: !2054)
!2056 = !DILocation(line: 423, column: 15, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !130, line: 423, column: 15)
!2058 = distinct !DILexicalBlock(scope: !2051, file: !130, line: 423, column: 15)
!2059 = !DILocation(line: 423, column: 15, scope: !2058)
!2060 = !DILocation(line: 423, column: 15, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !130, line: 423, column: 15)
!2062 = distinct !DILexicalBlock(scope: !2051, file: !130, line: 423, column: 15)
!2063 = !DILocation(line: 423, column: 15, scope: !2062)
!2064 = !DILocation(line: 423, column: 15, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !130, line: 423, column: 15)
!2066 = distinct !DILexicalBlock(scope: !2046, file: !130, line: 423, column: 15)
!2067 = !DILocation(line: 423, column: 15, scope: !2066)
!2068 = !DILocation(line: 430, column: 19, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2043, file: !130, line: 430, column: 19)
!2070 = !DILocation(line: 430, column: 33, scope: !2069)
!2071 = !DILocation(line: 431, column: 19, scope: !2069)
!2072 = !DILocation(line: 431, column: 22, scope: !2069)
!2073 = !DILocation(line: 431, column: 24, scope: !2069)
!2074 = !DILocation(line: 431, column: 30, scope: !2069)
!2075 = !DILocation(line: 431, column: 28, scope: !2069)
!2076 = !DILocation(line: 431, column: 38, scope: !2069)
!2077 = !DILocation(line: 431, column: 48, scope: !2069)
!2078 = !DILocation(line: 431, column: 52, scope: !2069)
!2079 = !DILocation(line: 431, column: 54, scope: !2069)
!2080 = !DILocation(line: 431, column: 45, scope: !2069)
!2081 = !DILocation(line: 431, column: 59, scope: !2069)
!2082 = !DILocation(line: 431, column: 62, scope: !2069)
!2083 = !DILocation(line: 431, column: 66, scope: !2069)
!2084 = !DILocation(line: 431, column: 68, scope: !2069)
!2085 = !DILocation(line: 431, column: 73, scope: !2069)
!2086 = !DILocation(line: 430, column: 19, scope: !2043)
!2087 = !DILocation(line: 433, column: 19, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2069, file: !130, line: 432, column: 17)
!2089 = !DILocation(line: 433, column: 19, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !130, line: 433, column: 19)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !130, line: 433, column: 19)
!2092 = !DILocation(line: 433, column: 19, scope: !2091)
!2093 = !DILocation(line: 434, column: 19, scope: !2088)
!2094 = !DILocation(line: 434, column: 19, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !130, line: 434, column: 19)
!2096 = distinct !DILexicalBlock(scope: !2088, file: !130, line: 434, column: 19)
!2097 = !DILocation(line: 434, column: 19, scope: !2096)
!2098 = !DILocation(line: 435, column: 17, scope: !2088)
!2099 = !DILocation(line: 436, column: 17, scope: !2043)
!2100 = !DILocation(line: 441, column: 13, scope: !2043)
!2101 = !DILocation(line: 442, column: 20, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2039, file: !130, line: 442, column: 20)
!2103 = !DILocation(line: 442, column: 26, scope: !2102)
!2104 = !DILocation(line: 442, column: 20, scope: !2039)
!2105 = !DILocation(line: 443, column: 13, scope: !2102)
!2106 = !DILocation(line: 444, column: 11, scope: !2040)
!2107 = !DILocation(line: 447, column: 20, scope: !2040)
!2108 = !DILocation(line: 447, column: 11, scope: !2040)
!2109 = !DILocation(line: 450, column: 19, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !130, line: 450, column: 19)
!2111 = distinct !DILexicalBlock(scope: !2040, file: !130, line: 448, column: 13)
!2112 = !DILocation(line: 450, column: 19, scope: !2111)
!2113 = !DILocation(line: 451, column: 17, scope: !2110)
!2114 = !DILocation(line: 452, column: 15, scope: !2111)
!2115 = !DILocation(line: 455, column: 20, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2111, file: !130, line: 455, column: 19)
!2117 = !DILocation(line: 455, column: 26, scope: !2116)
!2118 = !DILocation(line: 456, column: 19, scope: !2116)
!2119 = !DILocation(line: 456, column: 22, scope: !2116)
!2120 = !DILocation(line: 456, column: 24, scope: !2116)
!2121 = !DILocation(line: 456, column: 30, scope: !2116)
!2122 = !DILocation(line: 456, column: 28, scope: !2116)
!2123 = !DILocation(line: 456, column: 38, scope: !2116)
!2124 = !DILocation(line: 456, column: 41, scope: !2116)
!2125 = !DILocation(line: 456, column: 45, scope: !2116)
!2126 = !DILocation(line: 456, column: 47, scope: !2116)
!2127 = !DILocation(line: 456, column: 52, scope: !2116)
!2128 = !DILocation(line: 455, column: 19, scope: !2111)
!2129 = !DILocation(line: 457, column: 25, scope: !2116)
!2130 = !DILocation(line: 457, column: 29, scope: !2116)
!2131 = !DILocation(line: 457, column: 31, scope: !2116)
!2132 = !DILocation(line: 457, column: 17, scope: !2116)
!2133 = !DILocation(line: 464, column: 25, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !130, line: 464, column: 25)
!2135 = distinct !DILexicalBlock(scope: !2116, file: !130, line: 458, column: 19)
!2136 = !DILocation(line: 464, column: 25, scope: !2135)
!2137 = !DILocation(line: 465, column: 23, scope: !2134)
!2138 = !DILocation(line: 466, column: 25, scope: !2135)
!2139 = !DILocation(line: 466, column: 29, scope: !2135)
!2140 = !DILocation(line: 466, column: 31, scope: !2135)
!2141 = !DILocation(line: 466, column: 23, scope: !2135)
!2142 = !DILocation(line: 467, column: 23, scope: !2135)
!2143 = !DILocation(line: 468, column: 21, scope: !2135)
!2144 = !DILocation(line: 468, column: 21, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !130, line: 468, column: 21)
!2146 = distinct !DILexicalBlock(scope: !2135, file: !130, line: 468, column: 21)
!2147 = !DILocation(line: 468, column: 21, scope: !2146)
!2148 = !DILocation(line: 469, column: 21, scope: !2135)
!2149 = !DILocation(line: 469, column: 21, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !130, line: 469, column: 21)
!2151 = distinct !DILexicalBlock(scope: !2135, file: !130, line: 469, column: 21)
!2152 = !DILocation(line: 469, column: 21, scope: !2151)
!2153 = !DILocation(line: 470, column: 21, scope: !2135)
!2154 = !DILocation(line: 470, column: 21, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !130, line: 470, column: 21)
!2156 = distinct !DILexicalBlock(scope: !2135, file: !130, line: 470, column: 21)
!2157 = !DILocation(line: 470, column: 21, scope: !2156)
!2158 = !DILocation(line: 471, column: 21, scope: !2135)
!2159 = !DILocation(line: 471, column: 21, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !130, line: 471, column: 21)
!2161 = distinct !DILexicalBlock(scope: !2135, file: !130, line: 471, column: 21)
!2162 = !DILocation(line: 471, column: 21, scope: !2161)
!2163 = !DILocation(line: 472, column: 21, scope: !2135)
!2164 = !DILocation(line: 473, column: 19, scope: !2135)
!2165 = !DILocation(line: 474, column: 15, scope: !2111)
!2166 = !DILocation(line: 476, column: 11, scope: !2040)
!2167 = !DILocation(line: 481, column: 26, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2040, file: !130, line: 478, column: 9)
!2169 = !DILocation(line: 481, column: 33, scope: !2168)
!2170 = !DILocation(line: 482, column: 26, scope: !2168)
!2171 = !DILocation(line: 482, column: 33, scope: !2168)
!2172 = !DILocation(line: 483, column: 26, scope: !2168)
!2173 = !DILocation(line: 483, column: 33, scope: !2168)
!2174 = !DILocation(line: 484, column: 26, scope: !2168)
!2175 = !DILocation(line: 484, column: 33, scope: !2168)
!2176 = !DILocation(line: 485, column: 26, scope: !2168)
!2177 = !DILocation(line: 485, column: 33, scope: !2168)
!2178 = !DILocation(line: 486, column: 26, scope: !2168)
!2179 = !DILocation(line: 486, column: 33, scope: !2168)
!2180 = !DILocation(line: 487, column: 26, scope: !2168)
!2181 = !DILocation(line: 487, column: 33, scope: !2168)
!2182 = !DILocation(line: 488, column: 28, scope: !2168)
!2183 = !DILocation(line: 488, column: 26, scope: !2168)
!2184 = !DILocation(line: 490, column: 17, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2168, file: !130, line: 490, column: 17)
!2186 = !DILocation(line: 490, column: 31, scope: !2185)
!2187 = !DILocation(line: 490, column: 17, scope: !2168)
!2188 = !DILocation(line: 492, column: 21, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !130, line: 492, column: 21)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !130, line: 491, column: 15)
!2191 = !DILocation(line: 492, column: 21, scope: !2190)
!2192 = !DILocation(line: 493, column: 19, scope: !2189)
!2193 = !DILocation(line: 494, column: 17, scope: !2190)
!2194 = !DILocation(line: 499, column: 17, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2168, file: !130, line: 499, column: 17)
!2196 = !DILocation(line: 499, column: 35, scope: !2195)
!2197 = !DILocation(line: 499, column: 38, scope: !2195)
!2198 = !DILocation(line: 499, column: 57, scope: !2195)
!2199 = !DILocation(line: 499, column: 60, scope: !2195)
!2200 = !DILocation(line: 499, column: 17, scope: !2168)
!2201 = !DILocation(line: 500, column: 15, scope: !2195)
!2202 = !DILabel(scope: !2168, name: "c_and_shell_escape", file: !130, line: 502)
!2203 = !DILocation(line: 502, column: 11, scope: !2168)
!2204 = !DILocation(line: 503, column: 17, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2168, file: !130, line: 503, column: 17)
!2206 = !DILocation(line: 503, column: 31, scope: !2205)
!2207 = !DILocation(line: 504, column: 17, scope: !2205)
!2208 = !DILocation(line: 504, column: 20, scope: !2205)
!2209 = !DILocation(line: 503, column: 17, scope: !2168)
!2210 = !DILocation(line: 505, column: 15, scope: !2205)
!2211 = !DILabel(scope: !2168, name: "c_escape", file: !130, line: 507)
!2212 = !DILocation(line: 507, column: 11, scope: !2168)
!2213 = !DILocation(line: 508, column: 17, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2168, file: !130, line: 508, column: 17)
!2215 = !DILocation(line: 508, column: 17, scope: !2168)
!2216 = !DILocation(line: 510, column: 21, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2214, file: !130, line: 509, column: 15)
!2218 = !DILocation(line: 510, column: 19, scope: !2217)
!2219 = !DILocation(line: 511, column: 17, scope: !2217)
!2220 = !DILocation(line: 513, column: 13, scope: !2168)
!2221 = !DILocation(line: 517, column: 18, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2040, file: !130, line: 517, column: 15)
!2223 = !DILocation(line: 517, column: 26, scope: !2222)
!2224 = !DILocation(line: 517, column: 15, scope: !2040)
!2225 = !DILocation(line: 517, column: 40, scope: !2222)
!2226 = !DILocation(line: 517, column: 47, scope: !2222)
!2227 = !DILocation(line: 517, column: 57, scope: !2222)
!2228 = !DILocation(line: 517, column: 65, scope: !2222)
!2229 = !DILocation(line: 518, column: 13, scope: !2222)
!2230 = !DILocation(line: 517, column: 69, scope: !2222)
!2231 = !DILocation(line: 521, column: 15, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2040, file: !130, line: 521, column: 15)
!2233 = !DILocation(line: 521, column: 17, scope: !2232)
!2234 = !DILocation(line: 521, column: 15, scope: !2040)
!2235 = !DILocation(line: 522, column: 13, scope: !2232)
!2236 = !DILocation(line: 521, column: 20, scope: !2232)
!2237 = !DILocation(line: 525, column: 36, scope: !2040)
!2238 = !DILocation(line: 525, column: 11, scope: !2040)
!2239 = !DILocation(line: 536, column: 15, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2040, file: !130, line: 536, column: 15)
!2241 = !DILocation(line: 536, column: 29, scope: !2240)
!2242 = !DILocation(line: 537, column: 15, scope: !2240)
!2243 = !DILocation(line: 537, column: 18, scope: !2240)
!2244 = !DILocation(line: 536, column: 15, scope: !2040)
!2245 = !DILocation(line: 538, column: 13, scope: !2240)
!2246 = !DILocation(line: 539, column: 11, scope: !2040)
!2247 = !DILocation(line: 542, column: 36, scope: !2040)
!2248 = !DILocation(line: 543, column: 36, scope: !2040)
!2249 = !DILocation(line: 544, column: 15, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2040, file: !130, line: 544, column: 15)
!2251 = !DILocation(line: 544, column: 29, scope: !2250)
!2252 = !DILocation(line: 544, column: 15, scope: !2040)
!2253 = !DILocation(line: 546, column: 19, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !130, line: 546, column: 19)
!2255 = distinct !DILexicalBlock(scope: !2250, file: !130, line: 545, column: 13)
!2256 = !DILocation(line: 546, column: 19, scope: !2255)
!2257 = !DILocation(line: 547, column: 17, scope: !2254)
!2258 = !DILocation(line: 549, column: 19, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !130, line: 549, column: 19)
!2260 = !DILocation(line: 549, column: 30, scope: !2259)
!2261 = !DILocation(line: 549, column: 35, scope: !2259)
!2262 = !DILocation(line: 549, column: 19, scope: !2255)
!2263 = !DILocation(line: 554, column: 37, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2259, file: !130, line: 550, column: 17)
!2265 = !DILocation(line: 554, column: 35, scope: !2264)
!2266 = !DILocation(line: 555, column: 30, scope: !2264)
!2267 = !DILocation(line: 556, column: 17, scope: !2264)
!2268 = !DILocation(line: 558, column: 15, scope: !2255)
!2269 = !DILocation(line: 558, column: 15, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !130, line: 558, column: 15)
!2271 = distinct !DILexicalBlock(scope: !2255, file: !130, line: 558, column: 15)
!2272 = !DILocation(line: 558, column: 15, scope: !2271)
!2273 = !DILocation(line: 559, column: 15, scope: !2255)
!2274 = !DILocation(line: 559, column: 15, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !130, line: 559, column: 15)
!2276 = distinct !DILexicalBlock(scope: !2255, file: !130, line: 559, column: 15)
!2277 = !DILocation(line: 559, column: 15, scope: !2276)
!2278 = !DILocation(line: 560, column: 15, scope: !2255)
!2279 = !DILocation(line: 560, column: 15, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !130, line: 560, column: 15)
!2281 = distinct !DILexicalBlock(scope: !2255, file: !130, line: 560, column: 15)
!2282 = !DILocation(line: 560, column: 15, scope: !2281)
!2283 = !DILocation(line: 561, column: 40, scope: !2255)
!2284 = !DILocation(line: 562, column: 13, scope: !2255)
!2285 = !DILocation(line: 563, column: 11, scope: !2040)
!2286 = !DILocation(line: 587, column: 36, scope: !2040)
!2287 = !DILocation(line: 588, column: 11, scope: !2040)
!2288 = !DILocalVariable(name: "m", scope: !2289, file: !130, line: 598, type: !138)
!2289 = distinct !DILexicalBlock(scope: !2040, file: !130, line: 596, column: 11)
!2290 = !DILocation(line: 598, column: 20, scope: !2289)
!2291 = !DILocalVariable(name: "printable", scope: !2289, file: !130, line: 600, type: !75)
!2292 = !DILocation(line: 600, column: 18, scope: !2289)
!2293 = !DILocation(line: 602, column: 17, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2289, file: !130, line: 602, column: 17)
!2295 = !DILocation(line: 602, column: 17, scope: !2289)
!2296 = !DILocation(line: 604, column: 19, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2294, file: !130, line: 603, column: 15)
!2298 = !DILocation(line: 605, column: 29, scope: !2297)
!2299 = !DILocation(line: 605, column: 41, scope: !2297)
!2300 = !DILocation(line: 605, column: 27, scope: !2297)
!2301 = !DILocation(line: 606, column: 15, scope: !2297)
!2302 = !DILocalVariable(name: "mbs", scope: !2303, file: !130, line: 609, type: !2304)
!2303 = distinct !DILexicalBlock(scope: !2294, file: !130, line: 608, column: 15)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !212, line: 6, baseType: !2305)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !214, line: 21, baseType: !2306)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 13, size: 64, elements: !2307)
!2307 = !{!2308, !2309}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2306, file: !214, line: 15, baseType: !39, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2306, file: !214, line: 20, baseType: !2310, size: 32, offset: 32)
!2310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2306, file: !214, line: 16, size: 32, elements: !2311)
!2311 = !{!2312, !2313}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2310, file: !214, line: 18, baseType: !7, size: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2310, file: !214, line: 19, baseType: !223, size: 32)
!2314 = !DILocation(line: 609, column: 27, scope: !2303)
!2315 = !DILocation(line: 609, column: 32, scope: !2303)
!2316 = !DILocation(line: 611, column: 19, scope: !2303)
!2317 = !DILocation(line: 612, column: 27, scope: !2303)
!2318 = !DILocation(line: 613, column: 21, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2303, file: !130, line: 613, column: 21)
!2320 = !DILocation(line: 613, column: 29, scope: !2319)
!2321 = !DILocation(line: 613, column: 21, scope: !2303)
!2322 = !DILocation(line: 614, column: 37, scope: !2319)
!2323 = !DILocation(line: 614, column: 29, scope: !2319)
!2324 = !DILocation(line: 614, column: 27, scope: !2319)
!2325 = !DILocation(line: 614, column: 19, scope: !2319)
!2326 = !DILocation(line: 616, column: 17, scope: !2303)
!2327 = !DILocalVariable(name: "w", scope: !2328, file: !130, line: 618, type: !1625)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !130, line: 617, column: 19)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !130, line: 616, column: 17)
!2330 = distinct !DILexicalBlock(scope: !2303, file: !130, line: 616, column: 17)
!2331 = !DILocation(line: 618, column: 30, scope: !2328)
!2332 = !DILocalVariable(name: "bytes", scope: !2328, file: !130, line: 619, type: !138)
!2333 = !DILocation(line: 619, column: 28, scope: !2328)
!2334 = !DILocation(line: 619, column: 51, scope: !2328)
!2335 = !DILocation(line: 619, column: 55, scope: !2328)
!2336 = !DILocation(line: 619, column: 59, scope: !2328)
!2337 = !DILocation(line: 619, column: 57, scope: !2328)
!2338 = !DILocation(line: 620, column: 46, scope: !2328)
!2339 = !DILocation(line: 620, column: 57, scope: !2328)
!2340 = !DILocation(line: 620, column: 61, scope: !2328)
!2341 = !DILocation(line: 620, column: 59, scope: !2328)
!2342 = !DILocation(line: 620, column: 54, scope: !2328)
!2343 = !DILocation(line: 619, column: 36, scope: !2328)
!2344 = !DILocation(line: 621, column: 25, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2328, file: !130, line: 621, column: 25)
!2346 = !DILocation(line: 621, column: 31, scope: !2345)
!2347 = !DILocation(line: 621, column: 25, scope: !2328)
!2348 = !DILocation(line: 622, column: 23, scope: !2345)
!2349 = !DILocation(line: 623, column: 30, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !130, line: 623, column: 30)
!2351 = !DILocation(line: 623, column: 36, scope: !2350)
!2352 = !DILocation(line: 623, column: 30, scope: !2345)
!2353 = !DILocation(line: 625, column: 35, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !130, line: 624, column: 23)
!2355 = !DILocation(line: 626, column: 25, scope: !2354)
!2356 = !DILocation(line: 628, column: 30, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2350, file: !130, line: 628, column: 30)
!2358 = !DILocation(line: 628, column: 36, scope: !2357)
!2359 = !DILocation(line: 628, column: 30, scope: !2350)
!2360 = !DILocation(line: 630, column: 35, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !130, line: 629, column: 23)
!2362 = !DILocation(line: 631, column: 25, scope: !2361)
!2363 = !DILocation(line: 631, column: 32, scope: !2361)
!2364 = !DILocation(line: 631, column: 36, scope: !2361)
!2365 = !DILocation(line: 631, column: 34, scope: !2361)
!2366 = !DILocation(line: 631, column: 40, scope: !2361)
!2367 = !DILocation(line: 631, column: 38, scope: !2361)
!2368 = !DILocation(line: 631, column: 48, scope: !2361)
!2369 = !DILocation(line: 631, column: 51, scope: !2361)
!2370 = !DILocation(line: 631, column: 55, scope: !2361)
!2371 = !DILocation(line: 631, column: 59, scope: !2361)
!2372 = !DILocation(line: 631, column: 57, scope: !2361)
!2373 = !DILocation(line: 0, scope: !2361)
!2374 = !DILocation(line: 632, column: 28, scope: !2361)
!2375 = distinct !{!2375, !2362, !2374, !409}
!2376 = !DILocation(line: 633, column: 25, scope: !2361)
!2377 = !DILocation(line: 645, column: 44, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !130, line: 645, column: 29)
!2379 = distinct !DILexicalBlock(scope: !2357, file: !130, line: 636, column: 23)
!2380 = !DILocation(line: 646, column: 29, scope: !2378)
!2381 = !DILocation(line: 646, column: 32, scope: !2378)
!2382 = !DILocation(line: 646, column: 46, scope: !2378)
!2383 = !DILocation(line: 645, column: 29, scope: !2379)
!2384 = !DILocalVariable(name: "j", scope: !2385, file: !130, line: 648, type: !138)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !130, line: 648, column: 29)
!2386 = distinct !DILexicalBlock(scope: !2378, file: !130, line: 647, column: 27)
!2387 = !DILocation(line: 648, column: 41, scope: !2385)
!2388 = !DILocation(line: 648, column: 34, scope: !2385)
!2389 = !DILocation(line: 648, column: 48, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2385, file: !130, line: 648, column: 29)
!2391 = !DILocation(line: 648, column: 52, scope: !2390)
!2392 = !DILocation(line: 648, column: 50, scope: !2390)
!2393 = !DILocation(line: 648, column: 29, scope: !2385)
!2394 = !DILocation(line: 649, column: 39, scope: !2390)
!2395 = !DILocation(line: 649, column: 43, scope: !2390)
!2396 = !DILocation(line: 649, column: 47, scope: !2390)
!2397 = !DILocation(line: 649, column: 45, scope: !2390)
!2398 = !DILocation(line: 649, column: 51, scope: !2390)
!2399 = !DILocation(line: 649, column: 49, scope: !2390)
!2400 = !DILocation(line: 649, column: 31, scope: !2390)
!2401 = !DILocation(line: 653, column: 35, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2390, file: !130, line: 650, column: 33)
!2403 = !DILocation(line: 654, column: 33, scope: !2402)
!2404 = !DILocation(line: 648, column: 60, scope: !2390)
!2405 = !DILocation(line: 648, column: 29, scope: !2390)
!2406 = distinct !{!2406, !2393, !2407, !409}
!2407 = !DILocation(line: 654, column: 33, scope: !2385)
!2408 = !DILocation(line: 655, column: 27, scope: !2386)
!2409 = !DILocation(line: 657, column: 43, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2379, file: !130, line: 657, column: 29)
!2411 = !DILocation(line: 657, column: 31, scope: !2410)
!2412 = !DILocation(line: 657, column: 29, scope: !2379)
!2413 = !DILocation(line: 658, column: 37, scope: !2410)
!2414 = !DILocation(line: 658, column: 27, scope: !2410)
!2415 = !DILocation(line: 659, column: 30, scope: !2379)
!2416 = !DILocation(line: 659, column: 27, scope: !2379)
!2417 = !DILocation(line: 664, column: 23, scope: !2328)
!2418 = !DILocation(line: 668, column: 40, scope: !2289)
!2419 = !DILocation(line: 668, column: 38, scope: !2289)
!2420 = !DILocation(line: 670, column: 21, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2289, file: !130, line: 670, column: 17)
!2422 = !DILocation(line: 670, column: 19, scope: !2421)
!2423 = !DILocation(line: 670, column: 23, scope: !2421)
!2424 = !DILocation(line: 670, column: 27, scope: !2421)
!2425 = !DILocation(line: 670, column: 45, scope: !2421)
!2426 = !DILocation(line: 670, column: 50, scope: !2421)
!2427 = !DILocation(line: 670, column: 17, scope: !2289)
!2428 = !DILocalVariable(name: "ilim", scope: !2429, file: !130, line: 674, type: !138)
!2429 = distinct !DILexicalBlock(scope: !2421, file: !130, line: 671, column: 15)
!2430 = !DILocation(line: 674, column: 24, scope: !2429)
!2431 = !DILocation(line: 674, column: 31, scope: !2429)
!2432 = !DILocation(line: 674, column: 35, scope: !2429)
!2433 = !DILocation(line: 674, column: 33, scope: !2429)
!2434 = !DILocation(line: 676, column: 17, scope: !2429)
!2435 = !DILocation(line: 678, column: 25, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !130, line: 678, column: 25)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !130, line: 677, column: 19)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !130, line: 676, column: 17)
!2439 = distinct !DILexicalBlock(scope: !2429, file: !130, line: 676, column: 17)
!2440 = !DILocation(line: 678, column: 43, scope: !2436)
!2441 = !DILocation(line: 678, column: 48, scope: !2436)
!2442 = !DILocation(line: 678, column: 25, scope: !2437)
!2443 = !DILocation(line: 680, column: 25, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2436, file: !130, line: 679, column: 23)
!2445 = !DILocation(line: 680, column: 25, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !130, line: 680, column: 25)
!2447 = distinct !DILexicalBlock(scope: !2444, file: !130, line: 680, column: 25)
!2448 = !DILocation(line: 680, column: 25, scope: !2447)
!2449 = !DILocation(line: 680, column: 25, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2447, file: !130, line: 680, column: 25)
!2451 = !DILocation(line: 680, column: 25, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2450, file: !130, line: 680, column: 25)
!2453 = !DILocation(line: 680, column: 25, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !130, line: 680, column: 25)
!2455 = distinct !DILexicalBlock(scope: !2452, file: !130, line: 680, column: 25)
!2456 = !DILocation(line: 680, column: 25, scope: !2455)
!2457 = !DILocation(line: 680, column: 25, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !130, line: 680, column: 25)
!2459 = distinct !DILexicalBlock(scope: !2452, file: !130, line: 680, column: 25)
!2460 = !DILocation(line: 680, column: 25, scope: !2459)
!2461 = !DILocation(line: 680, column: 25, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !130, line: 680, column: 25)
!2463 = distinct !DILexicalBlock(scope: !2452, file: !130, line: 680, column: 25)
!2464 = !DILocation(line: 680, column: 25, scope: !2463)
!2465 = !DILocation(line: 680, column: 25, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !130, line: 680, column: 25)
!2467 = distinct !DILexicalBlock(scope: !2447, file: !130, line: 680, column: 25)
!2468 = !DILocation(line: 680, column: 25, scope: !2467)
!2469 = !DILocation(line: 681, column: 25, scope: !2444)
!2470 = !DILocation(line: 681, column: 25, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !130, line: 681, column: 25)
!2472 = distinct !DILexicalBlock(scope: !2444, file: !130, line: 681, column: 25)
!2473 = !DILocation(line: 681, column: 25, scope: !2472)
!2474 = !DILocation(line: 682, column: 25, scope: !2444)
!2475 = !DILocation(line: 682, column: 25, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !130, line: 682, column: 25)
!2477 = distinct !DILexicalBlock(scope: !2444, file: !130, line: 682, column: 25)
!2478 = !DILocation(line: 682, column: 25, scope: !2477)
!2479 = !DILocation(line: 683, column: 36, scope: !2444)
!2480 = !DILocation(line: 683, column: 38, scope: !2444)
!2481 = !DILocation(line: 683, column: 33, scope: !2444)
!2482 = !DILocation(line: 683, column: 29, scope: !2444)
!2483 = !DILocation(line: 683, column: 27, scope: !2444)
!2484 = !DILocation(line: 684, column: 23, scope: !2444)
!2485 = !DILocation(line: 685, column: 30, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2436, file: !130, line: 685, column: 30)
!2487 = !DILocation(line: 685, column: 30, scope: !2436)
!2488 = !DILocation(line: 687, column: 25, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2486, file: !130, line: 686, column: 23)
!2490 = !DILocation(line: 687, column: 25, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !130, line: 687, column: 25)
!2492 = distinct !DILexicalBlock(scope: !2489, file: !130, line: 687, column: 25)
!2493 = !DILocation(line: 687, column: 25, scope: !2492)
!2494 = !DILocation(line: 688, column: 40, scope: !2489)
!2495 = !DILocation(line: 689, column: 23, scope: !2489)
!2496 = !DILocation(line: 690, column: 25, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2437, file: !130, line: 690, column: 25)
!2498 = !DILocation(line: 690, column: 33, scope: !2497)
!2499 = !DILocation(line: 690, column: 35, scope: !2497)
!2500 = !DILocation(line: 690, column: 30, scope: !2497)
!2501 = !DILocation(line: 690, column: 25, scope: !2437)
!2502 = !DILocation(line: 691, column: 23, scope: !2497)
!2503 = !DILocation(line: 692, column: 21, scope: !2437)
!2504 = !DILocation(line: 692, column: 21, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !130, line: 692, column: 21)
!2506 = distinct !DILexicalBlock(scope: !2437, file: !130, line: 692, column: 21)
!2507 = !DILocation(line: 692, column: 21, scope: !2506)
!2508 = !DILocation(line: 692, column: 21, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2505, file: !130, line: 692, column: 21)
!2510 = !DILocation(line: 692, column: 21, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !130, line: 692, column: 21)
!2512 = distinct !DILexicalBlock(scope: !2509, file: !130, line: 692, column: 21)
!2513 = !DILocation(line: 692, column: 21, scope: !2512)
!2514 = !DILocation(line: 692, column: 21, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !130, line: 692, column: 21)
!2516 = distinct !DILexicalBlock(scope: !2509, file: !130, line: 692, column: 21)
!2517 = !DILocation(line: 692, column: 21, scope: !2516)
!2518 = !DILocation(line: 693, column: 21, scope: !2437)
!2519 = !DILocation(line: 693, column: 21, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !130, line: 693, column: 21)
!2521 = distinct !DILexicalBlock(scope: !2437, file: !130, line: 693, column: 21)
!2522 = !DILocation(line: 693, column: 21, scope: !2521)
!2523 = !DILocation(line: 694, column: 25, scope: !2437)
!2524 = !DILocation(line: 694, column: 29, scope: !2437)
!2525 = !DILocation(line: 694, column: 23, scope: !2437)
!2526 = !DILocation(line: 676, column: 17, scope: !2438)
!2527 = distinct !{!2527, !2528, !2529}
!2528 = !DILocation(line: 676, column: 17, scope: !2439)
!2529 = !DILocation(line: 695, column: 19, scope: !2439)
!2530 = !DILocation(line: 697, column: 17, scope: !2429)
!2531 = !DILocation(line: 700, column: 9, scope: !2040)
!2532 = !DILocation(line: 702, column: 16, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !1990, file: !130, line: 702, column: 11)
!2534 = !DILocation(line: 702, column: 34, scope: !2533)
!2535 = !DILocation(line: 702, column: 37, scope: !2533)
!2536 = !DILocation(line: 702, column: 51, scope: !2533)
!2537 = !DILocation(line: 703, column: 15, scope: !2533)
!2538 = !DILocation(line: 703, column: 18, scope: !2533)
!2539 = !DILocation(line: 704, column: 14, scope: !2533)
!2540 = !DILocation(line: 704, column: 17, scope: !2533)
!2541 = !DILocation(line: 705, column: 14, scope: !2533)
!2542 = !DILocation(line: 705, column: 17, scope: !2533)
!2543 = !DILocation(line: 705, column: 33, scope: !2533)
!2544 = !DILocation(line: 705, column: 35, scope: !2533)
!2545 = !DILocation(line: 705, column: 51, scope: !2533)
!2546 = !DILocation(line: 705, column: 53, scope: !2533)
!2547 = !DILocation(line: 705, column: 47, scope: !2533)
!2548 = !DILocation(line: 705, column: 65, scope: !2533)
!2549 = !DILocation(line: 706, column: 11, scope: !2533)
!2550 = !DILocation(line: 706, column: 15, scope: !2533)
!2551 = !DILocation(line: 702, column: 11, scope: !1990)
!2552 = !DILocation(line: 707, column: 9, scope: !2533)
!2553 = !DILabel(scope: !1990, name: "store_escape", file: !130, line: 709)
!2554 = !DILocation(line: 709, column: 5, scope: !1990)
!2555 = !DILocation(line: 710, column: 7, scope: !1990)
!2556 = !DILocation(line: 710, column: 7, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !130, line: 710, column: 7)
!2558 = distinct !DILexicalBlock(scope: !1990, file: !130, line: 710, column: 7)
!2559 = !DILocation(line: 710, column: 7, scope: !2558)
!2560 = !DILocation(line: 710, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2558, file: !130, line: 710, column: 7)
!2562 = !DILocation(line: 710, column: 7, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2561, file: !130, line: 710, column: 7)
!2564 = !DILocation(line: 710, column: 7, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !130, line: 710, column: 7)
!2566 = distinct !DILexicalBlock(scope: !2563, file: !130, line: 710, column: 7)
!2567 = !DILocation(line: 710, column: 7, scope: !2566)
!2568 = !DILocation(line: 710, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !130, line: 710, column: 7)
!2570 = distinct !DILexicalBlock(scope: !2563, file: !130, line: 710, column: 7)
!2571 = !DILocation(line: 710, column: 7, scope: !2570)
!2572 = !DILocation(line: 710, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !130, line: 710, column: 7)
!2574 = distinct !DILexicalBlock(scope: !2563, file: !130, line: 710, column: 7)
!2575 = !DILocation(line: 710, column: 7, scope: !2574)
!2576 = !DILocation(line: 710, column: 7, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !130, line: 710, column: 7)
!2578 = distinct !DILexicalBlock(scope: !2558, file: !130, line: 710, column: 7)
!2579 = !DILocation(line: 710, column: 7, scope: !2578)
!2580 = !DILabel(scope: !1990, name: "store_c", file: !130, line: 712)
!2581 = !DILocation(line: 712, column: 5, scope: !1990)
!2582 = !DILocation(line: 713, column: 7, scope: !1990)
!2583 = !DILocation(line: 713, column: 7, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !130, line: 713, column: 7)
!2585 = distinct !DILexicalBlock(scope: !1990, file: !130, line: 713, column: 7)
!2586 = !DILocation(line: 713, column: 7, scope: !2585)
!2587 = !DILocation(line: 713, column: 7, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !130, line: 713, column: 7)
!2589 = !DILocation(line: 713, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !130, line: 713, column: 7)
!2591 = distinct !DILexicalBlock(scope: !2588, file: !130, line: 713, column: 7)
!2592 = !DILocation(line: 713, column: 7, scope: !2591)
!2593 = !DILocation(line: 713, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !130, line: 713, column: 7)
!2595 = distinct !DILexicalBlock(scope: !2588, file: !130, line: 713, column: 7)
!2596 = !DILocation(line: 713, column: 7, scope: !2595)
!2597 = !DILocation(line: 714, column: 7, scope: !1990)
!2598 = !DILocation(line: 714, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !130, line: 714, column: 7)
!2600 = distinct !DILexicalBlock(scope: !1990, file: !130, line: 714, column: 7)
!2601 = !DILocation(line: 714, column: 7, scope: !2600)
!2602 = !DILocation(line: 716, column: 13, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !1990, file: !130, line: 716, column: 11)
!2604 = !DILocation(line: 716, column: 11, scope: !1990)
!2605 = !DILocation(line: 717, column: 38, scope: !2603)
!2606 = !DILocation(line: 717, column: 9, scope: !2603)
!2607 = !DILocation(line: 718, column: 5, scope: !1990)
!2608 = !DILocation(line: 395, column: 82, scope: !1979)
!2609 = !DILocation(line: 395, column: 3, scope: !1979)
!2610 = distinct !{!2610, !1988, !2611, !409}
!2611 = !DILocation(line: 718, column: 5, scope: !1975)
!2612 = !DILocation(line: 720, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !1837, file: !130, line: 720, column: 7)
!2614 = !DILocation(line: 720, column: 11, scope: !2613)
!2615 = !DILocation(line: 720, column: 16, scope: !2613)
!2616 = !DILocation(line: 720, column: 19, scope: !2613)
!2617 = !DILocation(line: 720, column: 33, scope: !2613)
!2618 = !DILocation(line: 721, column: 7, scope: !2613)
!2619 = !DILocation(line: 721, column: 10, scope: !2613)
!2620 = !DILocation(line: 720, column: 7, scope: !1837)
!2621 = !DILocation(line: 722, column: 5, scope: !2613)
!2622 = !DILocation(line: 728, column: 7, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !1837, file: !130, line: 728, column: 7)
!2624 = !DILocation(line: 728, column: 21, scope: !2623)
!2625 = !DILocation(line: 728, column: 51, scope: !2623)
!2626 = !DILocation(line: 728, column: 56, scope: !2623)
!2627 = !DILocation(line: 729, column: 7, scope: !2623)
!2628 = !DILocation(line: 729, column: 10, scope: !2623)
!2629 = !DILocation(line: 728, column: 7, scope: !1837)
!2630 = !DILocation(line: 731, column: 11, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !130, line: 731, column: 11)
!2632 = distinct !DILexicalBlock(scope: !2623, file: !130, line: 730, column: 5)
!2633 = !DILocation(line: 731, column: 11, scope: !2632)
!2634 = !DILocation(line: 732, column: 42, scope: !2631)
!2635 = !DILocation(line: 732, column: 50, scope: !2631)
!2636 = !DILocation(line: 732, column: 67, scope: !2631)
!2637 = !DILocation(line: 732, column: 72, scope: !2631)
!2638 = !DILocation(line: 734, column: 42, scope: !2631)
!2639 = !DILocation(line: 734, column: 49, scope: !2631)
!2640 = !DILocation(line: 735, column: 42, scope: !2631)
!2641 = !DILocation(line: 735, column: 54, scope: !2631)
!2642 = !DILocation(line: 732, column: 16, scope: !2631)
!2643 = !DILocation(line: 732, column: 9, scope: !2631)
!2644 = !DILocation(line: 736, column: 18, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2631, file: !130, line: 736, column: 16)
!2646 = !DILocation(line: 736, column: 29, scope: !2645)
!2647 = !DILocation(line: 736, column: 32, scope: !2645)
!2648 = !DILocation(line: 736, column: 16, scope: !2631)
!2649 = !DILocation(line: 739, column: 24, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2645, file: !130, line: 737, column: 9)
!2651 = !DILocation(line: 739, column: 22, scope: !2650)
!2652 = !DILocation(line: 740, column: 15, scope: !2650)
!2653 = !DILocation(line: 741, column: 11, scope: !2650)
!2654 = !DILocation(line: 743, column: 5, scope: !2632)
!2655 = !DILocation(line: 745, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !1837, file: !130, line: 745, column: 7)
!2657 = !DILocation(line: 745, column: 20, scope: !2656)
!2658 = !DILocation(line: 745, column: 24, scope: !2656)
!2659 = !DILocation(line: 745, column: 7, scope: !1837)
!2660 = !DILocation(line: 746, column: 5, scope: !2656)
!2661 = !DILocation(line: 746, column: 13, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !130, line: 746, column: 5)
!2663 = distinct !DILexicalBlock(scope: !2656, file: !130, line: 746, column: 5)
!2664 = !DILocation(line: 746, column: 12, scope: !2662)
!2665 = !DILocation(line: 746, column: 5, scope: !2663)
!2666 = !DILocation(line: 747, column: 7, scope: !2662)
!2667 = !DILocation(line: 747, column: 7, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !130, line: 747, column: 7)
!2669 = distinct !DILexicalBlock(scope: !2662, file: !130, line: 747, column: 7)
!2670 = !DILocation(line: 747, column: 7, scope: !2669)
!2671 = !DILocation(line: 746, column: 39, scope: !2662)
!2672 = !DILocation(line: 746, column: 5, scope: !2662)
!2673 = distinct !{!2673, !2665, !2674, !409}
!2674 = !DILocation(line: 747, column: 7, scope: !2663)
!2675 = !DILocation(line: 749, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !1837, file: !130, line: 749, column: 7)
!2677 = !DILocation(line: 749, column: 13, scope: !2676)
!2678 = !DILocation(line: 749, column: 11, scope: !2676)
!2679 = !DILocation(line: 749, column: 7, scope: !1837)
!2680 = !DILocation(line: 750, column: 5, scope: !2676)
!2681 = !DILocation(line: 750, column: 12, scope: !2676)
!2682 = !DILocation(line: 750, column: 17, scope: !2676)
!2683 = !DILocation(line: 751, column: 10, scope: !1837)
!2684 = !DILocation(line: 751, column: 3, scope: !1837)
!2685 = !DILabel(scope: !1837, name: "force_outer_quoting_style", file: !130, line: 753)
!2686 = !DILocation(line: 753, column: 2, scope: !1837)
!2687 = !DILocation(line: 756, column: 7, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !1837, file: !130, line: 756, column: 7)
!2689 = !DILocation(line: 756, column: 21, scope: !2688)
!2690 = !DILocation(line: 756, column: 51, scope: !2688)
!2691 = !DILocation(line: 756, column: 54, scope: !2688)
!2692 = !DILocation(line: 756, column: 7, scope: !1837)
!2693 = !DILocation(line: 757, column: 19, scope: !2688)
!2694 = !DILocation(line: 757, column: 5, scope: !2688)
!2695 = !DILocation(line: 758, column: 36, scope: !1837)
!2696 = !DILocation(line: 758, column: 44, scope: !1837)
!2697 = !DILocation(line: 758, column: 56, scope: !1837)
!2698 = !DILocation(line: 758, column: 61, scope: !1837)
!2699 = !DILocation(line: 759, column: 36, scope: !1837)
!2700 = !DILocation(line: 760, column: 36, scope: !1837)
!2701 = !DILocation(line: 760, column: 42, scope: !1837)
!2702 = !DILocation(line: 761, column: 36, scope: !1837)
!2703 = !DILocation(line: 761, column: 48, scope: !1837)
!2704 = !DILocation(line: 758, column: 10, scope: !1837)
!2705 = !DILocation(line: 758, column: 3, scope: !1837)
!2706 = !DILocation(line: 762, column: 1, scope: !1837)
!2707 = !DILocalVariable(name: "msgid", arg: 1, scope: !169, file: !130, line: 197, type: !48)
!2708 = !DILocation(line: 197, column: 28, scope: !169)
!2709 = !DILocalVariable(name: "s", arg: 2, scope: !169, file: !130, line: 197, type: !5)
!2710 = !DILocation(line: 197, column: 54, scope: !169)
!2711 = !DILocalVariable(name: "translation", scope: !169, file: !130, line: 199, type: !48)
!2712 = !DILocation(line: 199, column: 15, scope: !169)
!2713 = !DILocation(line: 199, column: 29, scope: !169)
!2714 = !DILocation(line: 201, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !169, file: !130, line: 201, column: 7)
!2716 = !DILocation(line: 201, column: 22, scope: !2715)
!2717 = !DILocation(line: 201, column: 19, scope: !2715)
!2718 = !DILocation(line: 201, column: 7, scope: !169)
!2719 = !DILocation(line: 202, column: 12, scope: !2715)
!2720 = !DILocation(line: 202, column: 5, scope: !2715)
!2721 = !DILocalVariable(name: "w", scope: !169, file: !130, line: 229, type: !1625)
!2722 = !DILocation(line: 229, column: 12, scope: !169)
!2723 = !DILocalVariable(name: "mbs", scope: !169, file: !130, line: 230, type: !2304)
!2724 = !DILocation(line: 230, column: 13, scope: !169)
!2725 = !DILocation(line: 230, column: 18, scope: !169)
!2726 = !DILocation(line: 231, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !169, file: !130, line: 231, column: 7)
!2728 = !DILocation(line: 231, column: 40, scope: !2727)
!2729 = !DILocation(line: 231, column: 45, scope: !2727)
!2730 = !DILocation(line: 231, column: 48, scope: !2727)
!2731 = !DILocation(line: 231, column: 50, scope: !2727)
!2732 = !DILocation(line: 231, column: 7, scope: !169)
!2733 = !DILocation(line: 232, column: 18, scope: !2727)
!2734 = !DILocation(line: 232, column: 27, scope: !2727)
!2735 = !DILocation(line: 232, column: 12, scope: !2727)
!2736 = !DILocation(line: 232, column: 5, scope: !2727)
!2737 = !DILocation(line: 234, column: 11, scope: !169)
!2738 = !DILocation(line: 234, column: 13, scope: !169)
!2739 = !DILocation(line: 234, column: 3, scope: !169)
!2740 = !DILocation(line: 235, column: 1, scope: !169)
!2741 = distinct !DISubprogram(name: "quotearg_alloc", scope: !130, file: !130, line: 788, type: !2742, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!36, !48, !138, !1677}
!2744 = !DILocalVariable(name: "arg", arg: 1, scope: !2741, file: !130, line: 788, type: !48)
!2745 = !DILocation(line: 788, column: 29, scope: !2741)
!2746 = !DILocalVariable(name: "argsize", arg: 2, scope: !2741, file: !130, line: 788, type: !138)
!2747 = !DILocation(line: 788, column: 41, scope: !2741)
!2748 = !DILocalVariable(name: "o", arg: 3, scope: !2741, file: !130, line: 789, type: !1677)
!2749 = !DILocation(line: 789, column: 47, scope: !2741)
!2750 = !DILocation(line: 791, column: 30, scope: !2741)
!2751 = !DILocation(line: 791, column: 35, scope: !2741)
!2752 = !DILocation(line: 791, column: 50, scope: !2741)
!2753 = !DILocation(line: 791, column: 10, scope: !2741)
!2754 = !DILocation(line: 791, column: 3, scope: !2741)
!2755 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !130, file: !130, line: 801, type: !2756, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!36, !48, !138, !255, !1677}
!2758 = !DILocalVariable(name: "arg", arg: 1, scope: !2755, file: !130, line: 801, type: !48)
!2759 = !DILocation(line: 801, column: 33, scope: !2755)
!2760 = !DILocalVariable(name: "argsize", arg: 2, scope: !2755, file: !130, line: 801, type: !138)
!2761 = !DILocation(line: 801, column: 45, scope: !2755)
!2762 = !DILocalVariable(name: "size", arg: 3, scope: !2755, file: !130, line: 801, type: !255)
!2763 = !DILocation(line: 801, column: 62, scope: !2755)
!2764 = !DILocalVariable(name: "o", arg: 4, scope: !2755, file: !130, line: 802, type: !1677)
!2765 = !DILocation(line: 802, column: 51, scope: !2755)
!2766 = !DILocalVariable(name: "p", scope: !2755, file: !130, line: 804, type: !1677)
!2767 = !DILocation(line: 804, column: 33, scope: !2755)
!2768 = !DILocation(line: 804, column: 37, scope: !2755)
!2769 = !DILocation(line: 804, column: 41, scope: !2755)
!2770 = !DILocalVariable(name: "saved_errno", scope: !2755, file: !130, line: 805, type: !39)
!2771 = !DILocation(line: 805, column: 7, scope: !2755)
!2772 = !DILocation(line: 805, column: 21, scope: !2755)
!2773 = !DILocalVariable(name: "flags", scope: !2755, file: !130, line: 807, type: !39)
!2774 = !DILocation(line: 807, column: 7, scope: !2755)
!2775 = !DILocation(line: 807, column: 15, scope: !2755)
!2776 = !DILocation(line: 807, column: 18, scope: !2755)
!2777 = !DILocation(line: 807, column: 27, scope: !2755)
!2778 = !DILocation(line: 807, column: 24, scope: !2755)
!2779 = !DILocalVariable(name: "bufsize", scope: !2755, file: !130, line: 808, type: !138)
!2780 = !DILocation(line: 808, column: 10, scope: !2755)
!2781 = !DILocation(line: 808, column: 55, scope: !2755)
!2782 = !DILocation(line: 808, column: 60, scope: !2755)
!2783 = !DILocation(line: 808, column: 69, scope: !2755)
!2784 = !DILocation(line: 808, column: 72, scope: !2755)
!2785 = !DILocation(line: 809, column: 46, scope: !2755)
!2786 = !DILocation(line: 809, column: 53, scope: !2755)
!2787 = !DILocation(line: 809, column: 56, scope: !2755)
!2788 = !DILocation(line: 810, column: 46, scope: !2755)
!2789 = !DILocation(line: 810, column: 49, scope: !2755)
!2790 = !DILocation(line: 811, column: 46, scope: !2755)
!2791 = !DILocation(line: 811, column: 49, scope: !2755)
!2792 = !DILocation(line: 808, column: 20, scope: !2755)
!2793 = !DILocation(line: 811, column: 62, scope: !2755)
!2794 = !DILocalVariable(name: "buf", scope: !2755, file: !130, line: 812, type: !36)
!2795 = !DILocation(line: 812, column: 9, scope: !2755)
!2796 = !DILocation(line: 812, column: 27, scope: !2755)
!2797 = !DILocation(line: 812, column: 15, scope: !2755)
!2798 = !DILocation(line: 813, column: 29, scope: !2755)
!2799 = !DILocation(line: 813, column: 34, scope: !2755)
!2800 = !DILocation(line: 813, column: 43, scope: !2755)
!2801 = !DILocation(line: 813, column: 48, scope: !2755)
!2802 = !DILocation(line: 813, column: 57, scope: !2755)
!2803 = !DILocation(line: 813, column: 60, scope: !2755)
!2804 = !DILocation(line: 813, column: 67, scope: !2755)
!2805 = !DILocation(line: 814, column: 29, scope: !2755)
!2806 = !DILocation(line: 814, column: 32, scope: !2755)
!2807 = !DILocation(line: 815, column: 29, scope: !2755)
!2808 = !DILocation(line: 815, column: 32, scope: !2755)
!2809 = !DILocation(line: 815, column: 44, scope: !2755)
!2810 = !DILocation(line: 815, column: 47, scope: !2755)
!2811 = !DILocation(line: 813, column: 3, scope: !2755)
!2812 = !DILocation(line: 816, column: 11, scope: !2755)
!2813 = !DILocation(line: 816, column: 3, scope: !2755)
!2814 = !DILocation(line: 816, column: 9, scope: !2755)
!2815 = !DILocation(line: 817, column: 7, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2755, file: !130, line: 817, column: 7)
!2817 = !DILocation(line: 817, column: 7, scope: !2755)
!2818 = !DILocation(line: 818, column: 13, scope: !2816)
!2819 = !DILocation(line: 818, column: 21, scope: !2816)
!2820 = !DILocation(line: 818, column: 6, scope: !2816)
!2821 = !DILocation(line: 818, column: 11, scope: !2816)
!2822 = !DILocation(line: 818, column: 5, scope: !2816)
!2823 = !DILocation(line: 819, column: 10, scope: !2755)
!2824 = !DILocation(line: 819, column: 3, scope: !2755)
!2825 = distinct !DISubprogram(name: "quotearg_free", scope: !130, file: !130, line: 837, type: !108, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!2826 = !DILocalVariable(name: "sv", scope: !2825, file: !130, line: 839, type: !177)
!2827 = !DILocation(line: 839, column: 19, scope: !2825)
!2828 = !DILocation(line: 839, column: 24, scope: !2825)
!2829 = !DILocalVariable(name: "i", scope: !2830, file: !130, line: 840, type: !39)
!2830 = distinct !DILexicalBlock(scope: !2825, file: !130, line: 840, column: 3)
!2831 = !DILocation(line: 840, column: 12, scope: !2830)
!2832 = !DILocation(line: 840, column: 8, scope: !2830)
!2833 = !DILocation(line: 840, column: 19, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2830, file: !130, line: 840, column: 3)
!2835 = !DILocation(line: 840, column: 23, scope: !2834)
!2836 = !DILocation(line: 840, column: 21, scope: !2834)
!2837 = !DILocation(line: 840, column: 3, scope: !2830)
!2838 = !DILocation(line: 841, column: 11, scope: !2834)
!2839 = !DILocation(line: 841, column: 14, scope: !2834)
!2840 = !DILocation(line: 841, column: 17, scope: !2834)
!2841 = !DILocation(line: 841, column: 5, scope: !2834)
!2842 = !DILocation(line: 840, column: 32, scope: !2834)
!2843 = !DILocation(line: 840, column: 3, scope: !2834)
!2844 = distinct !{!2844, !2837, !2845, !409}
!2845 = !DILocation(line: 841, column: 20, scope: !2830)
!2846 = !DILocation(line: 842, column: 7, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2825, file: !130, line: 842, column: 7)
!2848 = !DILocation(line: 842, column: 13, scope: !2847)
!2849 = !DILocation(line: 842, column: 17, scope: !2847)
!2850 = !DILocation(line: 842, column: 7, scope: !2825)
!2851 = !DILocation(line: 844, column: 13, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2847, file: !130, line: 843, column: 5)
!2853 = !DILocation(line: 844, column: 19, scope: !2852)
!2854 = !DILocation(line: 844, column: 7, scope: !2852)
!2855 = !DILocation(line: 845, column: 21, scope: !2852)
!2856 = !DILocation(line: 846, column: 20, scope: !2852)
!2857 = !DILocation(line: 847, column: 5, scope: !2852)
!2858 = !DILocation(line: 848, column: 7, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2825, file: !130, line: 848, column: 7)
!2860 = !DILocation(line: 848, column: 10, scope: !2859)
!2861 = !DILocation(line: 848, column: 7, scope: !2825)
!2862 = !DILocation(line: 850, column: 13, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2859, file: !130, line: 849, column: 5)
!2864 = !DILocation(line: 850, column: 7, scope: !2863)
!2865 = !DILocation(line: 851, column: 15, scope: !2863)
!2866 = !DILocation(line: 852, column: 5, scope: !2863)
!2867 = !DILocation(line: 853, column: 10, scope: !2825)
!2868 = !DILocation(line: 854, column: 1, scope: !2825)
!2869 = distinct !DISubprogram(name: "quotearg_n", scope: !130, file: !130, line: 919, type: !2870, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!36, !39, !48}
!2872 = !DILocalVariable(name: "n", arg: 1, scope: !2869, file: !130, line: 919, type: !39)
!2873 = !DILocation(line: 919, column: 17, scope: !2869)
!2874 = !DILocalVariable(name: "arg", arg: 2, scope: !2869, file: !130, line: 919, type: !48)
!2875 = !DILocation(line: 919, column: 32, scope: !2869)
!2876 = !DILocation(line: 921, column: 30, scope: !2869)
!2877 = !DILocation(line: 921, column: 33, scope: !2869)
!2878 = !DILocation(line: 921, column: 10, scope: !2869)
!2879 = !DILocation(line: 921, column: 3, scope: !2869)
!2880 = distinct !DISubprogram(name: "quotearg_n_options", scope: !130, file: !130, line: 866, type: !2881, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !50)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!36, !39, !48, !138, !1677}
!2883 = !DILocalVariable(name: "n", arg: 1, scope: !2880, file: !130, line: 866, type: !39)
!2884 = !DILocation(line: 866, column: 25, scope: !2880)
!2885 = !DILocalVariable(name: "arg", arg: 2, scope: !2880, file: !130, line: 866, type: !48)
!2886 = !DILocation(line: 866, column: 40, scope: !2880)
!2887 = !DILocalVariable(name: "argsize", arg: 3, scope: !2880, file: !130, line: 866, type: !138)
!2888 = !DILocation(line: 866, column: 52, scope: !2880)
!2889 = !DILocalVariable(name: "options", arg: 4, scope: !2880, file: !130, line: 867, type: !1677)
!2890 = !DILocation(line: 867, column: 51, scope: !2880)
!2891 = !DILocalVariable(name: "saved_errno", scope: !2880, file: !130, line: 869, type: !39)
!2892 = !DILocation(line: 869, column: 7, scope: !2880)
!2893 = !DILocation(line: 869, column: 21, scope: !2880)
!2894 = !DILocalVariable(name: "sv", scope: !2880, file: !130, line: 871, type: !177)
!2895 = !DILocation(line: 871, column: 19, scope: !2880)
!2896 = !DILocation(line: 871, column: 24, scope: !2880)
!2897 = !DILocalVariable(name: "nslots_max", scope: !2880, file: !130, line: 873, type: !39)
!2898 = !DILocation(line: 873, column: 7, scope: !2880)
!2899 = !DILocation(line: 874, column: 15, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2880, file: !130, line: 874, column: 7)
!2901 = !DILocation(line: 874, column: 12, scope: !2900)
!2902 = !DILocation(line: 874, column: 17, scope: !2900)
!2903 = !DILocation(line: 874, column: 20, scope: !2900)
!2904 = !DILocation(line: 874, column: 24, scope: !2900)
!2905 = !DILocation(line: 874, column: 22, scope: !2900)
!2906 = !DILocation(line: 874, column: 7, scope: !2880)
!2907 = !DILocation(line: 875, column: 5, scope: !2900)
!2908 = !DILocation(line: 877, column: 7, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2880, file: !130, line: 877, column: 7)
!2910 = !DILocation(line: 877, column: 17, scope: !2909)
!2911 = !DILocation(line: 877, column: 14, scope: !2909)
!2912 = !DILocation(line: 877, column: 7, scope: !2880)
!2913 = !DILocalVariable(name: "preallocated", scope: !2914, file: !130, line: 879, type: !75)
!2914 = distinct !DILexicalBlock(scope: !2909, file: !130, line: 878, column: 5)
!2915 = !DILocation(line: 879, column: 12, scope: !2914)
!2916 = !DILocation(line: 879, column: 28, scope: !2914)
!2917 = !DILocation(line: 879, column: 31, scope: !2914)
!2918 = !DILocalVariable(name: "new_nslots", scope: !2914, file: !130, line: 880, type: !263)
!2919 = !DILocation(line: 880, column: 13, scope: !2914)
!2920 = !DILocation(line: 880, column: 26, scope: !2914)
!2921 = !DILocation(line: 882, column: 31, scope: !2914)
!2922 = !DILocation(line: 882, column: 53, scope: !2914)
!2923 = !DILocation(line: 883, column: 31, scope: !2914)
!2924 = !DILocation(line: 883, column: 35, scope: !2914)
!2925 = !DILocation(line: 883, column: 33, scope: !2914)
!2926 = !DILocation(line: 883, column: 42, scope: !2914)
!2927 = !DILocation(line: 883, column: 47, scope: !2914)
!2928 = !DILocation(line: 882, column: 22, scope: !2914)
!2929 = !DILocation(line: 882, column: 20, scope: !2914)
!2930 = !DILocation(line: 882, column: 15, scope: !2914)
!2931 = !DILocation(line: 884, column: 11, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2914, file: !130, line: 884, column: 11)
!2933 = !DILocation(line: 884, column: 11, scope: !2914)
!2934 = !DILocation(line: 885, column: 10, scope: !2932)
!2935 = !DILocation(line: 885, column: 15, scope: !2932)
!2936 = !DILocation(line: 885, column: 9, scope: !2932)
!2937 = !DILocation(line: 886, column: 15, scope: !2914)
!2938 = !DILocation(line: 886, column: 20, scope: !2914)
!2939 = !DILocation(line: 886, column: 18, scope: !2914)
!2940 = !DILocation(line: 886, column: 7, scope: !2914)
!2941 = !DILocation(line: 886, column: 32, scope: !2914)
!2942 = !DILocation(line: 886, column: 45, scope: !2914)
!2943 = !DILocation(line: 886, column: 43, scope: !2914)
!2944 = !DILocation(line: 886, column: 53, scope: !2914)
!2945 = !DILocation(line: 887, column: 16, scope: !2914)
!2946 = !DILocation(line: 887, column: 14, scope: !2914)
!2947 = !DILocation(line: 888, column: 5, scope: !2914)
!2948 = !DILocalVariable(name: "size", scope: !2949, file: !130, line: 891, type: !138)
!2949 = distinct !DILexicalBlock(scope: !2880, file: !130, line: 890, column: 3)
!2950 = !DILocation(line: 891, column: 12, scope: !2949)
!2951 = !DILocation(line: 891, column: 19, scope: !2949)
!2952 = !DILocation(line: 891, column: 22, scope: !2949)
!2953 = !DILocation(line: 891, column: 25, scope: !2949)
!2954 = !DILocalVariable(name: "val", scope: !2949, file: !130, line: 892, type: !36)
!2955 = !DILocation(line: 892, column: 11, scope: !2949)
!2956 = !DILocation(line: 892, column: 17, scope: !2949)
!2957 = !DILocation(line: 892, column: 20, scope: !2949)
!2958 = !DILocation(line: 892, column: 23, scope: !2949)
!2959 = !DILocalVariable(name: "flags", scope: !2949, file: !130, line: 894, type: !39)
!2960 = !DILocation(line: 894, column: 9, scope: !2949)
!2961 = !DILocation(line: 894, column: 17, scope: !2949)
!2962 = !DILocation(line: 894, column: 26, scope: !2949)
!2963 = !DILocation(line: 894, column: 32, scope: !2949)
!2964 = !DILocalVariable(name: "qsize", scope: !2949, file: !130, line: 895, type: !138)
!2965 = !DILocation(line: 895, column: 12, scope: !2949)
!2966 = !DILocation(line: 895, column: 46, scope: !2949)
!2967 = !DILocation(line: 895, column: 51, scope: !2949)
!2968 = !DILocation(line: 895, column: 57, scope: !2949)
!2969 = !DILocation(line: 895, column: 62, scope: !2949)
!2970 = !DILocation(line: 896, column: 46, scope: !2949)
!2971 = !DILocation(line: 896, column: 55, scope: !2949)
!2972 = !DILocation(line: 896, column: 62, scope: !2949)
!2973 = !DILocation(line: 897, column: 46, scope: !2949)
!2974 = !DILocation(line: 897, column: 55, scope: !2949)
!2975 = !DILocation(line: 898, column: 46, scope: !2949)
!2976 = !DILocation(line: 898, column: 55, scope: !2949)
!2977 = !DILocation(line: 899, column: 46, scope: !2949)
!2978 = !DILocation(line: 899, column: 55, scope: !2949)
!2979 = !DILocation(line: 895, column: 20, scope: !2949)
!2980 = !DILocation(line: 901, column: 9, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2949, file: !130, line: 901, column: 9)
!2982 = !DILocation(line: 901, column: 17, scope: !2981)
!2983 = !DILocation(line: 901, column: 14, scope: !2981)
!2984 = !DILocation(line: 901, column: 9, scope: !2949)
!2985 = !DILocation(line: 903, column: 29, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !130, line: 902, column: 7)
!2987 = !DILocation(line: 903, column: 35, scope: !2986)
!2988 = !DILocation(line: 903, column: 27, scope: !2986)
!2989 = !DILocation(line: 903, column: 9, scope: !2986)
!2990 = !DILocation(line: 903, column: 12, scope: !2986)
!2991 = !DILocation(line: 903, column: 15, scope: !2986)
!2992 = !DILocation(line: 903, column: 20, scope: !2986)
!2993 = !DILocation(line: 904, column: 13, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2986, file: !130, line: 904, column: 13)
!2995 = !DILocation(line: 904, column: 17, scope: !2994)
!2996 = !DILocation(line: 904, column: 13, scope: !2986)
!2997 = !DILocation(line: 905, column: 17, scope: !2994)
!2998 = !DILocation(line: 905, column: 11, scope: !2994)
!2999 = !DILocation(line: 906, column: 39, scope: !2986)
!3000 = !DILocation(line: 906, column: 27, scope: !2986)
!3001 = !DILocation(line: 906, column: 25, scope: !2986)
!3002 = !DILocation(line: 906, column: 9, scope: !2986)
!3003 = !DILocation(line: 906, column: 12, scope: !2986)
!3004 = !DILocation(line: 906, column: 15, scope: !2986)
!3005 = !DILocation(line: 906, column: 19, scope: !2986)
!3006 = !DILocation(line: 907, column: 35, scope: !2986)
!3007 = !DILocation(line: 907, column: 40, scope: !2986)
!3008 = !DILocation(line: 907, column: 46, scope: !2986)
!3009 = !DILocation(line: 907, column: 51, scope: !2986)
!3010 = !DILocation(line: 907, column: 60, scope: !2986)
!3011 = !DILocation(line: 907, column: 69, scope: !2986)
!3012 = !DILocation(line: 908, column: 35, scope: !2986)
!3013 = !DILocation(line: 908, column: 42, scope: !2986)
!3014 = !DILocation(line: 908, column: 51, scope: !2986)
!3015 = !DILocation(line: 909, column: 35, scope: !2986)
!3016 = !DILocation(line: 909, column: 44, scope: !2986)
!3017 = !DILocation(line: 910, column: 35, scope: !2986)
!3018 = !DILocation(line: 910, column: 44, scope: !2986)
!3019 = !DILocation(line: 907, column: 9, scope: !2986)
!3020 = !DILocation(line: 911, column: 7, scope: !2986)
!3021 = !DILocation(line: 913, column: 13, scope: !2949)
!3022 = !DILocation(line: 913, column: 5, scope: !2949)
!3023 = !DILocation(line: 913, column: 11, scope: !2949)
!3024 = !DILocation(line: 914, column: 12, scope: !2949)
!3025 = !DILocation(line: 914, column: 5, scope: !2949)
!3026 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !130, file: !130, line: 925, type: !3027, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!36, !39, !48, !138}
!3029 = !DILocalVariable(name: "n", arg: 1, scope: !3026, file: !130, line: 925, type: !39)
!3030 = !DILocation(line: 925, column: 21, scope: !3026)
!3031 = !DILocalVariable(name: "arg", arg: 2, scope: !3026, file: !130, line: 925, type: !48)
!3032 = !DILocation(line: 925, column: 36, scope: !3026)
!3033 = !DILocalVariable(name: "argsize", arg: 3, scope: !3026, file: !130, line: 925, type: !138)
!3034 = !DILocation(line: 925, column: 48, scope: !3026)
!3035 = !DILocation(line: 927, column: 30, scope: !3026)
!3036 = !DILocation(line: 927, column: 33, scope: !3026)
!3037 = !DILocation(line: 927, column: 38, scope: !3026)
!3038 = !DILocation(line: 927, column: 10, scope: !3026)
!3039 = !DILocation(line: 927, column: 3, scope: !3026)
!3040 = distinct !DISubprogram(name: "quotearg", scope: !130, file: !130, line: 931, type: !3041, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!36, !48}
!3043 = !DILocalVariable(name: "arg", arg: 1, scope: !3040, file: !130, line: 931, type: !48)
!3044 = !DILocation(line: 931, column: 23, scope: !3040)
!3045 = !DILocation(line: 933, column: 25, scope: !3040)
!3046 = !DILocation(line: 933, column: 10, scope: !3040)
!3047 = !DILocation(line: 933, column: 3, scope: !3040)
!3048 = distinct !DISubprogram(name: "quotearg_mem", scope: !130, file: !130, line: 937, type: !3049, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!36, !48, !138}
!3051 = !DILocalVariable(name: "arg", arg: 1, scope: !3048, file: !130, line: 937, type: !48)
!3052 = !DILocation(line: 937, column: 27, scope: !3048)
!3053 = !DILocalVariable(name: "argsize", arg: 2, scope: !3048, file: !130, line: 937, type: !138)
!3054 = !DILocation(line: 937, column: 39, scope: !3048)
!3055 = !DILocation(line: 939, column: 29, scope: !3048)
!3056 = !DILocation(line: 939, column: 34, scope: !3048)
!3057 = !DILocation(line: 939, column: 10, scope: !3048)
!3058 = !DILocation(line: 939, column: 3, scope: !3048)
!3059 = distinct !DISubprogram(name: "quotearg_n_style", scope: !130, file: !130, line: 943, type: !3060, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!36, !39, !5, !48}
!3062 = !DILocalVariable(name: "n", arg: 1, scope: !3059, file: !130, line: 943, type: !39)
!3063 = !DILocation(line: 943, column: 23, scope: !3059)
!3064 = !DILocalVariable(name: "s", arg: 2, scope: !3059, file: !130, line: 943, type: !5)
!3065 = !DILocation(line: 943, column: 45, scope: !3059)
!3066 = !DILocalVariable(name: "arg", arg: 3, scope: !3059, file: !130, line: 943, type: !48)
!3067 = !DILocation(line: 943, column: 60, scope: !3059)
!3068 = !DILocalVariable(name: "o", scope: !3059, file: !130, line: 945, type: !1678)
!3069 = !DILocation(line: 945, column: 32, scope: !3059)
!3070 = !DILocation(line: 945, column: 64, scope: !3059)
!3071 = !DILocation(line: 945, column: 36, scope: !3059)
!3072 = !DILocation(line: 946, column: 30, scope: !3059)
!3073 = !DILocation(line: 946, column: 33, scope: !3059)
!3074 = !DILocation(line: 946, column: 10, scope: !3059)
!3075 = !DILocation(line: 946, column: 3, scope: !3059)
!3076 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !130, file: !130, line: 183, type: !3077, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!150, !5}
!3079 = !DILocalVariable(name: "style", arg: 1, scope: !3076, file: !130, line: 183, type: !5)
!3080 = !DILocation(line: 183, column: 48, scope: !3076)
!3081 = !DILocalVariable(name: "o", scope: !3076, file: !130, line: 185, type: !150)
!3082 = !DILocation(line: 185, column: 26, scope: !3076)
!3083 = !DILocation(line: 186, column: 7, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3076, file: !130, line: 186, column: 7)
!3085 = !DILocation(line: 186, column: 13, scope: !3084)
!3086 = !DILocation(line: 186, column: 7, scope: !3076)
!3087 = !DILocation(line: 187, column: 5, scope: !3084)
!3088 = !DILocation(line: 188, column: 13, scope: !3076)
!3089 = !DILocation(line: 188, column: 5, scope: !3076)
!3090 = !DILocation(line: 188, column: 11, scope: !3076)
!3091 = !DILocation(line: 189, column: 3, scope: !3076)
!3092 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !130, file: !130, line: 950, type: !3093, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!36, !39, !5, !48, !138}
!3095 = !DILocalVariable(name: "n", arg: 1, scope: !3092, file: !130, line: 950, type: !39)
!3096 = !DILocation(line: 950, column: 27, scope: !3092)
!3097 = !DILocalVariable(name: "s", arg: 2, scope: !3092, file: !130, line: 950, type: !5)
!3098 = !DILocation(line: 950, column: 49, scope: !3092)
!3099 = !DILocalVariable(name: "arg", arg: 3, scope: !3092, file: !130, line: 951, type: !48)
!3100 = !DILocation(line: 951, column: 35, scope: !3092)
!3101 = !DILocalVariable(name: "argsize", arg: 4, scope: !3092, file: !130, line: 951, type: !138)
!3102 = !DILocation(line: 951, column: 47, scope: !3092)
!3103 = !DILocalVariable(name: "o", scope: !3092, file: !130, line: 953, type: !1678)
!3104 = !DILocation(line: 953, column: 32, scope: !3092)
!3105 = !DILocation(line: 953, column: 64, scope: !3092)
!3106 = !DILocation(line: 953, column: 36, scope: !3092)
!3107 = !DILocation(line: 954, column: 30, scope: !3092)
!3108 = !DILocation(line: 954, column: 33, scope: !3092)
!3109 = !DILocation(line: 954, column: 38, scope: !3092)
!3110 = !DILocation(line: 954, column: 10, scope: !3092)
!3111 = !DILocation(line: 954, column: 3, scope: !3092)
!3112 = distinct !DISubprogram(name: "quotearg_style", scope: !130, file: !130, line: 958, type: !3113, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!36, !5, !48}
!3115 = !DILocalVariable(name: "s", arg: 1, scope: !3112, file: !130, line: 958, type: !5)
!3116 = !DILocation(line: 958, column: 36, scope: !3112)
!3117 = !DILocalVariable(name: "arg", arg: 2, scope: !3112, file: !130, line: 958, type: !48)
!3118 = !DILocation(line: 958, column: 51, scope: !3112)
!3119 = !DILocation(line: 960, column: 31, scope: !3112)
!3120 = !DILocation(line: 960, column: 34, scope: !3112)
!3121 = !DILocation(line: 960, column: 10, scope: !3112)
!3122 = !DILocation(line: 960, column: 3, scope: !3112)
!3123 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !130, file: !130, line: 964, type: !3124, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!36, !5, !48, !138}
!3126 = !DILocalVariable(name: "s", arg: 1, scope: !3123, file: !130, line: 964, type: !5)
!3127 = !DILocation(line: 964, column: 40, scope: !3123)
!3128 = !DILocalVariable(name: "arg", arg: 2, scope: !3123, file: !130, line: 964, type: !48)
!3129 = !DILocation(line: 964, column: 55, scope: !3123)
!3130 = !DILocalVariable(name: "argsize", arg: 3, scope: !3123, file: !130, line: 964, type: !138)
!3131 = !DILocation(line: 964, column: 67, scope: !3123)
!3132 = !DILocation(line: 966, column: 35, scope: !3123)
!3133 = !DILocation(line: 966, column: 38, scope: !3123)
!3134 = !DILocation(line: 966, column: 43, scope: !3123)
!3135 = !DILocation(line: 966, column: 10, scope: !3123)
!3136 = !DILocation(line: 966, column: 3, scope: !3123)
!3137 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !130, file: !130, line: 970, type: !3138, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!36, !48, !138, !37}
!3140 = !DILocalVariable(name: "arg", arg: 1, scope: !3137, file: !130, line: 970, type: !48)
!3141 = !DILocation(line: 970, column: 32, scope: !3137)
!3142 = !DILocalVariable(name: "argsize", arg: 2, scope: !3137, file: !130, line: 970, type: !138)
!3143 = !DILocation(line: 970, column: 44, scope: !3137)
!3144 = !DILocalVariable(name: "ch", arg: 3, scope: !3137, file: !130, line: 970, type: !37)
!3145 = !DILocation(line: 970, column: 58, scope: !3137)
!3146 = !DILocalVariable(name: "options", scope: !3137, file: !130, line: 972, type: !150)
!3147 = !DILocation(line: 972, column: 26, scope: !3137)
!3148 = !DILocation(line: 973, column: 13, scope: !3137)
!3149 = !DILocation(line: 974, column: 31, scope: !3137)
!3150 = !DILocation(line: 974, column: 3, scope: !3137)
!3151 = !DILocation(line: 975, column: 33, scope: !3137)
!3152 = !DILocation(line: 975, column: 38, scope: !3137)
!3153 = !DILocation(line: 975, column: 10, scope: !3137)
!3154 = !DILocation(line: 975, column: 3, scope: !3137)
!3155 = distinct !DISubprogram(name: "quotearg_char", scope: !130, file: !130, line: 979, type: !3156, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!36, !48, !37}
!3158 = !DILocalVariable(name: "arg", arg: 1, scope: !3155, file: !130, line: 979, type: !48)
!3159 = !DILocation(line: 979, column: 28, scope: !3155)
!3160 = !DILocalVariable(name: "ch", arg: 2, scope: !3155, file: !130, line: 979, type: !37)
!3161 = !DILocation(line: 979, column: 38, scope: !3155)
!3162 = !DILocation(line: 981, column: 29, scope: !3155)
!3163 = !DILocation(line: 981, column: 44, scope: !3155)
!3164 = !DILocation(line: 981, column: 10, scope: !3155)
!3165 = !DILocation(line: 981, column: 3, scope: !3155)
!3166 = distinct !DISubprogram(name: "quotearg_colon", scope: !130, file: !130, line: 985, type: !3041, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3167 = !DILocalVariable(name: "arg", arg: 1, scope: !3166, file: !130, line: 985, type: !48)
!3168 = !DILocation(line: 985, column: 29, scope: !3166)
!3169 = !DILocation(line: 987, column: 25, scope: !3166)
!3170 = !DILocation(line: 987, column: 10, scope: !3166)
!3171 = !DILocation(line: 987, column: 3, scope: !3166)
!3172 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !130, file: !130, line: 991, type: !3049, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3173 = !DILocalVariable(name: "arg", arg: 1, scope: !3172, file: !130, line: 991, type: !48)
!3174 = !DILocation(line: 991, column: 33, scope: !3172)
!3175 = !DILocalVariable(name: "argsize", arg: 2, scope: !3172, file: !130, line: 991, type: !138)
!3176 = !DILocation(line: 991, column: 45, scope: !3172)
!3177 = !DILocation(line: 993, column: 29, scope: !3172)
!3178 = !DILocation(line: 993, column: 34, scope: !3172)
!3179 = !DILocation(line: 993, column: 10, scope: !3172)
!3180 = !DILocation(line: 993, column: 3, scope: !3172)
!3181 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !130, file: !130, line: 997, type: !3060, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3182 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !130, line: 997, type: !39)
!3183 = !DILocation(line: 997, column: 29, scope: !3181)
!3184 = !DILocalVariable(name: "s", arg: 2, scope: !3181, file: !130, line: 997, type: !5)
!3185 = !DILocation(line: 997, column: 51, scope: !3181)
!3186 = !DILocalVariable(name: "arg", arg: 3, scope: !3181, file: !130, line: 997, type: !48)
!3187 = !DILocation(line: 997, column: 66, scope: !3181)
!3188 = !DILocalVariable(name: "options", scope: !3181, file: !130, line: 999, type: !150)
!3189 = !DILocation(line: 999, column: 26, scope: !3181)
!3190 = !DILocation(line: 1000, column: 41, scope: !3181)
!3191 = !DILocation(line: 1000, column: 13, scope: !3181)
!3192 = !DILocation(line: 1001, column: 3, scope: !3181)
!3193 = !DILocation(line: 1002, column: 30, scope: !3181)
!3194 = !DILocation(line: 1002, column: 33, scope: !3181)
!3195 = !DILocation(line: 1002, column: 10, scope: !3181)
!3196 = !DILocation(line: 1002, column: 3, scope: !3181)
!3197 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !130, file: !130, line: 1006, type: !3198, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!36, !39, !48, !48, !48}
!3200 = !DILocalVariable(name: "n", arg: 1, scope: !3197, file: !130, line: 1006, type: !39)
!3201 = !DILocation(line: 1006, column: 24, scope: !3197)
!3202 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3197, file: !130, line: 1006, type: !48)
!3203 = !DILocation(line: 1006, column: 39, scope: !3197)
!3204 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3197, file: !130, line: 1007, type: !48)
!3205 = !DILocation(line: 1007, column: 32, scope: !3197)
!3206 = !DILocalVariable(name: "arg", arg: 4, scope: !3197, file: !130, line: 1007, type: !48)
!3207 = !DILocation(line: 1007, column: 57, scope: !3197)
!3208 = !DILocation(line: 1009, column: 33, scope: !3197)
!3209 = !DILocation(line: 1009, column: 36, scope: !3197)
!3210 = !DILocation(line: 1009, column: 48, scope: !3197)
!3211 = !DILocation(line: 1009, column: 61, scope: !3197)
!3212 = !DILocation(line: 1009, column: 10, scope: !3197)
!3213 = !DILocation(line: 1009, column: 3, scope: !3197)
!3214 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !130, file: !130, line: 1014, type: !3215, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!36, !39, !48, !48, !48, !138}
!3217 = !DILocalVariable(name: "n", arg: 1, scope: !3214, file: !130, line: 1014, type: !39)
!3218 = !DILocation(line: 1014, column: 28, scope: !3214)
!3219 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3214, file: !130, line: 1014, type: !48)
!3220 = !DILocation(line: 1014, column: 43, scope: !3214)
!3221 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3214, file: !130, line: 1015, type: !48)
!3222 = !DILocation(line: 1015, column: 36, scope: !3214)
!3223 = !DILocalVariable(name: "arg", arg: 4, scope: !3214, file: !130, line: 1016, type: !48)
!3224 = !DILocation(line: 1016, column: 36, scope: !3214)
!3225 = !DILocalVariable(name: "argsize", arg: 5, scope: !3214, file: !130, line: 1016, type: !138)
!3226 = !DILocation(line: 1016, column: 48, scope: !3214)
!3227 = !DILocalVariable(name: "o", scope: !3214, file: !130, line: 1018, type: !150)
!3228 = !DILocation(line: 1018, column: 26, scope: !3214)
!3229 = !DILocation(line: 1018, column: 30, scope: !3214)
!3230 = !DILocation(line: 1019, column: 27, scope: !3214)
!3231 = !DILocation(line: 1019, column: 39, scope: !3214)
!3232 = !DILocation(line: 1019, column: 3, scope: !3214)
!3233 = !DILocation(line: 1020, column: 30, scope: !3214)
!3234 = !DILocation(line: 1020, column: 33, scope: !3214)
!3235 = !DILocation(line: 1020, column: 38, scope: !3214)
!3236 = !DILocation(line: 1020, column: 10, scope: !3214)
!3237 = !DILocation(line: 1020, column: 3, scope: !3214)
!3238 = distinct !DISubprogram(name: "quotearg_custom", scope: !130, file: !130, line: 1024, type: !3239, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!36, !48, !48, !48}
!3241 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3238, file: !130, line: 1024, type: !48)
!3242 = !DILocation(line: 1024, column: 30, scope: !3238)
!3243 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3238, file: !130, line: 1024, type: !48)
!3244 = !DILocation(line: 1024, column: 54, scope: !3238)
!3245 = !DILocalVariable(name: "arg", arg: 3, scope: !3238, file: !130, line: 1025, type: !48)
!3246 = !DILocation(line: 1025, column: 30, scope: !3238)
!3247 = !DILocation(line: 1027, column: 32, scope: !3238)
!3248 = !DILocation(line: 1027, column: 44, scope: !3238)
!3249 = !DILocation(line: 1027, column: 57, scope: !3238)
!3250 = !DILocation(line: 1027, column: 10, scope: !3238)
!3251 = !DILocation(line: 1027, column: 3, scope: !3238)
!3252 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !130, file: !130, line: 1031, type: !3253, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!36, !48, !48, !48, !138}
!3255 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3252, file: !130, line: 1031, type: !48)
!3256 = !DILocation(line: 1031, column: 34, scope: !3252)
!3257 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3252, file: !130, line: 1031, type: !48)
!3258 = !DILocation(line: 1031, column: 58, scope: !3252)
!3259 = !DILocalVariable(name: "arg", arg: 3, scope: !3252, file: !130, line: 1032, type: !48)
!3260 = !DILocation(line: 1032, column: 34, scope: !3252)
!3261 = !DILocalVariable(name: "argsize", arg: 4, scope: !3252, file: !130, line: 1032, type: !138)
!3262 = !DILocation(line: 1032, column: 46, scope: !3252)
!3263 = !DILocation(line: 1034, column: 36, scope: !3252)
!3264 = !DILocation(line: 1034, column: 48, scope: !3252)
!3265 = !DILocation(line: 1034, column: 61, scope: !3252)
!3266 = !DILocation(line: 1035, column: 33, scope: !3252)
!3267 = !DILocation(line: 1034, column: 10, scope: !3252)
!3268 = !DILocation(line: 1034, column: 3, scope: !3252)
!3269 = distinct !DISubprogram(name: "quote_n_mem", scope: !130, file: !130, line: 1049, type: !3270, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!48, !39, !48, !138}
!3272 = !DILocalVariable(name: "n", arg: 1, scope: !3269, file: !130, line: 1049, type: !39)
!3273 = !DILocation(line: 1049, column: 18, scope: !3269)
!3274 = !DILocalVariable(name: "arg", arg: 2, scope: !3269, file: !130, line: 1049, type: !48)
!3275 = !DILocation(line: 1049, column: 33, scope: !3269)
!3276 = !DILocalVariable(name: "argsize", arg: 3, scope: !3269, file: !130, line: 1049, type: !138)
!3277 = !DILocation(line: 1049, column: 45, scope: !3269)
!3278 = !DILocation(line: 1051, column: 30, scope: !3269)
!3279 = !DILocation(line: 1051, column: 33, scope: !3269)
!3280 = !DILocation(line: 1051, column: 38, scope: !3269)
!3281 = !DILocation(line: 1051, column: 10, scope: !3269)
!3282 = !DILocation(line: 1051, column: 3, scope: !3269)
!3283 = distinct !DISubprogram(name: "quote_mem", scope: !130, file: !130, line: 1055, type: !3284, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!48, !48, !138}
!3286 = !DILocalVariable(name: "arg", arg: 1, scope: !3283, file: !130, line: 1055, type: !48)
!3287 = !DILocation(line: 1055, column: 24, scope: !3283)
!3288 = !DILocalVariable(name: "argsize", arg: 2, scope: !3283, file: !130, line: 1055, type: !138)
!3289 = !DILocation(line: 1055, column: 36, scope: !3283)
!3290 = !DILocation(line: 1057, column: 26, scope: !3283)
!3291 = !DILocation(line: 1057, column: 31, scope: !3283)
!3292 = !DILocation(line: 1057, column: 10, scope: !3283)
!3293 = !DILocation(line: 1057, column: 3, scope: !3283)
!3294 = distinct !DISubprogram(name: "quote_n", scope: !130, file: !130, line: 1061, type: !3295, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!48, !39, !48}
!3297 = !DILocalVariable(name: "n", arg: 1, scope: !3294, file: !130, line: 1061, type: !39)
!3298 = !DILocation(line: 1061, column: 14, scope: !3294)
!3299 = !DILocalVariable(name: "arg", arg: 2, scope: !3294, file: !130, line: 1061, type: !48)
!3300 = !DILocation(line: 1061, column: 29, scope: !3294)
!3301 = !DILocation(line: 1063, column: 23, scope: !3294)
!3302 = !DILocation(line: 1063, column: 26, scope: !3294)
!3303 = !DILocation(line: 1063, column: 10, scope: !3294)
!3304 = !DILocation(line: 1063, column: 3, scope: !3294)
!3305 = distinct !DISubprogram(name: "quote", scope: !130, file: !130, line: 1067, type: !3306, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !50)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!48, !48}
!3308 = !DILocalVariable(name: "arg", arg: 1, scope: !3305, file: !130, line: 1067, type: !48)
!3309 = !DILocation(line: 1067, column: 20, scope: !3305)
!3310 = !DILocation(line: 1069, column: 22, scope: !3305)
!3311 = !DILocation(line: 1069, column: 10, scope: !3305)
!3312 = !DILocation(line: 1069, column: 3, scope: !3305)
!3313 = distinct !DISubprogram(name: "getcon", scope: !3314, file: !3314, line: 66, type: !3315, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3314 = !DIFile(filename: "./lib/selinux/selinux.h", directory: "/src")
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!39, !597}
!3317 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3313, file: !3314, line: 66, type: !597)
!3318 = !DILocation(line: 66, column: 16, scope: !3313)
!3319 = !DILocation(line: 67, column: 5, scope: !3313)
!3320 = !DILocation(line: 67, column: 11, scope: !3313)
!3321 = !DILocation(line: 67, column: 22, scope: !3313)
!3322 = distinct !DISubprogram(name: "getcon_raw", scope: !3314, file: !3314, line: 69, type: !3315, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3323 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3322, file: !3314, line: 69, type: !597)
!3324 = !DILocation(line: 69, column: 20, scope: !3322)
!3325 = !DILocation(line: 70, column: 5, scope: !3322)
!3326 = !DILocation(line: 70, column: 11, scope: !3322)
!3327 = !DILocation(line: 70, column: 22, scope: !3322)
!3328 = distinct !DISubprogram(name: "freecon", scope: !3314, file: !3314, line: 72, type: !3329, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !36}
!3331 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3328, file: !3314, line: 72, type: !36)
!3332 = !DILocation(line: 72, column: 16, scope: !3328)
!3333 = !DILocation(line: 72, column: 36, scope: !3328)
!3334 = distinct !DISubprogram(name: "getfscreatecon", scope: !3314, file: !3314, line: 75, type: !3315, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3335 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3334, file: !3314, line: 75, type: !597)
!3336 = !DILocation(line: 75, column: 24, scope: !3334)
!3337 = !DILocation(line: 76, column: 5, scope: !3334)
!3338 = !DILocation(line: 76, column: 11, scope: !3334)
!3339 = !DILocation(line: 76, column: 22, scope: !3334)
!3340 = distinct !DISubprogram(name: "getfscreatecon_raw", scope: !3314, file: !3314, line: 78, type: !3315, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3341 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3340, file: !3314, line: 78, type: !597)
!3342 = !DILocation(line: 78, column: 28, scope: !3340)
!3343 = !DILocation(line: 79, column: 5, scope: !3340)
!3344 = !DILocation(line: 79, column: 11, scope: !3340)
!3345 = !DILocation(line: 79, column: 22, scope: !3340)
!3346 = distinct !DISubprogram(name: "setfscreatecon", scope: !3314, file: !3314, line: 81, type: !775, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3347 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3346, file: !3314, line: 81, type: !48)
!3348 = !DILocation(line: 81, column: 29, scope: !3346)
!3349 = !DILocation(line: 82, column: 5, scope: !3346)
!3350 = !DILocation(line: 82, column: 11, scope: !3346)
!3351 = !DILocation(line: 82, column: 22, scope: !3346)
!3352 = distinct !DISubprogram(name: "setfscreatecon_raw", scope: !3314, file: !3314, line: 84, type: !775, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3353 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3352, file: !3314, line: 84, type: !48)
!3354 = !DILocation(line: 84, column: 33, scope: !3352)
!3355 = !DILocation(line: 85, column: 5, scope: !3352)
!3356 = !DILocation(line: 85, column: 11, scope: !3352)
!3357 = !DILocation(line: 85, column: 22, scope: !3352)
!3358 = distinct !DISubprogram(name: "matchpathcon", scope: !3314, file: !3314, line: 87, type: !3359, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!39, !48, !683, !597}
!3361 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3358, file: !3314, line: 87, type: !48)
!3362 = !DILocation(line: 87, column: 27, scope: !3358)
!3363 = !DILocalVariable(name: "unnamed_m", arg: 2, scope: !3358, file: !3314, line: 87, type: !683)
!3364 = !DILocation(line: 87, column: 54, scope: !3358)
!3365 = !DILocalVariable(name: "unnamed_con", arg: 3, scope: !3358, file: !3314, line: 88, type: !597)
!3366 = !DILocation(line: 88, column: 22, scope: !3358)
!3367 = !DILocation(line: 89, column: 5, scope: !3358)
!3368 = !DILocation(line: 89, column: 11, scope: !3358)
!3369 = !DILocation(line: 89, column: 22, scope: !3358)
!3370 = distinct !DISubprogram(name: "getfilecon", scope: !3314, file: !3314, line: 91, type: !3371, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!39, !48, !597}
!3373 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3370, file: !3314, line: 91, type: !48)
!3374 = !DILocation(line: 91, column: 25, scope: !3370)
!3375 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3370, file: !3314, line: 91, type: !597)
!3376 = !DILocation(line: 91, column: 52, scope: !3370)
!3377 = !DILocation(line: 92, column: 5, scope: !3370)
!3378 = !DILocation(line: 92, column: 11, scope: !3370)
!3379 = !DILocation(line: 92, column: 22, scope: !3370)
!3380 = distinct !DISubprogram(name: "getfilecon_raw", scope: !3314, file: !3314, line: 94, type: !3371, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3381 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3380, file: !3314, line: 94, type: !48)
!3382 = !DILocation(line: 94, column: 29, scope: !3380)
!3383 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3380, file: !3314, line: 94, type: !597)
!3384 = !DILocation(line: 94, column: 56, scope: !3380)
!3385 = !DILocation(line: 95, column: 5, scope: !3380)
!3386 = !DILocation(line: 95, column: 11, scope: !3380)
!3387 = !DILocation(line: 95, column: 22, scope: !3380)
!3388 = distinct !DISubprogram(name: "lgetfilecon", scope: !3314, file: !3314, line: 97, type: !3371, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3389 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3388, file: !3314, line: 97, type: !48)
!3390 = !DILocation(line: 97, column: 26, scope: !3388)
!3391 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3388, file: !3314, line: 97, type: !597)
!3392 = !DILocation(line: 97, column: 53, scope: !3388)
!3393 = !DILocation(line: 98, column: 5, scope: !3388)
!3394 = !DILocation(line: 98, column: 11, scope: !3388)
!3395 = !DILocation(line: 98, column: 22, scope: !3388)
!3396 = distinct !DISubprogram(name: "lgetfilecon_raw", scope: !3314, file: !3314, line: 100, type: !3371, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3397 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3396, file: !3314, line: 100, type: !48)
!3398 = !DILocation(line: 100, column: 30, scope: !3396)
!3399 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3396, file: !3314, line: 100, type: !597)
!3400 = !DILocation(line: 100, column: 57, scope: !3396)
!3401 = !DILocation(line: 101, column: 5, scope: !3396)
!3402 = !DILocation(line: 101, column: 11, scope: !3396)
!3403 = !DILocation(line: 101, column: 22, scope: !3396)
!3404 = distinct !DISubprogram(name: "fgetfilecon", scope: !3314, file: !3314, line: 103, type: !595, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3405 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3404, file: !3314, line: 103, type: !39)
!3406 = !DILocation(line: 103, column: 18, scope: !3404)
!3407 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3404, file: !3314, line: 103, type: !597)
!3408 = !DILocation(line: 103, column: 43, scope: !3404)
!3409 = !DILocation(line: 104, column: 5, scope: !3404)
!3410 = !DILocation(line: 104, column: 11, scope: !3404)
!3411 = !DILocation(line: 104, column: 22, scope: !3404)
!3412 = distinct !DISubprogram(name: "fgetfilecon_raw", scope: !3314, file: !3314, line: 106, type: !595, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3413 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3412, file: !3314, line: 106, type: !39)
!3414 = !DILocation(line: 106, column: 22, scope: !3412)
!3415 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3412, file: !3314, line: 106, type: !597)
!3416 = !DILocation(line: 106, column: 47, scope: !3412)
!3417 = !DILocation(line: 107, column: 5, scope: !3412)
!3418 = !DILocation(line: 107, column: 11, scope: !3412)
!3419 = !DILocation(line: 107, column: 22, scope: !3412)
!3420 = distinct !DISubprogram(name: "setfilecon", scope: !3314, file: !3314, line: 109, type: !3421, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!39, !48, !48}
!3423 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3420, file: !3314, line: 109, type: !48)
!3424 = !DILocation(line: 109, column: 25, scope: !3420)
!3425 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3420, file: !3314, line: 109, type: !48)
!3426 = !DILocation(line: 109, column: 57, scope: !3420)
!3427 = !DILocation(line: 110, column: 5, scope: !3420)
!3428 = !DILocation(line: 110, column: 11, scope: !3420)
!3429 = !DILocation(line: 110, column: 22, scope: !3420)
!3430 = distinct !DISubprogram(name: "setfilecon_raw", scope: !3314, file: !3314, line: 112, type: !3421, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3431 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3430, file: !3314, line: 112, type: !48)
!3432 = !DILocation(line: 112, column: 29, scope: !3430)
!3433 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3430, file: !3314, line: 112, type: !48)
!3434 = !DILocation(line: 112, column: 61, scope: !3430)
!3435 = !DILocation(line: 113, column: 5, scope: !3430)
!3436 = !DILocation(line: 113, column: 11, scope: !3430)
!3437 = !DILocation(line: 113, column: 22, scope: !3430)
!3438 = distinct !DISubprogram(name: "lsetfilecon", scope: !3314, file: !3314, line: 115, type: !3421, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3439 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3438, file: !3314, line: 115, type: !48)
!3440 = !DILocation(line: 115, column: 26, scope: !3438)
!3441 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3438, file: !3314, line: 115, type: !48)
!3442 = !DILocation(line: 115, column: 58, scope: !3438)
!3443 = !DILocation(line: 116, column: 5, scope: !3438)
!3444 = !DILocation(line: 116, column: 11, scope: !3438)
!3445 = !DILocation(line: 116, column: 22, scope: !3438)
!3446 = distinct !DISubprogram(name: "lsetfilecon_raw", scope: !3314, file: !3314, line: 118, type: !3421, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3447 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3446, file: !3314, line: 118, type: !48)
!3448 = !DILocation(line: 118, column: 30, scope: !3446)
!3449 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3446, file: !3314, line: 118, type: !48)
!3450 = !DILocation(line: 118, column: 62, scope: !3446)
!3451 = !DILocation(line: 119, column: 5, scope: !3446)
!3452 = !DILocation(line: 119, column: 11, scope: !3446)
!3453 = !DILocation(line: 119, column: 22, scope: !3446)
!3454 = distinct !DISubprogram(name: "fsetfilecon", scope: !3314, file: !3314, line: 121, type: !3455, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!39, !39, !48}
!3457 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3454, file: !3314, line: 121, type: !39)
!3458 = !DILocation(line: 121, column: 18, scope: !3454)
!3459 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3454, file: !3314, line: 121, type: !48)
!3460 = !DILocation(line: 121, column: 48, scope: !3454)
!3461 = !DILocation(line: 122, column: 5, scope: !3454)
!3462 = !DILocation(line: 122, column: 11, scope: !3454)
!3463 = !DILocation(line: 122, column: 22, scope: !3454)
!3464 = distinct !DISubprogram(name: "fsetfilecon_raw", scope: !3314, file: !3314, line: 124, type: !3455, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3465 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3464, file: !3314, line: 124, type: !39)
!3466 = !DILocation(line: 124, column: 22, scope: !3464)
!3467 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3464, file: !3314, line: 124, type: !48)
!3468 = !DILocation(line: 124, column: 52, scope: !3464)
!3469 = !DILocation(line: 125, column: 5, scope: !3464)
!3470 = !DILocation(line: 125, column: 11, scope: !3464)
!3471 = !DILocation(line: 125, column: 22, scope: !3464)
!3472 = distinct !DISubprogram(name: "security_check_context", scope: !3314, file: !3314, line: 128, type: !775, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3473 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3472, file: !3314, line: 128, type: !48)
!3474 = !DILocation(line: 128, column: 37, scope: !3472)
!3475 = !DILocation(line: 129, column: 5, scope: !3472)
!3476 = !DILocation(line: 129, column: 11, scope: !3472)
!3477 = !DILocation(line: 129, column: 22, scope: !3472)
!3478 = distinct !DISubprogram(name: "security_check_context_raw", scope: !3314, file: !3314, line: 131, type: !775, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3479 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3478, file: !3314, line: 131, type: !48)
!3480 = !DILocation(line: 131, column: 41, scope: !3478)
!3481 = !DILocation(line: 132, column: 5, scope: !3478)
!3482 = !DILocation(line: 132, column: 11, scope: !3478)
!3483 = !DILocation(line: 132, column: 22, scope: !3478)
!3484 = distinct !DISubprogram(name: "setexeccon", scope: !3314, file: !3314, line: 134, type: !775, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3485 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3484, file: !3314, line: 134, type: !48)
!3486 = !DILocation(line: 134, column: 25, scope: !3484)
!3487 = !DILocation(line: 135, column: 5, scope: !3484)
!3488 = !DILocation(line: 135, column: 11, scope: !3484)
!3489 = !DILocation(line: 135, column: 22, scope: !3484)
!3490 = distinct !DISubprogram(name: "setexeccon_raw", scope: !3314, file: !3314, line: 137, type: !775, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3491 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3490, file: !3314, line: 137, type: !48)
!3492 = !DILocation(line: 137, column: 29, scope: !3490)
!3493 = !DILocation(line: 138, column: 5, scope: !3490)
!3494 = !DILocation(line: 138, column: 11, scope: !3490)
!3495 = !DILocation(line: 138, column: 22, scope: !3490)
!3496 = distinct !DISubprogram(name: "security_compute_create", scope: !3314, file: !3314, line: 140, type: !3497, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!39, !48, !48, !3499, !597}
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_class_t", file: !3314, line: 61, baseType: !40)
!3500 = !DILocalVariable(name: "unnamed_scon", arg: 1, scope: !3496, file: !3314, line: 140, type: !48)
!3501 = !DILocation(line: 140, column: 38, scope: !3496)
!3502 = !DILocalVariable(name: "unnamed_tcon", arg: 2, scope: !3496, file: !3314, line: 141, type: !48)
!3503 = !DILocation(line: 141, column: 38, scope: !3496)
!3504 = !DILocalVariable(name: "unnamed_tclass", arg: 3, scope: !3496, file: !3314, line: 142, type: !3499)
!3505 = !DILocation(line: 142, column: 43, scope: !3496)
!3506 = !DILocalVariable(name: "unnamed_newcon", arg: 4, scope: !3496, file: !3314, line: 143, type: !597)
!3507 = !DILocation(line: 143, column: 33, scope: !3496)
!3508 = !DILocation(line: 144, column: 5, scope: !3496)
!3509 = !DILocation(line: 144, column: 11, scope: !3496)
!3510 = !DILocation(line: 144, column: 22, scope: !3496)
!3511 = distinct !DISubprogram(name: "security_compute_create_raw", scope: !3314, file: !3314, line: 146, type: !3497, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3512 = !DILocalVariable(name: "unnamed_scon", arg: 1, scope: !3511, file: !3314, line: 146, type: !48)
!3513 = !DILocation(line: 146, column: 42, scope: !3511)
!3514 = !DILocalVariable(name: "unnamed_tcon", arg: 2, scope: !3511, file: !3314, line: 147, type: !48)
!3515 = !DILocation(line: 147, column: 42, scope: !3511)
!3516 = !DILocalVariable(name: "unnamed_tclass", arg: 3, scope: !3511, file: !3314, line: 148, type: !3499)
!3517 = !DILocation(line: 148, column: 47, scope: !3511)
!3518 = !DILocalVariable(name: "unnamed_newcon", arg: 4, scope: !3511, file: !3314, line: 149, type: !597)
!3519 = !DILocation(line: 149, column: 37, scope: !3511)
!3520 = !DILocation(line: 150, column: 5, scope: !3511)
!3521 = !DILocation(line: 150, column: 11, scope: !3511)
!3522 = !DILocation(line: 150, column: 22, scope: !3511)
!3523 = distinct !DISubprogram(name: "string_to_security_class", scope: !3314, file: !3314, line: 152, type: !3524, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!3499, !48}
!3526 = !DILocalVariable(name: "unnamed_name", arg: 1, scope: !3523, file: !3314, line: 152, type: !48)
!3527 = !DILocation(line: 152, column: 39, scope: !3523)
!3528 = !DILocation(line: 153, column: 5, scope: !3523)
!3529 = !DILocation(line: 153, column: 11, scope: !3523)
!3530 = !DILocation(line: 153, column: 22, scope: !3523)
!3531 = distinct !DISubprogram(name: "matchpathcon_init_prefix", scope: !3314, file: !3314, line: 155, type: !3421, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !50)
!3532 = !DILocalVariable(name: "unnamed_path", arg: 1, scope: !3531, file: !3314, line: 155, type: !48)
!3533 = !DILocation(line: 155, column: 39, scope: !3531)
!3534 = !DILocalVariable(name: "unnamed_prefix", arg: 2, scope: !3531, file: !3314, line: 156, type: !48)
!3535 = !DILocation(line: 156, column: 39, scope: !3531)
!3536 = !DILocation(line: 157, column: 5, scope: !3531)
!3537 = !DILocation(line: 157, column: 11, scope: !3531)
!3538 = !DILocation(line: 157, column: 22, scope: !3531)
!3539 = distinct !DISubprogram(name: "streq", scope: !3540, file: !3540, line: 1359, type: !3541, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !240, retainedNodes: !50)
!3540 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!75, !48, !48}
!3543 = !DILocalVariable(name: "__s1", arg: 1, scope: !3539, file: !3540, line: 1359, type: !48)
!3544 = !DILocation(line: 1359, column: 20, scope: !3539)
!3545 = !DILocalVariable(name: "__s2", arg: 2, scope: !3539, file: !3540, line: 1359, type: !48)
!3546 = !DILocation(line: 1359, column: 38, scope: !3539)
!3547 = !DILocation(line: 1361, column: 19, scope: !3539)
!3548 = !DILocation(line: 1361, column: 25, scope: !3539)
!3549 = !DILocation(line: 1361, column: 11, scope: !3539)
!3550 = !DILocation(line: 1361, column: 10, scope: !3539)
!3551 = !DILocation(line: 1361, column: 3, scope: !3539)
!3552 = distinct !DISubprogram(name: "version_etc_arn", scope: !243, file: !243, line: 61, type: !3553, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !50)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3555, !48, !48, !48, !3607, !138}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3557, line: 7, baseType: !3558)
!3557 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3559, line: 49, size: 1728, elements: !3560)
!3559 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3576, !3578, !3579, !3580, !3581, !3582, !3584, !3588, !3591, !3593, !3596, !3599, !3600, !3601, !3602, !3603}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3558, file: !3559, line: 51, baseType: !39, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3558, file: !3559, line: 54, baseType: !36, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3558, file: !3559, line: 55, baseType: !36, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3558, file: !3559, line: 56, baseType: !36, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3558, file: !3559, line: 57, baseType: !36, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3558, file: !3559, line: 58, baseType: !36, size: 64, offset: 320)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3558, file: !3559, line: 59, baseType: !36, size: 64, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3558, file: !3559, line: 60, baseType: !36, size: 64, offset: 448)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3558, file: !3559, line: 61, baseType: !36, size: 64, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3558, file: !3559, line: 64, baseType: !36, size: 64, offset: 576)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3558, file: !3559, line: 65, baseType: !36, size: 64, offset: 640)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3558, file: !3559, line: 66, baseType: !36, size: 64, offset: 704)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3558, file: !3559, line: 68, baseType: !3574, size: 64, offset: 768)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3559, line: 36, flags: DIFlagFwdDecl)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3558, file: !3559, line: 70, baseType: !3577, size: 64, offset: 832)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3558, file: !3559, line: 72, baseType: !39, size: 32, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3558, file: !3559, line: 73, baseType: !39, size: 32, offset: 928)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3558, file: !3559, line: 74, baseType: !1409, size: 64, offset: 960)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3558, file: !3559, line: 77, baseType: !40, size: 16, offset: 1024)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3558, file: !3559, line: 78, baseType: !3583, size: 8, offset: 1040)
!3583 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3558, file: !3559, line: 79, baseType: !3585, size: 8, offset: 1048)
!3585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !3586)
!3586 = !{!3587}
!3587 = !DISubrange(count: 1)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3558, file: !3559, line: 81, baseType: !3589, size: 64, offset: 1088)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3559, line: 43, baseType: null)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3558, file: !3559, line: 89, baseType: !3592, size: 64, offset: 1152)
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !686, line: 153, baseType: !266)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3558, file: !3559, line: 91, baseType: !3594, size: 64, offset: 1216)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3559, line: 37, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3558, file: !3559, line: 92, baseType: !3597, size: 64, offset: 1280)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3559, line: 38, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3558, file: !3559, line: 93, baseType: !3577, size: 64, offset: 1344)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3558, file: !3559, line: 94, baseType: !38, size: 64, offset: 1408)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3558, file: !3559, line: 95, baseType: !138, size: 64, offset: 1472)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3558, file: !3559, line: 96, baseType: !39, size: 32, offset: 1536)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3558, file: !3559, line: 98, baseType: !3604, size: 160, offset: 1568)
!3604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !3605)
!3605 = !{!3606}
!3606 = !DISubrange(count: 20)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!3608 = !DILocalVariable(name: "stream", arg: 1, scope: !3552, file: !243, line: 61, type: !3555)
!3609 = !DILocation(line: 61, column: 24, scope: !3552)
!3610 = !DILocalVariable(name: "command_name", arg: 2, scope: !3552, file: !243, line: 62, type: !48)
!3611 = !DILocation(line: 62, column: 30, scope: !3552)
!3612 = !DILocalVariable(name: "package", arg: 3, scope: !3552, file: !243, line: 62, type: !48)
!3613 = !DILocation(line: 62, column: 56, scope: !3552)
!3614 = !DILocalVariable(name: "version", arg: 4, scope: !3552, file: !243, line: 63, type: !48)
!3615 = !DILocation(line: 63, column: 30, scope: !3552)
!3616 = !DILocalVariable(name: "authors", arg: 5, scope: !3552, file: !243, line: 64, type: !3607)
!3617 = !DILocation(line: 64, column: 39, scope: !3552)
!3618 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3552, file: !243, line: 64, type: !138)
!3619 = !DILocation(line: 64, column: 55, scope: !3552)
!3620 = !DILocation(line: 66, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3552, file: !243, line: 66, column: 7)
!3622 = !DILocation(line: 66, column: 7, scope: !3552)
!3623 = !DILocation(line: 67, column: 14, scope: !3621)
!3624 = !DILocation(line: 67, column: 38, scope: !3621)
!3625 = !DILocation(line: 67, column: 52, scope: !3621)
!3626 = !DILocation(line: 67, column: 61, scope: !3621)
!3627 = !DILocation(line: 67, column: 5, scope: !3621)
!3628 = !DILocation(line: 69, column: 14, scope: !3621)
!3629 = !DILocation(line: 69, column: 33, scope: !3621)
!3630 = !DILocation(line: 69, column: 42, scope: !3621)
!3631 = !DILocation(line: 69, column: 5, scope: !3621)
!3632 = !DILocation(line: 83, column: 12, scope: !3552)
!3633 = !DILocation(line: 83, column: 43, scope: !3552)
!3634 = !DILocation(line: 83, column: 3, scope: !3552)
!3635 = !DILocation(line: 85, column: 3, scope: !3552)
!3636 = !DILocation(line: 88, column: 12, scope: !3552)
!3637 = !DILocation(line: 88, column: 20, scope: !3552)
!3638 = !DILocation(line: 88, column: 3, scope: !3552)
!3639 = !DILocation(line: 95, column: 3, scope: !3552)
!3640 = !DILocation(line: 97, column: 11, scope: !3552)
!3641 = !DILocation(line: 97, column: 3, scope: !3552)
!3642 = !DILocation(line: 102, column: 7, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3552, file: !243, line: 98, column: 5)
!3644 = !DILocation(line: 105, column: 16, scope: !3643)
!3645 = !DILocation(line: 105, column: 24, scope: !3643)
!3646 = !DILocation(line: 105, column: 47, scope: !3643)
!3647 = !DILocation(line: 105, column: 7, scope: !3643)
!3648 = !DILocation(line: 106, column: 7, scope: !3643)
!3649 = !DILocation(line: 109, column: 16, scope: !3643)
!3650 = !DILocation(line: 109, column: 24, scope: !3643)
!3651 = !DILocation(line: 109, column: 54, scope: !3643)
!3652 = !DILocation(line: 109, column: 66, scope: !3643)
!3653 = !DILocation(line: 109, column: 7, scope: !3643)
!3654 = !DILocation(line: 110, column: 7, scope: !3643)
!3655 = !DILocation(line: 113, column: 16, scope: !3643)
!3656 = !DILocation(line: 113, column: 24, scope: !3643)
!3657 = !DILocation(line: 114, column: 16, scope: !3643)
!3658 = !DILocation(line: 114, column: 28, scope: !3643)
!3659 = !DILocation(line: 114, column: 40, scope: !3643)
!3660 = !DILocation(line: 113, column: 7, scope: !3643)
!3661 = !DILocation(line: 115, column: 7, scope: !3643)
!3662 = !DILocation(line: 120, column: 16, scope: !3643)
!3663 = !DILocation(line: 120, column: 24, scope: !3643)
!3664 = !DILocation(line: 121, column: 16, scope: !3643)
!3665 = !DILocation(line: 121, column: 28, scope: !3643)
!3666 = !DILocation(line: 121, column: 40, scope: !3643)
!3667 = !DILocation(line: 121, column: 52, scope: !3643)
!3668 = !DILocation(line: 120, column: 7, scope: !3643)
!3669 = !DILocation(line: 122, column: 7, scope: !3643)
!3670 = !DILocation(line: 127, column: 16, scope: !3643)
!3671 = !DILocation(line: 127, column: 24, scope: !3643)
!3672 = !DILocation(line: 128, column: 16, scope: !3643)
!3673 = !DILocation(line: 128, column: 28, scope: !3643)
!3674 = !DILocation(line: 128, column: 40, scope: !3643)
!3675 = !DILocation(line: 128, column: 52, scope: !3643)
!3676 = !DILocation(line: 128, column: 64, scope: !3643)
!3677 = !DILocation(line: 127, column: 7, scope: !3643)
!3678 = !DILocation(line: 129, column: 7, scope: !3643)
!3679 = !DILocation(line: 134, column: 16, scope: !3643)
!3680 = !DILocation(line: 134, column: 24, scope: !3643)
!3681 = !DILocation(line: 135, column: 16, scope: !3643)
!3682 = !DILocation(line: 135, column: 28, scope: !3643)
!3683 = !DILocation(line: 135, column: 40, scope: !3643)
!3684 = !DILocation(line: 135, column: 52, scope: !3643)
!3685 = !DILocation(line: 135, column: 64, scope: !3643)
!3686 = !DILocation(line: 136, column: 16, scope: !3643)
!3687 = !DILocation(line: 134, column: 7, scope: !3643)
!3688 = !DILocation(line: 137, column: 7, scope: !3643)
!3689 = !DILocation(line: 142, column: 16, scope: !3643)
!3690 = !DILocation(line: 142, column: 24, scope: !3643)
!3691 = !DILocation(line: 143, column: 16, scope: !3643)
!3692 = !DILocation(line: 143, column: 28, scope: !3643)
!3693 = !DILocation(line: 143, column: 40, scope: !3643)
!3694 = !DILocation(line: 143, column: 52, scope: !3643)
!3695 = !DILocation(line: 143, column: 64, scope: !3643)
!3696 = !DILocation(line: 144, column: 16, scope: !3643)
!3697 = !DILocation(line: 144, column: 28, scope: !3643)
!3698 = !DILocation(line: 142, column: 7, scope: !3643)
!3699 = !DILocation(line: 145, column: 7, scope: !3643)
!3700 = !DILocation(line: 150, column: 16, scope: !3643)
!3701 = !DILocation(line: 150, column: 24, scope: !3643)
!3702 = !DILocation(line: 152, column: 17, scope: !3643)
!3703 = !DILocation(line: 152, column: 29, scope: !3643)
!3704 = !DILocation(line: 152, column: 41, scope: !3643)
!3705 = !DILocation(line: 152, column: 53, scope: !3643)
!3706 = !DILocation(line: 152, column: 65, scope: !3643)
!3707 = !DILocation(line: 153, column: 17, scope: !3643)
!3708 = !DILocation(line: 153, column: 29, scope: !3643)
!3709 = !DILocation(line: 153, column: 41, scope: !3643)
!3710 = !DILocation(line: 150, column: 7, scope: !3643)
!3711 = !DILocation(line: 154, column: 7, scope: !3643)
!3712 = !DILocation(line: 159, column: 16, scope: !3643)
!3713 = !DILocation(line: 159, column: 24, scope: !3643)
!3714 = !DILocation(line: 161, column: 16, scope: !3643)
!3715 = !DILocation(line: 161, column: 28, scope: !3643)
!3716 = !DILocation(line: 161, column: 40, scope: !3643)
!3717 = !DILocation(line: 161, column: 52, scope: !3643)
!3718 = !DILocation(line: 161, column: 64, scope: !3643)
!3719 = !DILocation(line: 162, column: 16, scope: !3643)
!3720 = !DILocation(line: 162, column: 28, scope: !3643)
!3721 = !DILocation(line: 162, column: 40, scope: !3643)
!3722 = !DILocation(line: 162, column: 52, scope: !3643)
!3723 = !DILocation(line: 159, column: 7, scope: !3643)
!3724 = !DILocation(line: 163, column: 7, scope: !3643)
!3725 = !DILocation(line: 170, column: 16, scope: !3643)
!3726 = !DILocation(line: 170, column: 24, scope: !3643)
!3727 = !DILocation(line: 172, column: 17, scope: !3643)
!3728 = !DILocation(line: 172, column: 29, scope: !3643)
!3729 = !DILocation(line: 172, column: 41, scope: !3643)
!3730 = !DILocation(line: 172, column: 53, scope: !3643)
!3731 = !DILocation(line: 172, column: 65, scope: !3643)
!3732 = !DILocation(line: 173, column: 17, scope: !3643)
!3733 = !DILocation(line: 173, column: 29, scope: !3643)
!3734 = !DILocation(line: 173, column: 41, scope: !3643)
!3735 = !DILocation(line: 173, column: 53, scope: !3643)
!3736 = !DILocation(line: 170, column: 7, scope: !3643)
!3737 = !DILocation(line: 174, column: 7, scope: !3643)
!3738 = !DILocation(line: 176, column: 1, scope: !3552)
!3739 = distinct !DISubprogram(name: "version_etc_ar", scope: !243, file: !243, line: 183, type: !3740, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !50)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !3555, !48, !48, !48, !3607}
!3742 = !DILocalVariable(name: "stream", arg: 1, scope: !3739, file: !243, line: 183, type: !3555)
!3743 = !DILocation(line: 183, column: 23, scope: !3739)
!3744 = !DILocalVariable(name: "command_name", arg: 2, scope: !3739, file: !243, line: 184, type: !48)
!3745 = !DILocation(line: 184, column: 29, scope: !3739)
!3746 = !DILocalVariable(name: "package", arg: 3, scope: !3739, file: !243, line: 184, type: !48)
!3747 = !DILocation(line: 184, column: 55, scope: !3739)
!3748 = !DILocalVariable(name: "version", arg: 4, scope: !3739, file: !243, line: 185, type: !48)
!3749 = !DILocation(line: 185, column: 29, scope: !3739)
!3750 = !DILocalVariable(name: "authors", arg: 5, scope: !3739, file: !243, line: 185, type: !3607)
!3751 = !DILocation(line: 185, column: 59, scope: !3739)
!3752 = !DILocalVariable(name: "n_authors", scope: !3739, file: !243, line: 187, type: !138)
!3753 = !DILocation(line: 187, column: 10, scope: !3739)
!3754 = !DILocation(line: 189, column: 18, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3739, file: !243, line: 189, column: 3)
!3756 = !DILocation(line: 189, column: 8, scope: !3755)
!3757 = !DILocation(line: 189, column: 23, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3755, file: !243, line: 189, column: 3)
!3759 = !DILocation(line: 189, column: 31, scope: !3758)
!3760 = !DILocation(line: 189, column: 3, scope: !3755)
!3761 = !DILocation(line: 189, column: 52, scope: !3758)
!3762 = !DILocation(line: 189, column: 3, scope: !3758)
!3763 = distinct !{!3763, !3760, !3764, !409}
!3764 = !DILocation(line: 190, column: 5, scope: !3755)
!3765 = !DILocation(line: 191, column: 20, scope: !3739)
!3766 = !DILocation(line: 191, column: 28, scope: !3739)
!3767 = !DILocation(line: 191, column: 42, scope: !3739)
!3768 = !DILocation(line: 191, column: 51, scope: !3739)
!3769 = !DILocation(line: 191, column: 60, scope: !3739)
!3770 = !DILocation(line: 191, column: 69, scope: !3739)
!3771 = !DILocation(line: 191, column: 3, scope: !3739)
!3772 = !DILocation(line: 192, column: 1, scope: !3739)
!3773 = distinct !DISubprogram(name: "version_etc_va", scope: !243, file: !243, line: 199, type: !3774, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !50)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{null, !3555, !48, !48, !48, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !88, line: 52, baseType: !3777)
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !90, line: 32, baseType: !3778)
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3779, baseType: !3780)
!3779 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !94, size: 256, elements: !3781)
!3781 = !{!3782, !3783, !3784, !3785, !3786}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3780, file: !3779, line: 192, baseType: !38, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3780, file: !3779, line: 192, baseType: !38, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3780, file: !3779, line: 192, baseType: !38, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3780, file: !3779, line: 192, baseType: !39, size: 32, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3780, file: !3779, line: 192, baseType: !39, size: 32, offset: 224)
!3787 = !DILocalVariable(name: "stream", arg: 1, scope: !3773, file: !243, line: 199, type: !3555)
!3788 = !DILocation(line: 199, column: 23, scope: !3773)
!3789 = !DILocalVariable(name: "command_name", arg: 2, scope: !3773, file: !243, line: 200, type: !48)
!3790 = !DILocation(line: 200, column: 29, scope: !3773)
!3791 = !DILocalVariable(name: "package", arg: 3, scope: !3773, file: !243, line: 200, type: !48)
!3792 = !DILocation(line: 200, column: 55, scope: !3773)
!3793 = !DILocalVariable(name: "version", arg: 4, scope: !3773, file: !243, line: 201, type: !48)
!3794 = !DILocation(line: 201, column: 29, scope: !3773)
!3795 = !DILocalVariable(name: "authors", arg: 5, scope: !3773, file: !243, line: 201, type: !3776)
!3796 = !DILocation(line: 201, column: 46, scope: !3773)
!3797 = !DILocalVariable(name: "n_authors", scope: !3773, file: !243, line: 203, type: !138)
!3798 = !DILocation(line: 203, column: 10, scope: !3773)
!3799 = !DILocalVariable(name: "authtab", scope: !3773, file: !243, line: 204, type: !3800)
!3800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 640, elements: !146)
!3801 = !DILocation(line: 204, column: 15, scope: !3773)
!3802 = !DILocation(line: 206, column: 18, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3773, file: !243, line: 206, column: 3)
!3804 = !DILocation(line: 206, column: 8, scope: !3803)
!3805 = !DILocation(line: 207, column: 8, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !243, line: 206, column: 3)
!3807 = !DILocation(line: 207, column: 18, scope: !3806)
!3808 = !DILocation(line: 208, column: 10, scope: !3806)
!3809 = !DILocation(line: 208, column: 35, scope: !3806)
!3810 = !DILocation(line: 208, column: 22, scope: !3806)
!3811 = !DILocation(line: 208, column: 14, scope: !3806)
!3812 = !DILocation(line: 208, column: 33, scope: !3806)
!3813 = !DILocation(line: 208, column: 67, scope: !3806)
!3814 = !DILocation(line: 0, scope: !3806)
!3815 = !DILocation(line: 206, column: 3, scope: !3803)
!3816 = !DILocation(line: 209, column: 17, scope: !3806)
!3817 = !DILocation(line: 206, column: 3, scope: !3806)
!3818 = distinct !{!3818, !3815, !3819, !409}
!3819 = !DILocation(line: 210, column: 5, scope: !3803)
!3820 = !DILocation(line: 211, column: 20, scope: !3773)
!3821 = !DILocation(line: 211, column: 28, scope: !3773)
!3822 = !DILocation(line: 211, column: 42, scope: !3773)
!3823 = !DILocation(line: 211, column: 51, scope: !3773)
!3824 = !DILocation(line: 212, column: 20, scope: !3773)
!3825 = !DILocation(line: 212, column: 29, scope: !3773)
!3826 = !DILocation(line: 211, column: 3, scope: !3773)
!3827 = !DILocation(line: 213, column: 1, scope: !3773)
!3828 = distinct !DISubprogram(name: "version_etc", scope: !243, file: !243, line: 230, type: !3829, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !50)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{null, !3555, !48, !48, !48, null}
!3831 = !DILocalVariable(name: "stream", arg: 1, scope: !3828, file: !243, line: 230, type: !3555)
!3832 = !DILocation(line: 230, column: 20, scope: !3828)
!3833 = !DILocalVariable(name: "command_name", arg: 2, scope: !3828, file: !243, line: 231, type: !48)
!3834 = !DILocation(line: 231, column: 26, scope: !3828)
!3835 = !DILocalVariable(name: "package", arg: 3, scope: !3828, file: !243, line: 231, type: !48)
!3836 = !DILocation(line: 231, column: 52, scope: !3828)
!3837 = !DILocalVariable(name: "version", arg: 4, scope: !3828, file: !243, line: 232, type: !48)
!3838 = !DILocation(line: 232, column: 26, scope: !3828)
!3839 = !DILocalVariable(name: "authors", scope: !3828, file: !243, line: 234, type: !3776)
!3840 = !DILocation(line: 234, column: 11, scope: !3828)
!3841 = !DILocation(line: 235, column: 3, scope: !3828)
!3842 = !DILocation(line: 236, column: 19, scope: !3828)
!3843 = !DILocation(line: 236, column: 27, scope: !3828)
!3844 = !DILocation(line: 236, column: 41, scope: !3828)
!3845 = !DILocation(line: 236, column: 50, scope: !3828)
!3846 = !DILocation(line: 236, column: 3, scope: !3828)
!3847 = !DILocation(line: 237, column: 3, scope: !3828)
!3848 = !DILocation(line: 238, column: 1, scope: !3828)
!3849 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !243, file: !243, line: 241, type: !108, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !50)
!3850 = !DILocation(line: 243, column: 3, scope: !3849)
!3851 = !DILocation(line: 248, column: 11, scope: !3849)
!3852 = !DILocation(line: 248, column: 3, scope: !3849)
!3853 = !DILocation(line: 254, column: 11, scope: !3849)
!3854 = !DILocation(line: 254, column: 3, scope: !3849)
!3855 = !DILocation(line: 259, column: 11, scope: !3849)
!3856 = !DILocation(line: 259, column: 3, scope: !3849)
!3857 = !DILocation(line: 261, column: 1, scope: !3849)
!3858 = distinct !DISubprogram(name: "xnrealloc", scope: !3859, file: !3859, line: 147, type: !3860, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3859 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!38, !38, !138, !138}
!3862 = !DILocalVariable(name: "p", arg: 1, scope: !3858, file: !3859, line: 147, type: !38)
!3863 = !DILocation(line: 147, column: 18, scope: !3858)
!3864 = !DILocalVariable(name: "n", arg: 2, scope: !3858, file: !3859, line: 147, type: !138)
!3865 = !DILocation(line: 147, column: 28, scope: !3858)
!3866 = !DILocalVariable(name: "s", arg: 3, scope: !3858, file: !3859, line: 147, type: !138)
!3867 = !DILocation(line: 147, column: 38, scope: !3858)
!3868 = !DILocation(line: 149, column: 25, scope: !3858)
!3869 = !DILocation(line: 149, column: 28, scope: !3858)
!3870 = !DILocation(line: 149, column: 31, scope: !3858)
!3871 = !DILocation(line: 149, column: 10, scope: !3858)
!3872 = !DILocation(line: 149, column: 3, scope: !3858)
!3873 = distinct !DISubprogram(name: "xreallocarray", scope: !249, file: !249, line: 83, type: !3860, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3874 = !DILocalVariable(name: "p", arg: 1, scope: !3873, file: !249, line: 83, type: !38)
!3875 = !DILocation(line: 83, column: 22, scope: !3873)
!3876 = !DILocalVariable(name: "n", arg: 2, scope: !3873, file: !249, line: 83, type: !138)
!3877 = !DILocation(line: 83, column: 32, scope: !3873)
!3878 = !DILocalVariable(name: "s", arg: 3, scope: !3873, file: !249, line: 83, type: !138)
!3879 = !DILocation(line: 83, column: 42, scope: !3873)
!3880 = !DILocation(line: 85, column: 39, scope: !3873)
!3881 = !DILocation(line: 85, column: 42, scope: !3873)
!3882 = !DILocation(line: 85, column: 45, scope: !3873)
!3883 = !DILocation(line: 85, column: 25, scope: !3873)
!3884 = !DILocation(line: 85, column: 10, scope: !3873)
!3885 = !DILocation(line: 85, column: 3, scope: !3873)
!3886 = distinct !DISubprogram(name: "check_nonnull", scope: !249, file: !249, line: 37, type: !3887, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!38, !38}
!3889 = !DILocalVariable(name: "p", arg: 1, scope: !3886, file: !249, line: 37, type: !38)
!3890 = !DILocation(line: 37, column: 22, scope: !3886)
!3891 = !DILocation(line: 39, column: 8, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3886, file: !249, line: 39, column: 7)
!3893 = !DILocation(line: 39, column: 7, scope: !3886)
!3894 = !DILocation(line: 40, column: 5, scope: !3892)
!3895 = !DILocation(line: 41, column: 10, scope: !3886)
!3896 = !DILocation(line: 41, column: 3, scope: !3886)
!3897 = distinct !DISubprogram(name: "xmalloc", scope: !249, file: !249, line: 47, type: !3898, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!38, !138}
!3900 = !DILocalVariable(name: "s", arg: 1, scope: !3897, file: !249, line: 47, type: !138)
!3901 = !DILocation(line: 47, column: 17, scope: !3897)
!3902 = !DILocation(line: 49, column: 33, scope: !3897)
!3903 = !DILocation(line: 49, column: 25, scope: !3897)
!3904 = !DILocation(line: 49, column: 10, scope: !3897)
!3905 = !DILocation(line: 49, column: 3, scope: !3897)
!3906 = distinct !DISubprogram(name: "ximalloc", scope: !249, file: !249, line: 53, type: !3907, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!38, !263}
!3909 = !DILocalVariable(name: "s", arg: 1, scope: !3906, file: !249, line: 53, type: !263)
!3910 = !DILocation(line: 53, column: 17, scope: !3906)
!3911 = !DILocation(line: 55, column: 34, scope: !3906)
!3912 = !DILocation(line: 55, column: 25, scope: !3906)
!3913 = !DILocation(line: 55, column: 10, scope: !3906)
!3914 = !DILocation(line: 55, column: 3, scope: !3906)
!3915 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 59, type: !3916, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!36, !138}
!3918 = !DILocalVariable(name: "n", arg: 1, scope: !3915, file: !249, line: 59, type: !138)
!3919 = !DILocation(line: 59, column: 20, scope: !3915)
!3920 = !DILocation(line: 61, column: 10, scope: !3915)
!3921 = !DILocation(line: 61, column: 3, scope: !3915)
!3922 = distinct !DISubprogram(name: "xrealloc", scope: !249, file: !249, line: 68, type: !3923, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!38, !38, !138}
!3925 = !DILocalVariable(name: "p", arg: 1, scope: !3922, file: !249, line: 68, type: !38)
!3926 = !DILocation(line: 68, column: 17, scope: !3922)
!3927 = !DILocalVariable(name: "s", arg: 2, scope: !3922, file: !249, line: 68, type: !138)
!3928 = !DILocation(line: 68, column: 27, scope: !3922)
!3929 = !DILocation(line: 70, column: 34, scope: !3922)
!3930 = !DILocation(line: 70, column: 37, scope: !3922)
!3931 = !DILocation(line: 70, column: 25, scope: !3922)
!3932 = !DILocation(line: 70, column: 10, scope: !3922)
!3933 = !DILocation(line: 70, column: 3, scope: !3922)
!3934 = distinct !DISubprogram(name: "xirealloc", scope: !249, file: !249, line: 74, type: !3935, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!38, !38, !263}
!3937 = !DILocalVariable(name: "p", arg: 1, scope: !3934, file: !249, line: 74, type: !38)
!3938 = !DILocation(line: 74, column: 18, scope: !3934)
!3939 = !DILocalVariable(name: "s", arg: 2, scope: !3934, file: !249, line: 74, type: !263)
!3940 = !DILocation(line: 74, column: 27, scope: !3934)
!3941 = !DILocation(line: 76, column: 35, scope: !3934)
!3942 = !DILocation(line: 76, column: 38, scope: !3934)
!3943 = !DILocation(line: 76, column: 25, scope: !3934)
!3944 = !DILocation(line: 76, column: 10, scope: !3934)
!3945 = !DILocation(line: 76, column: 3, scope: !3934)
!3946 = distinct !DISubprogram(name: "xireallocarray", scope: !249, file: !249, line: 89, type: !3947, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!38, !38, !263, !263}
!3949 = !DILocalVariable(name: "p", arg: 1, scope: !3946, file: !249, line: 89, type: !38)
!3950 = !DILocation(line: 89, column: 23, scope: !3946)
!3951 = !DILocalVariable(name: "n", arg: 2, scope: !3946, file: !249, line: 89, type: !263)
!3952 = !DILocation(line: 89, column: 32, scope: !3946)
!3953 = !DILocalVariable(name: "s", arg: 3, scope: !3946, file: !249, line: 89, type: !263)
!3954 = !DILocation(line: 89, column: 41, scope: !3946)
!3955 = !DILocation(line: 91, column: 40, scope: !3946)
!3956 = !DILocation(line: 91, column: 43, scope: !3946)
!3957 = !DILocation(line: 91, column: 46, scope: !3946)
!3958 = !DILocation(line: 91, column: 25, scope: !3946)
!3959 = !DILocation(line: 91, column: 10, scope: !3946)
!3960 = !DILocation(line: 91, column: 3, scope: !3946)
!3961 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 98, type: !3962, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!38, !138, !138}
!3964 = !DILocalVariable(name: "n", arg: 1, scope: !3961, file: !249, line: 98, type: !138)
!3965 = !DILocation(line: 98, column: 18, scope: !3961)
!3966 = !DILocalVariable(name: "s", arg: 2, scope: !3961, file: !249, line: 98, type: !138)
!3967 = !DILocation(line: 98, column: 28, scope: !3961)
!3968 = !DILocation(line: 100, column: 31, scope: !3961)
!3969 = !DILocation(line: 100, column: 34, scope: !3961)
!3970 = !DILocation(line: 100, column: 10, scope: !3961)
!3971 = !DILocation(line: 100, column: 3, scope: !3961)
!3972 = distinct !DISubprogram(name: "xinmalloc", scope: !249, file: !249, line: 104, type: !3973, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!38, !263, !263}
!3975 = !DILocalVariable(name: "n", arg: 1, scope: !3972, file: !249, line: 104, type: !263)
!3976 = !DILocation(line: 104, column: 18, scope: !3972)
!3977 = !DILocalVariable(name: "s", arg: 2, scope: !3972, file: !249, line: 104, type: !263)
!3978 = !DILocation(line: 104, column: 27, scope: !3972)
!3979 = !DILocation(line: 106, column: 32, scope: !3972)
!3980 = !DILocation(line: 106, column: 35, scope: !3972)
!3981 = !DILocation(line: 106, column: 10, scope: !3972)
!3982 = !DILocation(line: 106, column: 3, scope: !3972)
!3983 = distinct !DISubprogram(name: "x2realloc", scope: !249, file: !249, line: 116, type: !3984, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!38, !38, !255}
!3986 = !DILocalVariable(name: "p", arg: 1, scope: !3983, file: !249, line: 116, type: !38)
!3987 = !DILocation(line: 116, column: 18, scope: !3983)
!3988 = !DILocalVariable(name: "ps", arg: 2, scope: !3983, file: !249, line: 116, type: !255)
!3989 = !DILocation(line: 116, column: 29, scope: !3983)
!3990 = !DILocation(line: 118, column: 22, scope: !3983)
!3991 = !DILocation(line: 118, column: 25, scope: !3983)
!3992 = !DILocation(line: 118, column: 10, scope: !3983)
!3993 = !DILocation(line: 118, column: 3, scope: !3983)
!3994 = !DILocalVariable(name: "p", arg: 1, scope: !252, file: !249, line: 176, type: !38)
!3995 = !DILocation(line: 176, column: 19, scope: !252)
!3996 = !DILocalVariable(name: "pn", arg: 2, scope: !252, file: !249, line: 176, type: !255)
!3997 = !DILocation(line: 176, column: 30, scope: !252)
!3998 = !DILocalVariable(name: "s", arg: 3, scope: !252, file: !249, line: 176, type: !138)
!3999 = !DILocation(line: 176, column: 41, scope: !252)
!4000 = !DILocalVariable(name: "n", scope: !252, file: !249, line: 178, type: !138)
!4001 = !DILocation(line: 178, column: 10, scope: !252)
!4002 = !DILocation(line: 178, column: 15, scope: !252)
!4003 = !DILocation(line: 178, column: 14, scope: !252)
!4004 = !DILocation(line: 180, column: 9, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !252, file: !249, line: 180, column: 7)
!4006 = !DILocation(line: 180, column: 7, scope: !252)
!4007 = !DILocation(line: 182, column: 13, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !249, line: 182, column: 11)
!4009 = distinct !DILexicalBlock(scope: !4005, file: !249, line: 181, column: 5)
!4010 = !DILocation(line: 182, column: 11, scope: !4009)
!4011 = !DILocation(line: 190, column: 32, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4008, file: !249, line: 183, column: 9)
!4013 = !DILocation(line: 190, column: 30, scope: !4012)
!4014 = !DILocation(line: 190, column: 13, scope: !4012)
!4015 = !DILocation(line: 191, column: 17, scope: !4012)
!4016 = !DILocation(line: 191, column: 16, scope: !4012)
!4017 = !DILocation(line: 191, column: 13, scope: !4012)
!4018 = !DILocation(line: 192, column: 9, scope: !4012)
!4019 = !DILocation(line: 193, column: 5, scope: !4009)
!4020 = !DILocation(line: 197, column: 11, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !249, line: 197, column: 11)
!4022 = distinct !DILexicalBlock(scope: !4005, file: !249, line: 195, column: 5)
!4023 = !DILocation(line: 197, column: 11, scope: !4022)
!4024 = !DILocation(line: 198, column: 9, scope: !4021)
!4025 = !DILocation(line: 201, column: 22, scope: !252)
!4026 = !DILocation(line: 201, column: 25, scope: !252)
!4027 = !DILocation(line: 201, column: 28, scope: !252)
!4028 = !DILocation(line: 201, column: 7, scope: !252)
!4029 = !DILocation(line: 201, column: 5, scope: !252)
!4030 = !DILocation(line: 202, column: 9, scope: !252)
!4031 = !DILocation(line: 202, column: 4, scope: !252)
!4032 = !DILocation(line: 202, column: 7, scope: !252)
!4033 = !DILocation(line: 203, column: 10, scope: !252)
!4034 = !DILocation(line: 203, column: 3, scope: !252)
!4035 = !DILocalVariable(name: "pa", arg: 1, scope: !259, file: !249, line: 223, type: !38)
!4036 = !DILocation(line: 223, column: 16, scope: !259)
!4037 = !DILocalVariable(name: "pn", arg: 2, scope: !259, file: !249, line: 223, type: !262)
!4038 = !DILocation(line: 223, column: 27, scope: !259)
!4039 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !259, file: !249, line: 223, type: !263)
!4040 = !DILocation(line: 223, column: 37, scope: !259)
!4041 = !DILocalVariable(name: "n_max", arg: 4, scope: !259, file: !249, line: 223, type: !265)
!4042 = !DILocation(line: 223, column: 59, scope: !259)
!4043 = !DILocalVariable(name: "s", arg: 5, scope: !259, file: !249, line: 223, type: !263)
!4044 = !DILocation(line: 223, column: 72, scope: !259)
!4045 = !DILocalVariable(name: "n0", scope: !259, file: !249, line: 230, type: !263)
!4046 = !DILocation(line: 230, column: 9, scope: !259)
!4047 = !DILocation(line: 230, column: 15, scope: !259)
!4048 = !DILocation(line: 230, column: 14, scope: !259)
!4049 = !DILocalVariable(name: "n", scope: !259, file: !249, line: 237, type: !263)
!4050 = !DILocation(line: 237, column: 9, scope: !259)
!4051 = !DILocation(line: 238, column: 7, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !259, file: !249, line: 238, column: 7)
!4053 = !DILocation(line: 238, column: 7, scope: !259)
!4054 = !DILocation(line: 239, column: 7, scope: !4052)
!4055 = !DILocation(line: 239, column: 5, scope: !4052)
!4056 = !DILocation(line: 240, column: 12, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !259, file: !249, line: 240, column: 7)
!4058 = !DILocation(line: 240, column: 9, scope: !4057)
!4059 = !DILocation(line: 240, column: 18, scope: !4057)
!4060 = !DILocation(line: 240, column: 21, scope: !4057)
!4061 = !DILocation(line: 240, column: 29, scope: !4057)
!4062 = !DILocation(line: 240, column: 27, scope: !4057)
!4063 = !DILocation(line: 240, column: 7, scope: !259)
!4064 = !DILocation(line: 241, column: 9, scope: !4057)
!4065 = !DILocation(line: 241, column: 7, scope: !4057)
!4066 = !DILocation(line: 241, column: 5, scope: !4057)
!4067 = !DILocalVariable(name: "nbytes", scope: !259, file: !249, line: 248, type: !263)
!4068 = !DILocation(line: 248, column: 9, scope: !259)
!4069 = !DILocalVariable(name: "adjusted_nbytes", scope: !259, file: !249, line: 252, type: !263)
!4070 = !DILocation(line: 252, column: 9, scope: !259)
!4071 = !DILocation(line: 253, column: 8, scope: !259)
!4072 = !DILocation(line: 255, column: 10, scope: !259)
!4073 = !DILocation(line: 255, column: 17, scope: !259)
!4074 = !DILocation(line: 256, column: 7, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !259, file: !249, line: 256, column: 7)
!4076 = !DILocation(line: 256, column: 7, scope: !259)
!4077 = !DILocation(line: 258, column: 11, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4075, file: !249, line: 257, column: 5)
!4079 = !DILocation(line: 258, column: 29, scope: !4078)
!4080 = !DILocation(line: 258, column: 27, scope: !4078)
!4081 = !DILocation(line: 258, column: 9, scope: !4078)
!4082 = !DILocation(line: 259, column: 16, scope: !4078)
!4083 = !DILocation(line: 259, column: 34, scope: !4078)
!4084 = !DILocation(line: 259, column: 52, scope: !4078)
!4085 = !DILocation(line: 259, column: 50, scope: !4078)
!4086 = !DILocation(line: 259, column: 32, scope: !4078)
!4087 = !DILocation(line: 259, column: 14, scope: !4078)
!4088 = !DILocation(line: 260, column: 5, scope: !4078)
!4089 = !DILocation(line: 262, column: 9, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !259, file: !249, line: 262, column: 7)
!4091 = !DILocation(line: 262, column: 7, scope: !259)
!4092 = !DILocation(line: 263, column: 6, scope: !4090)
!4093 = !DILocation(line: 263, column: 9, scope: !4090)
!4094 = !DILocation(line: 263, column: 5, scope: !4090)
!4095 = !DILocation(line: 264, column: 7, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !259, file: !249, line: 264, column: 7)
!4097 = !DILocation(line: 264, column: 11, scope: !4096)
!4098 = !DILocation(line: 264, column: 9, scope: !4096)
!4099 = !DILocation(line: 264, column: 16, scope: !4096)
!4100 = !DILocation(line: 264, column: 14, scope: !4096)
!4101 = !DILocation(line: 265, column: 7, scope: !4096)
!4102 = !DILocation(line: 265, column: 11, scope: !4096)
!4103 = !DILocation(line: 266, column: 11, scope: !4096)
!4104 = !DILocation(line: 266, column: 20, scope: !4096)
!4105 = !DILocation(line: 266, column: 17, scope: !4096)
!4106 = !DILocation(line: 266, column: 26, scope: !4096)
!4107 = !DILocation(line: 266, column: 29, scope: !4096)
!4108 = !DILocation(line: 266, column: 37, scope: !4096)
!4109 = !DILocation(line: 266, column: 35, scope: !4096)
!4110 = !DILocation(line: 267, column: 11, scope: !4096)
!4111 = !DILocation(line: 267, column: 14, scope: !4096)
!4112 = !DILocation(line: 264, column: 7, scope: !259)
!4113 = !DILocation(line: 268, column: 5, scope: !4096)
!4114 = !DILocation(line: 269, column: 18, scope: !259)
!4115 = !DILocation(line: 269, column: 22, scope: !259)
!4116 = !DILocation(line: 269, column: 8, scope: !259)
!4117 = !DILocation(line: 269, column: 6, scope: !259)
!4118 = !DILocation(line: 270, column: 9, scope: !259)
!4119 = !DILocation(line: 270, column: 4, scope: !259)
!4120 = !DILocation(line: 270, column: 7, scope: !259)
!4121 = !DILocation(line: 271, column: 10, scope: !259)
!4122 = !DILocation(line: 271, column: 3, scope: !259)
!4123 = distinct !DISubprogram(name: "xzalloc", scope: !249, file: !249, line: 279, type: !3898, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!4124 = !DILocalVariable(name: "s", arg: 1, scope: !4123, file: !249, line: 279, type: !138)
!4125 = !DILocation(line: 279, column: 17, scope: !4123)
!4126 = !DILocation(line: 281, column: 19, scope: !4123)
!4127 = !DILocation(line: 281, column: 10, scope: !4123)
!4128 = !DILocation(line: 281, column: 3, scope: !4123)
!4129 = distinct !DISubprogram(name: "xcalloc", scope: !249, file: !249, line: 294, type: !3962, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!4130 = !DILocalVariable(name: "n", arg: 1, scope: !4129, file: !249, line: 294, type: !138)
!4131 = !DILocation(line: 294, column: 17, scope: !4129)
!4132 = !DILocalVariable(name: "s", arg: 2, scope: !4129, file: !249, line: 294, type: !138)
!4133 = !DILocation(line: 294, column: 27, scope: !4129)
!4134 = !DILocation(line: 296, column: 33, scope: !4129)
!4135 = !DILocation(line: 296, column: 36, scope: !4129)
!4136 = !DILocation(line: 296, column: 25, scope: !4129)
!4137 = !DILocation(line: 296, column: 10, scope: !4129)
!4138 = !DILocation(line: 296, column: 3, scope: !4129)
!4139 = distinct !DISubprogram(name: "xizalloc", scope: !249, file: !249, line: 285, type: !3907, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!4140 = !DILocalVariable(name: "s", arg: 1, scope: !4139, file: !249, line: 285, type: !263)
!4141 = !DILocation(line: 285, column: 17, scope: !4139)
!4142 = !DILocation(line: 287, column: 20, scope: !4139)
!4143 = !DILocation(line: 287, column: 10, scope: !4139)
!4144 = !DILocation(line: 287, column: 3, scope: !4139)
!4145 = distinct !DISubprogram(name: "xicalloc", scope: !249, file: !249, line: 300, type: !3973, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!4146 = !DILocalVariable(name: "n", arg: 1, scope: !4145, file: !249, line: 300, type: !263)
!4147 = !DILocation(line: 300, column: 17, scope: !4145)
!4148 = !DILocalVariable(name: "s", arg: 2, scope: !4145, file: !249, line: 300, type: !263)
!4149 = !DILocation(line: 300, column: 26, scope: !4145)
!4150 = !DILocation(line: 302, column: 34, scope: !4145)
!4151 = !DILocation(line: 302, column: 37, scope: !4145)
!4152 = !DILocation(line: 302, column: 25, scope: !4145)
!4153 = !DILocation(line: 302, column: 10, scope: !4145)
!4154 = !DILocation(line: 302, column: 3, scope: !4145)
!4155 = distinct !DISubprogram(name: "xmemdup", scope: !249, file: !249, line: 310, type: !4156, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!38, !4158, !138}
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4160 = !DILocalVariable(name: "p", arg: 1, scope: !4155, file: !249, line: 310, type: !4158)
!4161 = !DILocation(line: 310, column: 22, scope: !4155)
!4162 = !DILocalVariable(name: "s", arg: 2, scope: !4155, file: !249, line: 310, type: !138)
!4163 = !DILocation(line: 310, column: 32, scope: !4155)
!4164 = !DILocation(line: 312, column: 27, scope: !4155)
!4165 = !DILocation(line: 312, column: 18, scope: !4155)
!4166 = !DILocation(line: 312, column: 31, scope: !4155)
!4167 = !DILocation(line: 312, column: 34, scope: !4155)
!4168 = !DILocation(line: 312, column: 10, scope: !4155)
!4169 = !DILocation(line: 312, column: 3, scope: !4155)
!4170 = distinct !DISubprogram(name: "ximemdup", scope: !249, file: !249, line: 316, type: !4171, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!38, !4158, !263}
!4173 = !DILocalVariable(name: "p", arg: 1, scope: !4170, file: !249, line: 316, type: !4158)
!4174 = !DILocation(line: 316, column: 23, scope: !4170)
!4175 = !DILocalVariable(name: "s", arg: 2, scope: !4170, file: !249, line: 316, type: !263)
!4176 = !DILocation(line: 316, column: 32, scope: !4170)
!4177 = !DILocation(line: 318, column: 28, scope: !4170)
!4178 = !DILocation(line: 318, column: 18, scope: !4170)
!4179 = !DILocation(line: 318, column: 32, scope: !4170)
!4180 = !DILocation(line: 318, column: 35, scope: !4170)
!4181 = !DILocation(line: 318, column: 10, scope: !4170)
!4182 = !DILocation(line: 318, column: 3, scope: !4170)
!4183 = distinct !DISubprogram(name: "ximemdup0", scope: !249, file: !249, line: 325, type: !4184, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!36, !4158, !263}
!4186 = !DILocalVariable(name: "p", arg: 1, scope: !4183, file: !249, line: 325, type: !4158)
!4187 = !DILocation(line: 325, column: 24, scope: !4183)
!4188 = !DILocalVariable(name: "s", arg: 2, scope: !4183, file: !249, line: 325, type: !263)
!4189 = !DILocation(line: 325, column: 33, scope: !4183)
!4190 = !DILocalVariable(name: "result", scope: !4183, file: !249, line: 327, type: !36)
!4191 = !DILocation(line: 327, column: 9, scope: !4183)
!4192 = !DILocation(line: 327, column: 28, scope: !4183)
!4193 = !DILocation(line: 327, column: 30, scope: !4183)
!4194 = !DILocation(line: 327, column: 18, scope: !4183)
!4195 = !DILocation(line: 328, column: 3, scope: !4183)
!4196 = !DILocation(line: 328, column: 10, scope: !4183)
!4197 = !DILocation(line: 328, column: 13, scope: !4183)
!4198 = !DILocation(line: 329, column: 18, scope: !4183)
!4199 = !DILocation(line: 329, column: 26, scope: !4183)
!4200 = !DILocation(line: 329, column: 29, scope: !4183)
!4201 = !DILocation(line: 329, column: 10, scope: !4183)
!4202 = !DILocation(line: 329, column: 3, scope: !4183)
!4203 = distinct !DISubprogram(name: "xstrdup", scope: !249, file: !249, line: 335, type: !3041, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !50)
!4204 = !DILocalVariable(name: "string", arg: 1, scope: !4203, file: !249, line: 335, type: !48)
!4205 = !DILocation(line: 335, column: 22, scope: !4203)
!4206 = !DILocation(line: 337, column: 19, scope: !4203)
!4207 = !DILocation(line: 337, column: 35, scope: !4203)
!4208 = !DILocation(line: 337, column: 27, scope: !4203)
!4209 = !DILocation(line: 337, column: 43, scope: !4203)
!4210 = !DILocation(line: 337, column: 10, scope: !4203)
!4211 = !DILocation(line: 337, column: 3, scope: !4203)
!4212 = distinct !DISubprogram(name: "xalloc_die", scope: !269, file: !269, line: 32, type: !108, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !50)
!4213 = !DILocalVariable(name: "__errstatus", scope: !4214, file: !269, line: 34, type: !4215)
!4214 = distinct !DILexicalBlock(scope: !4212, file: !269, line: 34, column: 3)
!4215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!4216 = !DILocation(line: 34, column: 3, scope: !4214)
!4217 = !DILocation(line: 40, column: 3, scope: !4212)
!4218 = distinct !DISubprogram(name: "c32isprint", scope: !4219, file: !4219, line: 41, type: !4220, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !50)
!4219 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!39, !4222}
!4222 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4223, line: 20, baseType: !7)
!4223 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!4224 = !DILocalVariable(name: "wc", arg: 1, scope: !4218, file: !4219, line: 41, type: !4222)
!4225 = !DILocation(line: 41, column: 14, scope: !4218)
!4226 = !DILocation(line: 66, column: 22, scope: !4218)
!4227 = !DILocation(line: 66, column: 10, scope: !4218)
!4228 = !DILocation(line: 66, column: 3, scope: !4218)
!4229 = distinct !DISubprogram(name: "close_stream", scope: !273, file: !273, line: 55, type: !4230, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !272, retainedNodes: !50)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!39, !4232}
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3557, line: 7, baseType: !4234)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3559, line: 49, size: 1728, elements: !4235)
!4235 = !{!4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4234, file: !3559, line: 51, baseType: !39, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4234, file: !3559, line: 54, baseType: !36, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4234, file: !3559, line: 55, baseType: !36, size: 64, offset: 128)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4234, file: !3559, line: 56, baseType: !36, size: 64, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4234, file: !3559, line: 57, baseType: !36, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4234, file: !3559, line: 58, baseType: !36, size: 64, offset: 320)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4234, file: !3559, line: 59, baseType: !36, size: 64, offset: 384)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4234, file: !3559, line: 60, baseType: !36, size: 64, offset: 448)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4234, file: !3559, line: 61, baseType: !36, size: 64, offset: 512)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4234, file: !3559, line: 64, baseType: !36, size: 64, offset: 576)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4234, file: !3559, line: 65, baseType: !36, size: 64, offset: 640)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4234, file: !3559, line: 66, baseType: !36, size: 64, offset: 704)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4234, file: !3559, line: 68, baseType: !3574, size: 64, offset: 768)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4234, file: !3559, line: 70, baseType: !4250, size: 64, offset: 832)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4234, file: !3559, line: 72, baseType: !39, size: 32, offset: 896)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4234, file: !3559, line: 73, baseType: !39, size: 32, offset: 928)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4234, file: !3559, line: 74, baseType: !1409, size: 64, offset: 960)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4234, file: !3559, line: 77, baseType: !40, size: 16, offset: 1024)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4234, file: !3559, line: 78, baseType: !3583, size: 8, offset: 1040)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4234, file: !3559, line: 79, baseType: !3585, size: 8, offset: 1048)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4234, file: !3559, line: 81, baseType: !3589, size: 64, offset: 1088)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4234, file: !3559, line: 89, baseType: !3592, size: 64, offset: 1152)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4234, file: !3559, line: 91, baseType: !3594, size: 64, offset: 1216)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4234, file: !3559, line: 92, baseType: !3597, size: 64, offset: 1280)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4234, file: !3559, line: 93, baseType: !4250, size: 64, offset: 1344)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4234, file: !3559, line: 94, baseType: !38, size: 64, offset: 1408)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4234, file: !3559, line: 95, baseType: !138, size: 64, offset: 1472)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4234, file: !3559, line: 96, baseType: !39, size: 32, offset: 1536)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4234, file: !3559, line: 98, baseType: !3604, size: 160, offset: 1568)
!4266 = !DILocalVariable(name: "stream", arg: 1, scope: !4229, file: !273, line: 55, type: !4232)
!4267 = !DILocation(line: 55, column: 21, scope: !4229)
!4268 = !DILocalVariable(name: "some_pending", scope: !4229, file: !273, line: 57, type: !4269)
!4269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!4270 = !DILocation(line: 57, column: 14, scope: !4229)
!4271 = !DILocation(line: 57, column: 42, scope: !4229)
!4272 = !DILocation(line: 57, column: 30, scope: !4229)
!4273 = !DILocation(line: 57, column: 50, scope: !4229)
!4274 = !DILocalVariable(name: "prev_fail", scope: !4229, file: !273, line: 58, type: !4269)
!4275 = !DILocation(line: 58, column: 14, scope: !4229)
!4276 = !DILocation(line: 58, column: 27, scope: !4229)
!4277 = !DILocation(line: 58, column: 43, scope: !4229)
!4278 = !DILocalVariable(name: "fclose_fail", scope: !4229, file: !273, line: 59, type: !4269)
!4279 = !DILocation(line: 59, column: 14, scope: !4229)
!4280 = !DILocation(line: 59, column: 37, scope: !4229)
!4281 = !DILocation(line: 59, column: 29, scope: !4229)
!4282 = !DILocation(line: 59, column: 45, scope: !4229)
!4283 = !DILocation(line: 69, column: 7, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4229, file: !273, line: 69, column: 7)
!4285 = !DILocation(line: 69, column: 17, scope: !4284)
!4286 = !DILocation(line: 69, column: 21, scope: !4284)
!4287 = !DILocation(line: 69, column: 33, scope: !4284)
!4288 = !DILocation(line: 69, column: 37, scope: !4284)
!4289 = !DILocation(line: 69, column: 50, scope: !4284)
!4290 = !DILocation(line: 69, column: 53, scope: !4284)
!4291 = !DILocation(line: 69, column: 59, scope: !4284)
!4292 = !DILocation(line: 69, column: 7, scope: !4229)
!4293 = !DILocation(line: 71, column: 13, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4295, file: !273, line: 71, column: 11)
!4295 = distinct !DILexicalBlock(scope: !4284, file: !273, line: 70, column: 5)
!4296 = !DILocation(line: 71, column: 11, scope: !4295)
!4297 = !DILocation(line: 72, column: 9, scope: !4294)
!4298 = !DILocation(line: 72, column: 15, scope: !4294)
!4299 = !DILocation(line: 73, column: 7, scope: !4295)
!4300 = !DILocation(line: 76, column: 3, scope: !4229)
!4301 = !DILocation(line: 77, column: 1, scope: !4229)
!4302 = distinct !DISubprogram(name: "rpl_fclose", scope: !275, file: !275, line: 58, type: !4303, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !50)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!39, !4305}
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3557, line: 7, baseType: !4307)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3559, line: 49, size: 1728, elements: !4308)
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4307, file: !3559, line: 51, baseType: !39, size: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4307, file: !3559, line: 54, baseType: !36, size: 64, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4307, file: !3559, line: 55, baseType: !36, size: 64, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4307, file: !3559, line: 56, baseType: !36, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4307, file: !3559, line: 57, baseType: !36, size: 64, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4307, file: !3559, line: 58, baseType: !36, size: 64, offset: 320)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4307, file: !3559, line: 59, baseType: !36, size: 64, offset: 384)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4307, file: !3559, line: 60, baseType: !36, size: 64, offset: 448)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4307, file: !3559, line: 61, baseType: !36, size: 64, offset: 512)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4307, file: !3559, line: 64, baseType: !36, size: 64, offset: 576)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4307, file: !3559, line: 65, baseType: !36, size: 64, offset: 640)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4307, file: !3559, line: 66, baseType: !36, size: 64, offset: 704)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4307, file: !3559, line: 68, baseType: !3574, size: 64, offset: 768)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4307, file: !3559, line: 70, baseType: !4323, size: 64, offset: 832)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4307, file: !3559, line: 72, baseType: !39, size: 32, offset: 896)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4307, file: !3559, line: 73, baseType: !39, size: 32, offset: 928)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4307, file: !3559, line: 74, baseType: !1409, size: 64, offset: 960)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4307, file: !3559, line: 77, baseType: !40, size: 16, offset: 1024)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4307, file: !3559, line: 78, baseType: !3583, size: 8, offset: 1040)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4307, file: !3559, line: 79, baseType: !3585, size: 8, offset: 1048)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4307, file: !3559, line: 81, baseType: !3589, size: 64, offset: 1088)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4307, file: !3559, line: 89, baseType: !3592, size: 64, offset: 1152)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4307, file: !3559, line: 91, baseType: !3594, size: 64, offset: 1216)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4307, file: !3559, line: 92, baseType: !3597, size: 64, offset: 1280)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4307, file: !3559, line: 93, baseType: !4323, size: 64, offset: 1344)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4307, file: !3559, line: 94, baseType: !38, size: 64, offset: 1408)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4307, file: !3559, line: 95, baseType: !138, size: 64, offset: 1472)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4307, file: !3559, line: 96, baseType: !39, size: 32, offset: 1536)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4307, file: !3559, line: 98, baseType: !3604, size: 160, offset: 1568)
!4339 = !DILocalVariable(name: "fp", arg: 1, scope: !4302, file: !275, line: 58, type: !4305)
!4340 = !DILocation(line: 58, column: 19, scope: !4302)
!4341 = !DILocalVariable(name: "saved_errno", scope: !4302, file: !275, line: 60, type: !39)
!4342 = !DILocation(line: 60, column: 7, scope: !4302)
!4343 = !DILocalVariable(name: "fd", scope: !4302, file: !275, line: 63, type: !39)
!4344 = !DILocation(line: 63, column: 7, scope: !4302)
!4345 = !DILocation(line: 63, column: 20, scope: !4302)
!4346 = !DILocation(line: 63, column: 12, scope: !4302)
!4347 = !DILocation(line: 64, column: 7, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4302, file: !275, line: 64, column: 7)
!4349 = !DILocation(line: 64, column: 10, scope: !4348)
!4350 = !DILocation(line: 64, column: 7, scope: !4302)
!4351 = !DILocation(line: 65, column: 28, scope: !4348)
!4352 = !DILocation(line: 65, column: 12, scope: !4348)
!4353 = !DILocation(line: 65, column: 5, scope: !4348)
!4354 = !DILocation(line: 70, column: 9, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4302, file: !275, line: 70, column: 7)
!4356 = !DILocation(line: 70, column: 23, scope: !4355)
!4357 = !DILocation(line: 70, column: 41, scope: !4355)
!4358 = !DILocation(line: 70, column: 33, scope: !4355)
!4359 = !DILocation(line: 70, column: 26, scope: !4355)
!4360 = !DILocation(line: 70, column: 59, scope: !4355)
!4361 = !DILocation(line: 71, column: 7, scope: !4355)
!4362 = !DILocation(line: 71, column: 18, scope: !4355)
!4363 = !DILocation(line: 71, column: 10, scope: !4355)
!4364 = !DILocation(line: 70, column: 7, scope: !4302)
!4365 = !DILocation(line: 72, column: 19, scope: !4355)
!4366 = !DILocation(line: 72, column: 17, scope: !4355)
!4367 = !DILocation(line: 72, column: 5, scope: !4355)
!4368 = !DILocalVariable(name: "result", scope: !4302, file: !275, line: 74, type: !39)
!4369 = !DILocation(line: 74, column: 7, scope: !4302)
!4370 = !DILocation(line: 100, column: 28, scope: !4302)
!4371 = !DILocation(line: 100, column: 12, scope: !4302)
!4372 = !DILocation(line: 100, column: 10, scope: !4302)
!4373 = !DILocation(line: 105, column: 7, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4302, file: !275, line: 105, column: 7)
!4375 = !DILocation(line: 105, column: 19, scope: !4374)
!4376 = !DILocation(line: 105, column: 7, scope: !4302)
!4377 = !DILocation(line: 107, column: 15, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4374, file: !275, line: 106, column: 5)
!4379 = !DILocation(line: 107, column: 7, scope: !4378)
!4380 = !DILocation(line: 107, column: 13, scope: !4378)
!4381 = !DILocation(line: 108, column: 14, scope: !4378)
!4382 = !DILocation(line: 109, column: 5, scope: !4378)
!4383 = !DILocation(line: 111, column: 10, scope: !4302)
!4384 = !DILocation(line: 111, column: 3, scope: !4302)
!4385 = !DILocation(line: 112, column: 1, scope: !4302)
!4386 = distinct !DISubprogram(name: "rpl_fflush", scope: !277, file: !277, line: 130, type: !4387, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !50)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!39, !4389}
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3557, line: 7, baseType: !4391)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3559, line: 49, size: 1728, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4391, file: !3559, line: 51, baseType: !39, size: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4391, file: !3559, line: 54, baseType: !36, size: 64, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4391, file: !3559, line: 55, baseType: !36, size: 64, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4391, file: !3559, line: 56, baseType: !36, size: 64, offset: 192)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4391, file: !3559, line: 57, baseType: !36, size: 64, offset: 256)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4391, file: !3559, line: 58, baseType: !36, size: 64, offset: 320)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4391, file: !3559, line: 59, baseType: !36, size: 64, offset: 384)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4391, file: !3559, line: 60, baseType: !36, size: 64, offset: 448)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4391, file: !3559, line: 61, baseType: !36, size: 64, offset: 512)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4391, file: !3559, line: 64, baseType: !36, size: 64, offset: 576)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4391, file: !3559, line: 65, baseType: !36, size: 64, offset: 640)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4391, file: !3559, line: 66, baseType: !36, size: 64, offset: 704)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4391, file: !3559, line: 68, baseType: !3574, size: 64, offset: 768)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4391, file: !3559, line: 70, baseType: !4407, size: 64, offset: 832)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4391, file: !3559, line: 72, baseType: !39, size: 32, offset: 896)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4391, file: !3559, line: 73, baseType: !39, size: 32, offset: 928)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4391, file: !3559, line: 74, baseType: !1409, size: 64, offset: 960)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4391, file: !3559, line: 77, baseType: !40, size: 16, offset: 1024)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4391, file: !3559, line: 78, baseType: !3583, size: 8, offset: 1040)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4391, file: !3559, line: 79, baseType: !3585, size: 8, offset: 1048)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4391, file: !3559, line: 81, baseType: !3589, size: 64, offset: 1088)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4391, file: !3559, line: 89, baseType: !3592, size: 64, offset: 1152)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4391, file: !3559, line: 91, baseType: !3594, size: 64, offset: 1216)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4391, file: !3559, line: 92, baseType: !3597, size: 64, offset: 1280)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4391, file: !3559, line: 93, baseType: !4407, size: 64, offset: 1344)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4391, file: !3559, line: 94, baseType: !38, size: 64, offset: 1408)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4391, file: !3559, line: 95, baseType: !138, size: 64, offset: 1472)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4391, file: !3559, line: 96, baseType: !39, size: 32, offset: 1536)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4391, file: !3559, line: 98, baseType: !3604, size: 160, offset: 1568)
!4423 = !DILocalVariable(name: "stream", arg: 1, scope: !4386, file: !277, line: 130, type: !4389)
!4424 = !DILocation(line: 130, column: 19, scope: !4386)
!4425 = !DILocation(line: 151, column: 7, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4386, file: !277, line: 151, column: 7)
!4427 = !DILocation(line: 151, column: 14, scope: !4426)
!4428 = !DILocation(line: 151, column: 22, scope: !4426)
!4429 = !DILocation(line: 151, column: 27, scope: !4426)
!4430 = !DILocation(line: 151, column: 7, scope: !4386)
!4431 = !DILocation(line: 152, column: 20, scope: !4426)
!4432 = !DILocation(line: 152, column: 12, scope: !4426)
!4433 = !DILocation(line: 152, column: 5, scope: !4426)
!4434 = !DILocation(line: 157, column: 44, scope: !4386)
!4435 = !DILocation(line: 157, column: 3, scope: !4386)
!4436 = !DILocation(line: 159, column: 18, scope: !4386)
!4437 = !DILocation(line: 159, column: 10, scope: !4386)
!4438 = !DILocation(line: 159, column: 3, scope: !4386)
!4439 = !DILocation(line: 236, column: 1, scope: !4386)
!4440 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !277, file: !277, line: 42, type: !4441, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !276, retainedNodes: !50)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !4389}
!4443 = !DILocalVariable(name: "fp", arg: 1, scope: !4440, file: !277, line: 42, type: !4389)
!4444 = !DILocation(line: 42, column: 48, scope: !4440)
!4445 = !DILocation(line: 44, column: 7, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4440, file: !277, line: 44, column: 7)
!4447 = !DILocation(line: 44, column: 12, scope: !4446)
!4448 = !DILocation(line: 44, column: 19, scope: !4446)
!4449 = !DILocation(line: 44, column: 7, scope: !4440)
!4450 = !DILocation(line: 46, column: 13, scope: !4446)
!4451 = !DILocation(line: 46, column: 5, scope: !4446)
!4452 = !DILocation(line: 47, column: 1, scope: !4440)
!4453 = distinct !DISubprogram(name: "rpl_fseeko", scope: !279, file: !279, line: 28, type: !4454, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !50)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!39, !4456, !4490, !39}
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3557, line: 7, baseType: !4458)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3559, line: 49, size: 1728, elements: !4459)
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4458, file: !3559, line: 51, baseType: !39, size: 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4458, file: !3559, line: 54, baseType: !36, size: 64, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4458, file: !3559, line: 55, baseType: !36, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4458, file: !3559, line: 56, baseType: !36, size: 64, offset: 192)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4458, file: !3559, line: 57, baseType: !36, size: 64, offset: 256)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4458, file: !3559, line: 58, baseType: !36, size: 64, offset: 320)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4458, file: !3559, line: 59, baseType: !36, size: 64, offset: 384)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4458, file: !3559, line: 60, baseType: !36, size: 64, offset: 448)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4458, file: !3559, line: 61, baseType: !36, size: 64, offset: 512)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4458, file: !3559, line: 64, baseType: !36, size: 64, offset: 576)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4458, file: !3559, line: 65, baseType: !36, size: 64, offset: 640)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4458, file: !3559, line: 66, baseType: !36, size: 64, offset: 704)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4458, file: !3559, line: 68, baseType: !3574, size: 64, offset: 768)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4458, file: !3559, line: 70, baseType: !4474, size: 64, offset: 832)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4458, file: !3559, line: 72, baseType: !39, size: 32, offset: 896)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4458, file: !3559, line: 73, baseType: !39, size: 32, offset: 928)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4458, file: !3559, line: 74, baseType: !1409, size: 64, offset: 960)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4458, file: !3559, line: 77, baseType: !40, size: 16, offset: 1024)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4458, file: !3559, line: 78, baseType: !3583, size: 8, offset: 1040)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4458, file: !3559, line: 79, baseType: !3585, size: 8, offset: 1048)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4458, file: !3559, line: 81, baseType: !3589, size: 64, offset: 1088)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4458, file: !3559, line: 89, baseType: !3592, size: 64, offset: 1152)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4458, file: !3559, line: 91, baseType: !3594, size: 64, offset: 1216)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4458, file: !3559, line: 92, baseType: !3597, size: 64, offset: 1280)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4458, file: !3559, line: 93, baseType: !4474, size: 64, offset: 1344)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4458, file: !3559, line: 94, baseType: !38, size: 64, offset: 1408)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4458, file: !3559, line: 95, baseType: !138, size: 64, offset: 1472)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4458, file: !3559, line: 96, baseType: !39, size: 32, offset: 1536)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4458, file: !3559, line: 98, baseType: !3604, size: 160, offset: 1568)
!4490 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !88, line: 63, baseType: !1409)
!4491 = !DILocalVariable(name: "fp", arg: 1, scope: !4453, file: !279, line: 28, type: !4456)
!4492 = !DILocation(line: 28, column: 15, scope: !4453)
!4493 = !DILocalVariable(name: "offset", arg: 2, scope: !4453, file: !279, line: 28, type: !4490)
!4494 = !DILocation(line: 28, column: 25, scope: !4453)
!4495 = !DILocalVariable(name: "whence", arg: 3, scope: !4453, file: !279, line: 28, type: !39)
!4496 = !DILocation(line: 28, column: 37, scope: !4453)
!4497 = !DILocation(line: 55, column: 7, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4453, file: !279, line: 55, column: 7)
!4499 = !DILocation(line: 55, column: 12, scope: !4498)
!4500 = !DILocation(line: 55, column: 28, scope: !4498)
!4501 = !DILocation(line: 55, column: 33, scope: !4498)
!4502 = !DILocation(line: 55, column: 25, scope: !4498)
!4503 = !DILocation(line: 56, column: 7, scope: !4498)
!4504 = !DILocation(line: 56, column: 10, scope: !4498)
!4505 = !DILocation(line: 56, column: 15, scope: !4498)
!4506 = !DILocation(line: 56, column: 32, scope: !4498)
!4507 = !DILocation(line: 56, column: 37, scope: !4498)
!4508 = !DILocation(line: 56, column: 29, scope: !4498)
!4509 = !DILocation(line: 57, column: 7, scope: !4498)
!4510 = !DILocation(line: 57, column: 10, scope: !4498)
!4511 = !DILocation(line: 57, column: 15, scope: !4498)
!4512 = !DILocation(line: 57, column: 29, scope: !4498)
!4513 = !DILocation(line: 55, column: 7, scope: !4453)
!4514 = !DILocalVariable(name: "pos", scope: !4515, file: !279, line: 123, type: !4490)
!4515 = distinct !DILexicalBlock(scope: !4498, file: !279, line: 119, column: 5)
!4516 = !DILocation(line: 123, column: 13, scope: !4515)
!4517 = !DILocation(line: 123, column: 34, scope: !4515)
!4518 = !DILocation(line: 123, column: 26, scope: !4515)
!4519 = !DILocation(line: 123, column: 39, scope: !4515)
!4520 = !DILocation(line: 123, column: 47, scope: !4515)
!4521 = !DILocation(line: 123, column: 19, scope: !4515)
!4522 = !DILocation(line: 124, column: 11, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4515, file: !279, line: 124, column: 11)
!4524 = !DILocation(line: 124, column: 15, scope: !4523)
!4525 = !DILocation(line: 124, column: 11, scope: !4515)
!4526 = !DILocation(line: 130, column: 11, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4523, file: !279, line: 125, column: 9)
!4528 = !DILocation(line: 135, column: 7, scope: !4515)
!4529 = !DILocation(line: 135, column: 12, scope: !4515)
!4530 = !DILocation(line: 135, column: 19, scope: !4515)
!4531 = !DILocation(line: 136, column: 22, scope: !4515)
!4532 = !DILocation(line: 136, column: 7, scope: !4515)
!4533 = !DILocation(line: 136, column: 12, scope: !4515)
!4534 = !DILocation(line: 136, column: 20, scope: !4515)
!4535 = !DILocation(line: 167, column: 7, scope: !4515)
!4536 = !DILocation(line: 169, column: 18, scope: !4453)
!4537 = !DILocation(line: 169, column: 22, scope: !4453)
!4538 = !DILocation(line: 169, column: 30, scope: !4453)
!4539 = !DILocation(line: 169, column: 10, scope: !4453)
!4540 = !DILocation(line: 169, column: 3, scope: !4453)
!4541 = !DILocation(line: 170, column: 1, scope: !4453)
!4542 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4543, file: !4543, line: 43, type: !4544, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !50)
!4543 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4544 = !DISubroutineType(types: !80)
!4545 = !DILocation(line: 45, column: 3, scope: !4542)
!4546 = !DILocation(line: 45, column: 9, scope: !4542)
!4547 = !DILocation(line: 46, column: 3, scope: !4542)
!4548 = distinct !DISubprogram(name: "imalloc", scope: !4543, file: !4543, line: 55, type: !3907, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !50)
!4549 = !DILocalVariable(name: "s", arg: 1, scope: !4548, file: !4543, line: 55, type: !263)
!4550 = !DILocation(line: 55, column: 16, scope: !4548)
!4551 = !DILocation(line: 57, column: 10, scope: !4548)
!4552 = !DILocation(line: 57, column: 12, scope: !4548)
!4553 = !DILocation(line: 57, column: 34, scope: !4548)
!4554 = !DILocation(line: 57, column: 26, scope: !4548)
!4555 = !DILocation(line: 57, column: 39, scope: !4548)
!4556 = !DILocation(line: 57, column: 3, scope: !4548)
!4557 = distinct !DISubprogram(name: "irealloc", scope: !4543, file: !4543, line: 66, type: !3935, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !50)
!4558 = !DILocalVariable(name: "p", arg: 1, scope: !4557, file: !4543, line: 66, type: !38)
!4559 = !DILocation(line: 66, column: 17, scope: !4557)
!4560 = !DILocalVariable(name: "s", arg: 2, scope: !4557, file: !4543, line: 66, type: !263)
!4561 = !DILocation(line: 66, column: 26, scope: !4557)
!4562 = !DILocation(line: 68, column: 10, scope: !4557)
!4563 = !DILocation(line: 68, column: 12, scope: !4557)
!4564 = !DILocation(line: 68, column: 35, scope: !4557)
!4565 = !DILocation(line: 68, column: 38, scope: !4557)
!4566 = !DILocation(line: 68, column: 26, scope: !4557)
!4567 = !DILocation(line: 68, column: 43, scope: !4557)
!4568 = !DILocation(line: 68, column: 3, scope: !4557)
!4569 = distinct !DISubprogram(name: "icalloc", scope: !4543, file: !4543, line: 77, type: !3973, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !50)
!4570 = !DILocalVariable(name: "n", arg: 1, scope: !4569, file: !4543, line: 77, type: !263)
!4571 = !DILocation(line: 77, column: 16, scope: !4569)
!4572 = !DILocalVariable(name: "s", arg: 2, scope: !4569, file: !4543, line: 77, type: !263)
!4573 = !DILocation(line: 77, column: 25, scope: !4569)
!4574 = !DILocation(line: 79, column: 18, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4569, file: !4543, line: 79, column: 7)
!4576 = !DILocation(line: 79, column: 16, scope: !4575)
!4577 = !DILocation(line: 79, column: 7, scope: !4569)
!4578 = !DILocation(line: 81, column: 11, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4580, file: !4543, line: 81, column: 11)
!4580 = distinct !DILexicalBlock(scope: !4575, file: !4543, line: 80, column: 5)
!4581 = !DILocation(line: 81, column: 13, scope: !4579)
!4582 = !DILocation(line: 81, column: 11, scope: !4580)
!4583 = !DILocation(line: 82, column: 16, scope: !4579)
!4584 = !DILocation(line: 82, column: 9, scope: !4579)
!4585 = !DILocation(line: 83, column: 9, scope: !4580)
!4586 = !DILocation(line: 84, column: 5, scope: !4580)
!4587 = !DILocation(line: 85, column: 18, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4569, file: !4543, line: 85, column: 7)
!4589 = !DILocation(line: 85, column: 16, scope: !4588)
!4590 = !DILocation(line: 85, column: 7, scope: !4569)
!4591 = !DILocation(line: 87, column: 11, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4593, file: !4543, line: 87, column: 11)
!4593 = distinct !DILexicalBlock(scope: !4588, file: !4543, line: 86, column: 5)
!4594 = !DILocation(line: 87, column: 13, scope: !4592)
!4595 = !DILocation(line: 87, column: 11, scope: !4593)
!4596 = !DILocation(line: 88, column: 16, scope: !4592)
!4597 = !DILocation(line: 88, column: 9, scope: !4592)
!4598 = !DILocation(line: 89, column: 9, scope: !4593)
!4599 = !DILocation(line: 90, column: 5, scope: !4593)
!4600 = !DILocation(line: 91, column: 18, scope: !4569)
!4601 = !DILocation(line: 91, column: 21, scope: !4569)
!4602 = !DILocation(line: 91, column: 10, scope: !4569)
!4603 = !DILocation(line: 91, column: 3, scope: !4569)
!4604 = !DILocation(line: 92, column: 1, scope: !4569)
!4605 = distinct !DISubprogram(name: "ireallocarray", scope: !4543, file: !4543, line: 98, type: !3947, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !50)
!4606 = !DILocalVariable(name: "p", arg: 1, scope: !4605, file: !4543, line: 98, type: !38)
!4607 = !DILocation(line: 98, column: 22, scope: !4605)
!4608 = !DILocalVariable(name: "n", arg: 2, scope: !4605, file: !4543, line: 98, type: !263)
!4609 = !DILocation(line: 98, column: 31, scope: !4605)
!4610 = !DILocalVariable(name: "s", arg: 3, scope: !4605, file: !4543, line: 98, type: !263)
!4611 = !DILocation(line: 98, column: 40, scope: !4605)
!4612 = !DILocation(line: 100, column: 11, scope: !4605)
!4613 = !DILocation(line: 100, column: 13, scope: !4605)
!4614 = !DILocation(line: 100, column: 25, scope: !4605)
!4615 = !DILocation(line: 100, column: 28, scope: !4605)
!4616 = !DILocation(line: 100, column: 30, scope: !4605)
!4617 = !DILocation(line: 101, column: 27, scope: !4605)
!4618 = !DILocation(line: 101, column: 30, scope: !4605)
!4619 = !DILocation(line: 101, column: 33, scope: !4605)
!4620 = !DILocation(line: 101, column: 13, scope: !4605)
!4621 = !DILocation(line: 102, column: 13, scope: !4605)
!4622 = !DILocation(line: 100, column: 3, scope: !4605)
!4623 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !207, file: !207, line: 100, type: !4624, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !206, retainedNodes: !50)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!138, !4626, !48, !138, !4627}
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!4628 = !DILocalVariable(name: "pwc", arg: 1, scope: !4623, file: !207, line: 100, type: !4626)
!4629 = !DILocation(line: 100, column: 21, scope: !4623)
!4630 = !DILocalVariable(name: "s", arg: 2, scope: !4623, file: !207, line: 100, type: !48)
!4631 = !DILocation(line: 100, column: 38, scope: !4623)
!4632 = !DILocalVariable(name: "n", arg: 3, scope: !4623, file: !207, line: 100, type: !138)
!4633 = !DILocation(line: 100, column: 48, scope: !4623)
!4634 = !DILocalVariable(name: "ps", arg: 4, scope: !4623, file: !207, line: 100, type: !4627)
!4635 = !DILocation(line: 100, column: 62, scope: !4623)
!4636 = !DILocation(line: 105, column: 7, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4623, file: !207, line: 105, column: 7)
!4638 = !DILocation(line: 105, column: 9, scope: !4637)
!4639 = !DILocation(line: 105, column: 7, scope: !4623)
!4640 = !DILocation(line: 107, column: 11, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4637, file: !207, line: 106, column: 5)
!4642 = !DILocation(line: 108, column: 9, scope: !4641)
!4643 = !DILocation(line: 109, column: 9, scope: !4641)
!4644 = !DILocation(line: 110, column: 5, scope: !4641)
!4645 = !DILocation(line: 117, column: 7, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4623, file: !207, line: 117, column: 7)
!4647 = !DILocation(line: 117, column: 10, scope: !4646)
!4648 = !DILocation(line: 117, column: 7, scope: !4623)
!4649 = !DILocation(line: 118, column: 8, scope: !4646)
!4650 = !DILocation(line: 118, column: 5, scope: !4646)
!4651 = !DILocalVariable(name: "ret", scope: !4623, file: !207, line: 130, type: !138)
!4652 = !DILocation(line: 130, column: 10, scope: !4623)
!4653 = !DILocation(line: 130, column: 26, scope: !4623)
!4654 = !DILocation(line: 130, column: 31, scope: !4623)
!4655 = !DILocation(line: 130, column: 34, scope: !4623)
!4656 = !DILocation(line: 130, column: 37, scope: !4623)
!4657 = !DILocation(line: 130, column: 16, scope: !4623)
!4658 = !DILocation(line: 135, column: 7, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4623, file: !207, line: 135, column: 7)
!4660 = !DILocation(line: 135, column: 11, scope: !4659)
!4661 = !DILocation(line: 135, column: 25, scope: !4659)
!4662 = !DILocation(line: 135, column: 39, scope: !4659)
!4663 = !DILocation(line: 135, column: 30, scope: !4659)
!4664 = !DILocation(line: 135, column: 7, scope: !4623)
!4665 = !DILocation(line: 137, column: 14, scope: !4659)
!4666 = !DILocation(line: 137, column: 5, scope: !4659)
!4667 = !DILocation(line: 138, column: 7, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4623, file: !207, line: 138, column: 7)
!4669 = !DILocation(line: 138, column: 11, scope: !4668)
!4670 = !DILocation(line: 138, column: 7, scope: !4623)
!4671 = !DILocation(line: 139, column: 5, scope: !4668)
!4672 = !DILocation(line: 143, column: 22, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4623, file: !207, line: 143, column: 7)
!4674 = !DILocation(line: 143, column: 19, scope: !4673)
!4675 = !DILocation(line: 143, column: 26, scope: !4673)
!4676 = !DILocation(line: 143, column: 29, scope: !4673)
!4677 = !DILocation(line: 143, column: 31, scope: !4673)
!4678 = !DILocation(line: 143, column: 36, scope: !4673)
!4679 = !DILocation(line: 143, column: 41, scope: !4673)
!4680 = !DILocation(line: 143, column: 7, scope: !4623)
!4681 = !DILocation(line: 145, column: 11, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !207, line: 145, column: 11)
!4683 = distinct !DILexicalBlock(scope: !4673, file: !207, line: 144, column: 5)
!4684 = !DILocation(line: 145, column: 15, scope: !4682)
!4685 = !DILocation(line: 145, column: 11, scope: !4683)
!4686 = !DILocation(line: 146, column: 33, scope: !4682)
!4687 = !DILocation(line: 146, column: 32, scope: !4682)
!4688 = !DILocation(line: 146, column: 16, scope: !4682)
!4689 = !DILocation(line: 146, column: 10, scope: !4682)
!4690 = !DILocation(line: 146, column: 14, scope: !4682)
!4691 = !DILocation(line: 146, column: 9, scope: !4682)
!4692 = !DILocation(line: 147, column: 7, scope: !4683)
!4693 = !DILocation(line: 151, column: 10, scope: !4623)
!4694 = !DILocation(line: 151, column: 3, scope: !4623)
!4695 = !DILocation(line: 286, column: 1, scope: !4623)
!4696 = distinct !DISubprogram(name: "mbszero", scope: !4697, file: !4697, line: 1135, type: !4698, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !282, retainedNodes: !50)
!4697 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4698 = !DISubroutineType(types: !4699)
!4699 = !{null, !4700}
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !212, line: 6, baseType: !4702)
!4702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !214, line: 21, baseType: !4703)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 13, size: 64, elements: !4704)
!4704 = !{!4705, !4706}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4703, file: !214, line: 15, baseType: !39, size: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4703, file: !214, line: 20, baseType: !4707, size: 32, offset: 32)
!4707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4703, file: !214, line: 16, size: 32, elements: !4708)
!4708 = !{!4709, !4710}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4707, file: !214, line: 18, baseType: !7, size: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4707, file: !214, line: 19, baseType: !223, size: 32)
!4711 = !DILocalVariable(name: "ps", arg: 1, scope: !4696, file: !4697, line: 1135, type: !4700)
!4712 = !DILocation(line: 1135, column: 21, scope: !4696)
!4713 = !DILocation(line: 1137, column: 11, scope: !4696)
!4714 = !DILocation(line: 1137, column: 3, scope: !4696)
!4715 = !DILocation(line: 1138, column: 1, scope: !4696)
!4716 = distinct !DISubprogram(name: "memeq", scope: !3540, file: !3540, line: 974, type: !4717, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !284, retainedNodes: !50)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!75, !4158, !4158, !138}
!4719 = !DILocalVariable(name: "__s1", arg: 1, scope: !4716, file: !3540, line: 974, type: !4158)
!4720 = !DILocation(line: 974, column: 20, scope: !4716)
!4721 = !DILocalVariable(name: "__s2", arg: 2, scope: !4716, file: !3540, line: 974, type: !4158)
!4722 = !DILocation(line: 974, column: 38, scope: !4716)
!4723 = !DILocalVariable(name: "__n", arg: 3, scope: !4716, file: !3540, line: 974, type: !138)
!4724 = !DILocation(line: 974, column: 51, scope: !4716)
!4725 = !DILocation(line: 976, column: 19, scope: !4716)
!4726 = !DILocation(line: 976, column: 25, scope: !4716)
!4727 = !DILocation(line: 976, column: 31, scope: !4716)
!4728 = !DILocation(line: 976, column: 11, scope: !4716)
!4729 = !DILocation(line: 976, column: 10, scope: !4716)
!4730 = !DILocation(line: 976, column: 3, scope: !4716)
!4731 = distinct !DISubprogram(name: "rpl_realloc", scope: !4732, file: !4732, line: 2057, type: !3923, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !50)
!4732 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4733 = !DILocalVariable(name: "ptr", arg: 1, scope: !4731, file: !4732, line: 2057, type: !38)
!4734 = !DILocation(line: 2057, column: 20, scope: !4731)
!4735 = !DILocalVariable(name: "size", arg: 2, scope: !4731, file: !4732, line: 2057, type: !138)
!4736 = !DILocation(line: 2057, column: 32, scope: !4731)
!4737 = !DILocation(line: 2059, column: 19, scope: !4731)
!4738 = !DILocation(line: 2059, column: 24, scope: !4731)
!4739 = !DILocation(line: 2059, column: 31, scope: !4731)
!4740 = !DILocation(line: 2059, column: 10, scope: !4731)
!4741 = !DILocation(line: 2059, column: 3, scope: !4731)
!4742 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !289, file: !289, line: 27, type: !3860, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !288, retainedNodes: !50)
!4743 = !DILocalVariable(name: "ptr", arg: 1, scope: !4742, file: !289, line: 27, type: !38)
!4744 = !DILocation(line: 27, column: 21, scope: !4742)
!4745 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4742, file: !289, line: 27, type: !138)
!4746 = !DILocation(line: 27, column: 33, scope: !4742)
!4747 = !DILocalVariable(name: "size", arg: 3, scope: !4742, file: !289, line: 27, type: !138)
!4748 = !DILocation(line: 27, column: 47, scope: !4742)
!4749 = !DILocalVariable(name: "nbytes", scope: !4742, file: !289, line: 29, type: !138)
!4750 = !DILocation(line: 29, column: 10, scope: !4742)
!4751 = !DILocation(line: 30, column: 7, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4742, file: !289, line: 30, column: 7)
!4753 = !DILocation(line: 30, column: 7, scope: !4742)
!4754 = !DILocation(line: 32, column: 7, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4752, file: !289, line: 31, column: 5)
!4756 = !DILocation(line: 32, column: 13, scope: !4755)
!4757 = !DILocation(line: 33, column: 7, scope: !4755)
!4758 = !DILocation(line: 37, column: 19, scope: !4742)
!4759 = !DILocation(line: 37, column: 24, scope: !4742)
!4760 = !DILocation(line: 37, column: 10, scope: !4742)
!4761 = !DILocation(line: 37, column: 3, scope: !4742)
!4762 = !DILocation(line: 38, column: 1, scope: !4742)
!4763 = distinct !DISubprogram(name: "hard_locale", scope: !292, file: !292, line: 28, type: !4764, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !291, retainedNodes: !50)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!75, !39}
!4766 = !DILocalVariable(name: "category", arg: 1, scope: !4763, file: !292, line: 28, type: !39)
!4767 = !DILocation(line: 28, column: 18, scope: !4763)
!4768 = !DILocalVariable(name: "locale", scope: !4763, file: !292, line: 30, type: !4769)
!4769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2056, elements: !4770)
!4770 = !{!4771}
!4771 = !DISubrange(count: 257)
!4772 = !DILocation(line: 30, column: 8, scope: !4763)
!4773 = !DILocation(line: 32, column: 25, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4763, file: !292, line: 32, column: 7)
!4775 = !DILocation(line: 32, column: 35, scope: !4774)
!4776 = !DILocation(line: 32, column: 7, scope: !4774)
!4777 = !DILocation(line: 32, column: 7, scope: !4763)
!4778 = !DILocation(line: 33, column: 5, scope: !4774)
!4779 = !DILocation(line: 35, column: 16, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4763, file: !292, line: 35, column: 7)
!4781 = !DILocation(line: 35, column: 9, scope: !4780)
!4782 = !DILocation(line: 35, column: 29, scope: !4780)
!4783 = !DILocation(line: 35, column: 39, scope: !4780)
!4784 = !DILocation(line: 35, column: 32, scope: !4780)
!4785 = !DILocation(line: 35, column: 7, scope: !4763)
!4786 = !DILocation(line: 36, column: 5, scope: !4780)
!4787 = !DILocation(line: 46, column: 3, scope: !4763)
!4788 = !DILocation(line: 47, column: 1, scope: !4763)
!4789 = distinct !DISubprogram(name: "setlocale_null_r", scope: !294, file: !294, line: 154, type: !4790, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !50)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!39, !39, !36, !138}
!4792 = !DILocalVariable(name: "category", arg: 1, scope: !4789, file: !294, line: 154, type: !39)
!4793 = !DILocation(line: 154, column: 23, scope: !4789)
!4794 = !DILocalVariable(name: "buf", arg: 2, scope: !4789, file: !294, line: 154, type: !36)
!4795 = !DILocation(line: 154, column: 39, scope: !4789)
!4796 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4789, file: !294, line: 154, type: !138)
!4797 = !DILocation(line: 154, column: 51, scope: !4789)
!4798 = !DILocation(line: 159, column: 37, scope: !4789)
!4799 = !DILocation(line: 159, column: 47, scope: !4789)
!4800 = !DILocation(line: 159, column: 52, scope: !4789)
!4801 = !DILocation(line: 159, column: 10, scope: !4789)
!4802 = !DILocation(line: 159, column: 3, scope: !4789)
!4803 = distinct !DISubprogram(name: "setlocale_null", scope: !294, file: !294, line: 186, type: !4804, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !50)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!48, !39}
!4806 = !DILocalVariable(name: "category", arg: 1, scope: !4803, file: !294, line: 186, type: !39)
!4807 = !DILocation(line: 186, column: 21, scope: !4803)
!4808 = !DILocation(line: 189, column: 35, scope: !4803)
!4809 = !DILocation(line: 189, column: 10, scope: !4803)
!4810 = !DILocation(line: 189, column: 3, scope: !4803)
!4811 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !296, file: !296, line: 35, type: !4804, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !50)
!4812 = !DILocalVariable(name: "category", arg: 1, scope: !4811, file: !296, line: 35, type: !39)
!4813 = !DILocation(line: 35, column: 30, scope: !4811)
!4814 = !DILocalVariable(name: "result", scope: !4811, file: !296, line: 37, type: !48)
!4815 = !DILocation(line: 37, column: 15, scope: !4811)
!4816 = !DILocation(line: 37, column: 35, scope: !4811)
!4817 = !DILocation(line: 37, column: 24, scope: !4811)
!4818 = !DILocation(line: 62, column: 10, scope: !4811)
!4819 = !DILocation(line: 62, column: 3, scope: !4811)
!4820 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !296, file: !296, line: 66, type: !4790, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !50)
!4821 = !DILocalVariable(name: "category", arg: 1, scope: !4820, file: !296, line: 66, type: !39)
!4822 = !DILocation(line: 66, column: 32, scope: !4820)
!4823 = !DILocalVariable(name: "buf", arg: 2, scope: !4820, file: !296, line: 66, type: !36)
!4824 = !DILocation(line: 66, column: 48, scope: !4820)
!4825 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4820, file: !296, line: 66, type: !138)
!4826 = !DILocation(line: 66, column: 60, scope: !4820)
!4827 = !DILocalVariable(name: "result", scope: !4820, file: !296, line: 111, type: !48)
!4828 = !DILocation(line: 111, column: 15, scope: !4820)
!4829 = !DILocation(line: 111, column: 49, scope: !4820)
!4830 = !DILocation(line: 111, column: 24, scope: !4820)
!4831 = !DILocation(line: 113, column: 7, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4820, file: !296, line: 113, column: 7)
!4833 = !DILocation(line: 113, column: 14, scope: !4832)
!4834 = !DILocation(line: 113, column: 7, scope: !4820)
!4835 = !DILocation(line: 116, column: 11, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !296, line: 116, column: 11)
!4837 = distinct !DILexicalBlock(scope: !4832, file: !296, line: 114, column: 5)
!4838 = !DILocation(line: 116, column: 19, scope: !4836)
!4839 = !DILocation(line: 116, column: 11, scope: !4837)
!4840 = !DILocation(line: 120, column: 9, scope: !4836)
!4841 = !DILocation(line: 120, column: 16, scope: !4836)
!4842 = !DILocation(line: 121, column: 7, scope: !4837)
!4843 = !DILocalVariable(name: "length", scope: !4844, file: !296, line: 125, type: !138)
!4844 = distinct !DILexicalBlock(scope: !4832, file: !296, line: 124, column: 5)
!4845 = !DILocation(line: 125, column: 14, scope: !4844)
!4846 = !DILocation(line: 125, column: 31, scope: !4844)
!4847 = !DILocation(line: 125, column: 23, scope: !4844)
!4848 = !DILocation(line: 126, column: 11, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4844, file: !296, line: 126, column: 11)
!4850 = !DILocation(line: 126, column: 20, scope: !4849)
!4851 = !DILocation(line: 126, column: 18, scope: !4849)
!4852 = !DILocation(line: 126, column: 11, scope: !4844)
!4853 = !DILocation(line: 128, column: 19, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4849, file: !296, line: 127, column: 9)
!4855 = !DILocation(line: 128, column: 24, scope: !4854)
!4856 = !DILocation(line: 128, column: 32, scope: !4854)
!4857 = !DILocation(line: 128, column: 39, scope: !4854)
!4858 = !DILocation(line: 128, column: 11, scope: !4854)
!4859 = !DILocation(line: 129, column: 11, scope: !4854)
!4860 = !DILocation(line: 133, column: 15, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4862, file: !296, line: 133, column: 15)
!4862 = distinct !DILexicalBlock(scope: !4849, file: !296, line: 132, column: 9)
!4863 = !DILocation(line: 133, column: 23, scope: !4861)
!4864 = !DILocation(line: 133, column: 15, scope: !4862)
!4865 = !DILocation(line: 138, column: 23, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4861, file: !296, line: 134, column: 13)
!4867 = !DILocation(line: 138, column: 28, scope: !4866)
!4868 = !DILocation(line: 138, column: 36, scope: !4866)
!4869 = !DILocation(line: 138, column: 44, scope: !4866)
!4870 = !DILocation(line: 138, column: 15, scope: !4866)
!4871 = !DILocation(line: 139, column: 15, scope: !4866)
!4872 = !DILocation(line: 139, column: 19, scope: !4866)
!4873 = !DILocation(line: 139, column: 27, scope: !4866)
!4874 = !DILocation(line: 139, column: 32, scope: !4866)
!4875 = !DILocation(line: 140, column: 13, scope: !4866)
!4876 = !DILocation(line: 141, column: 11, scope: !4862)
!4877 = !DILocation(line: 145, column: 1, scope: !4820)
