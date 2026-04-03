; ModuleID = 'src/dirname.bc'
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
@.str.1 = private unnamed_addr constant [28 x i8] c"Usage: %s [OPTION] NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [152 x i8] c"Output each NAME with its last non-slash component and trailing slashes\0Aremoved; if NAME contains no /'s, output '.' (meaning the current directory).\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"  -z, --zero\0A         end each output line with NUL, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [130 x i8] c"\0AExamples:\0A  %s /usr/bin/          -> \22/usr\22\0A  %s dir1/str dir2/str  -> \22dir1\22 followed by \22dir2\22\0A  %s stdio.h            -> \22.\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@main.dot = internal constant i8 46, align 1, !dbg !28
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !36
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
@.str.51 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), align 8, !dbg !55
@file_name = internal global i8* null, align 8, !dbg !60
@ignore_EPIPE = internal global i8 0, align 1, !dbg !65
@.str.57 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.58 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.59 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !68
@stderr = external global %struct._IO_FILE*, align 8
@.str.63 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !97
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !74
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !93
@.str.1.69 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.70 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.71 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !95
@.str.4.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.65 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.66 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !102
@.str.80 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.81 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !108
@.str.84 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.85 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.86 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.87 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.88 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.90 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.91 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.92 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.93 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.87, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.93, i32 0, i32 0), i8* null], align 8, !dbg !119
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !148
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !166
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !180
@nslots = internal global i32 1, align 4, !dbg !187
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !168
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !189
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !154
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.95 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.96 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.97 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !173
@.str.102 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.103 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.105 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.106 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.107 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.108 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.109 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.110 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.111 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.112 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.113 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.114 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.115 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.116 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.117 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.118 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.123 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.124 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.125 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.126 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.127 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.128 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.129 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !195
@exit_failure = dso_local global i32 1, align 4, !dbg !203
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.165 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !209
@.str.176 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.177 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !304 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !307, metadata !DIExpression()), !dbg !308
  %3 = load i32, i32* %2, align 4, !dbg !309
  %4 = icmp ne i32 %3, 0, !dbg !311
  br i1 %4, label %5, label %12, !dbg !312

5:                                                ; preds = %1
  br label %6, !dbg !313

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !314
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !314
  %9 = load i8*, i8** @program_name, align 8, !dbg !314
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !314
  br label %11, !dbg !314

11:                                               ; preds = %6
  br label %27, !dbg !314

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !316
  %14 = load i8*, i8** @program_name, align 8, !dbg !318
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !319
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([152 x i8], [152 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !320
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !320
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !320
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !321
  call void @oputs_(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !321
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !322
  call void @oputs_(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !322
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !323
  call void @oputs_(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !323
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([130 x i8], [130 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !324
  %23 = load i8*, i8** @program_name, align 8, !dbg !325
  %24 = load i8*, i8** @program_name, align 8, !dbg !326
  %25 = load i8*, i8** @program_name, align 8, !dbg !327
  %26 = call i32 (i8*, ...) @printf(i8* noundef %22, i8* noundef %23, i8* noundef %24, i8* noundef %25), !dbg !328
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !329
  br label %27

27:                                               ; preds = %12, %11
  %28 = load i32, i32* %2, align 4, !dbg !330
  call void @exit(i32 noundef %28) #19, !dbg !331
  unreachable, !dbg !331
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !38 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !332, metadata !DIExpression()), !dbg !333
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !334, metadata !DIExpression()), !dbg !335
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !336
  %15 = icmp eq i32 %14, -1, !dbg !338
  br i1 %15, label %16, label %30, !dbg !339

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !340, metadata !DIExpression()), !dbg !342
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !343
  store i8* %17, i8** %5, align 8, !dbg !342
  %18 = load i8*, i8** %5, align 8, !dbg !344
  %19 = icmp ne i8* %18, null, !dbg !344
  br i1 %19, label %20, label %27, !dbg !345

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !346
  %22 = load i8, i8* %21, align 1, !dbg !347
  %23 = icmp ne i8 %22, 0, !dbg !347
  br i1 %23, label %24, label %27, !dbg !348

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !349
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)), !dbg !350
  br label %27, !dbg !348

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !348
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !351
  br label %30, !dbg !352

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !353
  %32 = icmp ne i32 %31, 0, !dbg !353
  br i1 %32, label %33, label %37, !dbg !355

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !356
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !356
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !356
  br label %274, !dbg !358

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !359, metadata !DIExpression()), !dbg !360
  store i8 1, i8* %6, align 1, !dbg !360
  call void @llvm.dbg.declare(metadata i8** %7, metadata !361, metadata !DIExpression()), !dbg !362
  %38 = load i8*, i8** %4, align 8, !dbg !363
  %39 = load i8*, i8** %4, align 8, !dbg !364
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #20, !dbg !365
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !366
  store i8* %41, i8** %7, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata i8** %8, metadata !367, metadata !DIExpression()), !dbg !368
  %42 = load i8*, i8** %4, align 8, !dbg !369
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !370
  store i8* %43, i8** %8, align 8, !dbg !368
  %44 = load i8*, i8** %8, align 8, !dbg !371
  %45 = icmp ne i8* %44, null, !dbg !371
  br i1 %45, label %48, label %46, !dbg !373

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !374
  store i8* %47, i8** %8, align 8, !dbg !376
  store i8 0, i8* %6, align 1, !dbg !377
  br label %89, !dbg !378

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !379
  %50 = load i8*, i8** %7, align 8, !dbg !381
  %51 = icmp ne i8* %49, %50, !dbg !382
  br i1 %51, label %52, label %88, !dbg !383

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !384, metadata !DIExpression()), !dbg !386
  %53 = load i8*, i8** %7, align 8, !dbg !387
  store i8* %53, i8** %9, align 8, !dbg !386
  call void @llvm.dbg.declare(metadata i64* %10, metadata !388, metadata !DIExpression()), !dbg !389
  store i64 0, i64* %10, align 8, !dbg !389
  br label %54, !dbg !390

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !391
  %56 = load i8*, i8** %8, align 8, !dbg !392
  %57 = icmp ult i8* %55, %56, !dbg !393
  br i1 %57, label %58, label %61, !dbg !394

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !395
  %60 = icmp ult i64 %59, 2, !dbg !396
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !397
  br i1 %62, label %63, label %82, !dbg !390

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !398
  %65 = load i16*, i16** %64, align 8, !dbg !398
  %66 = load i8*, i8** %9, align 8, !dbg !398
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !398
  store i8* %67, i8** %9, align 8, !dbg !398
  %68 = load i8, i8* %66, align 1, !dbg !398
  %69 = zext i8 %68 to i32, !dbg !398
  %70 = sext i32 %69 to i64, !dbg !398
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !398
  %72 = load i16, i16* %71, align 2, !dbg !398
  %73 = zext i16 %72 to i32, !dbg !398
  %74 = and i32 %73, 8192, !dbg !398
  %75 = icmp ne i32 %74, 0, !dbg !399
  %76 = xor i1 %75, true, !dbg !399
  %77 = xor i1 %76, true, !dbg !400
  %78 = zext i1 %77 to i32, !dbg !400
  %79 = sext i32 %78 to i64, !dbg !400
  %80 = load i64, i64* %10, align 8, !dbg !401
  %81 = add i64 %80, %79, !dbg !401
  store i64 %81, i64* %10, align 8, !dbg !401
  br label %54, !dbg !390, !llvm.loop !402

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !404
  %84 = icmp eq i64 %83, 2, !dbg !406
  br i1 %84, label %85, label %87, !dbg !407

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !408
  store i8* %86, i8** %8, align 8, !dbg !410
  store i8 0, i8* %6, align 1, !dbg !411
  br label %87, !dbg !412

87:                                               ; preds = %85, %82
  br label %88, !dbg !413

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !414, metadata !DIExpression()), !dbg !415
  %90 = load i8*, i8** %8, align 8, !dbg !416
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #20, !dbg !417
  store i64 %91, i64* %11, align 8, !dbg !415
  call void @llvm.dbg.declare(metadata i8** %12, metadata !418, metadata !DIExpression()), !dbg !419
  %92 = load i8*, i8** %8, align 8, !dbg !420
  %93 = load i64, i64* %11, align 8, !dbg !421
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !422
  store i8* %94, i8** %12, align 8, !dbg !419
  br label %95, !dbg !423

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !424
  %97 = load i8, i8* %96, align 1, !dbg !425
  %98 = zext i8 %97 to i32, !dbg !425
  %99 = icmp ne i32 %98, 0, !dbg !425
  br i1 %99, label %100, label %105, !dbg !426

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !427
  %102 = load i8, i8* %101, align 1, !dbg !428
  %103 = zext i8 %102 to i32, !dbg !428
  %104 = icmp ne i32 %103, 10, !dbg !429
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !430
  br i1 %106, label %107, label %164, !dbg !423

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !431
  %109 = load i8, i8* %108, align 1, !dbg !434
  %110 = zext i8 %109 to i32, !dbg !434
  %111 = icmp eq i32 %110, 45, !dbg !435
  br i1 %111, label %112, label %119, !dbg !436

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !437
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !438
  %115 = load i8, i8* %114, align 1, !dbg !439
  %116 = zext i8 %115 to i32, !dbg !439
  %117 = icmp eq i32 %116, 45, !dbg !440
  br i1 %117, label %118, label %119, !dbg !441

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !442
  br label %119, !dbg !443

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !444
  %121 = load i16*, i16** %120, align 8, !dbg !444
  %122 = load i8*, i8** %12, align 8, !dbg !444
  %123 = load i8, i8* %122, align 1, !dbg !444
  %124 = zext i8 %123 to i32, !dbg !444
  %125 = sext i32 %124 to i64, !dbg !444
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !444
  %127 = load i16, i16* %126, align 2, !dbg !444
  %128 = zext i16 %127 to i32, !dbg !444
  %129 = and i32 %128, 8192, !dbg !444
  %130 = icmp ne i32 %129, 0, !dbg !444
  br i1 %130, label %131, label %161, !dbg !446

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !447
  %133 = load i8, i8* %132, align 1, !dbg !450
  %134 = zext i8 %133 to i32, !dbg !450
  %135 = icmp eq i32 %134, 9, !dbg !451
  br i1 %135, label %149, label %136, !dbg !452

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !453
  %138 = load i16*, i16** %137, align 8, !dbg !453
  %139 = load i8*, i8** %12, align 8, !dbg !453
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !453
  %141 = load i8, i8* %140, align 1, !dbg !453
  %142 = zext i8 %141 to i32, !dbg !453
  %143 = sext i32 %142 to i64, !dbg !453
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !453
  %145 = load i16, i16* %144, align 2, !dbg !453
  %146 = zext i16 %145 to i32, !dbg !453
  %147 = and i32 %146, 8192, !dbg !453
  %148 = icmp ne i32 %147, 0, !dbg !453
  br i1 %148, label %149, label %150, !dbg !454

149:                                              ; preds = %136, %131
  br label %164, !dbg !455

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !456
  %152 = trunc i8 %151 to i1, !dbg !456
  br i1 %152, label %160, label %153, !dbg !458

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !459
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !460
  %156 = load i8, i8* %155, align 1, !dbg !461
  %157 = zext i8 %156 to i32, !dbg !461
  %158 = icmp ne i32 %157, 45, !dbg !462
  br i1 %158, label %159, label %160, !dbg !463

159:                                              ; preds = %153
  br label %164, !dbg !464

160:                                              ; preds = %153, %150
  br label %161, !dbg !465

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !466
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !466
  store i8* %163, i8** %12, align 8, !dbg !466
  br label %95, !dbg !423, !llvm.loop !467

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !469
  %166 = load i8*, i8** %7, align 8, !dbg !469
  %167 = load i8*, i8** %4, align 8, !dbg !469
  %168 = ptrtoint i8* %166 to i64, !dbg !469
  %169 = ptrtoint i8* %167 to i64, !dbg !469
  %170 = sub i64 %168, %169, !dbg !469
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !469
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !469
  call void @llvm.dbg.declare(metadata i8** %13, metadata !470, metadata !DIExpression()), !dbg !471
  %173 = load i8*, i8** %3, align 8, !dbg !472
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)), !dbg !473
  br i1 %174, label %175, label %176, !dbg !473

175:                                              ; preds = %164
  br label %232, !dbg !473

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !474
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)), !dbg !475
  br i1 %178, label %179, label %180, !dbg !475

179:                                              ; preds = %176
  br label %230, !dbg !475

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !476
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)), !dbg !477
  br i1 %182, label %183, label %184, !dbg !477

183:                                              ; preds = %180
  br label %228, !dbg !477

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !478
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)), !dbg !479
  br i1 %186, label %187, label %188, !dbg !479

187:                                              ; preds = %184
  br label %226, !dbg !479

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !480
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)), !dbg !481
  br i1 %190, label %191, label %192, !dbg !481

191:                                              ; preds = %188
  br label %224, !dbg !481

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !482
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)), !dbg !483
  br i1 %194, label %195, label %196, !dbg !483

195:                                              ; preds = %192
  br label %222, !dbg !483

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !484
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !485
  br i1 %198, label %199, label %200, !dbg !485

199:                                              ; preds = %196
  br label %220, !dbg !485

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !486
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !487
  br i1 %202, label %203, label %204, !dbg !487

203:                                              ; preds = %200
  br label %218, !dbg !487

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !488
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !489
  br i1 %206, label %207, label %208, !dbg !489

207:                                              ; preds = %204
  br label %216, !dbg !489

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !490
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)), !dbg !491
  br i1 %210, label %211, label %212, !dbg !491

211:                                              ; preds = %208
  br label %214, !dbg !491

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !492
  br label %214, !dbg !491

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !491
  br label %216, !dbg !489

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !489
  br label %218, !dbg !487

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !487
  br label %220, !dbg !485

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !485
  br label %222, !dbg !483

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !483
  br label %224, !dbg !481

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !481
  br label %226, !dbg !479

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !479
  br label %228, !dbg !477

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !477
  br label %230, !dbg !475

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !475
  br label %232, !dbg !473

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !473
  store i8* %233, i8** %13, align 8, !dbg !471
  %234 = load i8*, i8** %8, align 8, !dbg !493
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i64 noundef 6) #20, !dbg !493
  %236 = icmp eq i32 %235, 0, !dbg !493
  br i1 %236, label %241, label %237, !dbg !495

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !496
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i64 noundef 9) #20, !dbg !496
  %240 = icmp eq i32 %239, 0, !dbg !496
  br i1 %240, label %241, label %248, !dbg !497

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !498
  %243 = load i8*, i8** %13, align 8, !dbg !500
  %244 = load i64, i64* %11, align 8, !dbg !501
  %245 = trunc i64 %244 to i32, !dbg !502
  %246 = load i8*, i8** %8, align 8, !dbg !503
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !504
  br label %254, !dbg !505

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !506
  %250 = load i64, i64* %11, align 8, !dbg !508
  %251 = trunc i64 %250 to i32, !dbg !509
  %252 = load i8*, i8** %8, align 8, !dbg !510
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !511
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !512
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !512
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !513
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !513
  %259 = load i8*, i8** %7, align 8, !dbg !514
  %260 = load i8*, i8** %12, align 8, !dbg !514
  %261 = load i8*, i8** %7, align 8, !dbg !514
  %262 = ptrtoint i8* %260 to i64, !dbg !514
  %263 = ptrtoint i8* %261 to i64, !dbg !514
  %264 = sub i64 %262, %263, !dbg !514
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !514
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !514
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !515
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !515
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !516
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !516
  %271 = load i8*, i8** %12, align 8, !dbg !517
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !517
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !517
  br label %274, !dbg !518

274:                                              ; preds = %254, %33
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !519 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !524, metadata !DIExpression()), !dbg !533
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !533
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !533
  call void @llvm.dbg.declare(metadata i8** %4, metadata !534, metadata !DIExpression()), !dbg !535
  %9 = load i8*, i8** %2, align 8, !dbg !536
  store i8* %9, i8** %4, align 8, !dbg !535
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !537, metadata !DIExpression()), !dbg !539
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !540
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !539
  br label %11, !dbg !541

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !542
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !543
  %14 = load i8*, i8** %13, align 8, !dbg !543
  %15 = icmp ne i8* %14, null, !dbg !542
  br i1 %15, label %16, label %23, !dbg !544

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !545
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !546
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !547
  %20 = load i8*, i8** %19, align 8, !dbg !547
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !548
  %22 = xor i1 %21, true, !dbg !549
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !550
  br i1 %24, label %25, label %28, !dbg !541

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !551
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !551
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !551
  br label %11, !dbg !541, !llvm.loop !552

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !553
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !555
  %31 = load i8*, i8** %30, align 8, !dbg !555
  %32 = icmp ne i8* %31, null, !dbg !553
  br i1 %32, label %33, label %37, !dbg !556

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !557
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !558
  %36 = load i8*, i8** %35, align 8, !dbg !558
  store i8* %36, i8** %4, align 8, !dbg !559
  br label %37, !dbg !560

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !561
  call void @llvm.dbg.declare(metadata i8** %6, metadata !562, metadata !DIExpression()), !dbg !563
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !564
  store i8* %38, i8** %6, align 8, !dbg !563
  %39 = load i8*, i8** %6, align 8, !dbg !565
  %40 = icmp ne i8* %39, null, !dbg !565
  br i1 %40, label %41, label %49, !dbg !567

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !568
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i64 noundef 3) #20, !dbg !568
  %44 = icmp ne i32 %43, 0, !dbg !568
  br i1 %44, label %45, label %49, !dbg !569

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.47, i64 0, i64 0)) #18, !dbg !570
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !570
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !570
  br label %49, !dbg !572

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !573, metadata !DIExpression()), !dbg !574
  %50 = load i8*, i8** %2, align 8, !dbg !575
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)), !dbg !576
  br i1 %51, label %52, label %53, !dbg !576

52:                                               ; preds = %49
  br label %55, !dbg !576

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !577
  br label %55, !dbg !576

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !576
  store i8* %56, i8** %7, align 8, !dbg !574
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0)) #18, !dbg !578
  %58 = load i8*, i8** %7, align 8, !dbg !579
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef %58), !dbg !580
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i64 0, i64 0)) #18, !dbg !581
  %61 = load i8*, i8** %4, align 8, !dbg !582
  %62 = load i8*, i8** %4, align 8, !dbg !583
  %63 = load i8*, i8** %2, align 8, !dbg !584
  %64 = icmp eq i8* %62, %63, !dbg !585
  %65 = zext i1 %64 to i64, !dbg !583
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !583
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !586
  ret void, !dbg !587
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !30 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !588, metadata !DIExpression()), !dbg !589
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata i8* %6, metadata !592, metadata !DIExpression()), !dbg !593
  store i8 0, i8* %6, align 1, !dbg !593
  %10 = load i8**, i8*** %5, align 8, !dbg !594
  %11 = getelementptr inbounds i8*, i8** %10, i64 0, !dbg !594
  %12 = load i8*, i8** %11, align 8, !dbg !594
  call void @set_program_name(i8* noundef %12), !dbg !595
  %13 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !596
  %14 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !597
  %15 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !598
  %16 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !599
  br label %17, !dbg !600

17:                                               ; preds = %2, %34
  call void @llvm.dbg.declare(metadata i32* %7, metadata !601, metadata !DIExpression()), !dbg !603
  %18 = load i32, i32* %4, align 4, !dbg !604
  %19 = load i8**, i8*** %5, align 8, !dbg !605
  %20 = call i32 @getopt_long(i32 noundef %18, i8** noundef %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !606
  store i32 %20, i32* %7, align 4, !dbg !603
  %21 = load i32, i32* %7, align 4, !dbg !607
  %22 = icmp eq i32 %21, -1, !dbg !609
  br i1 %22, label %23, label %24, !dbg !610

23:                                               ; preds = %17
  br label %35, !dbg !611

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4, !dbg !612
  switch i32 %25, label %33 [
    i32 122, label %26
    i32 -2, label %27
    i32 -3, label %28
  ], !dbg !613

26:                                               ; preds = %24
  store i8 1, i8* %6, align 1, !dbg !614
  br label %34, !dbg !616

27:                                               ; preds = %24
  call void @usage(i32 noundef 0) #22, !dbg !617
  unreachable, !dbg !617

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618
  %30 = load i8*, i8** @Version, align 8, !dbg !618
  %31 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)), !dbg !618
  %32 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0)), !dbg !618
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %30, i8* noundef %31, i8* noundef %32, i8* noundef null), !dbg !618
  call void @exit(i32 noundef 0) #19, !dbg !618
  unreachable, !dbg !618

33:                                               ; preds = %24
  call void @usage(i32 noundef 1) #22, !dbg !619
  unreachable, !dbg !619

34:                                               ; preds = %26
  br label %17, !dbg !600, !llvm.loop !620

35:                                               ; preds = %23
  %36 = load i32, i32* %4, align 4, !dbg !622
  %37 = load i32, i32* @optind, align 4, !dbg !624
  %38 = add nsw i32 %37, 1, !dbg !625
  %39 = icmp slt i32 %36, %38, !dbg !626
  br i1 %39, label %40, label %42, !dbg !627

40:                                               ; preds = %35
  %41 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !628
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %41), !dbg !628
  call void @usage(i32 noundef 1) #22, !dbg !630
  unreachable, !dbg !630

42:                                               ; preds = %35
  br label %43, !dbg !631

43:                                               ; preds = %68, %42
  %44 = load i32, i32* @optind, align 4, !dbg !632
  %45 = load i32, i32* %4, align 4, !dbg !635
  %46 = icmp slt i32 %44, %45, !dbg !636
  br i1 %46, label %47, label %71, !dbg !637

47:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata i8** %8, metadata !638, metadata !DIExpression()), !dbg !640
  %48 = load i8**, i8*** %5, align 8, !dbg !641
  %49 = load i32, i32* @optind, align 4, !dbg !642
  %50 = sext i32 %49 to i64, !dbg !641
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50, !dbg !641
  %52 = load i8*, i8** %51, align 8, !dbg !641
  store i8* %52, i8** %8, align 8, !dbg !640
  call void @llvm.dbg.declare(metadata i64* %9, metadata !643, metadata !DIExpression()), !dbg !644
  %53 = load i8*, i8** %8, align 8, !dbg !645
  %54 = call i64 @dir_len(i8* noundef %53) #20, !dbg !646
  store i64 %54, i64* %9, align 8, !dbg !644
  %55 = load i64, i64* %9, align 8, !dbg !647
  %56 = icmp ne i64 %55, 0, !dbg !647
  br i1 %56, label %58, label %57, !dbg !649

57:                                               ; preds = %47
  store i8* @main.dot, i8** %8, align 8, !dbg !650
  store i64 1, i64* %9, align 8, !dbg !652
  br label %58, !dbg !653

58:                                               ; preds = %57, %47
  %59 = load i8*, i8** %8, align 8, !dbg !654
  %60 = load i64, i64* %9, align 8, !dbg !654
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !654
  %62 = call i64 @fwrite_unlocked(i8* noundef %59, i64 noundef 1, i64 noundef %60, %struct._IO_FILE* noundef %61), !dbg !654
  %63 = load i8, i8* %6, align 1, !dbg !655
  %64 = trunc i8 %63 to i1, !dbg !655
  %65 = zext i1 %64 to i64, !dbg !655
  %66 = select i1 %64, i32 0, i32 10, !dbg !655
  %67 = call i32 @putchar_unlocked(i32 noundef %66), !dbg !655
  br label %68, !dbg !656

68:                                               ; preds = %58
  %69 = load i32, i32* @optind, align 4, !dbg !657
  %70 = add nsw i32 %69, 1, !dbg !657
  store i32 %70, i32* @optind, align 4, !dbg !657
  br label %43, !dbg !658, !llvm.loop !659

71:                                               ; preds = %43
  ret i32 0, !dbg !661
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

declare i32 @putchar_unlocked(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !662 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !663, metadata !DIExpression()), !dbg !664
  %3 = load i8*, i8** %2, align 8, !dbg !665
  store i8* %3, i8** @file_name, align 8, !dbg !666
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !668 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !671, metadata !DIExpression()), !dbg !672
  %4 = load i8, i8* %2, align 1, !dbg !673
  %5 = trunc i8 %4 to i1, !dbg !673
  %6 = zext i1 %5 to i8, !dbg !674
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !674
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !676 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !677
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !679
  %4 = icmp ne i32 %3, 0, !dbg !680
  br i1 %4, label %5, label %28, !dbg !681

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !682
  %7 = trunc i8 %6 to i1, !dbg !682
  br i1 %7, label %8, label %12, !dbg !683

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !684
  %10 = load i32, i32* %9, align 4, !dbg !684
  %11 = icmp eq i32 %10, 32, !dbg !685
  br i1 %11, label %28, label %12, !dbg !686

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !687, metadata !DIExpression()), !dbg !689
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.58, i64 0, i64 0)) #18, !dbg !690
  store i8* %13, i8** %1, align 8, !dbg !689
  %14 = load i8*, i8** @file_name, align 8, !dbg !691
  %15 = icmp ne i8* %14, null, !dbg !691
  br i1 %15, label %16, label %22, !dbg !693

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !694
  %18 = load i32, i32* %17, align 4, !dbg !694
  %19 = load i8*, i8** @file_name, align 8, !dbg !694
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !694
  %21 = load i8*, i8** %1, align 8, !dbg !694
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.59, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !694
  br label %26, !dbg !694

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !695
  %24 = load i32, i32* %23, align 4, !dbg !695
  %25 = load i8*, i8** %1, align 8, !dbg !695
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.60, i64 0, i64 0), i8* noundef %25), !dbg !695
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !696
  call void @_exit(i32 noundef %27) #22, !dbg !697
  unreachable, !dbg !697

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !698
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !700
  %31 = icmp ne i32 %30, 0, !dbg !701
  br i1 %31, label %32, label %34, !dbg !702

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !703
  call void @_exit(i32 noundef %33) #22, !dbg !704
  unreachable, !dbg !704

34:                                               ; preds = %28
  ret void, !dbg !705
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @dir_len(i8* noundef %0) #10 !dbg !706 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !709, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.declare(metadata i64* %3, metadata !711, metadata !DIExpression()), !dbg !712
  %5 = load i8*, i8** %2, align 8, !dbg !713
  store i64 0, i64* %3, align 8, !dbg !712
  %6 = load i64, i64* %3, align 8, !dbg !714
  %7 = icmp ne i64 %6, 0, !dbg !715
  br i1 %7, label %8, label %9, !dbg !714

8:                                                ; preds = %1
  br label %17, !dbg !714

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8, !dbg !716
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !716
  %12 = load i8, i8* %11, align 1, !dbg !716
  %13 = zext i8 %12 to i32, !dbg !716
  %14 = icmp eq i32 %13, 47, !dbg !716
  %15 = zext i1 %14 to i64, !dbg !716
  %16 = select i1 %14, i32 1, i32 0, !dbg !716
  br label %17, !dbg !714

17:                                               ; preds = %9, %8
  %18 = phi i32 [ 0, %8 ], [ %16, %9 ], !dbg !714
  %19 = sext i32 %18 to i64, !dbg !717
  %20 = load i64, i64* %3, align 8, !dbg !718
  %21 = add i64 %20, %19, !dbg !718
  store i64 %21, i64* %3, align 8, !dbg !718
  call void @llvm.dbg.declare(metadata i64* %4, metadata !719, metadata !DIExpression()), !dbg !720
  %22 = load i8*, i8** %2, align 8, !dbg !721
  %23 = call i8* @last_component(i8* noundef %22) #20, !dbg !723
  %24 = load i8*, i8** %2, align 8, !dbg !724
  %25 = ptrtoint i8* %23 to i64, !dbg !725
  %26 = ptrtoint i8* %24 to i64, !dbg !725
  %27 = sub i64 %25, %26, !dbg !725
  store i64 %27, i64* %4, align 8, !dbg !726
  br label %28, !dbg !727

28:                                               ; preds = %42, %17
  %29 = load i64, i64* %3, align 8, !dbg !728
  %30 = load i64, i64* %4, align 8, !dbg !730
  %31 = icmp ult i64 %29, %30, !dbg !731
  br i1 %31, label %32, label %45, !dbg !732

32:                                               ; preds = %28
  %33 = load i8*, i8** %2, align 8, !dbg !733
  %34 = load i64, i64* %4, align 8, !dbg !733
  %35 = sub i64 %34, 1, !dbg !733
  %36 = getelementptr inbounds i8, i8* %33, i64 %35, !dbg !733
  %37 = load i8, i8* %36, align 1, !dbg !733
  %38 = zext i8 %37 to i32, !dbg !733
  %39 = icmp eq i32 %38, 47, !dbg !733
  br i1 %39, label %41, label %40, !dbg !735

40:                                               ; preds = %32
  br label %45, !dbg !736

41:                                               ; preds = %32
  br label %42, !dbg !733

42:                                               ; preds = %41
  %43 = load i64, i64* %4, align 8, !dbg !737
  %44 = add i64 %43, -1, !dbg !737
  store i64 %44, i64* %4, align 8, !dbg !737
  br label %28, !dbg !738, !llvm.loop !739

45:                                               ; preds = %40, %28
  %46 = load i64, i64* %4, align 8, !dbg !741
  ret i64 %46, !dbg !742
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @mdir_name(i8* noundef %0) #4 !dbg !743 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !746, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.declare(metadata i64* %4, metadata !748, metadata !DIExpression()), !dbg !749
  %7 = load i8*, i8** %3, align 8, !dbg !750
  %8 = call i64 @dir_len(i8* noundef %7) #20, !dbg !751
  store i64 %8, i64* %4, align 8, !dbg !749
  call void @llvm.dbg.declare(metadata i8* %5, metadata !752, metadata !DIExpression()), !dbg !753
  %9 = load i64, i64* %4, align 8, !dbg !754
  %10 = icmp eq i64 %9, 0, !dbg !755
  br i1 %10, label %12, label %11, !dbg !756

11:                                               ; preds = %1
  br label %12, !dbg !756

12:                                               ; preds = %11, %1
  %13 = phi i1 [ true, %1 ], [ false, %11 ]
  %14 = zext i1 %13 to i8, !dbg !753
  store i8 %14, i8* %5, align 1, !dbg !753
  call void @llvm.dbg.declare(metadata i8** %6, metadata !757, metadata !DIExpression()), !dbg !758
  %15 = load i64, i64* %4, align 8, !dbg !759
  %16 = load i8, i8* %5, align 1, !dbg !760
  %17 = trunc i8 %16 to i1, !dbg !760
  %18 = zext i1 %17 to i64, !dbg !760
  %19 = add i64 %15, %18, !dbg !761
  %20 = add i64 %19, 1, !dbg !762
  %21 = call noalias i8* @malloc(i64 noundef %20) #18, !dbg !763
  store i8* %21, i8** %6, align 8, !dbg !758
  %22 = load i8*, i8** %6, align 8, !dbg !764
  %23 = icmp ne i8* %22, null, !dbg !764
  br i1 %23, label %25, label %24, !dbg !766

24:                                               ; preds = %12
  store i8* null, i8** %2, align 8, !dbg !767
  br label %41, !dbg !767

25:                                               ; preds = %12
  %26 = load i8*, i8** %6, align 8, !dbg !768
  %27 = load i8*, i8** %3, align 8, !dbg !769
  %28 = load i64, i64* %4, align 8, !dbg !770
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %27, i64 %28, i1 false), !dbg !771
  %29 = load i8, i8* %5, align 1, !dbg !772
  %30 = trunc i8 %29 to i1, !dbg !772
  br i1 %30, label %31, label %36, !dbg !774

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8, !dbg !775
  %33 = load i64, i64* %4, align 8, !dbg !776
  %34 = add i64 %33, 1, !dbg !776
  store i64 %34, i64* %4, align 8, !dbg !776
  %35 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !775
  store i8 46, i8* %35, align 1, !dbg !777
  br label %36, !dbg !775

36:                                               ; preds = %31, %25
  %37 = load i8*, i8** %6, align 8, !dbg !778
  %38 = load i64, i64* %4, align 8, !dbg !779
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !778
  store i8 0, i8* %39, align 1, !dbg !780
  %40 = load i8*, i8** %6, align 8, !dbg !781
  store i8* %40, i8** %2, align 8, !dbg !782
  br label %41, !dbg !782

41:                                               ; preds = %36, %24
  %42 = load i8*, i8** %2, align 8, !dbg !783
  ret i8* %42, !dbg !783
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #11 !dbg !784 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !787, metadata !DIExpression()), !dbg !788
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !789, metadata !DIExpression()), !dbg !788
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !790, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !791, metadata !DIExpression()), !dbg !788
  call void @flush_stdout(), !dbg !792
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !793
  %10 = icmp ne void ()* %9, null, !dbg !793
  br i1 %10, label %11, label %13, !dbg !795

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !796
  call void %12(), !dbg !797
  br label %17, !dbg !797

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !798
  %15 = call i8* @getprogname() #20, !dbg !800
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef %15), !dbg !801
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !802
  %19 = load i32, i32* %6, align 4, !dbg !802
  %20 = load i8*, i8** %7, align 8, !dbg !802
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !802
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !802
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !802
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !802
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !804 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !805, metadata !DIExpression()), !dbg !806
  store i32 1, i32* %1, align 4, !dbg !807
  %2 = load i32, i32* %1, align 4, !dbg !808
  %3 = icmp sle i32 0, %2, !dbg !810
  br i1 %3, label %4, label %11, !dbg !811

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !812
  %6 = call i32 @is_open(i32 noundef %5), !dbg !813
  %7 = icmp ne i32 %6, 0, !dbg !813
  br i1 %7, label %8, label %11, !dbg !814

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !815
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !815
  br label %11, !dbg !815

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !816
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !817 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !818, metadata !DIExpression()), !dbg !819
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !820, metadata !DIExpression()), !dbg !819
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !821, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !822, metadata !DIExpression()), !dbg !819
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !823
  %10 = load i8*, i8** %7, align 8, !dbg !824
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !825
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !825
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !825
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !825
  %14 = load i32, i32* @error_message_count, align 4, !dbg !826
  %15 = add i32 %14, 1, !dbg !826
  store i32 %15, i32* @error_message_count, align 4, !dbg !826
  %16 = load i32, i32* %6, align 4, !dbg !827
  %17 = icmp ne i32 %16, 0, !dbg !827
  br i1 %17, label %18, label %20, !dbg !829

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !830
  call void @print_errno_message(i32 noundef %19), !dbg !831
  br label %20, !dbg !831

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !832
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !832
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !833
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !833
  %25 = load i32, i32* %5, align 4, !dbg !834
  %26 = icmp ne i32 %25, 0, !dbg !834
  br i1 %26, label %27, label %29, !dbg !836

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !837
  call void @exit(i32 noundef %28) #19, !dbg !838
  unreachable, !dbg !838

29:                                               ; preds = %20
  ret void, !dbg !839
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !840 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !841, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.declare(metadata i8** %3, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !845, metadata !DIExpression()), !dbg !849
  %5 = load i32, i32* %2, align 4, !dbg !850
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !851
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !852
  store i8* %7, i8** %3, align 8, !dbg !853
  %8 = load i8*, i8** %3, align 8, !dbg !854
  %9 = icmp ne i8* %8, null, !dbg !854
  br i1 %9, label %12, label %10, !dbg !856

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.65, i64 0, i64 0)) #18, !dbg !857
  store i8* %11, i8** %3, align 8, !dbg !858
  br label %12, !dbg !859

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !860
  %14 = load i8*, i8** %3, align 8, !dbg !861
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.66, i64 0, i64 0), i8* noundef %14), !dbg !862
  ret void, !dbg !863
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !864 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !867, metadata !DIExpression()), !dbg !868
  %3 = load i32, i32* %2, align 4, !dbg !869
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !870
  %5 = icmp sle i32 0, %4, !dbg !871
  %6 = zext i1 %5 to i32, !dbg !871
  ret i32 %6, !dbg !872
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !873 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !876, metadata !DIExpression()), !dbg !877
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !878, metadata !DIExpression()), !dbg !879
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !880, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !882, metadata !DIExpression()), !dbg !883
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !884
  call void @llvm.va_start(i8* %9), !dbg !884
  %10 = load i32, i32* %4, align 4, !dbg !885
  %11 = load i32, i32* %5, align 4, !dbg !885
  %12 = load i8*, i8** %6, align 8, !dbg !885
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !885
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !885
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !885
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !885
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !886
  call void @llvm.va_end(i8* %15), !dbg !886
  ret void, !dbg !887
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #11 !dbg !76 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !888, metadata !DIExpression()), !dbg !889
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !890, metadata !DIExpression()), !dbg !889
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !891, metadata !DIExpression()), !dbg !889
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !892, metadata !DIExpression()), !dbg !889
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !893, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !894, metadata !DIExpression()), !dbg !889
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !895
  %14 = icmp ne i32 %13, 0, !dbg !895
  br i1 %14, label %15, label %38, !dbg !897

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !898
  %17 = load i32, i32* %10, align 4, !dbg !901
  %18 = icmp eq i32 %16, %17, !dbg !902
  br i1 %18, label %19, label %35, !dbg !903

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !904
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !905
  %22 = icmp eq i8* %20, %21, !dbg !906
  br i1 %22, label %34, label %23, !dbg !907

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !908
  %25 = icmp ne i8* %24, null, !dbg !909
  br i1 %25, label %26, label %35, !dbg !910

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !911
  %28 = icmp ne i8* %27, null, !dbg !912
  br i1 %28, label %29, label %35, !dbg !913

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !914
  %31 = load i8*, i8** %9, align 8, !dbg !915
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !916
  %33 = icmp eq i32 %32, 0, !dbg !917
  br i1 %33, label %34, label %35, !dbg !918

34:                                               ; preds = %29, %19
  br label %61, !dbg !919

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !920
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !921
  %37 = load i32, i32* %10, align 4, !dbg !922
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !923
  br label %38, !dbg !924

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !925
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !926
  %40 = icmp ne void ()* %39, null, !dbg !926
  br i1 %40, label %41, label %43, !dbg !928

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !929
  call void %42(), !dbg !930
  br label %47, !dbg !930

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !931
  %45 = call i8* @getprogname() #20, !dbg !933
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.69, i64 0, i64 0), i8* noundef %45), !dbg !934
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !935
  %49 = load i8*, i8** %9, align 8, !dbg !936
  %50 = icmp ne i8* %49, null, !dbg !937
  %51 = zext i1 %50 to i64, !dbg !936
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.71, i64 0, i64 0), !dbg !936
  %53 = load i8*, i8** %9, align 8, !dbg !938
  %54 = load i32, i32* %10, align 4, !dbg !939
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !940
  %56 = load i32, i32* %7, align 4, !dbg !941
  %57 = load i32, i32* %8, align 4, !dbg !941
  %58 = load i8*, i8** %11, align 8, !dbg !941
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !941
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !941
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !941
  br label %61, !dbg !942

61:                                               ; preds = %47, %34
  ret void, !dbg !942
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !943 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !946, metadata !DIExpression()), !dbg !947
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !948, metadata !DIExpression()), !dbg !949
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !950, metadata !DIExpression()), !dbg !951
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !952, metadata !DIExpression()), !dbg !953
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !954, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !956, metadata !DIExpression()), !dbg !957
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !958
  call void @llvm.va_start(i8* %13), !dbg !958
  %14 = load i32, i32* %6, align 4, !dbg !959
  %15 = load i32, i32* %7, align 4, !dbg !959
  %16 = load i8*, i8** %8, align 8, !dbg !959
  %17 = load i32, i32* %9, align 4, !dbg !959
  %18 = load i8*, i8** %10, align 8, !dbg !959
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !959
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !959
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !959
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !959
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !960
  call void @llvm.va_end(i8* %21), !dbg !960
  ret void, !dbg !961
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #10 !dbg !962 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !965
  ret i8* %1, !dbg !966
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !967 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !968, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.declare(metadata i8** %3, metadata !970, metadata !DIExpression()), !dbg !971
  %5 = load i8*, i8** %2, align 8, !dbg !972
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !973
  store i8* %6, i8** %3, align 8, !dbg !971
  call void @llvm.dbg.declare(metadata i8** %4, metadata !974, metadata !DIExpression()), !dbg !975
  %7 = load i8*, i8** %3, align 8, !dbg !976
  %8 = icmp ne i8* %7, null, !dbg !976
  br i1 %8, label %9, label %12, !dbg !976

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !977
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !978
  br label %14, !dbg !976

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !979
  br label %14, !dbg !976

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !976
  store i8* %15, i8** %4, align 8, !dbg !975
  %16 = load i8*, i8** %4, align 8, !dbg !980
  %17 = load i8*, i8** %2, align 8, !dbg !982
  %18 = ptrtoint i8* %16 to i64, !dbg !983
  %19 = ptrtoint i8* %17 to i64, !dbg !983
  %20 = sub i64 %18, %19, !dbg !983
  %21 = icmp sle i64 7, %20, !dbg !984
  br i1 %21, label %22, label %36, !dbg !985

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !986
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !987
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7), !dbg !988
  br i1 %25, label %26, label %36, !dbg !989

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !990
  store i8* %27, i8** %2, align 8, !dbg !992
  %28 = load i8*, i8** %4, align 8, !dbg !993
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.81, i64 0, i64 0), i64 noundef 3) #20, !dbg !995
  %30 = icmp eq i32 %29, 0, !dbg !996
  br i1 %30, label %31, label %35, !dbg !997

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !998
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !998
  store i8* %33, i8** %4, align 8, !dbg !998
  %34 = load i8*, i8** %4, align 8, !dbg !1000
  store i8* %34, i8** %2, align 8, !dbg !1001
  br label %35, !dbg !1002

35:                                               ; preds = %31, %26
  br label %36, !dbg !1003

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1004
  store i8* %37, i8** @program_name, align 8, !dbg !1005
  %38 = load i8*, i8** %2, align 8, !dbg !1006
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1007
  %39 = load i8*, i8** %4, align 8, !dbg !1008
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1009
  ret void, !dbg !1010
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !110 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1011, metadata !DIExpression()), !dbg !1012
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1013, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1015, metadata !DIExpression()), !dbg !1016
  %9 = load i8*, i8** %4, align 8, !dbg !1017
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1018
  store i8* %10, i8** %6, align 8, !dbg !1016
  %11 = load i8*, i8** %6, align 8, !dbg !1019
  %12 = load i8*, i8** %4, align 8, !dbg !1021
  %13 = icmp ne i8* %11, %12, !dbg !1022
  br i1 %13, label %14, label %16, !dbg !1023

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1024
  store i8* %15, i8** %3, align 8, !dbg !1025
  br label %26, !dbg !1025

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1026, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1033, metadata !DIExpression()), !dbg !1044
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1045
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1046
  %18 = icmp eq i64 %17, 2, !dbg !1048
  br i1 %18, label %19, label %24, !dbg !1049

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1050
  %21 = icmp eq i32 %20, 2047, !dbg !1051
  br i1 %21, label %22, label %24, !dbg !1052

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1053
  store i8* %23, i8** %3, align 8, !dbg !1054
  br label %26, !dbg !1054

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1055
  store i8* %25, i8** %3, align 8, !dbg !1056
  br label %26, !dbg !1056

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1057
  ret i8* %27, !dbg !1057
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1058 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1062, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1064, metadata !DIExpression()), !dbg !1065
  %5 = call i32* @__errno_location() #21, !dbg !1066
  %6 = load i32, i32* %5, align 4, !dbg !1066
  store i32 %6, i32* %3, align 4, !dbg !1065
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1067, metadata !DIExpression()), !dbg !1068
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1069
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1069
  br i1 %8, label %9, label %11, !dbg !1069

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1070
  br label %12, !dbg !1069

11:                                               ; preds = %1
  br label %12, !dbg !1069

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1069
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1069
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1071
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1071
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1068
  %17 = load i32, i32* %3, align 4, !dbg !1072
  %18 = call i32* @__errno_location() #21, !dbg !1073
  store i32 %17, i32* %18, align 4, !dbg !1074
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1075
  ret %struct.quoting_options* %19, !dbg !1076
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1077 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1082, metadata !DIExpression()), !dbg !1083
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1084
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1084
  br i1 %4, label %5, label %7, !dbg !1084

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1085
  br label %8, !dbg !1084

7:                                                ; preds = %1
  br label %8, !dbg !1084

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1084
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1086
  %11 = load i32, i32* %10, align 8, !dbg !1086
  ret i32 %11, !dbg !1087
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1088 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1091, metadata !DIExpression()), !dbg !1092
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1093, metadata !DIExpression()), !dbg !1094
  %5 = load i32, i32* %4, align 4, !dbg !1095
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1096
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1096
  br i1 %7, label %8, label %10, !dbg !1096

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1097
  br label %11, !dbg !1096

10:                                               ; preds = %2
  br label %11, !dbg !1096

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1096
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1098
  store i32 %5, i32* %13, align 8, !dbg !1099
  ret void, !dbg !1100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1101 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1104, metadata !DIExpression()), !dbg !1105
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1106, metadata !DIExpression()), !dbg !1107
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1110, metadata !DIExpression()), !dbg !1111
  %11 = load i8, i8* %5, align 1, !dbg !1112
  store i8 %11, i8* %7, align 1, !dbg !1111
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1113, metadata !DIExpression()), !dbg !1115
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1116
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1116
  br i1 %13, label %14, label %16, !dbg !1116

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1117
  br label %17, !dbg !1116

16:                                               ; preds = %3
  br label %17, !dbg !1116

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1116
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1118
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1119
  %21 = load i8, i8* %7, align 1, !dbg !1120
  %22 = zext i8 %21 to i64, !dbg !1120
  %23 = udiv i64 %22, 32, !dbg !1121
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1122
  store i32* %24, i32** %8, align 8, !dbg !1115
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1123, metadata !DIExpression()), !dbg !1124
  %25 = load i8, i8* %7, align 1, !dbg !1125
  %26 = zext i8 %25 to i64, !dbg !1125
  %27 = urem i64 %26, 32, !dbg !1126
  %28 = trunc i64 %27 to i32, !dbg !1125
  store i32 %28, i32* %9, align 4, !dbg !1124
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1127, metadata !DIExpression()), !dbg !1128
  %29 = load i32*, i32** %8, align 8, !dbg !1129
  %30 = load i32, i32* %29, align 4, !dbg !1130
  %31 = load i32, i32* %9, align 4, !dbg !1131
  %32 = lshr i32 %30, %31, !dbg !1132
  %33 = and i32 %32, 1, !dbg !1133
  store i32 %33, i32* %10, align 4, !dbg !1128
  %34 = load i32, i32* %6, align 4, !dbg !1134
  %35 = and i32 %34, 1, !dbg !1135
  %36 = load i32, i32* %10, align 4, !dbg !1136
  %37 = xor i32 %35, %36, !dbg !1137
  %38 = load i32, i32* %9, align 4, !dbg !1138
  %39 = shl i32 %37, %38, !dbg !1139
  %40 = load i32*, i32** %8, align 8, !dbg !1140
  %41 = load i32, i32* %40, align 4, !dbg !1141
  %42 = xor i32 %41, %39, !dbg !1141
  store i32 %42, i32* %40, align 4, !dbg !1141
  %43 = load i32, i32* %10, align 4, !dbg !1142
  ret i32 %43, !dbg !1143
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1144 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1147, metadata !DIExpression()), !dbg !1148
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1149, metadata !DIExpression()), !dbg !1150
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1151
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1151
  br i1 %7, label %9, label %8, !dbg !1153

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1154
  br label %9, !dbg !1155

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1156, metadata !DIExpression()), !dbg !1157
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1158
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1159
  %12 = load i32, i32* %11, align 4, !dbg !1159
  store i32 %12, i32* %5, align 4, !dbg !1157
  %13 = load i32, i32* %4, align 4, !dbg !1160
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1161
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1162
  store i32 %13, i32* %15, align 4, !dbg !1163
  %16 = load i32, i32* %5, align 4, !dbg !1164
  ret i32 %16, !dbg !1165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1166 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1169, metadata !DIExpression()), !dbg !1170
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1171, metadata !DIExpression()), !dbg !1172
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1173, metadata !DIExpression()), !dbg !1174
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1175
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1175
  br i1 %8, label %10, label %9, !dbg !1177

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1178
  br label %10, !dbg !1179

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1180
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1181
  store i32 10, i32* %12, align 8, !dbg !1182
  %13 = load i8*, i8** %5, align 8, !dbg !1183
  %14 = icmp ne i8* %13, null, !dbg !1183
  br i1 %14, label %15, label %18, !dbg !1185

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1186
  %17 = icmp ne i8* %16, null, !dbg !1186
  br i1 %17, label %19, label %18, !dbg !1187

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1188
  unreachable, !dbg !1188

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1189
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1190
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1191
  store i8* %20, i8** %22, align 8, !dbg !1192
  %23 = load i8*, i8** %6, align 8, !dbg !1193
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1194
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1195
  store i8* %23, i8** %25, align 8, !dbg !1196
  ret void, !dbg !1197
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1198 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1201, metadata !DIExpression()), !dbg !1202
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1203, metadata !DIExpression()), !dbg !1204
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1205, metadata !DIExpression()), !dbg !1206
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1207, metadata !DIExpression()), !dbg !1208
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1209, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1211, metadata !DIExpression()), !dbg !1212
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1213
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1213
  br i1 %15, label %16, label %18, !dbg !1213

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1214
  br label %19, !dbg !1213

18:                                               ; preds = %5
  br label %19, !dbg !1213

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1213
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1212
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1215, metadata !DIExpression()), !dbg !1216
  %21 = call i32* @__errno_location() #21, !dbg !1217
  %22 = load i32, i32* %21, align 4, !dbg !1217
  store i32 %22, i32* %12, align 4, !dbg !1216
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1218, metadata !DIExpression()), !dbg !1219
  %23 = load i8*, i8** %6, align 8, !dbg !1220
  %24 = load i64, i64* %7, align 8, !dbg !1221
  %25 = load i8*, i8** %8, align 8, !dbg !1222
  %26 = load i64, i64* %9, align 8, !dbg !1223
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1224
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1225
  %29 = load i32, i32* %28, align 8, !dbg !1225
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1226
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1227
  %32 = load i32, i32* %31, align 4, !dbg !1227
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1228
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1229
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1228
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1230
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1231
  %38 = load i8*, i8** %37, align 8, !dbg !1231
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1232
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1233
  %41 = load i8*, i8** %40, align 8, !dbg !1233
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1234
  store i64 %42, i64* %13, align 8, !dbg !1219
  %43 = load i32, i32* %12, align 4, !dbg !1235
  %44 = call i32* @__errno_location() #21, !dbg !1236
  store i32 %43, i32* %44, align 4, !dbg !1237
  %45 = load i64, i64* %13, align 8, !dbg !1238
  ret i64 %45, !dbg !1239
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1240 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1247, metadata !DIExpression()), !dbg !1248
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1249, metadata !DIExpression()), !dbg !1250
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1251, metadata !DIExpression()), !dbg !1252
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1253, metadata !DIExpression()), !dbg !1254
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1255, metadata !DIExpression()), !dbg !1256
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1257, metadata !DIExpression()), !dbg !1258
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1259, metadata !DIExpression()), !dbg !1260
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1261, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1263, metadata !DIExpression()), !dbg !1264
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1265
  %45 = icmp eq i64 %44, 1, !dbg !1266
  %46 = zext i1 %45 to i8, !dbg !1264
  store i8 %46, i8* %20, align 1, !dbg !1264
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1267, metadata !DIExpression()), !dbg !1268
  store i64 0, i64* %21, align 8, !dbg !1268
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1269, metadata !DIExpression()), !dbg !1270
  store i64 0, i64* %22, align 8, !dbg !1270
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1271, metadata !DIExpression()), !dbg !1272
  store i8* null, i8** %23, align 8, !dbg !1272
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1273, metadata !DIExpression()), !dbg !1274
  store i64 0, i64* %24, align 8, !dbg !1274
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1275, metadata !DIExpression()), !dbg !1276
  store i8 0, i8* %25, align 1, !dbg !1276
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1277, metadata !DIExpression()), !dbg !1278
  %47 = load i32, i32* %16, align 4, !dbg !1279
  %48 = and i32 %47, 2, !dbg !1280
  %49 = icmp ne i32 %48, 0, !dbg !1281
  %50 = zext i1 %49 to i8, !dbg !1278
  store i8 %50, i8* %26, align 1, !dbg !1278
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1282, metadata !DIExpression()), !dbg !1283
  store i8 0, i8* %27, align 1, !dbg !1283
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1284, metadata !DIExpression()), !dbg !1285
  store i8 1, i8* %28, align 1, !dbg !1285
  br label %51, !dbg !1286

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1287), !dbg !1288
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1289, metadata !DIExpression()), !dbg !1290
  store i8 0, i8* %29, align 1, !dbg !1290
  %52 = load i32, i32* %15, align 4, !dbg !1291
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
  ], !dbg !1292

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1293
  store i8 1, i8* %26, align 1, !dbg !1295
  br label %54, !dbg !1296

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1297
  %56 = trunc i8 %55 to i1, !dbg !1297
  br i1 %56, label %70, label %57, !dbg !1299

57:                                               ; preds = %54
  br label %58, !dbg !1300

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1301
  %60 = load i64, i64* %12, align 8, !dbg !1301
  %61 = icmp ult i64 %59, %60, !dbg !1301
  br i1 %61, label %62, label %66, !dbg !1304

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1301
  %64 = load i64, i64* %21, align 8, !dbg !1301
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1301
  store i8 34, i8* %65, align 1, !dbg !1301
  br label %66, !dbg !1301

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1304
  %68 = add i64 %67, 1, !dbg !1304
  store i64 %68, i64* %21, align 8, !dbg !1304
  br label %69, !dbg !1304

69:                                               ; preds = %66
  br label %70, !dbg !1304

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1305
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8** %23, align 8, !dbg !1306
  store i64 1, i64* %24, align 8, !dbg !1307
  br label %138, !dbg !1308

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1309
  store i8 0, i8* %26, align 1, !dbg !1310
  br label %138, !dbg !1311

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1312
  %74 = icmp ne i32 %73, 10, !dbg !1315
  br i1 %74, label %75, label %80, !dbg !1316

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1317
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.95, i64 0, i64 0), i32 noundef %76), !dbg !1319
  store i8* %77, i8** %18, align 8, !dbg !1320
  %78 = load i32, i32* %15, align 4, !dbg !1321
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), i32 noundef %78), !dbg !1322
  store i8* %79, i8** %19, align 8, !dbg !1323
  br label %80, !dbg !1324

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1325
  %82 = trunc i8 %81 to i1, !dbg !1325
  br i1 %82, label %108, label %83, !dbg !1327

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1328, metadata !DIExpression()), !dbg !1330
  %84 = load i8*, i8** %18, align 8, !dbg !1331
  store i8* %84, i8** %30, align 8, !dbg !1330
  br label %85, !dbg !1332

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1333
  %87 = load i8, i8* %86, align 1, !dbg !1335
  %88 = icmp ne i8 %87, 0, !dbg !1336
  br i1 %88, label %89, label %107, !dbg !1336

89:                                               ; preds = %85
  br label %90, !dbg !1337

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1338
  %92 = load i64, i64* %12, align 8, !dbg !1338
  %93 = icmp ult i64 %91, %92, !dbg !1338
  br i1 %93, label %94, label %100, !dbg !1341

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1338
  %96 = load i8, i8* %95, align 1, !dbg !1338
  %97 = load i8*, i8** %11, align 8, !dbg !1338
  %98 = load i64, i64* %21, align 8, !dbg !1338
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1338
  store i8 %96, i8* %99, align 1, !dbg !1338
  br label %100, !dbg !1338

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1341
  %102 = add i64 %101, 1, !dbg !1341
  store i64 %102, i64* %21, align 8, !dbg !1341
  br label %103, !dbg !1341

103:                                              ; preds = %100
  br label %104, !dbg !1341

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1342
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1342
  store i8* %106, i8** %30, align 8, !dbg !1342
  br label %85, !dbg !1343, !llvm.loop !1344

107:                                              ; preds = %85
  br label %108, !dbg !1345

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1346
  %109 = load i8*, i8** %19, align 8, !dbg !1347
  store i8* %109, i8** %23, align 8, !dbg !1348
  %110 = load i8*, i8** %23, align 8, !dbg !1349
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1350
  store i64 %111, i64* %24, align 8, !dbg !1351
  br label %138, !dbg !1352

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1353
  br label %113, !dbg !1354

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1355
  br label %114, !dbg !1356

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1357
  %116 = trunc i8 %115 to i1, !dbg !1357
  br i1 %116, label %118, label %117, !dbg !1359

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1360
  br label %118, !dbg !1361

118:                                              ; preds = %117, %114
  br label %119, !dbg !1357

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1362
  %120 = load i8, i8* %26, align 1, !dbg !1363
  %121 = trunc i8 %120 to i1, !dbg !1363
  br i1 %121, label %135, label %122, !dbg !1365

122:                                              ; preds = %119
  br label %123, !dbg !1366

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1367
  %125 = load i64, i64* %12, align 8, !dbg !1367
  %126 = icmp ult i64 %124, %125, !dbg !1367
  br i1 %126, label %127, label %131, !dbg !1370

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1367
  %129 = load i64, i64* %21, align 8, !dbg !1367
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1367
  store i8 39, i8* %130, align 1, !dbg !1367
  br label %131, !dbg !1367

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1370
  %133 = add i64 %132, 1, !dbg !1370
  store i64 %133, i64* %21, align 8, !dbg !1370
  br label %134, !dbg !1370

134:                                              ; preds = %131
  br label %135, !dbg !1370

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), i8** %23, align 8, !dbg !1371
  store i64 1, i64* %24, align 8, !dbg !1372
  br label %138, !dbg !1373

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1374
  br label %138, !dbg !1375

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1376
  unreachable, !dbg !1376

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1377, metadata !DIExpression()), !dbg !1379
  store i64 0, i64* %31, align 8, !dbg !1379
  br label %139, !dbg !1380

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1381
  %141 = icmp eq i64 %140, -1, !dbg !1383
  br i1 %141, label %142, label %150, !dbg !1381

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1384
  %144 = load i64, i64* %31, align 8, !dbg !1385
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1384
  %146 = load i8, i8* %145, align 1, !dbg !1384
  %147 = zext i8 %146 to i32, !dbg !1384
  %148 = icmp eq i32 %147, 0, !dbg !1386
  %149 = zext i1 %148 to i32, !dbg !1386
  br label %155, !dbg !1381

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1387
  %152 = load i64, i64* %14, align 8, !dbg !1388
  %153 = icmp eq i64 %151, %152, !dbg !1389
  %154 = zext i1 %153 to i32, !dbg !1389
  br label %155, !dbg !1381

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1381
  %157 = icmp ne i32 %156, 0, !dbg !1390
  %158 = xor i1 %157, true, !dbg !1390
  br i1 %158, label %159, label %996, !dbg !1391

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1392, metadata !DIExpression()), !dbg !1394
  store i8 0, i8* %32, align 1, !dbg !1394
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1395, metadata !DIExpression()), !dbg !1396
  store i8 0, i8* %33, align 1, !dbg !1396
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i8 0, i8* %34, align 1, !dbg !1398
  %160 = load i8, i8* %25, align 1, !dbg !1399
  %161 = trunc i8 %160 to i1, !dbg !1399
  br i1 %161, label %162, label %197, !dbg !1401

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1402
  %164 = icmp ne i32 %163, 2, !dbg !1403
  br i1 %164, label %165, label %197, !dbg !1404

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1405
  %167 = icmp ne i64 %166, 0, !dbg !1405
  br i1 %167, label %168, label %197, !dbg !1406

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1407
  %170 = load i64, i64* %24, align 8, !dbg !1408
  %171 = add i64 %169, %170, !dbg !1409
  %172 = load i64, i64* %14, align 8, !dbg !1410
  %173 = icmp eq i64 %172, -1, !dbg !1411
  br i1 %173, label %174, label %180, !dbg !1412

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1413
  %176 = icmp ult i64 1, %175, !dbg !1414
  br i1 %176, label %177, label %180, !dbg !1410

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1415
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1416
  store i64 %179, i64* %14, align 8, !dbg !1417
  br label %182, !dbg !1410

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1418
  br label %182, !dbg !1410

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1410
  %184 = icmp ule i64 %171, %183, !dbg !1419
  br i1 %184, label %185, label %197, !dbg !1420

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1421
  %187 = load i64, i64* %31, align 8, !dbg !1422
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1423
  %189 = load i8*, i8** %23, align 8, !dbg !1424
  %190 = load i64, i64* %24, align 8, !dbg !1425
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1426
  br i1 %191, label %192, label %197, !dbg !1427

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1428
  %194 = trunc i8 %193 to i1, !dbg !1428
  br i1 %194, label %195, label %196, !dbg !1431

195:                                              ; preds = %192
  br label %1078, !dbg !1432

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1433
  br label %197, !dbg !1434

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1435, metadata !DIExpression()), !dbg !1436
  %198 = load i8*, i8** %13, align 8, !dbg !1437
  %199 = load i64, i64* %31, align 8, !dbg !1438
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1437
  %201 = load i8, i8* %200, align 1, !dbg !1437
  store i8 %201, i8* %35, align 1, !dbg !1436
  %202 = load i8, i8* %35, align 1, !dbg !1439
  %203 = zext i8 %202 to i32, !dbg !1439
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
  ], !dbg !1440

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1441
  %206 = trunc i8 %205 to i1, !dbg !1441
  br i1 %206, label %207, label %318, !dbg !1444

207:                                              ; preds = %204
  br label %208, !dbg !1445

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1447
  %210 = trunc i8 %209 to i1, !dbg !1447
  br i1 %210, label %211, label %212, !dbg !1450

211:                                              ; preds = %208
  br label %1078, !dbg !1447

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1450
  %213 = load i32, i32* %15, align 4, !dbg !1451
  %214 = icmp eq i32 %213, 2, !dbg !1451
  br i1 %214, label %215, label %255, !dbg !1451

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1451
  %217 = trunc i8 %216 to i1, !dbg !1451
  br i1 %217, label %255, label %218, !dbg !1450

218:                                              ; preds = %215
  br label %219, !dbg !1453

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1455
  %221 = load i64, i64* %12, align 8, !dbg !1455
  %222 = icmp ult i64 %220, %221, !dbg !1455
  br i1 %222, label %223, label %227, !dbg !1458

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1455
  %225 = load i64, i64* %21, align 8, !dbg !1455
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1455
  store i8 39, i8* %226, align 1, !dbg !1455
  br label %227, !dbg !1455

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1458
  %229 = add i64 %228, 1, !dbg !1458
  store i64 %229, i64* %21, align 8, !dbg !1458
  br label %230, !dbg !1458

230:                                              ; preds = %227
  br label %231, !dbg !1453

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1459
  %233 = load i64, i64* %12, align 8, !dbg !1459
  %234 = icmp ult i64 %232, %233, !dbg !1459
  br i1 %234, label %235, label %239, !dbg !1462

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1459
  %237 = load i64, i64* %21, align 8, !dbg !1459
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1459
  store i8 36, i8* %238, align 1, !dbg !1459
  br label %239, !dbg !1459

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1462
  %241 = add i64 %240, 1, !dbg !1462
  store i64 %241, i64* %21, align 8, !dbg !1462
  br label %242, !dbg !1462

242:                                              ; preds = %239
  br label %243, !dbg !1453

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1463
  %245 = load i64, i64* %12, align 8, !dbg !1463
  %246 = icmp ult i64 %244, %245, !dbg !1463
  br i1 %246, label %247, label %251, !dbg !1466

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1463
  %249 = load i64, i64* %21, align 8, !dbg !1463
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1463
  store i8 39, i8* %250, align 1, !dbg !1463
  br label %251, !dbg !1463

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1466
  %253 = add i64 %252, 1, !dbg !1466
  store i64 %253, i64* %21, align 8, !dbg !1466
  br label %254, !dbg !1466

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1453
  br label %255, !dbg !1453

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1450

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1467
  %258 = load i64, i64* %12, align 8, !dbg !1467
  %259 = icmp ult i64 %257, %258, !dbg !1467
  br i1 %259, label %260, label %264, !dbg !1470

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1467
  %262 = load i64, i64* %21, align 8, !dbg !1467
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1467
  store i8 92, i8* %263, align 1, !dbg !1467
  br label %264, !dbg !1467

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1470
  %266 = add i64 %265, 1, !dbg !1470
  store i64 %266, i64* %21, align 8, !dbg !1470
  br label %267, !dbg !1470

267:                                              ; preds = %264
  br label %268, !dbg !1450

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1471
  %270 = icmp ne i32 %269, 2, !dbg !1473
  br i1 %270, label %271, label %317, !dbg !1474

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1475
  %273 = add i64 %272, 1, !dbg !1476
  %274 = load i64, i64* %14, align 8, !dbg !1477
  %275 = icmp ult i64 %273, %274, !dbg !1478
  br i1 %275, label %276, label %317, !dbg !1479

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1480
  %278 = load i64, i64* %31, align 8, !dbg !1481
  %279 = add i64 %278, 1, !dbg !1482
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1480
  %281 = load i8, i8* %280, align 1, !dbg !1480
  %282 = zext i8 %281 to i32, !dbg !1480
  %283 = icmp sle i32 48, %282, !dbg !1483
  br i1 %283, label %284, label %317, !dbg !1484

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1485
  %286 = load i64, i64* %31, align 8, !dbg !1486
  %287 = add i64 %286, 1, !dbg !1487
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1485
  %289 = load i8, i8* %288, align 1, !dbg !1485
  %290 = zext i8 %289 to i32, !dbg !1485
  %291 = icmp sle i32 %290, 57, !dbg !1488
  br i1 %291, label %292, label %317, !dbg !1489

292:                                              ; preds = %284
  br label %293, !dbg !1490

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1492
  %295 = load i64, i64* %12, align 8, !dbg !1492
  %296 = icmp ult i64 %294, %295, !dbg !1492
  br i1 %296, label %297, label %301, !dbg !1495

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1492
  %299 = load i64, i64* %21, align 8, !dbg !1492
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1492
  store i8 48, i8* %300, align 1, !dbg !1492
  br label %301, !dbg !1492

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1495
  %303 = add i64 %302, 1, !dbg !1495
  store i64 %303, i64* %21, align 8, !dbg !1495
  br label %304, !dbg !1495

304:                                              ; preds = %301
  br label %305, !dbg !1496

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1497
  %307 = load i64, i64* %12, align 8, !dbg !1497
  %308 = icmp ult i64 %306, %307, !dbg !1497
  br i1 %308, label %309, label %313, !dbg !1500

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1497
  %311 = load i64, i64* %21, align 8, !dbg !1497
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1497
  store i8 48, i8* %312, align 1, !dbg !1497
  br label %313, !dbg !1497

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1500
  %315 = add i64 %314, 1, !dbg !1500
  store i64 %315, i64* %21, align 8, !dbg !1500
  br label %316, !dbg !1500

316:                                              ; preds = %313
  br label %317, !dbg !1501

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1502
  br label %324, !dbg !1503

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1504
  %320 = and i32 %319, 1, !dbg !1506
  %321 = icmp ne i32 %320, 0, !dbg !1506
  br i1 %321, label %322, label %323, !dbg !1507

322:                                              ; preds = %318
  br label %993, !dbg !1508

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1509

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1510
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1511

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1512
  %329 = trunc i8 %328 to i1, !dbg !1512
  br i1 %329, label %330, label %331, !dbg !1515

330:                                              ; preds = %327
  br label %1078, !dbg !1516

331:                                              ; preds = %327
  br label %418, !dbg !1517

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1518
  %334 = and i32 %333, 4, !dbg !1520
  %335 = icmp ne i32 %334, 0, !dbg !1520
  br i1 %335, label %336, label %417, !dbg !1521

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1522
  %338 = add i64 %337, 2, !dbg !1523
  %339 = load i64, i64* %14, align 8, !dbg !1524
  %340 = icmp ult i64 %338, %339, !dbg !1525
  br i1 %340, label %341, label %417, !dbg !1526

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1527
  %343 = load i64, i64* %31, align 8, !dbg !1528
  %344 = add i64 %343, 1, !dbg !1529
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1527
  %346 = load i8, i8* %345, align 1, !dbg !1527
  %347 = zext i8 %346 to i32, !dbg !1527
  %348 = icmp eq i32 %347, 63, !dbg !1530
  br i1 %348, label %349, label %417, !dbg !1531

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1532
  %351 = load i64, i64* %31, align 8, !dbg !1533
  %352 = add i64 %351, 2, !dbg !1534
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1532
  %354 = load i8, i8* %353, align 1, !dbg !1532
  %355 = zext i8 %354 to i32, !dbg !1532
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
  ], !dbg !1535

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1536
  %358 = trunc i8 %357 to i1, !dbg !1536
  br i1 %358, label %359, label %360, !dbg !1539

359:                                              ; preds = %356
  br label %1078, !dbg !1540

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1541
  %362 = load i64, i64* %31, align 8, !dbg !1542
  %363 = add i64 %362, 2, !dbg !1543
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1541
  %365 = load i8, i8* %364, align 1, !dbg !1541
  store i8 %365, i8* %35, align 1, !dbg !1544
  %366 = load i64, i64* %31, align 8, !dbg !1545
  %367 = add i64 %366, 2, !dbg !1545
  store i64 %367, i64* %31, align 8, !dbg !1545
  br label %368, !dbg !1546

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1547
  %370 = load i64, i64* %12, align 8, !dbg !1547
  %371 = icmp ult i64 %369, %370, !dbg !1547
  br i1 %371, label %372, label %376, !dbg !1550

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1547
  %374 = load i64, i64* %21, align 8, !dbg !1547
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1547
  store i8 63, i8* %375, align 1, !dbg !1547
  br label %376, !dbg !1547

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1550
  %378 = add i64 %377, 1, !dbg !1550
  store i64 %378, i64* %21, align 8, !dbg !1550
  br label %379, !dbg !1550

379:                                              ; preds = %376
  br label %380, !dbg !1551

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1552
  %382 = load i64, i64* %12, align 8, !dbg !1552
  %383 = icmp ult i64 %381, %382, !dbg !1552
  br i1 %383, label %384, label %388, !dbg !1555

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1552
  %386 = load i64, i64* %21, align 8, !dbg !1552
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1552
  store i8 34, i8* %387, align 1, !dbg !1552
  br label %388, !dbg !1552

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1555
  %390 = add i64 %389, 1, !dbg !1555
  store i64 %390, i64* %21, align 8, !dbg !1555
  br label %391, !dbg !1555

391:                                              ; preds = %388
  br label %392, !dbg !1556

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1557
  %394 = load i64, i64* %12, align 8, !dbg !1557
  %395 = icmp ult i64 %393, %394, !dbg !1557
  br i1 %395, label %396, label %400, !dbg !1560

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1557
  %398 = load i64, i64* %21, align 8, !dbg !1557
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1557
  store i8 34, i8* %399, align 1, !dbg !1557
  br label %400, !dbg !1557

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1560
  %402 = add i64 %401, 1, !dbg !1560
  store i64 %402, i64* %21, align 8, !dbg !1560
  br label %403, !dbg !1560

403:                                              ; preds = %400
  br label %404, !dbg !1561

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1562
  %406 = load i64, i64* %12, align 8, !dbg !1562
  %407 = icmp ult i64 %405, %406, !dbg !1562
  br i1 %407, label %408, label %412, !dbg !1565

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1562
  %410 = load i64, i64* %21, align 8, !dbg !1562
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1562
  store i8 63, i8* %411, align 1, !dbg !1562
  br label %412, !dbg !1562

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1565
  %414 = add i64 %413, 1, !dbg !1565
  store i64 %414, i64* %21, align 8, !dbg !1565
  br label %415, !dbg !1565

415:                                              ; preds = %412
  br label %416, !dbg !1566

416:                                              ; preds = %349, %415
  br label %417, !dbg !1567

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1568

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1569

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1570
  br label %454, !dbg !1572

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1573
  br label %454, !dbg !1574

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1575
  br label %454, !dbg !1576

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1577
  br label %446, !dbg !1578

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1579
  br label %446, !dbg !1580

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1581
  br label %446, !dbg !1582

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1583
  br label %454, !dbg !1584

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1585
  store i8 %427, i8* %36, align 1, !dbg !1586
  %428 = load i32, i32* %15, align 4, !dbg !1587
  %429 = icmp eq i32 %428, 2, !dbg !1589
  br i1 %429, label %430, label %435, !dbg !1590

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1591
  %432 = trunc i8 %431 to i1, !dbg !1591
  br i1 %432, label %433, label %434, !dbg !1594

433:                                              ; preds = %430
  br label %1078, !dbg !1595

434:                                              ; preds = %430
  br label %942, !dbg !1596

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1597
  %437 = trunc i8 %436 to i1, !dbg !1597
  br i1 %437, label %438, label %445, !dbg !1599

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1600
  %440 = trunc i8 %439 to i1, !dbg !1600
  br i1 %440, label %441, label %445, !dbg !1601

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1602
  %443 = icmp ne i64 %442, 0, !dbg !1602
  br i1 %443, label %444, label %445, !dbg !1603

444:                                              ; preds = %441
  br label %942, !dbg !1604

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1602

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1605), !dbg !1606
  %447 = load i32, i32* %15, align 4, !dbg !1607
  %448 = icmp eq i32 %447, 2, !dbg !1609
  br i1 %448, label %449, label %453, !dbg !1610

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1611
  %451 = trunc i8 %450 to i1, !dbg !1611
  br i1 %451, label %452, label %453, !dbg !1612

452:                                              ; preds = %449
  br label %1078, !dbg !1613

453:                                              ; preds = %449, %446
  br label %454, !dbg !1611

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1614), !dbg !1615
  %455 = load i8, i8* %25, align 1, !dbg !1616
  %456 = trunc i8 %455 to i1, !dbg !1616
  br i1 %456, label %457, label %459, !dbg !1618

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1619
  store i8 %458, i8* %35, align 1, !dbg !1621
  br label %880, !dbg !1622

459:                                              ; preds = %454
  br label %849, !dbg !1623

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1624
  %462 = icmp eq i64 %461, -1, !dbg !1626
  br i1 %462, label %463, label %469, !dbg !1627

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1628
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1628
  %466 = load i8, i8* %465, align 1, !dbg !1628
  %467 = zext i8 %466 to i32, !dbg !1628
  %468 = icmp eq i32 %467, 0, !dbg !1629
  br i1 %468, label %473, label %472, !dbg !1624

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1630
  %471 = icmp eq i64 %470, 1, !dbg !1631
  br i1 %471, label %473, label %472, !dbg !1627

472:                                              ; preds = %469, %463
  br label %849, !dbg !1632

473:                                              ; preds = %469, %463
  br label %474, !dbg !1633

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1634
  %476 = icmp ne i64 %475, 0, !dbg !1636
  br i1 %476, label %477, label %478, !dbg !1637

477:                                              ; preds = %474
  br label %849, !dbg !1638

478:                                              ; preds = %474
  br label %479, !dbg !1639

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1640
  br label %480, !dbg !1641

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1642
  %482 = icmp eq i32 %481, 2, !dbg !1644
  br i1 %482, label %483, label %487, !dbg !1645

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1646
  %485 = trunc i8 %484 to i1, !dbg !1646
  br i1 %485, label %486, label %487, !dbg !1647

486:                                              ; preds = %483
  br label %1078, !dbg !1648

487:                                              ; preds = %483, %480
  br label %849, !dbg !1649

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1650
  store i8 1, i8* %34, align 1, !dbg !1651
  %489 = load i32, i32* %15, align 4, !dbg !1652
  %490 = icmp eq i32 %489, 2, !dbg !1654
  br i1 %490, label %491, label %540, !dbg !1655

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1656
  %493 = trunc i8 %492 to i1, !dbg !1656
  br i1 %493, label %494, label %495, !dbg !1659

494:                                              ; preds = %491
  br label %1078, !dbg !1660

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1661
  %497 = icmp ne i64 %496, 0, !dbg !1661
  br i1 %497, label %498, label %503, !dbg !1663

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1664
  %500 = icmp ne i64 %499, 0, !dbg !1664
  br i1 %500, label %503, label %501, !dbg !1665

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1666
  store i64 %502, i64* %22, align 8, !dbg !1668
  store i64 0, i64* %12, align 8, !dbg !1669
  br label %503, !dbg !1670

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1671

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1672
  %506 = load i64, i64* %12, align 8, !dbg !1672
  %507 = icmp ult i64 %505, %506, !dbg !1672
  br i1 %507, label %508, label %512, !dbg !1675

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1672
  %510 = load i64, i64* %21, align 8, !dbg !1672
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1672
  store i8 39, i8* %511, align 1, !dbg !1672
  br label %512, !dbg !1672

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1675
  %514 = add i64 %513, 1, !dbg !1675
  store i64 %514, i64* %21, align 8, !dbg !1675
  br label %515, !dbg !1675

515:                                              ; preds = %512
  br label %516, !dbg !1676

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1677
  %518 = load i64, i64* %12, align 8, !dbg !1677
  %519 = icmp ult i64 %517, %518, !dbg !1677
  br i1 %519, label %520, label %524, !dbg !1680

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1677
  %522 = load i64, i64* %21, align 8, !dbg !1677
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1677
  store i8 92, i8* %523, align 1, !dbg !1677
  br label %524, !dbg !1677

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1680
  %526 = add i64 %525, 1, !dbg !1680
  store i64 %526, i64* %21, align 8, !dbg !1680
  br label %527, !dbg !1680

527:                                              ; preds = %524
  br label %528, !dbg !1681

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1682
  %530 = load i64, i64* %12, align 8, !dbg !1682
  %531 = icmp ult i64 %529, %530, !dbg !1682
  br i1 %531, label %532, label %536, !dbg !1685

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1682
  %534 = load i64, i64* %21, align 8, !dbg !1682
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1682
  store i8 39, i8* %535, align 1, !dbg !1682
  br label %536, !dbg !1682

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1685
  %538 = add i64 %537, 1, !dbg !1685
  store i64 %538, i64* %21, align 8, !dbg !1685
  br label %539, !dbg !1685

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1686
  br label %540, !dbg !1687

540:                                              ; preds = %539, %488
  br label %849, !dbg !1688

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1689
  br label %849, !dbg !1690

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1691, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1694, metadata !DIExpression()), !dbg !1695
  %543 = load i8, i8* %20, align 1, !dbg !1696
  %544 = trunc i8 %543 to i1, !dbg !1696
  br i1 %544, label %545, label %557, !dbg !1698

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1699
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1701
  %547 = load i16*, i16** %546, align 8, !dbg !1701
  %548 = load i8, i8* %35, align 1, !dbg !1701
  %549 = zext i8 %548 to i32, !dbg !1701
  %550 = sext i32 %549 to i64, !dbg !1701
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1701
  %552 = load i16, i16* %551, align 2, !dbg !1701
  %553 = zext i16 %552 to i32, !dbg !1701
  %554 = and i32 %553, 16384, !dbg !1701
  %555 = icmp ne i32 %554, 0, !dbg !1702
  %556 = zext i1 %555 to i8, !dbg !1703
  store i8 %556, i8* %38, align 1, !dbg !1703
  br label %648, !dbg !1704

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1705, metadata !DIExpression()), !dbg !1717
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1718
  store i64 0, i64* %37, align 8, !dbg !1719
  store i8 1, i8* %38, align 1, !dbg !1720
  %558 = load i64, i64* %14, align 8, !dbg !1721
  %559 = icmp eq i64 %558, -1, !dbg !1723
  br i1 %559, label %560, label %563, !dbg !1724

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1725
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1726
  store i64 %562, i64* %14, align 8, !dbg !1727
  br label %563, !dbg !1728

563:                                              ; preds = %560, %557
  br label %564, !dbg !1729

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1730, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1735, metadata !DIExpression()), !dbg !1736
  %565 = load i8*, i8** %13, align 8, !dbg !1737
  %566 = load i64, i64* %31, align 8, !dbg !1738
  %567 = load i64, i64* %37, align 8, !dbg !1739
  %568 = add i64 %566, %567, !dbg !1740
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1737
  %570 = load i64, i64* %14, align 8, !dbg !1741
  %571 = load i64, i64* %31, align 8, !dbg !1742
  %572 = load i64, i64* %37, align 8, !dbg !1743
  %573 = add i64 %571, %572, !dbg !1744
  %574 = sub i64 %570, %573, !dbg !1745
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1746
  store i64 %575, i64* %41, align 8, !dbg !1736
  %576 = load i64, i64* %41, align 8, !dbg !1747
  %577 = icmp eq i64 %576, 0, !dbg !1749
  br i1 %577, label %578, label %579, !dbg !1750

578:                                              ; preds = %564
  br label %647, !dbg !1751

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1752
  %581 = icmp eq i64 %580, -1, !dbg !1754
  br i1 %581, label %582, label %583, !dbg !1755

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1756
  br label %647, !dbg !1758

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1759
  %585 = icmp eq i64 %584, -2, !dbg !1761
  br i1 %585, label %586, label %608, !dbg !1762

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1763
  br label %587, !dbg !1765

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1766
  %589 = load i64, i64* %37, align 8, !dbg !1767
  %590 = add i64 %588, %589, !dbg !1768
  %591 = load i64, i64* %14, align 8, !dbg !1769
  %592 = icmp ult i64 %590, %591, !dbg !1770
  br i1 %592, label %593, label %602, !dbg !1771

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1772
  %595 = load i64, i64* %31, align 8, !dbg !1773
  %596 = load i64, i64* %37, align 8, !dbg !1774
  %597 = add i64 %595, %596, !dbg !1775
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1772
  %599 = load i8, i8* %598, align 1, !dbg !1772
  %600 = zext i8 %599 to i32, !dbg !1772
  %601 = icmp ne i32 %600, 0, !dbg !1771
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1776
  br i1 %603, label %604, label %607, !dbg !1765

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1777
  %606 = add i64 %605, 1, !dbg !1777
  store i64 %606, i64* %37, align 8, !dbg !1777
  br label %587, !dbg !1765, !llvm.loop !1778

607:                                              ; preds = %602
  br label %647, !dbg !1779

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1780
  %610 = trunc i8 %609 to i1, !dbg !1780
  br i1 %610, label %611, label %635, !dbg !1783

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1784
  %613 = icmp eq i32 %612, 2, !dbg !1785
  br i1 %613, label %614, label %635, !dbg !1786

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1787, metadata !DIExpression()), !dbg !1790
  store i64 1, i64* %42, align 8, !dbg !1790
  br label %615, !dbg !1791

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !1792
  %617 = load i64, i64* %41, align 8, !dbg !1794
  %618 = icmp ult i64 %616, %617, !dbg !1795
  br i1 %618, label %619, label %634, !dbg !1796

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !1797
  %621 = load i64, i64* %31, align 8, !dbg !1798
  %622 = load i64, i64* %37, align 8, !dbg !1799
  %623 = add i64 %621, %622, !dbg !1800
  %624 = load i64, i64* %42, align 8, !dbg !1801
  %625 = add i64 %623, %624, !dbg !1802
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !1797
  %627 = load i8, i8* %626, align 1, !dbg !1797
  %628 = zext i8 %627 to i32, !dbg !1797
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !1803

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !1804

630:                                              ; preds = %619
  br label %631, !dbg !1806

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !1807
  %633 = add i64 %632, 1, !dbg !1807
  store i64 %633, i64* %42, align 8, !dbg !1807
  br label %615, !dbg !1808, !llvm.loop !1809

634:                                              ; preds = %615
  br label %635, !dbg !1811

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !1812
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !1814
  %638 = icmp ne i32 %637, 0, !dbg !1814
  br i1 %638, label %640, label %639, !dbg !1815

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !1816
  br label %640, !dbg !1817

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !1818
  %642 = load i64, i64* %37, align 8, !dbg !1819
  %643 = add i64 %642, %641, !dbg !1819
  store i64 %643, i64* %37, align 8, !dbg !1819
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !1820

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !1821
  %650 = trunc i8 %649 to i1, !dbg !1821
  %651 = zext i1 %650 to i8, !dbg !1822
  store i8 %651, i8* %34, align 1, !dbg !1822
  %652 = load i64, i64* %37, align 8, !dbg !1823
  %653 = icmp ult i64 1, %652, !dbg !1825
  br i1 %653, label %660, label %654, !dbg !1826

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !1827
  %656 = trunc i8 %655 to i1, !dbg !1827
  br i1 %656, label %657, label %848, !dbg !1828

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !1829
  %659 = trunc i8 %658 to i1, !dbg !1829
  br i1 %659, label %848, label %660, !dbg !1830

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !1831, metadata !DIExpression()), !dbg !1833
  %661 = load i64, i64* %31, align 8, !dbg !1834
  %662 = load i64, i64* %37, align 8, !dbg !1835
  %663 = add i64 %661, %662, !dbg !1836
  store i64 %663, i64* %43, align 8, !dbg !1833
  br label %664, !dbg !1837

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !1838
  %666 = trunc i8 %665 to i1, !dbg !1838
  br i1 %666, label %667, label %772, !dbg !1843

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !1844
  %669 = trunc i8 %668 to i1, !dbg !1844
  br i1 %669, label %772, label %670, !dbg !1845

670:                                              ; preds = %667
  br label %671, !dbg !1846

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !1848
  %673 = trunc i8 %672 to i1, !dbg !1848
  br i1 %673, label %674, label %675, !dbg !1851

674:                                              ; preds = %671
  br label %1078, !dbg !1848

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !1851
  %676 = load i32, i32* %15, align 4, !dbg !1852
  %677 = icmp eq i32 %676, 2, !dbg !1852
  br i1 %677, label %678, label %718, !dbg !1852

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !1852
  %680 = trunc i8 %679 to i1, !dbg !1852
  br i1 %680, label %718, label %681, !dbg !1851

681:                                              ; preds = %678
  br label %682, !dbg !1854

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !1856
  %684 = load i64, i64* %12, align 8, !dbg !1856
  %685 = icmp ult i64 %683, %684, !dbg !1856
  br i1 %685, label %686, label %690, !dbg !1859

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !1856
  %688 = load i64, i64* %21, align 8, !dbg !1856
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !1856
  store i8 39, i8* %689, align 1, !dbg !1856
  br label %690, !dbg !1856

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !1859
  %692 = add i64 %691, 1, !dbg !1859
  store i64 %692, i64* %21, align 8, !dbg !1859
  br label %693, !dbg !1859

693:                                              ; preds = %690
  br label %694, !dbg !1854

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !1860
  %696 = load i64, i64* %12, align 8, !dbg !1860
  %697 = icmp ult i64 %695, %696, !dbg !1860
  br i1 %697, label %698, label %702, !dbg !1863

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !1860
  %700 = load i64, i64* %21, align 8, !dbg !1860
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !1860
  store i8 36, i8* %701, align 1, !dbg !1860
  br label %702, !dbg !1860

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !1863
  %704 = add i64 %703, 1, !dbg !1863
  store i64 %704, i64* %21, align 8, !dbg !1863
  br label %705, !dbg !1863

705:                                              ; preds = %702
  br label %706, !dbg !1854

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !1864
  %708 = load i64, i64* %12, align 8, !dbg !1864
  %709 = icmp ult i64 %707, %708, !dbg !1864
  br i1 %709, label %710, label %714, !dbg !1867

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !1864
  %712 = load i64, i64* %21, align 8, !dbg !1864
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !1864
  store i8 39, i8* %713, align 1, !dbg !1864
  br label %714, !dbg !1864

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !1867
  %716 = add i64 %715, 1, !dbg !1867
  store i64 %716, i64* %21, align 8, !dbg !1867
  br label %717, !dbg !1867

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !1854
  br label %718, !dbg !1854

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !1851

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !1868
  %721 = load i64, i64* %12, align 8, !dbg !1868
  %722 = icmp ult i64 %720, %721, !dbg !1868
  br i1 %722, label %723, label %727, !dbg !1871

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !1868
  %725 = load i64, i64* %21, align 8, !dbg !1868
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !1868
  store i8 92, i8* %726, align 1, !dbg !1868
  br label %727, !dbg !1868

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !1871
  %729 = add i64 %728, 1, !dbg !1871
  store i64 %729, i64* %21, align 8, !dbg !1871
  br label %730, !dbg !1871

730:                                              ; preds = %727
  br label %731, !dbg !1851

731:                                              ; preds = %730
  br label %732, !dbg !1872

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !1873
  %734 = load i64, i64* %12, align 8, !dbg !1873
  %735 = icmp ult i64 %733, %734, !dbg !1873
  br i1 %735, label %736, label %745, !dbg !1876

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !1873
  %738 = zext i8 %737 to i32, !dbg !1873
  %739 = ashr i32 %738, 6, !dbg !1873
  %740 = add nsw i32 48, %739, !dbg !1873
  %741 = trunc i32 %740 to i8, !dbg !1873
  %742 = load i8*, i8** %11, align 8, !dbg !1873
  %743 = load i64, i64* %21, align 8, !dbg !1873
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !1873
  store i8 %741, i8* %744, align 1, !dbg !1873
  br label %745, !dbg !1873

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !1876
  %747 = add i64 %746, 1, !dbg !1876
  store i64 %747, i64* %21, align 8, !dbg !1876
  br label %748, !dbg !1876

748:                                              ; preds = %745
  br label %749, !dbg !1877

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !1878
  %751 = load i64, i64* %12, align 8, !dbg !1878
  %752 = icmp ult i64 %750, %751, !dbg !1878
  br i1 %752, label %753, label %763, !dbg !1881

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !1878
  %755 = zext i8 %754 to i32, !dbg !1878
  %756 = ashr i32 %755, 3, !dbg !1878
  %757 = and i32 %756, 7, !dbg !1878
  %758 = add nsw i32 48, %757, !dbg !1878
  %759 = trunc i32 %758 to i8, !dbg !1878
  %760 = load i8*, i8** %11, align 8, !dbg !1878
  %761 = load i64, i64* %21, align 8, !dbg !1878
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !1878
  store i8 %759, i8* %762, align 1, !dbg !1878
  br label %763, !dbg !1878

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !1881
  %765 = add i64 %764, 1, !dbg !1881
  store i64 %765, i64* %21, align 8, !dbg !1881
  br label %766, !dbg !1881

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !1882
  %768 = zext i8 %767 to i32, !dbg !1882
  %769 = and i32 %768, 7, !dbg !1883
  %770 = add nsw i32 48, %769, !dbg !1884
  %771 = trunc i32 %770 to i8, !dbg !1885
  store i8 %771, i8* %35, align 1, !dbg !1886
  br label %789, !dbg !1887

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !1888
  %774 = trunc i8 %773 to i1, !dbg !1888
  br i1 %774, label %775, label %788, !dbg !1890

775:                                              ; preds = %772
  br label %776, !dbg !1891

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !1893
  %778 = load i64, i64* %12, align 8, !dbg !1893
  %779 = icmp ult i64 %777, %778, !dbg !1893
  br i1 %779, label %780, label %784, !dbg !1896

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !1893
  %782 = load i64, i64* %21, align 8, !dbg !1893
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !1893
  store i8 92, i8* %783, align 1, !dbg !1893
  br label %784, !dbg !1893

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !1896
  %786 = add i64 %785, 1, !dbg !1896
  store i64 %786, i64* %21, align 8, !dbg !1896
  br label %787, !dbg !1896

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !1897
  br label %788, !dbg !1898

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !1899
  %791 = load i64, i64* %31, align 8, !dbg !1901
  %792 = add i64 %791, 1, !dbg !1902
  %793 = icmp ule i64 %790, %792, !dbg !1903
  br i1 %793, label %794, label %795, !dbg !1904

794:                                              ; preds = %789
  br label %847, !dbg !1905

795:                                              ; preds = %789
  br label %796, !dbg !1906

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !1907
  %798 = trunc i8 %797 to i1, !dbg !1907
  br i1 %798, label %799, label %827, !dbg !1907

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !1907
  %801 = trunc i8 %800 to i1, !dbg !1907
  br i1 %801, label %827, label %802, !dbg !1910

802:                                              ; preds = %799
  br label %803, !dbg !1911

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !1913
  %805 = load i64, i64* %12, align 8, !dbg !1913
  %806 = icmp ult i64 %804, %805, !dbg !1913
  br i1 %806, label %807, label %811, !dbg !1916

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !1913
  %809 = load i64, i64* %21, align 8, !dbg !1913
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !1913
  store i8 39, i8* %810, align 1, !dbg !1913
  br label %811, !dbg !1913

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !1916
  %813 = add i64 %812, 1, !dbg !1916
  store i64 %813, i64* %21, align 8, !dbg !1916
  br label %814, !dbg !1916

814:                                              ; preds = %811
  br label %815, !dbg !1911

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !1917
  %817 = load i64, i64* %12, align 8, !dbg !1917
  %818 = icmp ult i64 %816, %817, !dbg !1917
  br i1 %818, label %819, label %823, !dbg !1920

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !1917
  %821 = load i64, i64* %21, align 8, !dbg !1917
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !1917
  store i8 39, i8* %822, align 1, !dbg !1917
  br label %823, !dbg !1917

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !1920
  %825 = add i64 %824, 1, !dbg !1920
  store i64 %825, i64* %21, align 8, !dbg !1920
  br label %826, !dbg !1920

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !1911
  br label %827, !dbg !1911

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !1910

828:                                              ; preds = %827
  br label %829, !dbg !1921

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !1922
  %831 = load i64, i64* %12, align 8, !dbg !1922
  %832 = icmp ult i64 %830, %831, !dbg !1922
  br i1 %832, label %833, label %838, !dbg !1925

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !1922
  %835 = load i8*, i8** %11, align 8, !dbg !1922
  %836 = load i64, i64* %21, align 8, !dbg !1922
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !1922
  store i8 %834, i8* %837, align 1, !dbg !1922
  br label %838, !dbg !1922

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !1925
  %840 = add i64 %839, 1, !dbg !1925
  store i64 %840, i64* %21, align 8, !dbg !1925
  br label %841, !dbg !1925

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !1926
  %843 = load i64, i64* %31, align 8, !dbg !1927
  %844 = add i64 %843, 1, !dbg !1927
  store i64 %844, i64* %31, align 8, !dbg !1927
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !1926
  %846 = load i8, i8* %845, align 1, !dbg !1926
  store i8 %846, i8* %35, align 1, !dbg !1928
  br label %664, !dbg !1929, !llvm.loop !1930

847:                                              ; preds = %794
  br label %942, !dbg !1933

848:                                              ; preds = %657, %654
  br label %849, !dbg !1934

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !1935
  %851 = trunc i8 %850 to i1, !dbg !1935
  br i1 %851, label %852, label %855, !dbg !1937

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !1938
  %854 = icmp ne i32 %853, 2, !dbg !1939
  br i1 %854, label %858, label %855, !dbg !1940

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !1941
  %857 = trunc i8 %856 to i1, !dbg !1941
  br i1 %857, label %858, label %875, !dbg !1942

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !1943
  %860 = icmp ne i32* %859, null, !dbg !1943
  br i1 %860, label %861, label %875, !dbg !1944

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !1945
  %863 = load i8, i8* %35, align 1, !dbg !1946
  %864 = zext i8 %863 to i64, !dbg !1946
  %865 = udiv i64 %864, 32, !dbg !1947
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !1945
  %867 = load i32, i32* %866, align 4, !dbg !1945
  %868 = load i8, i8* %35, align 1, !dbg !1948
  %869 = zext i8 %868 to i64, !dbg !1948
  %870 = urem i64 %869, 32, !dbg !1949
  %871 = trunc i64 %870 to i32, !dbg !1950
  %872 = lshr i32 %867, %871, !dbg !1950
  %873 = and i32 %872, 1, !dbg !1951
  %874 = icmp ne i32 %873, 0, !dbg !1951
  br i1 %874, label %879, label %875, !dbg !1952

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !1953
  %877 = trunc i8 %876 to i1, !dbg !1953
  br i1 %877, label %879, label %878, !dbg !1954

878:                                              ; preds = %875
  br label %942, !dbg !1955

879:                                              ; preds = %875, %861
  br label %880, !dbg !1953

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !1956), !dbg !1957
  br label %881, !dbg !1958

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !1959
  %883 = trunc i8 %882 to i1, !dbg !1959
  br i1 %883, label %884, label %885, !dbg !1962

884:                                              ; preds = %881
  br label %1078, !dbg !1959

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !1962
  %886 = load i32, i32* %15, align 4, !dbg !1963
  %887 = icmp eq i32 %886, 2, !dbg !1963
  br i1 %887, label %888, label %928, !dbg !1963

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !1963
  %890 = trunc i8 %889 to i1, !dbg !1963
  br i1 %890, label %928, label %891, !dbg !1962

891:                                              ; preds = %888
  br label %892, !dbg !1965

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !1967
  %894 = load i64, i64* %12, align 8, !dbg !1967
  %895 = icmp ult i64 %893, %894, !dbg !1967
  br i1 %895, label %896, label %900, !dbg !1970

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !1967
  %898 = load i64, i64* %21, align 8, !dbg !1967
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !1967
  store i8 39, i8* %899, align 1, !dbg !1967
  br label %900, !dbg !1967

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !1970
  %902 = add i64 %901, 1, !dbg !1970
  store i64 %902, i64* %21, align 8, !dbg !1970
  br label %903, !dbg !1970

903:                                              ; preds = %900
  br label %904, !dbg !1965

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !1971
  %906 = load i64, i64* %12, align 8, !dbg !1971
  %907 = icmp ult i64 %905, %906, !dbg !1971
  br i1 %907, label %908, label %912, !dbg !1974

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !1971
  %910 = load i64, i64* %21, align 8, !dbg !1971
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !1971
  store i8 36, i8* %911, align 1, !dbg !1971
  br label %912, !dbg !1971

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !1974
  %914 = add i64 %913, 1, !dbg !1974
  store i64 %914, i64* %21, align 8, !dbg !1974
  br label %915, !dbg !1974

915:                                              ; preds = %912
  br label %916, !dbg !1965

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !1975
  %918 = load i64, i64* %12, align 8, !dbg !1975
  %919 = icmp ult i64 %917, %918, !dbg !1975
  br i1 %919, label %920, label %924, !dbg !1978

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !1975
  %922 = load i64, i64* %21, align 8, !dbg !1975
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !1975
  store i8 39, i8* %923, align 1, !dbg !1975
  br label %924, !dbg !1975

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !1978
  %926 = add i64 %925, 1, !dbg !1978
  store i64 %926, i64* %21, align 8, !dbg !1978
  br label %927, !dbg !1978

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !1965
  br label %928, !dbg !1965

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !1962

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !1979
  %931 = load i64, i64* %12, align 8, !dbg !1979
  %932 = icmp ult i64 %930, %931, !dbg !1979
  br i1 %932, label %933, label %937, !dbg !1982

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !1979
  %935 = load i64, i64* %21, align 8, !dbg !1979
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !1979
  store i8 92, i8* %936, align 1, !dbg !1979
  br label %937, !dbg !1979

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !1982
  %939 = add i64 %938, 1, !dbg !1982
  store i64 %939, i64* %21, align 8, !dbg !1982
  br label %940, !dbg !1982

940:                                              ; preds = %937
  br label %941, !dbg !1962

941:                                              ; preds = %940
  br label %942, !dbg !1962

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !1983), !dbg !1984
  br label %943, !dbg !1985

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !1986
  %945 = trunc i8 %944 to i1, !dbg !1986
  br i1 %945, label %946, label %974, !dbg !1986

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !1986
  %948 = trunc i8 %947 to i1, !dbg !1986
  br i1 %948, label %974, label %949, !dbg !1989

949:                                              ; preds = %946
  br label %950, !dbg !1990

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !1992
  %952 = load i64, i64* %12, align 8, !dbg !1992
  %953 = icmp ult i64 %951, %952, !dbg !1992
  br i1 %953, label %954, label %958, !dbg !1995

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !1992
  %956 = load i64, i64* %21, align 8, !dbg !1992
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !1992
  store i8 39, i8* %957, align 1, !dbg !1992
  br label %958, !dbg !1992

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !1995
  %960 = add i64 %959, 1, !dbg !1995
  store i64 %960, i64* %21, align 8, !dbg !1995
  br label %961, !dbg !1995

961:                                              ; preds = %958
  br label %962, !dbg !1990

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !1996
  %964 = load i64, i64* %12, align 8, !dbg !1996
  %965 = icmp ult i64 %963, %964, !dbg !1996
  br i1 %965, label %966, label %970, !dbg !1999

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !1996
  %968 = load i64, i64* %21, align 8, !dbg !1996
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !1996
  store i8 39, i8* %969, align 1, !dbg !1996
  br label %970, !dbg !1996

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !1999
  %972 = add i64 %971, 1, !dbg !1999
  store i64 %972, i64* %21, align 8, !dbg !1999
  br label %973, !dbg !1999

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !1990
  br label %974, !dbg !1990

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !1989

975:                                              ; preds = %974
  br label %976, !dbg !2000

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2001
  %978 = load i64, i64* %12, align 8, !dbg !2001
  %979 = icmp ult i64 %977, %978, !dbg !2001
  br i1 %979, label %980, label %985, !dbg !2004

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2001
  %982 = load i8*, i8** %11, align 8, !dbg !2001
  %983 = load i64, i64* %21, align 8, !dbg !2001
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2001
  store i8 %981, i8* %984, align 1, !dbg !2001
  br label %985, !dbg !2001

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2004
  %987 = add i64 %986, 1, !dbg !2004
  store i64 %987, i64* %21, align 8, !dbg !2004
  br label %988, !dbg !2004

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2005
  %990 = trunc i8 %989 to i1, !dbg !2005
  br i1 %990, label %992, label %991, !dbg !2007

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2008
  br label %992, !dbg !2009

992:                                              ; preds = %991, %988
  br label %993, !dbg !2010

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2011
  %995 = add i64 %994, 1, !dbg !2011
  store i64 %995, i64* %31, align 8, !dbg !2011
  br label %139, !dbg !2012, !llvm.loop !2013

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2015
  %998 = icmp eq i64 %997, 0, !dbg !2017
  br i1 %998, label %999, label %1006, !dbg !2018

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2019
  %1001 = icmp eq i32 %1000, 2, !dbg !2020
  br i1 %1001, label %1002, label %1006, !dbg !2021

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2022
  %1004 = trunc i8 %1003 to i1, !dbg !2022
  br i1 %1004, label %1005, label %1006, !dbg !2023

1005:                                             ; preds = %1002
  br label %1078, !dbg !2024

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2025
  %1008 = icmp eq i32 %1007, 2, !dbg !2027
  br i1 %1008, label %1009, label %1038, !dbg !2028

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2029
  %1011 = trunc i8 %1010 to i1, !dbg !2029
  br i1 %1011, label %1038, label %1012, !dbg !2030

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2031
  %1014 = trunc i8 %1013 to i1, !dbg !2031
  br i1 %1014, label %1015, label %1038, !dbg !2032

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2033
  %1017 = trunc i8 %1016 to i1, !dbg !2033
  br i1 %1017, label %1018, label %1028, !dbg !2036

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2037
  %1020 = load i64, i64* %22, align 8, !dbg !2038
  %1021 = load i8*, i8** %13, align 8, !dbg !2039
  %1022 = load i64, i64* %14, align 8, !dbg !2040
  %1023 = load i32, i32* %16, align 4, !dbg !2041
  %1024 = load i32*, i32** %17, align 8, !dbg !2042
  %1025 = load i8*, i8** %18, align 8, !dbg !2043
  %1026 = load i8*, i8** %19, align 8, !dbg !2044
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2045
  store i64 %1027, i64* %10, align 8, !dbg !2046
  br label %1096, !dbg !2046

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2047
  %1030 = icmp ne i64 %1029, 0, !dbg !2047
  br i1 %1030, label %1036, label %1031, !dbg !2049

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2050
  %1033 = icmp ne i64 %1032, 0, !dbg !2050
  br i1 %1033, label %1034, label %1036, !dbg !2051

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2052
  store i64 %1035, i64* %12, align 8, !dbg !2054
  store i64 0, i64* %21, align 8, !dbg !2055
  br label %51, !dbg !2056

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2057

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2058
  %1040 = icmp ne i8* %1039, null, !dbg !2058
  br i1 %1040, label %1041, label %1068, !dbg !2060

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2061
  %1043 = trunc i8 %1042 to i1, !dbg !2061
  br i1 %1043, label %1068, label %1044, !dbg !2062

1044:                                             ; preds = %1041
  br label %1045, !dbg !2063

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2064
  %1047 = load i8, i8* %1046, align 1, !dbg !2067
  %1048 = icmp ne i8 %1047, 0, !dbg !2068
  br i1 %1048, label %1049, label %1067, !dbg !2068

1049:                                             ; preds = %1045
  br label %1050, !dbg !2069

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2070
  %1052 = load i64, i64* %12, align 8, !dbg !2070
  %1053 = icmp ult i64 %1051, %1052, !dbg !2070
  br i1 %1053, label %1054, label %1060, !dbg !2073

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2070
  %1056 = load i8, i8* %1055, align 1, !dbg !2070
  %1057 = load i8*, i8** %11, align 8, !dbg !2070
  %1058 = load i64, i64* %21, align 8, !dbg !2070
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2070
  store i8 %1056, i8* %1059, align 1, !dbg !2070
  br label %1060, !dbg !2070

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2073
  %1062 = add i64 %1061, 1, !dbg !2073
  store i64 %1062, i64* %21, align 8, !dbg !2073
  br label %1063, !dbg !2073

1063:                                             ; preds = %1060
  br label %1064, !dbg !2073

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2074
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2074
  store i8* %1066, i8** %23, align 8, !dbg !2074
  br label %1045, !dbg !2075, !llvm.loop !2076

1067:                                             ; preds = %1045
  br label %1068, !dbg !2077

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2078
  %1070 = load i64, i64* %12, align 8, !dbg !2080
  %1071 = icmp ult i64 %1069, %1070, !dbg !2081
  br i1 %1071, label %1072, label %1076, !dbg !2082

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2083
  %1074 = load i64, i64* %21, align 8, !dbg !2084
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2083
  store i8 0, i8* %1075, align 1, !dbg !2085
  br label %1076, !dbg !2083

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2086
  store i64 %1077, i64* %10, align 8, !dbg !2087
  br label %1096, !dbg !2087

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2088), !dbg !2089
  %1079 = load i32, i32* %15, align 4, !dbg !2090
  %1080 = icmp eq i32 %1079, 2, !dbg !2092
  br i1 %1080, label %1081, label %1085, !dbg !2093

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2094
  %1083 = trunc i8 %1082 to i1, !dbg !2094
  br i1 %1083, label %1084, label %1085, !dbg !2095

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2096
  br label %1085, !dbg !2097

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2098
  %1087 = load i64, i64* %12, align 8, !dbg !2099
  %1088 = load i8*, i8** %13, align 8, !dbg !2100
  %1089 = load i64, i64* %14, align 8, !dbg !2101
  %1090 = load i32, i32* %15, align 4, !dbg !2102
  %1091 = load i32, i32* %16, align 4, !dbg !2103
  %1092 = and i32 %1091, -3, !dbg !2104
  %1093 = load i8*, i8** %18, align 8, !dbg !2105
  %1094 = load i8*, i8** %19, align 8, !dbg !2106
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2107
  store i64 %1095, i64* %10, align 8, !dbg !2108
  br label %1096, !dbg !2108

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2109
  ret i64 %1097, !dbg !2109
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !175 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2110, metadata !DIExpression()), !dbg !2111
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2112, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2114, metadata !DIExpression()), !dbg !2115
  %9 = load i8*, i8** %4, align 8, !dbg !2116
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.97, i64 0, i64 0), i8* noundef %9) #18, !dbg !2116
  store i8* %10, i8** %6, align 8, !dbg !2115
  %11 = load i8*, i8** %6, align 8, !dbg !2117
  %12 = load i8*, i8** %4, align 8, !dbg !2119
  %13 = icmp ne i8* %11, %12, !dbg !2120
  br i1 %13, label %14, label %16, !dbg !2121

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2122
  store i8* %15, i8** %3, align 8, !dbg !2123
  br label %37, !dbg !2123

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2124, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2126, metadata !DIExpression()), !dbg !2127
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2128
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2129
  %18 = icmp eq i64 %17, 3, !dbg !2131
  br i1 %18, label %19, label %32, !dbg !2132

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2133
  %21 = icmp eq i32 %20, 8216, !dbg !2134
  br i1 %21, label %22, label %32, !dbg !2135

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2136
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2136
  %25 = load i8, i8* %24, align 1, !dbg !2136
  %26 = zext i8 %25 to i32, !dbg !2136
  %27 = icmp eq i32 %26, 39, !dbg !2137
  %28 = zext i1 %27 to i32, !dbg !2137
  %29 = sext i32 %28 to i64, !dbg !2138
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2138
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2138
  store i8* %31, i8** %3, align 8, !dbg !2139
  br label %37, !dbg !2139

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2140
  %34 = icmp eq i32 %33, 9, !dbg !2141
  %35 = zext i1 %34 to i64, !dbg !2140
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), !dbg !2140
  store i8* %36, i8** %3, align 8, !dbg !2142
  br label %37, !dbg !2142

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2143
  ret i8* %38, !dbg !2143
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2144 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2147, metadata !DIExpression()), !dbg !2148
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2149, metadata !DIExpression()), !dbg !2150
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2151, metadata !DIExpression()), !dbg !2152
  %7 = load i8*, i8** %4, align 8, !dbg !2153
  %8 = load i64, i64* %5, align 8, !dbg !2154
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2155
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2156
  ret i8* %10, !dbg !2157
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2158 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2161, metadata !DIExpression()), !dbg !2162
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2163, metadata !DIExpression()), !dbg !2164
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2165, metadata !DIExpression()), !dbg !2166
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2167, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2169, metadata !DIExpression()), !dbg !2170
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2171
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2171
  br i1 %15, label %16, label %18, !dbg !2171

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2172
  br label %19, !dbg !2171

18:                                               ; preds = %4
  br label %19, !dbg !2171

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2171
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2170
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2173, metadata !DIExpression()), !dbg !2174
  %21 = call i32* @__errno_location() #21, !dbg !2175
  %22 = load i32, i32* %21, align 4, !dbg !2175
  store i32 %22, i32* %10, align 4, !dbg !2174
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2176, metadata !DIExpression()), !dbg !2177
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2178
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2179
  %25 = load i32, i32* %24, align 4, !dbg !2179
  %26 = load i64*, i64** %7, align 8, !dbg !2180
  %27 = icmp ne i64* %26, null, !dbg !2180
  %28 = zext i1 %27 to i64, !dbg !2180
  %29 = select i1 %27, i32 0, i32 1, !dbg !2180
  %30 = or i32 %25, %29, !dbg !2181
  store i32 %30, i32* %11, align 4, !dbg !2177
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2182, metadata !DIExpression()), !dbg !2183
  %31 = load i8*, i8** %5, align 8, !dbg !2184
  %32 = load i64, i64* %6, align 8, !dbg !2185
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2186
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2187
  %35 = load i32, i32* %34, align 8, !dbg !2187
  %36 = load i32, i32* %11, align 4, !dbg !2188
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2189
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2190
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2189
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2191
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2192
  %42 = load i8*, i8** %41, align 8, !dbg !2192
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2193
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2194
  %45 = load i8*, i8** %44, align 8, !dbg !2194
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2195
  %47 = add i64 %46, 1, !dbg !2196
  store i64 %47, i64* %12, align 8, !dbg !2183
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2197, metadata !DIExpression()), !dbg !2198
  %48 = load i64, i64* %12, align 8, !dbg !2199
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2200
  store i8* %49, i8** %13, align 8, !dbg !2198
  %50 = load i8*, i8** %13, align 8, !dbg !2201
  %51 = load i64, i64* %12, align 8, !dbg !2202
  %52 = load i8*, i8** %5, align 8, !dbg !2203
  %53 = load i64, i64* %6, align 8, !dbg !2204
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2205
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2206
  %56 = load i32, i32* %55, align 8, !dbg !2206
  %57 = load i32, i32* %11, align 4, !dbg !2207
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2208
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2209
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2208
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2210
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2211
  %63 = load i8*, i8** %62, align 8, !dbg !2211
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2212
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2213
  %66 = load i8*, i8** %65, align 8, !dbg !2213
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2214
  %68 = load i32, i32* %10, align 4, !dbg !2215
  %69 = call i32* @__errno_location() #21, !dbg !2216
  store i32 %68, i32* %69, align 4, !dbg !2217
  %70 = load i64*, i64** %7, align 8, !dbg !2218
  %71 = icmp ne i64* %70, null, !dbg !2218
  br i1 %71, label %72, label %76, !dbg !2220

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2221
  %74 = sub i64 %73, 1, !dbg !2222
  %75 = load i64*, i64** %7, align 8, !dbg !2223
  store i64 %74, i64* %75, align 8, !dbg !2224
  br label %76, !dbg !2225

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2226
  ret i8* %77, !dbg !2227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2228 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2229, metadata !DIExpression()), !dbg !2230
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2231
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2230
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2232, metadata !DIExpression()), !dbg !2234
  store i32 1, i32* %2, align 4, !dbg !2234
  br label %4, !dbg !2235

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2236
  %6 = load i32, i32* @nslots, align 4, !dbg !2238
  %7 = icmp slt i32 %5, %6, !dbg !2239
  br i1 %7, label %8, label %18, !dbg !2240

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2241
  %10 = load i32, i32* %2, align 4, !dbg !2242
  %11 = sext i32 %10 to i64, !dbg !2241
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2241
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2243
  %14 = load i8*, i8** %13, align 8, !dbg !2243
  call void @free(i8* noundef %14) #18, !dbg !2244
  br label %15, !dbg !2244

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2245
  %17 = add nsw i32 %16, 1, !dbg !2245
  store i32 %17, i32* %2, align 4, !dbg !2245
  br label %4, !dbg !2246, !llvm.loop !2247

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2249
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2249
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2251
  %22 = load i8*, i8** %21, align 8, !dbg !2251
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2252
  br i1 %23, label %24, label %29, !dbg !2253

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2254
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2254
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2256
  %28 = load i8*, i8** %27, align 8, !dbg !2256
  call void @free(i8* noundef %28) #18, !dbg !2257
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2258
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2259
  br label %29, !dbg !2260

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2261
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2263
  br i1 %31, label %32, label %35, !dbg !2264

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2265
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2265
  call void @free(i8* noundef %34) #18, !dbg !2267
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2268
  br label %35, !dbg !2269

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2270
  ret void, !dbg !2271
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2272 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2275, metadata !DIExpression()), !dbg !2276
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2277, metadata !DIExpression()), !dbg !2278
  %5 = load i32, i32* %3, align 4, !dbg !2279
  %6 = load i8*, i8** %4, align 8, !dbg !2280
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2281
  ret i8* %7, !dbg !2282
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2283 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2286, metadata !DIExpression()), !dbg !2287
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2288, metadata !DIExpression()), !dbg !2289
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2290, metadata !DIExpression()), !dbg !2291
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2292, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2294, metadata !DIExpression()), !dbg !2295
  %18 = call i32* @__errno_location() #21, !dbg !2296
  %19 = load i32, i32* %18, align 4, !dbg !2296
  store i32 %19, i32* %9, align 4, !dbg !2295
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2297, metadata !DIExpression()), !dbg !2298
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2299
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2298
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2300, metadata !DIExpression()), !dbg !2301
  store i32 2147483647, i32* %11, align 4, !dbg !2301
  %21 = load i32, i32* %5, align 4, !dbg !2302
  %22 = icmp sle i32 0, %21, !dbg !2304
  br i1 %22, label %23, label %27, !dbg !2305

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2306
  %25 = load i32, i32* %11, align 4, !dbg !2307
  %26 = icmp slt i32 %24, %25, !dbg !2308
  br i1 %26, label %28, label %27, !dbg !2309

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2310
  unreachable, !dbg !2310

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2311
  %30 = load i32, i32* %5, align 4, !dbg !2313
  %31 = icmp sle i32 %29, %30, !dbg !2314
  br i1 %31, label %32, label %73, !dbg !2315

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2316, metadata !DIExpression()), !dbg !2318
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2319
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2320
  %35 = zext i1 %34 to i8, !dbg !2318
  store i8 %35, i8* %12, align 1, !dbg !2318
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2321, metadata !DIExpression()), !dbg !2322
  %36 = load i32, i32* @nslots, align 4, !dbg !2323
  %37 = sext i32 %36 to i64, !dbg !2323
  store i64 %37, i64* %13, align 8, !dbg !2322
  %38 = load i8, i8* %12, align 1, !dbg !2324
  %39 = trunc i8 %38 to i1, !dbg !2324
  br i1 %39, label %40, label %41, !dbg !2324

40:                                               ; preds = %32
  br label %43, !dbg !2324

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2325
  br label %43, !dbg !2324

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2324
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2324
  %46 = load i32, i32* %5, align 4, !dbg !2326
  %47 = load i32, i32* @nslots, align 4, !dbg !2327
  %48 = sub nsw i32 %46, %47, !dbg !2328
  %49 = add nsw i32 %48, 1, !dbg !2329
  %50 = sext i32 %49 to i64, !dbg !2326
  %51 = load i32, i32* %11, align 4, !dbg !2330
  %52 = sext i32 %51 to i64, !dbg !2330
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2331
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2331
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2332
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2333
  %55 = load i8, i8* %12, align 1, !dbg !2334
  %56 = trunc i8 %55 to i1, !dbg !2334
  br i1 %56, label %57, label %60, !dbg !2336

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2337
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2338
  br label %60, !dbg !2339

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2340
  %62 = load i32, i32* @nslots, align 4, !dbg !2341
  %63 = sext i32 %62 to i64, !dbg !2342
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2342
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2343
  %66 = load i64, i64* %13, align 8, !dbg !2344
  %67 = load i32, i32* @nslots, align 4, !dbg !2345
  %68 = sext i32 %67 to i64, !dbg !2345
  %69 = sub nsw i64 %66, %68, !dbg !2346
  %70 = mul i64 %69, 16, !dbg !2347
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2343
  %71 = load i64, i64* %13, align 8, !dbg !2348
  %72 = trunc i64 %71 to i32, !dbg !2348
  store i32 %72, i32* @nslots, align 4, !dbg !2349
  br label %73, !dbg !2350

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2351, metadata !DIExpression()), !dbg !2353
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2354
  %75 = load i32, i32* %5, align 4, !dbg !2355
  %76 = sext i32 %75 to i64, !dbg !2354
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2354
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2356
  %79 = load i64, i64* %78, align 8, !dbg !2356
  store i64 %79, i64* %14, align 8, !dbg !2353
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2357, metadata !DIExpression()), !dbg !2358
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2359
  %81 = load i32, i32* %5, align 4, !dbg !2360
  %82 = sext i32 %81 to i64, !dbg !2359
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2359
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2361
  %85 = load i8*, i8** %84, align 8, !dbg !2361
  store i8* %85, i8** %15, align 8, !dbg !2358
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2362, metadata !DIExpression()), !dbg !2363
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2364
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2365
  %88 = load i32, i32* %87, align 4, !dbg !2365
  %89 = or i32 %88, 1, !dbg !2366
  store i32 %89, i32* %16, align 4, !dbg !2363
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2367, metadata !DIExpression()), !dbg !2368
  %90 = load i8*, i8** %15, align 8, !dbg !2369
  %91 = load i64, i64* %14, align 8, !dbg !2370
  %92 = load i8*, i8** %6, align 8, !dbg !2371
  %93 = load i64, i64* %7, align 8, !dbg !2372
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2373
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2374
  %96 = load i32, i32* %95, align 8, !dbg !2374
  %97 = load i32, i32* %16, align 4, !dbg !2375
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2376
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2377
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2376
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2378
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2379
  %103 = load i8*, i8** %102, align 8, !dbg !2379
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2380
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2381
  %106 = load i8*, i8** %105, align 8, !dbg !2381
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2382
  store i64 %107, i64* %17, align 8, !dbg !2368
  %108 = load i64, i64* %14, align 8, !dbg !2383
  %109 = load i64, i64* %17, align 8, !dbg !2385
  %110 = icmp ule i64 %108, %109, !dbg !2386
  br i1 %110, label %111, label %149, !dbg !2387

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2388
  %113 = add i64 %112, 1, !dbg !2390
  store i64 %113, i64* %14, align 8, !dbg !2391
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2392
  %115 = load i32, i32* %5, align 4, !dbg !2393
  %116 = sext i32 %115 to i64, !dbg !2392
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2392
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2394
  store i64 %113, i64* %118, align 8, !dbg !2395
  %119 = load i8*, i8** %15, align 8, !dbg !2396
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2398
  br i1 %120, label %121, label %123, !dbg !2399

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2400
  call void @free(i8* noundef %122) #18, !dbg !2401
  br label %123, !dbg !2401

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2402
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2403
  store i8* %125, i8** %15, align 8, !dbg !2404
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2405
  %127 = load i32, i32* %5, align 4, !dbg !2406
  %128 = sext i32 %127 to i64, !dbg !2405
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2405
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2407
  store i8* %125, i8** %130, align 8, !dbg !2408
  %131 = load i8*, i8** %15, align 8, !dbg !2409
  %132 = load i64, i64* %14, align 8, !dbg !2410
  %133 = load i8*, i8** %6, align 8, !dbg !2411
  %134 = load i64, i64* %7, align 8, !dbg !2412
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2413
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2414
  %137 = load i32, i32* %136, align 8, !dbg !2414
  %138 = load i32, i32* %16, align 4, !dbg !2415
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2416
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2417
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2416
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2418
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2419
  %144 = load i8*, i8** %143, align 8, !dbg !2419
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2420
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2421
  %147 = load i8*, i8** %146, align 8, !dbg !2421
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2422
  br label %149, !dbg !2423

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2424
  %151 = call i32* @__errno_location() #21, !dbg !2425
  store i32 %150, i32* %151, align 4, !dbg !2426
  %152 = load i8*, i8** %15, align 8, !dbg !2427
  ret i8* %152, !dbg !2428
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2429 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2432, metadata !DIExpression()), !dbg !2433
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2434, metadata !DIExpression()), !dbg !2435
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2436, metadata !DIExpression()), !dbg !2437
  %7 = load i32, i32* %4, align 4, !dbg !2438
  %8 = load i8*, i8** %5, align 8, !dbg !2439
  %9 = load i64, i64* %6, align 8, !dbg !2440
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2441
  ret i8* %10, !dbg !2442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2443 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2444, metadata !DIExpression()), !dbg !2445
  %3 = load i8*, i8** %2, align 8, !dbg !2446
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2447
  ret i8* %4, !dbg !2448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2449 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2452, metadata !DIExpression()), !dbg !2453
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2454, metadata !DIExpression()), !dbg !2455
  %5 = load i8*, i8** %3, align 8, !dbg !2456
  %6 = load i64, i64* %4, align 8, !dbg !2457
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2458
  ret i8* %7, !dbg !2459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2460 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2463, metadata !DIExpression()), !dbg !2464
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2465, metadata !DIExpression()), !dbg !2466
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2467, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2469, metadata !DIExpression()), !dbg !2470
  %8 = load i32, i32* %5, align 4, !dbg !2471
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2472
  %9 = load i32, i32* %4, align 4, !dbg !2473
  %10 = load i8*, i8** %6, align 8, !dbg !2474
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2475
  ret i8* %11, !dbg !2476
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2477 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2480, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2482, metadata !DIExpression()), !dbg !2483
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2483
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2483
  %5 = load i32, i32* %3, align 4, !dbg !2484
  %6 = icmp eq i32 %5, 10, !dbg !2486
  br i1 %6, label %7, label %8, !dbg !2487

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2488
  unreachable, !dbg !2488

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2489
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2490
  store i32 %9, i32* %10, align 8, !dbg !2491
  ret void, !dbg !2492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2493 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2496, metadata !DIExpression()), !dbg !2497
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2498, metadata !DIExpression()), !dbg !2499
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2500, metadata !DIExpression()), !dbg !2501
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2502, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2504, metadata !DIExpression()), !dbg !2505
  %10 = load i32, i32* %6, align 4, !dbg !2506
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2507
  %11 = load i32, i32* %5, align 4, !dbg !2508
  %12 = load i8*, i8** %7, align 8, !dbg !2509
  %13 = load i64, i64* %8, align 8, !dbg !2510
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2511
  ret i8* %14, !dbg !2512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2513 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2516, metadata !DIExpression()), !dbg !2517
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2518, metadata !DIExpression()), !dbg !2519
  %5 = load i32, i32* %3, align 4, !dbg !2520
  %6 = load i8*, i8** %4, align 8, !dbg !2521
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2522
  ret i8* %7, !dbg !2523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2524 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2527, metadata !DIExpression()), !dbg !2528
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2529, metadata !DIExpression()), !dbg !2530
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2531, metadata !DIExpression()), !dbg !2532
  %7 = load i32, i32* %4, align 4, !dbg !2533
  %8 = load i8*, i8** %5, align 8, !dbg !2534
  %9 = load i64, i64* %6, align 8, !dbg !2535
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2536
  ret i8* %10, !dbg !2537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2538 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2541, metadata !DIExpression()), !dbg !2542
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2543, metadata !DIExpression()), !dbg !2544
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2545, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2547, metadata !DIExpression()), !dbg !2548
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2549
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2549
  %9 = load i8, i8* %6, align 1, !dbg !2550
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2551
  %11 = load i8*, i8** %4, align 8, !dbg !2552
  %12 = load i64, i64* %5, align 8, !dbg !2553
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2554
  ret i8* %13, !dbg !2555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2556 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2559, metadata !DIExpression()), !dbg !2560
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2561, metadata !DIExpression()), !dbg !2562
  %5 = load i8*, i8** %3, align 8, !dbg !2563
  %6 = load i8, i8* %4, align 1, !dbg !2564
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2565
  ret i8* %7, !dbg !2566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2567 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2568, metadata !DIExpression()), !dbg !2569
  %3 = load i8*, i8** %2, align 8, !dbg !2570
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2571
  ret i8* %4, !dbg !2572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2573 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2574, metadata !DIExpression()), !dbg !2575
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2576, metadata !DIExpression()), !dbg !2577
  %5 = load i8*, i8** %3, align 8, !dbg !2578
  %6 = load i64, i64* %4, align 8, !dbg !2579
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2580
  ret i8* %7, !dbg !2581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2582 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2583, metadata !DIExpression()), !dbg !2584
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2585, metadata !DIExpression()), !dbg !2586
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2587, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2589, metadata !DIExpression()), !dbg !2590
  %9 = load i32, i32* %5, align 4, !dbg !2591
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2592
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2592
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2592
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2592
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2593
  %13 = load i32, i32* %4, align 4, !dbg !2594
  %14 = load i8*, i8** %6, align 8, !dbg !2595
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2596
  ret i8* %15, !dbg !2597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2598 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2601, metadata !DIExpression()), !dbg !2602
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2603, metadata !DIExpression()), !dbg !2604
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2605, metadata !DIExpression()), !dbg !2606
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2607, metadata !DIExpression()), !dbg !2608
  %9 = load i32, i32* %5, align 4, !dbg !2609
  %10 = load i8*, i8** %6, align 8, !dbg !2610
  %11 = load i8*, i8** %7, align 8, !dbg !2611
  %12 = load i8*, i8** %8, align 8, !dbg !2612
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2613
  ret i8* %13, !dbg !2614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2615 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2618, metadata !DIExpression()), !dbg !2619
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2620, metadata !DIExpression()), !dbg !2621
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2622, metadata !DIExpression()), !dbg !2623
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2624, metadata !DIExpression()), !dbg !2625
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2626, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2628, metadata !DIExpression()), !dbg !2629
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2630
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2630
  %13 = load i8*, i8** %7, align 8, !dbg !2631
  %14 = load i8*, i8** %8, align 8, !dbg !2632
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2633
  %15 = load i32, i32* %6, align 4, !dbg !2634
  %16 = load i8*, i8** %9, align 8, !dbg !2635
  %17 = load i64, i64* %10, align 8, !dbg !2636
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2637
  ret i8* %18, !dbg !2638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2639 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2642, metadata !DIExpression()), !dbg !2643
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2644, metadata !DIExpression()), !dbg !2645
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2646, metadata !DIExpression()), !dbg !2647
  %7 = load i8*, i8** %4, align 8, !dbg !2648
  %8 = load i8*, i8** %5, align 8, !dbg !2649
  %9 = load i8*, i8** %6, align 8, !dbg !2650
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2651
  ret i8* %10, !dbg !2652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2653 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2656, metadata !DIExpression()), !dbg !2657
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2658, metadata !DIExpression()), !dbg !2659
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2660, metadata !DIExpression()), !dbg !2661
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2662, metadata !DIExpression()), !dbg !2663
  %9 = load i8*, i8** %5, align 8, !dbg !2664
  %10 = load i8*, i8** %6, align 8, !dbg !2665
  %11 = load i8*, i8** %7, align 8, !dbg !2666
  %12 = load i64, i64* %8, align 8, !dbg !2667
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2668
  ret i8* %13, !dbg !2669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2670 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2673, metadata !DIExpression()), !dbg !2674
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2675, metadata !DIExpression()), !dbg !2676
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2677, metadata !DIExpression()), !dbg !2678
  %7 = load i32, i32* %4, align 4, !dbg !2679
  %8 = load i8*, i8** %5, align 8, !dbg !2680
  %9 = load i64, i64* %6, align 8, !dbg !2681
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2682
  ret i8* %10, !dbg !2683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2684 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2687, metadata !DIExpression()), !dbg !2688
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2689, metadata !DIExpression()), !dbg !2690
  %5 = load i8*, i8** %3, align 8, !dbg !2691
  %6 = load i64, i64* %4, align 8, !dbg !2692
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2693
  ret i8* %7, !dbg !2694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2695 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2698, metadata !DIExpression()), !dbg !2699
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2700, metadata !DIExpression()), !dbg !2701
  %5 = load i32, i32* %3, align 4, !dbg !2702
  %6 = load i8*, i8** %4, align 8, !dbg !2703
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2704
  ret i8* %7, !dbg !2705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2706 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2709, metadata !DIExpression()), !dbg !2710
  %3 = load i8*, i8** %2, align 8, !dbg !2711
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2712
  ret i8* %4, !dbg !2713
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2714 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2718, metadata !DIExpression()), !dbg !2719
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2720, metadata !DIExpression()), !dbg !2721
  %5 = load i8*, i8** %3, align 8, !dbg !2722
  %6 = load i8*, i8** %4, align 8, !dbg !2723
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2724
  %8 = icmp ne i32 %7, 0, !dbg !2725
  %9 = xor i1 %8, true, !dbg !2725
  ret i1 %9, !dbg !2726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2727 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2784, metadata !DIExpression()), !dbg !2785
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2786, metadata !DIExpression()), !dbg !2787
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2788, metadata !DIExpression()), !dbg !2789
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2790, metadata !DIExpression()), !dbg !2791
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2792, metadata !DIExpression()), !dbg !2793
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2794, metadata !DIExpression()), !dbg !2795
  %13 = load i8*, i8** %8, align 8, !dbg !2796
  %14 = icmp ne i8* %13, null, !dbg !2796
  br i1 %14, label %15, label %21, !dbg !2798

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2799
  %17 = load i8*, i8** %8, align 8, !dbg !2800
  %18 = load i8*, i8** %9, align 8, !dbg !2801
  %19 = load i8*, i8** %10, align 8, !dbg !2802
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !2803
  br label %26, !dbg !2803

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2804
  %23 = load i8*, i8** %9, align 8, !dbg !2805
  %24 = load i8*, i8** %10, align 8, !dbg !2806
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.103, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !2807
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2808
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.105, i64 0, i64 0)) #18, !dbg !2809
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !2810
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2811
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.106, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !2811
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2812
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.107, i64 0, i64 0)) #18, !dbg !2813
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.108, i64 0, i64 0)), !dbg !2814
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2815
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.106, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !2815
  %37 = load i64, i64* %12, align 8, !dbg !2816
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
  ], !dbg !2817

38:                                               ; preds = %26
  br label %241, !dbg !2818

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2820
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.109, i64 0, i64 0)) #18, !dbg !2821
  %42 = load i8**, i8*** %11, align 8, !dbg !2822
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !2822
  %44 = load i8*, i8** %43, align 8, !dbg !2822
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !2823
  br label %241, !dbg !2824

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2825
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.110, i64 0, i64 0)) #18, !dbg !2826
  %49 = load i8**, i8*** %11, align 8, !dbg !2827
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !2827
  %51 = load i8*, i8** %50, align 8, !dbg !2827
  %52 = load i8**, i8*** %11, align 8, !dbg !2828
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !2828
  %54 = load i8*, i8** %53, align 8, !dbg !2828
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !2829
  br label %241, !dbg !2830

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2831
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.111, i64 0, i64 0)) #18, !dbg !2832
  %59 = load i8**, i8*** %11, align 8, !dbg !2833
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !2833
  %61 = load i8*, i8** %60, align 8, !dbg !2833
  %62 = load i8**, i8*** %11, align 8, !dbg !2834
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2834
  %64 = load i8*, i8** %63, align 8, !dbg !2834
  %65 = load i8**, i8*** %11, align 8, !dbg !2835
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !2835
  %67 = load i8*, i8** %66, align 8, !dbg !2835
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !2836
  br label %241, !dbg !2837

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2838
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.112, i64 0, i64 0)) #18, !dbg !2839
  %72 = load i8**, i8*** %11, align 8, !dbg !2840
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !2840
  %74 = load i8*, i8** %73, align 8, !dbg !2840
  %75 = load i8**, i8*** %11, align 8, !dbg !2841
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !2841
  %77 = load i8*, i8** %76, align 8, !dbg !2841
  %78 = load i8**, i8*** %11, align 8, !dbg !2842
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !2842
  %80 = load i8*, i8** %79, align 8, !dbg !2842
  %81 = load i8**, i8*** %11, align 8, !dbg !2843
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2843
  %83 = load i8*, i8** %82, align 8, !dbg !2843
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !2844
  br label %241, !dbg !2845

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2846
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.113, i64 0, i64 0)) #18, !dbg !2847
  %88 = load i8**, i8*** %11, align 8, !dbg !2848
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !2848
  %90 = load i8*, i8** %89, align 8, !dbg !2848
  %91 = load i8**, i8*** %11, align 8, !dbg !2849
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !2849
  %93 = load i8*, i8** %92, align 8, !dbg !2849
  %94 = load i8**, i8*** %11, align 8, !dbg !2850
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !2850
  %96 = load i8*, i8** %95, align 8, !dbg !2850
  %97 = load i8**, i8*** %11, align 8, !dbg !2851
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !2851
  %99 = load i8*, i8** %98, align 8, !dbg !2851
  %100 = load i8**, i8*** %11, align 8, !dbg !2852
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2852
  %102 = load i8*, i8** %101, align 8, !dbg !2852
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !2853
  br label %241, !dbg !2854

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2855
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.114, i64 0, i64 0)) #18, !dbg !2856
  %107 = load i8**, i8*** %11, align 8, !dbg !2857
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !2857
  %109 = load i8*, i8** %108, align 8, !dbg !2857
  %110 = load i8**, i8*** %11, align 8, !dbg !2858
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !2858
  %112 = load i8*, i8** %111, align 8, !dbg !2858
  %113 = load i8**, i8*** %11, align 8, !dbg !2859
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !2859
  %115 = load i8*, i8** %114, align 8, !dbg !2859
  %116 = load i8**, i8*** %11, align 8, !dbg !2860
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !2860
  %118 = load i8*, i8** %117, align 8, !dbg !2860
  %119 = load i8**, i8*** %11, align 8, !dbg !2861
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2861
  %121 = load i8*, i8** %120, align 8, !dbg !2861
  %122 = load i8**, i8*** %11, align 8, !dbg !2862
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !2862
  %124 = load i8*, i8** %123, align 8, !dbg !2862
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !2863
  br label %241, !dbg !2864

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2865
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.115, i64 0, i64 0)) #18, !dbg !2866
  %129 = load i8**, i8*** %11, align 8, !dbg !2867
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !2867
  %131 = load i8*, i8** %130, align 8, !dbg !2867
  %132 = load i8**, i8*** %11, align 8, !dbg !2868
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !2868
  %134 = load i8*, i8** %133, align 8, !dbg !2868
  %135 = load i8**, i8*** %11, align 8, !dbg !2869
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !2869
  %137 = load i8*, i8** %136, align 8, !dbg !2869
  %138 = load i8**, i8*** %11, align 8, !dbg !2870
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !2870
  %140 = load i8*, i8** %139, align 8, !dbg !2870
  %141 = load i8**, i8*** %11, align 8, !dbg !2871
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !2871
  %143 = load i8*, i8** %142, align 8, !dbg !2871
  %144 = load i8**, i8*** %11, align 8, !dbg !2872
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !2872
  %146 = load i8*, i8** %145, align 8, !dbg !2872
  %147 = load i8**, i8*** %11, align 8, !dbg !2873
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !2873
  %149 = load i8*, i8** %148, align 8, !dbg !2873
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !2874
  br label %241, !dbg !2875

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2876
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.116, i64 0, i64 0)) #18, !dbg !2877
  %154 = load i8**, i8*** %11, align 8, !dbg !2878
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !2878
  %156 = load i8*, i8** %155, align 8, !dbg !2878
  %157 = load i8**, i8*** %11, align 8, !dbg !2879
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !2879
  %159 = load i8*, i8** %158, align 8, !dbg !2879
  %160 = load i8**, i8*** %11, align 8, !dbg !2880
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !2880
  %162 = load i8*, i8** %161, align 8, !dbg !2880
  %163 = load i8**, i8*** %11, align 8, !dbg !2881
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !2881
  %165 = load i8*, i8** %164, align 8, !dbg !2881
  %166 = load i8**, i8*** %11, align 8, !dbg !2882
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !2882
  %168 = load i8*, i8** %167, align 8, !dbg !2882
  %169 = load i8**, i8*** %11, align 8, !dbg !2883
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !2883
  %171 = load i8*, i8** %170, align 8, !dbg !2883
  %172 = load i8**, i8*** %11, align 8, !dbg !2884
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !2884
  %174 = load i8*, i8** %173, align 8, !dbg !2884
  %175 = load i8**, i8*** %11, align 8, !dbg !2885
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !2885
  %177 = load i8*, i8** %176, align 8, !dbg !2885
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !2886
  br label %241, !dbg !2887

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2888
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.117, i64 0, i64 0)) #18, !dbg !2889
  %182 = load i8**, i8*** %11, align 8, !dbg !2890
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !2890
  %184 = load i8*, i8** %183, align 8, !dbg !2890
  %185 = load i8**, i8*** %11, align 8, !dbg !2891
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !2891
  %187 = load i8*, i8** %186, align 8, !dbg !2891
  %188 = load i8**, i8*** %11, align 8, !dbg !2892
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !2892
  %190 = load i8*, i8** %189, align 8, !dbg !2892
  %191 = load i8**, i8*** %11, align 8, !dbg !2893
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !2893
  %193 = load i8*, i8** %192, align 8, !dbg !2893
  %194 = load i8**, i8*** %11, align 8, !dbg !2894
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !2894
  %196 = load i8*, i8** %195, align 8, !dbg !2894
  %197 = load i8**, i8*** %11, align 8, !dbg !2895
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !2895
  %199 = load i8*, i8** %198, align 8, !dbg !2895
  %200 = load i8**, i8*** %11, align 8, !dbg !2896
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !2896
  %202 = load i8*, i8** %201, align 8, !dbg !2896
  %203 = load i8**, i8*** %11, align 8, !dbg !2897
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !2897
  %205 = load i8*, i8** %204, align 8, !dbg !2897
  %206 = load i8**, i8*** %11, align 8, !dbg !2898
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !2898
  %208 = load i8*, i8** %207, align 8, !dbg !2898
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !2899
  br label %241, !dbg !2900

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2901
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.118, i64 0, i64 0)) #18, !dbg !2902
  %213 = load i8**, i8*** %11, align 8, !dbg !2903
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !2903
  %215 = load i8*, i8** %214, align 8, !dbg !2903
  %216 = load i8**, i8*** %11, align 8, !dbg !2904
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !2904
  %218 = load i8*, i8** %217, align 8, !dbg !2904
  %219 = load i8**, i8*** %11, align 8, !dbg !2905
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !2905
  %221 = load i8*, i8** %220, align 8, !dbg !2905
  %222 = load i8**, i8*** %11, align 8, !dbg !2906
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !2906
  %224 = load i8*, i8** %223, align 8, !dbg !2906
  %225 = load i8**, i8*** %11, align 8, !dbg !2907
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !2907
  %227 = load i8*, i8** %226, align 8, !dbg !2907
  %228 = load i8**, i8*** %11, align 8, !dbg !2908
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !2908
  %230 = load i8*, i8** %229, align 8, !dbg !2908
  %231 = load i8**, i8*** %11, align 8, !dbg !2909
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !2909
  %233 = load i8*, i8** %232, align 8, !dbg !2909
  %234 = load i8**, i8*** %11, align 8, !dbg !2910
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !2910
  %236 = load i8*, i8** %235, align 8, !dbg !2910
  %237 = load i8**, i8*** %11, align 8, !dbg !2911
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !2911
  %239 = load i8*, i8** %238, align 8, !dbg !2911
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !2912
  br label %241, !dbg !2913

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !2914
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !2915 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2918, metadata !DIExpression()), !dbg !2919
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2920, metadata !DIExpression()), !dbg !2921
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2922, metadata !DIExpression()), !dbg !2923
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2924, metadata !DIExpression()), !dbg !2925
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2926, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2928, metadata !DIExpression()), !dbg !2929
  store i64 0, i64* %11, align 8, !dbg !2930
  br label %12, !dbg !2932

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !2933
  %14 = load i64, i64* %11, align 8, !dbg !2935
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !2933
  %16 = load i8*, i8** %15, align 8, !dbg !2933
  %17 = icmp ne i8* %16, null, !dbg !2936
  br i1 %17, label %18, label %22, !dbg !2936

18:                                               ; preds = %12
  br label %19, !dbg !2936

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !2937
  %21 = add i64 %20, 1, !dbg !2937
  store i64 %21, i64* %11, align 8, !dbg !2937
  br label %12, !dbg !2938, !llvm.loop !2939

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2941
  %24 = load i8*, i8** %7, align 8, !dbg !2942
  %25 = load i8*, i8** %8, align 8, !dbg !2943
  %26 = load i8*, i8** %9, align 8, !dbg !2944
  %27 = load i8**, i8*** %10, align 8, !dbg !2945
  %28 = load i64, i64* %11, align 8, !dbg !2946
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !2947
  ret void, !dbg !2948
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !2949 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2963, metadata !DIExpression()), !dbg !2964
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2965, metadata !DIExpression()), !dbg !2966
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2967, metadata !DIExpression()), !dbg !2968
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2969, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2971, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2973, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !2975, metadata !DIExpression()), !dbg !2977
  store i64 0, i64* %10, align 8, !dbg !2978
  br label %12, !dbg !2980

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !2981
  %14 = icmp ult i64 %13, 10, !dbg !2983
  br i1 %14, label %15, label %38, !dbg !2984

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !2985
  %17 = load i32, i32* %16, align 8, !dbg !2985
  %18 = icmp sge i32 %17, 0, !dbg !2985
  br i1 %18, label %27, label %19, !dbg !2985

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !2985
  store i32 %20, i32* %16, align 8, !dbg !2985
  %21 = icmp sle i32 %20, 0, !dbg !2985
  br i1 %21, label %22, label %27, !dbg !2985

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !2985
  %24 = load i8*, i8** %23, align 8, !dbg !2985
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !2985
  %26 = bitcast i8* %25 to i8**, !dbg !2985
  br label %32, !dbg !2985

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !2985
  %29 = load i8*, i8** %28, align 8, !dbg !2985
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !2985
  store i8* %30, i8** %28, align 8, !dbg !2985
  %31 = bitcast i8* %29 to i8**, !dbg !2985
  br label %32, !dbg !2985

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !2985
  %34 = load i8*, i8** %33, align 8, !dbg !2985
  %35 = load i64, i64* %10, align 8, !dbg !2986
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !2987
  store i8* %34, i8** %36, align 8, !dbg !2988
  %37 = icmp ne i8* %34, null, !dbg !2989
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !2990
  br i1 %39, label %40, label %44, !dbg !2991

40:                                               ; preds = %38
  br label %41, !dbg !2991

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !2992
  %43 = add i64 %42, 1, !dbg !2992
  store i64 %43, i64* %10, align 8, !dbg !2992
  br label %12, !dbg !2993, !llvm.loop !2994

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2996
  %46 = load i8*, i8** %7, align 8, !dbg !2997
  %47 = load i8*, i8** %8, align 8, !dbg !2998
  %48 = load i8*, i8** %9, align 8, !dbg !2999
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3000
  %50 = load i64, i64* %10, align 8, !dbg !3001
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3002
  ret void, !dbg !3003
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3004 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3007, metadata !DIExpression()), !dbg !3008
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3009, metadata !DIExpression()), !dbg !3010
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3011, metadata !DIExpression()), !dbg !3012
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3013, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3015, metadata !DIExpression()), !dbg !3016
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3017
  call void @llvm.va_start(i8* %11), !dbg !3017
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3018
  %13 = load i8*, i8** %6, align 8, !dbg !3019
  %14 = load i8*, i8** %7, align 8, !dbg !3020
  %15 = load i8*, i8** %8, align 8, !dbg !3021
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3022
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3022
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3022
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3022
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3023
  call void @llvm.va_end(i8* %18), !dbg !3023
  ret void, !dbg !3024
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3025 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3026
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.106, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3026
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.123, i64 0, i64 0)) #18, !dbg !3027
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.124, i64 0, i64 0)), !dbg !3028
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.125, i64 0, i64 0)) #18, !dbg !3029
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.127, i64 0, i64 0)), !dbg !3030
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.128, i64 0, i64 0)) #18, !dbg !3031
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.129, i64 0, i64 0)), !dbg !3032
  ret void, !dbg !3033
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3034 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3038, metadata !DIExpression()), !dbg !3039
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3040, metadata !DIExpression()), !dbg !3041
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3042, metadata !DIExpression()), !dbg !3043
  %7 = load i8*, i8** %4, align 8, !dbg !3044
  %8 = load i64, i64* %5, align 8, !dbg !3045
  %9 = load i64, i64* %6, align 8, !dbg !3046
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3047
  ret i8* %10, !dbg !3048
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3049 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3050, metadata !DIExpression()), !dbg !3051
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3052, metadata !DIExpression()), !dbg !3053
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3054, metadata !DIExpression()), !dbg !3055
  %7 = load i8*, i8** %4, align 8, !dbg !3056
  %8 = load i64, i64* %5, align 8, !dbg !3057
  %9 = load i64, i64* %6, align 8, !dbg !3058
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3059
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3060
  ret i8* %11, !dbg !3061
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3062 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3065, metadata !DIExpression()), !dbg !3066
  %3 = load i8*, i8** %2, align 8, !dbg !3067
  %4 = icmp ne i8* %3, null, !dbg !3067
  br i1 %4, label %6, label %5, !dbg !3069

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3070
  unreachable, !dbg !3070

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3071
  ret i8* %7, !dbg !3072
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3073 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3076, metadata !DIExpression()), !dbg !3077
  %3 = load i64, i64* %2, align 8, !dbg !3078
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3079
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3080
  ret i8* %5, !dbg !3081
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3082 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3085, metadata !DIExpression()), !dbg !3086
  %3 = load i64, i64* %2, align 8, !dbg !3087
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3088
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3089
  ret i8* %5, !dbg !3090
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3091 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3094, metadata !DIExpression()), !dbg !3095
  %3 = load i64, i64* %2, align 8, !dbg !3096
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3096
  ret i8* %4, !dbg !3097
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3098 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3101, metadata !DIExpression()), !dbg !3102
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3103, metadata !DIExpression()), !dbg !3104
  %5 = load i8*, i8** %3, align 8, !dbg !3105
  %6 = load i64, i64* %4, align 8, !dbg !3106
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3107
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3108
  ret i8* %8, !dbg !3109
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3110 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3113, metadata !DIExpression()), !dbg !3114
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3115, metadata !DIExpression()), !dbg !3116
  %5 = load i8*, i8** %3, align 8, !dbg !3117
  %6 = load i64, i64* %4, align 8, !dbg !3118
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3119
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3120
  ret i8* %8, !dbg !3121
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3122 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3125, metadata !DIExpression()), !dbg !3126
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3127, metadata !DIExpression()), !dbg !3128
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3129, metadata !DIExpression()), !dbg !3130
  %7 = load i8*, i8** %4, align 8, !dbg !3131
  %8 = load i64, i64* %5, align 8, !dbg !3132
  %9 = load i64, i64* %6, align 8, !dbg !3133
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3134
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3135
  ret i8* %11, !dbg !3136
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3137 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3140, metadata !DIExpression()), !dbg !3141
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3142, metadata !DIExpression()), !dbg !3143
  %5 = load i64, i64* %3, align 8, !dbg !3144
  %6 = load i64, i64* %4, align 8, !dbg !3145
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3146
  ret i8* %7, !dbg !3147
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3148 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3151, metadata !DIExpression()), !dbg !3152
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3153, metadata !DIExpression()), !dbg !3154
  %5 = load i64, i64* %3, align 8, !dbg !3155
  %6 = load i64, i64* %4, align 8, !dbg !3156
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3157
  ret i8* %7, !dbg !3158
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3159 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3162, metadata !DIExpression()), !dbg !3163
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3164, metadata !DIExpression()), !dbg !3165
  %5 = load i8*, i8** %3, align 8, !dbg !3166
  %6 = load i64*, i64** %4, align 8, !dbg !3167
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3168
  ret i8* %7, !dbg !3169
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !245 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3170, metadata !DIExpression()), !dbg !3171
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3172, metadata !DIExpression()), !dbg !3173
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3174, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3176, metadata !DIExpression()), !dbg !3177
  %8 = load i64*, i64** %5, align 8, !dbg !3178
  %9 = load i64, i64* %8, align 8, !dbg !3179
  store i64 %9, i64* %7, align 8, !dbg !3177
  %10 = load i8*, i8** %4, align 8, !dbg !3180
  %11 = icmp ne i8* %10, null, !dbg !3180
  br i1 %11, label %26, label %12, !dbg !3182

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3183
  %14 = icmp ne i64 %13, 0, !dbg !3183
  br i1 %14, label %25, label %15, !dbg !3186

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3187
  %17 = udiv i64 128, %16, !dbg !3189
  store i64 %17, i64* %7, align 8, !dbg !3190
  %18 = load i64, i64* %7, align 8, !dbg !3191
  %19 = icmp ne i64 %18, 0, !dbg !3192
  %20 = xor i1 %19, true, !dbg !3192
  %21 = zext i1 %20 to i32, !dbg !3192
  %22 = sext i32 %21 to i64, !dbg !3192
  %23 = load i64, i64* %7, align 8, !dbg !3193
  %24 = add i64 %23, %22, !dbg !3193
  store i64 %24, i64* %7, align 8, !dbg !3193
  br label %25, !dbg !3194

25:                                               ; preds = %15, %12
  br label %36, !dbg !3195

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3196
  %28 = load i64, i64* %7, align 8, !dbg !3196
  %29 = lshr i64 %28, 1, !dbg !3196
  %30 = add i64 %29, 1, !dbg !3196
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3196
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3196
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3196
  store i64 %33, i64* %7, align 8, !dbg !3196
  br i1 %32, label %34, label %35, !dbg !3199

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3200
  unreachable, !dbg !3200

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3201
  %38 = load i64, i64* %7, align 8, !dbg !3202
  %39 = load i64, i64* %6, align 8, !dbg !3203
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3204
  store i8* %40, i8** %4, align 8, !dbg !3205
  %41 = load i64, i64* %7, align 8, !dbg !3206
  %42 = load i64*, i64** %5, align 8, !dbg !3207
  store i64 %41, i64* %42, align 8, !dbg !3208
  %43 = load i8*, i8** %4, align 8, !dbg !3209
  ret i8* %43, !dbg !3210
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !252 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3211, metadata !DIExpression()), !dbg !3212
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3213, metadata !DIExpression()), !dbg !3214
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3215, metadata !DIExpression()), !dbg !3216
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3217, metadata !DIExpression()), !dbg !3218
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3221, metadata !DIExpression()), !dbg !3222
  %15 = load i64*, i64** %7, align 8, !dbg !3223
  %16 = load i64, i64* %15, align 8, !dbg !3224
  store i64 %16, i64* %11, align 8, !dbg !3222
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3225, metadata !DIExpression()), !dbg !3226
  %17 = load i64, i64* %11, align 8, !dbg !3227
  %18 = load i64, i64* %11, align 8, !dbg !3227
  %19 = ashr i64 %18, 1, !dbg !3227
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3227
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3227
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3227
  store i64 %22, i64* %12, align 8, !dbg !3227
  br i1 %21, label %23, label %24, !dbg !3229

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3230
  br label %24, !dbg !3231

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3232
  %26 = icmp sle i64 0, %25, !dbg !3234
  br i1 %26, label %27, label %33, !dbg !3235

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3236
  %29 = load i64, i64* %12, align 8, !dbg !3237
  %30 = icmp slt i64 %28, %29, !dbg !3238
  br i1 %30, label %31, label %33, !dbg !3239

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3240
  store i64 %32, i64* %12, align 8, !dbg !3241
  br label %33, !dbg !3242

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3245, metadata !DIExpression()), !dbg !3246
  %34 = load i64, i64* %10, align 8, !dbg !3247
  %35 = icmp slt i64 %34, 0, !dbg !3247
  br i1 %35, label %36, label %82, !dbg !3247

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3247
  %38 = icmp slt i64 %37, 0, !dbg !3247
  br i1 %38, label %39, label %62, !dbg !3247

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3247

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3247
  %42 = load i64, i64* %10, align 8, !dbg !3247
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3247
  %44 = icmp slt i64 %41, %43, !dbg !3247
  br i1 %44, label %111, label %115, !dbg !3247

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3247

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3247
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3247
  br i1 %48, label %52, label %53, !dbg !3247

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3247
  %51 = icmp slt i64 0, %50, !dbg !3247
  br i1 %51, label %52, label %53, !dbg !3247

52:                                               ; preds = %49, %46
  br label %57, !dbg !3247

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3247
  %55 = sub nsw i64 0, %54, !dbg !3247
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3247
  br label %57, !dbg !3247

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3247
  %59 = load i64, i64* %12, align 8, !dbg !3247
  %60 = sub nsw i64 -1, %59, !dbg !3247
  %61 = icmp sle i64 %58, %60, !dbg !3247
  br i1 %61, label %111, label %115, !dbg !3247

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3247
  %64 = icmp eq i64 %63, -1, !dbg !3247
  br i1 %64, label %65, label %77, !dbg !3247

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3247

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3247
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3247
  %69 = icmp slt i64 0, %68, !dbg !3247
  br i1 %69, label %111, label %115, !dbg !3247

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3247
  %72 = icmp slt i64 0, %71, !dbg !3247
  br i1 %72, label %73, label %115, !dbg !3247

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3247
  %75 = sub nsw i64 %74, 1, !dbg !3247
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3247
  br i1 %76, label %111, label %115, !dbg !3247

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3247
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3247
  %80 = load i64, i64* %12, align 8, !dbg !3247
  %81 = icmp slt i64 %79, %80, !dbg !3247
  br i1 %81, label %111, label %115, !dbg !3247

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3247
  %84 = icmp eq i64 %83, 0, !dbg !3247
  br i1 %84, label %85, label %86, !dbg !3247

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3247

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3247
  %88 = icmp slt i64 %87, 0, !dbg !3247
  br i1 %88, label %89, label %106, !dbg !3247

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3247
  %91 = icmp eq i64 %90, -1, !dbg !3247
  br i1 %91, label %92, label %101, !dbg !3247

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3247

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3247
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3247
  %96 = icmp slt i64 0, %95, !dbg !3247
  br i1 %96, label %111, label %115, !dbg !3247

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3247
  %99 = sub nsw i64 %98, 1, !dbg !3247
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3247
  br i1 %100, label %111, label %115, !dbg !3247

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3247
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3247
  %104 = load i64, i64* %10, align 8, !dbg !3247
  %105 = icmp slt i64 %103, %104, !dbg !3247
  br i1 %105, label %111, label %115, !dbg !3247

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3247
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3247
  %109 = load i64, i64* %12, align 8, !dbg !3247
  %110 = icmp slt i64 %108, %109, !dbg !3247
  br i1 %110, label %111, label %115, !dbg !3247

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3247
  %113 = load i64, i64* %10, align 8, !dbg !3247
  %114 = mul i64 %112, %113, !dbg !3247
  store i64 %114, i64* %13, align 8, !dbg !3247
  br label %119, !dbg !3247

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3247
  %117 = load i64, i64* %10, align 8, !dbg !3247
  %118 = mul i64 %116, %117, !dbg !3247
  store i64 %118, i64* %13, align 8, !dbg !3247
  br label %119, !dbg !3247

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3247
  %121 = icmp ne i32 %120, 0, !dbg !3247
  br i1 %121, label %122, label %123, !dbg !3247

122:                                              ; preds = %119
  br label %129, !dbg !3247

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3248
  %125 = icmp slt i64 %124, 128, !dbg !3249
  %126 = zext i1 %125 to i64, !dbg !3248
  %127 = select i1 %125, i32 128, i32 0, !dbg !3248
  %128 = sext i32 %127 to i64, !dbg !3248
  br label %129, !dbg !3247

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3247
  store i64 %130, i64* %14, align 8, !dbg !3246
  %131 = load i64, i64* %14, align 8, !dbg !3250
  %132 = icmp ne i64 %131, 0, !dbg !3250
  br i1 %132, label %133, label %142, !dbg !3252

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3253
  %135 = load i64, i64* %10, align 8, !dbg !3255
  %136 = sdiv i64 %134, %135, !dbg !3256
  store i64 %136, i64* %12, align 8, !dbg !3257
  %137 = load i64, i64* %14, align 8, !dbg !3258
  %138 = load i64, i64* %14, align 8, !dbg !3259
  %139 = load i64, i64* %10, align 8, !dbg !3260
  %140 = srem i64 %138, %139, !dbg !3261
  %141 = sub nsw i64 %137, %140, !dbg !3262
  store i64 %141, i64* %13, align 8, !dbg !3263
  br label %142, !dbg !3264

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3265
  %144 = icmp ne i8* %143, null, !dbg !3265
  br i1 %144, label %147, label %145, !dbg !3267

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3268
  store i64 0, i64* %146, align 8, !dbg !3269
  br label %147, !dbg !3270

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3271
  %149 = load i64, i64* %11, align 8, !dbg !3273
  %150 = sub nsw i64 %148, %149, !dbg !3274
  %151 = load i64, i64* %8, align 8, !dbg !3275
  %152 = icmp slt i64 %150, %151, !dbg !3276
  br i1 %152, label %153, label %256, !dbg !3277

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3278
  %155 = load i64, i64* %8, align 8, !dbg !3278
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3278
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3278
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3278
  store i64 %158, i64* %12, align 8, !dbg !3278
  br i1 %157, label %255, label %159, !dbg !3279

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3280
  %161 = icmp sle i64 0, %160, !dbg !3281
  br i1 %161, label %162, label %166, !dbg !3282

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3283
  %164 = load i64, i64* %12, align 8, !dbg !3284
  %165 = icmp slt i64 %163, %164, !dbg !3285
  br i1 %165, label %255, label %166, !dbg !3286

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3287
  %168 = icmp slt i64 %167, 0, !dbg !3287
  br i1 %168, label %169, label %215, !dbg !3287

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3287
  %171 = icmp slt i64 %170, 0, !dbg !3287
  br i1 %171, label %172, label %195, !dbg !3287

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3287

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3287
  %175 = load i64, i64* %10, align 8, !dbg !3287
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3287
  %177 = icmp slt i64 %174, %176, !dbg !3287
  br i1 %177, label %244, label %248, !dbg !3287

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3287

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3287
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3287
  br i1 %181, label %185, label %186, !dbg !3287

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3287
  %184 = icmp slt i64 0, %183, !dbg !3287
  br i1 %184, label %185, label %186, !dbg !3287

185:                                              ; preds = %182, %179
  br label %190, !dbg !3287

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3287
  %188 = sub nsw i64 0, %187, !dbg !3287
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3287
  br label %190, !dbg !3287

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3287
  %192 = load i64, i64* %12, align 8, !dbg !3287
  %193 = sub nsw i64 -1, %192, !dbg !3287
  %194 = icmp sle i64 %191, %193, !dbg !3287
  br i1 %194, label %244, label %248, !dbg !3287

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3287
  %197 = icmp eq i64 %196, -1, !dbg !3287
  br i1 %197, label %198, label %210, !dbg !3287

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3287

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3287
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3287
  %202 = icmp slt i64 0, %201, !dbg !3287
  br i1 %202, label %244, label %248, !dbg !3287

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3287
  %205 = icmp slt i64 0, %204, !dbg !3287
  br i1 %205, label %206, label %248, !dbg !3287

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3287
  %208 = sub nsw i64 %207, 1, !dbg !3287
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3287
  br i1 %209, label %244, label %248, !dbg !3287

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3287
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3287
  %213 = load i64, i64* %12, align 8, !dbg !3287
  %214 = icmp slt i64 %212, %213, !dbg !3287
  br i1 %214, label %244, label %248, !dbg !3287

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3287
  %217 = icmp eq i64 %216, 0, !dbg !3287
  br i1 %217, label %218, label %219, !dbg !3287

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3287

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3287
  %221 = icmp slt i64 %220, 0, !dbg !3287
  br i1 %221, label %222, label %239, !dbg !3287

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3287
  %224 = icmp eq i64 %223, -1, !dbg !3287
  br i1 %224, label %225, label %234, !dbg !3287

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3287

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3287
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3287
  %229 = icmp slt i64 0, %228, !dbg !3287
  br i1 %229, label %244, label %248, !dbg !3287

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3287
  %232 = sub nsw i64 %231, 1, !dbg !3287
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3287
  br i1 %233, label %244, label %248, !dbg !3287

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3287
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3287
  %237 = load i64, i64* %10, align 8, !dbg !3287
  %238 = icmp slt i64 %236, %237, !dbg !3287
  br i1 %238, label %244, label %248, !dbg !3287

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3287
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3287
  %242 = load i64, i64* %12, align 8, !dbg !3287
  %243 = icmp slt i64 %241, %242, !dbg !3287
  br i1 %243, label %244, label %248, !dbg !3287

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3287
  %246 = load i64, i64* %10, align 8, !dbg !3287
  %247 = mul i64 %245, %246, !dbg !3287
  store i64 %247, i64* %13, align 8, !dbg !3287
  br label %252, !dbg !3287

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3287
  %250 = load i64, i64* %10, align 8, !dbg !3287
  %251 = mul i64 %249, %250, !dbg !3287
  store i64 %251, i64* %13, align 8, !dbg !3287
  br label %252, !dbg !3287

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3287
  %254 = icmp ne i32 %253, 0, !dbg !3287
  br i1 %254, label %255, label %256, !dbg !3288

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3289
  unreachable, !dbg !3289

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3290
  %258 = load i64, i64* %13, align 8, !dbg !3291
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3292
  store i8* %259, i8** %6, align 8, !dbg !3293
  %260 = load i64, i64* %12, align 8, !dbg !3294
  %261 = load i64*, i64** %7, align 8, !dbg !3295
  store i64 %260, i64* %261, align 8, !dbg !3296
  %262 = load i8*, i8** %6, align 8, !dbg !3297
  ret i8* %262, !dbg !3298
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3299 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3300, metadata !DIExpression()), !dbg !3301
  %3 = load i64, i64* %2, align 8, !dbg !3302
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3303
  ret i8* %4, !dbg !3304
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3305 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3306, metadata !DIExpression()), !dbg !3307
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3308, metadata !DIExpression()), !dbg !3309
  %5 = load i64, i64* %3, align 8, !dbg !3310
  %6 = load i64, i64* %4, align 8, !dbg !3311
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3312
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3313
  ret i8* %8, !dbg !3314
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3315 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3316, metadata !DIExpression()), !dbg !3317
  %3 = load i64, i64* %2, align 8, !dbg !3318
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3319
  ret i8* %4, !dbg !3320
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3321 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3322, metadata !DIExpression()), !dbg !3323
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3324, metadata !DIExpression()), !dbg !3325
  %5 = load i64, i64* %3, align 8, !dbg !3326
  %6 = load i64, i64* %4, align 8, !dbg !3327
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3328
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3329
  ret i8* %8, !dbg !3330
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3331 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3336, metadata !DIExpression()), !dbg !3337
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3338, metadata !DIExpression()), !dbg !3339
  %5 = load i64, i64* %4, align 8, !dbg !3340
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3341
  %7 = load i8*, i8** %3, align 8, !dbg !3342
  %8 = load i64, i64* %4, align 8, !dbg !3343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3344
  ret i8* %6, !dbg !3345
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3346 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3349, metadata !DIExpression()), !dbg !3350
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3351, metadata !DIExpression()), !dbg !3352
  %5 = load i64, i64* %4, align 8, !dbg !3353
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3354
  %7 = load i8*, i8** %3, align 8, !dbg !3355
  %8 = load i64, i64* %4, align 8, !dbg !3356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3357
  ret i8* %6, !dbg !3358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3359 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3362, metadata !DIExpression()), !dbg !3363
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3364, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3366, metadata !DIExpression()), !dbg !3367
  %6 = load i64, i64* %4, align 8, !dbg !3368
  %7 = add nsw i64 %6, 1, !dbg !3369
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3370
  store i8* %8, i8** %5, align 8, !dbg !3367
  %9 = load i8*, i8** %5, align 8, !dbg !3371
  %10 = load i64, i64* %4, align 8, !dbg !3372
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3371
  store i8 0, i8* %11, align 1, !dbg !3373
  %12 = load i8*, i8** %5, align 8, !dbg !3374
  %13 = load i8*, i8** %3, align 8, !dbg !3375
  %14 = load i64, i64* %4, align 8, !dbg !3376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3377
  ret i8* %12, !dbg !3378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3379 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3380, metadata !DIExpression()), !dbg !3381
  %3 = load i8*, i8** %2, align 8, !dbg !3382
  %4 = load i8*, i8** %2, align 8, !dbg !3383
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3384
  %6 = add i64 %5, 1, !dbg !3385
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3386
  ret i8* %7, !dbg !3387
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3388 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3389, metadata !DIExpression()), !dbg !3392
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3392
  store i32 %2, i32* %1, align 4, !dbg !3392
  %3 = load i32, i32* %1, align 4, !dbg !3392
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.140, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.141, i64 0, i64 0)) #18, !dbg !3392
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i64 0, i64 0), i8* noundef %4), !dbg !3392
  %5 = load i32, i32* %1, align 4, !dbg !3392
  %6 = icmp ne i32 %5, 0, !dbg !3392
  br i1 %6, label %7, label %9, !dbg !3392

7:                                                ; preds = %0
  unreachable, !dbg !3392

8:                                                ; No predecessors!
  br label %10, !dbg !3392

9:                                                ; preds = %0
  br label %10, !dbg !3392

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3393
  unreachable, !dbg !3393
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef %0) #10 !dbg !3394 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3395, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3397, metadata !DIExpression()), !dbg !3398
  %6 = load i8*, i8** %2, align 8, !dbg !3399
  %7 = load i8*, i8** %2, align 8, !dbg !3400
  %8 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !3401
  store i8* %8, i8** %3, align 8, !dbg !3398
  br label %9, !dbg !3402

9:                                                ; preds = %14, %1
  %10 = load i8*, i8** %3, align 8, !dbg !3403
  %11 = load i8, i8* %10, align 1, !dbg !3403
  %12 = zext i8 %11 to i32, !dbg !3403
  %13 = icmp eq i32 %12, 47, !dbg !3403
  br i1 %13, label %14, label %17, !dbg !3402

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !3404
  %16 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !3404
  store i8* %16, i8** %3, align 8, !dbg !3404
  br label %9, !dbg !3402, !llvm.loop !3405

17:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3406, metadata !DIExpression()), !dbg !3407
  store i8 0, i8* %4, align 1, !dbg !3407
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3408, metadata !DIExpression()), !dbg !3410
  %18 = load i8*, i8** %3, align 8, !dbg !3411
  store i8* %18, i8** %5, align 8, !dbg !3410
  br label %19, !dbg !3412

19:                                               ; preds = %36, %17
  %20 = load i8*, i8** %5, align 8, !dbg !3413
  %21 = load i8, i8* %20, align 1, !dbg !3415
  %22 = icmp ne i8 %21, 0, !dbg !3416
  br i1 %22, label %23, label %39, !dbg !3416

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8, !dbg !3417
  %25 = load i8, i8* %24, align 1, !dbg !3417
  %26 = zext i8 %25 to i32, !dbg !3417
  %27 = icmp eq i32 %26, 47, !dbg !3417
  br i1 %27, label %28, label %29, !dbg !3420

28:                                               ; preds = %23
  store i8 1, i8* %4, align 1, !dbg !3421
  br label %35, !dbg !3422

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1, !dbg !3423
  %31 = trunc i8 %30 to i1, !dbg !3423
  br i1 %31, label %32, label %34, !dbg !3425

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8, !dbg !3426
  store i8* %33, i8** %3, align 8, !dbg !3428
  store i8 0, i8* %4, align 1, !dbg !3429
  br label %34, !dbg !3430

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %28
  br label %36, !dbg !3431

36:                                               ; preds = %35
  %37 = load i8*, i8** %5, align 8, !dbg !3432
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !3432
  store i8* %38, i8** %5, align 8, !dbg !3432
  br label %19, !dbg !3433, !llvm.loop !3434

39:                                               ; preds = %19
  %40 = load i8*, i8** %3, align 8, !dbg !3436
  ret i8* %40, !dbg !3437
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @base_len(i8* noundef %0) #10 !dbg !3438 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3439, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3441, metadata !DIExpression()), !dbg !3442
  %5 = load i8*, i8** %2, align 8, !dbg !3443
  %6 = call i64 @strlen(i8* noundef %5) #20, !dbg !3445
  store i64 %6, i64* %3, align 8, !dbg !3446
  br label %7, !dbg !3447

7:                                                ; preds = %21, %1
  %8 = load i64, i64* %3, align 8, !dbg !3448
  %9 = icmp ult i64 1, %8, !dbg !3450
  br i1 %9, label %10, label %18, !dbg !3451

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8, !dbg !3452
  %12 = load i64, i64* %3, align 8, !dbg !3452
  %13 = sub i64 %12, 1, !dbg !3452
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !3452
  %15 = load i8, i8* %14, align 1, !dbg !3452
  %16 = zext i8 %15 to i32, !dbg !3452
  %17 = icmp eq i32 %16, 47, !dbg !3452
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ], !dbg !3453
  br i1 %19, label %20, label %24, !dbg !3454

20:                                               ; preds = %18
  br label %21, !dbg !3455

21:                                               ; preds = %20
  %22 = load i64, i64* %3, align 8, !dbg !3456
  %23 = add i64 %22, -1, !dbg !3456
  store i64 %23, i64* %3, align 8, !dbg !3456
  br label %7, !dbg !3457, !llvm.loop !3458

24:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3460, metadata !DIExpression()), !dbg !3461
  %25 = load i8*, i8** %2, align 8, !dbg !3462
  store i64 0, i64* %4, align 8, !dbg !3461
  %26 = load i64, i64* %3, align 8, !dbg !3463
  ret i64 %26, !dbg !3464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3465 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3471, metadata !DIExpression()), !dbg !3472
  %3 = load i32, i32* %2, align 4, !dbg !3473
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3474
  ret i32 %4, !dbg !3475
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3476 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3513, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3515, metadata !DIExpression()), !dbg !3517
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3518
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3519
  %9 = icmp ne i64 %8, 0, !dbg !3520
  %10 = zext i1 %9 to i8, !dbg !3517
  store i8 %10, i8* %4, align 1, !dbg !3517
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3521, metadata !DIExpression()), !dbg !3522
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3523
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3523
  %13 = icmp ne i32 %12, 0, !dbg !3524
  %14 = zext i1 %13 to i8, !dbg !3522
  store i8 %14, i8* %5, align 1, !dbg !3522
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3525, metadata !DIExpression()), !dbg !3526
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3527
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3528
  %17 = icmp ne i32 %16, 0, !dbg !3529
  %18 = zext i1 %17 to i8, !dbg !3526
  store i8 %18, i8* %6, align 1, !dbg !3526
  %19 = load i8, i8* %5, align 1, !dbg !3530
  %20 = trunc i8 %19 to i1, !dbg !3530
  br i1 %20, label %31, label %21, !dbg !3532

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3533
  %23 = trunc i8 %22 to i1, !dbg !3533
  br i1 %23, label %24, label %37, !dbg !3534

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3535
  %26 = trunc i8 %25 to i1, !dbg !3535
  br i1 %26, label %31, label %27, !dbg !3536

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3537
  %29 = load i32, i32* %28, align 4, !dbg !3537
  %30 = icmp ne i32 %29, 9, !dbg !3538
  br i1 %30, label %31, label %37, !dbg !3539

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3540
  %33 = trunc i8 %32 to i1, !dbg !3540
  br i1 %33, label %36, label %34, !dbg !3543

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3544
  store i32 0, i32* %35, align 4, !dbg !3545
  br label %36, !dbg !3544

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3546
  br label %38, !dbg !3546

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3547
  br label %38, !dbg !3547

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3548
  ret i32 %39, !dbg !3548
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3549 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3586, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3588, metadata !DIExpression()), !dbg !3589
  store i32 0, i32* %4, align 4, !dbg !3589
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3590, metadata !DIExpression()), !dbg !3591
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3592
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3593
  store i32 %8, i32* %5, align 4, !dbg !3591
  %9 = load i32, i32* %5, align 4, !dbg !3594
  %10 = icmp slt i32 %9, 0, !dbg !3596
  br i1 %10, label %11, label %14, !dbg !3597

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3598
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3599
  store i32 %13, i32* %2, align 4, !dbg !3600
  br label %40, !dbg !3600

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3601
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3601
  %17 = icmp ne i32 %16, 0, !dbg !3601
  br i1 %17, label %18, label %23, !dbg !3603

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3604
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3605
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3606
  %22 = icmp ne i64 %21, -1, !dbg !3607
  br i1 %22, label %23, label %30, !dbg !3608

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3609
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3610
  %26 = icmp ne i32 %25, 0, !dbg !3610
  br i1 %26, label %27, label %30, !dbg !3611

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3612
  %29 = load i32, i32* %28, align 4, !dbg !3612
  store i32 %29, i32* %4, align 4, !dbg !3613
  br label %30, !dbg !3614

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3615, metadata !DIExpression()), !dbg !3616
  store i32 0, i32* %6, align 4, !dbg !3616
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3617
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3618
  store i32 %32, i32* %6, align 4, !dbg !3619
  %33 = load i32, i32* %4, align 4, !dbg !3620
  %34 = icmp ne i32 %33, 0, !dbg !3622
  br i1 %34, label %35, label %38, !dbg !3623

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3624
  %37 = call i32* @__errno_location() #21, !dbg !3626
  store i32 %36, i32* %37, align 4, !dbg !3627
  store i32 -1, i32* %6, align 4, !dbg !3628
  br label %38, !dbg !3629

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3630
  store i32 %39, i32* %2, align 4, !dbg !3631
  br label %40, !dbg !3631

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3632
  ret i32 %41, !dbg !3632
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3633 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3670, metadata !DIExpression()), !dbg !3671
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3672
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3674
  br i1 %5, label %10, label %6, !dbg !3675

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3676
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3676
  %9 = icmp ne i32 %8, 0, !dbg !3676
  br i1 %9, label %13, label %10, !dbg !3677

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3678
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3679
  store i32 %12, i32* %2, align 4, !dbg !3680
  br label %17, !dbg !3680

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3681
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3682
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3683
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3684
  store i32 %16, i32* %2, align 4, !dbg !3685
  br label %17, !dbg !3685

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3686
  ret i32 %18, !dbg !3686
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3687 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3690, metadata !DIExpression()), !dbg !3691
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3692
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3694
  %5 = load i32, i32* %4, align 8, !dbg !3694
  %6 = and i32 %5, 256, !dbg !3695
  %7 = icmp ne i32 %6, 0, !dbg !3695
  br i1 %7, label %8, label %11, !dbg !3696

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3697
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3698
  br label %11, !dbg !3698

11:                                               ; preds = %8, %1
  ret void, !dbg !3699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3700 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3738, metadata !DIExpression()), !dbg !3739
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3740, metadata !DIExpression()), !dbg !3741
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3742, metadata !DIExpression()), !dbg !3743
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3744
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3746
  %11 = load i8*, i8** %10, align 8, !dbg !3746
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3747
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3748
  %14 = load i8*, i8** %13, align 8, !dbg !3748
  %15 = icmp eq i8* %11, %14, !dbg !3749
  br i1 %15, label %16, label %46, !dbg !3750

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3751
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3752
  %19 = load i8*, i8** %18, align 8, !dbg !3752
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3753
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3754
  %22 = load i8*, i8** %21, align 8, !dbg !3754
  %23 = icmp eq i8* %19, %22, !dbg !3755
  br i1 %23, label %24, label %46, !dbg !3756

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3757
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3758
  %27 = load i8*, i8** %26, align 8, !dbg !3758
  %28 = icmp eq i8* %27, null, !dbg !3759
  br i1 %28, label %29, label %46, !dbg !3760

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3761, metadata !DIExpression()), !dbg !3763
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3764
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3765
  %32 = load i64, i64* %6, align 8, !dbg !3766
  %33 = load i32, i32* %7, align 4, !dbg !3767
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3768
  store i64 %34, i64* %8, align 8, !dbg !3763
  %35 = load i64, i64* %8, align 8, !dbg !3769
  %36 = icmp eq i64 %35, -1, !dbg !3771
  br i1 %36, label %37, label %38, !dbg !3772

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3773
  br label %51, !dbg !3773

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3775
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3776
  %41 = load i32, i32* %40, align 8, !dbg !3777
  %42 = and i32 %41, -17, !dbg !3777
  store i32 %42, i32* %40, align 8, !dbg !3777
  %43 = load i64, i64* %8, align 8, !dbg !3778
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3779
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3780
  store i64 %43, i64* %45, align 8, !dbg !3781
  store i32 0, i32* %4, align 4, !dbg !3782
  br label %51, !dbg !3782

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3783
  %48 = load i64, i64* %6, align 8, !dbg !3784
  %49 = load i32, i32* %7, align 4, !dbg !3785
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3786
  store i32 %50, i32* %4, align 4, !dbg !3787
  br label %51, !dbg !3787

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3788
  ret i32 %52, !dbg !3788
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #11 !dbg !3789 {
  %1 = call i32* @__errno_location() #21, !dbg !3792
  store i32 12, i32* %1, align 4, !dbg !3793
  ret i8* null, !dbg !3794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3795 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3796, metadata !DIExpression()), !dbg !3797
  %3 = load i64, i64* %2, align 8, !dbg !3798
  %4 = icmp ule i64 %3, -1, !dbg !3799
  br i1 %4, label %5, label %8, !dbg !3798

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3800
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3801
  br label %10, !dbg !3798

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !3802
  br label %10, !dbg !3798

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3798
  ret i8* %11, !dbg !3803
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3804 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3805, metadata !DIExpression()), !dbg !3806
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3807, metadata !DIExpression()), !dbg !3808
  %5 = load i64, i64* %4, align 8, !dbg !3809
  %6 = icmp ule i64 %5, -1, !dbg !3810
  br i1 %6, label %7, label %11, !dbg !3809

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3811
  %9 = load i64, i64* %4, align 8, !dbg !3812
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3813
  br label %13, !dbg !3809

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3814
  br label %13, !dbg !3809

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3809
  ret i8* %14, !dbg !3815
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3816 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3817, metadata !DIExpression()), !dbg !3818
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3819, metadata !DIExpression()), !dbg !3820
  %6 = load i64, i64* %4, align 8, !dbg !3821
  %7 = icmp ult i64 -1, %6, !dbg !3823
  br i1 %7, label %8, label %14, !dbg !3824

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3825
  %10 = icmp ne i64 %9, 0, !dbg !3828
  br i1 %10, label %11, label %13, !dbg !3829

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3830
  store i8* %12, i8** %3, align 8, !dbg !3831
  br label %27, !dbg !3831

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3832
  br label %14, !dbg !3833

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3834
  %16 = icmp ult i64 -1, %15, !dbg !3836
  br i1 %16, label %17, label %23, !dbg !3837

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3838
  %19 = icmp ne i64 %18, 0, !dbg !3841
  br i1 %19, label %20, label %22, !dbg !3842

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !3843
  store i8* %21, i8** %3, align 8, !dbg !3844
  br label %27, !dbg !3844

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3845
  br label %23, !dbg !3846

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !3847
  %25 = load i64, i64* %5, align 8, !dbg !3848
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !3849
  store i8* %26, i8** %3, align 8, !dbg !3850
  br label %27, !dbg !3850

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !3851
  ret i8* %28, !dbg !3851
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3852 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3853, metadata !DIExpression()), !dbg !3854
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3855, metadata !DIExpression()), !dbg !3856
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3857, metadata !DIExpression()), !dbg !3858
  %7 = load i64, i64* %5, align 8, !dbg !3859
  %8 = icmp ule i64 %7, -1, !dbg !3860
  br i1 %8, label %9, label %17, !dbg !3861

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !3862
  %11 = icmp ule i64 %10, -1, !dbg !3863
  br i1 %11, label %12, label %17, !dbg !3859

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !3864
  %14 = load i64, i64* %5, align 8, !dbg !3865
  %15 = load i64, i64* %6, align 8, !dbg !3866
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !3867
  br label %19, !dbg !3859

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !3868
  br label %19, !dbg !3859

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !3859
  ret i8* %20, !dbg !3869
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !3870 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3875, metadata !DIExpression()), !dbg !3876
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3877, metadata !DIExpression()), !dbg !3878
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3879, metadata !DIExpression()), !dbg !3880
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !3881, metadata !DIExpression()), !dbg !3882
  %11 = load i8*, i8** %7, align 8, !dbg !3883
  %12 = icmp eq i8* %11, null, !dbg !3885
  br i1 %12, label %13, label %14, !dbg !3886

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !3887
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.165, i64 0, i64 0), i8** %7, align 8, !dbg !3889
  store i64 1, i64* %8, align 8, !dbg !3890
  br label %14, !dbg !3891

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3892
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !3894
  br i1 %16, label %17, label %18, !dbg !3895

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !3896
  br label %18, !dbg !3897

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3898, metadata !DIExpression()), !dbg !3899
  %19 = load i32*, i32** %6, align 8, !dbg !3900
  %20 = load i8*, i8** %7, align 8, !dbg !3901
  %21 = load i64, i64* %8, align 8, !dbg !3902
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3903
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !3904
  store i64 %23, i64* %10, align 8, !dbg !3899
  %24 = load i64, i64* %10, align 8, !dbg !3905
  %25 = icmp ult i64 %24, -3, !dbg !3907
  br i1 %25, label %26, label %32, !dbg !3908

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3909
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !3910
  %29 = icmp ne i32 %28, 0, !dbg !3910
  br i1 %29, label %32, label %30, !dbg !3911

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3912
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !3913
  br label %32, !dbg !3913

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !3914
  %34 = icmp eq i64 %33, -3, !dbg !3916
  br i1 %34, label %35, label %36, !dbg !3917

35:                                               ; preds = %32
  call void @abort() #19, !dbg !3918
  unreachable, !dbg !3918

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !3919
  %38 = icmp ule i64 -2, %37, !dbg !3921
  br i1 %38, label %39, label %53, !dbg !3922

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !3923
  %41 = icmp ne i64 %40, 0, !dbg !3924
  br i1 %41, label %42, label %53, !dbg !3925

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !3926
  br i1 %43, label %53, label %44, !dbg !3927

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !3928
  %46 = icmp ne i32* %45, null, !dbg !3931
  br i1 %46, label %47, label %52, !dbg !3932

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !3933
  %49 = load i8, i8* %48, align 1, !dbg !3934
  %50 = zext i8 %49 to i32, !dbg !3935
  %51 = load i32*, i32** %6, align 8, !dbg !3936
  store i32 %50, i32* %51, align 4, !dbg !3937
  br label %52, !dbg !3938

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !3939
  br label %55, !dbg !3939

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !3940
  store i64 %54, i64* %5, align 8, !dbg !3941
  br label %55, !dbg !3941

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !3942
  ret i64 %56, !dbg !3942
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !3943 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !3958, metadata !DIExpression()), !dbg !3959
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !3960
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !3961
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !3961
  ret void, !dbg !3962
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3963 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3966, metadata !DIExpression()), !dbg !3967
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3968, metadata !DIExpression()), !dbg !3969
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3970, metadata !DIExpression()), !dbg !3971
  %7 = load i8*, i8** %4, align 8, !dbg !3972
  %8 = load i8*, i8** %5, align 8, !dbg !3973
  %9 = load i64, i64* %6, align 8, !dbg !3974
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !3975
  %11 = icmp ne i32 %10, 0, !dbg !3976
  %12 = xor i1 %11, true, !dbg !3976
  ret i1 %12, !dbg !3977
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3978 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3980, metadata !DIExpression()), !dbg !3981
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3982, metadata !DIExpression()), !dbg !3983
  %5 = load i8*, i8** %3, align 8, !dbg !3984
  %6 = load i64, i64* %4, align 8, !dbg !3985
  %7 = icmp ne i64 %6, 0, !dbg !3985
  br i1 %7, label %8, label %10, !dbg !3985

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !3986
  br label %11, !dbg !3985

10:                                               ; preds = %2
  br label %11, !dbg !3985

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !3985
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !3987
  ret i8* %13, !dbg !3988
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3989 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3990, metadata !DIExpression()), !dbg !3991
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3992, metadata !DIExpression()), !dbg !3993
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3994, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3996, metadata !DIExpression()), !dbg !3997
  %9 = load i64, i64* %7, align 8, !dbg !3998
  %10 = icmp ult i64 %9, 0, !dbg !3998
  br i1 %10, label %11, label %60, !dbg !3998

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !3998
  %13 = icmp ult i64 %12, 0, !dbg !3998
  br i1 %13, label %14, label %37, !dbg !3998

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !3998

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !3998
  %17 = load i64, i64* %7, align 8, !dbg !3998
  %18 = udiv i64 -1, %17, !dbg !3998
  %19 = icmp ult i64 %16, %18, !dbg !3998
  br i1 %19, label %92, label %96, !dbg !3998

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !3998

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !3998
  %23 = icmp ult i64 %22, 1, !dbg !3998
  br i1 %23, label %27, label %28, !dbg !3998

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !3998
  %26 = icmp ult i64 0, %25, !dbg !3998
  br i1 %26, label %27, label %28, !dbg !3998

27:                                               ; preds = %24, %21
  br label %32, !dbg !3998

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !3998
  %30 = sub i64 0, %29, !dbg !3998
  %31 = udiv i64 -1, %30, !dbg !3998
  br label %32, !dbg !3998

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !3998
  %34 = load i64, i64* %6, align 8, !dbg !3998
  %35 = sub i64 -1, %34, !dbg !3998
  %36 = icmp ule i64 %33, %35, !dbg !3998
  br i1 %36, label %92, label %96, !dbg !3998

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !3998

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !3998

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !3998

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !3998
  %42 = icmp eq i64 %41, -1, !dbg !3998
  br i1 %42, label %43, label %55, !dbg !3998

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !3998

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !3998
  %46 = add i64 %45, 0, !dbg !3998
  %47 = icmp ult i64 0, %46, !dbg !3998
  br i1 %47, label %92, label %96, !dbg !3998

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !3998
  %50 = icmp ult i64 0, %49, !dbg !3998
  br i1 %50, label %51, label %96, !dbg !3998

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !3998
  %53 = sub i64 %52, 1, !dbg !3998
  %54 = icmp ult i64 -1, %53, !dbg !3998
  br i1 %54, label %92, label %96, !dbg !3998

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !3998
  %57 = udiv i64 0, %56, !dbg !3998
  %58 = load i64, i64* %6, align 8, !dbg !3998
  %59 = icmp ult i64 %57, %58, !dbg !3998
  br i1 %59, label %92, label %96, !dbg !3998

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !3998
  %62 = icmp eq i64 %61, 0, !dbg !3998
  br i1 %62, label %63, label %64, !dbg !3998

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !3998

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !3998
  %66 = icmp ult i64 %65, 0, !dbg !3998
  br i1 %66, label %67, label %87, !dbg !3998

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !3998

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !3998

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !3998

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !3998
  %72 = icmp eq i64 %71, -1, !dbg !3998
  br i1 %72, label %73, label %82, !dbg !3998

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !3998

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !3998
  %76 = add i64 %75, 0, !dbg !3998
  %77 = icmp ult i64 0, %76, !dbg !3998
  br i1 %77, label %92, label %96, !dbg !3998

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !3998
  %80 = sub i64 %79, 1, !dbg !3998
  %81 = icmp ult i64 -1, %80, !dbg !3998
  br i1 %81, label %92, label %96, !dbg !3998

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !3998
  %84 = udiv i64 0, %83, !dbg !3998
  %85 = load i64, i64* %7, align 8, !dbg !3998
  %86 = icmp ult i64 %84, %85, !dbg !3998
  br i1 %86, label %92, label %96, !dbg !3998

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !3998
  %89 = udiv i64 -1, %88, !dbg !3998
  %90 = load i64, i64* %6, align 8, !dbg !3998
  %91 = icmp ult i64 %89, %90, !dbg !3998
  br i1 %91, label %92, label %96, !dbg !3998

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !3998
  %94 = load i64, i64* %7, align 8, !dbg !3998
  %95 = mul i64 %93, %94, !dbg !3998
  store i64 %95, i64* %8, align 8, !dbg !3998
  br label %100, !dbg !3998

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !3998
  %98 = load i64, i64* %7, align 8, !dbg !3998
  %99 = mul i64 %97, %98, !dbg !3998
  store i64 %99, i64* %8, align 8, !dbg !3998
  br label %100, !dbg !3998

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !3998
  %102 = icmp ne i32 %101, 0, !dbg !3998
  br i1 %102, label %103, label %105, !dbg !4000

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4001
  store i32 12, i32* %104, align 4, !dbg !4003
  store i8* null, i8** %4, align 8, !dbg !4004
  br label %109, !dbg !4004

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4005
  %107 = load i64, i64* %8, align 8, !dbg !4006
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4007
  store i8* %108, i8** %4, align 8, !dbg !4008
  br label %109, !dbg !4008

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4009
  ret i8* %110, !dbg !4009
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4010 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4013, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4015, metadata !DIExpression()), !dbg !4019
  %5 = load i32, i32* %3, align 4, !dbg !4020
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4022
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4023
  %8 = icmp ne i32 %7, 0, !dbg !4023
  br i1 %8, label %9, label %10, !dbg !4024

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4025
  br label %18, !dbg !4025

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4026
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.176, i64 0, i64 0)), !dbg !4028
  br i1 %12, label %17, label %13, !dbg !4029

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4030
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.177, i64 0, i64 0)), !dbg !4031
  br i1 %15, label %17, label %16, !dbg !4032

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4033
  br label %18, !dbg !4033

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4034
  br label %18, !dbg !4034

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4035
  ret i1 %19, !dbg !4035
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4036 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4039, metadata !DIExpression()), !dbg !4040
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4041, metadata !DIExpression()), !dbg !4042
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4043, metadata !DIExpression()), !dbg !4044
  %7 = load i32, i32* %4, align 4, !dbg !4045
  %8 = load i8*, i8** %5, align 8, !dbg !4046
  %9 = load i64, i64* %6, align 8, !dbg !4047
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4048
  ret i32 %10, !dbg !4049
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4050 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4053, metadata !DIExpression()), !dbg !4054
  %3 = load i32, i32* %2, align 4, !dbg !4055
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4056
  ret i8* %4, !dbg !4057
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4058 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4059, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4061, metadata !DIExpression()), !dbg !4062
  %4 = load i32, i32* %2, align 4, !dbg !4063
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4064
  store i8* %5, i8** %3, align 8, !dbg !4062
  %6 = load i8*, i8** %3, align 8, !dbg !4065
  ret i8* %6, !dbg !4066
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4067 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4068, metadata !DIExpression()), !dbg !4069
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4070, metadata !DIExpression()), !dbg !4071
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4074, metadata !DIExpression()), !dbg !4075
  %10 = load i32, i32* %5, align 4, !dbg !4076
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4077
  store i8* %11, i8** %8, align 8, !dbg !4075
  %12 = load i8*, i8** %8, align 8, !dbg !4078
  %13 = icmp eq i8* %12, null, !dbg !4080
  br i1 %13, label %14, label %21, !dbg !4081

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4082
  %16 = icmp ugt i64 %15, 0, !dbg !4085
  br i1 %16, label %17, label %20, !dbg !4086

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4087
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4087
  store i8 0, i8* %19, align 1, !dbg !4088
  br label %20, !dbg !4087

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4089
  br label %45, !dbg !4089

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4090, metadata !DIExpression()), !dbg !4092
  %22 = load i8*, i8** %8, align 8, !dbg !4093
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4094
  store i64 %23, i64* %9, align 8, !dbg !4092
  %24 = load i64, i64* %9, align 8, !dbg !4095
  %25 = load i64, i64* %7, align 8, !dbg !4097
  %26 = icmp ult i64 %24, %25, !dbg !4098
  br i1 %26, label %27, label %32, !dbg !4099

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4100
  %29 = load i8*, i8** %8, align 8, !dbg !4102
  %30 = load i64, i64* %9, align 8, !dbg !4103
  %31 = add i64 %30, 1, !dbg !4104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4105
  store i32 0, i32* %4, align 4, !dbg !4106
  br label %45, !dbg !4106

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4107
  %34 = icmp ugt i64 %33, 0, !dbg !4110
  br i1 %34, label %35, label %44, !dbg !4111

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4112
  %37 = load i8*, i8** %8, align 8, !dbg !4114
  %38 = load i64, i64* %7, align 8, !dbg !4115
  %39 = sub i64 %38, 1, !dbg !4116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4117
  %40 = load i8*, i8** %6, align 8, !dbg !4118
  %41 = load i64, i64* %7, align 8, !dbg !4119
  %42 = sub i64 %41, 1, !dbg !4120
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4118
  store i8 0, i8* %43, align 1, !dbg !4121
  br label %44, !dbg !4122

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4123
  br label %45, !dbg !4123

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4124
  ret i32 %46, !dbg !4124
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
attributes #10 = { noinline nounwind optnone readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { cold noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nofree nosync nounwind willreturn }
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

!llvm.dbg.cu = !{!2, !57, !62, !229, !70, !205, !231, !104, !114, !121, !233, !235, !197, !241, !261, !263, !265, !267, !269, !271, !273, !275, !211, !277, !279, !281, !283, !286, !288, !290}
!llvm.ident = !{!292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292, !292}
!llvm.module.flags = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 34, type: !43, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/dirname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a60dd6e6d60eda028b732002e611b3c7")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256)
!10 = !DIEnumerator(name: "_ISlower", value: 512)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!14 = !DIEnumerator(name: "_ISspace", value: 8192)
!15 = !DIEnumerator(name: "_ISprint", value: 16384)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768)
!17 = !DIEnumerator(name: "_ISblank", value: 1)
!18 = !DIEnumerator(name: "_IScntrl", value: 2)
!19 = !DIEnumerator(name: "_ISpunct", value: 4)
!20 = !DIEnumerator(name: "_ISalnum", value: 8)
!21 = !{!22, !24, !25, !26}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !{!28, !36, !0}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "dot", scope: !30, file: !3, line: 124, type: !35, isLocal: true, isDefinition: true)
!30 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 78, type: !31, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !34)
!31 = !DISubroutineType(types: !32)
!32 = !{!25, !25, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!34 = !{}
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !38, file: !39, line: 575, type: !25, isLocal: true, isDefinition: true)
!38 = distinct !DISubprogram(name: "oputs_", scope: !39, file: !39, line: 573, type: !40, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !34)
!39 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 1024, elements: !53)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !46, line: 50, size: 256, elements: !47)
!46 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!47 = !{!48, !49, !50, !52}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !45, file: !46, line: 52, baseType: !42, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !45, file: !46, line: 55, baseType: !25, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !45, file: !46, line: 56, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !45, file: !46, line: 57, baseType: !25, size: 32, offset: 192)
!53 = !{!54}
!54 = !DISubrange(count: 4)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "Version", scope: !57, file: !58, line: 3, type: !42, isLocal: false, isDefinition: true)
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !59, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!59 = !{!55}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "file_name", scope: !62, file: !63, line: 45, type: !42, isLocal: true, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !64, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!64 = !{!60, !65}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !62, file: !63, line: 55, type: !67, isLocal: true, isDefinition: true)
!67 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !70, file: !71, line: 66, type: !99, isLocal: false, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !72, globals: !73, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!72 = !{!24}
!73 = !{!74, !93, !68, !95, !97}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "old_file_name", scope: !76, file: !71, line: 304, type: !42, isLocal: true, isDefinition: true)
!76 = distinct !DISubprogram(name: "verror_at_line", scope: !71, file: !71, line: 298, type: !77, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !34)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !25, !25, !42, !7, !42, !79}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !80, line: 52, baseType: !81)
!80 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !82, line: 32, baseType: !83)
!82 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !84, baseType: !85)
!84 = !DIFile(filename: "lib/error.c", directory: "/src")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !86, size: 256, elements: !87)
!86 = !DINamespace(name: "std", scope: null)
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !85, file: !84, baseType: !24, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !85, file: !84, baseType: !24, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !85, file: !84, baseType: !24, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !85, file: !84, baseType: !25, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !85, file: !84, baseType: !25, size: 32, offset: 224)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "old_line_number", scope: !76, file: !71, line: 305, type: !7, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "error_message_count", scope: !70, file: !71, line: 69, type: !7, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !70, file: !71, line: 295, type: !25, isLocal: false, isDefinition: true)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{null}
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "program_name", scope: !104, file: !105, line: 31, type: !42, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !106, globals: !107, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!106 = !{!22}
!107 = !{!102}
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "utf07FF", scope: !110, file: !111, line: 46, type: !116, isLocal: true, isDefinition: true)
!110 = distinct !DISubprogram(name: "proper_name_lite", scope: !111, file: !111, line: 38, type: !112, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !34)
!111 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!112 = !DISubroutineType(types: !113)
!113 = !{!42, !42, !42}
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !115, splitDebugInlining: false, nameTableKind: None)
!115 = !{!108}
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 16, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 2)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !121, file: !122, line: 76, type: !191, isLocal: false, isDefinition: true)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !123, retainedTypes: !143, globals: !147, splitDebugInlining: false, nameTableKind: None)
!122 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!123 = !{!124, !138, !5}
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !125, line: 42, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!127 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!128 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!129 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!130 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!131 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!132 = !DIEnumerator(name: "c_quoting_style", value: 5)
!133 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!134 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!135 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!136 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!137 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !125, line: 254, baseType: !7, size: 32, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!141 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!142 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!143 = !{!25, !26, !144}
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !145, line: 46, baseType: !146)
!145 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!146 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!147 = !{!119, !148, !154, !166, !168, !173, !180, !187, !189}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !121, file: !122, line: 92, type: !150, isLocal: false, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 320, elements: !152)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!152 = !{!153}
!153 = !DISubrange(count: 10)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !121, file: !122, line: 1040, type: !156, isLocal: false, isDefinition: true)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !122, line: 56, size: 448, elements: !157)
!157 = !{!158, !159, !160, !164, !165}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !156, file: !122, line: 59, baseType: !124, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !122, line: 62, baseType: !25, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !156, file: !122, line: 66, baseType: !161, size: 256, offset: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !156, file: !122, line: 69, baseType: !42, size: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !156, file: !122, line: 72, baseType: !42, size: 64, offset: 384)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !121, file: !122, line: 107, type: !156, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "slot0", scope: !121, file: !122, line: 831, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 256)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "quote", scope: !175, file: !122, line: 228, type: !178, isLocal: true, isDefinition: true)
!175 = distinct !DISubprogram(name: "gettext_quote", scope: !122, file: !122, line: 197, type: !176, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !121, retainedNodes: !34)
!176 = !DISubroutineType(types: !177)
!177 = !{!42, !42, !124}
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !179)
!179 = !{!118, !54}
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "slotvec", scope: !121, file: !122, line: 834, type: !182, isLocal: true, isDefinition: true)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !122, line: 823, size: 128, elements: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !183, file: !122, line: 825, baseType: !144, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !183, file: !122, line: 826, baseType: !22, size: 64, offset: 64)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "nslots", scope: !121, file: !122, line: 832, type: !25, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "slotvec0", scope: !121, file: !122, line: 833, type: !183, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 704, elements: !193)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!193 = !{!194}
!194 = !DISubrange(count: 11)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !197, file: !198, line: 26, type: !200, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !199, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!199 = !{!195}
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 376, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 47)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "exit_failure", scope: !205, file: !206, line: 24, type: !208, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !207, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!207 = !{!203}
!208 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "internal_state", scope: !211, file: !212, line: 97, type: !216, isLocal: true, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !213, globals: !215, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!213 = !{!24, !144, !214}
!214 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!215 = !{!209}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !217, line: 6, baseType: !218)
!217 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !219, line: 21, baseType: !220)
!219 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 13, size: 64, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !220, file: !219, line: 15, baseType: !25, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !220, file: !219, line: 20, baseType: !224, size: 32, offset: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !220, file: !219, line: 16, size: 32, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !224, file: !219, line: 18, baseType: !7, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !224, file: !219, line: 19, baseType: !228, size: 32)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !53)
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!230 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12591251654a6c6fd0490c627594f543")
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!232 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !72, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!237 = !{!238}
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !236, line: 40, baseType: !7, size: 32, elements: !239)
!239 = !{!240}
!240 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !243, retainedTypes: !260, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!243 = !{!244, !251}
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !245, file: !242, line: 188, baseType: !7, size: 32, elements: !249)
!245 = distinct !DISubprogram(name: "x2nrealloc", scope: !242, file: !242, line: 176, type: !246, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!246 = !DISubroutineType(types: !247)
!247 = !{!24, !24, !248, !144}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!249 = !{!250}
!250 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !252, file: !242, line: 228, baseType: !7, size: 32, elements: !249)
!252 = distinct !DISubprogram(name: "xpalloc", scope: !242, file: !242, line: 223, type: !253, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!253 = !DISubroutineType(types: !254)
!254 = !{!24, !24, !255, !256, !258, !256}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !257, line: 130, baseType: !258)
!257 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !145, line: 35, baseType: !259)
!259 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!260 = !{!22, !24, !67, !259, !146}
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !106, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!266 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!267 = distinct !DICompileUnit(language: DW_LANG_C99, file: !268, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!268 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!270 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !72, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !72, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !72, splitDebugInlining: false, nameTableKind: None)
!276 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!278 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!280 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !285, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!285 = !{!67, !146, !24}
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!289 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !72, splitDebugInlining: false, nameTableKind: None)
!291 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!292 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!293 = !{i32 7, !"Dwarf Version", i32 5}
!294 = !{i32 2, !"Debug Info Version", i32 3}
!295 = !{i32 1, !"wchar_size", i32 4}
!296 = !{i32 1, !"branch-target-enforcement", i32 0}
!297 = !{i32 1, !"sign-return-address", i32 0}
!298 = !{i32 1, !"sign-return-address-all", i32 0}
!299 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!300 = !{i32 7, !"PIC Level", i32 2}
!301 = !{i32 7, !"PIE Level", i32 2}
!302 = !{i32 7, !"uwtable", i32 1}
!303 = !{i32 7, !"frame-pointer", i32 1}
!304 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 43, type: !305, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !34)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !25}
!307 = !DILocalVariable(name: "status", arg: 1, scope: !304, file: !3, line: 43, type: !25)
!308 = !DILocation(line: 43, column: 12, scope: !304)
!309 = !DILocation(line: 45, column: 7, scope: !310)
!310 = distinct !DILexicalBlock(scope: !304, file: !3, line: 45, column: 7)
!311 = !DILocation(line: 45, column: 14, scope: !310)
!312 = !DILocation(line: 45, column: 7, scope: !304)
!313 = !DILocation(line: 46, column: 5, scope: !310)
!314 = !DILocation(line: 46, column: 5, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !3, line: 46, column: 5)
!316 = !DILocation(line: 49, column: 15, scope: !317)
!317 = distinct !DILexicalBlock(scope: !310, file: !3, line: 48, column: 5)
!318 = !DILocation(line: 52, column: 15, scope: !317)
!319 = !DILocation(line: 49, column: 7, scope: !317)
!320 = !DILocation(line: 53, column: 7, scope: !317)
!321 = !DILocation(line: 58, column: 7, scope: !317)
!322 = !DILocation(line: 62, column: 7, scope: !317)
!323 = !DILocation(line: 63, column: 7, scope: !317)
!324 = !DILocation(line: 64, column: 15, scope: !317)
!325 = !DILocation(line: 71, column: 15, scope: !317)
!326 = !DILocation(line: 71, column: 29, scope: !317)
!327 = !DILocation(line: 71, column: 43, scope: !317)
!328 = !DILocation(line: 64, column: 7, scope: !317)
!329 = !DILocation(line: 72, column: 7, scope: !317)
!330 = !DILocation(line: 74, column: 9, scope: !304)
!331 = !DILocation(line: 74, column: 3, scope: !304)
!332 = !DILocalVariable(name: "program", arg: 1, scope: !38, file: !39, line: 573, type: !42)
!333 = !DILocation(line: 573, column: 34, scope: !38)
!334 = !DILocalVariable(name: "option", arg: 2, scope: !38, file: !39, line: 573, type: !42)
!335 = !DILocation(line: 573, column: 55, scope: !38)
!336 = !DILocation(line: 581, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !38, file: !39, line: 581, column: 7)
!338 = !DILocation(line: 581, column: 19, scope: !337)
!339 = !DILocation(line: 581, column: 7, scope: !38)
!340 = !DILocalVariable(name: "term", scope: !341, file: !39, line: 585, type: !42)
!341 = distinct !DILexicalBlock(scope: !337, file: !39, line: 582, column: 5)
!342 = !DILocation(line: 585, column: 19, scope: !341)
!343 = !DILocation(line: 585, column: 26, scope: !341)
!344 = !DILocation(line: 586, column: 23, scope: !341)
!345 = !DILocation(line: 586, column: 28, scope: !341)
!346 = !DILocation(line: 586, column: 33, scope: !341)
!347 = !DILocation(line: 586, column: 32, scope: !341)
!348 = !DILocation(line: 586, column: 38, scope: !341)
!349 = !DILocation(line: 586, column: 48, scope: !341)
!350 = !DILocation(line: 586, column: 41, scope: !341)
!351 = !DILocation(line: 586, column: 19, scope: !341)
!352 = !DILocation(line: 587, column: 5, scope: !341)
!353 = !DILocation(line: 588, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !38, file: !39, line: 588, column: 7)
!355 = !DILocation(line: 588, column: 7, scope: !38)
!356 = !DILocation(line: 590, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !39, line: 589, column: 5)
!358 = !DILocation(line: 591, column: 7, scope: !357)
!359 = !DILocalVariable(name: "double_space", scope: !38, file: !39, line: 594, type: !67)
!360 = !DILocation(line: 594, column: 8, scope: !38)
!361 = !DILocalVariable(name: "first_word", scope: !38, file: !39, line: 595, type: !42)
!362 = !DILocation(line: 595, column: 15, scope: !38)
!363 = !DILocation(line: 595, column: 28, scope: !38)
!364 = !DILocation(line: 595, column: 45, scope: !38)
!365 = !DILocation(line: 595, column: 37, scope: !38)
!366 = !DILocation(line: 595, column: 35, scope: !38)
!367 = !DILocalVariable(name: "option_text", scope: !38, file: !39, line: 596, type: !42)
!368 = !DILocation(line: 596, column: 15, scope: !38)
!369 = !DILocation(line: 596, column: 37, scope: !38)
!370 = !DILocation(line: 596, column: 29, scope: !38)
!371 = !DILocation(line: 597, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !38, file: !39, line: 597, column: 7)
!373 = !DILocation(line: 597, column: 7, scope: !38)
!374 = !DILocation(line: 599, column: 21, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !39, line: 598, column: 5)
!376 = !DILocation(line: 599, column: 19, scope: !375)
!377 = !DILocation(line: 602, column: 20, scope: !375)
!378 = !DILocation(line: 603, column: 5, scope: !375)
!379 = !DILocation(line: 604, column: 12, scope: !380)
!380 = distinct !DILexicalBlock(scope: !372, file: !39, line: 604, column: 12)
!381 = !DILocation(line: 604, column: 27, scope: !380)
!382 = !DILocation(line: 604, column: 24, scope: !380)
!383 = !DILocation(line: 604, column: 12, scope: !372)
!384 = !DILocalVariable(name: "s", scope: !385, file: !39, line: 608, type: !42)
!385 = distinct !DILexicalBlock(scope: !380, file: !39, line: 605, column: 5)
!386 = !DILocation(line: 608, column: 19, scope: !385)
!387 = !DILocation(line: 608, column: 23, scope: !385)
!388 = !DILocalVariable(name: "spaces", scope: !385, file: !39, line: 609, type: !144)
!389 = !DILocation(line: 609, column: 14, scope: !385)
!390 = !DILocation(line: 610, column: 7, scope: !385)
!391 = !DILocation(line: 610, column: 14, scope: !385)
!392 = !DILocation(line: 610, column: 18, scope: !385)
!393 = !DILocation(line: 610, column: 16, scope: !385)
!394 = !DILocation(line: 610, column: 30, scope: !385)
!395 = !DILocation(line: 610, column: 33, scope: !385)
!396 = !DILocation(line: 610, column: 40, scope: !385)
!397 = !DILocation(line: 0, scope: !385)
!398 = !DILocation(line: 611, column: 21, scope: !385)
!399 = !DILocation(line: 611, column: 20, scope: !385)
!400 = !DILocation(line: 611, column: 19, scope: !385)
!401 = !DILocation(line: 611, column: 16, scope: !385)
!402 = distinct !{!402, !390, !398, !403}
!403 = !{!"llvm.loop.mustprogress"}
!404 = !DILocation(line: 612, column: 11, scope: !405)
!405 = distinct !DILexicalBlock(scope: !385, file: !39, line: 612, column: 11)
!406 = !DILocation(line: 612, column: 18, scope: !405)
!407 = !DILocation(line: 612, column: 11, scope: !385)
!408 = !DILocation(line: 615, column: 25, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !39, line: 613, column: 9)
!410 = !DILocation(line: 615, column: 23, scope: !409)
!411 = !DILocation(line: 616, column: 24, scope: !409)
!412 = !DILocation(line: 617, column: 9, scope: !409)
!413 = !DILocation(line: 618, column: 5, scope: !385)
!414 = !DILocalVariable(name: "anchor_len", scope: !38, file: !39, line: 620, type: !144)
!415 = !DILocation(line: 620, column: 10, scope: !38)
!416 = !DILocation(line: 620, column: 32, scope: !38)
!417 = !DILocation(line: 620, column: 23, scope: !38)
!418 = !DILocalVariable(name: "desc_text", scope: !38, file: !39, line: 625, type: !42)
!419 = !DILocation(line: 625, column: 15, scope: !38)
!420 = !DILocation(line: 625, column: 27, scope: !38)
!421 = !DILocation(line: 625, column: 41, scope: !38)
!422 = !DILocation(line: 625, column: 39, scope: !38)
!423 = !DILocation(line: 626, column: 3, scope: !38)
!424 = !DILocation(line: 626, column: 11, scope: !38)
!425 = !DILocation(line: 626, column: 10, scope: !38)
!426 = !DILocation(line: 626, column: 21, scope: !38)
!427 = !DILocation(line: 626, column: 25, scope: !38)
!428 = !DILocation(line: 626, column: 24, scope: !38)
!429 = !DILocation(line: 626, column: 35, scope: !38)
!430 = !DILocation(line: 0, scope: !38)
!431 = !DILocation(line: 628, column: 12, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !39, line: 628, column: 11)
!433 = distinct !DILexicalBlock(scope: !38, file: !39, line: 627, column: 5)
!434 = !DILocation(line: 628, column: 11, scope: !432)
!435 = !DILocation(line: 628, column: 22, scope: !432)
!436 = !DILocation(line: 628, column: 29, scope: !432)
!437 = !DILocation(line: 628, column: 34, scope: !432)
!438 = !DILocation(line: 628, column: 44, scope: !432)
!439 = !DILocation(line: 628, column: 32, scope: !432)
!440 = !DILocation(line: 628, column: 49, scope: !432)
!441 = !DILocation(line: 628, column: 11, scope: !433)
!442 = !DILocation(line: 629, column: 22, scope: !432)
!443 = !DILocation(line: 629, column: 9, scope: !432)
!444 = !DILocation(line: 630, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !433, file: !39, line: 630, column: 11)
!446 = !DILocation(line: 630, column: 11, scope: !433)
!447 = !DILocation(line: 632, column: 16, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !39, line: 632, column: 15)
!449 = distinct !DILexicalBlock(scope: !445, file: !39, line: 631, column: 9)
!450 = !DILocation(line: 632, column: 15, scope: !448)
!451 = !DILocation(line: 632, column: 26, scope: !448)
!452 = !DILocation(line: 632, column: 34, scope: !448)
!453 = !DILocation(line: 632, column: 37, scope: !448)
!454 = !DILocation(line: 632, column: 15, scope: !449)
!455 = !DILocation(line: 633, column: 13, scope: !448)
!456 = !DILocation(line: 636, column: 16, scope: !457)
!457 = distinct !DILexicalBlock(scope: !449, file: !39, line: 636, column: 15)
!458 = !DILocation(line: 636, column: 29, scope: !457)
!459 = !DILocation(line: 636, column: 34, scope: !457)
!460 = !DILocation(line: 636, column: 44, scope: !457)
!461 = !DILocation(line: 636, column: 32, scope: !457)
!462 = !DILocation(line: 636, column: 49, scope: !457)
!463 = !DILocation(line: 636, column: 15, scope: !449)
!464 = !DILocation(line: 637, column: 13, scope: !457)
!465 = !DILocation(line: 638, column: 9, scope: !449)
!466 = !DILocation(line: 640, column: 16, scope: !433)
!467 = distinct !{!467, !423, !468, !403}
!468 = !DILocation(line: 641, column: 5, scope: !38)
!469 = !DILocation(line: 644, column: 3, scope: !38)
!470 = !DILocalVariable(name: "url_program", scope: !38, file: !39, line: 648, type: !42)
!471 = !DILocation(line: 648, column: 15, scope: !38)
!472 = !DILocation(line: 648, column: 38, scope: !38)
!473 = !DILocation(line: 648, column: 31, scope: !38)
!474 = !DILocation(line: 649, column: 38, scope: !38)
!475 = !DILocation(line: 649, column: 31, scope: !38)
!476 = !DILocation(line: 650, column: 38, scope: !38)
!477 = !DILocation(line: 650, column: 31, scope: !38)
!478 = !DILocation(line: 651, column: 38, scope: !38)
!479 = !DILocation(line: 651, column: 31, scope: !38)
!480 = !DILocation(line: 652, column: 38, scope: !38)
!481 = !DILocation(line: 652, column: 31, scope: !38)
!482 = !DILocation(line: 653, column: 38, scope: !38)
!483 = !DILocation(line: 653, column: 31, scope: !38)
!484 = !DILocation(line: 654, column: 38, scope: !38)
!485 = !DILocation(line: 654, column: 31, scope: !38)
!486 = !DILocation(line: 655, column: 38, scope: !38)
!487 = !DILocation(line: 655, column: 31, scope: !38)
!488 = !DILocation(line: 656, column: 38, scope: !38)
!489 = !DILocation(line: 656, column: 31, scope: !38)
!490 = !DILocation(line: 657, column: 38, scope: !38)
!491 = !DILocation(line: 657, column: 31, scope: !38)
!492 = !DILocation(line: 658, column: 31, scope: !38)
!493 = !DILocation(line: 663, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !38, file: !39, line: 663, column: 7)
!495 = !DILocation(line: 664, column: 7, scope: !494)
!496 = !DILocation(line: 664, column: 10, scope: !494)
!497 = !DILocation(line: 663, column: 7, scope: !38)
!498 = !DILocation(line: 670, column: 15, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !39, line: 665, column: 5)
!500 = !DILocation(line: 670, column: 28, scope: !499)
!501 = !DILocation(line: 670, column: 47, scope: !499)
!502 = !DILocation(line: 670, column: 41, scope: !499)
!503 = !DILocation(line: 670, column: 59, scope: !499)
!504 = !DILocation(line: 669, column: 7, scope: !499)
!505 = !DILocation(line: 671, column: 5, scope: !499)
!506 = !DILocation(line: 676, column: 48, scope: !507)
!507 = distinct !DILexicalBlock(scope: !494, file: !39, line: 673, column: 5)
!508 = !DILocation(line: 677, column: 21, scope: !507)
!509 = !DILocation(line: 677, column: 15, scope: !507)
!510 = !DILocation(line: 677, column: 33, scope: !507)
!511 = !DILocation(line: 676, column: 7, scope: !507)
!512 = !DILocation(line: 679, column: 3, scope: !38)
!513 = !DILocation(line: 683, column: 3, scope: !38)
!514 = !DILocation(line: 686, column: 3, scope: !38)
!515 = !DILocation(line: 688, column: 3, scope: !38)
!516 = !DILocation(line: 691, column: 3, scope: !38)
!517 = !DILocation(line: 695, column: 3, scope: !38)
!518 = !DILocation(line: 696, column: 1, scope: !38)
!519 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !39, file: !39, line: 836, type: !520, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !34)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !42}
!522 = !DILocalVariable(name: "program", arg: 1, scope: !519, file: !39, line: 836, type: !42)
!523 = !DILocation(line: 836, column: 34, scope: !519)
!524 = !DILocalVariable(name: "infomap", scope: !519, file: !39, line: 838, type: !525)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 896, elements: !531)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !519, file: !39, line: 838, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !527, file: !39, line: 838, baseType: !42, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !527, file: !39, line: 838, baseType: !42, size: 64, offset: 64)
!531 = !{!532}
!532 = !DISubrange(count: 7)
!533 = !DILocation(line: 838, column: 67, scope: !519)
!534 = !DILocalVariable(name: "node", scope: !519, file: !39, line: 848, type: !42)
!535 = !DILocation(line: 848, column: 15, scope: !519)
!536 = !DILocation(line: 848, column: 22, scope: !519)
!537 = !DILocalVariable(name: "map_prog", scope: !519, file: !39, line: 849, type: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!539 = !DILocation(line: 849, column: 25, scope: !519)
!540 = !DILocation(line: 849, column: 36, scope: !519)
!541 = !DILocation(line: 851, column: 3, scope: !519)
!542 = !DILocation(line: 851, column: 10, scope: !519)
!543 = !DILocation(line: 851, column: 20, scope: !519)
!544 = !DILocation(line: 851, column: 28, scope: !519)
!545 = !DILocation(line: 851, column: 40, scope: !519)
!546 = !DILocation(line: 851, column: 49, scope: !519)
!547 = !DILocation(line: 851, column: 59, scope: !519)
!548 = !DILocation(line: 851, column: 33, scope: !519)
!549 = !DILocation(line: 851, column: 31, scope: !519)
!550 = !DILocation(line: 0, scope: !519)
!551 = !DILocation(line: 852, column: 13, scope: !519)
!552 = distinct !{!552, !541, !551, !403}
!553 = !DILocation(line: 854, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !519, file: !39, line: 854, column: 7)
!555 = !DILocation(line: 854, column: 17, scope: !554)
!556 = !DILocation(line: 854, column: 7, scope: !519)
!557 = !DILocation(line: 855, column: 12, scope: !554)
!558 = !DILocation(line: 855, column: 22, scope: !554)
!559 = !DILocation(line: 855, column: 10, scope: !554)
!560 = !DILocation(line: 855, column: 5, scope: !554)
!561 = !DILocation(line: 857, column: 3, scope: !519)
!562 = !DILocalVariable(name: "lc_messages", scope: !519, file: !39, line: 861, type: !42)
!563 = !DILocation(line: 861, column: 15, scope: !519)
!564 = !DILocation(line: 861, column: 29, scope: !519)
!565 = !DILocation(line: 862, column: 7, scope: !566)
!566 = distinct !DILexicalBlock(scope: !519, file: !39, line: 862, column: 7)
!567 = !DILocation(line: 862, column: 19, scope: !566)
!568 = !DILocation(line: 862, column: 22, scope: !566)
!569 = !DILocation(line: 862, column: 7, scope: !519)
!570 = !DILocation(line: 868, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !566, file: !39, line: 863, column: 5)
!572 = !DILocation(line: 870, column: 5, scope: !571)
!573 = !DILocalVariable(name: "url_program", scope: !519, file: !39, line: 874, type: !42)
!574 = !DILocation(line: 874, column: 15, scope: !519)
!575 = !DILocation(line: 874, column: 36, scope: !519)
!576 = !DILocation(line: 874, column: 29, scope: !519)
!577 = !DILocation(line: 874, column: 61, scope: !519)
!578 = !DILocation(line: 875, column: 11, scope: !519)
!579 = !DILocation(line: 876, column: 24, scope: !519)
!580 = !DILocation(line: 875, column: 3, scope: !519)
!581 = !DILocation(line: 877, column: 11, scope: !519)
!582 = !DILocation(line: 878, column: 11, scope: !519)
!583 = !DILocation(line: 878, column: 17, scope: !519)
!584 = !DILocation(line: 878, column: 25, scope: !519)
!585 = !DILocation(line: 878, column: 22, scope: !519)
!586 = !DILocation(line: 877, column: 3, scope: !519)
!587 = !DILocation(line: 879, column: 1, scope: !519)
!588 = !DILocalVariable(name: "argc", arg: 1, scope: !30, file: !3, line: 78, type: !25)
!589 = !DILocation(line: 78, column: 11, scope: !30)
!590 = !DILocalVariable(name: "argv", arg: 2, scope: !30, file: !3, line: 78, type: !33)
!591 = !DILocation(line: 78, column: 24, scope: !30)
!592 = !DILocalVariable(name: "use_nuls", scope: !30, file: !3, line: 80, type: !67)
!593 = !DILocation(line: 80, column: 8, scope: !30)
!594 = !DILocation(line: 83, column: 21, scope: !30)
!595 = !DILocation(line: 83, column: 3, scope: !30)
!596 = !DILocation(line: 84, column: 3, scope: !30)
!597 = !DILocation(line: 85, column: 3, scope: !30)
!598 = !DILocation(line: 86, column: 3, scope: !30)
!599 = !DILocation(line: 88, column: 3, scope: !30)
!600 = !DILocation(line: 90, column: 3, scope: !30)
!601 = !DILocalVariable(name: "c", scope: !602, file: !3, line: 92, type: !25)
!602 = distinct !DILexicalBlock(scope: !30, file: !3, line: 91, column: 5)
!603 = !DILocation(line: 92, column: 11, scope: !602)
!604 = !DILocation(line: 92, column: 28, scope: !602)
!605 = !DILocation(line: 92, column: 34, scope: !602)
!606 = !DILocation(line: 92, column: 15, scope: !602)
!607 = !DILocation(line: 94, column: 11, scope: !608)
!608 = distinct !DILexicalBlock(scope: !602, file: !3, line: 94, column: 11)
!609 = !DILocation(line: 94, column: 13, scope: !608)
!610 = !DILocation(line: 94, column: 11, scope: !602)
!611 = !DILocation(line: 95, column: 9, scope: !608)
!612 = !DILocation(line: 97, column: 15, scope: !602)
!613 = !DILocation(line: 97, column: 7, scope: !602)
!614 = !DILocation(line: 100, column: 20, scope: !615)
!615 = distinct !DILexicalBlock(scope: !602, file: !3, line: 98, column: 9)
!616 = !DILocation(line: 101, column: 11, scope: !615)
!617 = !DILocation(line: 103, column: 9, scope: !615)
!618 = !DILocation(line: 104, column: 9, scope: !615)
!619 = !DILocation(line: 107, column: 11, scope: !615)
!620 = distinct !{!620, !600, !621}
!621 = !DILocation(line: 109, column: 5, scope: !30)
!622 = !DILocation(line: 111, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !30, file: !3, line: 111, column: 7)
!624 = !DILocation(line: 111, column: 14, scope: !623)
!625 = !DILocation(line: 111, column: 21, scope: !623)
!626 = !DILocation(line: 111, column: 12, scope: !623)
!627 = !DILocation(line: 111, column: 7, scope: !30)
!628 = !DILocation(line: 113, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !623, file: !3, line: 112, column: 5)
!630 = !DILocation(line: 114, column: 7, scope: !629)
!631 = !DILocation(line: 117, column: 3, scope: !30)
!632 = !DILocation(line: 117, column: 10, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 117, column: 3)
!634 = distinct !DILexicalBlock(scope: !30, file: !3, line: 117, column: 3)
!635 = !DILocation(line: 117, column: 19, scope: !633)
!636 = !DILocation(line: 117, column: 17, scope: !633)
!637 = !DILocation(line: 117, column: 3, scope: !634)
!638 = !DILocalVariable(name: "result", scope: !639, file: !3, line: 119, type: !42)
!639 = distinct !DILexicalBlock(scope: !633, file: !3, line: 118, column: 5)
!640 = !DILocation(line: 119, column: 19, scope: !639)
!641 = !DILocation(line: 119, column: 28, scope: !639)
!642 = !DILocation(line: 119, column: 33, scope: !639)
!643 = !DILocalVariable(name: "len", scope: !639, file: !3, line: 120, type: !256)
!644 = !DILocation(line: 120, column: 13, scope: !639)
!645 = !DILocation(line: 120, column: 28, scope: !639)
!646 = !DILocation(line: 120, column: 19, scope: !639)
!647 = !DILocation(line: 122, column: 13, scope: !648)
!648 = distinct !DILexicalBlock(scope: !639, file: !3, line: 122, column: 11)
!649 = !DILocation(line: 122, column: 11, scope: !639)
!650 = !DILocation(line: 125, column: 18, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !3, line: 123, column: 9)
!652 = !DILocation(line: 126, column: 15, scope: !651)
!653 = !DILocation(line: 127, column: 9, scope: !651)
!654 = !DILocation(line: 129, column: 7, scope: !639)
!655 = !DILocation(line: 130, column: 7, scope: !639)
!656 = !DILocation(line: 131, column: 5, scope: !639)
!657 = !DILocation(line: 117, column: 31, scope: !633)
!658 = !DILocation(line: 117, column: 3, scope: !633)
!659 = distinct !{!659, !637, !660, !403}
!660 = !DILocation(line: 131, column: 5, scope: !634)
!661 = !DILocation(line: 133, column: 3, scope: !30)
!662 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !63, file: !63, line: 50, type: !520, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !34)
!663 = !DILocalVariable(name: "file", arg: 1, scope: !662, file: !63, line: 50, type: !42)
!664 = !DILocation(line: 50, column: 41, scope: !662)
!665 = !DILocation(line: 52, column: 15, scope: !662)
!666 = !DILocation(line: 52, column: 13, scope: !662)
!667 = !DILocation(line: 53, column: 1, scope: !662)
!668 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !63, file: !63, line: 87, type: !669, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !34)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !67}
!671 = !DILocalVariable(name: "ignore", arg: 1, scope: !668, file: !63, line: 87, type: !67)
!672 = !DILocation(line: 87, column: 37, scope: !668)
!673 = !DILocation(line: 89, column: 18, scope: !668)
!674 = !DILocation(line: 89, column: 16, scope: !668)
!675 = !DILocation(line: 90, column: 1, scope: !668)
!676 = distinct !DISubprogram(name: "close_stdout", scope: !63, file: !63, line: 116, type: !100, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !34)
!677 = !DILocation(line: 118, column: 21, scope: !678)
!678 = distinct !DILexicalBlock(scope: !676, file: !63, line: 118, column: 7)
!679 = !DILocation(line: 118, column: 7, scope: !678)
!680 = !DILocation(line: 118, column: 29, scope: !678)
!681 = !DILocation(line: 119, column: 7, scope: !678)
!682 = !DILocation(line: 119, column: 12, scope: !678)
!683 = !DILocation(line: 119, column: 25, scope: !678)
!684 = !DILocation(line: 119, column: 28, scope: !678)
!685 = !DILocation(line: 119, column: 34, scope: !678)
!686 = !DILocation(line: 118, column: 7, scope: !676)
!687 = !DILocalVariable(name: "write_error", scope: !688, file: !63, line: 121, type: !42)
!688 = distinct !DILexicalBlock(scope: !678, file: !63, line: 120, column: 5)
!689 = !DILocation(line: 121, column: 19, scope: !688)
!690 = !DILocation(line: 121, column: 33, scope: !688)
!691 = !DILocation(line: 122, column: 11, scope: !692)
!692 = distinct !DILexicalBlock(scope: !688, file: !63, line: 122, column: 11)
!693 = !DILocation(line: 122, column: 11, scope: !688)
!694 = !DILocation(line: 123, column: 9, scope: !692)
!695 = !DILocation(line: 126, column: 9, scope: !692)
!696 = !DILocation(line: 128, column: 14, scope: !688)
!697 = !DILocation(line: 128, column: 7, scope: !688)
!698 = !DILocation(line: 133, column: 42, scope: !699)
!699 = distinct !DILexicalBlock(scope: !676, file: !63, line: 133, column: 7)
!700 = !DILocation(line: 133, column: 28, scope: !699)
!701 = !DILocation(line: 133, column: 50, scope: !699)
!702 = !DILocation(line: 133, column: 7, scope: !676)
!703 = !DILocation(line: 134, column: 12, scope: !699)
!704 = !DILocation(line: 134, column: 5, scope: !699)
!705 = !DILocation(line: 135, column: 1, scope: !676)
!706 = distinct !DISubprogram(name: "dir_len", scope: !230, file: !230, line: 32, type: !707, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !229, retainedNodes: !34)
!707 = !DISubroutineType(types: !708)
!708 = !{!144, !42}
!709 = !DILocalVariable(name: "file", arg: 1, scope: !706, file: !230, line: 32, type: !42)
!710 = !DILocation(line: 32, column: 22, scope: !706)
!711 = !DILocalVariable(name: "prefix_length", scope: !706, file: !230, line: 34, type: !144)
!712 = !DILocation(line: 34, column: 10, scope: !706)
!713 = !DILocation(line: 34, column: 26, scope: !706)
!714 = !DILocation(line: 37, column: 21, scope: !706)
!715 = !DILocation(line: 37, column: 35, scope: !706)
!716 = !DILocation(line: 40, column: 24, scope: !706)
!717 = !DILocation(line: 37, column: 20, scope: !706)
!718 = !DILocation(line: 37, column: 17, scope: !706)
!719 = !DILocalVariable(name: "length", scope: !706, file: !230, line: 47, type: !144)
!720 = !DILocation(line: 47, column: 10, scope: !706)
!721 = !DILocation(line: 48, column: 33, scope: !722)
!722 = distinct !DILexicalBlock(scope: !706, file: !230, line: 48, column: 3)
!723 = !DILocation(line: 48, column: 17, scope: !722)
!724 = !DILocation(line: 48, column: 41, scope: !722)
!725 = !DILocation(line: 48, column: 39, scope: !722)
!726 = !DILocation(line: 48, column: 15, scope: !722)
!727 = !DILocation(line: 48, column: 8, scope: !722)
!728 = !DILocation(line: 49, column: 8, scope: !729)
!729 = distinct !DILexicalBlock(scope: !722, file: !230, line: 48, column: 3)
!730 = !DILocation(line: 49, column: 24, scope: !729)
!731 = !DILocation(line: 49, column: 22, scope: !729)
!732 = !DILocation(line: 48, column: 3, scope: !722)
!733 = !DILocation(line: 51, column: 11, scope: !734)
!734 = distinct !DILexicalBlock(scope: !729, file: !230, line: 51, column: 9)
!735 = !DILocation(line: 51, column: 9, scope: !729)
!736 = !DILocation(line: 52, column: 7, scope: !734)
!737 = !DILocation(line: 50, column: 14, scope: !729)
!738 = !DILocation(line: 48, column: 3, scope: !729)
!739 = distinct !{!739, !732, !740, !403}
!740 = !DILocation(line: 52, column: 7, scope: !722)
!741 = !DILocation(line: 53, column: 10, scope: !706)
!742 = !DILocation(line: 53, column: 3, scope: !706)
!743 = distinct !DISubprogram(name: "mdir_name", scope: !230, file: !230, line: 72, type: !744, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !229, retainedNodes: !34)
!744 = !DISubroutineType(types: !745)
!745 = !{!22, !42}
!746 = !DILocalVariable(name: "file", arg: 1, scope: !743, file: !230, line: 72, type: !42)
!747 = !DILocation(line: 72, column: 24, scope: !743)
!748 = !DILocalVariable(name: "length", scope: !743, file: !230, line: 74, type: !144)
!749 = !DILocation(line: 74, column: 10, scope: !743)
!750 = !DILocation(line: 74, column: 28, scope: !743)
!751 = !DILocation(line: 74, column: 19, scope: !743)
!752 = !DILocalVariable(name: "append_dot", scope: !743, file: !230, line: 75, type: !67)
!753 = !DILocation(line: 75, column: 8, scope: !743)
!754 = !DILocation(line: 75, column: 22, scope: !743)
!755 = !DILocation(line: 75, column: 29, scope: !743)
!756 = !DILocation(line: 76, column: 22, scope: !743)
!757 = !DILocalVariable(name: "dir", scope: !743, file: !230, line: 79, type: !22)
!758 = !DILocation(line: 79, column: 9, scope: !743)
!759 = !DILocation(line: 79, column: 23, scope: !743)
!760 = !DILocation(line: 79, column: 32, scope: !743)
!761 = !DILocation(line: 79, column: 30, scope: !743)
!762 = !DILocation(line: 79, column: 43, scope: !743)
!763 = !DILocation(line: 79, column: 15, scope: !743)
!764 = !DILocation(line: 80, column: 8, scope: !765)
!765 = distinct !DILexicalBlock(scope: !743, file: !230, line: 80, column: 7)
!766 = !DILocation(line: 80, column: 7, scope: !743)
!767 = !DILocation(line: 81, column: 5, scope: !765)
!768 = !DILocation(line: 82, column: 11, scope: !743)
!769 = !DILocation(line: 82, column: 16, scope: !743)
!770 = !DILocation(line: 82, column: 22, scope: !743)
!771 = !DILocation(line: 82, column: 3, scope: !743)
!772 = !DILocation(line: 83, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !743, file: !230, line: 83, column: 7)
!774 = !DILocation(line: 83, column: 7, scope: !743)
!775 = !DILocation(line: 84, column: 5, scope: !773)
!776 = !DILocation(line: 84, column: 15, scope: !773)
!777 = !DILocation(line: 84, column: 19, scope: !773)
!778 = !DILocation(line: 85, column: 3, scope: !743)
!779 = !DILocation(line: 85, column: 7, scope: !743)
!780 = !DILocation(line: 85, column: 15, scope: !743)
!781 = !DILocation(line: 86, column: 10, scope: !743)
!782 = !DILocation(line: 86, column: 3, scope: !743)
!783 = !DILocation(line: 87, column: 1, scope: !743)
!784 = distinct !DISubprogram(name: "verror", scope: !71, file: !71, line: 251, type: !785, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !34)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !25, !25, !42, !79}
!787 = !DILocalVariable(name: "status", arg: 1, scope: !784, file: !71, line: 251, type: !25)
!788 = !DILocation(line: 251, column: 1, scope: !784)
!789 = !DILocalVariable(name: "errnum", arg: 2, scope: !784, file: !71, line: 251, type: !25)
!790 = !DILocalVariable(name: "message", arg: 3, scope: !784, file: !71, line: 251, type: !42)
!791 = !DILocalVariable(name: "args", arg: 4, scope: !784, file: !71, line: 251, type: !79)
!792 = !DILocation(line: 261, column: 3, scope: !784)
!793 = !DILocation(line: 265, column: 7, scope: !794)
!794 = distinct !DILexicalBlock(scope: !784, file: !71, line: 265, column: 7)
!795 = !DILocation(line: 265, column: 7, scope: !784)
!796 = !DILocation(line: 266, column: 7, scope: !794)
!797 = !DILocation(line: 266, column: 5, scope: !794)
!798 = !DILocation(line: 272, column: 16, scope: !799)
!799 = distinct !DILexicalBlock(scope: !794, file: !71, line: 268, column: 5)
!800 = !DILocation(line: 272, column: 32, scope: !799)
!801 = !DILocation(line: 272, column: 7, scope: !799)
!802 = !DILocation(line: 276, column: 3, scope: !784)
!803 = !DILocation(line: 282, column: 1, scope: !784)
!804 = distinct !DISubprogram(name: "flush_stdout", scope: !71, file: !71, line: 163, type: !100, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !70, retainedNodes: !34)
!805 = !DILocalVariable(name: "stdout_fd", scope: !804, file: !71, line: 166, type: !25)
!806 = !DILocation(line: 166, column: 7, scope: !804)
!807 = !DILocation(line: 172, column: 13, scope: !804)
!808 = !DILocation(line: 182, column: 12, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !71, line: 182, column: 7)
!810 = !DILocation(line: 182, column: 9, scope: !809)
!811 = !DILocation(line: 182, column: 22, scope: !809)
!812 = !DILocation(line: 182, column: 34, scope: !809)
!813 = !DILocation(line: 182, column: 25, scope: !809)
!814 = !DILocation(line: 182, column: 7, scope: !804)
!815 = !DILocation(line: 184, column: 5, scope: !809)
!816 = !DILocation(line: 185, column: 1, scope: !804)
!817 = distinct !DISubprogram(name: "error_tail", scope: !71, file: !71, line: 219, type: !785, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !70, retainedNodes: !34)
!818 = !DILocalVariable(name: "status", arg: 1, scope: !817, file: !71, line: 219, type: !25)
!819 = !DILocation(line: 219, column: 1, scope: !817)
!820 = !DILocalVariable(name: "errnum", arg: 2, scope: !817, file: !71, line: 219, type: !25)
!821 = !DILocalVariable(name: "message", arg: 3, scope: !817, file: !71, line: 219, type: !42)
!822 = !DILocalVariable(name: "args", arg: 4, scope: !817, file: !71, line: 219, type: !79)
!823 = !DILocation(line: 229, column: 13, scope: !817)
!824 = !DILocation(line: 229, column: 21, scope: !817)
!825 = !DILocation(line: 229, column: 3, scope: !817)
!826 = !DILocation(line: 232, column: 3, scope: !817)
!827 = !DILocation(line: 233, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !817, file: !71, line: 233, column: 7)
!829 = !DILocation(line: 233, column: 7, scope: !817)
!830 = !DILocation(line: 234, column: 26, scope: !828)
!831 = !DILocation(line: 234, column: 5, scope: !828)
!832 = !DILocation(line: 238, column: 3, scope: !817)
!833 = !DILocation(line: 240, column: 3, scope: !817)
!834 = !DILocation(line: 241, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !817, file: !71, line: 241, column: 7)
!836 = !DILocation(line: 241, column: 7, scope: !817)
!837 = !DILocation(line: 242, column: 11, scope: !835)
!838 = !DILocation(line: 242, column: 5, scope: !835)
!839 = !DILocation(line: 243, column: 1, scope: !817)
!840 = distinct !DISubprogram(name: "print_errno_message", scope: !71, file: !71, line: 188, type: !305, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !70, retainedNodes: !34)
!841 = !DILocalVariable(name: "errnum", arg: 1, scope: !840, file: !71, line: 188, type: !25)
!842 = !DILocation(line: 188, column: 26, scope: !840)
!843 = !DILocalVariable(name: "s", scope: !840, file: !71, line: 190, type: !42)
!844 = !DILocation(line: 190, column: 15, scope: !840)
!845 = !DILocalVariable(name: "errbuf", scope: !840, file: !71, line: 193, type: !846)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 1024)
!849 = !DILocation(line: 193, column: 8, scope: !840)
!850 = !DILocation(line: 195, column: 21, scope: !840)
!851 = !DILocation(line: 195, column: 29, scope: !840)
!852 = !DILocation(line: 195, column: 7, scope: !840)
!853 = !DILocation(line: 195, column: 5, scope: !840)
!854 = !DILocation(line: 207, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !840, file: !71, line: 207, column: 7)
!856 = !DILocation(line: 207, column: 7, scope: !840)
!857 = !DILocation(line: 208, column: 9, scope: !855)
!858 = !DILocation(line: 208, column: 7, scope: !855)
!859 = !DILocation(line: 208, column: 5, scope: !855)
!860 = !DILocation(line: 214, column: 12, scope: !840)
!861 = !DILocation(line: 214, column: 28, scope: !840)
!862 = !DILocation(line: 214, column: 3, scope: !840)
!863 = !DILocation(line: 216, column: 1, scope: !840)
!864 = distinct !DISubprogram(name: "is_open", scope: !71, file: !71, line: 145, type: !865, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !70, retainedNodes: !34)
!865 = !DISubroutineType(types: !866)
!866 = !{!25, !25}
!867 = !DILocalVariable(name: "fd", arg: 1, scope: !864, file: !71, line: 145, type: !25)
!868 = !DILocation(line: 145, column: 14, scope: !864)
!869 = !DILocation(line: 157, column: 22, scope: !864)
!870 = !DILocation(line: 157, column: 15, scope: !864)
!871 = !DILocation(line: 157, column: 12, scope: !864)
!872 = !DILocation(line: 157, column: 3, scope: !864)
!873 = distinct !DISubprogram(name: "error", scope: !71, file: !71, line: 285, type: !874, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !34)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !25, !25, !42, null}
!876 = !DILocalVariable(name: "status", arg: 1, scope: !873, file: !71, line: 285, type: !25)
!877 = !DILocation(line: 285, column: 12, scope: !873)
!878 = !DILocalVariable(name: "errnum", arg: 2, scope: !873, file: !71, line: 285, type: !25)
!879 = !DILocation(line: 285, column: 24, scope: !873)
!880 = !DILocalVariable(name: "message", arg: 3, scope: !873, file: !71, line: 285, type: !42)
!881 = !DILocation(line: 285, column: 44, scope: !873)
!882 = !DILocalVariable(name: "ap", scope: !873, file: !71, line: 287, type: !79)
!883 = !DILocation(line: 287, column: 11, scope: !873)
!884 = !DILocation(line: 288, column: 3, scope: !873)
!885 = !DILocation(line: 289, column: 3, scope: !873)
!886 = !DILocation(line: 290, column: 3, scope: !873)
!887 = !DILocation(line: 291, column: 1, scope: !873)
!888 = !DILocalVariable(name: "status", arg: 1, scope: !76, file: !71, line: 298, type: !25)
!889 = !DILocation(line: 298, column: 1, scope: !76)
!890 = !DILocalVariable(name: "errnum", arg: 2, scope: !76, file: !71, line: 298, type: !25)
!891 = !DILocalVariable(name: "file_name", arg: 3, scope: !76, file: !71, line: 298, type: !42)
!892 = !DILocalVariable(name: "line_number", arg: 4, scope: !76, file: !71, line: 298, type: !7)
!893 = !DILocalVariable(name: "message", arg: 5, scope: !76, file: !71, line: 298, type: !42)
!894 = !DILocalVariable(name: "args", arg: 6, scope: !76, file: !71, line: 298, type: !79)
!895 = !DILocation(line: 302, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !76, file: !71, line: 302, column: 7)
!897 = !DILocation(line: 302, column: 7, scope: !76)
!898 = !DILocation(line: 307, column: 11, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !71, line: 307, column: 11)
!900 = distinct !DILexicalBlock(scope: !896, file: !71, line: 303, column: 5)
!901 = !DILocation(line: 307, column: 30, scope: !899)
!902 = !DILocation(line: 307, column: 27, scope: !899)
!903 = !DILocation(line: 308, column: 11, scope: !899)
!904 = !DILocation(line: 308, column: 15, scope: !899)
!905 = !DILocation(line: 308, column: 28, scope: !899)
!906 = !DILocation(line: 308, column: 25, scope: !899)
!907 = !DILocation(line: 309, column: 15, scope: !899)
!908 = !DILocation(line: 309, column: 19, scope: !899)
!909 = !DILocation(line: 309, column: 33, scope: !899)
!910 = !DILocation(line: 310, column: 19, scope: !899)
!911 = !DILocation(line: 310, column: 22, scope: !899)
!912 = !DILocation(line: 310, column: 32, scope: !899)
!913 = !DILocation(line: 311, column: 19, scope: !899)
!914 = !DILocation(line: 311, column: 30, scope: !899)
!915 = !DILocation(line: 311, column: 45, scope: !899)
!916 = !DILocation(line: 311, column: 22, scope: !899)
!917 = !DILocation(line: 311, column: 56, scope: !899)
!918 = !DILocation(line: 307, column: 11, scope: !900)
!919 = !DILocation(line: 314, column: 9, scope: !899)
!920 = !DILocation(line: 316, column: 23, scope: !900)
!921 = !DILocation(line: 316, column: 21, scope: !900)
!922 = !DILocation(line: 317, column: 25, scope: !900)
!923 = !DILocation(line: 317, column: 23, scope: !900)
!924 = !DILocation(line: 318, column: 5, scope: !900)
!925 = !DILocation(line: 327, column: 3, scope: !76)
!926 = !DILocation(line: 331, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !76, file: !71, line: 331, column: 7)
!928 = !DILocation(line: 331, column: 7, scope: !76)
!929 = !DILocation(line: 332, column: 7, scope: !927)
!930 = !DILocation(line: 332, column: 5, scope: !927)
!931 = !DILocation(line: 338, column: 16, scope: !932)
!932 = distinct !DILexicalBlock(scope: !927, file: !71, line: 334, column: 5)
!933 = !DILocation(line: 338, column: 31, scope: !932)
!934 = !DILocation(line: 338, column: 7, scope: !932)
!935 = !DILocation(line: 346, column: 12, scope: !76)
!936 = !DILocation(line: 346, column: 20, scope: !76)
!937 = !DILocation(line: 346, column: 30, scope: !76)
!938 = !DILocation(line: 347, column: 12, scope: !76)
!939 = !DILocation(line: 347, column: 23, scope: !76)
!940 = !DILocation(line: 346, column: 3, scope: !76)
!941 = !DILocation(line: 350, column: 3, scope: !76)
!942 = !DILocation(line: 356, column: 1, scope: !76)
!943 = distinct !DISubprogram(name: "error_at_line", scope: !71, file: !71, line: 359, type: !944, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !34)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !25, !25, !42, !7, !42, null}
!946 = !DILocalVariable(name: "status", arg: 1, scope: !943, file: !71, line: 359, type: !25)
!947 = !DILocation(line: 359, column: 20, scope: !943)
!948 = !DILocalVariable(name: "errnum", arg: 2, scope: !943, file: !71, line: 359, type: !25)
!949 = !DILocation(line: 359, column: 32, scope: !943)
!950 = !DILocalVariable(name: "file_name", arg: 3, scope: !943, file: !71, line: 359, type: !42)
!951 = !DILocation(line: 359, column: 52, scope: !943)
!952 = !DILocalVariable(name: "line_number", arg: 4, scope: !943, file: !71, line: 360, type: !7)
!953 = !DILocation(line: 360, column: 29, scope: !943)
!954 = !DILocalVariable(name: "message", arg: 5, scope: !943, file: !71, line: 360, type: !42)
!955 = !DILocation(line: 360, column: 54, scope: !943)
!956 = !DILocalVariable(name: "ap", scope: !943, file: !71, line: 362, type: !79)
!957 = !DILocation(line: 362, column: 11, scope: !943)
!958 = !DILocation(line: 363, column: 3, scope: !943)
!959 = !DILocation(line: 364, column: 3, scope: !943)
!960 = !DILocation(line: 366, column: 3, scope: !943)
!961 = !DILocation(line: 367, column: 1, scope: !943)
!962 = distinct !DISubprogram(name: "getprogname", scope: !232, file: !232, line: 54, type: !963, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !231, retainedNodes: !34)
!963 = !DISubroutineType(types: !964)
!964 = !{!42}
!965 = !DILocation(line: 58, column: 10, scope: !962)
!966 = !DILocation(line: 58, column: 3, scope: !962)
!967 = distinct !DISubprogram(name: "set_program_name", scope: !105, file: !105, line: 37, type: !520, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !34)
!968 = !DILocalVariable(name: "argv0", arg: 1, scope: !967, file: !105, line: 37, type: !42)
!969 = !DILocation(line: 37, column: 31, scope: !967)
!970 = !DILocalVariable(name: "slash", scope: !967, file: !105, line: 44, type: !42)
!971 = !DILocation(line: 44, column: 15, scope: !967)
!972 = !DILocation(line: 44, column: 32, scope: !967)
!973 = !DILocation(line: 44, column: 23, scope: !967)
!974 = !DILocalVariable(name: "base", scope: !967, file: !105, line: 45, type: !42)
!975 = !DILocation(line: 45, column: 15, scope: !967)
!976 = !DILocation(line: 45, column: 22, scope: !967)
!977 = !DILocation(line: 45, column: 30, scope: !967)
!978 = !DILocation(line: 45, column: 36, scope: !967)
!979 = !DILocation(line: 45, column: 42, scope: !967)
!980 = !DILocation(line: 46, column: 12, scope: !981)
!981 = distinct !DILexicalBlock(scope: !967, file: !105, line: 46, column: 7)
!982 = !DILocation(line: 46, column: 19, scope: !981)
!983 = !DILocation(line: 46, column: 17, scope: !981)
!984 = !DILocation(line: 46, column: 9, scope: !981)
!985 = !DILocation(line: 46, column: 25, scope: !981)
!986 = !DILocation(line: 46, column: 35, scope: !981)
!987 = !DILocation(line: 46, column: 40, scope: !981)
!988 = !DILocation(line: 46, column: 28, scope: !981)
!989 = !DILocation(line: 46, column: 7, scope: !967)
!990 = !DILocation(line: 48, column: 15, scope: !991)
!991 = distinct !DILexicalBlock(scope: !981, file: !105, line: 47, column: 5)
!992 = !DILocation(line: 48, column: 13, scope: !991)
!993 = !DILocation(line: 49, column: 20, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !105, line: 49, column: 11)
!995 = !DILocation(line: 49, column: 11, scope: !994)
!996 = !DILocation(line: 49, column: 36, scope: !994)
!997 = !DILocation(line: 49, column: 11, scope: !991)
!998 = !DILocation(line: 51, column: 16, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !105, line: 50, column: 9)
!1000 = !DILocation(line: 52, column: 19, scope: !999)
!1001 = !DILocation(line: 52, column: 17, scope: !999)
!1002 = !DILocation(line: 53, column: 9, scope: !999)
!1003 = !DILocation(line: 54, column: 5, scope: !991)
!1004 = !DILocation(line: 65, column: 18, scope: !967)
!1005 = !DILocation(line: 65, column: 16, scope: !967)
!1006 = !DILocation(line: 71, column: 38, scope: !967)
!1007 = !DILocation(line: 71, column: 27, scope: !967)
!1008 = !DILocation(line: 74, column: 44, scope: !967)
!1009 = !DILocation(line: 74, column: 33, scope: !967)
!1010 = !DILocation(line: 76, column: 1, scope: !967)
!1011 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !110, file: !111, line: 38, type: !42)
!1012 = !DILocation(line: 38, column: 31, scope: !110)
!1013 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !110, file: !111, line: 38, type: !42)
!1014 = !DILocation(line: 38, column: 66, scope: !110)
!1015 = !DILocalVariable(name: "translation", scope: !110, file: !111, line: 40, type: !42)
!1016 = !DILocation(line: 40, column: 15, scope: !110)
!1017 = !DILocation(line: 40, column: 38, scope: !110)
!1018 = !DILocation(line: 40, column: 29, scope: !110)
!1019 = !DILocation(line: 41, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !110, file: !111, line: 41, column: 7)
!1021 = !DILocation(line: 41, column: 22, scope: !1020)
!1022 = !DILocation(line: 41, column: 19, scope: !1020)
!1023 = !DILocation(line: 41, column: 7, scope: !110)
!1024 = !DILocation(line: 42, column: 12, scope: !1020)
!1025 = !DILocation(line: 42, column: 5, scope: !1020)
!1026 = !DILocalVariable(name: "w", scope: !110, file: !111, line: 47, type: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1028, line: 37, baseType: !1029)
!1028 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1030, line: 57, baseType: !1031)
!1030 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1030, line: 42, baseType: !7)
!1032 = !DILocation(line: 47, column: 12, scope: !110)
!1033 = !DILocalVariable(name: "mbs", scope: !110, file: !111, line: 48, type: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !217, line: 6, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !219, line: 21, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 13, size: 64, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1036, file: !219, line: 15, baseType: !25, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1036, file: !219, line: 20, baseType: !1040, size: 32, offset: 32)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !219, line: 16, size: 32, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1040, file: !219, line: 18, baseType: !7, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1040, file: !219, line: 19, baseType: !228, size: 32)
!1044 = !DILocation(line: 48, column: 13, scope: !110)
!1045 = !DILocation(line: 48, column: 18, scope: !110)
!1046 = !DILocation(line: 49, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !110, file: !111, line: 49, column: 7)
!1048 = !DILocation(line: 49, column: 39, scope: !1047)
!1049 = !DILocation(line: 49, column: 44, scope: !1047)
!1050 = !DILocation(line: 49, column: 47, scope: !1047)
!1051 = !DILocation(line: 49, column: 49, scope: !1047)
!1052 = !DILocation(line: 49, column: 7, scope: !110)
!1053 = !DILocation(line: 50, column: 12, scope: !1047)
!1054 = !DILocation(line: 50, column: 5, scope: !1047)
!1055 = !DILocation(line: 53, column: 10, scope: !110)
!1056 = !DILocation(line: 53, column: 3, scope: !110)
!1057 = !DILocation(line: 54, column: 1, scope: !110)
!1058 = distinct !DISubprogram(name: "clone_quoting_options", scope: !122, file: !122, line: 113, type: !1059, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1061, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!1062 = !DILocalVariable(name: "o", arg: 1, scope: !1058, file: !122, line: 113, type: !1061)
!1063 = !DILocation(line: 113, column: 48, scope: !1058)
!1064 = !DILocalVariable(name: "saved_errno", scope: !1058, file: !122, line: 115, type: !25)
!1065 = !DILocation(line: 115, column: 7, scope: !1058)
!1066 = !DILocation(line: 115, column: 21, scope: !1058)
!1067 = !DILocalVariable(name: "p", scope: !1058, file: !122, line: 116, type: !1061)
!1068 = !DILocation(line: 116, column: 27, scope: !1058)
!1069 = !DILocation(line: 116, column: 40, scope: !1058)
!1070 = !DILocation(line: 116, column: 44, scope: !1058)
!1071 = !DILocation(line: 116, column: 31, scope: !1058)
!1072 = !DILocation(line: 118, column: 11, scope: !1058)
!1073 = !DILocation(line: 118, column: 3, scope: !1058)
!1074 = !DILocation(line: 118, column: 9, scope: !1058)
!1075 = !DILocation(line: 119, column: 10, scope: !1058)
!1076 = !DILocation(line: 119, column: 3, scope: !1058)
!1077 = distinct !DISubprogram(name: "get_quoting_style", scope: !122, file: !122, line: 124, type: !1078, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!124, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!1082 = !DILocalVariable(name: "o", arg: 1, scope: !1077, file: !122, line: 124, type: !1080)
!1083 = !DILocation(line: 124, column: 50, scope: !1077)
!1084 = !DILocation(line: 126, column: 11, scope: !1077)
!1085 = !DILocation(line: 126, column: 15, scope: !1077)
!1086 = !DILocation(line: 126, column: 46, scope: !1077)
!1087 = !DILocation(line: 126, column: 3, scope: !1077)
!1088 = distinct !DISubprogram(name: "set_quoting_style", scope: !122, file: !122, line: 132, type: !1089, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !1061, !124}
!1091 = !DILocalVariable(name: "o", arg: 1, scope: !1088, file: !122, line: 132, type: !1061)
!1092 = !DILocation(line: 132, column: 44, scope: !1088)
!1093 = !DILocalVariable(name: "s", arg: 2, scope: !1088, file: !122, line: 132, type: !124)
!1094 = !DILocation(line: 132, column: 66, scope: !1088)
!1095 = !DILocation(line: 134, column: 47, scope: !1088)
!1096 = !DILocation(line: 134, column: 4, scope: !1088)
!1097 = !DILocation(line: 134, column: 8, scope: !1088)
!1098 = !DILocation(line: 134, column: 39, scope: !1088)
!1099 = !DILocation(line: 134, column: 45, scope: !1088)
!1100 = !DILocation(line: 135, column: 1, scope: !1088)
!1101 = distinct !DISubprogram(name: "set_char_quoting", scope: !122, file: !122, line: 143, type: !1102, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!25, !1061, !23, !25}
!1104 = !DILocalVariable(name: "o", arg: 1, scope: !1101, file: !122, line: 143, type: !1061)
!1105 = !DILocation(line: 143, column: 43, scope: !1101)
!1106 = !DILocalVariable(name: "c", arg: 2, scope: !1101, file: !122, line: 143, type: !23)
!1107 = !DILocation(line: 143, column: 51, scope: !1101)
!1108 = !DILocalVariable(name: "i", arg: 3, scope: !1101, file: !122, line: 143, type: !25)
!1109 = !DILocation(line: 143, column: 58, scope: !1101)
!1110 = !DILocalVariable(name: "uc", scope: !1101, file: !122, line: 145, type: !214)
!1111 = !DILocation(line: 145, column: 17, scope: !1101)
!1112 = !DILocation(line: 145, column: 22, scope: !1101)
!1113 = !DILocalVariable(name: "p", scope: !1101, file: !122, line: 146, type: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1115 = !DILocation(line: 146, column: 17, scope: !1101)
!1116 = !DILocation(line: 147, column: 6, scope: !1101)
!1117 = !DILocation(line: 147, column: 10, scope: !1101)
!1118 = !DILocation(line: 147, column: 41, scope: !1101)
!1119 = !DILocation(line: 147, column: 5, scope: !1101)
!1120 = !DILocation(line: 147, column: 59, scope: !1101)
!1121 = !DILocation(line: 147, column: 62, scope: !1101)
!1122 = !DILocation(line: 147, column: 57, scope: !1101)
!1123 = !DILocalVariable(name: "shift", scope: !1101, file: !122, line: 148, type: !25)
!1124 = !DILocation(line: 148, column: 7, scope: !1101)
!1125 = !DILocation(line: 148, column: 15, scope: !1101)
!1126 = !DILocation(line: 148, column: 18, scope: !1101)
!1127 = !DILocalVariable(name: "r", scope: !1101, file: !122, line: 149, type: !7)
!1128 = !DILocation(line: 149, column: 16, scope: !1101)
!1129 = !DILocation(line: 149, column: 22, scope: !1101)
!1130 = !DILocation(line: 149, column: 21, scope: !1101)
!1131 = !DILocation(line: 149, column: 27, scope: !1101)
!1132 = !DILocation(line: 149, column: 24, scope: !1101)
!1133 = !DILocation(line: 149, column: 34, scope: !1101)
!1134 = !DILocation(line: 150, column: 11, scope: !1101)
!1135 = !DILocation(line: 150, column: 13, scope: !1101)
!1136 = !DILocation(line: 150, column: 21, scope: !1101)
!1137 = !DILocation(line: 150, column: 19, scope: !1101)
!1138 = !DILocation(line: 150, column: 27, scope: !1101)
!1139 = !DILocation(line: 150, column: 24, scope: !1101)
!1140 = !DILocation(line: 150, column: 4, scope: !1101)
!1141 = !DILocation(line: 150, column: 6, scope: !1101)
!1142 = !DILocation(line: 151, column: 10, scope: !1101)
!1143 = !DILocation(line: 151, column: 3, scope: !1101)
!1144 = distinct !DISubprogram(name: "set_quoting_flags", scope: !122, file: !122, line: 159, type: !1145, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!25, !1061, !25}
!1147 = !DILocalVariable(name: "o", arg: 1, scope: !1144, file: !122, line: 159, type: !1061)
!1148 = !DILocation(line: 159, column: 44, scope: !1144)
!1149 = !DILocalVariable(name: "i", arg: 2, scope: !1144, file: !122, line: 159, type: !25)
!1150 = !DILocation(line: 159, column: 51, scope: !1144)
!1151 = !DILocation(line: 161, column: 8, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1144, file: !122, line: 161, column: 7)
!1153 = !DILocation(line: 161, column: 7, scope: !1144)
!1154 = !DILocation(line: 162, column: 7, scope: !1152)
!1155 = !DILocation(line: 162, column: 5, scope: !1152)
!1156 = !DILocalVariable(name: "r", scope: !1144, file: !122, line: 163, type: !25)
!1157 = !DILocation(line: 163, column: 7, scope: !1144)
!1158 = !DILocation(line: 163, column: 11, scope: !1144)
!1159 = !DILocation(line: 163, column: 14, scope: !1144)
!1160 = !DILocation(line: 164, column: 14, scope: !1144)
!1161 = !DILocation(line: 164, column: 3, scope: !1144)
!1162 = !DILocation(line: 164, column: 6, scope: !1144)
!1163 = !DILocation(line: 164, column: 12, scope: !1144)
!1164 = !DILocation(line: 165, column: 10, scope: !1144)
!1165 = !DILocation(line: 165, column: 3, scope: !1144)
!1166 = distinct !DISubprogram(name: "set_custom_quoting", scope: !122, file: !122, line: 169, type: !1167, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !1061, !42, !42}
!1169 = !DILocalVariable(name: "o", arg: 1, scope: !1166, file: !122, line: 169, type: !1061)
!1170 = !DILocation(line: 169, column: 45, scope: !1166)
!1171 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1166, file: !122, line: 170, type: !42)
!1172 = !DILocation(line: 170, column: 33, scope: !1166)
!1173 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1166, file: !122, line: 170, type: !42)
!1174 = !DILocation(line: 170, column: 57, scope: !1166)
!1175 = !DILocation(line: 172, column: 8, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1166, file: !122, line: 172, column: 7)
!1177 = !DILocation(line: 172, column: 7, scope: !1166)
!1178 = !DILocation(line: 173, column: 7, scope: !1176)
!1179 = !DILocation(line: 173, column: 5, scope: !1176)
!1180 = !DILocation(line: 174, column: 3, scope: !1166)
!1181 = !DILocation(line: 174, column: 6, scope: !1166)
!1182 = !DILocation(line: 174, column: 12, scope: !1166)
!1183 = !DILocation(line: 175, column: 8, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1166, file: !122, line: 175, column: 7)
!1185 = !DILocation(line: 175, column: 19, scope: !1184)
!1186 = !DILocation(line: 175, column: 23, scope: !1184)
!1187 = !DILocation(line: 175, column: 7, scope: !1166)
!1188 = !DILocation(line: 176, column: 5, scope: !1184)
!1189 = !DILocation(line: 177, column: 19, scope: !1166)
!1190 = !DILocation(line: 177, column: 3, scope: !1166)
!1191 = !DILocation(line: 177, column: 6, scope: !1166)
!1192 = !DILocation(line: 177, column: 17, scope: !1166)
!1193 = !DILocation(line: 178, column: 20, scope: !1166)
!1194 = !DILocation(line: 178, column: 3, scope: !1166)
!1195 = !DILocation(line: 178, column: 6, scope: !1166)
!1196 = !DILocation(line: 178, column: 18, scope: !1166)
!1197 = !DILocation(line: 179, column: 1, scope: !1166)
!1198 = distinct !DISubprogram(name: "quotearg_buffer", scope: !122, file: !122, line: 774, type: !1199, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!144, !22, !144, !42, !144, !1080}
!1201 = !DILocalVariable(name: "buffer", arg: 1, scope: !1198, file: !122, line: 774, type: !22)
!1202 = !DILocation(line: 774, column: 24, scope: !1198)
!1203 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1198, file: !122, line: 774, type: !144)
!1204 = !DILocation(line: 774, column: 39, scope: !1198)
!1205 = !DILocalVariable(name: "arg", arg: 3, scope: !1198, file: !122, line: 775, type: !42)
!1206 = !DILocation(line: 775, column: 30, scope: !1198)
!1207 = !DILocalVariable(name: "argsize", arg: 4, scope: !1198, file: !122, line: 775, type: !144)
!1208 = !DILocation(line: 775, column: 42, scope: !1198)
!1209 = !DILocalVariable(name: "o", arg: 5, scope: !1198, file: !122, line: 776, type: !1080)
!1210 = !DILocation(line: 776, column: 48, scope: !1198)
!1211 = !DILocalVariable(name: "p", scope: !1198, file: !122, line: 778, type: !1080)
!1212 = !DILocation(line: 778, column: 33, scope: !1198)
!1213 = !DILocation(line: 778, column: 37, scope: !1198)
!1214 = !DILocation(line: 778, column: 41, scope: !1198)
!1215 = !DILocalVariable(name: "saved_errno", scope: !1198, file: !122, line: 779, type: !25)
!1216 = !DILocation(line: 779, column: 7, scope: !1198)
!1217 = !DILocation(line: 779, column: 21, scope: !1198)
!1218 = !DILocalVariable(name: "r", scope: !1198, file: !122, line: 780, type: !144)
!1219 = !DILocation(line: 780, column: 10, scope: !1198)
!1220 = !DILocation(line: 780, column: 40, scope: !1198)
!1221 = !DILocation(line: 780, column: 48, scope: !1198)
!1222 = !DILocation(line: 780, column: 60, scope: !1198)
!1223 = !DILocation(line: 780, column: 65, scope: !1198)
!1224 = !DILocation(line: 781, column: 40, scope: !1198)
!1225 = !DILocation(line: 781, column: 43, scope: !1198)
!1226 = !DILocation(line: 781, column: 50, scope: !1198)
!1227 = !DILocation(line: 781, column: 53, scope: !1198)
!1228 = !DILocation(line: 781, column: 60, scope: !1198)
!1229 = !DILocation(line: 781, column: 63, scope: !1198)
!1230 = !DILocation(line: 782, column: 40, scope: !1198)
!1231 = !DILocation(line: 782, column: 43, scope: !1198)
!1232 = !DILocation(line: 782, column: 55, scope: !1198)
!1233 = !DILocation(line: 782, column: 58, scope: !1198)
!1234 = !DILocation(line: 780, column: 14, scope: !1198)
!1235 = !DILocation(line: 783, column: 11, scope: !1198)
!1236 = !DILocation(line: 783, column: 3, scope: !1198)
!1237 = !DILocation(line: 783, column: 9, scope: !1198)
!1238 = !DILocation(line: 784, column: 10, scope: !1198)
!1239 = !DILocation(line: 784, column: 3, scope: !1198)
!1240 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !122, file: !122, line: 251, type: !1241, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !121, retainedNodes: !34)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!144, !22, !144, !42, !144, !124, !25, !1243, !42, !42}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1245 = !DILocalVariable(name: "buffer", arg: 1, scope: !1240, file: !122, line: 251, type: !22)
!1246 = !DILocation(line: 251, column: 33, scope: !1240)
!1247 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1240, file: !122, line: 251, type: !144)
!1248 = !DILocation(line: 251, column: 48, scope: !1240)
!1249 = !DILocalVariable(name: "arg", arg: 3, scope: !1240, file: !122, line: 252, type: !42)
!1250 = !DILocation(line: 252, column: 39, scope: !1240)
!1251 = !DILocalVariable(name: "argsize", arg: 4, scope: !1240, file: !122, line: 252, type: !144)
!1252 = !DILocation(line: 252, column: 51, scope: !1240)
!1253 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1240, file: !122, line: 253, type: !124)
!1254 = !DILocation(line: 253, column: 46, scope: !1240)
!1255 = !DILocalVariable(name: "flags", arg: 6, scope: !1240, file: !122, line: 253, type: !25)
!1256 = !DILocation(line: 253, column: 65, scope: !1240)
!1257 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1240, file: !122, line: 254, type: !1243)
!1258 = !DILocation(line: 254, column: 47, scope: !1240)
!1259 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1240, file: !122, line: 255, type: !42)
!1260 = !DILocation(line: 255, column: 39, scope: !1240)
!1261 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1240, file: !122, line: 256, type: !42)
!1262 = !DILocation(line: 256, column: 39, scope: !1240)
!1263 = !DILocalVariable(name: "unibyte_locale", scope: !1240, file: !122, line: 258, type: !67)
!1264 = !DILocation(line: 258, column: 8, scope: !1240)
!1265 = !DILocation(line: 258, column: 25, scope: !1240)
!1266 = !DILocation(line: 258, column: 36, scope: !1240)
!1267 = !DILocalVariable(name: "len", scope: !1240, file: !122, line: 260, type: !144)
!1268 = !DILocation(line: 260, column: 10, scope: !1240)
!1269 = !DILocalVariable(name: "orig_buffersize", scope: !1240, file: !122, line: 261, type: !144)
!1270 = !DILocation(line: 261, column: 10, scope: !1240)
!1271 = !DILocalVariable(name: "quote_string", scope: !1240, file: !122, line: 262, type: !42)
!1272 = !DILocation(line: 262, column: 15, scope: !1240)
!1273 = !DILocalVariable(name: "quote_string_len", scope: !1240, file: !122, line: 263, type: !144)
!1274 = !DILocation(line: 263, column: 10, scope: !1240)
!1275 = !DILocalVariable(name: "backslash_escapes", scope: !1240, file: !122, line: 264, type: !67)
!1276 = !DILocation(line: 264, column: 8, scope: !1240)
!1277 = !DILocalVariable(name: "elide_outer_quotes", scope: !1240, file: !122, line: 265, type: !67)
!1278 = !DILocation(line: 265, column: 8, scope: !1240)
!1279 = !DILocation(line: 265, column: 30, scope: !1240)
!1280 = !DILocation(line: 265, column: 36, scope: !1240)
!1281 = !DILocation(line: 265, column: 61, scope: !1240)
!1282 = !DILocalVariable(name: "encountered_single_quote", scope: !1240, file: !122, line: 266, type: !67)
!1283 = !DILocation(line: 266, column: 8, scope: !1240)
!1284 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1240, file: !122, line: 267, type: !67)
!1285 = !DILocation(line: 267, column: 8, scope: !1240)
!1286 = !DILocation(line: 267, column: 3, scope: !1240)
!1287 = !DILabel(scope: !1240, name: "process_input", file: !122, line: 308)
!1288 = !DILocation(line: 308, column: 2, scope: !1240)
!1289 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1240, file: !122, line: 309, type: !67)
!1290 = !DILocation(line: 309, column: 8, scope: !1240)
!1291 = !DILocation(line: 311, column: 11, scope: !1240)
!1292 = !DILocation(line: 311, column: 3, scope: !1240)
!1293 = !DILocation(line: 314, column: 21, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1240, file: !122, line: 312, column: 5)
!1295 = !DILocation(line: 315, column: 26, scope: !1294)
!1296 = !DILocation(line: 315, column: 7, scope: !1294)
!1297 = !DILocation(line: 318, column: 12, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !122, line: 318, column: 11)
!1299 = !DILocation(line: 318, column: 11, scope: !1294)
!1300 = !DILocation(line: 319, column: 9, scope: !1298)
!1301 = !DILocation(line: 319, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !122, line: 319, column: 9)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !122, line: 319, column: 9)
!1304 = !DILocation(line: 319, column: 9, scope: !1303)
!1305 = !DILocation(line: 320, column: 25, scope: !1294)
!1306 = !DILocation(line: 321, column: 20, scope: !1294)
!1307 = !DILocation(line: 322, column: 24, scope: !1294)
!1308 = !DILocation(line: 323, column: 7, scope: !1294)
!1309 = !DILocation(line: 326, column: 25, scope: !1294)
!1310 = !DILocation(line: 327, column: 26, scope: !1294)
!1311 = !DILocation(line: 328, column: 7, scope: !1294)
!1312 = !DILocation(line: 334, column: 13, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !122, line: 334, column: 13)
!1314 = distinct !DILexicalBlock(scope: !1294, file: !122, line: 333, column: 7)
!1315 = !DILocation(line: 334, column: 27, scope: !1313)
!1316 = !DILocation(line: 334, column: 13, scope: !1314)
!1317 = !DILocation(line: 357, column: 50, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !122, line: 335, column: 11)
!1319 = !DILocation(line: 357, column: 26, scope: !1318)
!1320 = !DILocation(line: 357, column: 24, scope: !1318)
!1321 = !DILocation(line: 358, column: 51, scope: !1318)
!1322 = !DILocation(line: 358, column: 27, scope: !1318)
!1323 = !DILocation(line: 358, column: 25, scope: !1318)
!1324 = !DILocation(line: 359, column: 11, scope: !1318)
!1325 = !DILocation(line: 360, column: 14, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1314, file: !122, line: 360, column: 13)
!1327 = !DILocation(line: 360, column: 13, scope: !1314)
!1328 = !DILocalVariable(name: "lq", scope: !1329, file: !122, line: 361, type: !42)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !122, line: 361, column: 11)
!1330 = !DILocation(line: 361, column: 28, scope: !1329)
!1331 = !DILocation(line: 361, column: 33, scope: !1329)
!1332 = !DILocation(line: 361, column: 16, scope: !1329)
!1333 = !DILocation(line: 361, column: 46, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1329, file: !122, line: 361, column: 11)
!1335 = !DILocation(line: 361, column: 45, scope: !1334)
!1336 = !DILocation(line: 361, column: 11, scope: !1329)
!1337 = !DILocation(line: 362, column: 13, scope: !1334)
!1338 = !DILocation(line: 362, column: 13, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !122, line: 362, column: 13)
!1340 = distinct !DILexicalBlock(scope: !1334, file: !122, line: 362, column: 13)
!1341 = !DILocation(line: 362, column: 13, scope: !1340)
!1342 = !DILocation(line: 361, column: 52, scope: !1334)
!1343 = !DILocation(line: 361, column: 11, scope: !1334)
!1344 = distinct !{!1344, !1336, !1345, !403}
!1345 = !DILocation(line: 362, column: 13, scope: !1329)
!1346 = !DILocation(line: 363, column: 27, scope: !1314)
!1347 = !DILocation(line: 364, column: 24, scope: !1314)
!1348 = !DILocation(line: 364, column: 22, scope: !1314)
!1349 = !DILocation(line: 365, column: 36, scope: !1314)
!1350 = !DILocation(line: 365, column: 28, scope: !1314)
!1351 = !DILocation(line: 365, column: 26, scope: !1314)
!1352 = !DILocation(line: 367, column: 7, scope: !1294)
!1353 = !DILocation(line: 370, column: 25, scope: !1294)
!1354 = !DILocation(line: 370, column: 7, scope: !1294)
!1355 = !DILocation(line: 373, column: 26, scope: !1294)
!1356 = !DILocation(line: 373, column: 7, scope: !1294)
!1357 = !DILocation(line: 376, column: 12, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1294, file: !122, line: 376, column: 11)
!1359 = !DILocation(line: 376, column: 11, scope: !1294)
!1360 = !DILocation(line: 377, column: 27, scope: !1358)
!1361 = !DILocation(line: 377, column: 9, scope: !1358)
!1362 = !DILocation(line: 380, column: 21, scope: !1294)
!1363 = !DILocation(line: 381, column: 12, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1294, file: !122, line: 381, column: 11)
!1365 = !DILocation(line: 381, column: 11, scope: !1294)
!1366 = !DILocation(line: 382, column: 9, scope: !1364)
!1367 = !DILocation(line: 382, column: 9, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !122, line: 382, column: 9)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !122, line: 382, column: 9)
!1370 = !DILocation(line: 382, column: 9, scope: !1369)
!1371 = !DILocation(line: 383, column: 20, scope: !1294)
!1372 = !DILocation(line: 384, column: 24, scope: !1294)
!1373 = !DILocation(line: 385, column: 7, scope: !1294)
!1374 = !DILocation(line: 388, column: 26, scope: !1294)
!1375 = !DILocation(line: 389, column: 7, scope: !1294)
!1376 = !DILocation(line: 392, column: 7, scope: !1294)
!1377 = !DILocalVariable(name: "i", scope: !1378, file: !122, line: 395, type: !144)
!1378 = distinct !DILexicalBlock(scope: !1240, file: !122, line: 395, column: 3)
!1379 = !DILocation(line: 395, column: 15, scope: !1378)
!1380 = !DILocation(line: 395, column: 8, scope: !1378)
!1381 = !DILocation(line: 395, column: 26, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1378, file: !122, line: 395, column: 3)
!1383 = !DILocation(line: 395, column: 34, scope: !1382)
!1384 = !DILocation(line: 395, column: 48, scope: !1382)
!1385 = !DILocation(line: 395, column: 52, scope: !1382)
!1386 = !DILocation(line: 395, column: 55, scope: !1382)
!1387 = !DILocation(line: 395, column: 65, scope: !1382)
!1388 = !DILocation(line: 395, column: 70, scope: !1382)
!1389 = !DILocation(line: 395, column: 67, scope: !1382)
!1390 = !DILocation(line: 395, column: 23, scope: !1382)
!1391 = !DILocation(line: 395, column: 3, scope: !1378)
!1392 = !DILocalVariable(name: "is_right_quote", scope: !1393, file: !122, line: 397, type: !67)
!1393 = distinct !DILexicalBlock(scope: !1382, file: !122, line: 396, column: 5)
!1394 = !DILocation(line: 397, column: 12, scope: !1393)
!1395 = !DILocalVariable(name: "escaping", scope: !1393, file: !122, line: 398, type: !67)
!1396 = !DILocation(line: 398, column: 12, scope: !1393)
!1397 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1393, file: !122, line: 399, type: !67)
!1398 = !DILocation(line: 399, column: 12, scope: !1393)
!1399 = !DILocation(line: 401, column: 11, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1393, file: !122, line: 401, column: 11)
!1401 = !DILocation(line: 402, column: 11, scope: !1400)
!1402 = !DILocation(line: 402, column: 14, scope: !1400)
!1403 = !DILocation(line: 402, column: 28, scope: !1400)
!1404 = !DILocation(line: 403, column: 11, scope: !1400)
!1405 = !DILocation(line: 403, column: 14, scope: !1400)
!1406 = !DILocation(line: 404, column: 11, scope: !1400)
!1407 = !DILocation(line: 404, column: 15, scope: !1400)
!1408 = !DILocation(line: 404, column: 19, scope: !1400)
!1409 = !DILocation(line: 404, column: 17, scope: !1400)
!1410 = !DILocation(line: 405, column: 19, scope: !1400)
!1411 = !DILocation(line: 405, column: 27, scope: !1400)
!1412 = !DILocation(line: 405, column: 39, scope: !1400)
!1413 = !DILocation(line: 405, column: 46, scope: !1400)
!1414 = !DILocation(line: 405, column: 44, scope: !1400)
!1415 = !DILocation(line: 409, column: 40, scope: !1400)
!1416 = !DILocation(line: 409, column: 32, scope: !1400)
!1417 = !DILocation(line: 409, column: 30, scope: !1400)
!1418 = !DILocation(line: 409, column: 48, scope: !1400)
!1419 = !DILocation(line: 405, column: 15, scope: !1400)
!1420 = !DILocation(line: 410, column: 11, scope: !1400)
!1421 = !DILocation(line: 410, column: 21, scope: !1400)
!1422 = !DILocation(line: 410, column: 27, scope: !1400)
!1423 = !DILocation(line: 410, column: 25, scope: !1400)
!1424 = !DILocation(line: 410, column: 30, scope: !1400)
!1425 = !DILocation(line: 410, column: 44, scope: !1400)
!1426 = !DILocation(line: 410, column: 14, scope: !1400)
!1427 = !DILocation(line: 401, column: 11, scope: !1393)
!1428 = !DILocation(line: 412, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !122, line: 412, column: 15)
!1430 = distinct !DILexicalBlock(scope: !1400, file: !122, line: 411, column: 9)
!1431 = !DILocation(line: 412, column: 15, scope: !1430)
!1432 = !DILocation(line: 413, column: 13, scope: !1429)
!1433 = !DILocation(line: 414, column: 26, scope: !1430)
!1434 = !DILocation(line: 415, column: 9, scope: !1430)
!1435 = !DILocalVariable(name: "c", scope: !1393, file: !122, line: 417, type: !214)
!1436 = !DILocation(line: 417, column: 21, scope: !1393)
!1437 = !DILocation(line: 417, column: 25, scope: !1393)
!1438 = !DILocation(line: 417, column: 29, scope: !1393)
!1439 = !DILocation(line: 418, column: 15, scope: !1393)
!1440 = !DILocation(line: 418, column: 7, scope: !1393)
!1441 = !DILocation(line: 421, column: 15, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !122, line: 421, column: 15)
!1443 = distinct !DILexicalBlock(scope: !1393, file: !122, line: 419, column: 9)
!1444 = !DILocation(line: 421, column: 15, scope: !1443)
!1445 = !DILocation(line: 423, column: 15, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !122, line: 422, column: 13)
!1447 = !DILocation(line: 423, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !122, line: 423, column: 15)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !122, line: 423, column: 15)
!1450 = !DILocation(line: 423, column: 15, scope: !1449)
!1451 = !DILocation(line: 423, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1449, file: !122, line: 423, column: 15)
!1453 = !DILocation(line: 423, column: 15, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1452, file: !122, line: 423, column: 15)
!1455 = !DILocation(line: 423, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !122, line: 423, column: 15)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !122, line: 423, column: 15)
!1458 = !DILocation(line: 423, column: 15, scope: !1457)
!1459 = !DILocation(line: 423, column: 15, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !122, line: 423, column: 15)
!1461 = distinct !DILexicalBlock(scope: !1454, file: !122, line: 423, column: 15)
!1462 = !DILocation(line: 423, column: 15, scope: !1461)
!1463 = !DILocation(line: 423, column: 15, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !122, line: 423, column: 15)
!1465 = distinct !DILexicalBlock(scope: !1454, file: !122, line: 423, column: 15)
!1466 = !DILocation(line: 423, column: 15, scope: !1465)
!1467 = !DILocation(line: 423, column: 15, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !122, line: 423, column: 15)
!1469 = distinct !DILexicalBlock(scope: !1449, file: !122, line: 423, column: 15)
!1470 = !DILocation(line: 423, column: 15, scope: !1469)
!1471 = !DILocation(line: 430, column: 19, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1446, file: !122, line: 430, column: 19)
!1473 = !DILocation(line: 430, column: 33, scope: !1472)
!1474 = !DILocation(line: 431, column: 19, scope: !1472)
!1475 = !DILocation(line: 431, column: 22, scope: !1472)
!1476 = !DILocation(line: 431, column: 24, scope: !1472)
!1477 = !DILocation(line: 431, column: 30, scope: !1472)
!1478 = !DILocation(line: 431, column: 28, scope: !1472)
!1479 = !DILocation(line: 431, column: 38, scope: !1472)
!1480 = !DILocation(line: 431, column: 48, scope: !1472)
!1481 = !DILocation(line: 431, column: 52, scope: !1472)
!1482 = !DILocation(line: 431, column: 54, scope: !1472)
!1483 = !DILocation(line: 431, column: 45, scope: !1472)
!1484 = !DILocation(line: 431, column: 59, scope: !1472)
!1485 = !DILocation(line: 431, column: 62, scope: !1472)
!1486 = !DILocation(line: 431, column: 66, scope: !1472)
!1487 = !DILocation(line: 431, column: 68, scope: !1472)
!1488 = !DILocation(line: 431, column: 73, scope: !1472)
!1489 = !DILocation(line: 430, column: 19, scope: !1446)
!1490 = !DILocation(line: 433, column: 19, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1472, file: !122, line: 432, column: 17)
!1492 = !DILocation(line: 433, column: 19, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !122, line: 433, column: 19)
!1494 = distinct !DILexicalBlock(scope: !1491, file: !122, line: 433, column: 19)
!1495 = !DILocation(line: 433, column: 19, scope: !1494)
!1496 = !DILocation(line: 434, column: 19, scope: !1491)
!1497 = !DILocation(line: 434, column: 19, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !122, line: 434, column: 19)
!1499 = distinct !DILexicalBlock(scope: !1491, file: !122, line: 434, column: 19)
!1500 = !DILocation(line: 434, column: 19, scope: !1499)
!1501 = !DILocation(line: 435, column: 17, scope: !1491)
!1502 = !DILocation(line: 436, column: 17, scope: !1446)
!1503 = !DILocation(line: 441, column: 13, scope: !1446)
!1504 = !DILocation(line: 442, column: 20, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1442, file: !122, line: 442, column: 20)
!1506 = !DILocation(line: 442, column: 26, scope: !1505)
!1507 = !DILocation(line: 442, column: 20, scope: !1442)
!1508 = !DILocation(line: 443, column: 13, scope: !1505)
!1509 = !DILocation(line: 444, column: 11, scope: !1443)
!1510 = !DILocation(line: 447, column: 20, scope: !1443)
!1511 = !DILocation(line: 447, column: 11, scope: !1443)
!1512 = !DILocation(line: 450, column: 19, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !122, line: 450, column: 19)
!1514 = distinct !DILexicalBlock(scope: !1443, file: !122, line: 448, column: 13)
!1515 = !DILocation(line: 450, column: 19, scope: !1514)
!1516 = !DILocation(line: 451, column: 17, scope: !1513)
!1517 = !DILocation(line: 452, column: 15, scope: !1514)
!1518 = !DILocation(line: 455, column: 20, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1514, file: !122, line: 455, column: 19)
!1520 = !DILocation(line: 455, column: 26, scope: !1519)
!1521 = !DILocation(line: 456, column: 19, scope: !1519)
!1522 = !DILocation(line: 456, column: 22, scope: !1519)
!1523 = !DILocation(line: 456, column: 24, scope: !1519)
!1524 = !DILocation(line: 456, column: 30, scope: !1519)
!1525 = !DILocation(line: 456, column: 28, scope: !1519)
!1526 = !DILocation(line: 456, column: 38, scope: !1519)
!1527 = !DILocation(line: 456, column: 41, scope: !1519)
!1528 = !DILocation(line: 456, column: 45, scope: !1519)
!1529 = !DILocation(line: 456, column: 47, scope: !1519)
!1530 = !DILocation(line: 456, column: 52, scope: !1519)
!1531 = !DILocation(line: 455, column: 19, scope: !1514)
!1532 = !DILocation(line: 457, column: 25, scope: !1519)
!1533 = !DILocation(line: 457, column: 29, scope: !1519)
!1534 = !DILocation(line: 457, column: 31, scope: !1519)
!1535 = !DILocation(line: 457, column: 17, scope: !1519)
!1536 = !DILocation(line: 464, column: 25, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !122, line: 464, column: 25)
!1538 = distinct !DILexicalBlock(scope: !1519, file: !122, line: 458, column: 19)
!1539 = !DILocation(line: 464, column: 25, scope: !1538)
!1540 = !DILocation(line: 465, column: 23, scope: !1537)
!1541 = !DILocation(line: 466, column: 25, scope: !1538)
!1542 = !DILocation(line: 466, column: 29, scope: !1538)
!1543 = !DILocation(line: 466, column: 31, scope: !1538)
!1544 = !DILocation(line: 466, column: 23, scope: !1538)
!1545 = !DILocation(line: 467, column: 23, scope: !1538)
!1546 = !DILocation(line: 468, column: 21, scope: !1538)
!1547 = !DILocation(line: 468, column: 21, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !122, line: 468, column: 21)
!1549 = distinct !DILexicalBlock(scope: !1538, file: !122, line: 468, column: 21)
!1550 = !DILocation(line: 468, column: 21, scope: !1549)
!1551 = !DILocation(line: 469, column: 21, scope: !1538)
!1552 = !DILocation(line: 469, column: 21, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !122, line: 469, column: 21)
!1554 = distinct !DILexicalBlock(scope: !1538, file: !122, line: 469, column: 21)
!1555 = !DILocation(line: 469, column: 21, scope: !1554)
!1556 = !DILocation(line: 470, column: 21, scope: !1538)
!1557 = !DILocation(line: 470, column: 21, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !122, line: 470, column: 21)
!1559 = distinct !DILexicalBlock(scope: !1538, file: !122, line: 470, column: 21)
!1560 = !DILocation(line: 470, column: 21, scope: !1559)
!1561 = !DILocation(line: 471, column: 21, scope: !1538)
!1562 = !DILocation(line: 471, column: 21, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !122, line: 471, column: 21)
!1564 = distinct !DILexicalBlock(scope: !1538, file: !122, line: 471, column: 21)
!1565 = !DILocation(line: 471, column: 21, scope: !1564)
!1566 = !DILocation(line: 472, column: 21, scope: !1538)
!1567 = !DILocation(line: 473, column: 19, scope: !1538)
!1568 = !DILocation(line: 474, column: 15, scope: !1514)
!1569 = !DILocation(line: 476, column: 11, scope: !1443)
!1570 = !DILocation(line: 481, column: 26, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1443, file: !122, line: 478, column: 9)
!1572 = !DILocation(line: 481, column: 33, scope: !1571)
!1573 = !DILocation(line: 482, column: 26, scope: !1571)
!1574 = !DILocation(line: 482, column: 33, scope: !1571)
!1575 = !DILocation(line: 483, column: 26, scope: !1571)
!1576 = !DILocation(line: 483, column: 33, scope: !1571)
!1577 = !DILocation(line: 484, column: 26, scope: !1571)
!1578 = !DILocation(line: 484, column: 33, scope: !1571)
!1579 = !DILocation(line: 485, column: 26, scope: !1571)
!1580 = !DILocation(line: 485, column: 33, scope: !1571)
!1581 = !DILocation(line: 486, column: 26, scope: !1571)
!1582 = !DILocation(line: 486, column: 33, scope: !1571)
!1583 = !DILocation(line: 487, column: 26, scope: !1571)
!1584 = !DILocation(line: 487, column: 33, scope: !1571)
!1585 = !DILocation(line: 488, column: 28, scope: !1571)
!1586 = !DILocation(line: 488, column: 26, scope: !1571)
!1587 = !DILocation(line: 490, column: 17, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1571, file: !122, line: 490, column: 17)
!1589 = !DILocation(line: 490, column: 31, scope: !1588)
!1590 = !DILocation(line: 490, column: 17, scope: !1571)
!1591 = !DILocation(line: 492, column: 21, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !122, line: 492, column: 21)
!1593 = distinct !DILexicalBlock(scope: !1588, file: !122, line: 491, column: 15)
!1594 = !DILocation(line: 492, column: 21, scope: !1593)
!1595 = !DILocation(line: 493, column: 19, scope: !1592)
!1596 = !DILocation(line: 494, column: 17, scope: !1593)
!1597 = !DILocation(line: 499, column: 17, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1571, file: !122, line: 499, column: 17)
!1599 = !DILocation(line: 499, column: 35, scope: !1598)
!1600 = !DILocation(line: 499, column: 38, scope: !1598)
!1601 = !DILocation(line: 499, column: 57, scope: !1598)
!1602 = !DILocation(line: 499, column: 60, scope: !1598)
!1603 = !DILocation(line: 499, column: 17, scope: !1571)
!1604 = !DILocation(line: 500, column: 15, scope: !1598)
!1605 = !DILabel(scope: !1571, name: "c_and_shell_escape", file: !122, line: 502)
!1606 = !DILocation(line: 502, column: 11, scope: !1571)
!1607 = !DILocation(line: 503, column: 17, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1571, file: !122, line: 503, column: 17)
!1609 = !DILocation(line: 503, column: 31, scope: !1608)
!1610 = !DILocation(line: 504, column: 17, scope: !1608)
!1611 = !DILocation(line: 504, column: 20, scope: !1608)
!1612 = !DILocation(line: 503, column: 17, scope: !1571)
!1613 = !DILocation(line: 505, column: 15, scope: !1608)
!1614 = !DILabel(scope: !1571, name: "c_escape", file: !122, line: 507)
!1615 = !DILocation(line: 507, column: 11, scope: !1571)
!1616 = !DILocation(line: 508, column: 17, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1571, file: !122, line: 508, column: 17)
!1618 = !DILocation(line: 508, column: 17, scope: !1571)
!1619 = !DILocation(line: 510, column: 21, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !122, line: 509, column: 15)
!1621 = !DILocation(line: 510, column: 19, scope: !1620)
!1622 = !DILocation(line: 511, column: 17, scope: !1620)
!1623 = !DILocation(line: 513, column: 13, scope: !1571)
!1624 = !DILocation(line: 517, column: 18, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1443, file: !122, line: 517, column: 15)
!1626 = !DILocation(line: 517, column: 26, scope: !1625)
!1627 = !DILocation(line: 517, column: 15, scope: !1443)
!1628 = !DILocation(line: 517, column: 40, scope: !1625)
!1629 = !DILocation(line: 517, column: 47, scope: !1625)
!1630 = !DILocation(line: 517, column: 57, scope: !1625)
!1631 = !DILocation(line: 517, column: 65, scope: !1625)
!1632 = !DILocation(line: 518, column: 13, scope: !1625)
!1633 = !DILocation(line: 517, column: 69, scope: !1625)
!1634 = !DILocation(line: 521, column: 15, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1443, file: !122, line: 521, column: 15)
!1636 = !DILocation(line: 521, column: 17, scope: !1635)
!1637 = !DILocation(line: 521, column: 15, scope: !1443)
!1638 = !DILocation(line: 522, column: 13, scope: !1635)
!1639 = !DILocation(line: 521, column: 20, scope: !1635)
!1640 = !DILocation(line: 525, column: 36, scope: !1443)
!1641 = !DILocation(line: 525, column: 11, scope: !1443)
!1642 = !DILocation(line: 536, column: 15, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1443, file: !122, line: 536, column: 15)
!1644 = !DILocation(line: 536, column: 29, scope: !1643)
!1645 = !DILocation(line: 537, column: 15, scope: !1643)
!1646 = !DILocation(line: 537, column: 18, scope: !1643)
!1647 = !DILocation(line: 536, column: 15, scope: !1443)
!1648 = !DILocation(line: 538, column: 13, scope: !1643)
!1649 = !DILocation(line: 539, column: 11, scope: !1443)
!1650 = !DILocation(line: 542, column: 36, scope: !1443)
!1651 = !DILocation(line: 543, column: 36, scope: !1443)
!1652 = !DILocation(line: 544, column: 15, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1443, file: !122, line: 544, column: 15)
!1654 = !DILocation(line: 544, column: 29, scope: !1653)
!1655 = !DILocation(line: 544, column: 15, scope: !1443)
!1656 = !DILocation(line: 546, column: 19, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !122, line: 546, column: 19)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !122, line: 545, column: 13)
!1659 = !DILocation(line: 546, column: 19, scope: !1658)
!1660 = !DILocation(line: 547, column: 17, scope: !1657)
!1661 = !DILocation(line: 549, column: 19, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !122, line: 549, column: 19)
!1663 = !DILocation(line: 549, column: 30, scope: !1662)
!1664 = !DILocation(line: 549, column: 35, scope: !1662)
!1665 = !DILocation(line: 549, column: 19, scope: !1658)
!1666 = !DILocation(line: 554, column: 37, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !122, line: 550, column: 17)
!1668 = !DILocation(line: 554, column: 35, scope: !1667)
!1669 = !DILocation(line: 555, column: 30, scope: !1667)
!1670 = !DILocation(line: 556, column: 17, scope: !1667)
!1671 = !DILocation(line: 558, column: 15, scope: !1658)
!1672 = !DILocation(line: 558, column: 15, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !122, line: 558, column: 15)
!1674 = distinct !DILexicalBlock(scope: !1658, file: !122, line: 558, column: 15)
!1675 = !DILocation(line: 558, column: 15, scope: !1674)
!1676 = !DILocation(line: 559, column: 15, scope: !1658)
!1677 = !DILocation(line: 559, column: 15, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !122, line: 559, column: 15)
!1679 = distinct !DILexicalBlock(scope: !1658, file: !122, line: 559, column: 15)
!1680 = !DILocation(line: 559, column: 15, scope: !1679)
!1681 = !DILocation(line: 560, column: 15, scope: !1658)
!1682 = !DILocation(line: 560, column: 15, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !122, line: 560, column: 15)
!1684 = distinct !DILexicalBlock(scope: !1658, file: !122, line: 560, column: 15)
!1685 = !DILocation(line: 560, column: 15, scope: !1684)
!1686 = !DILocation(line: 561, column: 40, scope: !1658)
!1687 = !DILocation(line: 562, column: 13, scope: !1658)
!1688 = !DILocation(line: 563, column: 11, scope: !1443)
!1689 = !DILocation(line: 587, column: 36, scope: !1443)
!1690 = !DILocation(line: 588, column: 11, scope: !1443)
!1691 = !DILocalVariable(name: "m", scope: !1692, file: !122, line: 598, type: !144)
!1692 = distinct !DILexicalBlock(scope: !1443, file: !122, line: 596, column: 11)
!1693 = !DILocation(line: 598, column: 20, scope: !1692)
!1694 = !DILocalVariable(name: "printable", scope: !1692, file: !122, line: 600, type: !67)
!1695 = !DILocation(line: 600, column: 18, scope: !1692)
!1696 = !DILocation(line: 602, column: 17, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1692, file: !122, line: 602, column: 17)
!1698 = !DILocation(line: 602, column: 17, scope: !1692)
!1699 = !DILocation(line: 604, column: 19, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1697, file: !122, line: 603, column: 15)
!1701 = !DILocation(line: 605, column: 29, scope: !1700)
!1702 = !DILocation(line: 605, column: 41, scope: !1700)
!1703 = !DILocation(line: 605, column: 27, scope: !1700)
!1704 = !DILocation(line: 606, column: 15, scope: !1700)
!1705 = !DILocalVariable(name: "mbs", scope: !1706, file: !122, line: 609, type: !1707)
!1706 = distinct !DILexicalBlock(scope: !1697, file: !122, line: 608, column: 15)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !217, line: 6, baseType: !1708)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !219, line: 21, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 13, size: 64, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1709, file: !219, line: 15, baseType: !25, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1709, file: !219, line: 20, baseType: !1713, size: 32, offset: 32)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !219, line: 16, size: 32, elements: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1713, file: !219, line: 18, baseType: !7, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1713, file: !219, line: 19, baseType: !228, size: 32)
!1717 = !DILocation(line: 609, column: 27, scope: !1706)
!1718 = !DILocation(line: 609, column: 32, scope: !1706)
!1719 = !DILocation(line: 611, column: 19, scope: !1706)
!1720 = !DILocation(line: 612, column: 27, scope: !1706)
!1721 = !DILocation(line: 613, column: 21, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1706, file: !122, line: 613, column: 21)
!1723 = !DILocation(line: 613, column: 29, scope: !1722)
!1724 = !DILocation(line: 613, column: 21, scope: !1706)
!1725 = !DILocation(line: 614, column: 37, scope: !1722)
!1726 = !DILocation(line: 614, column: 29, scope: !1722)
!1727 = !DILocation(line: 614, column: 27, scope: !1722)
!1728 = !DILocation(line: 614, column: 19, scope: !1722)
!1729 = !DILocation(line: 616, column: 17, scope: !1706)
!1730 = !DILocalVariable(name: "w", scope: !1731, file: !122, line: 618, type: !1027)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !122, line: 617, column: 19)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !122, line: 616, column: 17)
!1733 = distinct !DILexicalBlock(scope: !1706, file: !122, line: 616, column: 17)
!1734 = !DILocation(line: 618, column: 30, scope: !1731)
!1735 = !DILocalVariable(name: "bytes", scope: !1731, file: !122, line: 619, type: !144)
!1736 = !DILocation(line: 619, column: 28, scope: !1731)
!1737 = !DILocation(line: 619, column: 51, scope: !1731)
!1738 = !DILocation(line: 619, column: 55, scope: !1731)
!1739 = !DILocation(line: 619, column: 59, scope: !1731)
!1740 = !DILocation(line: 619, column: 57, scope: !1731)
!1741 = !DILocation(line: 620, column: 46, scope: !1731)
!1742 = !DILocation(line: 620, column: 57, scope: !1731)
!1743 = !DILocation(line: 620, column: 61, scope: !1731)
!1744 = !DILocation(line: 620, column: 59, scope: !1731)
!1745 = !DILocation(line: 620, column: 54, scope: !1731)
!1746 = !DILocation(line: 619, column: 36, scope: !1731)
!1747 = !DILocation(line: 621, column: 25, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1731, file: !122, line: 621, column: 25)
!1749 = !DILocation(line: 621, column: 31, scope: !1748)
!1750 = !DILocation(line: 621, column: 25, scope: !1731)
!1751 = !DILocation(line: 622, column: 23, scope: !1748)
!1752 = !DILocation(line: 623, column: 30, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !122, line: 623, column: 30)
!1754 = !DILocation(line: 623, column: 36, scope: !1753)
!1755 = !DILocation(line: 623, column: 30, scope: !1748)
!1756 = !DILocation(line: 625, column: 35, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !122, line: 624, column: 23)
!1758 = !DILocation(line: 626, column: 25, scope: !1757)
!1759 = !DILocation(line: 628, column: 30, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1753, file: !122, line: 628, column: 30)
!1761 = !DILocation(line: 628, column: 36, scope: !1760)
!1762 = !DILocation(line: 628, column: 30, scope: !1753)
!1763 = !DILocation(line: 630, column: 35, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !122, line: 629, column: 23)
!1765 = !DILocation(line: 631, column: 25, scope: !1764)
!1766 = !DILocation(line: 631, column: 32, scope: !1764)
!1767 = !DILocation(line: 631, column: 36, scope: !1764)
!1768 = !DILocation(line: 631, column: 34, scope: !1764)
!1769 = !DILocation(line: 631, column: 40, scope: !1764)
!1770 = !DILocation(line: 631, column: 38, scope: !1764)
!1771 = !DILocation(line: 631, column: 48, scope: !1764)
!1772 = !DILocation(line: 631, column: 51, scope: !1764)
!1773 = !DILocation(line: 631, column: 55, scope: !1764)
!1774 = !DILocation(line: 631, column: 59, scope: !1764)
!1775 = !DILocation(line: 631, column: 57, scope: !1764)
!1776 = !DILocation(line: 0, scope: !1764)
!1777 = !DILocation(line: 632, column: 28, scope: !1764)
!1778 = distinct !{!1778, !1765, !1777, !403}
!1779 = !DILocation(line: 633, column: 25, scope: !1764)
!1780 = !DILocation(line: 645, column: 44, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !122, line: 645, column: 29)
!1782 = distinct !DILexicalBlock(scope: !1760, file: !122, line: 636, column: 23)
!1783 = !DILocation(line: 646, column: 29, scope: !1781)
!1784 = !DILocation(line: 646, column: 32, scope: !1781)
!1785 = !DILocation(line: 646, column: 46, scope: !1781)
!1786 = !DILocation(line: 645, column: 29, scope: !1782)
!1787 = !DILocalVariable(name: "j", scope: !1788, file: !122, line: 648, type: !144)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !122, line: 648, column: 29)
!1789 = distinct !DILexicalBlock(scope: !1781, file: !122, line: 647, column: 27)
!1790 = !DILocation(line: 648, column: 41, scope: !1788)
!1791 = !DILocation(line: 648, column: 34, scope: !1788)
!1792 = !DILocation(line: 648, column: 48, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1788, file: !122, line: 648, column: 29)
!1794 = !DILocation(line: 648, column: 52, scope: !1793)
!1795 = !DILocation(line: 648, column: 50, scope: !1793)
!1796 = !DILocation(line: 648, column: 29, scope: !1788)
!1797 = !DILocation(line: 649, column: 39, scope: !1793)
!1798 = !DILocation(line: 649, column: 43, scope: !1793)
!1799 = !DILocation(line: 649, column: 47, scope: !1793)
!1800 = !DILocation(line: 649, column: 45, scope: !1793)
!1801 = !DILocation(line: 649, column: 51, scope: !1793)
!1802 = !DILocation(line: 649, column: 49, scope: !1793)
!1803 = !DILocation(line: 649, column: 31, scope: !1793)
!1804 = !DILocation(line: 653, column: 35, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1793, file: !122, line: 650, column: 33)
!1806 = !DILocation(line: 654, column: 33, scope: !1805)
!1807 = !DILocation(line: 648, column: 60, scope: !1793)
!1808 = !DILocation(line: 648, column: 29, scope: !1793)
!1809 = distinct !{!1809, !1796, !1810, !403}
!1810 = !DILocation(line: 654, column: 33, scope: !1788)
!1811 = !DILocation(line: 655, column: 27, scope: !1789)
!1812 = !DILocation(line: 657, column: 43, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1782, file: !122, line: 657, column: 29)
!1814 = !DILocation(line: 657, column: 31, scope: !1813)
!1815 = !DILocation(line: 657, column: 29, scope: !1782)
!1816 = !DILocation(line: 658, column: 37, scope: !1813)
!1817 = !DILocation(line: 658, column: 27, scope: !1813)
!1818 = !DILocation(line: 659, column: 30, scope: !1782)
!1819 = !DILocation(line: 659, column: 27, scope: !1782)
!1820 = !DILocation(line: 664, column: 23, scope: !1731)
!1821 = !DILocation(line: 668, column: 40, scope: !1692)
!1822 = !DILocation(line: 668, column: 38, scope: !1692)
!1823 = !DILocation(line: 670, column: 21, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1692, file: !122, line: 670, column: 17)
!1825 = !DILocation(line: 670, column: 19, scope: !1824)
!1826 = !DILocation(line: 670, column: 23, scope: !1824)
!1827 = !DILocation(line: 670, column: 27, scope: !1824)
!1828 = !DILocation(line: 670, column: 45, scope: !1824)
!1829 = !DILocation(line: 670, column: 50, scope: !1824)
!1830 = !DILocation(line: 670, column: 17, scope: !1692)
!1831 = !DILocalVariable(name: "ilim", scope: !1832, file: !122, line: 674, type: !144)
!1832 = distinct !DILexicalBlock(scope: !1824, file: !122, line: 671, column: 15)
!1833 = !DILocation(line: 674, column: 24, scope: !1832)
!1834 = !DILocation(line: 674, column: 31, scope: !1832)
!1835 = !DILocation(line: 674, column: 35, scope: !1832)
!1836 = !DILocation(line: 674, column: 33, scope: !1832)
!1837 = !DILocation(line: 676, column: 17, scope: !1832)
!1838 = !DILocation(line: 678, column: 25, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !122, line: 678, column: 25)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !122, line: 677, column: 19)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !122, line: 676, column: 17)
!1842 = distinct !DILexicalBlock(scope: !1832, file: !122, line: 676, column: 17)
!1843 = !DILocation(line: 678, column: 43, scope: !1839)
!1844 = !DILocation(line: 678, column: 48, scope: !1839)
!1845 = !DILocation(line: 678, column: 25, scope: !1840)
!1846 = !DILocation(line: 680, column: 25, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1839, file: !122, line: 679, column: 23)
!1848 = !DILocation(line: 680, column: 25, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !122, line: 680, column: 25)
!1850 = distinct !DILexicalBlock(scope: !1847, file: !122, line: 680, column: 25)
!1851 = !DILocation(line: 680, column: 25, scope: !1850)
!1852 = !DILocation(line: 680, column: 25, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1850, file: !122, line: 680, column: 25)
!1854 = !DILocation(line: 680, column: 25, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1853, file: !122, line: 680, column: 25)
!1856 = !DILocation(line: 680, column: 25, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !122, line: 680, column: 25)
!1858 = distinct !DILexicalBlock(scope: !1855, file: !122, line: 680, column: 25)
!1859 = !DILocation(line: 680, column: 25, scope: !1858)
!1860 = !DILocation(line: 680, column: 25, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !122, line: 680, column: 25)
!1862 = distinct !DILexicalBlock(scope: !1855, file: !122, line: 680, column: 25)
!1863 = !DILocation(line: 680, column: 25, scope: !1862)
!1864 = !DILocation(line: 680, column: 25, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !122, line: 680, column: 25)
!1866 = distinct !DILexicalBlock(scope: !1855, file: !122, line: 680, column: 25)
!1867 = !DILocation(line: 680, column: 25, scope: !1866)
!1868 = !DILocation(line: 680, column: 25, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !122, line: 680, column: 25)
!1870 = distinct !DILexicalBlock(scope: !1850, file: !122, line: 680, column: 25)
!1871 = !DILocation(line: 680, column: 25, scope: !1870)
!1872 = !DILocation(line: 681, column: 25, scope: !1847)
!1873 = !DILocation(line: 681, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !122, line: 681, column: 25)
!1875 = distinct !DILexicalBlock(scope: !1847, file: !122, line: 681, column: 25)
!1876 = !DILocation(line: 681, column: 25, scope: !1875)
!1877 = !DILocation(line: 682, column: 25, scope: !1847)
!1878 = !DILocation(line: 682, column: 25, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !122, line: 682, column: 25)
!1880 = distinct !DILexicalBlock(scope: !1847, file: !122, line: 682, column: 25)
!1881 = !DILocation(line: 682, column: 25, scope: !1880)
!1882 = !DILocation(line: 683, column: 36, scope: !1847)
!1883 = !DILocation(line: 683, column: 38, scope: !1847)
!1884 = !DILocation(line: 683, column: 33, scope: !1847)
!1885 = !DILocation(line: 683, column: 29, scope: !1847)
!1886 = !DILocation(line: 683, column: 27, scope: !1847)
!1887 = !DILocation(line: 684, column: 23, scope: !1847)
!1888 = !DILocation(line: 685, column: 30, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1839, file: !122, line: 685, column: 30)
!1890 = !DILocation(line: 685, column: 30, scope: !1839)
!1891 = !DILocation(line: 687, column: 25, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1889, file: !122, line: 686, column: 23)
!1893 = !DILocation(line: 687, column: 25, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !122, line: 687, column: 25)
!1895 = distinct !DILexicalBlock(scope: !1892, file: !122, line: 687, column: 25)
!1896 = !DILocation(line: 687, column: 25, scope: !1895)
!1897 = !DILocation(line: 688, column: 40, scope: !1892)
!1898 = !DILocation(line: 689, column: 23, scope: !1892)
!1899 = !DILocation(line: 690, column: 25, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1840, file: !122, line: 690, column: 25)
!1901 = !DILocation(line: 690, column: 33, scope: !1900)
!1902 = !DILocation(line: 690, column: 35, scope: !1900)
!1903 = !DILocation(line: 690, column: 30, scope: !1900)
!1904 = !DILocation(line: 690, column: 25, scope: !1840)
!1905 = !DILocation(line: 691, column: 23, scope: !1900)
!1906 = !DILocation(line: 692, column: 21, scope: !1840)
!1907 = !DILocation(line: 692, column: 21, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !122, line: 692, column: 21)
!1909 = distinct !DILexicalBlock(scope: !1840, file: !122, line: 692, column: 21)
!1910 = !DILocation(line: 692, column: 21, scope: !1909)
!1911 = !DILocation(line: 692, column: 21, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !122, line: 692, column: 21)
!1913 = !DILocation(line: 692, column: 21, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !122, line: 692, column: 21)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !122, line: 692, column: 21)
!1916 = !DILocation(line: 692, column: 21, scope: !1915)
!1917 = !DILocation(line: 692, column: 21, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !122, line: 692, column: 21)
!1919 = distinct !DILexicalBlock(scope: !1912, file: !122, line: 692, column: 21)
!1920 = !DILocation(line: 692, column: 21, scope: !1919)
!1921 = !DILocation(line: 693, column: 21, scope: !1840)
!1922 = !DILocation(line: 693, column: 21, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !122, line: 693, column: 21)
!1924 = distinct !DILexicalBlock(scope: !1840, file: !122, line: 693, column: 21)
!1925 = !DILocation(line: 693, column: 21, scope: !1924)
!1926 = !DILocation(line: 694, column: 25, scope: !1840)
!1927 = !DILocation(line: 694, column: 29, scope: !1840)
!1928 = !DILocation(line: 694, column: 23, scope: !1840)
!1929 = !DILocation(line: 676, column: 17, scope: !1841)
!1930 = distinct !{!1930, !1931, !1932}
!1931 = !DILocation(line: 676, column: 17, scope: !1842)
!1932 = !DILocation(line: 695, column: 19, scope: !1842)
!1933 = !DILocation(line: 697, column: 17, scope: !1832)
!1934 = !DILocation(line: 700, column: 9, scope: !1443)
!1935 = !DILocation(line: 702, column: 16, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1393, file: !122, line: 702, column: 11)
!1937 = !DILocation(line: 702, column: 34, scope: !1936)
!1938 = !DILocation(line: 702, column: 37, scope: !1936)
!1939 = !DILocation(line: 702, column: 51, scope: !1936)
!1940 = !DILocation(line: 703, column: 15, scope: !1936)
!1941 = !DILocation(line: 703, column: 18, scope: !1936)
!1942 = !DILocation(line: 704, column: 14, scope: !1936)
!1943 = !DILocation(line: 704, column: 17, scope: !1936)
!1944 = !DILocation(line: 705, column: 14, scope: !1936)
!1945 = !DILocation(line: 705, column: 17, scope: !1936)
!1946 = !DILocation(line: 705, column: 33, scope: !1936)
!1947 = !DILocation(line: 705, column: 35, scope: !1936)
!1948 = !DILocation(line: 705, column: 51, scope: !1936)
!1949 = !DILocation(line: 705, column: 53, scope: !1936)
!1950 = !DILocation(line: 705, column: 47, scope: !1936)
!1951 = !DILocation(line: 705, column: 65, scope: !1936)
!1952 = !DILocation(line: 706, column: 11, scope: !1936)
!1953 = !DILocation(line: 706, column: 15, scope: !1936)
!1954 = !DILocation(line: 702, column: 11, scope: !1393)
!1955 = !DILocation(line: 707, column: 9, scope: !1936)
!1956 = !DILabel(scope: !1393, name: "store_escape", file: !122, line: 709)
!1957 = !DILocation(line: 709, column: 5, scope: !1393)
!1958 = !DILocation(line: 710, column: 7, scope: !1393)
!1959 = !DILocation(line: 710, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !122, line: 710, column: 7)
!1961 = distinct !DILexicalBlock(scope: !1393, file: !122, line: 710, column: 7)
!1962 = !DILocation(line: 710, column: 7, scope: !1961)
!1963 = !DILocation(line: 710, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1961, file: !122, line: 710, column: 7)
!1965 = !DILocation(line: 710, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1964, file: !122, line: 710, column: 7)
!1967 = !DILocation(line: 710, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !122, line: 710, column: 7)
!1969 = distinct !DILexicalBlock(scope: !1966, file: !122, line: 710, column: 7)
!1970 = !DILocation(line: 710, column: 7, scope: !1969)
!1971 = !DILocation(line: 710, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !122, line: 710, column: 7)
!1973 = distinct !DILexicalBlock(scope: !1966, file: !122, line: 710, column: 7)
!1974 = !DILocation(line: 710, column: 7, scope: !1973)
!1975 = !DILocation(line: 710, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !122, line: 710, column: 7)
!1977 = distinct !DILexicalBlock(scope: !1966, file: !122, line: 710, column: 7)
!1978 = !DILocation(line: 710, column: 7, scope: !1977)
!1979 = !DILocation(line: 710, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !122, line: 710, column: 7)
!1981 = distinct !DILexicalBlock(scope: !1961, file: !122, line: 710, column: 7)
!1982 = !DILocation(line: 710, column: 7, scope: !1981)
!1983 = !DILabel(scope: !1393, name: "store_c", file: !122, line: 712)
!1984 = !DILocation(line: 712, column: 5, scope: !1393)
!1985 = !DILocation(line: 713, column: 7, scope: !1393)
!1986 = !DILocation(line: 713, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !122, line: 713, column: 7)
!1988 = distinct !DILexicalBlock(scope: !1393, file: !122, line: 713, column: 7)
!1989 = !DILocation(line: 713, column: 7, scope: !1988)
!1990 = !DILocation(line: 713, column: 7, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !122, line: 713, column: 7)
!1992 = !DILocation(line: 713, column: 7, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !122, line: 713, column: 7)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !122, line: 713, column: 7)
!1995 = !DILocation(line: 713, column: 7, scope: !1994)
!1996 = !DILocation(line: 713, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !122, line: 713, column: 7)
!1998 = distinct !DILexicalBlock(scope: !1991, file: !122, line: 713, column: 7)
!1999 = !DILocation(line: 713, column: 7, scope: !1998)
!2000 = !DILocation(line: 714, column: 7, scope: !1393)
!2001 = !DILocation(line: 714, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !122, line: 714, column: 7)
!2003 = distinct !DILexicalBlock(scope: !1393, file: !122, line: 714, column: 7)
!2004 = !DILocation(line: 714, column: 7, scope: !2003)
!2005 = !DILocation(line: 716, column: 13, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1393, file: !122, line: 716, column: 11)
!2007 = !DILocation(line: 716, column: 11, scope: !1393)
!2008 = !DILocation(line: 717, column: 38, scope: !2006)
!2009 = !DILocation(line: 717, column: 9, scope: !2006)
!2010 = !DILocation(line: 718, column: 5, scope: !1393)
!2011 = !DILocation(line: 395, column: 82, scope: !1382)
!2012 = !DILocation(line: 395, column: 3, scope: !1382)
!2013 = distinct !{!2013, !1391, !2014, !403}
!2014 = !DILocation(line: 718, column: 5, scope: !1378)
!2015 = !DILocation(line: 720, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1240, file: !122, line: 720, column: 7)
!2017 = !DILocation(line: 720, column: 11, scope: !2016)
!2018 = !DILocation(line: 720, column: 16, scope: !2016)
!2019 = !DILocation(line: 720, column: 19, scope: !2016)
!2020 = !DILocation(line: 720, column: 33, scope: !2016)
!2021 = !DILocation(line: 721, column: 7, scope: !2016)
!2022 = !DILocation(line: 721, column: 10, scope: !2016)
!2023 = !DILocation(line: 720, column: 7, scope: !1240)
!2024 = !DILocation(line: 722, column: 5, scope: !2016)
!2025 = !DILocation(line: 728, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1240, file: !122, line: 728, column: 7)
!2027 = !DILocation(line: 728, column: 21, scope: !2026)
!2028 = !DILocation(line: 728, column: 51, scope: !2026)
!2029 = !DILocation(line: 728, column: 56, scope: !2026)
!2030 = !DILocation(line: 729, column: 7, scope: !2026)
!2031 = !DILocation(line: 729, column: 10, scope: !2026)
!2032 = !DILocation(line: 728, column: 7, scope: !1240)
!2033 = !DILocation(line: 731, column: 11, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !122, line: 731, column: 11)
!2035 = distinct !DILexicalBlock(scope: !2026, file: !122, line: 730, column: 5)
!2036 = !DILocation(line: 731, column: 11, scope: !2035)
!2037 = !DILocation(line: 732, column: 42, scope: !2034)
!2038 = !DILocation(line: 732, column: 50, scope: !2034)
!2039 = !DILocation(line: 732, column: 67, scope: !2034)
!2040 = !DILocation(line: 732, column: 72, scope: !2034)
!2041 = !DILocation(line: 734, column: 42, scope: !2034)
!2042 = !DILocation(line: 734, column: 49, scope: !2034)
!2043 = !DILocation(line: 735, column: 42, scope: !2034)
!2044 = !DILocation(line: 735, column: 54, scope: !2034)
!2045 = !DILocation(line: 732, column: 16, scope: !2034)
!2046 = !DILocation(line: 732, column: 9, scope: !2034)
!2047 = !DILocation(line: 736, column: 18, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2034, file: !122, line: 736, column: 16)
!2049 = !DILocation(line: 736, column: 29, scope: !2048)
!2050 = !DILocation(line: 736, column: 32, scope: !2048)
!2051 = !DILocation(line: 736, column: 16, scope: !2034)
!2052 = !DILocation(line: 739, column: 24, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !122, line: 737, column: 9)
!2054 = !DILocation(line: 739, column: 22, scope: !2053)
!2055 = !DILocation(line: 740, column: 15, scope: !2053)
!2056 = !DILocation(line: 741, column: 11, scope: !2053)
!2057 = !DILocation(line: 743, column: 5, scope: !2035)
!2058 = !DILocation(line: 745, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1240, file: !122, line: 745, column: 7)
!2060 = !DILocation(line: 745, column: 20, scope: !2059)
!2061 = !DILocation(line: 745, column: 24, scope: !2059)
!2062 = !DILocation(line: 745, column: 7, scope: !1240)
!2063 = !DILocation(line: 746, column: 5, scope: !2059)
!2064 = !DILocation(line: 746, column: 13, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !122, line: 746, column: 5)
!2066 = distinct !DILexicalBlock(scope: !2059, file: !122, line: 746, column: 5)
!2067 = !DILocation(line: 746, column: 12, scope: !2065)
!2068 = !DILocation(line: 746, column: 5, scope: !2066)
!2069 = !DILocation(line: 747, column: 7, scope: !2065)
!2070 = !DILocation(line: 747, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !122, line: 747, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2065, file: !122, line: 747, column: 7)
!2073 = !DILocation(line: 747, column: 7, scope: !2072)
!2074 = !DILocation(line: 746, column: 39, scope: !2065)
!2075 = !DILocation(line: 746, column: 5, scope: !2065)
!2076 = distinct !{!2076, !2068, !2077, !403}
!2077 = !DILocation(line: 747, column: 7, scope: !2066)
!2078 = !DILocation(line: 749, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1240, file: !122, line: 749, column: 7)
!2080 = !DILocation(line: 749, column: 13, scope: !2079)
!2081 = !DILocation(line: 749, column: 11, scope: !2079)
!2082 = !DILocation(line: 749, column: 7, scope: !1240)
!2083 = !DILocation(line: 750, column: 5, scope: !2079)
!2084 = !DILocation(line: 750, column: 12, scope: !2079)
!2085 = !DILocation(line: 750, column: 17, scope: !2079)
!2086 = !DILocation(line: 751, column: 10, scope: !1240)
!2087 = !DILocation(line: 751, column: 3, scope: !1240)
!2088 = !DILabel(scope: !1240, name: "force_outer_quoting_style", file: !122, line: 753)
!2089 = !DILocation(line: 753, column: 2, scope: !1240)
!2090 = !DILocation(line: 756, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1240, file: !122, line: 756, column: 7)
!2092 = !DILocation(line: 756, column: 21, scope: !2091)
!2093 = !DILocation(line: 756, column: 51, scope: !2091)
!2094 = !DILocation(line: 756, column: 54, scope: !2091)
!2095 = !DILocation(line: 756, column: 7, scope: !1240)
!2096 = !DILocation(line: 757, column: 19, scope: !2091)
!2097 = !DILocation(line: 757, column: 5, scope: !2091)
!2098 = !DILocation(line: 758, column: 36, scope: !1240)
!2099 = !DILocation(line: 758, column: 44, scope: !1240)
!2100 = !DILocation(line: 758, column: 56, scope: !1240)
!2101 = !DILocation(line: 758, column: 61, scope: !1240)
!2102 = !DILocation(line: 759, column: 36, scope: !1240)
!2103 = !DILocation(line: 760, column: 36, scope: !1240)
!2104 = !DILocation(line: 760, column: 42, scope: !1240)
!2105 = !DILocation(line: 761, column: 36, scope: !1240)
!2106 = !DILocation(line: 761, column: 48, scope: !1240)
!2107 = !DILocation(line: 758, column: 10, scope: !1240)
!2108 = !DILocation(line: 758, column: 3, scope: !1240)
!2109 = !DILocation(line: 762, column: 1, scope: !1240)
!2110 = !DILocalVariable(name: "msgid", arg: 1, scope: !175, file: !122, line: 197, type: !42)
!2111 = !DILocation(line: 197, column: 28, scope: !175)
!2112 = !DILocalVariable(name: "s", arg: 2, scope: !175, file: !122, line: 197, type: !124)
!2113 = !DILocation(line: 197, column: 54, scope: !175)
!2114 = !DILocalVariable(name: "translation", scope: !175, file: !122, line: 199, type: !42)
!2115 = !DILocation(line: 199, column: 15, scope: !175)
!2116 = !DILocation(line: 199, column: 29, scope: !175)
!2117 = !DILocation(line: 201, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !175, file: !122, line: 201, column: 7)
!2119 = !DILocation(line: 201, column: 22, scope: !2118)
!2120 = !DILocation(line: 201, column: 19, scope: !2118)
!2121 = !DILocation(line: 201, column: 7, scope: !175)
!2122 = !DILocation(line: 202, column: 12, scope: !2118)
!2123 = !DILocation(line: 202, column: 5, scope: !2118)
!2124 = !DILocalVariable(name: "w", scope: !175, file: !122, line: 229, type: !1027)
!2125 = !DILocation(line: 229, column: 12, scope: !175)
!2126 = !DILocalVariable(name: "mbs", scope: !175, file: !122, line: 230, type: !1707)
!2127 = !DILocation(line: 230, column: 13, scope: !175)
!2128 = !DILocation(line: 230, column: 18, scope: !175)
!2129 = !DILocation(line: 231, column: 7, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !175, file: !122, line: 231, column: 7)
!2131 = !DILocation(line: 231, column: 40, scope: !2130)
!2132 = !DILocation(line: 231, column: 45, scope: !2130)
!2133 = !DILocation(line: 231, column: 48, scope: !2130)
!2134 = !DILocation(line: 231, column: 50, scope: !2130)
!2135 = !DILocation(line: 231, column: 7, scope: !175)
!2136 = !DILocation(line: 232, column: 18, scope: !2130)
!2137 = !DILocation(line: 232, column: 27, scope: !2130)
!2138 = !DILocation(line: 232, column: 12, scope: !2130)
!2139 = !DILocation(line: 232, column: 5, scope: !2130)
!2140 = !DILocation(line: 234, column: 11, scope: !175)
!2141 = !DILocation(line: 234, column: 13, scope: !175)
!2142 = !DILocation(line: 234, column: 3, scope: !175)
!2143 = !DILocation(line: 235, column: 1, scope: !175)
!2144 = distinct !DISubprogram(name: "quotearg_alloc", scope: !122, file: !122, line: 788, type: !2145, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!22, !42, !144, !1080}
!2147 = !DILocalVariable(name: "arg", arg: 1, scope: !2144, file: !122, line: 788, type: !42)
!2148 = !DILocation(line: 788, column: 29, scope: !2144)
!2149 = !DILocalVariable(name: "argsize", arg: 2, scope: !2144, file: !122, line: 788, type: !144)
!2150 = !DILocation(line: 788, column: 41, scope: !2144)
!2151 = !DILocalVariable(name: "o", arg: 3, scope: !2144, file: !122, line: 789, type: !1080)
!2152 = !DILocation(line: 789, column: 47, scope: !2144)
!2153 = !DILocation(line: 791, column: 30, scope: !2144)
!2154 = !DILocation(line: 791, column: 35, scope: !2144)
!2155 = !DILocation(line: 791, column: 50, scope: !2144)
!2156 = !DILocation(line: 791, column: 10, scope: !2144)
!2157 = !DILocation(line: 791, column: 3, scope: !2144)
!2158 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !122, file: !122, line: 801, type: !2159, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!22, !42, !144, !248, !1080}
!2161 = !DILocalVariable(name: "arg", arg: 1, scope: !2158, file: !122, line: 801, type: !42)
!2162 = !DILocation(line: 801, column: 33, scope: !2158)
!2163 = !DILocalVariable(name: "argsize", arg: 2, scope: !2158, file: !122, line: 801, type: !144)
!2164 = !DILocation(line: 801, column: 45, scope: !2158)
!2165 = !DILocalVariable(name: "size", arg: 3, scope: !2158, file: !122, line: 801, type: !248)
!2166 = !DILocation(line: 801, column: 62, scope: !2158)
!2167 = !DILocalVariable(name: "o", arg: 4, scope: !2158, file: !122, line: 802, type: !1080)
!2168 = !DILocation(line: 802, column: 51, scope: !2158)
!2169 = !DILocalVariable(name: "p", scope: !2158, file: !122, line: 804, type: !1080)
!2170 = !DILocation(line: 804, column: 33, scope: !2158)
!2171 = !DILocation(line: 804, column: 37, scope: !2158)
!2172 = !DILocation(line: 804, column: 41, scope: !2158)
!2173 = !DILocalVariable(name: "saved_errno", scope: !2158, file: !122, line: 805, type: !25)
!2174 = !DILocation(line: 805, column: 7, scope: !2158)
!2175 = !DILocation(line: 805, column: 21, scope: !2158)
!2176 = !DILocalVariable(name: "flags", scope: !2158, file: !122, line: 807, type: !25)
!2177 = !DILocation(line: 807, column: 7, scope: !2158)
!2178 = !DILocation(line: 807, column: 15, scope: !2158)
!2179 = !DILocation(line: 807, column: 18, scope: !2158)
!2180 = !DILocation(line: 807, column: 27, scope: !2158)
!2181 = !DILocation(line: 807, column: 24, scope: !2158)
!2182 = !DILocalVariable(name: "bufsize", scope: !2158, file: !122, line: 808, type: !144)
!2183 = !DILocation(line: 808, column: 10, scope: !2158)
!2184 = !DILocation(line: 808, column: 55, scope: !2158)
!2185 = !DILocation(line: 808, column: 60, scope: !2158)
!2186 = !DILocation(line: 808, column: 69, scope: !2158)
!2187 = !DILocation(line: 808, column: 72, scope: !2158)
!2188 = !DILocation(line: 809, column: 46, scope: !2158)
!2189 = !DILocation(line: 809, column: 53, scope: !2158)
!2190 = !DILocation(line: 809, column: 56, scope: !2158)
!2191 = !DILocation(line: 810, column: 46, scope: !2158)
!2192 = !DILocation(line: 810, column: 49, scope: !2158)
!2193 = !DILocation(line: 811, column: 46, scope: !2158)
!2194 = !DILocation(line: 811, column: 49, scope: !2158)
!2195 = !DILocation(line: 808, column: 20, scope: !2158)
!2196 = !DILocation(line: 811, column: 62, scope: !2158)
!2197 = !DILocalVariable(name: "buf", scope: !2158, file: !122, line: 812, type: !22)
!2198 = !DILocation(line: 812, column: 9, scope: !2158)
!2199 = !DILocation(line: 812, column: 27, scope: !2158)
!2200 = !DILocation(line: 812, column: 15, scope: !2158)
!2201 = !DILocation(line: 813, column: 29, scope: !2158)
!2202 = !DILocation(line: 813, column: 34, scope: !2158)
!2203 = !DILocation(line: 813, column: 43, scope: !2158)
!2204 = !DILocation(line: 813, column: 48, scope: !2158)
!2205 = !DILocation(line: 813, column: 57, scope: !2158)
!2206 = !DILocation(line: 813, column: 60, scope: !2158)
!2207 = !DILocation(line: 813, column: 67, scope: !2158)
!2208 = !DILocation(line: 814, column: 29, scope: !2158)
!2209 = !DILocation(line: 814, column: 32, scope: !2158)
!2210 = !DILocation(line: 815, column: 29, scope: !2158)
!2211 = !DILocation(line: 815, column: 32, scope: !2158)
!2212 = !DILocation(line: 815, column: 44, scope: !2158)
!2213 = !DILocation(line: 815, column: 47, scope: !2158)
!2214 = !DILocation(line: 813, column: 3, scope: !2158)
!2215 = !DILocation(line: 816, column: 11, scope: !2158)
!2216 = !DILocation(line: 816, column: 3, scope: !2158)
!2217 = !DILocation(line: 816, column: 9, scope: !2158)
!2218 = !DILocation(line: 817, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2158, file: !122, line: 817, column: 7)
!2220 = !DILocation(line: 817, column: 7, scope: !2158)
!2221 = !DILocation(line: 818, column: 13, scope: !2219)
!2222 = !DILocation(line: 818, column: 21, scope: !2219)
!2223 = !DILocation(line: 818, column: 6, scope: !2219)
!2224 = !DILocation(line: 818, column: 11, scope: !2219)
!2225 = !DILocation(line: 818, column: 5, scope: !2219)
!2226 = !DILocation(line: 819, column: 10, scope: !2158)
!2227 = !DILocation(line: 819, column: 3, scope: !2158)
!2228 = distinct !DISubprogram(name: "quotearg_free", scope: !122, file: !122, line: 837, type: !100, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2229 = !DILocalVariable(name: "sv", scope: !2228, file: !122, line: 839, type: !182)
!2230 = !DILocation(line: 839, column: 19, scope: !2228)
!2231 = !DILocation(line: 839, column: 24, scope: !2228)
!2232 = !DILocalVariable(name: "i", scope: !2233, file: !122, line: 840, type: !25)
!2233 = distinct !DILexicalBlock(scope: !2228, file: !122, line: 840, column: 3)
!2234 = !DILocation(line: 840, column: 12, scope: !2233)
!2235 = !DILocation(line: 840, column: 8, scope: !2233)
!2236 = !DILocation(line: 840, column: 19, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !122, line: 840, column: 3)
!2238 = !DILocation(line: 840, column: 23, scope: !2237)
!2239 = !DILocation(line: 840, column: 21, scope: !2237)
!2240 = !DILocation(line: 840, column: 3, scope: !2233)
!2241 = !DILocation(line: 841, column: 11, scope: !2237)
!2242 = !DILocation(line: 841, column: 14, scope: !2237)
!2243 = !DILocation(line: 841, column: 17, scope: !2237)
!2244 = !DILocation(line: 841, column: 5, scope: !2237)
!2245 = !DILocation(line: 840, column: 32, scope: !2237)
!2246 = !DILocation(line: 840, column: 3, scope: !2237)
!2247 = distinct !{!2247, !2240, !2248, !403}
!2248 = !DILocation(line: 841, column: 20, scope: !2233)
!2249 = !DILocation(line: 842, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2228, file: !122, line: 842, column: 7)
!2251 = !DILocation(line: 842, column: 13, scope: !2250)
!2252 = !DILocation(line: 842, column: 17, scope: !2250)
!2253 = !DILocation(line: 842, column: 7, scope: !2228)
!2254 = !DILocation(line: 844, column: 13, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2250, file: !122, line: 843, column: 5)
!2256 = !DILocation(line: 844, column: 19, scope: !2255)
!2257 = !DILocation(line: 844, column: 7, scope: !2255)
!2258 = !DILocation(line: 845, column: 21, scope: !2255)
!2259 = !DILocation(line: 846, column: 20, scope: !2255)
!2260 = !DILocation(line: 847, column: 5, scope: !2255)
!2261 = !DILocation(line: 848, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2228, file: !122, line: 848, column: 7)
!2263 = !DILocation(line: 848, column: 10, scope: !2262)
!2264 = !DILocation(line: 848, column: 7, scope: !2228)
!2265 = !DILocation(line: 850, column: 13, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2262, file: !122, line: 849, column: 5)
!2267 = !DILocation(line: 850, column: 7, scope: !2266)
!2268 = !DILocation(line: 851, column: 15, scope: !2266)
!2269 = !DILocation(line: 852, column: 5, scope: !2266)
!2270 = !DILocation(line: 853, column: 10, scope: !2228)
!2271 = !DILocation(line: 854, column: 1, scope: !2228)
!2272 = distinct !DISubprogram(name: "quotearg_n", scope: !122, file: !122, line: 919, type: !2273, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!22, !25, !42}
!2275 = !DILocalVariable(name: "n", arg: 1, scope: !2272, file: !122, line: 919, type: !25)
!2276 = !DILocation(line: 919, column: 17, scope: !2272)
!2277 = !DILocalVariable(name: "arg", arg: 2, scope: !2272, file: !122, line: 919, type: !42)
!2278 = !DILocation(line: 919, column: 32, scope: !2272)
!2279 = !DILocation(line: 921, column: 30, scope: !2272)
!2280 = !DILocation(line: 921, column: 33, scope: !2272)
!2281 = !DILocation(line: 921, column: 10, scope: !2272)
!2282 = !DILocation(line: 921, column: 3, scope: !2272)
!2283 = distinct !DISubprogram(name: "quotearg_n_options", scope: !122, file: !122, line: 866, type: !2284, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!22, !25, !42, !144, !1080}
!2286 = !DILocalVariable(name: "n", arg: 1, scope: !2283, file: !122, line: 866, type: !25)
!2287 = !DILocation(line: 866, column: 25, scope: !2283)
!2288 = !DILocalVariable(name: "arg", arg: 2, scope: !2283, file: !122, line: 866, type: !42)
!2289 = !DILocation(line: 866, column: 40, scope: !2283)
!2290 = !DILocalVariable(name: "argsize", arg: 3, scope: !2283, file: !122, line: 866, type: !144)
!2291 = !DILocation(line: 866, column: 52, scope: !2283)
!2292 = !DILocalVariable(name: "options", arg: 4, scope: !2283, file: !122, line: 867, type: !1080)
!2293 = !DILocation(line: 867, column: 51, scope: !2283)
!2294 = !DILocalVariable(name: "saved_errno", scope: !2283, file: !122, line: 869, type: !25)
!2295 = !DILocation(line: 869, column: 7, scope: !2283)
!2296 = !DILocation(line: 869, column: 21, scope: !2283)
!2297 = !DILocalVariable(name: "sv", scope: !2283, file: !122, line: 871, type: !182)
!2298 = !DILocation(line: 871, column: 19, scope: !2283)
!2299 = !DILocation(line: 871, column: 24, scope: !2283)
!2300 = !DILocalVariable(name: "nslots_max", scope: !2283, file: !122, line: 873, type: !25)
!2301 = !DILocation(line: 873, column: 7, scope: !2283)
!2302 = !DILocation(line: 874, column: 15, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2283, file: !122, line: 874, column: 7)
!2304 = !DILocation(line: 874, column: 12, scope: !2303)
!2305 = !DILocation(line: 874, column: 17, scope: !2303)
!2306 = !DILocation(line: 874, column: 20, scope: !2303)
!2307 = !DILocation(line: 874, column: 24, scope: !2303)
!2308 = !DILocation(line: 874, column: 22, scope: !2303)
!2309 = !DILocation(line: 874, column: 7, scope: !2283)
!2310 = !DILocation(line: 875, column: 5, scope: !2303)
!2311 = !DILocation(line: 877, column: 7, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2283, file: !122, line: 877, column: 7)
!2313 = !DILocation(line: 877, column: 17, scope: !2312)
!2314 = !DILocation(line: 877, column: 14, scope: !2312)
!2315 = !DILocation(line: 877, column: 7, scope: !2283)
!2316 = !DILocalVariable(name: "preallocated", scope: !2317, file: !122, line: 879, type: !67)
!2317 = distinct !DILexicalBlock(scope: !2312, file: !122, line: 878, column: 5)
!2318 = !DILocation(line: 879, column: 12, scope: !2317)
!2319 = !DILocation(line: 879, column: 28, scope: !2317)
!2320 = !DILocation(line: 879, column: 31, scope: !2317)
!2321 = !DILocalVariable(name: "new_nslots", scope: !2317, file: !122, line: 880, type: !256)
!2322 = !DILocation(line: 880, column: 13, scope: !2317)
!2323 = !DILocation(line: 880, column: 26, scope: !2317)
!2324 = !DILocation(line: 882, column: 31, scope: !2317)
!2325 = !DILocation(line: 882, column: 53, scope: !2317)
!2326 = !DILocation(line: 883, column: 31, scope: !2317)
!2327 = !DILocation(line: 883, column: 35, scope: !2317)
!2328 = !DILocation(line: 883, column: 33, scope: !2317)
!2329 = !DILocation(line: 883, column: 42, scope: !2317)
!2330 = !DILocation(line: 883, column: 47, scope: !2317)
!2331 = !DILocation(line: 882, column: 22, scope: !2317)
!2332 = !DILocation(line: 882, column: 20, scope: !2317)
!2333 = !DILocation(line: 882, column: 15, scope: !2317)
!2334 = !DILocation(line: 884, column: 11, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2317, file: !122, line: 884, column: 11)
!2336 = !DILocation(line: 884, column: 11, scope: !2317)
!2337 = !DILocation(line: 885, column: 10, scope: !2335)
!2338 = !DILocation(line: 885, column: 15, scope: !2335)
!2339 = !DILocation(line: 885, column: 9, scope: !2335)
!2340 = !DILocation(line: 886, column: 15, scope: !2317)
!2341 = !DILocation(line: 886, column: 20, scope: !2317)
!2342 = !DILocation(line: 886, column: 18, scope: !2317)
!2343 = !DILocation(line: 886, column: 7, scope: !2317)
!2344 = !DILocation(line: 886, column: 32, scope: !2317)
!2345 = !DILocation(line: 886, column: 45, scope: !2317)
!2346 = !DILocation(line: 886, column: 43, scope: !2317)
!2347 = !DILocation(line: 886, column: 53, scope: !2317)
!2348 = !DILocation(line: 887, column: 16, scope: !2317)
!2349 = !DILocation(line: 887, column: 14, scope: !2317)
!2350 = !DILocation(line: 888, column: 5, scope: !2317)
!2351 = !DILocalVariable(name: "size", scope: !2352, file: !122, line: 891, type: !144)
!2352 = distinct !DILexicalBlock(scope: !2283, file: !122, line: 890, column: 3)
!2353 = !DILocation(line: 891, column: 12, scope: !2352)
!2354 = !DILocation(line: 891, column: 19, scope: !2352)
!2355 = !DILocation(line: 891, column: 22, scope: !2352)
!2356 = !DILocation(line: 891, column: 25, scope: !2352)
!2357 = !DILocalVariable(name: "val", scope: !2352, file: !122, line: 892, type: !22)
!2358 = !DILocation(line: 892, column: 11, scope: !2352)
!2359 = !DILocation(line: 892, column: 17, scope: !2352)
!2360 = !DILocation(line: 892, column: 20, scope: !2352)
!2361 = !DILocation(line: 892, column: 23, scope: !2352)
!2362 = !DILocalVariable(name: "flags", scope: !2352, file: !122, line: 894, type: !25)
!2363 = !DILocation(line: 894, column: 9, scope: !2352)
!2364 = !DILocation(line: 894, column: 17, scope: !2352)
!2365 = !DILocation(line: 894, column: 26, scope: !2352)
!2366 = !DILocation(line: 894, column: 32, scope: !2352)
!2367 = !DILocalVariable(name: "qsize", scope: !2352, file: !122, line: 895, type: !144)
!2368 = !DILocation(line: 895, column: 12, scope: !2352)
!2369 = !DILocation(line: 895, column: 46, scope: !2352)
!2370 = !DILocation(line: 895, column: 51, scope: !2352)
!2371 = !DILocation(line: 895, column: 57, scope: !2352)
!2372 = !DILocation(line: 895, column: 62, scope: !2352)
!2373 = !DILocation(line: 896, column: 46, scope: !2352)
!2374 = !DILocation(line: 896, column: 55, scope: !2352)
!2375 = !DILocation(line: 896, column: 62, scope: !2352)
!2376 = !DILocation(line: 897, column: 46, scope: !2352)
!2377 = !DILocation(line: 897, column: 55, scope: !2352)
!2378 = !DILocation(line: 898, column: 46, scope: !2352)
!2379 = !DILocation(line: 898, column: 55, scope: !2352)
!2380 = !DILocation(line: 899, column: 46, scope: !2352)
!2381 = !DILocation(line: 899, column: 55, scope: !2352)
!2382 = !DILocation(line: 895, column: 20, scope: !2352)
!2383 = !DILocation(line: 901, column: 9, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2352, file: !122, line: 901, column: 9)
!2385 = !DILocation(line: 901, column: 17, scope: !2384)
!2386 = !DILocation(line: 901, column: 14, scope: !2384)
!2387 = !DILocation(line: 901, column: 9, scope: !2352)
!2388 = !DILocation(line: 903, column: 29, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !122, line: 902, column: 7)
!2390 = !DILocation(line: 903, column: 35, scope: !2389)
!2391 = !DILocation(line: 903, column: 27, scope: !2389)
!2392 = !DILocation(line: 903, column: 9, scope: !2389)
!2393 = !DILocation(line: 903, column: 12, scope: !2389)
!2394 = !DILocation(line: 903, column: 15, scope: !2389)
!2395 = !DILocation(line: 903, column: 20, scope: !2389)
!2396 = !DILocation(line: 904, column: 13, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2389, file: !122, line: 904, column: 13)
!2398 = !DILocation(line: 904, column: 17, scope: !2397)
!2399 = !DILocation(line: 904, column: 13, scope: !2389)
!2400 = !DILocation(line: 905, column: 17, scope: !2397)
!2401 = !DILocation(line: 905, column: 11, scope: !2397)
!2402 = !DILocation(line: 906, column: 39, scope: !2389)
!2403 = !DILocation(line: 906, column: 27, scope: !2389)
!2404 = !DILocation(line: 906, column: 25, scope: !2389)
!2405 = !DILocation(line: 906, column: 9, scope: !2389)
!2406 = !DILocation(line: 906, column: 12, scope: !2389)
!2407 = !DILocation(line: 906, column: 15, scope: !2389)
!2408 = !DILocation(line: 906, column: 19, scope: !2389)
!2409 = !DILocation(line: 907, column: 35, scope: !2389)
!2410 = !DILocation(line: 907, column: 40, scope: !2389)
!2411 = !DILocation(line: 907, column: 46, scope: !2389)
!2412 = !DILocation(line: 907, column: 51, scope: !2389)
!2413 = !DILocation(line: 907, column: 60, scope: !2389)
!2414 = !DILocation(line: 907, column: 69, scope: !2389)
!2415 = !DILocation(line: 908, column: 35, scope: !2389)
!2416 = !DILocation(line: 908, column: 42, scope: !2389)
!2417 = !DILocation(line: 908, column: 51, scope: !2389)
!2418 = !DILocation(line: 909, column: 35, scope: !2389)
!2419 = !DILocation(line: 909, column: 44, scope: !2389)
!2420 = !DILocation(line: 910, column: 35, scope: !2389)
!2421 = !DILocation(line: 910, column: 44, scope: !2389)
!2422 = !DILocation(line: 907, column: 9, scope: !2389)
!2423 = !DILocation(line: 911, column: 7, scope: !2389)
!2424 = !DILocation(line: 913, column: 13, scope: !2352)
!2425 = !DILocation(line: 913, column: 5, scope: !2352)
!2426 = !DILocation(line: 913, column: 11, scope: !2352)
!2427 = !DILocation(line: 914, column: 12, scope: !2352)
!2428 = !DILocation(line: 914, column: 5, scope: !2352)
!2429 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !122, file: !122, line: 925, type: !2430, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!22, !25, !42, !144}
!2432 = !DILocalVariable(name: "n", arg: 1, scope: !2429, file: !122, line: 925, type: !25)
!2433 = !DILocation(line: 925, column: 21, scope: !2429)
!2434 = !DILocalVariable(name: "arg", arg: 2, scope: !2429, file: !122, line: 925, type: !42)
!2435 = !DILocation(line: 925, column: 36, scope: !2429)
!2436 = !DILocalVariable(name: "argsize", arg: 3, scope: !2429, file: !122, line: 925, type: !144)
!2437 = !DILocation(line: 925, column: 48, scope: !2429)
!2438 = !DILocation(line: 927, column: 30, scope: !2429)
!2439 = !DILocation(line: 927, column: 33, scope: !2429)
!2440 = !DILocation(line: 927, column: 38, scope: !2429)
!2441 = !DILocation(line: 927, column: 10, scope: !2429)
!2442 = !DILocation(line: 927, column: 3, scope: !2429)
!2443 = distinct !DISubprogram(name: "quotearg", scope: !122, file: !122, line: 931, type: !744, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2444 = !DILocalVariable(name: "arg", arg: 1, scope: !2443, file: !122, line: 931, type: !42)
!2445 = !DILocation(line: 931, column: 23, scope: !2443)
!2446 = !DILocation(line: 933, column: 25, scope: !2443)
!2447 = !DILocation(line: 933, column: 10, scope: !2443)
!2448 = !DILocation(line: 933, column: 3, scope: !2443)
!2449 = distinct !DISubprogram(name: "quotearg_mem", scope: !122, file: !122, line: 937, type: !2450, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!22, !42, !144}
!2452 = !DILocalVariable(name: "arg", arg: 1, scope: !2449, file: !122, line: 937, type: !42)
!2453 = !DILocation(line: 937, column: 27, scope: !2449)
!2454 = !DILocalVariable(name: "argsize", arg: 2, scope: !2449, file: !122, line: 937, type: !144)
!2455 = !DILocation(line: 937, column: 39, scope: !2449)
!2456 = !DILocation(line: 939, column: 29, scope: !2449)
!2457 = !DILocation(line: 939, column: 34, scope: !2449)
!2458 = !DILocation(line: 939, column: 10, scope: !2449)
!2459 = !DILocation(line: 939, column: 3, scope: !2449)
!2460 = distinct !DISubprogram(name: "quotearg_n_style", scope: !122, file: !122, line: 943, type: !2461, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!22, !25, !124, !42}
!2463 = !DILocalVariable(name: "n", arg: 1, scope: !2460, file: !122, line: 943, type: !25)
!2464 = !DILocation(line: 943, column: 23, scope: !2460)
!2465 = !DILocalVariable(name: "s", arg: 2, scope: !2460, file: !122, line: 943, type: !124)
!2466 = !DILocation(line: 943, column: 45, scope: !2460)
!2467 = !DILocalVariable(name: "arg", arg: 3, scope: !2460, file: !122, line: 943, type: !42)
!2468 = !DILocation(line: 943, column: 60, scope: !2460)
!2469 = !DILocalVariable(name: "o", scope: !2460, file: !122, line: 945, type: !1081)
!2470 = !DILocation(line: 945, column: 32, scope: !2460)
!2471 = !DILocation(line: 945, column: 64, scope: !2460)
!2472 = !DILocation(line: 945, column: 36, scope: !2460)
!2473 = !DILocation(line: 946, column: 30, scope: !2460)
!2474 = !DILocation(line: 946, column: 33, scope: !2460)
!2475 = !DILocation(line: 946, column: 10, scope: !2460)
!2476 = !DILocation(line: 946, column: 3, scope: !2460)
!2477 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !122, file: !122, line: 183, type: !2478, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!156, !124}
!2480 = !DILocalVariable(name: "style", arg: 1, scope: !2477, file: !122, line: 183, type: !124)
!2481 = !DILocation(line: 183, column: 48, scope: !2477)
!2482 = !DILocalVariable(name: "o", scope: !2477, file: !122, line: 185, type: !156)
!2483 = !DILocation(line: 185, column: 26, scope: !2477)
!2484 = !DILocation(line: 186, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2477, file: !122, line: 186, column: 7)
!2486 = !DILocation(line: 186, column: 13, scope: !2485)
!2487 = !DILocation(line: 186, column: 7, scope: !2477)
!2488 = !DILocation(line: 187, column: 5, scope: !2485)
!2489 = !DILocation(line: 188, column: 13, scope: !2477)
!2490 = !DILocation(line: 188, column: 5, scope: !2477)
!2491 = !DILocation(line: 188, column: 11, scope: !2477)
!2492 = !DILocation(line: 189, column: 3, scope: !2477)
!2493 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !122, file: !122, line: 950, type: !2494, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!22, !25, !124, !42, !144}
!2496 = !DILocalVariable(name: "n", arg: 1, scope: !2493, file: !122, line: 950, type: !25)
!2497 = !DILocation(line: 950, column: 27, scope: !2493)
!2498 = !DILocalVariable(name: "s", arg: 2, scope: !2493, file: !122, line: 950, type: !124)
!2499 = !DILocation(line: 950, column: 49, scope: !2493)
!2500 = !DILocalVariable(name: "arg", arg: 3, scope: !2493, file: !122, line: 951, type: !42)
!2501 = !DILocation(line: 951, column: 35, scope: !2493)
!2502 = !DILocalVariable(name: "argsize", arg: 4, scope: !2493, file: !122, line: 951, type: !144)
!2503 = !DILocation(line: 951, column: 47, scope: !2493)
!2504 = !DILocalVariable(name: "o", scope: !2493, file: !122, line: 953, type: !1081)
!2505 = !DILocation(line: 953, column: 32, scope: !2493)
!2506 = !DILocation(line: 953, column: 64, scope: !2493)
!2507 = !DILocation(line: 953, column: 36, scope: !2493)
!2508 = !DILocation(line: 954, column: 30, scope: !2493)
!2509 = !DILocation(line: 954, column: 33, scope: !2493)
!2510 = !DILocation(line: 954, column: 38, scope: !2493)
!2511 = !DILocation(line: 954, column: 10, scope: !2493)
!2512 = !DILocation(line: 954, column: 3, scope: !2493)
!2513 = distinct !DISubprogram(name: "quotearg_style", scope: !122, file: !122, line: 958, type: !2514, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!22, !124, !42}
!2516 = !DILocalVariable(name: "s", arg: 1, scope: !2513, file: !122, line: 958, type: !124)
!2517 = !DILocation(line: 958, column: 36, scope: !2513)
!2518 = !DILocalVariable(name: "arg", arg: 2, scope: !2513, file: !122, line: 958, type: !42)
!2519 = !DILocation(line: 958, column: 51, scope: !2513)
!2520 = !DILocation(line: 960, column: 31, scope: !2513)
!2521 = !DILocation(line: 960, column: 34, scope: !2513)
!2522 = !DILocation(line: 960, column: 10, scope: !2513)
!2523 = !DILocation(line: 960, column: 3, scope: !2513)
!2524 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !122, file: !122, line: 964, type: !2525, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!22, !124, !42, !144}
!2527 = !DILocalVariable(name: "s", arg: 1, scope: !2524, file: !122, line: 964, type: !124)
!2528 = !DILocation(line: 964, column: 40, scope: !2524)
!2529 = !DILocalVariable(name: "arg", arg: 2, scope: !2524, file: !122, line: 964, type: !42)
!2530 = !DILocation(line: 964, column: 55, scope: !2524)
!2531 = !DILocalVariable(name: "argsize", arg: 3, scope: !2524, file: !122, line: 964, type: !144)
!2532 = !DILocation(line: 964, column: 67, scope: !2524)
!2533 = !DILocation(line: 966, column: 35, scope: !2524)
!2534 = !DILocation(line: 966, column: 38, scope: !2524)
!2535 = !DILocation(line: 966, column: 43, scope: !2524)
!2536 = !DILocation(line: 966, column: 10, scope: !2524)
!2537 = !DILocation(line: 966, column: 3, scope: !2524)
!2538 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !122, file: !122, line: 970, type: !2539, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!22, !42, !144, !23}
!2541 = !DILocalVariable(name: "arg", arg: 1, scope: !2538, file: !122, line: 970, type: !42)
!2542 = !DILocation(line: 970, column: 32, scope: !2538)
!2543 = !DILocalVariable(name: "argsize", arg: 2, scope: !2538, file: !122, line: 970, type: !144)
!2544 = !DILocation(line: 970, column: 44, scope: !2538)
!2545 = !DILocalVariable(name: "ch", arg: 3, scope: !2538, file: !122, line: 970, type: !23)
!2546 = !DILocation(line: 970, column: 58, scope: !2538)
!2547 = !DILocalVariable(name: "options", scope: !2538, file: !122, line: 972, type: !156)
!2548 = !DILocation(line: 972, column: 26, scope: !2538)
!2549 = !DILocation(line: 973, column: 13, scope: !2538)
!2550 = !DILocation(line: 974, column: 31, scope: !2538)
!2551 = !DILocation(line: 974, column: 3, scope: !2538)
!2552 = !DILocation(line: 975, column: 33, scope: !2538)
!2553 = !DILocation(line: 975, column: 38, scope: !2538)
!2554 = !DILocation(line: 975, column: 10, scope: !2538)
!2555 = !DILocation(line: 975, column: 3, scope: !2538)
!2556 = distinct !DISubprogram(name: "quotearg_char", scope: !122, file: !122, line: 979, type: !2557, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!22, !42, !23}
!2559 = !DILocalVariable(name: "arg", arg: 1, scope: !2556, file: !122, line: 979, type: !42)
!2560 = !DILocation(line: 979, column: 28, scope: !2556)
!2561 = !DILocalVariable(name: "ch", arg: 2, scope: !2556, file: !122, line: 979, type: !23)
!2562 = !DILocation(line: 979, column: 38, scope: !2556)
!2563 = !DILocation(line: 981, column: 29, scope: !2556)
!2564 = !DILocation(line: 981, column: 44, scope: !2556)
!2565 = !DILocation(line: 981, column: 10, scope: !2556)
!2566 = !DILocation(line: 981, column: 3, scope: !2556)
!2567 = distinct !DISubprogram(name: "quotearg_colon", scope: !122, file: !122, line: 985, type: !744, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2568 = !DILocalVariable(name: "arg", arg: 1, scope: !2567, file: !122, line: 985, type: !42)
!2569 = !DILocation(line: 985, column: 29, scope: !2567)
!2570 = !DILocation(line: 987, column: 25, scope: !2567)
!2571 = !DILocation(line: 987, column: 10, scope: !2567)
!2572 = !DILocation(line: 987, column: 3, scope: !2567)
!2573 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !122, file: !122, line: 991, type: !2450, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2574 = !DILocalVariable(name: "arg", arg: 1, scope: !2573, file: !122, line: 991, type: !42)
!2575 = !DILocation(line: 991, column: 33, scope: !2573)
!2576 = !DILocalVariable(name: "argsize", arg: 2, scope: !2573, file: !122, line: 991, type: !144)
!2577 = !DILocation(line: 991, column: 45, scope: !2573)
!2578 = !DILocation(line: 993, column: 29, scope: !2573)
!2579 = !DILocation(line: 993, column: 34, scope: !2573)
!2580 = !DILocation(line: 993, column: 10, scope: !2573)
!2581 = !DILocation(line: 993, column: 3, scope: !2573)
!2582 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !122, file: !122, line: 997, type: !2461, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2583 = !DILocalVariable(name: "n", arg: 1, scope: !2582, file: !122, line: 997, type: !25)
!2584 = !DILocation(line: 997, column: 29, scope: !2582)
!2585 = !DILocalVariable(name: "s", arg: 2, scope: !2582, file: !122, line: 997, type: !124)
!2586 = !DILocation(line: 997, column: 51, scope: !2582)
!2587 = !DILocalVariable(name: "arg", arg: 3, scope: !2582, file: !122, line: 997, type: !42)
!2588 = !DILocation(line: 997, column: 66, scope: !2582)
!2589 = !DILocalVariable(name: "options", scope: !2582, file: !122, line: 999, type: !156)
!2590 = !DILocation(line: 999, column: 26, scope: !2582)
!2591 = !DILocation(line: 1000, column: 41, scope: !2582)
!2592 = !DILocation(line: 1000, column: 13, scope: !2582)
!2593 = !DILocation(line: 1001, column: 3, scope: !2582)
!2594 = !DILocation(line: 1002, column: 30, scope: !2582)
!2595 = !DILocation(line: 1002, column: 33, scope: !2582)
!2596 = !DILocation(line: 1002, column: 10, scope: !2582)
!2597 = !DILocation(line: 1002, column: 3, scope: !2582)
!2598 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !122, file: !122, line: 1006, type: !2599, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!22, !25, !42, !42, !42}
!2601 = !DILocalVariable(name: "n", arg: 1, scope: !2598, file: !122, line: 1006, type: !25)
!2602 = !DILocation(line: 1006, column: 24, scope: !2598)
!2603 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2598, file: !122, line: 1006, type: !42)
!2604 = !DILocation(line: 1006, column: 39, scope: !2598)
!2605 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2598, file: !122, line: 1007, type: !42)
!2606 = !DILocation(line: 1007, column: 32, scope: !2598)
!2607 = !DILocalVariable(name: "arg", arg: 4, scope: !2598, file: !122, line: 1007, type: !42)
!2608 = !DILocation(line: 1007, column: 57, scope: !2598)
!2609 = !DILocation(line: 1009, column: 33, scope: !2598)
!2610 = !DILocation(line: 1009, column: 36, scope: !2598)
!2611 = !DILocation(line: 1009, column: 48, scope: !2598)
!2612 = !DILocation(line: 1009, column: 61, scope: !2598)
!2613 = !DILocation(line: 1009, column: 10, scope: !2598)
!2614 = !DILocation(line: 1009, column: 3, scope: !2598)
!2615 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !122, file: !122, line: 1014, type: !2616, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!22, !25, !42, !42, !42, !144}
!2618 = !DILocalVariable(name: "n", arg: 1, scope: !2615, file: !122, line: 1014, type: !25)
!2619 = !DILocation(line: 1014, column: 28, scope: !2615)
!2620 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2615, file: !122, line: 1014, type: !42)
!2621 = !DILocation(line: 1014, column: 43, scope: !2615)
!2622 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2615, file: !122, line: 1015, type: !42)
!2623 = !DILocation(line: 1015, column: 36, scope: !2615)
!2624 = !DILocalVariable(name: "arg", arg: 4, scope: !2615, file: !122, line: 1016, type: !42)
!2625 = !DILocation(line: 1016, column: 36, scope: !2615)
!2626 = !DILocalVariable(name: "argsize", arg: 5, scope: !2615, file: !122, line: 1016, type: !144)
!2627 = !DILocation(line: 1016, column: 48, scope: !2615)
!2628 = !DILocalVariable(name: "o", scope: !2615, file: !122, line: 1018, type: !156)
!2629 = !DILocation(line: 1018, column: 26, scope: !2615)
!2630 = !DILocation(line: 1018, column: 30, scope: !2615)
!2631 = !DILocation(line: 1019, column: 27, scope: !2615)
!2632 = !DILocation(line: 1019, column: 39, scope: !2615)
!2633 = !DILocation(line: 1019, column: 3, scope: !2615)
!2634 = !DILocation(line: 1020, column: 30, scope: !2615)
!2635 = !DILocation(line: 1020, column: 33, scope: !2615)
!2636 = !DILocation(line: 1020, column: 38, scope: !2615)
!2637 = !DILocation(line: 1020, column: 10, scope: !2615)
!2638 = !DILocation(line: 1020, column: 3, scope: !2615)
!2639 = distinct !DISubprogram(name: "quotearg_custom", scope: !122, file: !122, line: 1024, type: !2640, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!22, !42, !42, !42}
!2642 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2639, file: !122, line: 1024, type: !42)
!2643 = !DILocation(line: 1024, column: 30, scope: !2639)
!2644 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2639, file: !122, line: 1024, type: !42)
!2645 = !DILocation(line: 1024, column: 54, scope: !2639)
!2646 = !DILocalVariable(name: "arg", arg: 3, scope: !2639, file: !122, line: 1025, type: !42)
!2647 = !DILocation(line: 1025, column: 30, scope: !2639)
!2648 = !DILocation(line: 1027, column: 32, scope: !2639)
!2649 = !DILocation(line: 1027, column: 44, scope: !2639)
!2650 = !DILocation(line: 1027, column: 57, scope: !2639)
!2651 = !DILocation(line: 1027, column: 10, scope: !2639)
!2652 = !DILocation(line: 1027, column: 3, scope: !2639)
!2653 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !122, file: !122, line: 1031, type: !2654, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!22, !42, !42, !42, !144}
!2656 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2653, file: !122, line: 1031, type: !42)
!2657 = !DILocation(line: 1031, column: 34, scope: !2653)
!2658 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2653, file: !122, line: 1031, type: !42)
!2659 = !DILocation(line: 1031, column: 58, scope: !2653)
!2660 = !DILocalVariable(name: "arg", arg: 3, scope: !2653, file: !122, line: 1032, type: !42)
!2661 = !DILocation(line: 1032, column: 34, scope: !2653)
!2662 = !DILocalVariable(name: "argsize", arg: 4, scope: !2653, file: !122, line: 1032, type: !144)
!2663 = !DILocation(line: 1032, column: 46, scope: !2653)
!2664 = !DILocation(line: 1034, column: 36, scope: !2653)
!2665 = !DILocation(line: 1034, column: 48, scope: !2653)
!2666 = !DILocation(line: 1034, column: 61, scope: !2653)
!2667 = !DILocation(line: 1035, column: 33, scope: !2653)
!2668 = !DILocation(line: 1034, column: 10, scope: !2653)
!2669 = !DILocation(line: 1034, column: 3, scope: !2653)
!2670 = distinct !DISubprogram(name: "quote_n_mem", scope: !122, file: !122, line: 1049, type: !2671, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!42, !25, !42, !144}
!2673 = !DILocalVariable(name: "n", arg: 1, scope: !2670, file: !122, line: 1049, type: !25)
!2674 = !DILocation(line: 1049, column: 18, scope: !2670)
!2675 = !DILocalVariable(name: "arg", arg: 2, scope: !2670, file: !122, line: 1049, type: !42)
!2676 = !DILocation(line: 1049, column: 33, scope: !2670)
!2677 = !DILocalVariable(name: "argsize", arg: 3, scope: !2670, file: !122, line: 1049, type: !144)
!2678 = !DILocation(line: 1049, column: 45, scope: !2670)
!2679 = !DILocation(line: 1051, column: 30, scope: !2670)
!2680 = !DILocation(line: 1051, column: 33, scope: !2670)
!2681 = !DILocation(line: 1051, column: 38, scope: !2670)
!2682 = !DILocation(line: 1051, column: 10, scope: !2670)
!2683 = !DILocation(line: 1051, column: 3, scope: !2670)
!2684 = distinct !DISubprogram(name: "quote_mem", scope: !122, file: !122, line: 1055, type: !2685, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!42, !42, !144}
!2687 = !DILocalVariable(name: "arg", arg: 1, scope: !2684, file: !122, line: 1055, type: !42)
!2688 = !DILocation(line: 1055, column: 24, scope: !2684)
!2689 = !DILocalVariable(name: "argsize", arg: 2, scope: !2684, file: !122, line: 1055, type: !144)
!2690 = !DILocation(line: 1055, column: 36, scope: !2684)
!2691 = !DILocation(line: 1057, column: 26, scope: !2684)
!2692 = !DILocation(line: 1057, column: 31, scope: !2684)
!2693 = !DILocation(line: 1057, column: 10, scope: !2684)
!2694 = !DILocation(line: 1057, column: 3, scope: !2684)
!2695 = distinct !DISubprogram(name: "quote_n", scope: !122, file: !122, line: 1061, type: !2696, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!42, !25, !42}
!2698 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !122, line: 1061, type: !25)
!2699 = !DILocation(line: 1061, column: 14, scope: !2695)
!2700 = !DILocalVariable(name: "arg", arg: 2, scope: !2695, file: !122, line: 1061, type: !42)
!2701 = !DILocation(line: 1061, column: 29, scope: !2695)
!2702 = !DILocation(line: 1063, column: 23, scope: !2695)
!2703 = !DILocation(line: 1063, column: 26, scope: !2695)
!2704 = !DILocation(line: 1063, column: 10, scope: !2695)
!2705 = !DILocation(line: 1063, column: 3, scope: !2695)
!2706 = distinct !DISubprogram(name: "quote", scope: !122, file: !122, line: 1067, type: !2707, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !34)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!42, !42}
!2709 = !DILocalVariable(name: "arg", arg: 1, scope: !2706, file: !122, line: 1067, type: !42)
!2710 = !DILocation(line: 1067, column: 20, scope: !2706)
!2711 = !DILocation(line: 1069, column: 22, scope: !2706)
!2712 = !DILocation(line: 1069, column: 10, scope: !2706)
!2713 = !DILocation(line: 1069, column: 3, scope: !2706)
!2714 = distinct !DISubprogram(name: "streq", scope: !2715, file: !2715, line: 1359, type: !2716, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !233, retainedNodes: !34)
!2715 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!67, !42, !42}
!2718 = !DILocalVariable(name: "__s1", arg: 1, scope: !2714, file: !2715, line: 1359, type: !42)
!2719 = !DILocation(line: 1359, column: 20, scope: !2714)
!2720 = !DILocalVariable(name: "__s2", arg: 2, scope: !2714, file: !2715, line: 1359, type: !42)
!2721 = !DILocation(line: 1359, column: 38, scope: !2714)
!2722 = !DILocation(line: 1361, column: 19, scope: !2714)
!2723 = !DILocation(line: 1361, column: 25, scope: !2714)
!2724 = !DILocation(line: 1361, column: 11, scope: !2714)
!2725 = !DILocation(line: 1361, column: 10, scope: !2714)
!2726 = !DILocation(line: 1361, column: 3, scope: !2714)
!2727 = distinct !DISubprogram(name: "version_etc_arn", scope: !236, file: !236, line: 61, type: !2728, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !235, retainedNodes: !34)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{null, !2730, !42, !42, !42, !2783, !144}
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2732, line: 7, baseType: !2733)
!2732 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2734, line: 49, size: 1728, elements: !2735)
!2734 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2751, !2753, !2754, !2755, !2757, !2758, !2760, !2764, !2767, !2769, !2772, !2775, !2776, !2777, !2778, !2779}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2733, file: !2734, line: 51, baseType: !25, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2733, file: !2734, line: 54, baseType: !22, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2733, file: !2734, line: 55, baseType: !22, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2733, file: !2734, line: 56, baseType: !22, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2733, file: !2734, line: 57, baseType: !22, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2733, file: !2734, line: 58, baseType: !22, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2733, file: !2734, line: 59, baseType: !22, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2733, file: !2734, line: 60, baseType: !22, size: 64, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2733, file: !2734, line: 61, baseType: !22, size: 64, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2733, file: !2734, line: 64, baseType: !22, size: 64, offset: 576)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2733, file: !2734, line: 65, baseType: !22, size: 64, offset: 640)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2733, file: !2734, line: 66, baseType: !22, size: 64, offset: 704)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2733, file: !2734, line: 68, baseType: !2749, size: 64, offset: 768)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2734, line: 36, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2733, file: !2734, line: 70, baseType: !2752, size: 64, offset: 832)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2733, file: !2734, line: 72, baseType: !25, size: 32, offset: 896)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2733, file: !2734, line: 73, baseType: !25, size: 32, offset: 928)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2733, file: !2734, line: 74, baseType: !2756, size: 64, offset: 960)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1030, line: 152, baseType: !259)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2733, file: !2734, line: 77, baseType: !26, size: 16, offset: 1024)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2733, file: !2734, line: 78, baseType: !2759, size: 8, offset: 1040)
!2759 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2733, file: !2734, line: 79, baseType: !2761, size: 8, offset: 1048)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !2762)
!2762 = !{!2763}
!2763 = !DISubrange(count: 1)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2733, file: !2734, line: 81, baseType: !2765, size: 64, offset: 1088)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2734, line: 43, baseType: null)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2733, file: !2734, line: 89, baseType: !2768, size: 64, offset: 1152)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1030, line: 153, baseType: !259)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2733, file: !2734, line: 91, baseType: !2770, size: 64, offset: 1216)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2734, line: 37, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2733, file: !2734, line: 92, baseType: !2773, size: 64, offset: 1280)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2734, line: 38, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2733, file: !2734, line: 93, baseType: !2752, size: 64, offset: 1344)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2733, file: !2734, line: 94, baseType: !24, size: 64, offset: 1408)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2733, file: !2734, line: 95, baseType: !144, size: 64, offset: 1472)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2733, file: !2734, line: 96, baseType: !25, size: 32, offset: 1536)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2733, file: !2734, line: 98, baseType: !2780, size: 160, offset: 1568)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !2781)
!2781 = !{!2782}
!2782 = !DISubrange(count: 20)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!2784 = !DILocalVariable(name: "stream", arg: 1, scope: !2727, file: !236, line: 61, type: !2730)
!2785 = !DILocation(line: 61, column: 24, scope: !2727)
!2786 = !DILocalVariable(name: "command_name", arg: 2, scope: !2727, file: !236, line: 62, type: !42)
!2787 = !DILocation(line: 62, column: 30, scope: !2727)
!2788 = !DILocalVariable(name: "package", arg: 3, scope: !2727, file: !236, line: 62, type: !42)
!2789 = !DILocation(line: 62, column: 56, scope: !2727)
!2790 = !DILocalVariable(name: "version", arg: 4, scope: !2727, file: !236, line: 63, type: !42)
!2791 = !DILocation(line: 63, column: 30, scope: !2727)
!2792 = !DILocalVariable(name: "authors", arg: 5, scope: !2727, file: !236, line: 64, type: !2783)
!2793 = !DILocation(line: 64, column: 39, scope: !2727)
!2794 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2727, file: !236, line: 64, type: !144)
!2795 = !DILocation(line: 64, column: 55, scope: !2727)
!2796 = !DILocation(line: 66, column: 7, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2727, file: !236, line: 66, column: 7)
!2798 = !DILocation(line: 66, column: 7, scope: !2727)
!2799 = !DILocation(line: 67, column: 14, scope: !2797)
!2800 = !DILocation(line: 67, column: 38, scope: !2797)
!2801 = !DILocation(line: 67, column: 52, scope: !2797)
!2802 = !DILocation(line: 67, column: 61, scope: !2797)
!2803 = !DILocation(line: 67, column: 5, scope: !2797)
!2804 = !DILocation(line: 69, column: 14, scope: !2797)
!2805 = !DILocation(line: 69, column: 33, scope: !2797)
!2806 = !DILocation(line: 69, column: 42, scope: !2797)
!2807 = !DILocation(line: 69, column: 5, scope: !2797)
!2808 = !DILocation(line: 83, column: 12, scope: !2727)
!2809 = !DILocation(line: 83, column: 43, scope: !2727)
!2810 = !DILocation(line: 83, column: 3, scope: !2727)
!2811 = !DILocation(line: 85, column: 3, scope: !2727)
!2812 = !DILocation(line: 88, column: 12, scope: !2727)
!2813 = !DILocation(line: 88, column: 20, scope: !2727)
!2814 = !DILocation(line: 88, column: 3, scope: !2727)
!2815 = !DILocation(line: 95, column: 3, scope: !2727)
!2816 = !DILocation(line: 97, column: 11, scope: !2727)
!2817 = !DILocation(line: 97, column: 3, scope: !2727)
!2818 = !DILocation(line: 102, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2727, file: !236, line: 98, column: 5)
!2820 = !DILocation(line: 105, column: 16, scope: !2819)
!2821 = !DILocation(line: 105, column: 24, scope: !2819)
!2822 = !DILocation(line: 105, column: 47, scope: !2819)
!2823 = !DILocation(line: 105, column: 7, scope: !2819)
!2824 = !DILocation(line: 106, column: 7, scope: !2819)
!2825 = !DILocation(line: 109, column: 16, scope: !2819)
!2826 = !DILocation(line: 109, column: 24, scope: !2819)
!2827 = !DILocation(line: 109, column: 54, scope: !2819)
!2828 = !DILocation(line: 109, column: 66, scope: !2819)
!2829 = !DILocation(line: 109, column: 7, scope: !2819)
!2830 = !DILocation(line: 110, column: 7, scope: !2819)
!2831 = !DILocation(line: 113, column: 16, scope: !2819)
!2832 = !DILocation(line: 113, column: 24, scope: !2819)
!2833 = !DILocation(line: 114, column: 16, scope: !2819)
!2834 = !DILocation(line: 114, column: 28, scope: !2819)
!2835 = !DILocation(line: 114, column: 40, scope: !2819)
!2836 = !DILocation(line: 113, column: 7, scope: !2819)
!2837 = !DILocation(line: 115, column: 7, scope: !2819)
!2838 = !DILocation(line: 120, column: 16, scope: !2819)
!2839 = !DILocation(line: 120, column: 24, scope: !2819)
!2840 = !DILocation(line: 121, column: 16, scope: !2819)
!2841 = !DILocation(line: 121, column: 28, scope: !2819)
!2842 = !DILocation(line: 121, column: 40, scope: !2819)
!2843 = !DILocation(line: 121, column: 52, scope: !2819)
!2844 = !DILocation(line: 120, column: 7, scope: !2819)
!2845 = !DILocation(line: 122, column: 7, scope: !2819)
!2846 = !DILocation(line: 127, column: 16, scope: !2819)
!2847 = !DILocation(line: 127, column: 24, scope: !2819)
!2848 = !DILocation(line: 128, column: 16, scope: !2819)
!2849 = !DILocation(line: 128, column: 28, scope: !2819)
!2850 = !DILocation(line: 128, column: 40, scope: !2819)
!2851 = !DILocation(line: 128, column: 52, scope: !2819)
!2852 = !DILocation(line: 128, column: 64, scope: !2819)
!2853 = !DILocation(line: 127, column: 7, scope: !2819)
!2854 = !DILocation(line: 129, column: 7, scope: !2819)
!2855 = !DILocation(line: 134, column: 16, scope: !2819)
!2856 = !DILocation(line: 134, column: 24, scope: !2819)
!2857 = !DILocation(line: 135, column: 16, scope: !2819)
!2858 = !DILocation(line: 135, column: 28, scope: !2819)
!2859 = !DILocation(line: 135, column: 40, scope: !2819)
!2860 = !DILocation(line: 135, column: 52, scope: !2819)
!2861 = !DILocation(line: 135, column: 64, scope: !2819)
!2862 = !DILocation(line: 136, column: 16, scope: !2819)
!2863 = !DILocation(line: 134, column: 7, scope: !2819)
!2864 = !DILocation(line: 137, column: 7, scope: !2819)
!2865 = !DILocation(line: 142, column: 16, scope: !2819)
!2866 = !DILocation(line: 142, column: 24, scope: !2819)
!2867 = !DILocation(line: 143, column: 16, scope: !2819)
!2868 = !DILocation(line: 143, column: 28, scope: !2819)
!2869 = !DILocation(line: 143, column: 40, scope: !2819)
!2870 = !DILocation(line: 143, column: 52, scope: !2819)
!2871 = !DILocation(line: 143, column: 64, scope: !2819)
!2872 = !DILocation(line: 144, column: 16, scope: !2819)
!2873 = !DILocation(line: 144, column: 28, scope: !2819)
!2874 = !DILocation(line: 142, column: 7, scope: !2819)
!2875 = !DILocation(line: 145, column: 7, scope: !2819)
!2876 = !DILocation(line: 150, column: 16, scope: !2819)
!2877 = !DILocation(line: 150, column: 24, scope: !2819)
!2878 = !DILocation(line: 152, column: 17, scope: !2819)
!2879 = !DILocation(line: 152, column: 29, scope: !2819)
!2880 = !DILocation(line: 152, column: 41, scope: !2819)
!2881 = !DILocation(line: 152, column: 53, scope: !2819)
!2882 = !DILocation(line: 152, column: 65, scope: !2819)
!2883 = !DILocation(line: 153, column: 17, scope: !2819)
!2884 = !DILocation(line: 153, column: 29, scope: !2819)
!2885 = !DILocation(line: 153, column: 41, scope: !2819)
!2886 = !DILocation(line: 150, column: 7, scope: !2819)
!2887 = !DILocation(line: 154, column: 7, scope: !2819)
!2888 = !DILocation(line: 159, column: 16, scope: !2819)
!2889 = !DILocation(line: 159, column: 24, scope: !2819)
!2890 = !DILocation(line: 161, column: 16, scope: !2819)
!2891 = !DILocation(line: 161, column: 28, scope: !2819)
!2892 = !DILocation(line: 161, column: 40, scope: !2819)
!2893 = !DILocation(line: 161, column: 52, scope: !2819)
!2894 = !DILocation(line: 161, column: 64, scope: !2819)
!2895 = !DILocation(line: 162, column: 16, scope: !2819)
!2896 = !DILocation(line: 162, column: 28, scope: !2819)
!2897 = !DILocation(line: 162, column: 40, scope: !2819)
!2898 = !DILocation(line: 162, column: 52, scope: !2819)
!2899 = !DILocation(line: 159, column: 7, scope: !2819)
!2900 = !DILocation(line: 163, column: 7, scope: !2819)
!2901 = !DILocation(line: 170, column: 16, scope: !2819)
!2902 = !DILocation(line: 170, column: 24, scope: !2819)
!2903 = !DILocation(line: 172, column: 17, scope: !2819)
!2904 = !DILocation(line: 172, column: 29, scope: !2819)
!2905 = !DILocation(line: 172, column: 41, scope: !2819)
!2906 = !DILocation(line: 172, column: 53, scope: !2819)
!2907 = !DILocation(line: 172, column: 65, scope: !2819)
!2908 = !DILocation(line: 173, column: 17, scope: !2819)
!2909 = !DILocation(line: 173, column: 29, scope: !2819)
!2910 = !DILocation(line: 173, column: 41, scope: !2819)
!2911 = !DILocation(line: 173, column: 53, scope: !2819)
!2912 = !DILocation(line: 170, column: 7, scope: !2819)
!2913 = !DILocation(line: 174, column: 7, scope: !2819)
!2914 = !DILocation(line: 176, column: 1, scope: !2727)
!2915 = distinct !DISubprogram(name: "version_etc_ar", scope: !236, file: !236, line: 183, type: !2916, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !235, retainedNodes: !34)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{null, !2730, !42, !42, !42, !2783}
!2918 = !DILocalVariable(name: "stream", arg: 1, scope: !2915, file: !236, line: 183, type: !2730)
!2919 = !DILocation(line: 183, column: 23, scope: !2915)
!2920 = !DILocalVariable(name: "command_name", arg: 2, scope: !2915, file: !236, line: 184, type: !42)
!2921 = !DILocation(line: 184, column: 29, scope: !2915)
!2922 = !DILocalVariable(name: "package", arg: 3, scope: !2915, file: !236, line: 184, type: !42)
!2923 = !DILocation(line: 184, column: 55, scope: !2915)
!2924 = !DILocalVariable(name: "version", arg: 4, scope: !2915, file: !236, line: 185, type: !42)
!2925 = !DILocation(line: 185, column: 29, scope: !2915)
!2926 = !DILocalVariable(name: "authors", arg: 5, scope: !2915, file: !236, line: 185, type: !2783)
!2927 = !DILocation(line: 185, column: 59, scope: !2915)
!2928 = !DILocalVariable(name: "n_authors", scope: !2915, file: !236, line: 187, type: !144)
!2929 = !DILocation(line: 187, column: 10, scope: !2915)
!2930 = !DILocation(line: 189, column: 18, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2915, file: !236, line: 189, column: 3)
!2932 = !DILocation(line: 189, column: 8, scope: !2931)
!2933 = !DILocation(line: 189, column: 23, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2931, file: !236, line: 189, column: 3)
!2935 = !DILocation(line: 189, column: 31, scope: !2934)
!2936 = !DILocation(line: 189, column: 3, scope: !2931)
!2937 = !DILocation(line: 189, column: 52, scope: !2934)
!2938 = !DILocation(line: 189, column: 3, scope: !2934)
!2939 = distinct !{!2939, !2936, !2940, !403}
!2940 = !DILocation(line: 190, column: 5, scope: !2931)
!2941 = !DILocation(line: 191, column: 20, scope: !2915)
!2942 = !DILocation(line: 191, column: 28, scope: !2915)
!2943 = !DILocation(line: 191, column: 42, scope: !2915)
!2944 = !DILocation(line: 191, column: 51, scope: !2915)
!2945 = !DILocation(line: 191, column: 60, scope: !2915)
!2946 = !DILocation(line: 191, column: 69, scope: !2915)
!2947 = !DILocation(line: 191, column: 3, scope: !2915)
!2948 = !DILocation(line: 192, column: 1, scope: !2915)
!2949 = distinct !DISubprogram(name: "version_etc_va", scope: !236, file: !236, line: 199, type: !2950, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !235, retainedNodes: !34)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !2730, !42, !42, !42, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !80, line: 52, baseType: !2953)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !82, line: 32, baseType: !2954)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2955, baseType: !2956)
!2955 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !86, size: 256, elements: !2957)
!2957 = !{!2958, !2959, !2960, !2961, !2962}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2956, file: !2955, line: 192, baseType: !24, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2956, file: !2955, line: 192, baseType: !24, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2956, file: !2955, line: 192, baseType: !24, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2956, file: !2955, line: 192, baseType: !25, size: 32, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2956, file: !2955, line: 192, baseType: !25, size: 32, offset: 224)
!2963 = !DILocalVariable(name: "stream", arg: 1, scope: !2949, file: !236, line: 199, type: !2730)
!2964 = !DILocation(line: 199, column: 23, scope: !2949)
!2965 = !DILocalVariable(name: "command_name", arg: 2, scope: !2949, file: !236, line: 200, type: !42)
!2966 = !DILocation(line: 200, column: 29, scope: !2949)
!2967 = !DILocalVariable(name: "package", arg: 3, scope: !2949, file: !236, line: 200, type: !42)
!2968 = !DILocation(line: 200, column: 55, scope: !2949)
!2969 = !DILocalVariable(name: "version", arg: 4, scope: !2949, file: !236, line: 201, type: !42)
!2970 = !DILocation(line: 201, column: 29, scope: !2949)
!2971 = !DILocalVariable(name: "authors", arg: 5, scope: !2949, file: !236, line: 201, type: !2952)
!2972 = !DILocation(line: 201, column: 46, scope: !2949)
!2973 = !DILocalVariable(name: "n_authors", scope: !2949, file: !236, line: 203, type: !144)
!2974 = !DILocation(line: 203, column: 10, scope: !2949)
!2975 = !DILocalVariable(name: "authtab", scope: !2949, file: !236, line: 204, type: !2976)
!2976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 640, elements: !152)
!2977 = !DILocation(line: 204, column: 15, scope: !2949)
!2978 = !DILocation(line: 206, column: 18, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2949, file: !236, line: 206, column: 3)
!2980 = !DILocation(line: 206, column: 8, scope: !2979)
!2981 = !DILocation(line: 207, column: 8, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2979, file: !236, line: 206, column: 3)
!2983 = !DILocation(line: 207, column: 18, scope: !2982)
!2984 = !DILocation(line: 208, column: 10, scope: !2982)
!2985 = !DILocation(line: 208, column: 35, scope: !2982)
!2986 = !DILocation(line: 208, column: 22, scope: !2982)
!2987 = !DILocation(line: 208, column: 14, scope: !2982)
!2988 = !DILocation(line: 208, column: 33, scope: !2982)
!2989 = !DILocation(line: 208, column: 67, scope: !2982)
!2990 = !DILocation(line: 0, scope: !2982)
!2991 = !DILocation(line: 206, column: 3, scope: !2979)
!2992 = !DILocation(line: 209, column: 17, scope: !2982)
!2993 = !DILocation(line: 206, column: 3, scope: !2982)
!2994 = distinct !{!2994, !2991, !2995, !403}
!2995 = !DILocation(line: 210, column: 5, scope: !2979)
!2996 = !DILocation(line: 211, column: 20, scope: !2949)
!2997 = !DILocation(line: 211, column: 28, scope: !2949)
!2998 = !DILocation(line: 211, column: 42, scope: !2949)
!2999 = !DILocation(line: 211, column: 51, scope: !2949)
!3000 = !DILocation(line: 212, column: 20, scope: !2949)
!3001 = !DILocation(line: 212, column: 29, scope: !2949)
!3002 = !DILocation(line: 211, column: 3, scope: !2949)
!3003 = !DILocation(line: 213, column: 1, scope: !2949)
!3004 = distinct !DISubprogram(name: "version_etc", scope: !236, file: !236, line: 230, type: !3005, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !235, retainedNodes: !34)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !2730, !42, !42, !42, null}
!3007 = !DILocalVariable(name: "stream", arg: 1, scope: !3004, file: !236, line: 230, type: !2730)
!3008 = !DILocation(line: 230, column: 20, scope: !3004)
!3009 = !DILocalVariable(name: "command_name", arg: 2, scope: !3004, file: !236, line: 231, type: !42)
!3010 = !DILocation(line: 231, column: 26, scope: !3004)
!3011 = !DILocalVariable(name: "package", arg: 3, scope: !3004, file: !236, line: 231, type: !42)
!3012 = !DILocation(line: 231, column: 52, scope: !3004)
!3013 = !DILocalVariable(name: "version", arg: 4, scope: !3004, file: !236, line: 232, type: !42)
!3014 = !DILocation(line: 232, column: 26, scope: !3004)
!3015 = !DILocalVariable(name: "authors", scope: !3004, file: !236, line: 234, type: !2952)
!3016 = !DILocation(line: 234, column: 11, scope: !3004)
!3017 = !DILocation(line: 235, column: 3, scope: !3004)
!3018 = !DILocation(line: 236, column: 19, scope: !3004)
!3019 = !DILocation(line: 236, column: 27, scope: !3004)
!3020 = !DILocation(line: 236, column: 41, scope: !3004)
!3021 = !DILocation(line: 236, column: 50, scope: !3004)
!3022 = !DILocation(line: 236, column: 3, scope: !3004)
!3023 = !DILocation(line: 237, column: 3, scope: !3004)
!3024 = !DILocation(line: 238, column: 1, scope: !3004)
!3025 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !236, file: !236, line: 241, type: !100, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !235, retainedNodes: !34)
!3026 = !DILocation(line: 243, column: 3, scope: !3025)
!3027 = !DILocation(line: 248, column: 11, scope: !3025)
!3028 = !DILocation(line: 248, column: 3, scope: !3025)
!3029 = !DILocation(line: 254, column: 11, scope: !3025)
!3030 = !DILocation(line: 254, column: 3, scope: !3025)
!3031 = !DILocation(line: 259, column: 11, scope: !3025)
!3032 = !DILocation(line: 259, column: 3, scope: !3025)
!3033 = !DILocation(line: 261, column: 1, scope: !3025)
!3034 = distinct !DISubprogram(name: "xnrealloc", scope: !3035, file: !3035, line: 147, type: !3036, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3035 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!24, !24, !144, !144}
!3038 = !DILocalVariable(name: "p", arg: 1, scope: !3034, file: !3035, line: 147, type: !24)
!3039 = !DILocation(line: 147, column: 18, scope: !3034)
!3040 = !DILocalVariable(name: "n", arg: 2, scope: !3034, file: !3035, line: 147, type: !144)
!3041 = !DILocation(line: 147, column: 28, scope: !3034)
!3042 = !DILocalVariable(name: "s", arg: 3, scope: !3034, file: !3035, line: 147, type: !144)
!3043 = !DILocation(line: 147, column: 38, scope: !3034)
!3044 = !DILocation(line: 149, column: 25, scope: !3034)
!3045 = !DILocation(line: 149, column: 28, scope: !3034)
!3046 = !DILocation(line: 149, column: 31, scope: !3034)
!3047 = !DILocation(line: 149, column: 10, scope: !3034)
!3048 = !DILocation(line: 149, column: 3, scope: !3034)
!3049 = distinct !DISubprogram(name: "xreallocarray", scope: !242, file: !242, line: 83, type: !3036, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3050 = !DILocalVariable(name: "p", arg: 1, scope: !3049, file: !242, line: 83, type: !24)
!3051 = !DILocation(line: 83, column: 22, scope: !3049)
!3052 = !DILocalVariable(name: "n", arg: 2, scope: !3049, file: !242, line: 83, type: !144)
!3053 = !DILocation(line: 83, column: 32, scope: !3049)
!3054 = !DILocalVariable(name: "s", arg: 3, scope: !3049, file: !242, line: 83, type: !144)
!3055 = !DILocation(line: 83, column: 42, scope: !3049)
!3056 = !DILocation(line: 85, column: 39, scope: !3049)
!3057 = !DILocation(line: 85, column: 42, scope: !3049)
!3058 = !DILocation(line: 85, column: 45, scope: !3049)
!3059 = !DILocation(line: 85, column: 25, scope: !3049)
!3060 = !DILocation(line: 85, column: 10, scope: !3049)
!3061 = !DILocation(line: 85, column: 3, scope: !3049)
!3062 = distinct !DISubprogram(name: "check_nonnull", scope: !242, file: !242, line: 37, type: !3063, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!24, !24}
!3065 = !DILocalVariable(name: "p", arg: 1, scope: !3062, file: !242, line: 37, type: !24)
!3066 = !DILocation(line: 37, column: 22, scope: !3062)
!3067 = !DILocation(line: 39, column: 8, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3062, file: !242, line: 39, column: 7)
!3069 = !DILocation(line: 39, column: 7, scope: !3062)
!3070 = !DILocation(line: 40, column: 5, scope: !3068)
!3071 = !DILocation(line: 41, column: 10, scope: !3062)
!3072 = !DILocation(line: 41, column: 3, scope: !3062)
!3073 = distinct !DISubprogram(name: "xmalloc", scope: !242, file: !242, line: 47, type: !3074, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!24, !144}
!3076 = !DILocalVariable(name: "s", arg: 1, scope: !3073, file: !242, line: 47, type: !144)
!3077 = !DILocation(line: 47, column: 17, scope: !3073)
!3078 = !DILocation(line: 49, column: 33, scope: !3073)
!3079 = !DILocation(line: 49, column: 25, scope: !3073)
!3080 = !DILocation(line: 49, column: 10, scope: !3073)
!3081 = !DILocation(line: 49, column: 3, scope: !3073)
!3082 = distinct !DISubprogram(name: "ximalloc", scope: !242, file: !242, line: 53, type: !3083, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!24, !256}
!3085 = !DILocalVariable(name: "s", arg: 1, scope: !3082, file: !242, line: 53, type: !256)
!3086 = !DILocation(line: 53, column: 17, scope: !3082)
!3087 = !DILocation(line: 55, column: 34, scope: !3082)
!3088 = !DILocation(line: 55, column: 25, scope: !3082)
!3089 = !DILocation(line: 55, column: 10, scope: !3082)
!3090 = !DILocation(line: 55, column: 3, scope: !3082)
!3091 = distinct !DISubprogram(name: "xcharalloc", scope: !242, file: !242, line: 59, type: !3092, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!22, !144}
!3094 = !DILocalVariable(name: "n", arg: 1, scope: !3091, file: !242, line: 59, type: !144)
!3095 = !DILocation(line: 59, column: 20, scope: !3091)
!3096 = !DILocation(line: 61, column: 10, scope: !3091)
!3097 = !DILocation(line: 61, column: 3, scope: !3091)
!3098 = distinct !DISubprogram(name: "xrealloc", scope: !242, file: !242, line: 68, type: !3099, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!24, !24, !144}
!3101 = !DILocalVariable(name: "p", arg: 1, scope: !3098, file: !242, line: 68, type: !24)
!3102 = !DILocation(line: 68, column: 17, scope: !3098)
!3103 = !DILocalVariable(name: "s", arg: 2, scope: !3098, file: !242, line: 68, type: !144)
!3104 = !DILocation(line: 68, column: 27, scope: !3098)
!3105 = !DILocation(line: 70, column: 34, scope: !3098)
!3106 = !DILocation(line: 70, column: 37, scope: !3098)
!3107 = !DILocation(line: 70, column: 25, scope: !3098)
!3108 = !DILocation(line: 70, column: 10, scope: !3098)
!3109 = !DILocation(line: 70, column: 3, scope: !3098)
!3110 = distinct !DISubprogram(name: "xirealloc", scope: !242, file: !242, line: 74, type: !3111, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!24, !24, !256}
!3113 = !DILocalVariable(name: "p", arg: 1, scope: !3110, file: !242, line: 74, type: !24)
!3114 = !DILocation(line: 74, column: 18, scope: !3110)
!3115 = !DILocalVariable(name: "s", arg: 2, scope: !3110, file: !242, line: 74, type: !256)
!3116 = !DILocation(line: 74, column: 27, scope: !3110)
!3117 = !DILocation(line: 76, column: 35, scope: !3110)
!3118 = !DILocation(line: 76, column: 38, scope: !3110)
!3119 = !DILocation(line: 76, column: 25, scope: !3110)
!3120 = !DILocation(line: 76, column: 10, scope: !3110)
!3121 = !DILocation(line: 76, column: 3, scope: !3110)
!3122 = distinct !DISubprogram(name: "xireallocarray", scope: !242, file: !242, line: 89, type: !3123, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!24, !24, !256, !256}
!3125 = !DILocalVariable(name: "p", arg: 1, scope: !3122, file: !242, line: 89, type: !24)
!3126 = !DILocation(line: 89, column: 23, scope: !3122)
!3127 = !DILocalVariable(name: "n", arg: 2, scope: !3122, file: !242, line: 89, type: !256)
!3128 = !DILocation(line: 89, column: 32, scope: !3122)
!3129 = !DILocalVariable(name: "s", arg: 3, scope: !3122, file: !242, line: 89, type: !256)
!3130 = !DILocation(line: 89, column: 41, scope: !3122)
!3131 = !DILocation(line: 91, column: 40, scope: !3122)
!3132 = !DILocation(line: 91, column: 43, scope: !3122)
!3133 = !DILocation(line: 91, column: 46, scope: !3122)
!3134 = !DILocation(line: 91, column: 25, scope: !3122)
!3135 = !DILocation(line: 91, column: 10, scope: !3122)
!3136 = !DILocation(line: 91, column: 3, scope: !3122)
!3137 = distinct !DISubprogram(name: "xnmalloc", scope: !242, file: !242, line: 98, type: !3138, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!24, !144, !144}
!3140 = !DILocalVariable(name: "n", arg: 1, scope: !3137, file: !242, line: 98, type: !144)
!3141 = !DILocation(line: 98, column: 18, scope: !3137)
!3142 = !DILocalVariable(name: "s", arg: 2, scope: !3137, file: !242, line: 98, type: !144)
!3143 = !DILocation(line: 98, column: 28, scope: !3137)
!3144 = !DILocation(line: 100, column: 31, scope: !3137)
!3145 = !DILocation(line: 100, column: 34, scope: !3137)
!3146 = !DILocation(line: 100, column: 10, scope: !3137)
!3147 = !DILocation(line: 100, column: 3, scope: !3137)
!3148 = distinct !DISubprogram(name: "xinmalloc", scope: !242, file: !242, line: 104, type: !3149, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!24, !256, !256}
!3151 = !DILocalVariable(name: "n", arg: 1, scope: !3148, file: !242, line: 104, type: !256)
!3152 = !DILocation(line: 104, column: 18, scope: !3148)
!3153 = !DILocalVariable(name: "s", arg: 2, scope: !3148, file: !242, line: 104, type: !256)
!3154 = !DILocation(line: 104, column: 27, scope: !3148)
!3155 = !DILocation(line: 106, column: 32, scope: !3148)
!3156 = !DILocation(line: 106, column: 35, scope: !3148)
!3157 = !DILocation(line: 106, column: 10, scope: !3148)
!3158 = !DILocation(line: 106, column: 3, scope: !3148)
!3159 = distinct !DISubprogram(name: "x2realloc", scope: !242, file: !242, line: 116, type: !3160, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!24, !24, !248}
!3162 = !DILocalVariable(name: "p", arg: 1, scope: !3159, file: !242, line: 116, type: !24)
!3163 = !DILocation(line: 116, column: 18, scope: !3159)
!3164 = !DILocalVariable(name: "ps", arg: 2, scope: !3159, file: !242, line: 116, type: !248)
!3165 = !DILocation(line: 116, column: 29, scope: !3159)
!3166 = !DILocation(line: 118, column: 22, scope: !3159)
!3167 = !DILocation(line: 118, column: 25, scope: !3159)
!3168 = !DILocation(line: 118, column: 10, scope: !3159)
!3169 = !DILocation(line: 118, column: 3, scope: !3159)
!3170 = !DILocalVariable(name: "p", arg: 1, scope: !245, file: !242, line: 176, type: !24)
!3171 = !DILocation(line: 176, column: 19, scope: !245)
!3172 = !DILocalVariable(name: "pn", arg: 2, scope: !245, file: !242, line: 176, type: !248)
!3173 = !DILocation(line: 176, column: 30, scope: !245)
!3174 = !DILocalVariable(name: "s", arg: 3, scope: !245, file: !242, line: 176, type: !144)
!3175 = !DILocation(line: 176, column: 41, scope: !245)
!3176 = !DILocalVariable(name: "n", scope: !245, file: !242, line: 178, type: !144)
!3177 = !DILocation(line: 178, column: 10, scope: !245)
!3178 = !DILocation(line: 178, column: 15, scope: !245)
!3179 = !DILocation(line: 178, column: 14, scope: !245)
!3180 = !DILocation(line: 180, column: 9, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !245, file: !242, line: 180, column: 7)
!3182 = !DILocation(line: 180, column: 7, scope: !245)
!3183 = !DILocation(line: 182, column: 13, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !242, line: 182, column: 11)
!3185 = distinct !DILexicalBlock(scope: !3181, file: !242, line: 181, column: 5)
!3186 = !DILocation(line: 182, column: 11, scope: !3185)
!3187 = !DILocation(line: 190, column: 32, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3184, file: !242, line: 183, column: 9)
!3189 = !DILocation(line: 190, column: 30, scope: !3188)
!3190 = !DILocation(line: 190, column: 13, scope: !3188)
!3191 = !DILocation(line: 191, column: 17, scope: !3188)
!3192 = !DILocation(line: 191, column: 16, scope: !3188)
!3193 = !DILocation(line: 191, column: 13, scope: !3188)
!3194 = !DILocation(line: 192, column: 9, scope: !3188)
!3195 = !DILocation(line: 193, column: 5, scope: !3185)
!3196 = !DILocation(line: 197, column: 11, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !242, line: 197, column: 11)
!3198 = distinct !DILexicalBlock(scope: !3181, file: !242, line: 195, column: 5)
!3199 = !DILocation(line: 197, column: 11, scope: !3198)
!3200 = !DILocation(line: 198, column: 9, scope: !3197)
!3201 = !DILocation(line: 201, column: 22, scope: !245)
!3202 = !DILocation(line: 201, column: 25, scope: !245)
!3203 = !DILocation(line: 201, column: 28, scope: !245)
!3204 = !DILocation(line: 201, column: 7, scope: !245)
!3205 = !DILocation(line: 201, column: 5, scope: !245)
!3206 = !DILocation(line: 202, column: 9, scope: !245)
!3207 = !DILocation(line: 202, column: 4, scope: !245)
!3208 = !DILocation(line: 202, column: 7, scope: !245)
!3209 = !DILocation(line: 203, column: 10, scope: !245)
!3210 = !DILocation(line: 203, column: 3, scope: !245)
!3211 = !DILocalVariable(name: "pa", arg: 1, scope: !252, file: !242, line: 223, type: !24)
!3212 = !DILocation(line: 223, column: 16, scope: !252)
!3213 = !DILocalVariable(name: "pn", arg: 2, scope: !252, file: !242, line: 223, type: !255)
!3214 = !DILocation(line: 223, column: 27, scope: !252)
!3215 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !252, file: !242, line: 223, type: !256)
!3216 = !DILocation(line: 223, column: 37, scope: !252)
!3217 = !DILocalVariable(name: "n_max", arg: 4, scope: !252, file: !242, line: 223, type: !258)
!3218 = !DILocation(line: 223, column: 59, scope: !252)
!3219 = !DILocalVariable(name: "s", arg: 5, scope: !252, file: !242, line: 223, type: !256)
!3220 = !DILocation(line: 223, column: 72, scope: !252)
!3221 = !DILocalVariable(name: "n0", scope: !252, file: !242, line: 230, type: !256)
!3222 = !DILocation(line: 230, column: 9, scope: !252)
!3223 = !DILocation(line: 230, column: 15, scope: !252)
!3224 = !DILocation(line: 230, column: 14, scope: !252)
!3225 = !DILocalVariable(name: "n", scope: !252, file: !242, line: 237, type: !256)
!3226 = !DILocation(line: 237, column: 9, scope: !252)
!3227 = !DILocation(line: 238, column: 7, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !252, file: !242, line: 238, column: 7)
!3229 = !DILocation(line: 238, column: 7, scope: !252)
!3230 = !DILocation(line: 239, column: 7, scope: !3228)
!3231 = !DILocation(line: 239, column: 5, scope: !3228)
!3232 = !DILocation(line: 240, column: 12, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !252, file: !242, line: 240, column: 7)
!3234 = !DILocation(line: 240, column: 9, scope: !3233)
!3235 = !DILocation(line: 240, column: 18, scope: !3233)
!3236 = !DILocation(line: 240, column: 21, scope: !3233)
!3237 = !DILocation(line: 240, column: 29, scope: !3233)
!3238 = !DILocation(line: 240, column: 27, scope: !3233)
!3239 = !DILocation(line: 240, column: 7, scope: !252)
!3240 = !DILocation(line: 241, column: 9, scope: !3233)
!3241 = !DILocation(line: 241, column: 7, scope: !3233)
!3242 = !DILocation(line: 241, column: 5, scope: !3233)
!3243 = !DILocalVariable(name: "nbytes", scope: !252, file: !242, line: 248, type: !256)
!3244 = !DILocation(line: 248, column: 9, scope: !252)
!3245 = !DILocalVariable(name: "adjusted_nbytes", scope: !252, file: !242, line: 252, type: !256)
!3246 = !DILocation(line: 252, column: 9, scope: !252)
!3247 = !DILocation(line: 253, column: 8, scope: !252)
!3248 = !DILocation(line: 255, column: 10, scope: !252)
!3249 = !DILocation(line: 255, column: 17, scope: !252)
!3250 = !DILocation(line: 256, column: 7, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !252, file: !242, line: 256, column: 7)
!3252 = !DILocation(line: 256, column: 7, scope: !252)
!3253 = !DILocation(line: 258, column: 11, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3251, file: !242, line: 257, column: 5)
!3255 = !DILocation(line: 258, column: 29, scope: !3254)
!3256 = !DILocation(line: 258, column: 27, scope: !3254)
!3257 = !DILocation(line: 258, column: 9, scope: !3254)
!3258 = !DILocation(line: 259, column: 16, scope: !3254)
!3259 = !DILocation(line: 259, column: 34, scope: !3254)
!3260 = !DILocation(line: 259, column: 52, scope: !3254)
!3261 = !DILocation(line: 259, column: 50, scope: !3254)
!3262 = !DILocation(line: 259, column: 32, scope: !3254)
!3263 = !DILocation(line: 259, column: 14, scope: !3254)
!3264 = !DILocation(line: 260, column: 5, scope: !3254)
!3265 = !DILocation(line: 262, column: 9, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !252, file: !242, line: 262, column: 7)
!3267 = !DILocation(line: 262, column: 7, scope: !252)
!3268 = !DILocation(line: 263, column: 6, scope: !3266)
!3269 = !DILocation(line: 263, column: 9, scope: !3266)
!3270 = !DILocation(line: 263, column: 5, scope: !3266)
!3271 = !DILocation(line: 264, column: 7, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !252, file: !242, line: 264, column: 7)
!3273 = !DILocation(line: 264, column: 11, scope: !3272)
!3274 = !DILocation(line: 264, column: 9, scope: !3272)
!3275 = !DILocation(line: 264, column: 16, scope: !3272)
!3276 = !DILocation(line: 264, column: 14, scope: !3272)
!3277 = !DILocation(line: 265, column: 7, scope: !3272)
!3278 = !DILocation(line: 265, column: 11, scope: !3272)
!3279 = !DILocation(line: 266, column: 11, scope: !3272)
!3280 = !DILocation(line: 266, column: 20, scope: !3272)
!3281 = !DILocation(line: 266, column: 17, scope: !3272)
!3282 = !DILocation(line: 266, column: 26, scope: !3272)
!3283 = !DILocation(line: 266, column: 29, scope: !3272)
!3284 = !DILocation(line: 266, column: 37, scope: !3272)
!3285 = !DILocation(line: 266, column: 35, scope: !3272)
!3286 = !DILocation(line: 267, column: 11, scope: !3272)
!3287 = !DILocation(line: 267, column: 14, scope: !3272)
!3288 = !DILocation(line: 264, column: 7, scope: !252)
!3289 = !DILocation(line: 268, column: 5, scope: !3272)
!3290 = !DILocation(line: 269, column: 18, scope: !252)
!3291 = !DILocation(line: 269, column: 22, scope: !252)
!3292 = !DILocation(line: 269, column: 8, scope: !252)
!3293 = !DILocation(line: 269, column: 6, scope: !252)
!3294 = !DILocation(line: 270, column: 9, scope: !252)
!3295 = !DILocation(line: 270, column: 4, scope: !252)
!3296 = !DILocation(line: 270, column: 7, scope: !252)
!3297 = !DILocation(line: 271, column: 10, scope: !252)
!3298 = !DILocation(line: 271, column: 3, scope: !252)
!3299 = distinct !DISubprogram(name: "xzalloc", scope: !242, file: !242, line: 279, type: !3074, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3300 = !DILocalVariable(name: "s", arg: 1, scope: !3299, file: !242, line: 279, type: !144)
!3301 = !DILocation(line: 279, column: 17, scope: !3299)
!3302 = !DILocation(line: 281, column: 19, scope: !3299)
!3303 = !DILocation(line: 281, column: 10, scope: !3299)
!3304 = !DILocation(line: 281, column: 3, scope: !3299)
!3305 = distinct !DISubprogram(name: "xcalloc", scope: !242, file: !242, line: 294, type: !3138, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3306 = !DILocalVariable(name: "n", arg: 1, scope: !3305, file: !242, line: 294, type: !144)
!3307 = !DILocation(line: 294, column: 17, scope: !3305)
!3308 = !DILocalVariable(name: "s", arg: 2, scope: !3305, file: !242, line: 294, type: !144)
!3309 = !DILocation(line: 294, column: 27, scope: !3305)
!3310 = !DILocation(line: 296, column: 33, scope: !3305)
!3311 = !DILocation(line: 296, column: 36, scope: !3305)
!3312 = !DILocation(line: 296, column: 25, scope: !3305)
!3313 = !DILocation(line: 296, column: 10, scope: !3305)
!3314 = !DILocation(line: 296, column: 3, scope: !3305)
!3315 = distinct !DISubprogram(name: "xizalloc", scope: !242, file: !242, line: 285, type: !3083, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3316 = !DILocalVariable(name: "s", arg: 1, scope: !3315, file: !242, line: 285, type: !256)
!3317 = !DILocation(line: 285, column: 17, scope: !3315)
!3318 = !DILocation(line: 287, column: 20, scope: !3315)
!3319 = !DILocation(line: 287, column: 10, scope: !3315)
!3320 = !DILocation(line: 287, column: 3, scope: !3315)
!3321 = distinct !DISubprogram(name: "xicalloc", scope: !242, file: !242, line: 300, type: !3149, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3321, file: !242, line: 300, type: !256)
!3323 = !DILocation(line: 300, column: 17, scope: !3321)
!3324 = !DILocalVariable(name: "s", arg: 2, scope: !3321, file: !242, line: 300, type: !256)
!3325 = !DILocation(line: 300, column: 26, scope: !3321)
!3326 = !DILocation(line: 302, column: 34, scope: !3321)
!3327 = !DILocation(line: 302, column: 37, scope: !3321)
!3328 = !DILocation(line: 302, column: 25, scope: !3321)
!3329 = !DILocation(line: 302, column: 10, scope: !3321)
!3330 = !DILocation(line: 302, column: 3, scope: !3321)
!3331 = distinct !DISubprogram(name: "xmemdup", scope: !242, file: !242, line: 310, type: !3332, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!24, !3334, !144}
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3336 = !DILocalVariable(name: "p", arg: 1, scope: !3331, file: !242, line: 310, type: !3334)
!3337 = !DILocation(line: 310, column: 22, scope: !3331)
!3338 = !DILocalVariable(name: "s", arg: 2, scope: !3331, file: !242, line: 310, type: !144)
!3339 = !DILocation(line: 310, column: 32, scope: !3331)
!3340 = !DILocation(line: 312, column: 27, scope: !3331)
!3341 = !DILocation(line: 312, column: 18, scope: !3331)
!3342 = !DILocation(line: 312, column: 31, scope: !3331)
!3343 = !DILocation(line: 312, column: 34, scope: !3331)
!3344 = !DILocation(line: 312, column: 10, scope: !3331)
!3345 = !DILocation(line: 312, column: 3, scope: !3331)
!3346 = distinct !DISubprogram(name: "ximemdup", scope: !242, file: !242, line: 316, type: !3347, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!24, !3334, !256}
!3349 = !DILocalVariable(name: "p", arg: 1, scope: !3346, file: !242, line: 316, type: !3334)
!3350 = !DILocation(line: 316, column: 23, scope: !3346)
!3351 = !DILocalVariable(name: "s", arg: 2, scope: !3346, file: !242, line: 316, type: !256)
!3352 = !DILocation(line: 316, column: 32, scope: !3346)
!3353 = !DILocation(line: 318, column: 28, scope: !3346)
!3354 = !DILocation(line: 318, column: 18, scope: !3346)
!3355 = !DILocation(line: 318, column: 32, scope: !3346)
!3356 = !DILocation(line: 318, column: 35, scope: !3346)
!3357 = !DILocation(line: 318, column: 10, scope: !3346)
!3358 = !DILocation(line: 318, column: 3, scope: !3346)
!3359 = distinct !DISubprogram(name: "ximemdup0", scope: !242, file: !242, line: 325, type: !3360, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!22, !3334, !256}
!3362 = !DILocalVariable(name: "p", arg: 1, scope: !3359, file: !242, line: 325, type: !3334)
!3363 = !DILocation(line: 325, column: 24, scope: !3359)
!3364 = !DILocalVariable(name: "s", arg: 2, scope: !3359, file: !242, line: 325, type: !256)
!3365 = !DILocation(line: 325, column: 33, scope: !3359)
!3366 = !DILocalVariable(name: "result", scope: !3359, file: !242, line: 327, type: !22)
!3367 = !DILocation(line: 327, column: 9, scope: !3359)
!3368 = !DILocation(line: 327, column: 28, scope: !3359)
!3369 = !DILocation(line: 327, column: 30, scope: !3359)
!3370 = !DILocation(line: 327, column: 18, scope: !3359)
!3371 = !DILocation(line: 328, column: 3, scope: !3359)
!3372 = !DILocation(line: 328, column: 10, scope: !3359)
!3373 = !DILocation(line: 328, column: 13, scope: !3359)
!3374 = !DILocation(line: 329, column: 18, scope: !3359)
!3375 = !DILocation(line: 329, column: 26, scope: !3359)
!3376 = !DILocation(line: 329, column: 29, scope: !3359)
!3377 = !DILocation(line: 329, column: 10, scope: !3359)
!3378 = !DILocation(line: 329, column: 3, scope: !3359)
!3379 = distinct !DISubprogram(name: "xstrdup", scope: !242, file: !242, line: 335, type: !744, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !34)
!3380 = !DILocalVariable(name: "string", arg: 1, scope: !3379, file: !242, line: 335, type: !42)
!3381 = !DILocation(line: 335, column: 22, scope: !3379)
!3382 = !DILocation(line: 337, column: 19, scope: !3379)
!3383 = !DILocation(line: 337, column: 35, scope: !3379)
!3384 = !DILocation(line: 337, column: 27, scope: !3379)
!3385 = !DILocation(line: 337, column: 43, scope: !3379)
!3386 = !DILocation(line: 337, column: 10, scope: !3379)
!3387 = !DILocation(line: 337, column: 3, scope: !3379)
!3388 = distinct !DISubprogram(name: "xalloc_die", scope: !262, file: !262, line: 32, type: !100, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !261, retainedNodes: !34)
!3389 = !DILocalVariable(name: "__errstatus", scope: !3390, file: !262, line: 34, type: !3391)
!3390 = distinct !DILexicalBlock(scope: !3388, file: !262, line: 34, column: 3)
!3391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!3392 = !DILocation(line: 34, column: 3, scope: !3390)
!3393 = !DILocation(line: 40, column: 3, scope: !3388)
!3394 = distinct !DISubprogram(name: "last_component", scope: !264, file: !264, line: 29, type: !744, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !34)
!3395 = !DILocalVariable(name: "name", arg: 1, scope: !3394, file: !264, line: 29, type: !42)
!3396 = !DILocation(line: 29, column: 29, scope: !3394)
!3397 = !DILocalVariable(name: "base", scope: !3394, file: !264, line: 31, type: !42)
!3398 = !DILocation(line: 31, column: 15, scope: !3394)
!3399 = !DILocation(line: 31, column: 22, scope: !3394)
!3400 = !DILocation(line: 31, column: 29, scope: !3394)
!3401 = !DILocation(line: 31, column: 27, scope: !3394)
!3402 = !DILocation(line: 32, column: 3, scope: !3394)
!3403 = !DILocation(line: 32, column: 10, scope: !3394)
!3404 = !DILocation(line: 33, column: 9, scope: !3394)
!3405 = distinct !{!3405, !3402, !3404, !403}
!3406 = !DILocalVariable(name: "last_was_slash", scope: !3394, file: !264, line: 35, type: !67)
!3407 = !DILocation(line: 35, column: 8, scope: !3394)
!3408 = !DILocalVariable(name: "p", scope: !3409, file: !264, line: 36, type: !42)
!3409 = distinct !DILexicalBlock(scope: !3394, file: !264, line: 36, column: 3)
!3410 = !DILocation(line: 36, column: 20, scope: !3409)
!3411 = !DILocation(line: 36, column: 24, scope: !3409)
!3412 = !DILocation(line: 36, column: 8, scope: !3409)
!3413 = !DILocation(line: 36, column: 31, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3409, file: !264, line: 36, column: 3)
!3415 = !DILocation(line: 36, column: 30, scope: !3414)
!3416 = !DILocation(line: 36, column: 3, scope: !3409)
!3417 = !DILocation(line: 38, column: 11, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !264, line: 38, column: 11)
!3419 = distinct !DILexicalBlock(scope: !3414, file: !264, line: 37, column: 5)
!3420 = !DILocation(line: 38, column: 11, scope: !3419)
!3421 = !DILocation(line: 39, column: 24, scope: !3418)
!3422 = !DILocation(line: 39, column: 9, scope: !3418)
!3423 = !DILocation(line: 40, column: 16, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3418, file: !264, line: 40, column: 16)
!3425 = !DILocation(line: 40, column: 16, scope: !3418)
!3426 = !DILocation(line: 42, column: 18, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3424, file: !264, line: 41, column: 9)
!3428 = !DILocation(line: 42, column: 16, scope: !3427)
!3429 = !DILocation(line: 43, column: 26, scope: !3427)
!3430 = !DILocation(line: 44, column: 9, scope: !3427)
!3431 = !DILocation(line: 45, column: 5, scope: !3419)
!3432 = !DILocation(line: 36, column: 35, scope: !3414)
!3433 = !DILocation(line: 36, column: 3, scope: !3414)
!3434 = distinct !{!3434, !3416, !3435, !403}
!3435 = !DILocation(line: 45, column: 5, scope: !3409)
!3436 = !DILocation(line: 47, column: 19, scope: !3394)
!3437 = !DILocation(line: 47, column: 3, scope: !3394)
!3438 = distinct !DISubprogram(name: "base_len", scope: !264, file: !264, line: 51, type: !707, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !34)
!3439 = !DILocalVariable(name: "name", arg: 1, scope: !3438, file: !264, line: 51, type: !42)
!3440 = !DILocation(line: 51, column: 23, scope: !3438)
!3441 = !DILocalVariable(name: "len", scope: !3438, file: !264, line: 53, type: !144)
!3442 = !DILocation(line: 53, column: 10, scope: !3438)
!3443 = !DILocation(line: 54, column: 22, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3438, file: !264, line: 54, column: 3)
!3445 = !DILocation(line: 54, column: 14, scope: !3444)
!3446 = !DILocation(line: 54, column: 12, scope: !3444)
!3447 = !DILocation(line: 54, column: 8, scope: !3444)
!3448 = !DILocation(line: 54, column: 34, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3444, file: !264, line: 54, column: 3)
!3450 = !DILocation(line: 54, column: 32, scope: !3449)
!3451 = !DILocation(line: 54, column: 38, scope: !3449)
!3452 = !DILocation(line: 54, column: 41, scope: !3449)
!3453 = !DILocation(line: 0, scope: !3449)
!3454 = !DILocation(line: 54, column: 3, scope: !3444)
!3455 = !DILocation(line: 55, column: 5, scope: !3449)
!3456 = !DILocation(line: 54, column: 70, scope: !3449)
!3457 = !DILocation(line: 54, column: 3, scope: !3449)
!3458 = distinct !{!3458, !3454, !3459, !403}
!3459 = !DILocation(line: 55, column: 5, scope: !3444)
!3460 = !DILocalVariable(name: "prefix_len", scope: !3438, file: !264, line: 61, type: !144)
!3461 = !DILocation(line: 61, column: 10, scope: !3438)
!3462 = !DILocation(line: 61, column: 23, scope: !3438)
!3463 = !DILocation(line: 66, column: 10, scope: !3438)
!3464 = !DILocation(line: 66, column: 3, scope: !3438)
!3465 = distinct !DISubprogram(name: "c32isprint", scope: !3466, file: !3466, line: 41, type: !3467, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !34)
!3466 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!25, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3470, line: 20, baseType: !7)
!3470 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3471 = !DILocalVariable(name: "wc", arg: 1, scope: !3465, file: !3466, line: 41, type: !3469)
!3472 = !DILocation(line: 41, column: 14, scope: !3465)
!3473 = !DILocation(line: 66, column: 22, scope: !3465)
!3474 = !DILocation(line: 66, column: 10, scope: !3465)
!3475 = !DILocation(line: 66, column: 3, scope: !3465)
!3476 = distinct !DISubprogram(name: "close_stream", scope: !268, file: !268, line: 55, type: !3477, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !34)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!25, !3479}
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2732, line: 7, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2734, line: 49, size: 1728, elements: !3482)
!3482 = !{!3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3481, file: !2734, line: 51, baseType: !25, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3481, file: !2734, line: 54, baseType: !22, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3481, file: !2734, line: 55, baseType: !22, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3481, file: !2734, line: 56, baseType: !22, size: 64, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3481, file: !2734, line: 57, baseType: !22, size: 64, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3481, file: !2734, line: 58, baseType: !22, size: 64, offset: 320)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3481, file: !2734, line: 59, baseType: !22, size: 64, offset: 384)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3481, file: !2734, line: 60, baseType: !22, size: 64, offset: 448)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3481, file: !2734, line: 61, baseType: !22, size: 64, offset: 512)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3481, file: !2734, line: 64, baseType: !22, size: 64, offset: 576)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3481, file: !2734, line: 65, baseType: !22, size: 64, offset: 640)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3481, file: !2734, line: 66, baseType: !22, size: 64, offset: 704)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3481, file: !2734, line: 68, baseType: !2749, size: 64, offset: 768)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3481, file: !2734, line: 70, baseType: !3497, size: 64, offset: 832)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3481, file: !2734, line: 72, baseType: !25, size: 32, offset: 896)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3481, file: !2734, line: 73, baseType: !25, size: 32, offset: 928)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3481, file: !2734, line: 74, baseType: !2756, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3481, file: !2734, line: 77, baseType: !26, size: 16, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3481, file: !2734, line: 78, baseType: !2759, size: 8, offset: 1040)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3481, file: !2734, line: 79, baseType: !2761, size: 8, offset: 1048)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3481, file: !2734, line: 81, baseType: !2765, size: 64, offset: 1088)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3481, file: !2734, line: 89, baseType: !2768, size: 64, offset: 1152)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3481, file: !2734, line: 91, baseType: !2770, size: 64, offset: 1216)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3481, file: !2734, line: 92, baseType: !2773, size: 64, offset: 1280)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3481, file: !2734, line: 93, baseType: !3497, size: 64, offset: 1344)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3481, file: !2734, line: 94, baseType: !24, size: 64, offset: 1408)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3481, file: !2734, line: 95, baseType: !144, size: 64, offset: 1472)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3481, file: !2734, line: 96, baseType: !25, size: 32, offset: 1536)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3481, file: !2734, line: 98, baseType: !2780, size: 160, offset: 1568)
!3513 = !DILocalVariable(name: "stream", arg: 1, scope: !3476, file: !268, line: 55, type: !3479)
!3514 = !DILocation(line: 55, column: 21, scope: !3476)
!3515 = !DILocalVariable(name: "some_pending", scope: !3476, file: !268, line: 57, type: !3516)
!3516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!3517 = !DILocation(line: 57, column: 14, scope: !3476)
!3518 = !DILocation(line: 57, column: 42, scope: !3476)
!3519 = !DILocation(line: 57, column: 30, scope: !3476)
!3520 = !DILocation(line: 57, column: 50, scope: !3476)
!3521 = !DILocalVariable(name: "prev_fail", scope: !3476, file: !268, line: 58, type: !3516)
!3522 = !DILocation(line: 58, column: 14, scope: !3476)
!3523 = !DILocation(line: 58, column: 27, scope: !3476)
!3524 = !DILocation(line: 58, column: 43, scope: !3476)
!3525 = !DILocalVariable(name: "fclose_fail", scope: !3476, file: !268, line: 59, type: !3516)
!3526 = !DILocation(line: 59, column: 14, scope: !3476)
!3527 = !DILocation(line: 59, column: 37, scope: !3476)
!3528 = !DILocation(line: 59, column: 29, scope: !3476)
!3529 = !DILocation(line: 59, column: 45, scope: !3476)
!3530 = !DILocation(line: 69, column: 7, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3476, file: !268, line: 69, column: 7)
!3532 = !DILocation(line: 69, column: 17, scope: !3531)
!3533 = !DILocation(line: 69, column: 21, scope: !3531)
!3534 = !DILocation(line: 69, column: 33, scope: !3531)
!3535 = !DILocation(line: 69, column: 37, scope: !3531)
!3536 = !DILocation(line: 69, column: 50, scope: !3531)
!3537 = !DILocation(line: 69, column: 53, scope: !3531)
!3538 = !DILocation(line: 69, column: 59, scope: !3531)
!3539 = !DILocation(line: 69, column: 7, scope: !3476)
!3540 = !DILocation(line: 71, column: 13, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !268, line: 71, column: 11)
!3542 = distinct !DILexicalBlock(scope: !3531, file: !268, line: 70, column: 5)
!3543 = !DILocation(line: 71, column: 11, scope: !3542)
!3544 = !DILocation(line: 72, column: 9, scope: !3541)
!3545 = !DILocation(line: 72, column: 15, scope: !3541)
!3546 = !DILocation(line: 73, column: 7, scope: !3542)
!3547 = !DILocation(line: 76, column: 3, scope: !3476)
!3548 = !DILocation(line: 77, column: 1, scope: !3476)
!3549 = distinct !DISubprogram(name: "rpl_fclose", scope: !270, file: !270, line: 58, type: !3550, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !269, retainedNodes: !34)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!25, !3552}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2732, line: 7, baseType: !3554)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2734, line: 49, size: 1728, elements: !3555)
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3554, file: !2734, line: 51, baseType: !25, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3554, file: !2734, line: 54, baseType: !22, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3554, file: !2734, line: 55, baseType: !22, size: 64, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3554, file: !2734, line: 56, baseType: !22, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3554, file: !2734, line: 57, baseType: !22, size: 64, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3554, file: !2734, line: 58, baseType: !22, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3554, file: !2734, line: 59, baseType: !22, size: 64, offset: 384)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3554, file: !2734, line: 60, baseType: !22, size: 64, offset: 448)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3554, file: !2734, line: 61, baseType: !22, size: 64, offset: 512)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3554, file: !2734, line: 64, baseType: !22, size: 64, offset: 576)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3554, file: !2734, line: 65, baseType: !22, size: 64, offset: 640)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3554, file: !2734, line: 66, baseType: !22, size: 64, offset: 704)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3554, file: !2734, line: 68, baseType: !2749, size: 64, offset: 768)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3554, file: !2734, line: 70, baseType: !3570, size: 64, offset: 832)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3554, file: !2734, line: 72, baseType: !25, size: 32, offset: 896)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3554, file: !2734, line: 73, baseType: !25, size: 32, offset: 928)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3554, file: !2734, line: 74, baseType: !2756, size: 64, offset: 960)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3554, file: !2734, line: 77, baseType: !26, size: 16, offset: 1024)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3554, file: !2734, line: 78, baseType: !2759, size: 8, offset: 1040)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3554, file: !2734, line: 79, baseType: !2761, size: 8, offset: 1048)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3554, file: !2734, line: 81, baseType: !2765, size: 64, offset: 1088)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3554, file: !2734, line: 89, baseType: !2768, size: 64, offset: 1152)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3554, file: !2734, line: 91, baseType: !2770, size: 64, offset: 1216)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3554, file: !2734, line: 92, baseType: !2773, size: 64, offset: 1280)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3554, file: !2734, line: 93, baseType: !3570, size: 64, offset: 1344)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3554, file: !2734, line: 94, baseType: !24, size: 64, offset: 1408)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3554, file: !2734, line: 95, baseType: !144, size: 64, offset: 1472)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3554, file: !2734, line: 96, baseType: !25, size: 32, offset: 1536)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3554, file: !2734, line: 98, baseType: !2780, size: 160, offset: 1568)
!3586 = !DILocalVariable(name: "fp", arg: 1, scope: !3549, file: !270, line: 58, type: !3552)
!3587 = !DILocation(line: 58, column: 19, scope: !3549)
!3588 = !DILocalVariable(name: "saved_errno", scope: !3549, file: !270, line: 60, type: !25)
!3589 = !DILocation(line: 60, column: 7, scope: !3549)
!3590 = !DILocalVariable(name: "fd", scope: !3549, file: !270, line: 63, type: !25)
!3591 = !DILocation(line: 63, column: 7, scope: !3549)
!3592 = !DILocation(line: 63, column: 20, scope: !3549)
!3593 = !DILocation(line: 63, column: 12, scope: !3549)
!3594 = !DILocation(line: 64, column: 7, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3549, file: !270, line: 64, column: 7)
!3596 = !DILocation(line: 64, column: 10, scope: !3595)
!3597 = !DILocation(line: 64, column: 7, scope: !3549)
!3598 = !DILocation(line: 65, column: 28, scope: !3595)
!3599 = !DILocation(line: 65, column: 12, scope: !3595)
!3600 = !DILocation(line: 65, column: 5, scope: !3595)
!3601 = !DILocation(line: 70, column: 9, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3549, file: !270, line: 70, column: 7)
!3603 = !DILocation(line: 70, column: 23, scope: !3602)
!3604 = !DILocation(line: 70, column: 41, scope: !3602)
!3605 = !DILocation(line: 70, column: 33, scope: !3602)
!3606 = !DILocation(line: 70, column: 26, scope: !3602)
!3607 = !DILocation(line: 70, column: 59, scope: !3602)
!3608 = !DILocation(line: 71, column: 7, scope: !3602)
!3609 = !DILocation(line: 71, column: 18, scope: !3602)
!3610 = !DILocation(line: 71, column: 10, scope: !3602)
!3611 = !DILocation(line: 70, column: 7, scope: !3549)
!3612 = !DILocation(line: 72, column: 19, scope: !3602)
!3613 = !DILocation(line: 72, column: 17, scope: !3602)
!3614 = !DILocation(line: 72, column: 5, scope: !3602)
!3615 = !DILocalVariable(name: "result", scope: !3549, file: !270, line: 74, type: !25)
!3616 = !DILocation(line: 74, column: 7, scope: !3549)
!3617 = !DILocation(line: 100, column: 28, scope: !3549)
!3618 = !DILocation(line: 100, column: 12, scope: !3549)
!3619 = !DILocation(line: 100, column: 10, scope: !3549)
!3620 = !DILocation(line: 105, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3549, file: !270, line: 105, column: 7)
!3622 = !DILocation(line: 105, column: 19, scope: !3621)
!3623 = !DILocation(line: 105, column: 7, scope: !3549)
!3624 = !DILocation(line: 107, column: 15, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3621, file: !270, line: 106, column: 5)
!3626 = !DILocation(line: 107, column: 7, scope: !3625)
!3627 = !DILocation(line: 107, column: 13, scope: !3625)
!3628 = !DILocation(line: 108, column: 14, scope: !3625)
!3629 = !DILocation(line: 109, column: 5, scope: !3625)
!3630 = !DILocation(line: 111, column: 10, scope: !3549)
!3631 = !DILocation(line: 111, column: 3, scope: !3549)
!3632 = !DILocation(line: 112, column: 1, scope: !3549)
!3633 = distinct !DISubprogram(name: "rpl_fflush", scope: !272, file: !272, line: 130, type: !3634, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !34)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!25, !3636}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2732, line: 7, baseType: !3638)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2734, line: 49, size: 1728, elements: !3639)
!3639 = !{!3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3638, file: !2734, line: 51, baseType: !25, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3638, file: !2734, line: 54, baseType: !22, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3638, file: !2734, line: 55, baseType: !22, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3638, file: !2734, line: 56, baseType: !22, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3638, file: !2734, line: 57, baseType: !22, size: 64, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3638, file: !2734, line: 58, baseType: !22, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3638, file: !2734, line: 59, baseType: !22, size: 64, offset: 384)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3638, file: !2734, line: 60, baseType: !22, size: 64, offset: 448)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3638, file: !2734, line: 61, baseType: !22, size: 64, offset: 512)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3638, file: !2734, line: 64, baseType: !22, size: 64, offset: 576)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3638, file: !2734, line: 65, baseType: !22, size: 64, offset: 640)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3638, file: !2734, line: 66, baseType: !22, size: 64, offset: 704)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3638, file: !2734, line: 68, baseType: !2749, size: 64, offset: 768)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3638, file: !2734, line: 70, baseType: !3654, size: 64, offset: 832)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3638, file: !2734, line: 72, baseType: !25, size: 32, offset: 896)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3638, file: !2734, line: 73, baseType: !25, size: 32, offset: 928)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3638, file: !2734, line: 74, baseType: !2756, size: 64, offset: 960)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3638, file: !2734, line: 77, baseType: !26, size: 16, offset: 1024)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3638, file: !2734, line: 78, baseType: !2759, size: 8, offset: 1040)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3638, file: !2734, line: 79, baseType: !2761, size: 8, offset: 1048)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3638, file: !2734, line: 81, baseType: !2765, size: 64, offset: 1088)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3638, file: !2734, line: 89, baseType: !2768, size: 64, offset: 1152)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3638, file: !2734, line: 91, baseType: !2770, size: 64, offset: 1216)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3638, file: !2734, line: 92, baseType: !2773, size: 64, offset: 1280)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3638, file: !2734, line: 93, baseType: !3654, size: 64, offset: 1344)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3638, file: !2734, line: 94, baseType: !24, size: 64, offset: 1408)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3638, file: !2734, line: 95, baseType: !144, size: 64, offset: 1472)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3638, file: !2734, line: 96, baseType: !25, size: 32, offset: 1536)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3638, file: !2734, line: 98, baseType: !2780, size: 160, offset: 1568)
!3670 = !DILocalVariable(name: "stream", arg: 1, scope: !3633, file: !272, line: 130, type: !3636)
!3671 = !DILocation(line: 130, column: 19, scope: !3633)
!3672 = !DILocation(line: 151, column: 7, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3633, file: !272, line: 151, column: 7)
!3674 = !DILocation(line: 151, column: 14, scope: !3673)
!3675 = !DILocation(line: 151, column: 22, scope: !3673)
!3676 = !DILocation(line: 151, column: 27, scope: !3673)
!3677 = !DILocation(line: 151, column: 7, scope: !3633)
!3678 = !DILocation(line: 152, column: 20, scope: !3673)
!3679 = !DILocation(line: 152, column: 12, scope: !3673)
!3680 = !DILocation(line: 152, column: 5, scope: !3673)
!3681 = !DILocation(line: 157, column: 44, scope: !3633)
!3682 = !DILocation(line: 157, column: 3, scope: !3633)
!3683 = !DILocation(line: 159, column: 18, scope: !3633)
!3684 = !DILocation(line: 159, column: 10, scope: !3633)
!3685 = !DILocation(line: 159, column: 3, scope: !3633)
!3686 = !DILocation(line: 236, column: 1, scope: !3633)
!3687 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !272, file: !272, line: 42, type: !3688, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !271, retainedNodes: !34)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !3636}
!3690 = !DILocalVariable(name: "fp", arg: 1, scope: !3687, file: !272, line: 42, type: !3636)
!3691 = !DILocation(line: 42, column: 48, scope: !3687)
!3692 = !DILocation(line: 44, column: 7, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3687, file: !272, line: 44, column: 7)
!3694 = !DILocation(line: 44, column: 12, scope: !3693)
!3695 = !DILocation(line: 44, column: 19, scope: !3693)
!3696 = !DILocation(line: 44, column: 7, scope: !3687)
!3697 = !DILocation(line: 46, column: 13, scope: !3693)
!3698 = !DILocation(line: 46, column: 5, scope: !3693)
!3699 = !DILocation(line: 47, column: 1, scope: !3687)
!3700 = distinct !DISubprogram(name: "rpl_fseeko", scope: !274, file: !274, line: 28, type: !3701, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !34)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!25, !3703, !3737, !25}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2732, line: 7, baseType: !3705)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2734, line: 49, size: 1728, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3705, file: !2734, line: 51, baseType: !25, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3705, file: !2734, line: 54, baseType: !22, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3705, file: !2734, line: 55, baseType: !22, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3705, file: !2734, line: 56, baseType: !22, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3705, file: !2734, line: 57, baseType: !22, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3705, file: !2734, line: 58, baseType: !22, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3705, file: !2734, line: 59, baseType: !22, size: 64, offset: 384)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3705, file: !2734, line: 60, baseType: !22, size: 64, offset: 448)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3705, file: !2734, line: 61, baseType: !22, size: 64, offset: 512)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3705, file: !2734, line: 64, baseType: !22, size: 64, offset: 576)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3705, file: !2734, line: 65, baseType: !22, size: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3705, file: !2734, line: 66, baseType: !22, size: 64, offset: 704)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3705, file: !2734, line: 68, baseType: !2749, size: 64, offset: 768)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3705, file: !2734, line: 70, baseType: !3721, size: 64, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3705, file: !2734, line: 72, baseType: !25, size: 32, offset: 896)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3705, file: !2734, line: 73, baseType: !25, size: 32, offset: 928)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3705, file: !2734, line: 74, baseType: !2756, size: 64, offset: 960)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3705, file: !2734, line: 77, baseType: !26, size: 16, offset: 1024)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3705, file: !2734, line: 78, baseType: !2759, size: 8, offset: 1040)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3705, file: !2734, line: 79, baseType: !2761, size: 8, offset: 1048)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3705, file: !2734, line: 81, baseType: !2765, size: 64, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3705, file: !2734, line: 89, baseType: !2768, size: 64, offset: 1152)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3705, file: !2734, line: 91, baseType: !2770, size: 64, offset: 1216)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3705, file: !2734, line: 92, baseType: !2773, size: 64, offset: 1280)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3705, file: !2734, line: 93, baseType: !3721, size: 64, offset: 1344)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3705, file: !2734, line: 94, baseType: !24, size: 64, offset: 1408)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3705, file: !2734, line: 95, baseType: !144, size: 64, offset: 1472)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3705, file: !2734, line: 96, baseType: !25, size: 32, offset: 1536)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3705, file: !2734, line: 98, baseType: !2780, size: 160, offset: 1568)
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !80, line: 63, baseType: !2756)
!3738 = !DILocalVariable(name: "fp", arg: 1, scope: !3700, file: !274, line: 28, type: !3703)
!3739 = !DILocation(line: 28, column: 15, scope: !3700)
!3740 = !DILocalVariable(name: "offset", arg: 2, scope: !3700, file: !274, line: 28, type: !3737)
!3741 = !DILocation(line: 28, column: 25, scope: !3700)
!3742 = !DILocalVariable(name: "whence", arg: 3, scope: !3700, file: !274, line: 28, type: !25)
!3743 = !DILocation(line: 28, column: 37, scope: !3700)
!3744 = !DILocation(line: 55, column: 7, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3700, file: !274, line: 55, column: 7)
!3746 = !DILocation(line: 55, column: 12, scope: !3745)
!3747 = !DILocation(line: 55, column: 28, scope: !3745)
!3748 = !DILocation(line: 55, column: 33, scope: !3745)
!3749 = !DILocation(line: 55, column: 25, scope: !3745)
!3750 = !DILocation(line: 56, column: 7, scope: !3745)
!3751 = !DILocation(line: 56, column: 10, scope: !3745)
!3752 = !DILocation(line: 56, column: 15, scope: !3745)
!3753 = !DILocation(line: 56, column: 32, scope: !3745)
!3754 = !DILocation(line: 56, column: 37, scope: !3745)
!3755 = !DILocation(line: 56, column: 29, scope: !3745)
!3756 = !DILocation(line: 57, column: 7, scope: !3745)
!3757 = !DILocation(line: 57, column: 10, scope: !3745)
!3758 = !DILocation(line: 57, column: 15, scope: !3745)
!3759 = !DILocation(line: 57, column: 29, scope: !3745)
!3760 = !DILocation(line: 55, column: 7, scope: !3700)
!3761 = !DILocalVariable(name: "pos", scope: !3762, file: !274, line: 123, type: !3737)
!3762 = distinct !DILexicalBlock(scope: !3745, file: !274, line: 119, column: 5)
!3763 = !DILocation(line: 123, column: 13, scope: !3762)
!3764 = !DILocation(line: 123, column: 34, scope: !3762)
!3765 = !DILocation(line: 123, column: 26, scope: !3762)
!3766 = !DILocation(line: 123, column: 39, scope: !3762)
!3767 = !DILocation(line: 123, column: 47, scope: !3762)
!3768 = !DILocation(line: 123, column: 19, scope: !3762)
!3769 = !DILocation(line: 124, column: 11, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3762, file: !274, line: 124, column: 11)
!3771 = !DILocation(line: 124, column: 15, scope: !3770)
!3772 = !DILocation(line: 124, column: 11, scope: !3762)
!3773 = !DILocation(line: 130, column: 11, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3770, file: !274, line: 125, column: 9)
!3775 = !DILocation(line: 135, column: 7, scope: !3762)
!3776 = !DILocation(line: 135, column: 12, scope: !3762)
!3777 = !DILocation(line: 135, column: 19, scope: !3762)
!3778 = !DILocation(line: 136, column: 22, scope: !3762)
!3779 = !DILocation(line: 136, column: 7, scope: !3762)
!3780 = !DILocation(line: 136, column: 12, scope: !3762)
!3781 = !DILocation(line: 136, column: 20, scope: !3762)
!3782 = !DILocation(line: 167, column: 7, scope: !3762)
!3783 = !DILocation(line: 169, column: 18, scope: !3700)
!3784 = !DILocation(line: 169, column: 22, scope: !3700)
!3785 = !DILocation(line: 169, column: 30, scope: !3700)
!3786 = !DILocation(line: 169, column: 10, scope: !3700)
!3787 = !DILocation(line: 169, column: 3, scope: !3700)
!3788 = !DILocation(line: 170, column: 1, scope: !3700)
!3789 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3790, file: !3790, line: 43, type: !3791, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !34)
!3790 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3791 = !DISubroutineType(types: !72)
!3792 = !DILocation(line: 45, column: 3, scope: !3789)
!3793 = !DILocation(line: 45, column: 9, scope: !3789)
!3794 = !DILocation(line: 46, column: 3, scope: !3789)
!3795 = distinct !DISubprogram(name: "imalloc", scope: !3790, file: !3790, line: 55, type: !3083, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !34)
!3796 = !DILocalVariable(name: "s", arg: 1, scope: !3795, file: !3790, line: 55, type: !256)
!3797 = !DILocation(line: 55, column: 16, scope: !3795)
!3798 = !DILocation(line: 57, column: 10, scope: !3795)
!3799 = !DILocation(line: 57, column: 12, scope: !3795)
!3800 = !DILocation(line: 57, column: 34, scope: !3795)
!3801 = !DILocation(line: 57, column: 26, scope: !3795)
!3802 = !DILocation(line: 57, column: 39, scope: !3795)
!3803 = !DILocation(line: 57, column: 3, scope: !3795)
!3804 = distinct !DISubprogram(name: "irealloc", scope: !3790, file: !3790, line: 66, type: !3111, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !34)
!3805 = !DILocalVariable(name: "p", arg: 1, scope: !3804, file: !3790, line: 66, type: !24)
!3806 = !DILocation(line: 66, column: 17, scope: !3804)
!3807 = !DILocalVariable(name: "s", arg: 2, scope: !3804, file: !3790, line: 66, type: !256)
!3808 = !DILocation(line: 66, column: 26, scope: !3804)
!3809 = !DILocation(line: 68, column: 10, scope: !3804)
!3810 = !DILocation(line: 68, column: 12, scope: !3804)
!3811 = !DILocation(line: 68, column: 35, scope: !3804)
!3812 = !DILocation(line: 68, column: 38, scope: !3804)
!3813 = !DILocation(line: 68, column: 26, scope: !3804)
!3814 = !DILocation(line: 68, column: 43, scope: !3804)
!3815 = !DILocation(line: 68, column: 3, scope: !3804)
!3816 = distinct !DISubprogram(name: "icalloc", scope: !3790, file: !3790, line: 77, type: !3149, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !34)
!3817 = !DILocalVariable(name: "n", arg: 1, scope: !3816, file: !3790, line: 77, type: !256)
!3818 = !DILocation(line: 77, column: 16, scope: !3816)
!3819 = !DILocalVariable(name: "s", arg: 2, scope: !3816, file: !3790, line: 77, type: !256)
!3820 = !DILocation(line: 77, column: 25, scope: !3816)
!3821 = !DILocation(line: 79, column: 18, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3816, file: !3790, line: 79, column: 7)
!3823 = !DILocation(line: 79, column: 16, scope: !3822)
!3824 = !DILocation(line: 79, column: 7, scope: !3816)
!3825 = !DILocation(line: 81, column: 11, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !3790, line: 81, column: 11)
!3827 = distinct !DILexicalBlock(scope: !3822, file: !3790, line: 80, column: 5)
!3828 = !DILocation(line: 81, column: 13, scope: !3826)
!3829 = !DILocation(line: 81, column: 11, scope: !3827)
!3830 = !DILocation(line: 82, column: 16, scope: !3826)
!3831 = !DILocation(line: 82, column: 9, scope: !3826)
!3832 = !DILocation(line: 83, column: 9, scope: !3827)
!3833 = !DILocation(line: 84, column: 5, scope: !3827)
!3834 = !DILocation(line: 85, column: 18, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3816, file: !3790, line: 85, column: 7)
!3836 = !DILocation(line: 85, column: 16, scope: !3835)
!3837 = !DILocation(line: 85, column: 7, scope: !3816)
!3838 = !DILocation(line: 87, column: 11, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !3790, line: 87, column: 11)
!3840 = distinct !DILexicalBlock(scope: !3835, file: !3790, line: 86, column: 5)
!3841 = !DILocation(line: 87, column: 13, scope: !3839)
!3842 = !DILocation(line: 87, column: 11, scope: !3840)
!3843 = !DILocation(line: 88, column: 16, scope: !3839)
!3844 = !DILocation(line: 88, column: 9, scope: !3839)
!3845 = !DILocation(line: 89, column: 9, scope: !3840)
!3846 = !DILocation(line: 90, column: 5, scope: !3840)
!3847 = !DILocation(line: 91, column: 18, scope: !3816)
!3848 = !DILocation(line: 91, column: 21, scope: !3816)
!3849 = !DILocation(line: 91, column: 10, scope: !3816)
!3850 = !DILocation(line: 91, column: 3, scope: !3816)
!3851 = !DILocation(line: 92, column: 1, scope: !3816)
!3852 = distinct !DISubprogram(name: "ireallocarray", scope: !3790, file: !3790, line: 98, type: !3123, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !34)
!3853 = !DILocalVariable(name: "p", arg: 1, scope: !3852, file: !3790, line: 98, type: !24)
!3854 = !DILocation(line: 98, column: 22, scope: !3852)
!3855 = !DILocalVariable(name: "n", arg: 2, scope: !3852, file: !3790, line: 98, type: !256)
!3856 = !DILocation(line: 98, column: 31, scope: !3852)
!3857 = !DILocalVariable(name: "s", arg: 3, scope: !3852, file: !3790, line: 98, type: !256)
!3858 = !DILocation(line: 98, column: 40, scope: !3852)
!3859 = !DILocation(line: 100, column: 11, scope: !3852)
!3860 = !DILocation(line: 100, column: 13, scope: !3852)
!3861 = !DILocation(line: 100, column: 25, scope: !3852)
!3862 = !DILocation(line: 100, column: 28, scope: !3852)
!3863 = !DILocation(line: 100, column: 30, scope: !3852)
!3864 = !DILocation(line: 101, column: 27, scope: !3852)
!3865 = !DILocation(line: 101, column: 30, scope: !3852)
!3866 = !DILocation(line: 101, column: 33, scope: !3852)
!3867 = !DILocation(line: 101, column: 13, scope: !3852)
!3868 = !DILocation(line: 102, column: 13, scope: !3852)
!3869 = !DILocation(line: 100, column: 3, scope: !3852)
!3870 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !212, file: !212, line: 100, type: !3871, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !211, retainedNodes: !34)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!144, !3873, !42, !144, !3874}
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!3875 = !DILocalVariable(name: "pwc", arg: 1, scope: !3870, file: !212, line: 100, type: !3873)
!3876 = !DILocation(line: 100, column: 21, scope: !3870)
!3877 = !DILocalVariable(name: "s", arg: 2, scope: !3870, file: !212, line: 100, type: !42)
!3878 = !DILocation(line: 100, column: 38, scope: !3870)
!3879 = !DILocalVariable(name: "n", arg: 3, scope: !3870, file: !212, line: 100, type: !144)
!3880 = !DILocation(line: 100, column: 48, scope: !3870)
!3881 = !DILocalVariable(name: "ps", arg: 4, scope: !3870, file: !212, line: 100, type: !3874)
!3882 = !DILocation(line: 100, column: 62, scope: !3870)
!3883 = !DILocation(line: 105, column: 7, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3870, file: !212, line: 105, column: 7)
!3885 = !DILocation(line: 105, column: 9, scope: !3884)
!3886 = !DILocation(line: 105, column: 7, scope: !3870)
!3887 = !DILocation(line: 107, column: 11, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3884, file: !212, line: 106, column: 5)
!3889 = !DILocation(line: 108, column: 9, scope: !3888)
!3890 = !DILocation(line: 109, column: 9, scope: !3888)
!3891 = !DILocation(line: 110, column: 5, scope: !3888)
!3892 = !DILocation(line: 117, column: 7, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3870, file: !212, line: 117, column: 7)
!3894 = !DILocation(line: 117, column: 10, scope: !3893)
!3895 = !DILocation(line: 117, column: 7, scope: !3870)
!3896 = !DILocation(line: 118, column: 8, scope: !3893)
!3897 = !DILocation(line: 118, column: 5, scope: !3893)
!3898 = !DILocalVariable(name: "ret", scope: !3870, file: !212, line: 130, type: !144)
!3899 = !DILocation(line: 130, column: 10, scope: !3870)
!3900 = !DILocation(line: 130, column: 26, scope: !3870)
!3901 = !DILocation(line: 130, column: 31, scope: !3870)
!3902 = !DILocation(line: 130, column: 34, scope: !3870)
!3903 = !DILocation(line: 130, column: 37, scope: !3870)
!3904 = !DILocation(line: 130, column: 16, scope: !3870)
!3905 = !DILocation(line: 135, column: 7, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3870, file: !212, line: 135, column: 7)
!3907 = !DILocation(line: 135, column: 11, scope: !3906)
!3908 = !DILocation(line: 135, column: 25, scope: !3906)
!3909 = !DILocation(line: 135, column: 39, scope: !3906)
!3910 = !DILocation(line: 135, column: 30, scope: !3906)
!3911 = !DILocation(line: 135, column: 7, scope: !3870)
!3912 = !DILocation(line: 137, column: 14, scope: !3906)
!3913 = !DILocation(line: 137, column: 5, scope: !3906)
!3914 = !DILocation(line: 138, column: 7, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3870, file: !212, line: 138, column: 7)
!3916 = !DILocation(line: 138, column: 11, scope: !3915)
!3917 = !DILocation(line: 138, column: 7, scope: !3870)
!3918 = !DILocation(line: 139, column: 5, scope: !3915)
!3919 = !DILocation(line: 143, column: 22, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3870, file: !212, line: 143, column: 7)
!3921 = !DILocation(line: 143, column: 19, scope: !3920)
!3922 = !DILocation(line: 143, column: 26, scope: !3920)
!3923 = !DILocation(line: 143, column: 29, scope: !3920)
!3924 = !DILocation(line: 143, column: 31, scope: !3920)
!3925 = !DILocation(line: 143, column: 36, scope: !3920)
!3926 = !DILocation(line: 143, column: 41, scope: !3920)
!3927 = !DILocation(line: 143, column: 7, scope: !3870)
!3928 = !DILocation(line: 145, column: 11, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !212, line: 145, column: 11)
!3930 = distinct !DILexicalBlock(scope: !3920, file: !212, line: 144, column: 5)
!3931 = !DILocation(line: 145, column: 15, scope: !3929)
!3932 = !DILocation(line: 145, column: 11, scope: !3930)
!3933 = !DILocation(line: 146, column: 33, scope: !3929)
!3934 = !DILocation(line: 146, column: 32, scope: !3929)
!3935 = !DILocation(line: 146, column: 16, scope: !3929)
!3936 = !DILocation(line: 146, column: 10, scope: !3929)
!3937 = !DILocation(line: 146, column: 14, scope: !3929)
!3938 = !DILocation(line: 146, column: 9, scope: !3929)
!3939 = !DILocation(line: 147, column: 7, scope: !3930)
!3940 = !DILocation(line: 151, column: 10, scope: !3870)
!3941 = !DILocation(line: 151, column: 3, scope: !3870)
!3942 = !DILocation(line: 286, column: 1, scope: !3870)
!3943 = distinct !DISubprogram(name: "mbszero", scope: !3944, file: !3944, line: 1135, type: !3945, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !34)
!3944 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3947}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !217, line: 6, baseType: !3949)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !219, line: 21, baseType: !3950)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 13, size: 64, elements: !3951)
!3951 = !{!3952, !3953}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3950, file: !219, line: 15, baseType: !25, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3950, file: !219, line: 20, baseType: !3954, size: 32, offset: 32)
!3954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3950, file: !219, line: 16, size: 32, elements: !3955)
!3955 = !{!3956, !3957}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3954, file: !219, line: 18, baseType: !7, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3954, file: !219, line: 19, baseType: !228, size: 32)
!3958 = !DILocalVariable(name: "ps", arg: 1, scope: !3943, file: !3944, line: 1135, type: !3947)
!3959 = !DILocation(line: 1135, column: 21, scope: !3943)
!3960 = !DILocation(line: 1137, column: 11, scope: !3943)
!3961 = !DILocation(line: 1137, column: 3, scope: !3943)
!3962 = !DILocation(line: 1138, column: 1, scope: !3943)
!3963 = distinct !DISubprogram(name: "memeq", scope: !2715, file: !2715, line: 974, type: !3964, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !279, retainedNodes: !34)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!67, !3334, !3334, !144}
!3966 = !DILocalVariable(name: "__s1", arg: 1, scope: !3963, file: !2715, line: 974, type: !3334)
!3967 = !DILocation(line: 974, column: 20, scope: !3963)
!3968 = !DILocalVariable(name: "__s2", arg: 2, scope: !3963, file: !2715, line: 974, type: !3334)
!3969 = !DILocation(line: 974, column: 38, scope: !3963)
!3970 = !DILocalVariable(name: "__n", arg: 3, scope: !3963, file: !2715, line: 974, type: !144)
!3971 = !DILocation(line: 974, column: 51, scope: !3963)
!3972 = !DILocation(line: 976, column: 19, scope: !3963)
!3973 = !DILocation(line: 976, column: 25, scope: !3963)
!3974 = !DILocation(line: 976, column: 31, scope: !3963)
!3975 = !DILocation(line: 976, column: 11, scope: !3963)
!3976 = !DILocation(line: 976, column: 10, scope: !3963)
!3977 = !DILocation(line: 976, column: 3, scope: !3963)
!3978 = distinct !DISubprogram(name: "rpl_realloc", scope: !3979, file: !3979, line: 2057, type: !3099, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !34)
!3979 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3980 = !DILocalVariable(name: "ptr", arg: 1, scope: !3978, file: !3979, line: 2057, type: !24)
!3981 = !DILocation(line: 2057, column: 20, scope: !3978)
!3982 = !DILocalVariable(name: "size", arg: 2, scope: !3978, file: !3979, line: 2057, type: !144)
!3983 = !DILocation(line: 2057, column: 32, scope: !3978)
!3984 = !DILocation(line: 2059, column: 19, scope: !3978)
!3985 = !DILocation(line: 2059, column: 24, scope: !3978)
!3986 = !DILocation(line: 2059, column: 31, scope: !3978)
!3987 = !DILocation(line: 2059, column: 10, scope: !3978)
!3988 = !DILocation(line: 2059, column: 3, scope: !3978)
!3989 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !284, file: !284, line: 27, type: !3036, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !34)
!3990 = !DILocalVariable(name: "ptr", arg: 1, scope: !3989, file: !284, line: 27, type: !24)
!3991 = !DILocation(line: 27, column: 21, scope: !3989)
!3992 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3989, file: !284, line: 27, type: !144)
!3993 = !DILocation(line: 27, column: 33, scope: !3989)
!3994 = !DILocalVariable(name: "size", arg: 3, scope: !3989, file: !284, line: 27, type: !144)
!3995 = !DILocation(line: 27, column: 47, scope: !3989)
!3996 = !DILocalVariable(name: "nbytes", scope: !3989, file: !284, line: 29, type: !144)
!3997 = !DILocation(line: 29, column: 10, scope: !3989)
!3998 = !DILocation(line: 30, column: 7, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3989, file: !284, line: 30, column: 7)
!4000 = !DILocation(line: 30, column: 7, scope: !3989)
!4001 = !DILocation(line: 32, column: 7, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3999, file: !284, line: 31, column: 5)
!4003 = !DILocation(line: 32, column: 13, scope: !4002)
!4004 = !DILocation(line: 33, column: 7, scope: !4002)
!4005 = !DILocation(line: 37, column: 19, scope: !3989)
!4006 = !DILocation(line: 37, column: 24, scope: !3989)
!4007 = !DILocation(line: 37, column: 10, scope: !3989)
!4008 = !DILocation(line: 37, column: 3, scope: !3989)
!4009 = !DILocation(line: 38, column: 1, scope: !3989)
!4010 = distinct !DISubprogram(name: "hard_locale", scope: !287, file: !287, line: 28, type: !4011, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !34)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!67, !25}
!4013 = !DILocalVariable(name: "category", arg: 1, scope: !4010, file: !287, line: 28, type: !25)
!4014 = !DILocation(line: 28, column: 18, scope: !4010)
!4015 = !DILocalVariable(name: "locale", scope: !4010, file: !287, line: 30, type: !4016)
!4016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !4017)
!4017 = !{!4018}
!4018 = !DISubrange(count: 257)
!4019 = !DILocation(line: 30, column: 8, scope: !4010)
!4020 = !DILocation(line: 32, column: 25, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4010, file: !287, line: 32, column: 7)
!4022 = !DILocation(line: 32, column: 35, scope: !4021)
!4023 = !DILocation(line: 32, column: 7, scope: !4021)
!4024 = !DILocation(line: 32, column: 7, scope: !4010)
!4025 = !DILocation(line: 33, column: 5, scope: !4021)
!4026 = !DILocation(line: 35, column: 16, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4010, file: !287, line: 35, column: 7)
!4028 = !DILocation(line: 35, column: 9, scope: !4027)
!4029 = !DILocation(line: 35, column: 29, scope: !4027)
!4030 = !DILocation(line: 35, column: 39, scope: !4027)
!4031 = !DILocation(line: 35, column: 32, scope: !4027)
!4032 = !DILocation(line: 35, column: 7, scope: !4010)
!4033 = !DILocation(line: 36, column: 5, scope: !4027)
!4034 = !DILocation(line: 46, column: 3, scope: !4010)
!4035 = !DILocation(line: 47, column: 1, scope: !4010)
!4036 = distinct !DISubprogram(name: "setlocale_null_r", scope: !289, file: !289, line: 154, type: !4037, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !288, retainedNodes: !34)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!25, !25, !22, !144}
!4039 = !DILocalVariable(name: "category", arg: 1, scope: !4036, file: !289, line: 154, type: !25)
!4040 = !DILocation(line: 154, column: 23, scope: !4036)
!4041 = !DILocalVariable(name: "buf", arg: 2, scope: !4036, file: !289, line: 154, type: !22)
!4042 = !DILocation(line: 154, column: 39, scope: !4036)
!4043 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4036, file: !289, line: 154, type: !144)
!4044 = !DILocation(line: 154, column: 51, scope: !4036)
!4045 = !DILocation(line: 159, column: 37, scope: !4036)
!4046 = !DILocation(line: 159, column: 47, scope: !4036)
!4047 = !DILocation(line: 159, column: 52, scope: !4036)
!4048 = !DILocation(line: 159, column: 10, scope: !4036)
!4049 = !DILocation(line: 159, column: 3, scope: !4036)
!4050 = distinct !DISubprogram(name: "setlocale_null", scope: !289, file: !289, line: 186, type: !4051, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !288, retainedNodes: !34)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!42, !25}
!4053 = !DILocalVariable(name: "category", arg: 1, scope: !4050, file: !289, line: 186, type: !25)
!4054 = !DILocation(line: 186, column: 21, scope: !4050)
!4055 = !DILocation(line: 189, column: 35, scope: !4050)
!4056 = !DILocation(line: 189, column: 10, scope: !4050)
!4057 = !DILocation(line: 189, column: 3, scope: !4050)
!4058 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !291, file: !291, line: 35, type: !4051, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !290, retainedNodes: !34)
!4059 = !DILocalVariable(name: "category", arg: 1, scope: !4058, file: !291, line: 35, type: !25)
!4060 = !DILocation(line: 35, column: 30, scope: !4058)
!4061 = !DILocalVariable(name: "result", scope: !4058, file: !291, line: 37, type: !42)
!4062 = !DILocation(line: 37, column: 15, scope: !4058)
!4063 = !DILocation(line: 37, column: 35, scope: !4058)
!4064 = !DILocation(line: 37, column: 24, scope: !4058)
!4065 = !DILocation(line: 62, column: 10, scope: !4058)
!4066 = !DILocation(line: 62, column: 3, scope: !4058)
!4067 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !291, file: !291, line: 66, type: !4037, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !290, retainedNodes: !34)
!4068 = !DILocalVariable(name: "category", arg: 1, scope: !4067, file: !291, line: 66, type: !25)
!4069 = !DILocation(line: 66, column: 32, scope: !4067)
!4070 = !DILocalVariable(name: "buf", arg: 2, scope: !4067, file: !291, line: 66, type: !22)
!4071 = !DILocation(line: 66, column: 48, scope: !4067)
!4072 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4067, file: !291, line: 66, type: !144)
!4073 = !DILocation(line: 66, column: 60, scope: !4067)
!4074 = !DILocalVariable(name: "result", scope: !4067, file: !291, line: 111, type: !42)
!4075 = !DILocation(line: 111, column: 15, scope: !4067)
!4076 = !DILocation(line: 111, column: 49, scope: !4067)
!4077 = !DILocation(line: 111, column: 24, scope: !4067)
!4078 = !DILocation(line: 113, column: 7, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4067, file: !291, line: 113, column: 7)
!4080 = !DILocation(line: 113, column: 14, scope: !4079)
!4081 = !DILocation(line: 113, column: 7, scope: !4067)
!4082 = !DILocation(line: 116, column: 11, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !291, line: 116, column: 11)
!4084 = distinct !DILexicalBlock(scope: !4079, file: !291, line: 114, column: 5)
!4085 = !DILocation(line: 116, column: 19, scope: !4083)
!4086 = !DILocation(line: 116, column: 11, scope: !4084)
!4087 = !DILocation(line: 120, column: 9, scope: !4083)
!4088 = !DILocation(line: 120, column: 16, scope: !4083)
!4089 = !DILocation(line: 121, column: 7, scope: !4084)
!4090 = !DILocalVariable(name: "length", scope: !4091, file: !291, line: 125, type: !144)
!4091 = distinct !DILexicalBlock(scope: !4079, file: !291, line: 124, column: 5)
!4092 = !DILocation(line: 125, column: 14, scope: !4091)
!4093 = !DILocation(line: 125, column: 31, scope: !4091)
!4094 = !DILocation(line: 125, column: 23, scope: !4091)
!4095 = !DILocation(line: 126, column: 11, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4091, file: !291, line: 126, column: 11)
!4097 = !DILocation(line: 126, column: 20, scope: !4096)
!4098 = !DILocation(line: 126, column: 18, scope: !4096)
!4099 = !DILocation(line: 126, column: 11, scope: !4091)
!4100 = !DILocation(line: 128, column: 19, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4096, file: !291, line: 127, column: 9)
!4102 = !DILocation(line: 128, column: 24, scope: !4101)
!4103 = !DILocation(line: 128, column: 32, scope: !4101)
!4104 = !DILocation(line: 128, column: 39, scope: !4101)
!4105 = !DILocation(line: 128, column: 11, scope: !4101)
!4106 = !DILocation(line: 129, column: 11, scope: !4101)
!4107 = !DILocation(line: 133, column: 15, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !291, line: 133, column: 15)
!4109 = distinct !DILexicalBlock(scope: !4096, file: !291, line: 132, column: 9)
!4110 = !DILocation(line: 133, column: 23, scope: !4108)
!4111 = !DILocation(line: 133, column: 15, scope: !4109)
!4112 = !DILocation(line: 138, column: 23, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4108, file: !291, line: 134, column: 13)
!4114 = !DILocation(line: 138, column: 28, scope: !4113)
!4115 = !DILocation(line: 138, column: 36, scope: !4113)
!4116 = !DILocation(line: 138, column: 44, scope: !4113)
!4117 = !DILocation(line: 138, column: 15, scope: !4113)
!4118 = !DILocation(line: 139, column: 15, scope: !4113)
!4119 = !DILocation(line: 139, column: 19, scope: !4113)
!4120 = !DILocation(line: 139, column: 27, scope: !4113)
!4121 = !DILocation(line: 139, column: 32, scope: !4113)
!4122 = !DILocation(line: 140, column: 13, scope: !4113)
!4123 = !DILocation(line: 141, column: 11, scope: !4109)
!4124 = !DILocation(line: 145, column: 1, scope: !4067)
