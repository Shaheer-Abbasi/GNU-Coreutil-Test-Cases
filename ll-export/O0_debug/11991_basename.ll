; ModuleID = 'src/basename.bc'
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
@.str.1 = private unnamed_addr constant [53 x i8] c"Usage: %s NAME [SUFFIX]\0A  or:  %s OPTION... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"Print NAME with any leading directory components removed.\0AIf specified, also remove a trailing SUFFIX.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"basename\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"  -a, --multiple\0A         support multiple arguments and treat each as a NAME\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"  -s, --suffix=SUFFIX\0A         remove a trailing SUFFIX; implies -a\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"  -z, --zero\0A         end each output line with NUL, not newline\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [185 x i8] c"\0AExamples:\0A  %s /usr/bin/sort          -> \22sort\22\0A  %s include/stdio.h .h     -> \22stdio\22\0A  %s -s .h include/stdio.h  -> \22stdio\22\0A  %s -a any/str1 any/str2   -> \22str1\22 followed by \22str2\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"+as:z\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external global i8*, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !28
@.str.19 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.49 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.50 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), align 8, !dbg !49
@file_name = internal global i8* null, align 8, !dbg !54
@ignore_EPIPE = internal global i8 0, align 1, !dbg !59
@.str.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.63 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.64 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.65 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !62
@stderr = external global %struct._IO_FILE*, align 8
@.str.70 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !91
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !68
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !87
@.str.1.76 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.77 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.78 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !89
@.str.4.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.72 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.73 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !96
@.str.87 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.88 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !102
@.str.91 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.92 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.93 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.94 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.95 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.96 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.97 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.98 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.99 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.100 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.93, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.94, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.95, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.96, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.99, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.100, i32 0, i32 0), i8* null], align 8, !dbg !113
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !142
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !160
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !175
@nslots = internal global i32 1, align 4, !dbg !182
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !162
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !184
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !148
@.str.10.101 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.102 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.103 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !167
@.str.111 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.112 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.114 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.115 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.116 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.117 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.118 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.119 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.120 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.121 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.122 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.123 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.124 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.125 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.126 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.127 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.132 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.133 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.134 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.135 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.136 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.137 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.138 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !190
@exit_failure = dso_local global i32 1, align 4, !dbg !198
@.str.153 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.151 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.152 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.178 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !204
@.str.189 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.190 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !302 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !305, metadata !DIExpression()), !dbg !306
  %3 = load i32, i32* %2, align 4, !dbg !307
  %4 = icmp ne i32 %3, 0, !dbg !309
  br i1 %4, label %5, label %12, !dbg !310

5:                                                ; preds = %1
  br label %6, !dbg !311

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !312
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !312
  %9 = load i8*, i8** @program_name, align 8, !dbg !312
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !312
  br label %11, !dbg !312

11:                                               ; preds = %6
  br label %31, !dbg !312

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !314
  %14 = load i8*, i8** @program_name, align 8, !dbg !316
  %15 = load i8*, i8** @program_name, align 8, !dbg !317
  %16 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14, i8* noundef %15), !dbg !318
  %17 = call i8* @gettext(i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !319
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !319
  %19 = call i32 @fputs_unlocked(i8* noundef %17, %struct._IO_FILE* noundef %18), !dbg !319
  call void @emit_mandatory_arg_note(), !dbg !320
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !321
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !321
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !322
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !322
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !323
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !323
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !324
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23), !dbg !324
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !325
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %24), !dbg !325
  %25 = call i8* @gettext(i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !326
  %26 = load i8*, i8** @program_name, align 8, !dbg !327
  %27 = load i8*, i8** @program_name, align 8, !dbg !328
  %28 = load i8*, i8** @program_name, align 8, !dbg !329
  %29 = load i8*, i8** @program_name, align 8, !dbg !330
  %30 = call i32 (i8*, ...) @printf(i8* noundef %25, i8* noundef %26, i8* noundef %27, i8* noundef %28, i8* noundef %29), !dbg !331
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !332
  br label %31

31:                                               ; preds = %12, %11
  %32 = load i32, i32* %2, align 4, !dbg !333
  call void @exit(i32 noundef %32) #19, !dbg !334
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
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.18, i64 0, i64 0)) #18, !dbg !336
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !336
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !30 {
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
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #18, !dbg !349
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
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)), !dbg !356
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
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #20, !dbg !371
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
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #20, !dbg !423
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
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)), !dbg !479
  br i1 %174, label %175, label %176, !dbg !479

175:                                              ; preds = %164
  br label %232, !dbg !479

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !480
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0)), !dbg !481
  br i1 %178, label %179, label %180, !dbg !481

179:                                              ; preds = %176
  br label %230, !dbg !481

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !482
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)), !dbg !483
  br i1 %182, label %183, label %184, !dbg !483

183:                                              ; preds = %180
  br label %228, !dbg !483

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !484
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0)), !dbg !485
  br i1 %186, label %187, label %188, !dbg !485

187:                                              ; preds = %184
  br label %226, !dbg !485

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !486
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0)), !dbg !487
  br i1 %190, label %191, label %192, !dbg !487

191:                                              ; preds = %188
  br label %224, !dbg !487

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !488
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0)), !dbg !489
  br i1 %194, label %195, label %196, !dbg !489

195:                                              ; preds = %192
  br label %222, !dbg !489

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !490
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)), !dbg !491
  br i1 %198, label %199, label %200, !dbg !491

199:                                              ; preds = %196
  br label %220, !dbg !491

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !492
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)), !dbg !493
  br i1 %202, label %203, label %204, !dbg !493

203:                                              ; preds = %200
  br label %218, !dbg !493

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !494
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)), !dbg !495
  br i1 %206, label %207, label %208, !dbg !495

207:                                              ; preds = %204
  br label %216, !dbg !495

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !496
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0)), !dbg !497
  br i1 %210, label %211, label %212, !dbg !497

211:                                              ; preds = %208
  br label %214, !dbg !497

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !498
  br label %214, !dbg !497

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !497
  br label %216, !dbg !495

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !495
  br label %218, !dbg !493

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !493
  br label %220, !dbg !491

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !491
  br label %222, !dbg !489

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !489
  br label %224, !dbg !487

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !487
  br label %226, !dbg !485

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !485
  br label %228, !dbg !483

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !483
  br label %230, !dbg !481

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !481
  br label %232, !dbg !479

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !479
  store i8* %233, i8** %13, align 8, !dbg !477
  %234 = load i8*, i8** %8, align 8, !dbg !499
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i64 noundef 6) #20, !dbg !499
  %236 = icmp eq i32 %235, 0, !dbg !499
  br i1 %236, label %241, label %237, !dbg !501

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !502
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i64 noundef 9) #20, !dbg !502
  %240 = icmp eq i32 %239, 0, !dbg !502
  br i1 %240, label %241, label %248, !dbg !503

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !504
  %243 = load i8*, i8** %13, align 8, !dbg !506
  %244 = load i64, i64* %11, align 8, !dbg !507
  %245 = trunc i64 %244 to i32, !dbg !508
  %246 = load i8*, i8** %8, align 8, !dbg !509
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !510
  br label %254, !dbg !511

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !512
  %250 = load i64, i64* %11, align 8, !dbg !514
  %251 = trunc i64 %250 to i32, !dbg !515
  %252 = load i8*, i8** %8, align 8, !dbg !516
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !517
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !518
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !518
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !519
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !519
  %259 = load i8*, i8** %7, align 8, !dbg !520
  %260 = load i8*, i8** %12, align 8, !dbg !520
  %261 = load i8*, i8** %7, align 8, !dbg !520
  %262 = ptrtoint i8* %260 to i64, !dbg !520
  %263 = ptrtoint i8* %261 to i64, !dbg !520
  %264 = sub i64 %262, %263, !dbg !520
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !520
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !520
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !521
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !521
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !522
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !522
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
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i64 noundef 3) #20, !dbg !574
  %44 = icmp ne i32 %43, 0, !dbg !574
  br i1 %44, label %45, label %49, !dbg !575

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0)) #18, !dbg !576
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !576
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !576
  br label %49, !dbg !578

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !579, metadata !DIExpression()), !dbg !580
  %50 = load i8*, i8** %2, align 8, !dbg !581
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)), !dbg !582
  br i1 %51, label %52, label %53, !dbg !582

52:                                               ; preds = %49
  br label %55, !dbg !582

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !583
  br label %55, !dbg !582

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !582
  store i8* %56, i8** %7, align 8, !dbg !580
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0)) #18, !dbg !584
  %58 = load i8*, i8** %7, align 8, !dbg !585
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef %58), !dbg !586
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.52, i64 0, i64 0)) #18, !dbg !587
  %61 = load i8*, i8** %4, align 8, !dbg !588
  %62 = load i8*, i8** %4, align 8, !dbg !589
  %63 = load i8*, i8** %2, align 8, !dbg !590
  %64 = icmp eq i8* %62, %63, !dbg !591
  %65 = zext i1 %64 to i64, !dbg !589
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !589
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
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !598, metadata !DIExpression()), !dbg !599
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !600, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.declare(metadata i8* %6, metadata !602, metadata !DIExpression()), !dbg !603
  store i8 0, i8* %6, align 1, !dbg !603
  call void @llvm.dbg.declare(metadata i8* %7, metadata !604, metadata !DIExpression()), !dbg !605
  store i8 0, i8* %7, align 1, !dbg !605
  call void @llvm.dbg.declare(metadata i8** %8, metadata !606, metadata !DIExpression()), !dbg !607
  store i8* null, i8** %8, align 8, !dbg !607
  %10 = load i8**, i8*** %5, align 8, !dbg !608
  %11 = getelementptr inbounds i8*, i8** %10, i64 0, !dbg !608
  %12 = load i8*, i8** %11, align 8, !dbg !608
  call void @set_program_name(i8* noundef %12), !dbg !609
  %13 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !610
  %14 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !611
  %15 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !612
  %16 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !613
  br label %17, !dbg !614

17:                                               ; preds = %2, %36
  call void @llvm.dbg.declare(metadata i32* %9, metadata !615, metadata !DIExpression()), !dbg !617
  %18 = load i32, i32* %4, align 4, !dbg !618
  %19 = load i8**, i8*** %5, align 8, !dbg !619
  %20 = call i32 @getopt_long(i32 noundef %18, i8** noundef %19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !620
  store i32 %20, i32* %9, align 4, !dbg !617
  %21 = load i32, i32* %9, align 4, !dbg !621
  %22 = icmp eq i32 %21, -1, !dbg !623
  br i1 %22, label %23, label %24, !dbg !624

23:                                               ; preds = %17
  br label %37, !dbg !625

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4, !dbg !626
  switch i32 %25, label %35 [
    i32 115, label %26
    i32 97, label %28
    i32 122, label %29
    i32 -2, label %30
    i32 -3, label %31
  ], !dbg !627

26:                                               ; preds = %24
  %27 = load i8*, i8** @optarg, align 8, !dbg !628
  store i8* %27, i8** %8, align 8, !dbg !630
  br label %28, !dbg !631

28:                                               ; preds = %24, %26
  store i8 1, i8* %6, align 1, !dbg !632
  br label %36, !dbg !633

29:                                               ; preds = %24
  store i8 1, i8* %7, align 1, !dbg !634
  br label %36, !dbg !635

30:                                               ; preds = %24
  call void @usage(i32 noundef 0) #22, !dbg !636
  unreachable, !dbg !636

31:                                               ; preds = %24
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637
  %33 = load i8*, i8** @Version, align 8, !dbg !637
  %34 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)), !dbg !637
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef %33, i8* noundef %34, i8* noundef null), !dbg !637
  call void @exit(i32 noundef 0) #19, !dbg !637
  unreachable, !dbg !637

35:                                               ; preds = %24
  call void @usage(i32 noundef 1) #22, !dbg !638
  unreachable, !dbg !638

36:                                               ; preds = %29, %28
  br label %17, !dbg !614, !llvm.loop !639

37:                                               ; preds = %23
  %38 = load i32, i32* %4, align 4, !dbg !641
  %39 = load i32, i32* @optind, align 4, !dbg !643
  %40 = add nsw i32 %39, 1, !dbg !644
  %41 = icmp slt i32 %38, %40, !dbg !645
  br i1 %41, label %42, label %44, !dbg !646

42:                                               ; preds = %37
  %43 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !647
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %43), !dbg !647
  call void @usage(i32 noundef 1) #22, !dbg !649
  unreachable, !dbg !649

44:                                               ; preds = %37
  %45 = load i8, i8* %6, align 1, !dbg !650
  %46 = trunc i8 %45 to i1, !dbg !650
  br i1 %46, label %61, label %47, !dbg !652

47:                                               ; preds = %44
  %48 = load i32, i32* @optind, align 4, !dbg !653
  %49 = add nsw i32 %48, 2, !dbg !654
  %50 = load i32, i32* %4, align 4, !dbg !655
  %51 = icmp slt i32 %49, %50, !dbg !656
  br i1 %51, label %52, label %61, !dbg !657

52:                                               ; preds = %47
  %53 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0)) #18, !dbg !658
  %54 = load i8**, i8*** %5, align 8, !dbg !658
  %55 = load i32, i32* @optind, align 4, !dbg !658
  %56 = add nsw i32 %55, 2, !dbg !658
  %57 = sext i32 %56 to i64, !dbg !658
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57, !dbg !658
  %59 = load i8*, i8** %58, align 8, !dbg !658
  %60 = call i8* @quote(i8* noundef %59), !dbg !658
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %53, i8* noundef %60), !dbg !658
  call void @usage(i32 noundef 1) #22, !dbg !660
  unreachable, !dbg !660

61:                                               ; preds = %47, %44
  %62 = load i8, i8* %6, align 1, !dbg !661
  %63 = trunc i8 %62 to i1, !dbg !661
  br i1 %63, label %64, label %82, !dbg !663

64:                                               ; preds = %61
  br label %65, !dbg !664

65:                                               ; preds = %78, %64
  %66 = load i32, i32* @optind, align 4, !dbg !666
  %67 = load i32, i32* %4, align 4, !dbg !669
  %68 = icmp slt i32 %66, %67, !dbg !670
  br i1 %68, label %69, label %81, !dbg !671

69:                                               ; preds = %65
  %70 = load i8**, i8*** %5, align 8, !dbg !672
  %71 = load i32, i32* @optind, align 4, !dbg !673
  %72 = sext i32 %71 to i64, !dbg !672
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72, !dbg !672
  %74 = load i8*, i8** %73, align 8, !dbg !672
  %75 = load i8*, i8** %8, align 8, !dbg !674
  %76 = load i8, i8* %7, align 1, !dbg !675
  %77 = trunc i8 %76 to i1, !dbg !675
  call void @perform_basename(i8* noundef %74, i8* noundef %75, i1 noundef %77), !dbg !676
  br label %78, !dbg !676

78:                                               ; preds = %69
  %79 = load i32, i32* @optind, align 4, !dbg !677
  %80 = add nsw i32 %79, 1, !dbg !677
  store i32 %80, i32* @optind, align 4, !dbg !677
  br label %65, !dbg !678, !llvm.loop !679

81:                                               ; preds = %65
  br label %104, !dbg !681

82:                                               ; preds = %61
  %83 = load i8**, i8*** %5, align 8, !dbg !682
  %84 = load i32, i32* @optind, align 4, !dbg !683
  %85 = sext i32 %84 to i64, !dbg !682
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85, !dbg !682
  %87 = load i8*, i8** %86, align 8, !dbg !682
  %88 = load i32, i32* @optind, align 4, !dbg !684
  %89 = add nsw i32 %88, 2, !dbg !685
  %90 = load i32, i32* %4, align 4, !dbg !686
  %91 = icmp eq i32 %89, %90, !dbg !687
  br i1 %91, label %92, label %99, !dbg !684

92:                                               ; preds = %82
  %93 = load i8**, i8*** %5, align 8, !dbg !688
  %94 = load i32, i32* @optind, align 4, !dbg !689
  %95 = add nsw i32 %94, 1, !dbg !690
  %96 = sext i32 %95 to i64, !dbg !688
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96, !dbg !688
  %98 = load i8*, i8** %97, align 8, !dbg !688
  br label %100, !dbg !684

99:                                               ; preds = %82
  br label %100, !dbg !684

100:                                              ; preds = %99, %92
  %101 = phi i8* [ %98, %92 ], [ null, %99 ], !dbg !684
  %102 = load i8, i8* %7, align 1, !dbg !691
  %103 = trunc i8 %102 to i1, !dbg !691
  call void @perform_basename(i8* noundef %87, i8* noundef %101, i1 noundef %103), !dbg !692
  br label %104

104:                                              ; preds = %100, %81
  ret i32 0, !dbg !693
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
define internal void @perform_basename(i8* noundef %0, i8* noundef %1, i1 noundef %2) #4 !dbg !694 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !697, metadata !DIExpression()), !dbg !698
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !699, metadata !DIExpression()), !dbg !700
  %8 = zext i1 %2 to i8
  store i8 %8, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !701, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata i8** %7, metadata !703, metadata !DIExpression()), !dbg !704
  %9 = load i8*, i8** %4, align 8, !dbg !705
  %10 = call noalias nonnull i8* @base_name(i8* noundef %9), !dbg !706
  store i8* %10, i8** %7, align 8, !dbg !704
  %11 = load i8*, i8** %7, align 8, !dbg !707
  %12 = call i1 @strip_trailing_slashes(i8* noundef %11), !dbg !708
  %13 = load i8*, i8** %5, align 8, !dbg !709
  %14 = icmp ne i8* %13, null, !dbg !709
  br i1 %14, label %15, label %26, !dbg !711

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8, !dbg !712
  %17 = getelementptr inbounds i8, i8* %16, i64 0, !dbg !712
  %18 = load i8, i8* %17, align 1, !dbg !712
  %19 = zext i8 %18 to i32, !dbg !712
  %20 = icmp eq i32 %19, 47, !dbg !712
  br i1 %20, label %26, label %21, !dbg !713

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8, !dbg !714
  br i1 false, label %26, label %23, !dbg !715

23:                                               ; preds = %21
  %24 = load i8*, i8** %7, align 8, !dbg !716
  %25 = load i8*, i8** %5, align 8, !dbg !717
  call void @remove_suffix(i8* noundef %24, i8* noundef %25), !dbg !718
  br label %26, !dbg !718

26:                                               ; preds = %23, %21, %15, %3
  %27 = load i8*, i8** %7, align 8, !dbg !719
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !719
  %29 = call i32 @fputs_unlocked(i8* noundef %27, %struct._IO_FILE* noundef %28), !dbg !719
  %30 = load i8, i8* %6, align 1, !dbg !720
  %31 = trunc i8 %30 to i1, !dbg !720
  %32 = zext i1 %31 to i64, !dbg !720
  %33 = select i1 %31, i32 0, i32 10, !dbg !720
  %34 = call i32 @putchar_unlocked(i32 noundef %33), !dbg !720
  %35 = load i8*, i8** %7, align 8, !dbg !721
  call void @free(i8* noundef %35) #18, !dbg !722
  ret void, !dbg !723
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_suffix(i8* noundef %0, i8* noundef %1) #4 !dbg !724 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !727, metadata !DIExpression()), !dbg !728
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !729, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata i8** %5, metadata !731, metadata !DIExpression()), !dbg !732
  %7 = load i8*, i8** %3, align 8, !dbg !733
  %8 = load i8*, i8** %3, align 8, !dbg !734
  %9 = call i64 @strlen(i8* noundef %8) #20, !dbg !735
  %10 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !736
  store i8* %10, i8** %5, align 8, !dbg !732
  call void @llvm.dbg.declare(metadata i8** %6, metadata !737, metadata !DIExpression()), !dbg !738
  %11 = load i8*, i8** %4, align 8, !dbg !739
  %12 = load i8*, i8** %4, align 8, !dbg !740
  %13 = call i64 @strlen(i8* noundef %12) #20, !dbg !741
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !742
  store i8* %14, i8** %6, align 8, !dbg !738
  br label %15, !dbg !743

15:                                               ; preds = %36, %2
  %16 = load i8*, i8** %5, align 8, !dbg !744
  %17 = load i8*, i8** %3, align 8, !dbg !745
  %18 = icmp ugt i8* %16, %17, !dbg !746
  br i1 %18, label %19, label %23, !dbg !747

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8, !dbg !748
  %21 = load i8*, i8** %4, align 8, !dbg !749
  %22 = icmp ugt i8* %20, %21, !dbg !750
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ], !dbg !751
  br i1 %24, label %25, label %37, !dbg !743

25:                                               ; preds = %23
  %26 = load i8*, i8** %5, align 8, !dbg !752
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !752
  store i8* %27, i8** %5, align 8, !dbg !752
  %28 = load i8, i8* %27, align 1, !dbg !754
  %29 = zext i8 %28 to i32, !dbg !754
  %30 = load i8*, i8** %6, align 8, !dbg !755
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !755
  store i8* %31, i8** %6, align 8, !dbg !755
  %32 = load i8, i8* %31, align 1, !dbg !756
  %33 = zext i8 %32 to i32, !dbg !756
  %34 = icmp ne i32 %29, %33, !dbg !757
  br i1 %34, label %35, label %36, !dbg !758

35:                                               ; preds = %25
  br label %43, !dbg !759

36:                                               ; preds = %25
  br label %15, !dbg !743, !llvm.loop !760

37:                                               ; preds = %23
  %38 = load i8*, i8** %5, align 8, !dbg !762
  %39 = load i8*, i8** %3, align 8, !dbg !764
  %40 = icmp ugt i8* %38, %39, !dbg !765
  br i1 %40, label %41, label %43, !dbg !766

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8, !dbg !767
  store i8 0, i8* %42, align 1, !dbg !768
  br label %43, !dbg !769

43:                                               ; preds = %35, %41, %37
  ret void, !dbg !770
}

declare i32 @putchar_unlocked(i32 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !771 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !772, metadata !DIExpression()), !dbg !773
  %3 = load i8*, i8** %2, align 8, !dbg !774
  store i8* %3, i8** @file_name, align 8, !dbg !775
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !777 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !780, metadata !DIExpression()), !dbg !781
  %4 = load i8, i8* %2, align 1, !dbg !782
  %5 = trunc i8 %4 to i1, !dbg !782
  %6 = zext i1 %5 to i8, !dbg !783
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !783
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !785 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !786
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !788
  %4 = icmp ne i32 %3, 0, !dbg !789
  br i1 %4, label %5, label %28, !dbg !790

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !791
  %7 = trunc i8 %6 to i1, !dbg !791
  br i1 %7, label %8, label %12, !dbg !792

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !793
  %10 = load i32, i32* %9, align 4, !dbg !793
  %11 = icmp eq i32 %10, 32, !dbg !794
  br i1 %11, label %28, label %12, !dbg !795

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !796, metadata !DIExpression()), !dbg !798
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.63, i64 0, i64 0)) #18, !dbg !799
  store i8* %13, i8** %1, align 8, !dbg !798
  %14 = load i8*, i8** @file_name, align 8, !dbg !800
  %15 = icmp ne i8* %14, null, !dbg !800
  br i1 %15, label %16, label %22, !dbg !802

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !803
  %18 = load i32, i32* %17, align 4, !dbg !803
  %19 = load i8*, i8** @file_name, align 8, !dbg !803
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !803
  %21 = load i8*, i8** %1, align 8, !dbg !803
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.64, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !803
  br label %26, !dbg !803

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !804
  %24 = load i32, i32* %23, align 4, !dbg !804
  %25 = load i8*, i8** %1, align 8, !dbg !804
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.65, i64 0, i64 0), i8* noundef %25), !dbg !804
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !805
  call void @_exit(i32 noundef %27) #22, !dbg !806
  unreachable, !dbg !806

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !807
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !809
  %31 = icmp ne i32 %30, 0, !dbg !810
  br i1 %31, label %32, label %34, !dbg !811

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !812
  call void @_exit(i32 noundef %33) #22, !dbg !813
  unreachable, !dbg !813

34:                                               ; preds = %28
  ret void, !dbg !814
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @base_name(i8* noundef %0) #4 !dbg !815 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata i8** %3, metadata !820, metadata !DIExpression()), !dbg !821
  %7 = load i8*, i8** %2, align 8, !dbg !822
  %8 = call i8* @last_component(i8* noundef %7) #20, !dbg !823
  store i8* %8, i8** %3, align 8, !dbg !821
  call void @llvm.dbg.declare(metadata i64* %4, metadata !824, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.declare(metadata i32* %5, metadata !826, metadata !DIExpression()), !dbg !827
  %9 = load i8*, i8** %3, align 8, !dbg !828
  %10 = load i8, i8* %9, align 1, !dbg !830
  %11 = icmp ne i8 %10, 0, !dbg !830
  br i1 %11, label %12, label %26, !dbg !831

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8, !dbg !832
  %14 = call i64 @base_len(i8* noundef %13) #20, !dbg !834
  store i64 %14, i64* %4, align 8, !dbg !835
  %15 = load i8*, i8** %3, align 8, !dbg !836
  %16 = load i64, i64* %4, align 8, !dbg !836
  %17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !836
  %18 = load i8, i8* %17, align 1, !dbg !836
  %19 = zext i8 %18 to i32, !dbg !836
  %20 = icmp eq i32 %19, 47, !dbg !836
  %21 = zext i1 %20 to i32, !dbg !836
  %22 = sext i32 %21 to i64, !dbg !836
  %23 = load i64, i64* %4, align 8, !dbg !837
  %24 = add nsw i64 %23, %22, !dbg !837
  store i64 %24, i64* %4, align 8, !dbg !837
  %25 = load i8*, i8** %3, align 8, !dbg !838
  store i32 0, i32* %5, align 4, !dbg !839
  br label %30, !dbg !840

26:                                               ; preds = %1
  %27 = load i8*, i8** %2, align 8, !dbg !841
  store i8* %27, i8** %3, align 8, !dbg !843
  %28 = load i8*, i8** %3, align 8, !dbg !844
  %29 = call i64 @base_len(i8* noundef %28) #20, !dbg !845
  store i64 %29, i64* %4, align 8, !dbg !846
  store i32 0, i32* %5, align 4, !dbg !847
  br label %30

30:                                               ; preds = %26, %12
  call void @llvm.dbg.declare(metadata i8** %6, metadata !848, metadata !DIExpression()), !dbg !849
  %31 = load i32, i32* %5, align 4, !dbg !850
  %32 = sext i32 %31 to i64, !dbg !850
  %33 = load i64, i64* %4, align 8, !dbg !851
  %34 = add nsw i64 %32, %33, !dbg !852
  %35 = add nsw i64 %34, 1, !dbg !853
  %36 = call noalias nonnull i8* @ximalloc(i64 noundef %35) #23, !dbg !854
  store i8* %36, i8** %6, align 8, !dbg !849
  %37 = load i32, i32* %5, align 4, !dbg !855
  %38 = icmp ne i32 %37, 0, !dbg !855
  br i1 %38, label %39, label %44, !dbg !857

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8, !dbg !858
  %41 = getelementptr inbounds i8, i8* %40, i64 0, !dbg !858
  store i8 46, i8* %41, align 1, !dbg !860
  %42 = load i8*, i8** %6, align 8, !dbg !861
  %43 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !861
  store i8 47, i8* %43, align 1, !dbg !862
  br label %44, !dbg !863

44:                                               ; preds = %39, %30
  %45 = load i8*, i8** %6, align 8, !dbg !864
  %46 = load i32, i32* %5, align 4, !dbg !865
  %47 = sext i32 %46 to i64, !dbg !866
  %48 = getelementptr inbounds i8, i8* %45, i64 %47, !dbg !866
  %49 = load i8*, i8** %3, align 8, !dbg !867
  %50 = load i64, i64* %4, align 8, !dbg !868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %48, i8* align 1 %49, i64 %50, i1 false), !dbg !869
  %51 = load i8*, i8** %6, align 8, !dbg !870
  %52 = load i32, i32* %5, align 4, !dbg !871
  %53 = sext i32 %52 to i64, !dbg !871
  %54 = load i64, i64* %4, align 8, !dbg !872
  %55 = add nsw i64 %53, %54, !dbg !873
  %56 = getelementptr inbounds i8, i8* %51, i64 %55, !dbg !870
  store i8 0, i8* %56, align 1, !dbg !874
  %57 = load i8*, i8** %6, align 8, !dbg !875
  ret i8* %57, !dbg !876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @strip_trailing_slashes(i8* noundef %0) #4 !dbg !877 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !880, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.declare(metadata i8** %3, metadata !882, metadata !DIExpression()), !dbg !883
  %6 = load i8*, i8** %2, align 8, !dbg !884
  %7 = call i8* @last_component(i8* noundef %6) #20, !dbg !885
  store i8* %7, i8** %3, align 8, !dbg !883
  %8 = load i8*, i8** %3, align 8, !dbg !886
  %9 = load i8, i8* %8, align 1, !dbg !888
  %10 = icmp ne i8 %9, 0, !dbg !888
  br i1 %10, label %13, label %11, !dbg !889

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8, !dbg !890
  store i8* %12, i8** %3, align 8, !dbg !891
  br label %13, !dbg !892

13:                                               ; preds = %11, %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !893, metadata !DIExpression()), !dbg !894
  %14 = load i8*, i8** %3, align 8, !dbg !895
  %15 = load i8*, i8** %3, align 8, !dbg !896
  %16 = call i64 @base_len(i8* noundef %15) #20, !dbg !897
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !898
  store i8* %17, i8** %4, align 8, !dbg !894
  call void @llvm.dbg.declare(metadata i8* %5, metadata !899, metadata !DIExpression()), !dbg !900
  %18 = load i8*, i8** %4, align 8, !dbg !901
  %19 = load i8, i8* %18, align 1, !dbg !902
  %20 = zext i8 %19 to i32, !dbg !902
  %21 = icmp ne i32 %20, 0, !dbg !903
  %22 = zext i1 %21 to i8, !dbg !900
  store i8 %22, i8* %5, align 1, !dbg !900
  %23 = load i8*, i8** %4, align 8, !dbg !904
  store i8 0, i8* %23, align 1, !dbg !905
  %24 = load i8, i8* %5, align 1, !dbg !906
  %25 = trunc i8 %24 to i1, !dbg !906
  ret i1 %25, !dbg !907
}

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !908 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !911, metadata !DIExpression()), !dbg !912
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !913, metadata !DIExpression()), !dbg !912
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !914, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !915, metadata !DIExpression()), !dbg !912
  call void @flush_stdout(), !dbg !916
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !917
  %10 = icmp ne void ()* %9, null, !dbg !917
  br i1 %10, label %11, label %13, !dbg !919

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !920
  call void %12(), !dbg !921
  br label %17, !dbg !921

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !922
  %15 = call i8* @getprogname() #20, !dbg !924
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* noundef %15), !dbg !925
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !926
  %19 = load i32, i32* %6, align 4, !dbg !926
  %20 = load i8*, i8** %7, align 8, !dbg !926
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !926
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !926
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !926
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !926
  ret void, !dbg !927
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !928 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !929, metadata !DIExpression()), !dbg !930
  store i32 1, i32* %1, align 4, !dbg !931
  %2 = load i32, i32* %1, align 4, !dbg !932
  %3 = icmp sle i32 0, %2, !dbg !934
  br i1 %3, label %4, label %11, !dbg !935

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !936
  %6 = call i32 @is_open(i32 noundef %5), !dbg !937
  %7 = icmp ne i32 %6, 0, !dbg !937
  br i1 %7, label %8, label %11, !dbg !938

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !939
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !939
  br label %11, !dbg !939

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !940
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !941 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !942, metadata !DIExpression()), !dbg !943
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !944, metadata !DIExpression()), !dbg !943
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !945, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !946, metadata !DIExpression()), !dbg !943
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !947
  %10 = load i8*, i8** %7, align 8, !dbg !948
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !949
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !949
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !949
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !949
  %14 = load i32, i32* @error_message_count, align 4, !dbg !950
  %15 = add i32 %14, 1, !dbg !950
  store i32 %15, i32* @error_message_count, align 4, !dbg !950
  %16 = load i32, i32* %6, align 4, !dbg !951
  %17 = icmp ne i32 %16, 0, !dbg !951
  br i1 %17, label %18, label %20, !dbg !953

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !954
  call void @print_errno_message(i32 noundef %19), !dbg !955
  br label %20, !dbg !955

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !956
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !956
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !957
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !957
  %25 = load i32, i32* %5, align 4, !dbg !958
  %26 = icmp ne i32 %25, 0, !dbg !958
  br i1 %26, label %27, label %29, !dbg !960

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !961
  call void @exit(i32 noundef %28) #19, !dbg !962
  unreachable, !dbg !962

29:                                               ; preds = %20
  ret void, !dbg !963
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !964 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !965, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.declare(metadata i8** %3, metadata !967, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !969, metadata !DIExpression()), !dbg !973
  %5 = load i32, i32* %2, align 4, !dbg !974
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !975
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !976
  store i8* %7, i8** %3, align 8, !dbg !977
  %8 = load i8*, i8** %3, align 8, !dbg !978
  %9 = icmp ne i8* %8, null, !dbg !978
  br i1 %9, label %12, label %10, !dbg !980

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.72, i64 0, i64 0)) #18, !dbg !981
  store i8* %11, i8** %3, align 8, !dbg !982
  br label %12, !dbg !983

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !984
  %14 = load i8*, i8** %3, align 8, !dbg !985
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.73, i64 0, i64 0), i8* noundef %14), !dbg !986
  ret void, !dbg !987
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !988 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !991, metadata !DIExpression()), !dbg !992
  %3 = load i32, i32* %2, align 4, !dbg !993
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !994
  %5 = icmp sle i32 0, %4, !dbg !995
  %6 = zext i1 %5 to i32, !dbg !995
  ret i32 %6, !dbg !996
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !997 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1000, metadata !DIExpression()), !dbg !1001
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1002, metadata !DIExpression()), !dbg !1003
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1004, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1006, metadata !DIExpression()), !dbg !1007
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1008
  call void @llvm.va_start(i8* %9), !dbg !1008
  %10 = load i32, i32* %4, align 4, !dbg !1009
  %11 = load i32, i32* %5, align 4, !dbg !1009
  %12 = load i8*, i8** %6, align 8, !dbg !1009
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1009
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1009
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1009
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #24, !dbg !1009
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1010
  call void @llvm.va_end(i8* %15), !dbg !1010
  ret void, !dbg !1011
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !70 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1012, metadata !DIExpression()), !dbg !1013
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1014, metadata !DIExpression()), !dbg !1013
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1015, metadata !DIExpression()), !dbg !1013
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1016, metadata !DIExpression()), !dbg !1013
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1017, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1018, metadata !DIExpression()), !dbg !1013
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1019
  %14 = icmp ne i32 %13, 0, !dbg !1019
  br i1 %14, label %15, label %38, !dbg !1021

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1022
  %17 = load i32, i32* %10, align 4, !dbg !1025
  %18 = icmp eq i32 %16, %17, !dbg !1026
  br i1 %18, label %19, label %35, !dbg !1027

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1028
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1029
  %22 = icmp eq i8* %20, %21, !dbg !1030
  br i1 %22, label %34, label %23, !dbg !1031

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1032
  %25 = icmp ne i8* %24, null, !dbg !1033
  br i1 %25, label %26, label %35, !dbg !1034

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1035
  %28 = icmp ne i8* %27, null, !dbg !1036
  br i1 %28, label %29, label %35, !dbg !1037

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1038
  %31 = load i8*, i8** %9, align 8, !dbg !1039
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1040
  %33 = icmp eq i32 %32, 0, !dbg !1041
  br i1 %33, label %34, label %35, !dbg !1042

34:                                               ; preds = %29, %19
  br label %61, !dbg !1043

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1044
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1045
  %37 = load i32, i32* %10, align 4, !dbg !1046
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1047
  br label %38, !dbg !1048

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1049
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1050
  %40 = icmp ne void ()* %39, null, !dbg !1050
  br i1 %40, label %41, label %43, !dbg !1052

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1053
  call void %42(), !dbg !1054
  br label %47, !dbg !1054

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1055
  %45 = call i8* @getprogname() #20, !dbg !1057
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.76, i64 0, i64 0), i8* noundef %45), !dbg !1058
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1059
  %49 = load i8*, i8** %9, align 8, !dbg !1060
  %50 = icmp ne i8* %49, null, !dbg !1061
  %51 = zext i1 %50 to i64, !dbg !1060
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.77, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), !dbg !1060
  %53 = load i8*, i8** %9, align 8, !dbg !1062
  %54 = load i32, i32* %10, align 4, !dbg !1063
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1064
  %56 = load i32, i32* %7, align 4, !dbg !1065
  %57 = load i32, i32* %8, align 4, !dbg !1065
  %58 = load i8*, i8** %11, align 8, !dbg !1065
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1065
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1065
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1065
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1065
  br label %61, !dbg !1066

61:                                               ; preds = %47, %34
  ret void, !dbg !1066
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1067 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1070, metadata !DIExpression()), !dbg !1071
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1072, metadata !DIExpression()), !dbg !1073
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1074, metadata !DIExpression()), !dbg !1075
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1076, metadata !DIExpression()), !dbg !1077
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1080, metadata !DIExpression()), !dbg !1081
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1082
  call void @llvm.va_start(i8* %13), !dbg !1082
  %14 = load i32, i32* %6, align 4, !dbg !1083
  %15 = load i32, i32* %7, align 4, !dbg !1083
  %16 = load i8*, i8** %8, align 8, !dbg !1083
  %17 = load i32, i32* %9, align 4, !dbg !1083
  %18 = load i8*, i8** %10, align 8, !dbg !1083
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1083
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1083
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #24, !dbg !1083
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1084
  call void @llvm.va_end(i8* %21), !dbg !1084
  ret void, !dbg !1085
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1086 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1089
  ret i8* %1, !dbg !1090
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1091 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1092, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1094, metadata !DIExpression()), !dbg !1095
  %5 = load i8*, i8** %2, align 8, !dbg !1096
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1097
  store i8* %6, i8** %3, align 8, !dbg !1095
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1098, metadata !DIExpression()), !dbg !1099
  %7 = load i8*, i8** %3, align 8, !dbg !1100
  %8 = icmp ne i8* %7, null, !dbg !1100
  br i1 %8, label %9, label %12, !dbg !1100

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1101
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1102
  br label %14, !dbg !1100

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1103
  br label %14, !dbg !1100

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1100
  store i8* %15, i8** %4, align 8, !dbg !1099
  %16 = load i8*, i8** %4, align 8, !dbg !1104
  %17 = load i8*, i8** %2, align 8, !dbg !1106
  %18 = ptrtoint i8* %16 to i64, !dbg !1107
  %19 = ptrtoint i8* %17 to i64, !dbg !1107
  %20 = sub i64 %18, %19, !dbg !1107
  %21 = icmp sle i64 7, %20, !dbg !1108
  br i1 %21, label %22, label %36, !dbg !1109

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1110
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1111
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0), i64 noundef 7), !dbg !1112
  br i1 %25, label %26, label %36, !dbg !1113

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1114
  store i8* %27, i8** %2, align 8, !dbg !1116
  %28 = load i8*, i8** %4, align 8, !dbg !1117
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.88, i64 0, i64 0), i64 noundef 3) #20, !dbg !1119
  %30 = icmp eq i32 %29, 0, !dbg !1120
  br i1 %30, label %31, label %35, !dbg !1121

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1122
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1122
  store i8* %33, i8** %4, align 8, !dbg !1122
  %34 = load i8*, i8** %4, align 8, !dbg !1124
  store i8* %34, i8** %2, align 8, !dbg !1125
  br label %35, !dbg !1126

35:                                               ; preds = %31, %26
  br label %36, !dbg !1127

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1128
  store i8* %37, i8** @program_name, align 8, !dbg !1129
  %38 = load i8*, i8** %2, align 8, !dbg !1130
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1131
  %39 = load i8*, i8** %4, align 8, !dbg !1132
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1133
  ret void, !dbg !1134
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !104 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1135, metadata !DIExpression()), !dbg !1136
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1137, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1139, metadata !DIExpression()), !dbg !1140
  %9 = load i8*, i8** %4, align 8, !dbg !1141
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1142
  store i8* %10, i8** %6, align 8, !dbg !1140
  %11 = load i8*, i8** %6, align 8, !dbg !1143
  %12 = load i8*, i8** %4, align 8, !dbg !1145
  %13 = icmp ne i8* %11, %12, !dbg !1146
  br i1 %13, label %14, label %16, !dbg !1147

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1148
  store i8* %15, i8** %3, align 8, !dbg !1149
  br label %26, !dbg !1149

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1150, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1157, metadata !DIExpression()), !dbg !1168
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1169
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1170
  %18 = icmp eq i64 %17, 2, !dbg !1172
  br i1 %18, label %19, label %24, !dbg !1173

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1174
  %21 = icmp eq i32 %20, 2047, !dbg !1175
  br i1 %21, label %22, label %24, !dbg !1176

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1177
  store i8* %23, i8** %3, align 8, !dbg !1178
  br label %26, !dbg !1178

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1179
  store i8* %25, i8** %3, align 8, !dbg !1180
  br label %26, !dbg !1180

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1181
  ret i8* %27, !dbg !1181
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1182 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1186, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1188, metadata !DIExpression()), !dbg !1189
  %5 = call i32* @__errno_location() #21, !dbg !1190
  %6 = load i32, i32* %5, align 4, !dbg !1190
  store i32 %6, i32* %3, align 4, !dbg !1189
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1191, metadata !DIExpression()), !dbg !1192
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1193
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1193
  br i1 %8, label %9, label %11, !dbg !1193

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1194
  br label %12, !dbg !1193

11:                                               ; preds = %1
  br label %12, !dbg !1193

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1193
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1193
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #25, !dbg !1195
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1195
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1192
  %17 = load i32, i32* %3, align 4, !dbg !1196
  %18 = call i32* @__errno_location() #21, !dbg !1197
  store i32 %17, i32* %18, align 4, !dbg !1198
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1199
  ret %struct.quoting_options* %19, !dbg !1200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1201 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1206, metadata !DIExpression()), !dbg !1207
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1208
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1208
  br i1 %4, label %5, label %7, !dbg !1208

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1209
  br label %8, !dbg !1208

7:                                                ; preds = %1
  br label %8, !dbg !1208

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1208
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1210
  %11 = load i32, i32* %10, align 8, !dbg !1210
  ret i32 %11, !dbg !1211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1212 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1215, metadata !DIExpression()), !dbg !1216
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1217, metadata !DIExpression()), !dbg !1218
  %5 = load i32, i32* %4, align 4, !dbg !1219
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1220
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1220
  br i1 %7, label %8, label %10, !dbg !1220

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1221
  br label %11, !dbg !1220

10:                                               ; preds = %2
  br label %11, !dbg !1220

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1220
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1222
  store i32 %5, i32* %13, align 8, !dbg !1223
  ret void, !dbg !1224
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1225 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1228, metadata !DIExpression()), !dbg !1229
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1230, metadata !DIExpression()), !dbg !1231
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1232, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1234, metadata !DIExpression()), !dbg !1235
  %11 = load i8, i8* %5, align 1, !dbg !1236
  store i8 %11, i8* %7, align 1, !dbg !1235
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1237, metadata !DIExpression()), !dbg !1239
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1240
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1240
  br i1 %13, label %14, label %16, !dbg !1240

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1241
  br label %17, !dbg !1240

16:                                               ; preds = %3
  br label %17, !dbg !1240

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1240
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1242
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1243
  %21 = load i8, i8* %7, align 1, !dbg !1244
  %22 = zext i8 %21 to i64, !dbg !1244
  %23 = udiv i64 %22, 32, !dbg !1245
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1246
  store i32* %24, i32** %8, align 8, !dbg !1239
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1247, metadata !DIExpression()), !dbg !1248
  %25 = load i8, i8* %7, align 1, !dbg !1249
  %26 = zext i8 %25 to i64, !dbg !1249
  %27 = urem i64 %26, 32, !dbg !1250
  %28 = trunc i64 %27 to i32, !dbg !1249
  store i32 %28, i32* %9, align 4, !dbg !1248
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1251, metadata !DIExpression()), !dbg !1252
  %29 = load i32*, i32** %8, align 8, !dbg !1253
  %30 = load i32, i32* %29, align 4, !dbg !1254
  %31 = load i32, i32* %9, align 4, !dbg !1255
  %32 = lshr i32 %30, %31, !dbg !1256
  %33 = and i32 %32, 1, !dbg !1257
  store i32 %33, i32* %10, align 4, !dbg !1252
  %34 = load i32, i32* %6, align 4, !dbg !1258
  %35 = and i32 %34, 1, !dbg !1259
  %36 = load i32, i32* %10, align 4, !dbg !1260
  %37 = xor i32 %35, %36, !dbg !1261
  %38 = load i32, i32* %9, align 4, !dbg !1262
  %39 = shl i32 %37, %38, !dbg !1263
  %40 = load i32*, i32** %8, align 8, !dbg !1264
  %41 = load i32, i32* %40, align 4, !dbg !1265
  %42 = xor i32 %41, %39, !dbg !1265
  store i32 %42, i32* %40, align 4, !dbg !1265
  %43 = load i32, i32* %10, align 4, !dbg !1266
  ret i32 %43, !dbg !1267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1268 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1271, metadata !DIExpression()), !dbg !1272
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1273, metadata !DIExpression()), !dbg !1274
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1275
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1275
  br i1 %7, label %9, label %8, !dbg !1277

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1278
  br label %9, !dbg !1279

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1280, metadata !DIExpression()), !dbg !1281
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1282
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1283
  %12 = load i32, i32* %11, align 4, !dbg !1283
  store i32 %12, i32* %5, align 4, !dbg !1281
  %13 = load i32, i32* %4, align 4, !dbg !1284
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1285
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1286
  store i32 %13, i32* %15, align 4, !dbg !1287
  %16 = load i32, i32* %5, align 4, !dbg !1288
  ret i32 %16, !dbg !1289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1290 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1293, metadata !DIExpression()), !dbg !1294
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1295, metadata !DIExpression()), !dbg !1296
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1297, metadata !DIExpression()), !dbg !1298
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1299
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1299
  br i1 %8, label %10, label %9, !dbg !1301

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1302
  br label %10, !dbg !1303

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1304
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1305
  store i32 10, i32* %12, align 8, !dbg !1306
  %13 = load i8*, i8** %5, align 8, !dbg !1307
  %14 = icmp ne i8* %13, null, !dbg !1307
  br i1 %14, label %15, label %18, !dbg !1309

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1310
  %17 = icmp ne i8* %16, null, !dbg !1310
  br i1 %17, label %19, label %18, !dbg !1311

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1312
  unreachable, !dbg !1312

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1313
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1314
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1315
  store i8* %20, i8** %22, align 8, !dbg !1316
  %23 = load i8*, i8** %6, align 8, !dbg !1317
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1318
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1319
  store i8* %23, i8** %25, align 8, !dbg !1320
  ret void, !dbg !1321
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1322 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1325, metadata !DIExpression()), !dbg !1326
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1327, metadata !DIExpression()), !dbg !1328
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1329, metadata !DIExpression()), !dbg !1330
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1331, metadata !DIExpression()), !dbg !1332
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1333, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1335, metadata !DIExpression()), !dbg !1336
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1337
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1337
  br i1 %15, label %16, label %18, !dbg !1337

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1338
  br label %19, !dbg !1337

18:                                               ; preds = %5
  br label %19, !dbg !1337

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1337
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1336
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1339, metadata !DIExpression()), !dbg !1340
  %21 = call i32* @__errno_location() #21, !dbg !1341
  %22 = load i32, i32* %21, align 4, !dbg !1341
  store i32 %22, i32* %12, align 4, !dbg !1340
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1342, metadata !DIExpression()), !dbg !1343
  %23 = load i8*, i8** %6, align 8, !dbg !1344
  %24 = load i64, i64* %7, align 8, !dbg !1345
  %25 = load i8*, i8** %8, align 8, !dbg !1346
  %26 = load i64, i64* %9, align 8, !dbg !1347
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1348
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1349
  %29 = load i32, i32* %28, align 8, !dbg !1349
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1350
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1351
  %32 = load i32, i32* %31, align 4, !dbg !1351
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1352
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1353
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1352
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1354
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1355
  %38 = load i8*, i8** %37, align 8, !dbg !1355
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1356
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1357
  %41 = load i8*, i8** %40, align 8, !dbg !1357
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1358
  store i64 %42, i64* %13, align 8, !dbg !1343
  %43 = load i32, i32* %12, align 4, !dbg !1359
  %44 = call i32* @__errno_location() #21, !dbg !1360
  store i32 %43, i32* %44, align 4, !dbg !1361
  %45 = load i64, i64* %13, align 8, !dbg !1362
  ret i64 %45, !dbg !1363
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1364 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1369, metadata !DIExpression()), !dbg !1370
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1371, metadata !DIExpression()), !dbg !1372
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1373, metadata !DIExpression()), !dbg !1374
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1375, metadata !DIExpression()), !dbg !1376
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1377, metadata !DIExpression()), !dbg !1378
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1379, metadata !DIExpression()), !dbg !1380
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1381, metadata !DIExpression()), !dbg !1382
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1383, metadata !DIExpression()), !dbg !1384
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1385, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1387, metadata !DIExpression()), !dbg !1388
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1389
  %45 = icmp eq i64 %44, 1, !dbg !1390
  %46 = zext i1 %45 to i8, !dbg !1388
  store i8 %46, i8* %20, align 1, !dbg !1388
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1391, metadata !DIExpression()), !dbg !1392
  store i64 0, i64* %21, align 8, !dbg !1392
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1393, metadata !DIExpression()), !dbg !1394
  store i64 0, i64* %22, align 8, !dbg !1394
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1395, metadata !DIExpression()), !dbg !1396
  store i8* null, i8** %23, align 8, !dbg !1396
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i64 0, i64* %24, align 8, !dbg !1398
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i8 0, i8* %25, align 1, !dbg !1400
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1401, metadata !DIExpression()), !dbg !1402
  %47 = load i32, i32* %16, align 4, !dbg !1403
  %48 = and i32 %47, 2, !dbg !1404
  %49 = icmp ne i32 %48, 0, !dbg !1405
  %50 = zext i1 %49 to i8, !dbg !1402
  store i8 %50, i8* %26, align 1, !dbg !1402
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1406, metadata !DIExpression()), !dbg !1407
  store i8 0, i8* %27, align 1, !dbg !1407
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1408, metadata !DIExpression()), !dbg !1409
  store i8 1, i8* %28, align 1, !dbg !1409
  br label %51, !dbg !1410

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1411), !dbg !1412
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1413, metadata !DIExpression()), !dbg !1414
  store i8 0, i8* %29, align 1, !dbg !1414
  %52 = load i32, i32* %15, align 4, !dbg !1415
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
  ], !dbg !1416

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1417
  store i8 1, i8* %26, align 1, !dbg !1419
  br label %54, !dbg !1420

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1421
  %56 = trunc i8 %55 to i1, !dbg !1421
  br i1 %56, label %70, label %57, !dbg !1423

57:                                               ; preds = %54
  br label %58, !dbg !1424

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1425
  %60 = load i64, i64* %12, align 8, !dbg !1425
  %61 = icmp ult i64 %59, %60, !dbg !1425
  br i1 %61, label %62, label %66, !dbg !1428

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1425
  %64 = load i64, i64* %21, align 8, !dbg !1425
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1425
  store i8 34, i8* %65, align 1, !dbg !1425
  br label %66, !dbg !1425

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1428
  %68 = add i64 %67, 1, !dbg !1428
  store i64 %68, i64* %21, align 8, !dbg !1428
  br label %69, !dbg !1428

69:                                               ; preds = %66
  br label %70, !dbg !1428

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1429
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), i8** %23, align 8, !dbg !1430
  store i64 1, i64* %24, align 8, !dbg !1431
  br label %138, !dbg !1432

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1433
  store i8 0, i8* %26, align 1, !dbg !1434
  br label %138, !dbg !1435

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1436
  %74 = icmp ne i32 %73, 10, !dbg !1439
  br i1 %74, label %75, label %80, !dbg !1440

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1441
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.102, i64 0, i64 0), i32 noundef %76), !dbg !1443
  store i8* %77, i8** %18, align 8, !dbg !1444
  %78 = load i32, i32* %15, align 4, !dbg !1445
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.103, i64 0, i64 0), i32 noundef %78), !dbg !1446
  store i8* %79, i8** %19, align 8, !dbg !1447
  br label %80, !dbg !1448

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1449
  %82 = trunc i8 %81 to i1, !dbg !1449
  br i1 %82, label %108, label %83, !dbg !1451

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1452, metadata !DIExpression()), !dbg !1454
  %84 = load i8*, i8** %18, align 8, !dbg !1455
  store i8* %84, i8** %30, align 8, !dbg !1454
  br label %85, !dbg !1456

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1457
  %87 = load i8, i8* %86, align 1, !dbg !1459
  %88 = icmp ne i8 %87, 0, !dbg !1460
  br i1 %88, label %89, label %107, !dbg !1460

89:                                               ; preds = %85
  br label %90, !dbg !1461

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1462
  %92 = load i64, i64* %12, align 8, !dbg !1462
  %93 = icmp ult i64 %91, %92, !dbg !1462
  br i1 %93, label %94, label %100, !dbg !1465

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1462
  %96 = load i8, i8* %95, align 1, !dbg !1462
  %97 = load i8*, i8** %11, align 8, !dbg !1462
  %98 = load i64, i64* %21, align 8, !dbg !1462
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1462
  store i8 %96, i8* %99, align 1, !dbg !1462
  br label %100, !dbg !1462

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1465
  %102 = add i64 %101, 1, !dbg !1465
  store i64 %102, i64* %21, align 8, !dbg !1465
  br label %103, !dbg !1465

103:                                              ; preds = %100
  br label %104, !dbg !1465

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1466
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1466
  store i8* %106, i8** %30, align 8, !dbg !1466
  br label %85, !dbg !1467, !llvm.loop !1468

107:                                              ; preds = %85
  br label %108, !dbg !1469

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1470
  %109 = load i8*, i8** %19, align 8, !dbg !1471
  store i8* %109, i8** %23, align 8, !dbg !1472
  %110 = load i8*, i8** %23, align 8, !dbg !1473
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1474
  store i64 %111, i64* %24, align 8, !dbg !1475
  br label %138, !dbg !1476

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1477
  br label %113, !dbg !1478

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1479
  br label %114, !dbg !1480

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1481
  %116 = trunc i8 %115 to i1, !dbg !1481
  br i1 %116, label %118, label %117, !dbg !1483

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1484
  br label %118, !dbg !1485

118:                                              ; preds = %117, %114
  br label %119, !dbg !1481

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1486
  %120 = load i8, i8* %26, align 1, !dbg !1487
  %121 = trunc i8 %120 to i1, !dbg !1487
  br i1 %121, label %135, label %122, !dbg !1489

122:                                              ; preds = %119
  br label %123, !dbg !1490

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1491
  %125 = load i64, i64* %12, align 8, !dbg !1491
  %126 = icmp ult i64 %124, %125, !dbg !1491
  br i1 %126, label %127, label %131, !dbg !1494

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1491
  %129 = load i64, i64* %21, align 8, !dbg !1491
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1491
  store i8 39, i8* %130, align 1, !dbg !1491
  br label %131, !dbg !1491

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1494
  %133 = add i64 %132, 1, !dbg !1494
  store i64 %133, i64* %21, align 8, !dbg !1494
  br label %134, !dbg !1494

134:                                              ; preds = %131
  br label %135, !dbg !1494

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.103, i64 0, i64 0), i8** %23, align 8, !dbg !1495
  store i64 1, i64* %24, align 8, !dbg !1496
  br label %138, !dbg !1497

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1498
  br label %138, !dbg !1499

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1500
  unreachable, !dbg !1500

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1501, metadata !DIExpression()), !dbg !1503
  store i64 0, i64* %31, align 8, !dbg !1503
  br label %139, !dbg !1504

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1505
  %141 = icmp eq i64 %140, -1, !dbg !1507
  br i1 %141, label %142, label %150, !dbg !1505

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1508
  %144 = load i64, i64* %31, align 8, !dbg !1509
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1508
  %146 = load i8, i8* %145, align 1, !dbg !1508
  %147 = zext i8 %146 to i32, !dbg !1508
  %148 = icmp eq i32 %147, 0, !dbg !1510
  %149 = zext i1 %148 to i32, !dbg !1510
  br label %155, !dbg !1505

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1511
  %152 = load i64, i64* %14, align 8, !dbg !1512
  %153 = icmp eq i64 %151, %152, !dbg !1513
  %154 = zext i1 %153 to i32, !dbg !1513
  br label %155, !dbg !1505

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1505
  %157 = icmp ne i32 %156, 0, !dbg !1514
  %158 = xor i1 %157, true, !dbg !1514
  br i1 %158, label %159, label %996, !dbg !1515

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1516, metadata !DIExpression()), !dbg !1518
  store i8 0, i8* %32, align 1, !dbg !1518
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1519, metadata !DIExpression()), !dbg !1520
  store i8 0, i8* %33, align 1, !dbg !1520
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i8 0, i8* %34, align 1, !dbg !1522
  %160 = load i8, i8* %25, align 1, !dbg !1523
  %161 = trunc i8 %160 to i1, !dbg !1523
  br i1 %161, label %162, label %197, !dbg !1525

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1526
  %164 = icmp ne i32 %163, 2, !dbg !1527
  br i1 %164, label %165, label %197, !dbg !1528

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1529
  %167 = icmp ne i64 %166, 0, !dbg !1529
  br i1 %167, label %168, label %197, !dbg !1530

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1531
  %170 = load i64, i64* %24, align 8, !dbg !1532
  %171 = add i64 %169, %170, !dbg !1533
  %172 = load i64, i64* %14, align 8, !dbg !1534
  %173 = icmp eq i64 %172, -1, !dbg !1535
  br i1 %173, label %174, label %180, !dbg !1536

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1537
  %176 = icmp ult i64 1, %175, !dbg !1538
  br i1 %176, label %177, label %180, !dbg !1534

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1539
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1540
  store i64 %179, i64* %14, align 8, !dbg !1541
  br label %182, !dbg !1534

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1542
  br label %182, !dbg !1534

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1534
  %184 = icmp ule i64 %171, %183, !dbg !1543
  br i1 %184, label %185, label %197, !dbg !1544

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1545
  %187 = load i64, i64* %31, align 8, !dbg !1546
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1547
  %189 = load i8*, i8** %23, align 8, !dbg !1548
  %190 = load i64, i64* %24, align 8, !dbg !1549
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1550
  br i1 %191, label %192, label %197, !dbg !1551

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1552
  %194 = trunc i8 %193 to i1, !dbg !1552
  br i1 %194, label %195, label %196, !dbg !1555

195:                                              ; preds = %192
  br label %1078, !dbg !1556

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1557
  br label %197, !dbg !1558

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1559, metadata !DIExpression()), !dbg !1560
  %198 = load i8*, i8** %13, align 8, !dbg !1561
  %199 = load i64, i64* %31, align 8, !dbg !1562
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1561
  %201 = load i8, i8* %200, align 1, !dbg !1561
  store i8 %201, i8* %35, align 1, !dbg !1560
  %202 = load i8, i8* %35, align 1, !dbg !1563
  %203 = zext i8 %202 to i32, !dbg !1563
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
  ], !dbg !1564

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1565
  %206 = trunc i8 %205 to i1, !dbg !1565
  br i1 %206, label %207, label %318, !dbg !1568

207:                                              ; preds = %204
  br label %208, !dbg !1569

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1571
  %210 = trunc i8 %209 to i1, !dbg !1571
  br i1 %210, label %211, label %212, !dbg !1574

211:                                              ; preds = %208
  br label %1078, !dbg !1571

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1574
  %213 = load i32, i32* %15, align 4, !dbg !1575
  %214 = icmp eq i32 %213, 2, !dbg !1575
  br i1 %214, label %215, label %255, !dbg !1575

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1575
  %217 = trunc i8 %216 to i1, !dbg !1575
  br i1 %217, label %255, label %218, !dbg !1574

218:                                              ; preds = %215
  br label %219, !dbg !1577

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1579
  %221 = load i64, i64* %12, align 8, !dbg !1579
  %222 = icmp ult i64 %220, %221, !dbg !1579
  br i1 %222, label %223, label %227, !dbg !1582

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1579
  %225 = load i64, i64* %21, align 8, !dbg !1579
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1579
  store i8 39, i8* %226, align 1, !dbg !1579
  br label %227, !dbg !1579

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1582
  %229 = add i64 %228, 1, !dbg !1582
  store i64 %229, i64* %21, align 8, !dbg !1582
  br label %230, !dbg !1582

230:                                              ; preds = %227
  br label %231, !dbg !1577

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1583
  %233 = load i64, i64* %12, align 8, !dbg !1583
  %234 = icmp ult i64 %232, %233, !dbg !1583
  br i1 %234, label %235, label %239, !dbg !1586

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1583
  %237 = load i64, i64* %21, align 8, !dbg !1583
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1583
  store i8 36, i8* %238, align 1, !dbg !1583
  br label %239, !dbg !1583

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1586
  %241 = add i64 %240, 1, !dbg !1586
  store i64 %241, i64* %21, align 8, !dbg !1586
  br label %242, !dbg !1586

242:                                              ; preds = %239
  br label %243, !dbg !1577

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1587
  %245 = load i64, i64* %12, align 8, !dbg !1587
  %246 = icmp ult i64 %244, %245, !dbg !1587
  br i1 %246, label %247, label %251, !dbg !1590

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1587
  %249 = load i64, i64* %21, align 8, !dbg !1587
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1587
  store i8 39, i8* %250, align 1, !dbg !1587
  br label %251, !dbg !1587

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1590
  %253 = add i64 %252, 1, !dbg !1590
  store i64 %253, i64* %21, align 8, !dbg !1590
  br label %254, !dbg !1590

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1577
  br label %255, !dbg !1577

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1574

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1591
  %258 = load i64, i64* %12, align 8, !dbg !1591
  %259 = icmp ult i64 %257, %258, !dbg !1591
  br i1 %259, label %260, label %264, !dbg !1594

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1591
  %262 = load i64, i64* %21, align 8, !dbg !1591
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1591
  store i8 92, i8* %263, align 1, !dbg !1591
  br label %264, !dbg !1591

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1594
  %266 = add i64 %265, 1, !dbg !1594
  store i64 %266, i64* %21, align 8, !dbg !1594
  br label %267, !dbg !1594

267:                                              ; preds = %264
  br label %268, !dbg !1574

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1595
  %270 = icmp ne i32 %269, 2, !dbg !1597
  br i1 %270, label %271, label %317, !dbg !1598

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1599
  %273 = add i64 %272, 1, !dbg !1600
  %274 = load i64, i64* %14, align 8, !dbg !1601
  %275 = icmp ult i64 %273, %274, !dbg !1602
  br i1 %275, label %276, label %317, !dbg !1603

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1604
  %278 = load i64, i64* %31, align 8, !dbg !1605
  %279 = add i64 %278, 1, !dbg !1606
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1604
  %281 = load i8, i8* %280, align 1, !dbg !1604
  %282 = zext i8 %281 to i32, !dbg !1604
  %283 = icmp sle i32 48, %282, !dbg !1607
  br i1 %283, label %284, label %317, !dbg !1608

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1609
  %286 = load i64, i64* %31, align 8, !dbg !1610
  %287 = add i64 %286, 1, !dbg !1611
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1609
  %289 = load i8, i8* %288, align 1, !dbg !1609
  %290 = zext i8 %289 to i32, !dbg !1609
  %291 = icmp sle i32 %290, 57, !dbg !1612
  br i1 %291, label %292, label %317, !dbg !1613

292:                                              ; preds = %284
  br label %293, !dbg !1614

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1616
  %295 = load i64, i64* %12, align 8, !dbg !1616
  %296 = icmp ult i64 %294, %295, !dbg !1616
  br i1 %296, label %297, label %301, !dbg !1619

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1616
  %299 = load i64, i64* %21, align 8, !dbg !1616
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1616
  store i8 48, i8* %300, align 1, !dbg !1616
  br label %301, !dbg !1616

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1619
  %303 = add i64 %302, 1, !dbg !1619
  store i64 %303, i64* %21, align 8, !dbg !1619
  br label %304, !dbg !1619

304:                                              ; preds = %301
  br label %305, !dbg !1620

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1621
  %307 = load i64, i64* %12, align 8, !dbg !1621
  %308 = icmp ult i64 %306, %307, !dbg !1621
  br i1 %308, label %309, label %313, !dbg !1624

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1621
  %311 = load i64, i64* %21, align 8, !dbg !1621
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1621
  store i8 48, i8* %312, align 1, !dbg !1621
  br label %313, !dbg !1621

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1624
  %315 = add i64 %314, 1, !dbg !1624
  store i64 %315, i64* %21, align 8, !dbg !1624
  br label %316, !dbg !1624

316:                                              ; preds = %313
  br label %317, !dbg !1625

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1626
  br label %324, !dbg !1627

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1628
  %320 = and i32 %319, 1, !dbg !1630
  %321 = icmp ne i32 %320, 0, !dbg !1630
  br i1 %321, label %322, label %323, !dbg !1631

322:                                              ; preds = %318
  br label %993, !dbg !1632

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1633

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1634
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1635

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1636
  %329 = trunc i8 %328 to i1, !dbg !1636
  br i1 %329, label %330, label %331, !dbg !1639

330:                                              ; preds = %327
  br label %1078, !dbg !1640

331:                                              ; preds = %327
  br label %418, !dbg !1641

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1642
  %334 = and i32 %333, 4, !dbg !1644
  %335 = icmp ne i32 %334, 0, !dbg !1644
  br i1 %335, label %336, label %417, !dbg !1645

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1646
  %338 = add i64 %337, 2, !dbg !1647
  %339 = load i64, i64* %14, align 8, !dbg !1648
  %340 = icmp ult i64 %338, %339, !dbg !1649
  br i1 %340, label %341, label %417, !dbg !1650

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1651
  %343 = load i64, i64* %31, align 8, !dbg !1652
  %344 = add i64 %343, 1, !dbg !1653
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1651
  %346 = load i8, i8* %345, align 1, !dbg !1651
  %347 = zext i8 %346 to i32, !dbg !1651
  %348 = icmp eq i32 %347, 63, !dbg !1654
  br i1 %348, label %349, label %417, !dbg !1655

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1656
  %351 = load i64, i64* %31, align 8, !dbg !1657
  %352 = add i64 %351, 2, !dbg !1658
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1656
  %354 = load i8, i8* %353, align 1, !dbg !1656
  %355 = zext i8 %354 to i32, !dbg !1656
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
  ], !dbg !1659

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1660
  %358 = trunc i8 %357 to i1, !dbg !1660
  br i1 %358, label %359, label %360, !dbg !1663

359:                                              ; preds = %356
  br label %1078, !dbg !1664

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1665
  %362 = load i64, i64* %31, align 8, !dbg !1666
  %363 = add i64 %362, 2, !dbg !1667
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1665
  %365 = load i8, i8* %364, align 1, !dbg !1665
  store i8 %365, i8* %35, align 1, !dbg !1668
  %366 = load i64, i64* %31, align 8, !dbg !1669
  %367 = add i64 %366, 2, !dbg !1669
  store i64 %367, i64* %31, align 8, !dbg !1669
  br label %368, !dbg !1670

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1671
  %370 = load i64, i64* %12, align 8, !dbg !1671
  %371 = icmp ult i64 %369, %370, !dbg !1671
  br i1 %371, label %372, label %376, !dbg !1674

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1671
  %374 = load i64, i64* %21, align 8, !dbg !1671
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1671
  store i8 63, i8* %375, align 1, !dbg !1671
  br label %376, !dbg !1671

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1674
  %378 = add i64 %377, 1, !dbg !1674
  store i64 %378, i64* %21, align 8, !dbg !1674
  br label %379, !dbg !1674

379:                                              ; preds = %376
  br label %380, !dbg !1675

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1676
  %382 = load i64, i64* %12, align 8, !dbg !1676
  %383 = icmp ult i64 %381, %382, !dbg !1676
  br i1 %383, label %384, label %388, !dbg !1679

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1676
  %386 = load i64, i64* %21, align 8, !dbg !1676
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1676
  store i8 34, i8* %387, align 1, !dbg !1676
  br label %388, !dbg !1676

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1679
  %390 = add i64 %389, 1, !dbg !1679
  store i64 %390, i64* %21, align 8, !dbg !1679
  br label %391, !dbg !1679

391:                                              ; preds = %388
  br label %392, !dbg !1680

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1681
  %394 = load i64, i64* %12, align 8, !dbg !1681
  %395 = icmp ult i64 %393, %394, !dbg !1681
  br i1 %395, label %396, label %400, !dbg !1684

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1681
  %398 = load i64, i64* %21, align 8, !dbg !1681
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1681
  store i8 34, i8* %399, align 1, !dbg !1681
  br label %400, !dbg !1681

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1684
  %402 = add i64 %401, 1, !dbg !1684
  store i64 %402, i64* %21, align 8, !dbg !1684
  br label %403, !dbg !1684

403:                                              ; preds = %400
  br label %404, !dbg !1685

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1686
  %406 = load i64, i64* %12, align 8, !dbg !1686
  %407 = icmp ult i64 %405, %406, !dbg !1686
  br i1 %407, label %408, label %412, !dbg !1689

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1686
  %410 = load i64, i64* %21, align 8, !dbg !1686
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1686
  store i8 63, i8* %411, align 1, !dbg !1686
  br label %412, !dbg !1686

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1689
  %414 = add i64 %413, 1, !dbg !1689
  store i64 %414, i64* %21, align 8, !dbg !1689
  br label %415, !dbg !1689

415:                                              ; preds = %412
  br label %416, !dbg !1690

416:                                              ; preds = %349, %415
  br label %417, !dbg !1691

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1692

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1693

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1694
  br label %454, !dbg !1696

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1697
  br label %454, !dbg !1698

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1699
  br label %454, !dbg !1700

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1701
  br label %446, !dbg !1702

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1703
  br label %446, !dbg !1704

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1705
  br label %446, !dbg !1706

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1707
  br label %454, !dbg !1708

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1709
  store i8 %427, i8* %36, align 1, !dbg !1710
  %428 = load i32, i32* %15, align 4, !dbg !1711
  %429 = icmp eq i32 %428, 2, !dbg !1713
  br i1 %429, label %430, label %435, !dbg !1714

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1715
  %432 = trunc i8 %431 to i1, !dbg !1715
  br i1 %432, label %433, label %434, !dbg !1718

433:                                              ; preds = %430
  br label %1078, !dbg !1719

434:                                              ; preds = %430
  br label %942, !dbg !1720

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1721
  %437 = trunc i8 %436 to i1, !dbg !1721
  br i1 %437, label %438, label %445, !dbg !1723

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1724
  %440 = trunc i8 %439 to i1, !dbg !1724
  br i1 %440, label %441, label %445, !dbg !1725

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1726
  %443 = icmp ne i64 %442, 0, !dbg !1726
  br i1 %443, label %444, label %445, !dbg !1727

444:                                              ; preds = %441
  br label %942, !dbg !1728

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1726

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1729), !dbg !1730
  %447 = load i32, i32* %15, align 4, !dbg !1731
  %448 = icmp eq i32 %447, 2, !dbg !1733
  br i1 %448, label %449, label %453, !dbg !1734

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1735
  %451 = trunc i8 %450 to i1, !dbg !1735
  br i1 %451, label %452, label %453, !dbg !1736

452:                                              ; preds = %449
  br label %1078, !dbg !1737

453:                                              ; preds = %449, %446
  br label %454, !dbg !1735

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1738), !dbg !1739
  %455 = load i8, i8* %25, align 1, !dbg !1740
  %456 = trunc i8 %455 to i1, !dbg !1740
  br i1 %456, label %457, label %459, !dbg !1742

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1743
  store i8 %458, i8* %35, align 1, !dbg !1745
  br label %880, !dbg !1746

459:                                              ; preds = %454
  br label %849, !dbg !1747

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1748
  %462 = icmp eq i64 %461, -1, !dbg !1750
  br i1 %462, label %463, label %469, !dbg !1751

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1752
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1752
  %466 = load i8, i8* %465, align 1, !dbg !1752
  %467 = zext i8 %466 to i32, !dbg !1752
  %468 = icmp eq i32 %467, 0, !dbg !1753
  br i1 %468, label %473, label %472, !dbg !1748

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1754
  %471 = icmp eq i64 %470, 1, !dbg !1755
  br i1 %471, label %473, label %472, !dbg !1751

472:                                              ; preds = %469, %463
  br label %849, !dbg !1756

473:                                              ; preds = %469, %463
  br label %474, !dbg !1757

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1758
  %476 = icmp ne i64 %475, 0, !dbg !1760
  br i1 %476, label %477, label %478, !dbg !1761

477:                                              ; preds = %474
  br label %849, !dbg !1762

478:                                              ; preds = %474
  br label %479, !dbg !1763

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1764
  br label %480, !dbg !1765

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1766
  %482 = icmp eq i32 %481, 2, !dbg !1768
  br i1 %482, label %483, label %487, !dbg !1769

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1770
  %485 = trunc i8 %484 to i1, !dbg !1770
  br i1 %485, label %486, label %487, !dbg !1771

486:                                              ; preds = %483
  br label %1078, !dbg !1772

487:                                              ; preds = %483, %480
  br label %849, !dbg !1773

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1774
  store i8 1, i8* %34, align 1, !dbg !1775
  %489 = load i32, i32* %15, align 4, !dbg !1776
  %490 = icmp eq i32 %489, 2, !dbg !1778
  br i1 %490, label %491, label %540, !dbg !1779

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1780
  %493 = trunc i8 %492 to i1, !dbg !1780
  br i1 %493, label %494, label %495, !dbg !1783

494:                                              ; preds = %491
  br label %1078, !dbg !1784

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1785
  %497 = icmp ne i64 %496, 0, !dbg !1785
  br i1 %497, label %498, label %503, !dbg !1787

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1788
  %500 = icmp ne i64 %499, 0, !dbg !1788
  br i1 %500, label %503, label %501, !dbg !1789

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1790
  store i64 %502, i64* %22, align 8, !dbg !1792
  store i64 0, i64* %12, align 8, !dbg !1793
  br label %503, !dbg !1794

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1795

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1796
  %506 = load i64, i64* %12, align 8, !dbg !1796
  %507 = icmp ult i64 %505, %506, !dbg !1796
  br i1 %507, label %508, label %512, !dbg !1799

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1796
  %510 = load i64, i64* %21, align 8, !dbg !1796
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1796
  store i8 39, i8* %511, align 1, !dbg !1796
  br label %512, !dbg !1796

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1799
  %514 = add i64 %513, 1, !dbg !1799
  store i64 %514, i64* %21, align 8, !dbg !1799
  br label %515, !dbg !1799

515:                                              ; preds = %512
  br label %516, !dbg !1800

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1801
  %518 = load i64, i64* %12, align 8, !dbg !1801
  %519 = icmp ult i64 %517, %518, !dbg !1801
  br i1 %519, label %520, label %524, !dbg !1804

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1801
  %522 = load i64, i64* %21, align 8, !dbg !1801
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1801
  store i8 92, i8* %523, align 1, !dbg !1801
  br label %524, !dbg !1801

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1804
  %526 = add i64 %525, 1, !dbg !1804
  store i64 %526, i64* %21, align 8, !dbg !1804
  br label %527, !dbg !1804

527:                                              ; preds = %524
  br label %528, !dbg !1805

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1806
  %530 = load i64, i64* %12, align 8, !dbg !1806
  %531 = icmp ult i64 %529, %530, !dbg !1806
  br i1 %531, label %532, label %536, !dbg !1809

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1806
  %534 = load i64, i64* %21, align 8, !dbg !1806
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1806
  store i8 39, i8* %535, align 1, !dbg !1806
  br label %536, !dbg !1806

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1809
  %538 = add i64 %537, 1, !dbg !1809
  store i64 %538, i64* %21, align 8, !dbg !1809
  br label %539, !dbg !1809

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1810
  br label %540, !dbg !1811

540:                                              ; preds = %539, %488
  br label %849, !dbg !1812

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1813
  br label %849, !dbg !1814

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1815, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1818, metadata !DIExpression()), !dbg !1819
  %543 = load i8, i8* %20, align 1, !dbg !1820
  %544 = trunc i8 %543 to i1, !dbg !1820
  br i1 %544, label %545, label %557, !dbg !1822

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1823
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1825
  %547 = load i16*, i16** %546, align 8, !dbg !1825
  %548 = load i8, i8* %35, align 1, !dbg !1825
  %549 = zext i8 %548 to i32, !dbg !1825
  %550 = sext i32 %549 to i64, !dbg !1825
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1825
  %552 = load i16, i16* %551, align 2, !dbg !1825
  %553 = zext i16 %552 to i32, !dbg !1825
  %554 = and i32 %553, 16384, !dbg !1825
  %555 = icmp ne i32 %554, 0, !dbg !1826
  %556 = zext i1 %555 to i8, !dbg !1827
  store i8 %556, i8* %38, align 1, !dbg !1827
  br label %648, !dbg !1828

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1829, metadata !DIExpression()), !dbg !1841
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1842
  store i64 0, i64* %37, align 8, !dbg !1843
  store i8 1, i8* %38, align 1, !dbg !1844
  %558 = load i64, i64* %14, align 8, !dbg !1845
  %559 = icmp eq i64 %558, -1, !dbg !1847
  br i1 %559, label %560, label %563, !dbg !1848

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1849
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1850
  store i64 %562, i64* %14, align 8, !dbg !1851
  br label %563, !dbg !1852

563:                                              ; preds = %560, %557
  br label %564, !dbg !1853

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1854, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1859, metadata !DIExpression()), !dbg !1860
  %565 = load i8*, i8** %13, align 8, !dbg !1861
  %566 = load i64, i64* %31, align 8, !dbg !1862
  %567 = load i64, i64* %37, align 8, !dbg !1863
  %568 = add i64 %566, %567, !dbg !1864
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1861
  %570 = load i64, i64* %14, align 8, !dbg !1865
  %571 = load i64, i64* %31, align 8, !dbg !1866
  %572 = load i64, i64* %37, align 8, !dbg !1867
  %573 = add i64 %571, %572, !dbg !1868
  %574 = sub i64 %570, %573, !dbg !1869
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1870
  store i64 %575, i64* %41, align 8, !dbg !1860
  %576 = load i64, i64* %41, align 8, !dbg !1871
  %577 = icmp eq i64 %576, 0, !dbg !1873
  br i1 %577, label %578, label %579, !dbg !1874

578:                                              ; preds = %564
  br label %647, !dbg !1875

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1876
  %581 = icmp eq i64 %580, -1, !dbg !1878
  br i1 %581, label %582, label %583, !dbg !1879

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1880
  br label %647, !dbg !1882

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1883
  %585 = icmp eq i64 %584, -2, !dbg !1885
  br i1 %585, label %586, label %608, !dbg !1886

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1887
  br label %587, !dbg !1889

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1890
  %589 = load i64, i64* %37, align 8, !dbg !1891
  %590 = add i64 %588, %589, !dbg !1892
  %591 = load i64, i64* %14, align 8, !dbg !1893
  %592 = icmp ult i64 %590, %591, !dbg !1894
  br i1 %592, label %593, label %602, !dbg !1895

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1896
  %595 = load i64, i64* %31, align 8, !dbg !1897
  %596 = load i64, i64* %37, align 8, !dbg !1898
  %597 = add i64 %595, %596, !dbg !1899
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1896
  %599 = load i8, i8* %598, align 1, !dbg !1896
  %600 = zext i8 %599 to i32, !dbg !1896
  %601 = icmp ne i32 %600, 0, !dbg !1895
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1900
  br i1 %603, label %604, label %607, !dbg !1889

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1901
  %606 = add i64 %605, 1, !dbg !1901
  store i64 %606, i64* %37, align 8, !dbg !1901
  br label %587, !dbg !1889, !llvm.loop !1902

607:                                              ; preds = %602
  br label %647, !dbg !1903

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1904
  %610 = trunc i8 %609 to i1, !dbg !1904
  br i1 %610, label %611, label %635, !dbg !1907

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1908
  %613 = icmp eq i32 %612, 2, !dbg !1909
  br i1 %613, label %614, label %635, !dbg !1910

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1911, metadata !DIExpression()), !dbg !1914
  store i64 1, i64* %42, align 8, !dbg !1914
  br label %615, !dbg !1915

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !1916
  %617 = load i64, i64* %41, align 8, !dbg !1918
  %618 = icmp ult i64 %616, %617, !dbg !1919
  br i1 %618, label %619, label %634, !dbg !1920

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !1921
  %621 = load i64, i64* %31, align 8, !dbg !1922
  %622 = load i64, i64* %37, align 8, !dbg !1923
  %623 = add i64 %621, %622, !dbg !1924
  %624 = load i64, i64* %42, align 8, !dbg !1925
  %625 = add i64 %623, %624, !dbg !1926
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !1921
  %627 = load i8, i8* %626, align 1, !dbg !1921
  %628 = zext i8 %627 to i32, !dbg !1921
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !1927

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !1928

630:                                              ; preds = %619
  br label %631, !dbg !1930

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !1931
  %633 = add i64 %632, 1, !dbg !1931
  store i64 %633, i64* %42, align 8, !dbg !1931
  br label %615, !dbg !1932, !llvm.loop !1933

634:                                              ; preds = %615
  br label %635, !dbg !1935

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !1936
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !1938
  %638 = icmp ne i32 %637, 0, !dbg !1938
  br i1 %638, label %640, label %639, !dbg !1939

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !1940
  br label %640, !dbg !1941

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !1942
  %642 = load i64, i64* %37, align 8, !dbg !1943
  %643 = add i64 %642, %641, !dbg !1943
  store i64 %643, i64* %37, align 8, !dbg !1943
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !1944

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !1945
  %650 = trunc i8 %649 to i1, !dbg !1945
  %651 = zext i1 %650 to i8, !dbg !1946
  store i8 %651, i8* %34, align 1, !dbg !1946
  %652 = load i64, i64* %37, align 8, !dbg !1947
  %653 = icmp ult i64 1, %652, !dbg !1949
  br i1 %653, label %660, label %654, !dbg !1950

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !1951
  %656 = trunc i8 %655 to i1, !dbg !1951
  br i1 %656, label %657, label %848, !dbg !1952

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !1953
  %659 = trunc i8 %658 to i1, !dbg !1953
  br i1 %659, label %848, label %660, !dbg !1954

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !1955, metadata !DIExpression()), !dbg !1957
  %661 = load i64, i64* %31, align 8, !dbg !1958
  %662 = load i64, i64* %37, align 8, !dbg !1959
  %663 = add i64 %661, %662, !dbg !1960
  store i64 %663, i64* %43, align 8, !dbg !1957
  br label %664, !dbg !1961

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !1962
  %666 = trunc i8 %665 to i1, !dbg !1962
  br i1 %666, label %667, label %772, !dbg !1967

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !1968
  %669 = trunc i8 %668 to i1, !dbg !1968
  br i1 %669, label %772, label %670, !dbg !1969

670:                                              ; preds = %667
  br label %671, !dbg !1970

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !1972
  %673 = trunc i8 %672 to i1, !dbg !1972
  br i1 %673, label %674, label %675, !dbg !1975

674:                                              ; preds = %671
  br label %1078, !dbg !1972

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !1975
  %676 = load i32, i32* %15, align 4, !dbg !1976
  %677 = icmp eq i32 %676, 2, !dbg !1976
  br i1 %677, label %678, label %718, !dbg !1976

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !1976
  %680 = trunc i8 %679 to i1, !dbg !1976
  br i1 %680, label %718, label %681, !dbg !1975

681:                                              ; preds = %678
  br label %682, !dbg !1978

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !1980
  %684 = load i64, i64* %12, align 8, !dbg !1980
  %685 = icmp ult i64 %683, %684, !dbg !1980
  br i1 %685, label %686, label %690, !dbg !1983

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !1980
  %688 = load i64, i64* %21, align 8, !dbg !1980
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !1980
  store i8 39, i8* %689, align 1, !dbg !1980
  br label %690, !dbg !1980

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !1983
  %692 = add i64 %691, 1, !dbg !1983
  store i64 %692, i64* %21, align 8, !dbg !1983
  br label %693, !dbg !1983

693:                                              ; preds = %690
  br label %694, !dbg !1978

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !1984
  %696 = load i64, i64* %12, align 8, !dbg !1984
  %697 = icmp ult i64 %695, %696, !dbg !1984
  br i1 %697, label %698, label %702, !dbg !1987

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !1984
  %700 = load i64, i64* %21, align 8, !dbg !1984
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !1984
  store i8 36, i8* %701, align 1, !dbg !1984
  br label %702, !dbg !1984

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !1987
  %704 = add i64 %703, 1, !dbg !1987
  store i64 %704, i64* %21, align 8, !dbg !1987
  br label %705, !dbg !1987

705:                                              ; preds = %702
  br label %706, !dbg !1978

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !1988
  %708 = load i64, i64* %12, align 8, !dbg !1988
  %709 = icmp ult i64 %707, %708, !dbg !1988
  br i1 %709, label %710, label %714, !dbg !1991

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !1988
  %712 = load i64, i64* %21, align 8, !dbg !1988
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !1988
  store i8 39, i8* %713, align 1, !dbg !1988
  br label %714, !dbg !1988

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !1991
  %716 = add i64 %715, 1, !dbg !1991
  store i64 %716, i64* %21, align 8, !dbg !1991
  br label %717, !dbg !1991

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !1978
  br label %718, !dbg !1978

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !1975

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !1992
  %721 = load i64, i64* %12, align 8, !dbg !1992
  %722 = icmp ult i64 %720, %721, !dbg !1992
  br i1 %722, label %723, label %727, !dbg !1995

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !1992
  %725 = load i64, i64* %21, align 8, !dbg !1992
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !1992
  store i8 92, i8* %726, align 1, !dbg !1992
  br label %727, !dbg !1992

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !1995
  %729 = add i64 %728, 1, !dbg !1995
  store i64 %729, i64* %21, align 8, !dbg !1995
  br label %730, !dbg !1995

730:                                              ; preds = %727
  br label %731, !dbg !1975

731:                                              ; preds = %730
  br label %732, !dbg !1996

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !1997
  %734 = load i64, i64* %12, align 8, !dbg !1997
  %735 = icmp ult i64 %733, %734, !dbg !1997
  br i1 %735, label %736, label %745, !dbg !2000

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !1997
  %738 = zext i8 %737 to i32, !dbg !1997
  %739 = ashr i32 %738, 6, !dbg !1997
  %740 = add nsw i32 48, %739, !dbg !1997
  %741 = trunc i32 %740 to i8, !dbg !1997
  %742 = load i8*, i8** %11, align 8, !dbg !1997
  %743 = load i64, i64* %21, align 8, !dbg !1997
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !1997
  store i8 %741, i8* %744, align 1, !dbg !1997
  br label %745, !dbg !1997

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2000
  %747 = add i64 %746, 1, !dbg !2000
  store i64 %747, i64* %21, align 8, !dbg !2000
  br label %748, !dbg !2000

748:                                              ; preds = %745
  br label %749, !dbg !2001

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2002
  %751 = load i64, i64* %12, align 8, !dbg !2002
  %752 = icmp ult i64 %750, %751, !dbg !2002
  br i1 %752, label %753, label %763, !dbg !2005

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2002
  %755 = zext i8 %754 to i32, !dbg !2002
  %756 = ashr i32 %755, 3, !dbg !2002
  %757 = and i32 %756, 7, !dbg !2002
  %758 = add nsw i32 48, %757, !dbg !2002
  %759 = trunc i32 %758 to i8, !dbg !2002
  %760 = load i8*, i8** %11, align 8, !dbg !2002
  %761 = load i64, i64* %21, align 8, !dbg !2002
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2002
  store i8 %759, i8* %762, align 1, !dbg !2002
  br label %763, !dbg !2002

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2005
  %765 = add i64 %764, 1, !dbg !2005
  store i64 %765, i64* %21, align 8, !dbg !2005
  br label %766, !dbg !2005

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2006
  %768 = zext i8 %767 to i32, !dbg !2006
  %769 = and i32 %768, 7, !dbg !2007
  %770 = add nsw i32 48, %769, !dbg !2008
  %771 = trunc i32 %770 to i8, !dbg !2009
  store i8 %771, i8* %35, align 1, !dbg !2010
  br label %789, !dbg !2011

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2012
  %774 = trunc i8 %773 to i1, !dbg !2012
  br i1 %774, label %775, label %788, !dbg !2014

775:                                              ; preds = %772
  br label %776, !dbg !2015

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2017
  %778 = load i64, i64* %12, align 8, !dbg !2017
  %779 = icmp ult i64 %777, %778, !dbg !2017
  br i1 %779, label %780, label %784, !dbg !2020

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2017
  %782 = load i64, i64* %21, align 8, !dbg !2017
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2017
  store i8 92, i8* %783, align 1, !dbg !2017
  br label %784, !dbg !2017

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2020
  %786 = add i64 %785, 1, !dbg !2020
  store i64 %786, i64* %21, align 8, !dbg !2020
  br label %787, !dbg !2020

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2021
  br label %788, !dbg !2022

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2023
  %791 = load i64, i64* %31, align 8, !dbg !2025
  %792 = add i64 %791, 1, !dbg !2026
  %793 = icmp ule i64 %790, %792, !dbg !2027
  br i1 %793, label %794, label %795, !dbg !2028

794:                                              ; preds = %789
  br label %847, !dbg !2029

795:                                              ; preds = %789
  br label %796, !dbg !2030

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2031
  %798 = trunc i8 %797 to i1, !dbg !2031
  br i1 %798, label %799, label %827, !dbg !2031

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2031
  %801 = trunc i8 %800 to i1, !dbg !2031
  br i1 %801, label %827, label %802, !dbg !2034

802:                                              ; preds = %799
  br label %803, !dbg !2035

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2037
  %805 = load i64, i64* %12, align 8, !dbg !2037
  %806 = icmp ult i64 %804, %805, !dbg !2037
  br i1 %806, label %807, label %811, !dbg !2040

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2037
  %809 = load i64, i64* %21, align 8, !dbg !2037
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2037
  store i8 39, i8* %810, align 1, !dbg !2037
  br label %811, !dbg !2037

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2040
  %813 = add i64 %812, 1, !dbg !2040
  store i64 %813, i64* %21, align 8, !dbg !2040
  br label %814, !dbg !2040

814:                                              ; preds = %811
  br label %815, !dbg !2035

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2041
  %817 = load i64, i64* %12, align 8, !dbg !2041
  %818 = icmp ult i64 %816, %817, !dbg !2041
  br i1 %818, label %819, label %823, !dbg !2044

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2041
  %821 = load i64, i64* %21, align 8, !dbg !2041
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2041
  store i8 39, i8* %822, align 1, !dbg !2041
  br label %823, !dbg !2041

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2044
  %825 = add i64 %824, 1, !dbg !2044
  store i64 %825, i64* %21, align 8, !dbg !2044
  br label %826, !dbg !2044

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2035
  br label %827, !dbg !2035

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2034

828:                                              ; preds = %827
  br label %829, !dbg !2045

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2046
  %831 = load i64, i64* %12, align 8, !dbg !2046
  %832 = icmp ult i64 %830, %831, !dbg !2046
  br i1 %832, label %833, label %838, !dbg !2049

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2046
  %835 = load i8*, i8** %11, align 8, !dbg !2046
  %836 = load i64, i64* %21, align 8, !dbg !2046
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2046
  store i8 %834, i8* %837, align 1, !dbg !2046
  br label %838, !dbg !2046

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2049
  %840 = add i64 %839, 1, !dbg !2049
  store i64 %840, i64* %21, align 8, !dbg !2049
  br label %841, !dbg !2049

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2050
  %843 = load i64, i64* %31, align 8, !dbg !2051
  %844 = add i64 %843, 1, !dbg !2051
  store i64 %844, i64* %31, align 8, !dbg !2051
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2050
  %846 = load i8, i8* %845, align 1, !dbg !2050
  store i8 %846, i8* %35, align 1, !dbg !2052
  br label %664, !dbg !2053, !llvm.loop !2054

847:                                              ; preds = %794
  br label %942, !dbg !2057

848:                                              ; preds = %657, %654
  br label %849, !dbg !2058

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2059
  %851 = trunc i8 %850 to i1, !dbg !2059
  br i1 %851, label %852, label %855, !dbg !2061

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2062
  %854 = icmp ne i32 %853, 2, !dbg !2063
  br i1 %854, label %858, label %855, !dbg !2064

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2065
  %857 = trunc i8 %856 to i1, !dbg !2065
  br i1 %857, label %858, label %875, !dbg !2066

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2067
  %860 = icmp ne i32* %859, null, !dbg !2067
  br i1 %860, label %861, label %875, !dbg !2068

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2069
  %863 = load i8, i8* %35, align 1, !dbg !2070
  %864 = zext i8 %863 to i64, !dbg !2070
  %865 = udiv i64 %864, 32, !dbg !2071
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2069
  %867 = load i32, i32* %866, align 4, !dbg !2069
  %868 = load i8, i8* %35, align 1, !dbg !2072
  %869 = zext i8 %868 to i64, !dbg !2072
  %870 = urem i64 %869, 32, !dbg !2073
  %871 = trunc i64 %870 to i32, !dbg !2074
  %872 = lshr i32 %867, %871, !dbg !2074
  %873 = and i32 %872, 1, !dbg !2075
  %874 = icmp ne i32 %873, 0, !dbg !2075
  br i1 %874, label %879, label %875, !dbg !2076

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2077
  %877 = trunc i8 %876 to i1, !dbg !2077
  br i1 %877, label %879, label %878, !dbg !2078

878:                                              ; preds = %875
  br label %942, !dbg !2079

879:                                              ; preds = %875, %861
  br label %880, !dbg !2077

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2080), !dbg !2081
  br label %881, !dbg !2082

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2083
  %883 = trunc i8 %882 to i1, !dbg !2083
  br i1 %883, label %884, label %885, !dbg !2086

884:                                              ; preds = %881
  br label %1078, !dbg !2083

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2086
  %886 = load i32, i32* %15, align 4, !dbg !2087
  %887 = icmp eq i32 %886, 2, !dbg !2087
  br i1 %887, label %888, label %928, !dbg !2087

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2087
  %890 = trunc i8 %889 to i1, !dbg !2087
  br i1 %890, label %928, label %891, !dbg !2086

891:                                              ; preds = %888
  br label %892, !dbg !2089

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2091
  %894 = load i64, i64* %12, align 8, !dbg !2091
  %895 = icmp ult i64 %893, %894, !dbg !2091
  br i1 %895, label %896, label %900, !dbg !2094

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2091
  %898 = load i64, i64* %21, align 8, !dbg !2091
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2091
  store i8 39, i8* %899, align 1, !dbg !2091
  br label %900, !dbg !2091

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2094
  %902 = add i64 %901, 1, !dbg !2094
  store i64 %902, i64* %21, align 8, !dbg !2094
  br label %903, !dbg !2094

903:                                              ; preds = %900
  br label %904, !dbg !2089

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2095
  %906 = load i64, i64* %12, align 8, !dbg !2095
  %907 = icmp ult i64 %905, %906, !dbg !2095
  br i1 %907, label %908, label %912, !dbg !2098

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2095
  %910 = load i64, i64* %21, align 8, !dbg !2095
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2095
  store i8 36, i8* %911, align 1, !dbg !2095
  br label %912, !dbg !2095

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2098
  %914 = add i64 %913, 1, !dbg !2098
  store i64 %914, i64* %21, align 8, !dbg !2098
  br label %915, !dbg !2098

915:                                              ; preds = %912
  br label %916, !dbg !2089

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2099
  %918 = load i64, i64* %12, align 8, !dbg !2099
  %919 = icmp ult i64 %917, %918, !dbg !2099
  br i1 %919, label %920, label %924, !dbg !2102

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2099
  %922 = load i64, i64* %21, align 8, !dbg !2099
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2099
  store i8 39, i8* %923, align 1, !dbg !2099
  br label %924, !dbg !2099

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2102
  %926 = add i64 %925, 1, !dbg !2102
  store i64 %926, i64* %21, align 8, !dbg !2102
  br label %927, !dbg !2102

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2089
  br label %928, !dbg !2089

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2086

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2103
  %931 = load i64, i64* %12, align 8, !dbg !2103
  %932 = icmp ult i64 %930, %931, !dbg !2103
  br i1 %932, label %933, label %937, !dbg !2106

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2103
  %935 = load i64, i64* %21, align 8, !dbg !2103
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2103
  store i8 92, i8* %936, align 1, !dbg !2103
  br label %937, !dbg !2103

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2106
  %939 = add i64 %938, 1, !dbg !2106
  store i64 %939, i64* %21, align 8, !dbg !2106
  br label %940, !dbg !2106

940:                                              ; preds = %937
  br label %941, !dbg !2086

941:                                              ; preds = %940
  br label %942, !dbg !2086

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2107), !dbg !2108
  br label %943, !dbg !2109

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2110
  %945 = trunc i8 %944 to i1, !dbg !2110
  br i1 %945, label %946, label %974, !dbg !2110

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2110
  %948 = trunc i8 %947 to i1, !dbg !2110
  br i1 %948, label %974, label %949, !dbg !2113

949:                                              ; preds = %946
  br label %950, !dbg !2114

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2116
  %952 = load i64, i64* %12, align 8, !dbg !2116
  %953 = icmp ult i64 %951, %952, !dbg !2116
  br i1 %953, label %954, label %958, !dbg !2119

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2116
  %956 = load i64, i64* %21, align 8, !dbg !2116
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2116
  store i8 39, i8* %957, align 1, !dbg !2116
  br label %958, !dbg !2116

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2119
  %960 = add i64 %959, 1, !dbg !2119
  store i64 %960, i64* %21, align 8, !dbg !2119
  br label %961, !dbg !2119

961:                                              ; preds = %958
  br label %962, !dbg !2114

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2120
  %964 = load i64, i64* %12, align 8, !dbg !2120
  %965 = icmp ult i64 %963, %964, !dbg !2120
  br i1 %965, label %966, label %970, !dbg !2123

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2120
  %968 = load i64, i64* %21, align 8, !dbg !2120
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2120
  store i8 39, i8* %969, align 1, !dbg !2120
  br label %970, !dbg !2120

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2123
  %972 = add i64 %971, 1, !dbg !2123
  store i64 %972, i64* %21, align 8, !dbg !2123
  br label %973, !dbg !2123

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2114
  br label %974, !dbg !2114

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2113

975:                                              ; preds = %974
  br label %976, !dbg !2124

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2125
  %978 = load i64, i64* %12, align 8, !dbg !2125
  %979 = icmp ult i64 %977, %978, !dbg !2125
  br i1 %979, label %980, label %985, !dbg !2128

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2125
  %982 = load i8*, i8** %11, align 8, !dbg !2125
  %983 = load i64, i64* %21, align 8, !dbg !2125
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2125
  store i8 %981, i8* %984, align 1, !dbg !2125
  br label %985, !dbg !2125

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2128
  %987 = add i64 %986, 1, !dbg !2128
  store i64 %987, i64* %21, align 8, !dbg !2128
  br label %988, !dbg !2128

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2129
  %990 = trunc i8 %989 to i1, !dbg !2129
  br i1 %990, label %992, label %991, !dbg !2131

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2132
  br label %992, !dbg !2133

992:                                              ; preds = %991, %988
  br label %993, !dbg !2134

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2135
  %995 = add i64 %994, 1, !dbg !2135
  store i64 %995, i64* %31, align 8, !dbg !2135
  br label %139, !dbg !2136, !llvm.loop !2137

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2139
  %998 = icmp eq i64 %997, 0, !dbg !2141
  br i1 %998, label %999, label %1006, !dbg !2142

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2143
  %1001 = icmp eq i32 %1000, 2, !dbg !2144
  br i1 %1001, label %1002, label %1006, !dbg !2145

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2146
  %1004 = trunc i8 %1003 to i1, !dbg !2146
  br i1 %1004, label %1005, label %1006, !dbg !2147

1005:                                             ; preds = %1002
  br label %1078, !dbg !2148

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2149
  %1008 = icmp eq i32 %1007, 2, !dbg !2151
  br i1 %1008, label %1009, label %1038, !dbg !2152

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2153
  %1011 = trunc i8 %1010 to i1, !dbg !2153
  br i1 %1011, label %1038, label %1012, !dbg !2154

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2155
  %1014 = trunc i8 %1013 to i1, !dbg !2155
  br i1 %1014, label %1015, label %1038, !dbg !2156

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2157
  %1017 = trunc i8 %1016 to i1, !dbg !2157
  br i1 %1017, label %1018, label %1028, !dbg !2160

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2161
  %1020 = load i64, i64* %22, align 8, !dbg !2162
  %1021 = load i8*, i8** %13, align 8, !dbg !2163
  %1022 = load i64, i64* %14, align 8, !dbg !2164
  %1023 = load i32, i32* %16, align 4, !dbg !2165
  %1024 = load i32*, i32** %17, align 8, !dbg !2166
  %1025 = load i8*, i8** %18, align 8, !dbg !2167
  %1026 = load i8*, i8** %19, align 8, !dbg !2168
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2169
  store i64 %1027, i64* %10, align 8, !dbg !2170
  br label %1096, !dbg !2170

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2171
  %1030 = icmp ne i64 %1029, 0, !dbg !2171
  br i1 %1030, label %1036, label %1031, !dbg !2173

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2174
  %1033 = icmp ne i64 %1032, 0, !dbg !2174
  br i1 %1033, label %1034, label %1036, !dbg !2175

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2176
  store i64 %1035, i64* %12, align 8, !dbg !2178
  store i64 0, i64* %21, align 8, !dbg !2179
  br label %51, !dbg !2180

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2181

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2182
  %1040 = icmp ne i8* %1039, null, !dbg !2182
  br i1 %1040, label %1041, label %1068, !dbg !2184

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2185
  %1043 = trunc i8 %1042 to i1, !dbg !2185
  br i1 %1043, label %1068, label %1044, !dbg !2186

1044:                                             ; preds = %1041
  br label %1045, !dbg !2187

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2188
  %1047 = load i8, i8* %1046, align 1, !dbg !2191
  %1048 = icmp ne i8 %1047, 0, !dbg !2192
  br i1 %1048, label %1049, label %1067, !dbg !2192

1049:                                             ; preds = %1045
  br label %1050, !dbg !2193

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2194
  %1052 = load i64, i64* %12, align 8, !dbg !2194
  %1053 = icmp ult i64 %1051, %1052, !dbg !2194
  br i1 %1053, label %1054, label %1060, !dbg !2197

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2194
  %1056 = load i8, i8* %1055, align 1, !dbg !2194
  %1057 = load i8*, i8** %11, align 8, !dbg !2194
  %1058 = load i64, i64* %21, align 8, !dbg !2194
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2194
  store i8 %1056, i8* %1059, align 1, !dbg !2194
  br label %1060, !dbg !2194

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2197
  %1062 = add i64 %1061, 1, !dbg !2197
  store i64 %1062, i64* %21, align 8, !dbg !2197
  br label %1063, !dbg !2197

1063:                                             ; preds = %1060
  br label %1064, !dbg !2197

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2198
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2198
  store i8* %1066, i8** %23, align 8, !dbg !2198
  br label %1045, !dbg !2199, !llvm.loop !2200

1067:                                             ; preds = %1045
  br label %1068, !dbg !2201

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2202
  %1070 = load i64, i64* %12, align 8, !dbg !2204
  %1071 = icmp ult i64 %1069, %1070, !dbg !2205
  br i1 %1071, label %1072, label %1076, !dbg !2206

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2207
  %1074 = load i64, i64* %21, align 8, !dbg !2208
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2207
  store i8 0, i8* %1075, align 1, !dbg !2209
  br label %1076, !dbg !2207

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2210
  store i64 %1077, i64* %10, align 8, !dbg !2211
  br label %1096, !dbg !2211

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2212), !dbg !2213
  %1079 = load i32, i32* %15, align 4, !dbg !2214
  %1080 = icmp eq i32 %1079, 2, !dbg !2216
  br i1 %1080, label %1081, label %1085, !dbg !2217

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2218
  %1083 = trunc i8 %1082 to i1, !dbg !2218
  br i1 %1083, label %1084, label %1085, !dbg !2219

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2220
  br label %1085, !dbg !2221

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2222
  %1087 = load i64, i64* %12, align 8, !dbg !2223
  %1088 = load i8*, i8** %13, align 8, !dbg !2224
  %1089 = load i64, i64* %14, align 8, !dbg !2225
  %1090 = load i32, i32* %15, align 4, !dbg !2226
  %1091 = load i32, i32* %16, align 4, !dbg !2227
  %1092 = and i32 %1091, -3, !dbg !2228
  %1093 = load i8*, i8** %18, align 8, !dbg !2229
  %1094 = load i8*, i8** %19, align 8, !dbg !2230
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2231
  store i64 %1095, i64* %10, align 8, !dbg !2232
  br label %1096, !dbg !2232

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2233
  ret i64 %1097, !dbg !2233
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !169 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2234, metadata !DIExpression()), !dbg !2235
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2236, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2238, metadata !DIExpression()), !dbg !2239
  %9 = load i8*, i8** %4, align 8, !dbg !2240
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.104, i64 0, i64 0), i8* noundef %9) #18, !dbg !2240
  store i8* %10, i8** %6, align 8, !dbg !2239
  %11 = load i8*, i8** %6, align 8, !dbg !2241
  %12 = load i8*, i8** %4, align 8, !dbg !2243
  %13 = icmp ne i8* %11, %12, !dbg !2244
  br i1 %13, label %14, label %16, !dbg !2245

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2246
  store i8* %15, i8** %3, align 8, !dbg !2247
  br label %37, !dbg !2247

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2248, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2250, metadata !DIExpression()), !dbg !2251
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2252
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2253
  %18 = icmp eq i64 %17, 3, !dbg !2255
  br i1 %18, label %19, label %32, !dbg !2256

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2257
  %21 = icmp eq i32 %20, 8216, !dbg !2258
  br i1 %21, label %22, label %32, !dbg !2259

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2260
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2260
  %25 = load i8, i8* %24, align 1, !dbg !2260
  %26 = zext i8 %25 to i32, !dbg !2260
  %27 = icmp eq i32 %26, 39, !dbg !2261
  %28 = zext i1 %27 to i32, !dbg !2261
  %29 = sext i32 %28 to i64, !dbg !2262
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2262
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2262
  store i8* %31, i8** %3, align 8, !dbg !2263
  br label %37, !dbg !2263

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2264
  %34 = icmp eq i32 %33, 9, !dbg !2265
  %35 = zext i1 %34 to i64, !dbg !2264
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.103, i64 0, i64 0), !dbg !2264
  store i8* %36, i8** %3, align 8, !dbg !2266
  br label %37, !dbg !2266

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2267
  ret i8* %38, !dbg !2267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2268 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2271, metadata !DIExpression()), !dbg !2272
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2273, metadata !DIExpression()), !dbg !2274
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2275, metadata !DIExpression()), !dbg !2276
  %7 = load i8*, i8** %4, align 8, !dbg !2277
  %8 = load i64, i64* %5, align 8, !dbg !2278
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2279
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2280
  ret i8* %10, !dbg !2281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2282 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2285, metadata !DIExpression()), !dbg !2286
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2287, metadata !DIExpression()), !dbg !2288
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2289, metadata !DIExpression()), !dbg !2290
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2291, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2293, metadata !DIExpression()), !dbg !2294
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2295
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2295
  br i1 %15, label %16, label %18, !dbg !2295

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2296
  br label %19, !dbg !2295

18:                                               ; preds = %4
  br label %19, !dbg !2295

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2295
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2294
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2297, metadata !DIExpression()), !dbg !2298
  %21 = call i32* @__errno_location() #21, !dbg !2299
  %22 = load i32, i32* %21, align 4, !dbg !2299
  store i32 %22, i32* %10, align 4, !dbg !2298
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2300, metadata !DIExpression()), !dbg !2301
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2302
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2303
  %25 = load i32, i32* %24, align 4, !dbg !2303
  %26 = load i64*, i64** %7, align 8, !dbg !2304
  %27 = icmp ne i64* %26, null, !dbg !2304
  %28 = zext i1 %27 to i64, !dbg !2304
  %29 = select i1 %27, i32 0, i32 1, !dbg !2304
  %30 = or i32 %25, %29, !dbg !2305
  store i32 %30, i32* %11, align 4, !dbg !2301
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2306, metadata !DIExpression()), !dbg !2307
  %31 = load i8*, i8** %5, align 8, !dbg !2308
  %32 = load i64, i64* %6, align 8, !dbg !2309
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2310
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2311
  %35 = load i32, i32* %34, align 8, !dbg !2311
  %36 = load i32, i32* %11, align 4, !dbg !2312
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2313
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2314
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2313
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2315
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2316
  %42 = load i8*, i8** %41, align 8, !dbg !2316
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2317
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2318
  %45 = load i8*, i8** %44, align 8, !dbg !2318
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2319
  %47 = add i64 %46, 1, !dbg !2320
  store i64 %47, i64* %12, align 8, !dbg !2307
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2321, metadata !DIExpression()), !dbg !2322
  %48 = load i64, i64* %12, align 8, !dbg !2323
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #23, !dbg !2324
  store i8* %49, i8** %13, align 8, !dbg !2322
  %50 = load i8*, i8** %13, align 8, !dbg !2325
  %51 = load i64, i64* %12, align 8, !dbg !2326
  %52 = load i8*, i8** %5, align 8, !dbg !2327
  %53 = load i64, i64* %6, align 8, !dbg !2328
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2329
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2330
  %56 = load i32, i32* %55, align 8, !dbg !2330
  %57 = load i32, i32* %11, align 4, !dbg !2331
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2332
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2333
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2332
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2334
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2335
  %63 = load i8*, i8** %62, align 8, !dbg !2335
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2336
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2337
  %66 = load i8*, i8** %65, align 8, !dbg !2337
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2338
  %68 = load i32, i32* %10, align 4, !dbg !2339
  %69 = call i32* @__errno_location() #21, !dbg !2340
  store i32 %68, i32* %69, align 4, !dbg !2341
  %70 = load i64*, i64** %7, align 8, !dbg !2342
  %71 = icmp ne i64* %70, null, !dbg !2342
  br i1 %71, label %72, label %76, !dbg !2344

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2345
  %74 = sub i64 %73, 1, !dbg !2346
  %75 = load i64*, i64** %7, align 8, !dbg !2347
  store i64 %74, i64* %75, align 8, !dbg !2348
  br label %76, !dbg !2349

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2350
  ret i8* %77, !dbg !2351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2352 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2353, metadata !DIExpression()), !dbg !2354
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2355
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2354
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2356, metadata !DIExpression()), !dbg !2358
  store i32 1, i32* %2, align 4, !dbg !2358
  br label %4, !dbg !2359

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2360
  %6 = load i32, i32* @nslots, align 4, !dbg !2362
  %7 = icmp slt i32 %5, %6, !dbg !2363
  br i1 %7, label %8, label %18, !dbg !2364

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2365
  %10 = load i32, i32* %2, align 4, !dbg !2366
  %11 = sext i32 %10 to i64, !dbg !2365
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2365
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2367
  %14 = load i8*, i8** %13, align 8, !dbg !2367
  call void @free(i8* noundef %14) #18, !dbg !2368
  br label %15, !dbg !2368

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2369
  %17 = add nsw i32 %16, 1, !dbg !2369
  store i32 %17, i32* %2, align 4, !dbg !2369
  br label %4, !dbg !2370, !llvm.loop !2371

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2373
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2373
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2375
  %22 = load i8*, i8** %21, align 8, !dbg !2375
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2376
  br i1 %23, label %24, label %29, !dbg !2377

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2378
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2378
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2380
  %28 = load i8*, i8** %27, align 8, !dbg !2380
  call void @free(i8* noundef %28) #18, !dbg !2381
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2382
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2383
  br label %29, !dbg !2384

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2385
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2387
  br i1 %31, label %32, label %35, !dbg !2388

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2389
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2389
  call void @free(i8* noundef %34) #18, !dbg !2391
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2392
  br label %35, !dbg !2393

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2394
  ret void, !dbg !2395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2396 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2399, metadata !DIExpression()), !dbg !2400
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2401, metadata !DIExpression()), !dbg !2402
  %5 = load i32, i32* %3, align 4, !dbg !2403
  %6 = load i8*, i8** %4, align 8, !dbg !2404
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2405
  ret i8* %7, !dbg !2406
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2407 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2410, metadata !DIExpression()), !dbg !2411
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2412, metadata !DIExpression()), !dbg !2413
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2414, metadata !DIExpression()), !dbg !2415
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2416, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2418, metadata !DIExpression()), !dbg !2419
  %18 = call i32* @__errno_location() #21, !dbg !2420
  %19 = load i32, i32* %18, align 4, !dbg !2420
  store i32 %19, i32* %9, align 4, !dbg !2419
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2421, metadata !DIExpression()), !dbg !2422
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2423
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2422
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2424, metadata !DIExpression()), !dbg !2425
  store i32 2147483647, i32* %11, align 4, !dbg !2425
  %21 = load i32, i32* %5, align 4, !dbg !2426
  %22 = icmp sle i32 0, %21, !dbg !2428
  br i1 %22, label %23, label %27, !dbg !2429

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2430
  %25 = load i32, i32* %11, align 4, !dbg !2431
  %26 = icmp slt i32 %24, %25, !dbg !2432
  br i1 %26, label %28, label %27, !dbg !2433

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2434
  unreachable, !dbg !2434

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2435
  %30 = load i32, i32* %5, align 4, !dbg !2437
  %31 = icmp sle i32 %29, %30, !dbg !2438
  br i1 %31, label %32, label %73, !dbg !2439

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2440, metadata !DIExpression()), !dbg !2442
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2443
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2444
  %35 = zext i1 %34 to i8, !dbg !2442
  store i8 %35, i8* %12, align 1, !dbg !2442
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2445, metadata !DIExpression()), !dbg !2446
  %36 = load i32, i32* @nslots, align 4, !dbg !2447
  %37 = sext i32 %36 to i64, !dbg !2447
  store i64 %37, i64* %13, align 8, !dbg !2446
  %38 = load i8, i8* %12, align 1, !dbg !2448
  %39 = trunc i8 %38 to i1, !dbg !2448
  br i1 %39, label %40, label %41, !dbg !2448

40:                                               ; preds = %32
  br label %43, !dbg !2448

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2449
  br label %43, !dbg !2448

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2448
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2448
  %46 = load i32, i32* %5, align 4, !dbg !2450
  %47 = load i32, i32* @nslots, align 4, !dbg !2451
  %48 = sub nsw i32 %46, %47, !dbg !2452
  %49 = add nsw i32 %48, 1, !dbg !2453
  %50 = sext i32 %49 to i64, !dbg !2450
  %51 = load i32, i32* %11, align 4, !dbg !2454
  %52 = sext i32 %51 to i64, !dbg !2454
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2455
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2455
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2456
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2457
  %55 = load i8, i8* %12, align 1, !dbg !2458
  %56 = trunc i8 %55 to i1, !dbg !2458
  br i1 %56, label %57, label %60, !dbg !2460

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2461
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2462
  br label %60, !dbg !2463

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2464
  %62 = load i32, i32* @nslots, align 4, !dbg !2465
  %63 = sext i32 %62 to i64, !dbg !2466
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2466
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2467
  %66 = load i64, i64* %13, align 8, !dbg !2468
  %67 = load i32, i32* @nslots, align 4, !dbg !2469
  %68 = sext i32 %67 to i64, !dbg !2469
  %69 = sub nsw i64 %66, %68, !dbg !2470
  %70 = mul i64 %69, 16, !dbg !2471
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2467
  %71 = load i64, i64* %13, align 8, !dbg !2472
  %72 = trunc i64 %71 to i32, !dbg !2472
  store i32 %72, i32* @nslots, align 4, !dbg !2473
  br label %73, !dbg !2474

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2475, metadata !DIExpression()), !dbg !2477
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2478
  %75 = load i32, i32* %5, align 4, !dbg !2479
  %76 = sext i32 %75 to i64, !dbg !2478
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2478
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2480
  %79 = load i64, i64* %78, align 8, !dbg !2480
  store i64 %79, i64* %14, align 8, !dbg !2477
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2481, metadata !DIExpression()), !dbg !2482
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2483
  %81 = load i32, i32* %5, align 4, !dbg !2484
  %82 = sext i32 %81 to i64, !dbg !2483
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2483
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2485
  %85 = load i8*, i8** %84, align 8, !dbg !2485
  store i8* %85, i8** %15, align 8, !dbg !2482
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2486, metadata !DIExpression()), !dbg !2487
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2488
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2489
  %88 = load i32, i32* %87, align 4, !dbg !2489
  %89 = or i32 %88, 1, !dbg !2490
  store i32 %89, i32* %16, align 4, !dbg !2487
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2491, metadata !DIExpression()), !dbg !2492
  %90 = load i8*, i8** %15, align 8, !dbg !2493
  %91 = load i64, i64* %14, align 8, !dbg !2494
  %92 = load i8*, i8** %6, align 8, !dbg !2495
  %93 = load i64, i64* %7, align 8, !dbg !2496
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2497
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2498
  %96 = load i32, i32* %95, align 8, !dbg !2498
  %97 = load i32, i32* %16, align 4, !dbg !2499
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2500
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2501
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2500
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2502
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2503
  %103 = load i8*, i8** %102, align 8, !dbg !2503
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2504
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2505
  %106 = load i8*, i8** %105, align 8, !dbg !2505
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2506
  store i64 %107, i64* %17, align 8, !dbg !2492
  %108 = load i64, i64* %14, align 8, !dbg !2507
  %109 = load i64, i64* %17, align 8, !dbg !2509
  %110 = icmp ule i64 %108, %109, !dbg !2510
  br i1 %110, label %111, label %149, !dbg !2511

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2512
  %113 = add i64 %112, 1, !dbg !2514
  store i64 %113, i64* %14, align 8, !dbg !2515
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2516
  %115 = load i32, i32* %5, align 4, !dbg !2517
  %116 = sext i32 %115 to i64, !dbg !2516
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2516
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2518
  store i64 %113, i64* %118, align 8, !dbg !2519
  %119 = load i8*, i8** %15, align 8, !dbg !2520
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2522
  br i1 %120, label %121, label %123, !dbg !2523

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2524
  call void @free(i8* noundef %122) #18, !dbg !2525
  br label %123, !dbg !2525

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2526
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #23, !dbg !2527
  store i8* %125, i8** %15, align 8, !dbg !2528
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2529
  %127 = load i32, i32* %5, align 4, !dbg !2530
  %128 = sext i32 %127 to i64, !dbg !2529
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2529
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2531
  store i8* %125, i8** %130, align 8, !dbg !2532
  %131 = load i8*, i8** %15, align 8, !dbg !2533
  %132 = load i64, i64* %14, align 8, !dbg !2534
  %133 = load i8*, i8** %6, align 8, !dbg !2535
  %134 = load i64, i64* %7, align 8, !dbg !2536
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2537
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2538
  %137 = load i32, i32* %136, align 8, !dbg !2538
  %138 = load i32, i32* %16, align 4, !dbg !2539
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2540
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2541
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2540
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2542
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2543
  %144 = load i8*, i8** %143, align 8, !dbg !2543
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2544
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2545
  %147 = load i8*, i8** %146, align 8, !dbg !2545
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2546
  br label %149, !dbg !2547

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2548
  %151 = call i32* @__errno_location() #21, !dbg !2549
  store i32 %150, i32* %151, align 4, !dbg !2550
  %152 = load i8*, i8** %15, align 8, !dbg !2551
  ret i8* %152, !dbg !2552
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2553 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2556, metadata !DIExpression()), !dbg !2557
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2558, metadata !DIExpression()), !dbg !2559
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2560, metadata !DIExpression()), !dbg !2561
  %7 = load i32, i32* %4, align 4, !dbg !2562
  %8 = load i8*, i8** %5, align 8, !dbg !2563
  %9 = load i64, i64* %6, align 8, !dbg !2564
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2565
  ret i8* %10, !dbg !2566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2567 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2568, metadata !DIExpression()), !dbg !2569
  %3 = load i8*, i8** %2, align 8, !dbg !2570
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2571
  ret i8* %4, !dbg !2572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2573 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2578, metadata !DIExpression()), !dbg !2579
  %5 = load i8*, i8** %3, align 8, !dbg !2580
  %6 = load i64, i64* %4, align 8, !dbg !2581
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2582
  ret i8* %7, !dbg !2583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2584 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2587, metadata !DIExpression()), !dbg !2588
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2589, metadata !DIExpression()), !dbg !2590
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2591, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2593, metadata !DIExpression()), !dbg !2594
  %8 = load i32, i32* %5, align 4, !dbg !2595
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2596
  %9 = load i32, i32* %4, align 4, !dbg !2597
  %10 = load i8*, i8** %6, align 8, !dbg !2598
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2599
  ret i8* %11, !dbg !2600
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2601 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2604, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2606, metadata !DIExpression()), !dbg !2607
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2607
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2607
  %5 = load i32, i32* %3, align 4, !dbg !2608
  %6 = icmp eq i32 %5, 10, !dbg !2610
  br i1 %6, label %7, label %8, !dbg !2611

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2612
  unreachable, !dbg !2612

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2613
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2614
  store i32 %9, i32* %10, align 8, !dbg !2615
  ret void, !dbg !2616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2617 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2620, metadata !DIExpression()), !dbg !2621
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2622, metadata !DIExpression()), !dbg !2623
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2624, metadata !DIExpression()), !dbg !2625
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2626, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2628, metadata !DIExpression()), !dbg !2629
  %10 = load i32, i32* %6, align 4, !dbg !2630
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2631
  %11 = load i32, i32* %5, align 4, !dbg !2632
  %12 = load i8*, i8** %7, align 8, !dbg !2633
  %13 = load i64, i64* %8, align 8, !dbg !2634
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2635
  ret i8* %14, !dbg !2636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2637 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2640, metadata !DIExpression()), !dbg !2641
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2642, metadata !DIExpression()), !dbg !2643
  %5 = load i32, i32* %3, align 4, !dbg !2644
  %6 = load i8*, i8** %4, align 8, !dbg !2645
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2646
  ret i8* %7, !dbg !2647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2648 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2651, metadata !DIExpression()), !dbg !2652
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2653, metadata !DIExpression()), !dbg !2654
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2655, metadata !DIExpression()), !dbg !2656
  %7 = load i32, i32* %4, align 4, !dbg !2657
  %8 = load i8*, i8** %5, align 8, !dbg !2658
  %9 = load i64, i64* %6, align 8, !dbg !2659
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2660
  ret i8* %10, !dbg !2661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2662 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2665, metadata !DIExpression()), !dbg !2666
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2667, metadata !DIExpression()), !dbg !2668
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2669, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2671, metadata !DIExpression()), !dbg !2672
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2673
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2673
  %9 = load i8, i8* %6, align 1, !dbg !2674
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2675
  %11 = load i8*, i8** %4, align 8, !dbg !2676
  %12 = load i64, i64* %5, align 8, !dbg !2677
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2678
  ret i8* %13, !dbg !2679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2680 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2683, metadata !DIExpression()), !dbg !2684
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2685, metadata !DIExpression()), !dbg !2686
  %5 = load i8*, i8** %3, align 8, !dbg !2687
  %6 = load i8, i8* %4, align 1, !dbg !2688
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2689
  ret i8* %7, !dbg !2690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2691 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2692, metadata !DIExpression()), !dbg !2693
  %3 = load i8*, i8** %2, align 8, !dbg !2694
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2695
  ret i8* %4, !dbg !2696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2697 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2698, metadata !DIExpression()), !dbg !2699
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2700, metadata !DIExpression()), !dbg !2701
  %5 = load i8*, i8** %3, align 8, !dbg !2702
  %6 = load i64, i64* %4, align 8, !dbg !2703
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2704
  ret i8* %7, !dbg !2705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2706 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2707, metadata !DIExpression()), !dbg !2708
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2709, metadata !DIExpression()), !dbg !2710
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2711, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2713, metadata !DIExpression()), !dbg !2714
  %9 = load i32, i32* %5, align 4, !dbg !2715
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2716
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2716
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2716
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2717
  %13 = load i32, i32* %4, align 4, !dbg !2718
  %14 = load i8*, i8** %6, align 8, !dbg !2719
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2720
  ret i8* %15, !dbg !2721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2722 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2725, metadata !DIExpression()), !dbg !2726
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2727, metadata !DIExpression()), !dbg !2728
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2729, metadata !DIExpression()), !dbg !2730
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2731, metadata !DIExpression()), !dbg !2732
  %9 = load i32, i32* %5, align 4, !dbg !2733
  %10 = load i8*, i8** %6, align 8, !dbg !2734
  %11 = load i8*, i8** %7, align 8, !dbg !2735
  %12 = load i8*, i8** %8, align 8, !dbg !2736
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2737
  ret i8* %13, !dbg !2738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2739 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2742, metadata !DIExpression()), !dbg !2743
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2744, metadata !DIExpression()), !dbg !2745
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2746, metadata !DIExpression()), !dbg !2747
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2748, metadata !DIExpression()), !dbg !2749
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2750, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2752, metadata !DIExpression()), !dbg !2753
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2754
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2754
  %13 = load i8*, i8** %7, align 8, !dbg !2755
  %14 = load i8*, i8** %8, align 8, !dbg !2756
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2757
  %15 = load i32, i32* %6, align 4, !dbg !2758
  %16 = load i8*, i8** %9, align 8, !dbg !2759
  %17 = load i64, i64* %10, align 8, !dbg !2760
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2761
  ret i8* %18, !dbg !2762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2763 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2766, metadata !DIExpression()), !dbg !2767
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2768, metadata !DIExpression()), !dbg !2769
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2770, metadata !DIExpression()), !dbg !2771
  %7 = load i8*, i8** %4, align 8, !dbg !2772
  %8 = load i8*, i8** %5, align 8, !dbg !2773
  %9 = load i8*, i8** %6, align 8, !dbg !2774
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2775
  ret i8* %10, !dbg !2776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2777 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2780, metadata !DIExpression()), !dbg !2781
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2782, metadata !DIExpression()), !dbg !2783
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2784, metadata !DIExpression()), !dbg !2785
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2786, metadata !DIExpression()), !dbg !2787
  %9 = load i8*, i8** %5, align 8, !dbg !2788
  %10 = load i8*, i8** %6, align 8, !dbg !2789
  %11 = load i8*, i8** %7, align 8, !dbg !2790
  %12 = load i64, i64* %8, align 8, !dbg !2791
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2792
  ret i8* %13, !dbg !2793
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2794 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2797, metadata !DIExpression()), !dbg !2798
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2799, metadata !DIExpression()), !dbg !2800
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2801, metadata !DIExpression()), !dbg !2802
  %7 = load i32, i32* %4, align 4, !dbg !2803
  %8 = load i8*, i8** %5, align 8, !dbg !2804
  %9 = load i64, i64* %6, align 8, !dbg !2805
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2806
  ret i8* %10, !dbg !2807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2808 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2811, metadata !DIExpression()), !dbg !2812
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2813, metadata !DIExpression()), !dbg !2814
  %5 = load i8*, i8** %3, align 8, !dbg !2815
  %6 = load i64, i64* %4, align 8, !dbg !2816
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2817
  ret i8* %7, !dbg !2818
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2819 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2822, metadata !DIExpression()), !dbg !2823
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2824, metadata !DIExpression()), !dbg !2825
  %5 = load i32, i32* %3, align 4, !dbg !2826
  %6 = load i8*, i8** %4, align 8, !dbg !2827
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2828
  ret i8* %7, !dbg !2829
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2830 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2833, metadata !DIExpression()), !dbg !2834
  %3 = load i8*, i8** %2, align 8, !dbg !2835
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2836
  ret i8* %4, !dbg !2837
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2838 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2842, metadata !DIExpression()), !dbg !2843
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2844, metadata !DIExpression()), !dbg !2845
  %5 = load i8*, i8** %3, align 8, !dbg !2846
  %6 = load i8*, i8** %4, align 8, !dbg !2847
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2848
  %8 = icmp ne i32 %7, 0, !dbg !2849
  %9 = xor i1 %8, true, !dbg !2849
  ret i1 %9, !dbg !2850
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2851 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2908, metadata !DIExpression()), !dbg !2909
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2910, metadata !DIExpression()), !dbg !2911
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2912, metadata !DIExpression()), !dbg !2913
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2914, metadata !DIExpression()), !dbg !2915
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2916, metadata !DIExpression()), !dbg !2917
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2918, metadata !DIExpression()), !dbg !2919
  %13 = load i8*, i8** %8, align 8, !dbg !2920
  %14 = icmp ne i8* %13, null, !dbg !2920
  br i1 %14, label %15, label %21, !dbg !2922

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2923
  %17 = load i8*, i8** %8, align 8, !dbg !2924
  %18 = load i8*, i8** %9, align 8, !dbg !2925
  %19 = load i8*, i8** %10, align 8, !dbg !2926
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !2927
  br label %26, !dbg !2927

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2928
  %23 = load i8*, i8** %9, align 8, !dbg !2929
  %24 = load i8*, i8** %10, align 8, !dbg !2930
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.112, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !2931
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2932
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.114, i64 0, i64 0)) #18, !dbg !2933
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !2934
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2935
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.115, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !2935
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2936
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.116, i64 0, i64 0)) #18, !dbg !2937
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.117, i64 0, i64 0)), !dbg !2938
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2939
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.115, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !2939
  %37 = load i64, i64* %12, align 8, !dbg !2940
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
  ], !dbg !2941

38:                                               ; preds = %26
  br label %241, !dbg !2942

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2944
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.118, i64 0, i64 0)) #18, !dbg !2945
  %42 = load i8**, i8*** %11, align 8, !dbg !2946
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !2946
  %44 = load i8*, i8** %43, align 8, !dbg !2946
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !2947
  br label %241, !dbg !2948

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2949
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.119, i64 0, i64 0)) #18, !dbg !2950
  %49 = load i8**, i8*** %11, align 8, !dbg !2951
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !2951
  %51 = load i8*, i8** %50, align 8, !dbg !2951
  %52 = load i8**, i8*** %11, align 8, !dbg !2952
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !2952
  %54 = load i8*, i8** %53, align 8, !dbg !2952
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !2953
  br label %241, !dbg !2954

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2955
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.120, i64 0, i64 0)) #18, !dbg !2956
  %59 = load i8**, i8*** %11, align 8, !dbg !2957
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !2957
  %61 = load i8*, i8** %60, align 8, !dbg !2957
  %62 = load i8**, i8*** %11, align 8, !dbg !2958
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2958
  %64 = load i8*, i8** %63, align 8, !dbg !2958
  %65 = load i8**, i8*** %11, align 8, !dbg !2959
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !2959
  %67 = load i8*, i8** %66, align 8, !dbg !2959
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !2960
  br label %241, !dbg !2961

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2962
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.121, i64 0, i64 0)) #18, !dbg !2963
  %72 = load i8**, i8*** %11, align 8, !dbg !2964
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !2964
  %74 = load i8*, i8** %73, align 8, !dbg !2964
  %75 = load i8**, i8*** %11, align 8, !dbg !2965
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !2965
  %77 = load i8*, i8** %76, align 8, !dbg !2965
  %78 = load i8**, i8*** %11, align 8, !dbg !2966
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !2966
  %80 = load i8*, i8** %79, align 8, !dbg !2966
  %81 = load i8**, i8*** %11, align 8, !dbg !2967
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2967
  %83 = load i8*, i8** %82, align 8, !dbg !2967
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !2968
  br label %241, !dbg !2969

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2970
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.122, i64 0, i64 0)) #18, !dbg !2971
  %88 = load i8**, i8*** %11, align 8, !dbg !2972
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !2972
  %90 = load i8*, i8** %89, align 8, !dbg !2972
  %91 = load i8**, i8*** %11, align 8, !dbg !2973
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !2973
  %93 = load i8*, i8** %92, align 8, !dbg !2973
  %94 = load i8**, i8*** %11, align 8, !dbg !2974
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !2974
  %96 = load i8*, i8** %95, align 8, !dbg !2974
  %97 = load i8**, i8*** %11, align 8, !dbg !2975
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !2975
  %99 = load i8*, i8** %98, align 8, !dbg !2975
  %100 = load i8**, i8*** %11, align 8, !dbg !2976
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2976
  %102 = load i8*, i8** %101, align 8, !dbg !2976
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !2977
  br label %241, !dbg !2978

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2979
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.123, i64 0, i64 0)) #18, !dbg !2980
  %107 = load i8**, i8*** %11, align 8, !dbg !2981
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !2981
  %109 = load i8*, i8** %108, align 8, !dbg !2981
  %110 = load i8**, i8*** %11, align 8, !dbg !2982
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !2982
  %112 = load i8*, i8** %111, align 8, !dbg !2982
  %113 = load i8**, i8*** %11, align 8, !dbg !2983
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !2983
  %115 = load i8*, i8** %114, align 8, !dbg !2983
  %116 = load i8**, i8*** %11, align 8, !dbg !2984
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !2984
  %118 = load i8*, i8** %117, align 8, !dbg !2984
  %119 = load i8**, i8*** %11, align 8, !dbg !2985
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2985
  %121 = load i8*, i8** %120, align 8, !dbg !2985
  %122 = load i8**, i8*** %11, align 8, !dbg !2986
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !2986
  %124 = load i8*, i8** %123, align 8, !dbg !2986
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !2987
  br label %241, !dbg !2988

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2989
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.124, i64 0, i64 0)) #18, !dbg !2990
  %129 = load i8**, i8*** %11, align 8, !dbg !2991
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !2991
  %131 = load i8*, i8** %130, align 8, !dbg !2991
  %132 = load i8**, i8*** %11, align 8, !dbg !2992
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !2992
  %134 = load i8*, i8** %133, align 8, !dbg !2992
  %135 = load i8**, i8*** %11, align 8, !dbg !2993
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !2993
  %137 = load i8*, i8** %136, align 8, !dbg !2993
  %138 = load i8**, i8*** %11, align 8, !dbg !2994
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !2994
  %140 = load i8*, i8** %139, align 8, !dbg !2994
  %141 = load i8**, i8*** %11, align 8, !dbg !2995
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !2995
  %143 = load i8*, i8** %142, align 8, !dbg !2995
  %144 = load i8**, i8*** %11, align 8, !dbg !2996
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !2996
  %146 = load i8*, i8** %145, align 8, !dbg !2996
  %147 = load i8**, i8*** %11, align 8, !dbg !2997
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !2997
  %149 = load i8*, i8** %148, align 8, !dbg !2997
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !2998
  br label %241, !dbg !2999

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3000
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.125, i64 0, i64 0)) #18, !dbg !3001
  %154 = load i8**, i8*** %11, align 8, !dbg !3002
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3002
  %156 = load i8*, i8** %155, align 8, !dbg !3002
  %157 = load i8**, i8*** %11, align 8, !dbg !3003
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3003
  %159 = load i8*, i8** %158, align 8, !dbg !3003
  %160 = load i8**, i8*** %11, align 8, !dbg !3004
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3004
  %162 = load i8*, i8** %161, align 8, !dbg !3004
  %163 = load i8**, i8*** %11, align 8, !dbg !3005
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3005
  %165 = load i8*, i8** %164, align 8, !dbg !3005
  %166 = load i8**, i8*** %11, align 8, !dbg !3006
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3006
  %168 = load i8*, i8** %167, align 8, !dbg !3006
  %169 = load i8**, i8*** %11, align 8, !dbg !3007
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3007
  %171 = load i8*, i8** %170, align 8, !dbg !3007
  %172 = load i8**, i8*** %11, align 8, !dbg !3008
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3008
  %174 = load i8*, i8** %173, align 8, !dbg !3008
  %175 = load i8**, i8*** %11, align 8, !dbg !3009
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3009
  %177 = load i8*, i8** %176, align 8, !dbg !3009
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3010
  br label %241, !dbg !3011

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3012
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.126, i64 0, i64 0)) #18, !dbg !3013
  %182 = load i8**, i8*** %11, align 8, !dbg !3014
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3014
  %184 = load i8*, i8** %183, align 8, !dbg !3014
  %185 = load i8**, i8*** %11, align 8, !dbg !3015
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3015
  %187 = load i8*, i8** %186, align 8, !dbg !3015
  %188 = load i8**, i8*** %11, align 8, !dbg !3016
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3016
  %190 = load i8*, i8** %189, align 8, !dbg !3016
  %191 = load i8**, i8*** %11, align 8, !dbg !3017
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3017
  %193 = load i8*, i8** %192, align 8, !dbg !3017
  %194 = load i8**, i8*** %11, align 8, !dbg !3018
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3018
  %196 = load i8*, i8** %195, align 8, !dbg !3018
  %197 = load i8**, i8*** %11, align 8, !dbg !3019
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3019
  %199 = load i8*, i8** %198, align 8, !dbg !3019
  %200 = load i8**, i8*** %11, align 8, !dbg !3020
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3020
  %202 = load i8*, i8** %201, align 8, !dbg !3020
  %203 = load i8**, i8*** %11, align 8, !dbg !3021
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3021
  %205 = load i8*, i8** %204, align 8, !dbg !3021
  %206 = load i8**, i8*** %11, align 8, !dbg !3022
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3022
  %208 = load i8*, i8** %207, align 8, !dbg !3022
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3023
  br label %241, !dbg !3024

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3025
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.127, i64 0, i64 0)) #18, !dbg !3026
  %213 = load i8**, i8*** %11, align 8, !dbg !3027
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3027
  %215 = load i8*, i8** %214, align 8, !dbg !3027
  %216 = load i8**, i8*** %11, align 8, !dbg !3028
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3028
  %218 = load i8*, i8** %217, align 8, !dbg !3028
  %219 = load i8**, i8*** %11, align 8, !dbg !3029
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3029
  %221 = load i8*, i8** %220, align 8, !dbg !3029
  %222 = load i8**, i8*** %11, align 8, !dbg !3030
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3030
  %224 = load i8*, i8** %223, align 8, !dbg !3030
  %225 = load i8**, i8*** %11, align 8, !dbg !3031
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3031
  %227 = load i8*, i8** %226, align 8, !dbg !3031
  %228 = load i8**, i8*** %11, align 8, !dbg !3032
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3032
  %230 = load i8*, i8** %229, align 8, !dbg !3032
  %231 = load i8**, i8*** %11, align 8, !dbg !3033
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3033
  %233 = load i8*, i8** %232, align 8, !dbg !3033
  %234 = load i8**, i8*** %11, align 8, !dbg !3034
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3034
  %236 = load i8*, i8** %235, align 8, !dbg !3034
  %237 = load i8**, i8*** %11, align 8, !dbg !3035
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3035
  %239 = load i8*, i8** %238, align 8, !dbg !3035
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3036
  br label %241, !dbg !3037

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3038
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3039 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3042, metadata !DIExpression()), !dbg !3043
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3044, metadata !DIExpression()), !dbg !3045
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3046, metadata !DIExpression()), !dbg !3047
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3048, metadata !DIExpression()), !dbg !3049
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3052, metadata !DIExpression()), !dbg !3053
  store i64 0, i64* %11, align 8, !dbg !3054
  br label %12, !dbg !3056

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3057
  %14 = load i64, i64* %11, align 8, !dbg !3059
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3057
  %16 = load i8*, i8** %15, align 8, !dbg !3057
  %17 = icmp ne i8* %16, null, !dbg !3060
  br i1 %17, label %18, label %22, !dbg !3060

18:                                               ; preds = %12
  br label %19, !dbg !3060

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3061
  %21 = add i64 %20, 1, !dbg !3061
  store i64 %21, i64* %11, align 8, !dbg !3061
  br label %12, !dbg !3062, !llvm.loop !3063

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3065
  %24 = load i8*, i8** %7, align 8, !dbg !3066
  %25 = load i8*, i8** %8, align 8, !dbg !3067
  %26 = load i8*, i8** %9, align 8, !dbg !3068
  %27 = load i8**, i8*** %10, align 8, !dbg !3069
  %28 = load i64, i64* %11, align 8, !dbg !3070
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3071
  ret void, !dbg !3072
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3073 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3087, metadata !DIExpression()), !dbg !3088
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3089, metadata !DIExpression()), !dbg !3090
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3091, metadata !DIExpression()), !dbg !3092
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3099, metadata !DIExpression()), !dbg !3101
  store i64 0, i64* %10, align 8, !dbg !3102
  br label %12, !dbg !3104

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3105
  %14 = icmp ult i64 %13, 10, !dbg !3107
  br i1 %14, label %15, label %38, !dbg !3108

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3109
  %17 = load i32, i32* %16, align 8, !dbg !3109
  %18 = icmp sge i32 %17, 0, !dbg !3109
  br i1 %18, label %27, label %19, !dbg !3109

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3109
  store i32 %20, i32* %16, align 8, !dbg !3109
  %21 = icmp sle i32 %20, 0, !dbg !3109
  br i1 %21, label %22, label %27, !dbg !3109

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3109
  %24 = load i8*, i8** %23, align 8, !dbg !3109
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3109
  %26 = bitcast i8* %25 to i8**, !dbg !3109
  br label %32, !dbg !3109

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3109
  %29 = load i8*, i8** %28, align 8, !dbg !3109
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3109
  store i8* %30, i8** %28, align 8, !dbg !3109
  %31 = bitcast i8* %29 to i8**, !dbg !3109
  br label %32, !dbg !3109

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3109
  %34 = load i8*, i8** %33, align 8, !dbg !3109
  %35 = load i64, i64* %10, align 8, !dbg !3110
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3111
  store i8* %34, i8** %36, align 8, !dbg !3112
  %37 = icmp ne i8* %34, null, !dbg !3113
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3114
  br i1 %39, label %40, label %44, !dbg !3115

40:                                               ; preds = %38
  br label %41, !dbg !3115

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3116
  %43 = add i64 %42, 1, !dbg !3116
  store i64 %43, i64* %10, align 8, !dbg !3116
  br label %12, !dbg !3117, !llvm.loop !3118

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3120
  %46 = load i8*, i8** %7, align 8, !dbg !3121
  %47 = load i8*, i8** %8, align 8, !dbg !3122
  %48 = load i8*, i8** %9, align 8, !dbg !3123
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3124
  %50 = load i64, i64* %10, align 8, !dbg !3125
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3126
  ret void, !dbg !3127
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3128 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3131, metadata !DIExpression()), !dbg !3132
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3133, metadata !DIExpression()), !dbg !3134
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3135, metadata !DIExpression()), !dbg !3136
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3137, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3139, metadata !DIExpression()), !dbg !3140
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3141
  call void @llvm.va_start(i8* %11), !dbg !3141
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3142
  %13 = load i8*, i8** %6, align 8, !dbg !3143
  %14 = load i8*, i8** %7, align 8, !dbg !3144
  %15 = load i8*, i8** %8, align 8, !dbg !3145
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3146
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3146
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3146
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3147
  call void @llvm.va_end(i8* %18), !dbg !3147
  ret void, !dbg !3148
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3149 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3150
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.115, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3150
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.132, i64 0, i64 0)) #18, !dbg !3151
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.133, i64 0, i64 0)), !dbg !3152
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.134, i64 0, i64 0)) #18, !dbg !3153
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.136, i64 0, i64 0)), !dbg !3154
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.137, i64 0, i64 0)) #18, !dbg !3155
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.138, i64 0, i64 0)), !dbg !3156
  ret void, !dbg !3157
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3158 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3162, metadata !DIExpression()), !dbg !3163
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3164, metadata !DIExpression()), !dbg !3165
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3166, metadata !DIExpression()), !dbg !3167
  %7 = load i8*, i8** %4, align 8, !dbg !3168
  %8 = load i64, i64* %5, align 8, !dbg !3169
  %9 = load i64, i64* %6, align 8, !dbg !3170
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3171
  ret i8* %10, !dbg !3172
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3173 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3174, metadata !DIExpression()), !dbg !3175
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3176, metadata !DIExpression()), !dbg !3177
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3178, metadata !DIExpression()), !dbg !3179
  %7 = load i8*, i8** %4, align 8, !dbg !3180
  %8 = load i64, i64* %5, align 8, !dbg !3181
  %9 = load i64, i64* %6, align 8, !dbg !3182
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3183
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3184
  ret i8* %11, !dbg !3185
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3186 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3189, metadata !DIExpression()), !dbg !3190
  %3 = load i8*, i8** %2, align 8, !dbg !3191
  %4 = icmp ne i8* %3, null, !dbg !3191
  br i1 %4, label %6, label %5, !dbg !3193

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3194
  unreachable, !dbg !3194

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3195
  ret i8* %7, !dbg !3196
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3197 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3200, metadata !DIExpression()), !dbg !3201
  %3 = load i64, i64* %2, align 8, !dbg !3202
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3203
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3204
  ret i8* %5, !dbg !3205
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3206 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3209, metadata !DIExpression()), !dbg !3210
  %3 = load i64, i64* %2, align 8, !dbg !3211
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3212
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3213
  ret i8* %5, !dbg !3214
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3215 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3218, metadata !DIExpression()), !dbg !3219
  %3 = load i64, i64* %2, align 8, !dbg !3220
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #23, !dbg !3220
  ret i8* %4, !dbg !3221
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3222 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3225, metadata !DIExpression()), !dbg !3226
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3227, metadata !DIExpression()), !dbg !3228
  %5 = load i8*, i8** %3, align 8, !dbg !3229
  %6 = load i64, i64* %4, align 8, !dbg !3230
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3231
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3232
  ret i8* %8, !dbg !3233
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3234 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3237, metadata !DIExpression()), !dbg !3238
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3239, metadata !DIExpression()), !dbg !3240
  %5 = load i8*, i8** %3, align 8, !dbg !3241
  %6 = load i64, i64* %4, align 8, !dbg !3242
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3243
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3244
  ret i8* %8, !dbg !3245
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3246 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3249, metadata !DIExpression()), !dbg !3250
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3251, metadata !DIExpression()), !dbg !3252
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3253, metadata !DIExpression()), !dbg !3254
  %7 = load i8*, i8** %4, align 8, !dbg !3255
  %8 = load i64, i64* %5, align 8, !dbg !3256
  %9 = load i64, i64* %6, align 8, !dbg !3257
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3258
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3259
  ret i8* %11, !dbg !3260
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3261 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3264, metadata !DIExpression()), !dbg !3265
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3266, metadata !DIExpression()), !dbg !3267
  %5 = load i64, i64* %3, align 8, !dbg !3268
  %6 = load i64, i64* %4, align 8, !dbg !3269
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3270
  ret i8* %7, !dbg !3271
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3272 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3275, metadata !DIExpression()), !dbg !3276
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3277, metadata !DIExpression()), !dbg !3278
  %5 = load i64, i64* %3, align 8, !dbg !3279
  %6 = load i64, i64* %4, align 8, !dbg !3280
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3281
  ret i8* %7, !dbg !3282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3283 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3286, metadata !DIExpression()), !dbg !3287
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3288, metadata !DIExpression()), !dbg !3289
  %5 = load i8*, i8** %3, align 8, !dbg !3290
  %6 = load i64*, i64** %4, align 8, !dbg !3291
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3292
  ret i8* %7, !dbg !3293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !243 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3294, metadata !DIExpression()), !dbg !3295
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3296, metadata !DIExpression()), !dbg !3297
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3298, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3300, metadata !DIExpression()), !dbg !3301
  %8 = load i64*, i64** %5, align 8, !dbg !3302
  %9 = load i64, i64* %8, align 8, !dbg !3303
  store i64 %9, i64* %7, align 8, !dbg !3301
  %10 = load i8*, i8** %4, align 8, !dbg !3304
  %11 = icmp ne i8* %10, null, !dbg !3304
  br i1 %11, label %26, label %12, !dbg !3306

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3307
  %14 = icmp ne i64 %13, 0, !dbg !3307
  br i1 %14, label %25, label %15, !dbg !3310

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3311
  %17 = udiv i64 128, %16, !dbg !3313
  store i64 %17, i64* %7, align 8, !dbg !3314
  %18 = load i64, i64* %7, align 8, !dbg !3315
  %19 = icmp ne i64 %18, 0, !dbg !3316
  %20 = xor i1 %19, true, !dbg !3316
  %21 = zext i1 %20 to i32, !dbg !3316
  %22 = sext i32 %21 to i64, !dbg !3316
  %23 = load i64, i64* %7, align 8, !dbg !3317
  %24 = add i64 %23, %22, !dbg !3317
  store i64 %24, i64* %7, align 8, !dbg !3317
  br label %25, !dbg !3318

25:                                               ; preds = %15, %12
  br label %36, !dbg !3319

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3320
  %28 = load i64, i64* %7, align 8, !dbg !3320
  %29 = lshr i64 %28, 1, !dbg !3320
  %30 = add i64 %29, 1, !dbg !3320
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3320
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3320
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3320
  store i64 %33, i64* %7, align 8, !dbg !3320
  br i1 %32, label %34, label %35, !dbg !3323

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3324
  unreachable, !dbg !3324

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3325
  %38 = load i64, i64* %7, align 8, !dbg !3326
  %39 = load i64, i64* %6, align 8, !dbg !3327
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3328
  store i8* %40, i8** %4, align 8, !dbg !3329
  %41 = load i64, i64* %7, align 8, !dbg !3330
  %42 = load i64*, i64** %5, align 8, !dbg !3331
  store i64 %41, i64* %42, align 8, !dbg !3332
  %43 = load i8*, i8** %4, align 8, !dbg !3333
  ret i8* %43, !dbg !3334
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !250 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3335, metadata !DIExpression()), !dbg !3336
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3337, metadata !DIExpression()), !dbg !3338
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3339, metadata !DIExpression()), !dbg !3340
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3341, metadata !DIExpression()), !dbg !3342
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3345, metadata !DIExpression()), !dbg !3346
  %15 = load i64*, i64** %7, align 8, !dbg !3347
  %16 = load i64, i64* %15, align 8, !dbg !3348
  store i64 %16, i64* %11, align 8, !dbg !3346
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3349, metadata !DIExpression()), !dbg !3350
  %17 = load i64, i64* %11, align 8, !dbg !3351
  %18 = load i64, i64* %11, align 8, !dbg !3351
  %19 = ashr i64 %18, 1, !dbg !3351
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3351
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3351
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3351
  store i64 %22, i64* %12, align 8, !dbg !3351
  br i1 %21, label %23, label %24, !dbg !3353

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3354
  br label %24, !dbg !3355

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3356
  %26 = icmp sle i64 0, %25, !dbg !3358
  br i1 %26, label %27, label %33, !dbg !3359

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3360
  %29 = load i64, i64* %12, align 8, !dbg !3361
  %30 = icmp slt i64 %28, %29, !dbg !3362
  br i1 %30, label %31, label %33, !dbg !3363

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3364
  store i64 %32, i64* %12, align 8, !dbg !3365
  br label %33, !dbg !3366

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3367, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3369, metadata !DIExpression()), !dbg !3370
  %34 = load i64, i64* %10, align 8, !dbg !3371
  %35 = icmp slt i64 %34, 0, !dbg !3371
  br i1 %35, label %36, label %82, !dbg !3371

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3371
  %38 = icmp slt i64 %37, 0, !dbg !3371
  br i1 %38, label %39, label %62, !dbg !3371

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3371

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3371
  %42 = load i64, i64* %10, align 8, !dbg !3371
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3371
  %44 = icmp slt i64 %41, %43, !dbg !3371
  br i1 %44, label %111, label %115, !dbg !3371

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3371

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3371
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3371
  br i1 %48, label %52, label %53, !dbg !3371

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3371
  %51 = icmp slt i64 0, %50, !dbg !3371
  br i1 %51, label %52, label %53, !dbg !3371

52:                                               ; preds = %49, %46
  br label %57, !dbg !3371

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3371
  %55 = sub nsw i64 0, %54, !dbg !3371
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3371
  br label %57, !dbg !3371

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3371
  %59 = load i64, i64* %12, align 8, !dbg !3371
  %60 = sub nsw i64 -1, %59, !dbg !3371
  %61 = icmp sle i64 %58, %60, !dbg !3371
  br i1 %61, label %111, label %115, !dbg !3371

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3371
  %64 = icmp eq i64 %63, -1, !dbg !3371
  br i1 %64, label %65, label %77, !dbg !3371

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3371

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3371
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3371
  %69 = icmp slt i64 0, %68, !dbg !3371
  br i1 %69, label %111, label %115, !dbg !3371

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3371
  %72 = icmp slt i64 0, %71, !dbg !3371
  br i1 %72, label %73, label %115, !dbg !3371

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3371
  %75 = sub nsw i64 %74, 1, !dbg !3371
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3371
  br i1 %76, label %111, label %115, !dbg !3371

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3371
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3371
  %80 = load i64, i64* %12, align 8, !dbg !3371
  %81 = icmp slt i64 %79, %80, !dbg !3371
  br i1 %81, label %111, label %115, !dbg !3371

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3371
  %84 = icmp eq i64 %83, 0, !dbg !3371
  br i1 %84, label %85, label %86, !dbg !3371

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3371

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3371
  %88 = icmp slt i64 %87, 0, !dbg !3371
  br i1 %88, label %89, label %106, !dbg !3371

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3371
  %91 = icmp eq i64 %90, -1, !dbg !3371
  br i1 %91, label %92, label %101, !dbg !3371

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3371

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3371
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3371
  %96 = icmp slt i64 0, %95, !dbg !3371
  br i1 %96, label %111, label %115, !dbg !3371

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3371
  %99 = sub nsw i64 %98, 1, !dbg !3371
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3371
  br i1 %100, label %111, label %115, !dbg !3371

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3371
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3371
  %104 = load i64, i64* %10, align 8, !dbg !3371
  %105 = icmp slt i64 %103, %104, !dbg !3371
  br i1 %105, label %111, label %115, !dbg !3371

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3371
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3371
  %109 = load i64, i64* %12, align 8, !dbg !3371
  %110 = icmp slt i64 %108, %109, !dbg !3371
  br i1 %110, label %111, label %115, !dbg !3371

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3371
  %113 = load i64, i64* %10, align 8, !dbg !3371
  %114 = mul i64 %112, %113, !dbg !3371
  store i64 %114, i64* %13, align 8, !dbg !3371
  br label %119, !dbg !3371

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3371
  %117 = load i64, i64* %10, align 8, !dbg !3371
  %118 = mul i64 %116, %117, !dbg !3371
  store i64 %118, i64* %13, align 8, !dbg !3371
  br label %119, !dbg !3371

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3371
  %121 = icmp ne i32 %120, 0, !dbg !3371
  br i1 %121, label %122, label %123, !dbg !3371

122:                                              ; preds = %119
  br label %129, !dbg !3371

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3372
  %125 = icmp slt i64 %124, 128, !dbg !3373
  %126 = zext i1 %125 to i64, !dbg !3372
  %127 = select i1 %125, i32 128, i32 0, !dbg !3372
  %128 = sext i32 %127 to i64, !dbg !3372
  br label %129, !dbg !3371

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3371
  store i64 %130, i64* %14, align 8, !dbg !3370
  %131 = load i64, i64* %14, align 8, !dbg !3374
  %132 = icmp ne i64 %131, 0, !dbg !3374
  br i1 %132, label %133, label %142, !dbg !3376

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3377
  %135 = load i64, i64* %10, align 8, !dbg !3379
  %136 = sdiv i64 %134, %135, !dbg !3380
  store i64 %136, i64* %12, align 8, !dbg !3381
  %137 = load i64, i64* %14, align 8, !dbg !3382
  %138 = load i64, i64* %14, align 8, !dbg !3383
  %139 = load i64, i64* %10, align 8, !dbg !3384
  %140 = srem i64 %138, %139, !dbg !3385
  %141 = sub nsw i64 %137, %140, !dbg !3386
  store i64 %141, i64* %13, align 8, !dbg !3387
  br label %142, !dbg !3388

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3389
  %144 = icmp ne i8* %143, null, !dbg !3389
  br i1 %144, label %147, label %145, !dbg !3391

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3392
  store i64 0, i64* %146, align 8, !dbg !3393
  br label %147, !dbg !3394

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3395
  %149 = load i64, i64* %11, align 8, !dbg !3397
  %150 = sub nsw i64 %148, %149, !dbg !3398
  %151 = load i64, i64* %8, align 8, !dbg !3399
  %152 = icmp slt i64 %150, %151, !dbg !3400
  br i1 %152, label %153, label %256, !dbg !3401

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3402
  %155 = load i64, i64* %8, align 8, !dbg !3402
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3402
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3402
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3402
  store i64 %158, i64* %12, align 8, !dbg !3402
  br i1 %157, label %255, label %159, !dbg !3403

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3404
  %161 = icmp sle i64 0, %160, !dbg !3405
  br i1 %161, label %162, label %166, !dbg !3406

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3407
  %164 = load i64, i64* %12, align 8, !dbg !3408
  %165 = icmp slt i64 %163, %164, !dbg !3409
  br i1 %165, label %255, label %166, !dbg !3410

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3411
  %168 = icmp slt i64 %167, 0, !dbg !3411
  br i1 %168, label %169, label %215, !dbg !3411

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3411
  %171 = icmp slt i64 %170, 0, !dbg !3411
  br i1 %171, label %172, label %195, !dbg !3411

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3411

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3411
  %175 = load i64, i64* %10, align 8, !dbg !3411
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3411
  %177 = icmp slt i64 %174, %176, !dbg !3411
  br i1 %177, label %244, label %248, !dbg !3411

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3411

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3411
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3411
  br i1 %181, label %185, label %186, !dbg !3411

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3411
  %184 = icmp slt i64 0, %183, !dbg !3411
  br i1 %184, label %185, label %186, !dbg !3411

185:                                              ; preds = %182, %179
  br label %190, !dbg !3411

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3411
  %188 = sub nsw i64 0, %187, !dbg !3411
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3411
  br label %190, !dbg !3411

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3411
  %192 = load i64, i64* %12, align 8, !dbg !3411
  %193 = sub nsw i64 -1, %192, !dbg !3411
  %194 = icmp sle i64 %191, %193, !dbg !3411
  br i1 %194, label %244, label %248, !dbg !3411

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3411
  %197 = icmp eq i64 %196, -1, !dbg !3411
  br i1 %197, label %198, label %210, !dbg !3411

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3411

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3411
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3411
  %202 = icmp slt i64 0, %201, !dbg !3411
  br i1 %202, label %244, label %248, !dbg !3411

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3411
  %205 = icmp slt i64 0, %204, !dbg !3411
  br i1 %205, label %206, label %248, !dbg !3411

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3411
  %208 = sub nsw i64 %207, 1, !dbg !3411
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3411
  br i1 %209, label %244, label %248, !dbg !3411

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3411
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3411
  %213 = load i64, i64* %12, align 8, !dbg !3411
  %214 = icmp slt i64 %212, %213, !dbg !3411
  br i1 %214, label %244, label %248, !dbg !3411

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3411
  %217 = icmp eq i64 %216, 0, !dbg !3411
  br i1 %217, label %218, label %219, !dbg !3411

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3411

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3411
  %221 = icmp slt i64 %220, 0, !dbg !3411
  br i1 %221, label %222, label %239, !dbg !3411

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3411
  %224 = icmp eq i64 %223, -1, !dbg !3411
  br i1 %224, label %225, label %234, !dbg !3411

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3411

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3411
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3411
  %229 = icmp slt i64 0, %228, !dbg !3411
  br i1 %229, label %244, label %248, !dbg !3411

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3411
  %232 = sub nsw i64 %231, 1, !dbg !3411
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3411
  br i1 %233, label %244, label %248, !dbg !3411

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3411
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3411
  %237 = load i64, i64* %10, align 8, !dbg !3411
  %238 = icmp slt i64 %236, %237, !dbg !3411
  br i1 %238, label %244, label %248, !dbg !3411

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3411
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3411
  %242 = load i64, i64* %12, align 8, !dbg !3411
  %243 = icmp slt i64 %241, %242, !dbg !3411
  br i1 %243, label %244, label %248, !dbg !3411

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3411
  %246 = load i64, i64* %10, align 8, !dbg !3411
  %247 = mul i64 %245, %246, !dbg !3411
  store i64 %247, i64* %13, align 8, !dbg !3411
  br label %252, !dbg !3411

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3411
  %250 = load i64, i64* %10, align 8, !dbg !3411
  %251 = mul i64 %249, %250, !dbg !3411
  store i64 %251, i64* %13, align 8, !dbg !3411
  br label %252, !dbg !3411

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3411
  %254 = icmp ne i32 %253, 0, !dbg !3411
  br i1 %254, label %255, label %256, !dbg !3412

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3413
  unreachable, !dbg !3413

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3414
  %258 = load i64, i64* %13, align 8, !dbg !3415
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #25, !dbg !3416
  store i8* %259, i8** %6, align 8, !dbg !3417
  %260 = load i64, i64* %12, align 8, !dbg !3418
  %261 = load i64*, i64** %7, align 8, !dbg !3419
  store i64 %260, i64* %261, align 8, !dbg !3420
  %262 = load i8*, i8** %6, align 8, !dbg !3421
  ret i8* %262, !dbg !3422
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3423 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3424, metadata !DIExpression()), !dbg !3425
  %3 = load i64, i64* %2, align 8, !dbg !3426
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3427
  ret i8* %4, !dbg !3428
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3429 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3430, metadata !DIExpression()), !dbg !3431
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3432, metadata !DIExpression()), !dbg !3433
  %5 = load i64, i64* %3, align 8, !dbg !3434
  %6 = load i64, i64* %4, align 8, !dbg !3435
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3436
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3437
  ret i8* %8, !dbg !3438
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3439 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3440, metadata !DIExpression()), !dbg !3441
  %3 = load i64, i64* %2, align 8, !dbg !3442
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3443
  ret i8* %4, !dbg !3444
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3445 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3446, metadata !DIExpression()), !dbg !3447
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3448, metadata !DIExpression()), !dbg !3449
  %5 = load i64, i64* %3, align 8, !dbg !3450
  %6 = load i64, i64* %4, align 8, !dbg !3451
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3452
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3453
  ret i8* %8, !dbg !3454
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3455 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3460, metadata !DIExpression()), !dbg !3461
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3462, metadata !DIExpression()), !dbg !3463
  %5 = load i64, i64* %4, align 8, !dbg !3464
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #23, !dbg !3465
  %7 = load i8*, i8** %3, align 8, !dbg !3466
  %8 = load i64, i64* %4, align 8, !dbg !3467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3468
  ret i8* %6, !dbg !3469
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3470 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3473, metadata !DIExpression()), !dbg !3474
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3475, metadata !DIExpression()), !dbg !3476
  %5 = load i64, i64* %4, align 8, !dbg !3477
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #23, !dbg !3478
  %7 = load i8*, i8** %3, align 8, !dbg !3479
  %8 = load i64, i64* %4, align 8, !dbg !3480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3481
  ret i8* %6, !dbg !3482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3483 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3486, metadata !DIExpression()), !dbg !3487
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3490, metadata !DIExpression()), !dbg !3491
  %6 = load i64, i64* %4, align 8, !dbg !3492
  %7 = add nsw i64 %6, 1, !dbg !3493
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #23, !dbg !3494
  store i8* %8, i8** %5, align 8, !dbg !3491
  %9 = load i8*, i8** %5, align 8, !dbg !3495
  %10 = load i64, i64* %4, align 8, !dbg !3496
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3495
  store i8 0, i8* %11, align 1, !dbg !3497
  %12 = load i8*, i8** %5, align 8, !dbg !3498
  %13 = load i8*, i8** %3, align 8, !dbg !3499
  %14 = load i64, i64* %4, align 8, !dbg !3500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3501
  ret i8* %12, !dbg !3502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3503 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3504, metadata !DIExpression()), !dbg !3505
  %3 = load i8*, i8** %2, align 8, !dbg !3506
  %4 = load i8*, i8** %2, align 8, !dbg !3507
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3508
  %6 = add i64 %5, 1, !dbg !3509
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #25, !dbg !3510
  ret i8* %7, !dbg !3511
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3512 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3513, metadata !DIExpression()), !dbg !3516
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3516
  store i32 %2, i32* %1, align 4, !dbg !3516
  %3 = load i32, i32* %1, align 4, !dbg !3516
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.151, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.152, i64 0, i64 0)) #18, !dbg !3516
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i64 0, i64 0), i8* noundef %4), !dbg !3516
  %5 = load i32, i32* %1, align 4, !dbg !3516
  %6 = icmp ne i32 %5, 0, !dbg !3516
  br i1 %6, label %7, label %9, !dbg !3516

7:                                                ; preds = %0
  unreachable, !dbg !3516

8:                                                ; No predecessors!
  br label %10, !dbg !3516

9:                                                ; preds = %0
  br label %10, !dbg !3516

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3517
  unreachable, !dbg !3517
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef %0) #12 !dbg !3518 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3519, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3521, metadata !DIExpression()), !dbg !3522
  %6 = load i8*, i8** %2, align 8, !dbg !3523
  %7 = load i8*, i8** %2, align 8, !dbg !3524
  %8 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !3525
  store i8* %8, i8** %3, align 8, !dbg !3522
  br label %9, !dbg !3526

9:                                                ; preds = %14, %1
  %10 = load i8*, i8** %3, align 8, !dbg !3527
  %11 = load i8, i8* %10, align 1, !dbg !3527
  %12 = zext i8 %11 to i32, !dbg !3527
  %13 = icmp eq i32 %12, 47, !dbg !3527
  br i1 %13, label %14, label %17, !dbg !3526

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !3528
  %16 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !3528
  store i8* %16, i8** %3, align 8, !dbg !3528
  br label %9, !dbg !3526, !llvm.loop !3529

17:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3530, metadata !DIExpression()), !dbg !3531
  store i8 0, i8* %4, align 1, !dbg !3531
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3532, metadata !DIExpression()), !dbg !3534
  %18 = load i8*, i8** %3, align 8, !dbg !3535
  store i8* %18, i8** %5, align 8, !dbg !3534
  br label %19, !dbg !3536

19:                                               ; preds = %36, %17
  %20 = load i8*, i8** %5, align 8, !dbg !3537
  %21 = load i8, i8* %20, align 1, !dbg !3539
  %22 = icmp ne i8 %21, 0, !dbg !3540
  br i1 %22, label %23, label %39, !dbg !3540

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8, !dbg !3541
  %25 = load i8, i8* %24, align 1, !dbg !3541
  %26 = zext i8 %25 to i32, !dbg !3541
  %27 = icmp eq i32 %26, 47, !dbg !3541
  br i1 %27, label %28, label %29, !dbg !3544

28:                                               ; preds = %23
  store i8 1, i8* %4, align 1, !dbg !3545
  br label %35, !dbg !3546

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1, !dbg !3547
  %31 = trunc i8 %30 to i1, !dbg !3547
  br i1 %31, label %32, label %34, !dbg !3549

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8, !dbg !3550
  store i8* %33, i8** %3, align 8, !dbg !3552
  store i8 0, i8* %4, align 1, !dbg !3553
  br label %34, !dbg !3554

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %28
  br label %36, !dbg !3555

36:                                               ; preds = %35
  %37 = load i8*, i8** %5, align 8, !dbg !3556
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !3556
  store i8* %38, i8** %5, align 8, !dbg !3556
  br label %19, !dbg !3557, !llvm.loop !3558

39:                                               ; preds = %19
  %40 = load i8*, i8** %3, align 8, !dbg !3560
  ret i8* %40, !dbg !3561
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @base_len(i8* noundef %0) #12 !dbg !3562 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3565, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3567, metadata !DIExpression()), !dbg !3568
  %5 = load i8*, i8** %2, align 8, !dbg !3569
  %6 = call i64 @strlen(i8* noundef %5) #20, !dbg !3571
  store i64 %6, i64* %3, align 8, !dbg !3572
  br label %7, !dbg !3573

7:                                                ; preds = %21, %1
  %8 = load i64, i64* %3, align 8, !dbg !3574
  %9 = icmp ult i64 1, %8, !dbg !3576
  br i1 %9, label %10, label %18, !dbg !3577

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8, !dbg !3578
  %12 = load i64, i64* %3, align 8, !dbg !3578
  %13 = sub i64 %12, 1, !dbg !3578
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !3578
  %15 = load i8, i8* %14, align 1, !dbg !3578
  %16 = zext i8 %15 to i32, !dbg !3578
  %17 = icmp eq i32 %16, 47, !dbg !3578
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ], !dbg !3579
  br i1 %19, label %20, label %24, !dbg !3580

20:                                               ; preds = %18
  br label %21, !dbg !3581

21:                                               ; preds = %20
  %22 = load i64, i64* %3, align 8, !dbg !3582
  %23 = add i64 %22, -1, !dbg !3582
  store i64 %23, i64* %3, align 8, !dbg !3582
  br label %7, !dbg !3583, !llvm.loop !3584

24:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3586, metadata !DIExpression()), !dbg !3587
  %25 = load i8*, i8** %2, align 8, !dbg !3588
  store i64 0, i64* %4, align 8, !dbg !3587
  %26 = load i64, i64* %3, align 8, !dbg !3589
  ret i64 %26, !dbg !3590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3591 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3597, metadata !DIExpression()), !dbg !3598
  %3 = load i32, i32* %2, align 4, !dbg !3599
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3600
  ret i32 %4, !dbg !3601
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3602 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3639, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3641, metadata !DIExpression()), !dbg !3643
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3644
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3645
  %9 = icmp ne i64 %8, 0, !dbg !3646
  %10 = zext i1 %9 to i8, !dbg !3643
  store i8 %10, i8* %4, align 1, !dbg !3643
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3647, metadata !DIExpression()), !dbg !3648
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3649
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3649
  %13 = icmp ne i32 %12, 0, !dbg !3650
  %14 = zext i1 %13 to i8, !dbg !3648
  store i8 %14, i8* %5, align 1, !dbg !3648
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3651, metadata !DIExpression()), !dbg !3652
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3653
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3654
  %17 = icmp ne i32 %16, 0, !dbg !3655
  %18 = zext i1 %17 to i8, !dbg !3652
  store i8 %18, i8* %6, align 1, !dbg !3652
  %19 = load i8, i8* %5, align 1, !dbg !3656
  %20 = trunc i8 %19 to i1, !dbg !3656
  br i1 %20, label %31, label %21, !dbg !3658

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3659
  %23 = trunc i8 %22 to i1, !dbg !3659
  br i1 %23, label %24, label %37, !dbg !3660

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3661
  %26 = trunc i8 %25 to i1, !dbg !3661
  br i1 %26, label %31, label %27, !dbg !3662

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3663
  %29 = load i32, i32* %28, align 4, !dbg !3663
  %30 = icmp ne i32 %29, 9, !dbg !3664
  br i1 %30, label %31, label %37, !dbg !3665

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3666
  %33 = trunc i8 %32 to i1, !dbg !3666
  br i1 %33, label %36, label %34, !dbg !3669

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3670
  store i32 0, i32* %35, align 4, !dbg !3671
  br label %36, !dbg !3670

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3672
  br label %38, !dbg !3672

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3673
  br label %38, !dbg !3673

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3674
  ret i32 %39, !dbg !3674
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3675 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3712, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3714, metadata !DIExpression()), !dbg !3715
  store i32 0, i32* %4, align 4, !dbg !3715
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3716, metadata !DIExpression()), !dbg !3717
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3718
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3719
  store i32 %8, i32* %5, align 4, !dbg !3717
  %9 = load i32, i32* %5, align 4, !dbg !3720
  %10 = icmp slt i32 %9, 0, !dbg !3722
  br i1 %10, label %11, label %14, !dbg !3723

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3724
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3725
  store i32 %13, i32* %2, align 4, !dbg !3726
  br label %40, !dbg !3726

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3727
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3727
  %17 = icmp ne i32 %16, 0, !dbg !3727
  br i1 %17, label %18, label %23, !dbg !3729

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3730
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3731
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3732
  %22 = icmp ne i64 %21, -1, !dbg !3733
  br i1 %22, label %23, label %30, !dbg !3734

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3735
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3736
  %26 = icmp ne i32 %25, 0, !dbg !3736
  br i1 %26, label %27, label %30, !dbg !3737

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3738
  %29 = load i32, i32* %28, align 4, !dbg !3738
  store i32 %29, i32* %4, align 4, !dbg !3739
  br label %30, !dbg !3740

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3741, metadata !DIExpression()), !dbg !3742
  store i32 0, i32* %6, align 4, !dbg !3742
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3743
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3744
  store i32 %32, i32* %6, align 4, !dbg !3745
  %33 = load i32, i32* %4, align 4, !dbg !3746
  %34 = icmp ne i32 %33, 0, !dbg !3748
  br i1 %34, label %35, label %38, !dbg !3749

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3750
  %37 = call i32* @__errno_location() #21, !dbg !3752
  store i32 %36, i32* %37, align 4, !dbg !3753
  store i32 -1, i32* %6, align 4, !dbg !3754
  br label %38, !dbg !3755

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3756
  store i32 %39, i32* %2, align 4, !dbg !3757
  br label %40, !dbg !3757

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3758
  ret i32 %41, !dbg !3758
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3759 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3796, metadata !DIExpression()), !dbg !3797
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3798
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3800
  br i1 %5, label %10, label %6, !dbg !3801

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3802
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3802
  %9 = icmp ne i32 %8, 0, !dbg !3802
  br i1 %9, label %13, label %10, !dbg !3803

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3804
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3805
  store i32 %12, i32* %2, align 4, !dbg !3806
  br label %17, !dbg !3806

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3807
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3808
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3809
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3810
  store i32 %16, i32* %2, align 4, !dbg !3811
  br label %17, !dbg !3811

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3812
  ret i32 %18, !dbg !3812
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3813 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3816, metadata !DIExpression()), !dbg !3817
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3818
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3820
  %5 = load i32, i32* %4, align 8, !dbg !3820
  %6 = and i32 %5, 256, !dbg !3821
  %7 = icmp ne i32 %6, 0, !dbg !3821
  br i1 %7, label %8, label %11, !dbg !3822

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3823
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3824
  br label %11, !dbg !3824

11:                                               ; preds = %8, %1
  ret void, !dbg !3825
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3826 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3864, metadata !DIExpression()), !dbg !3865
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3866, metadata !DIExpression()), !dbg !3867
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3868, metadata !DIExpression()), !dbg !3869
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3870
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3872
  %11 = load i8*, i8** %10, align 8, !dbg !3872
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3873
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3874
  %14 = load i8*, i8** %13, align 8, !dbg !3874
  %15 = icmp eq i8* %11, %14, !dbg !3875
  br i1 %15, label %16, label %46, !dbg !3876

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3877
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3878
  %19 = load i8*, i8** %18, align 8, !dbg !3878
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3879
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3880
  %22 = load i8*, i8** %21, align 8, !dbg !3880
  %23 = icmp eq i8* %19, %22, !dbg !3881
  br i1 %23, label %24, label %46, !dbg !3882

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3883
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3884
  %27 = load i8*, i8** %26, align 8, !dbg !3884
  %28 = icmp eq i8* %27, null, !dbg !3885
  br i1 %28, label %29, label %46, !dbg !3886

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3887, metadata !DIExpression()), !dbg !3889
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3890
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3891
  %32 = load i64, i64* %6, align 8, !dbg !3892
  %33 = load i32, i32* %7, align 4, !dbg !3893
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3894
  store i64 %34, i64* %8, align 8, !dbg !3889
  %35 = load i64, i64* %8, align 8, !dbg !3895
  %36 = icmp eq i64 %35, -1, !dbg !3897
  br i1 %36, label %37, label %38, !dbg !3898

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3899
  br label %51, !dbg !3899

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3901
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3902
  %41 = load i32, i32* %40, align 8, !dbg !3903
  %42 = and i32 %41, -17, !dbg !3903
  store i32 %42, i32* %40, align 8, !dbg !3903
  %43 = load i64, i64* %8, align 8, !dbg !3904
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3905
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3906
  store i64 %43, i64* %45, align 8, !dbg !3907
  store i32 0, i32* %4, align 4, !dbg !3908
  br label %51, !dbg !3908

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3909
  %48 = load i64, i64* %6, align 8, !dbg !3910
  %49 = load i32, i32* %7, align 4, !dbg !3911
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3912
  store i32 %50, i32* %4, align 4, !dbg !3913
  br label %51, !dbg !3913

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3914
  ret i32 %52, !dbg !3914
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3915 {
  %1 = call i32* @__errno_location() #21, !dbg !3918
  store i32 12, i32* %1, align 4, !dbg !3919
  ret i8* null, !dbg !3920
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3921 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3922, metadata !DIExpression()), !dbg !3923
  %3 = load i64, i64* %2, align 8, !dbg !3924
  %4 = icmp ule i64 %3, -1, !dbg !3925
  br i1 %4, label %5, label %8, !dbg !3924

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3926
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3927
  br label %10, !dbg !3924

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #24, !dbg !3928
  br label %10, !dbg !3924

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3924
  ret i8* %11, !dbg !3929
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3930 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3931, metadata !DIExpression()), !dbg !3932
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3933, metadata !DIExpression()), !dbg !3934
  %5 = load i64, i64* %4, align 8, !dbg !3935
  %6 = icmp ule i64 %5, -1, !dbg !3936
  br i1 %6, label %7, label %11, !dbg !3935

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3937
  %9 = load i64, i64* %4, align 8, !dbg !3938
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3939
  br label %13, !dbg !3935

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !3940
  br label %13, !dbg !3935

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3935
  ret i8* %14, !dbg !3941
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3942 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3943, metadata !DIExpression()), !dbg !3944
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3945, metadata !DIExpression()), !dbg !3946
  %6 = load i64, i64* %4, align 8, !dbg !3947
  %7 = icmp ult i64 -1, %6, !dbg !3949
  br i1 %7, label %8, label %14, !dbg !3950

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3951
  %10 = icmp ne i64 %9, 0, !dbg !3954
  br i1 %10, label %11, label %13, !dbg !3955

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !3956
  store i8* %12, i8** %3, align 8, !dbg !3957
  br label %27, !dbg !3957

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3958
  br label %14, !dbg !3959

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3960
  %16 = icmp ult i64 -1, %15, !dbg !3962
  br i1 %16, label %17, label %23, !dbg !3963

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3964
  %19 = icmp ne i64 %18, 0, !dbg !3967
  br i1 %19, label %20, label %22, !dbg !3968

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #24, !dbg !3969
  store i8* %21, i8** %3, align 8, !dbg !3970
  br label %27, !dbg !3970

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3971
  br label %23, !dbg !3972

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !3973
  %25 = load i64, i64* %5, align 8, !dbg !3974
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !3975
  store i8* %26, i8** %3, align 8, !dbg !3976
  br label %27, !dbg !3976

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !3977
  ret i8* %28, !dbg !3977
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3978 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3979, metadata !DIExpression()), !dbg !3980
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3981, metadata !DIExpression()), !dbg !3982
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3983, metadata !DIExpression()), !dbg !3984
  %7 = load i64, i64* %5, align 8, !dbg !3985
  %8 = icmp ule i64 %7, -1, !dbg !3986
  br i1 %8, label %9, label %17, !dbg !3987

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !3988
  %11 = icmp ule i64 %10, -1, !dbg !3989
  br i1 %11, label %12, label %17, !dbg !3985

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !3990
  %14 = load i64, i64* %5, align 8, !dbg !3991
  %15 = load i64, i64* %6, align 8, !dbg !3992
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !3993
  br label %19, !dbg !3985

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #24, !dbg !3994
  br label %19, !dbg !3985

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !3985
  ret i8* %20, !dbg !3995
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !3996 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4001, metadata !DIExpression()), !dbg !4002
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4003, metadata !DIExpression()), !dbg !4004
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4005, metadata !DIExpression()), !dbg !4006
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4007, metadata !DIExpression()), !dbg !4008
  %11 = load i8*, i8** %7, align 8, !dbg !4009
  %12 = icmp eq i8* %11, null, !dbg !4011
  br i1 %12, label %13, label %14, !dbg !4012

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4013
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.178, i64 0, i64 0), i8** %7, align 8, !dbg !4015
  store i64 1, i64* %8, align 8, !dbg !4016
  br label %14, !dbg !4017

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4018
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4020
  br i1 %16, label %17, label %18, !dbg !4021

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4022
  br label %18, !dbg !4023

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4024, metadata !DIExpression()), !dbg !4025
  %19 = load i32*, i32** %6, align 8, !dbg !4026
  %20 = load i8*, i8** %7, align 8, !dbg !4027
  %21 = load i64, i64* %8, align 8, !dbg !4028
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4029
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !4030
  store i64 %23, i64* %10, align 8, !dbg !4025
  %24 = load i64, i64* %10, align 8, !dbg !4031
  %25 = icmp ult i64 %24, -3, !dbg !4033
  br i1 %25, label %26, label %32, !dbg !4034

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4035
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !4036
  %29 = icmp ne i32 %28, 0, !dbg !4036
  br i1 %29, label %32, label %30, !dbg !4037

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4038
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4039
  br label %32, !dbg !4039

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4040
  %34 = icmp eq i64 %33, -3, !dbg !4042
  br i1 %34, label %35, label %36, !dbg !4043

35:                                               ; preds = %32
  call void @abort() #19, !dbg !4044
  unreachable, !dbg !4044

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4045
  %38 = icmp ule i64 -2, %37, !dbg !4047
  br i1 %38, label %39, label %53, !dbg !4048

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4049
  %41 = icmp ne i64 %40, 0, !dbg !4050
  br i1 %41, label %42, label %53, !dbg !4051

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4052
  br i1 %43, label %53, label %44, !dbg !4053

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4054
  %46 = icmp ne i32* %45, null, !dbg !4057
  br i1 %46, label %47, label %52, !dbg !4058

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4059
  %49 = load i8, i8* %48, align 1, !dbg !4060
  %50 = zext i8 %49 to i32, !dbg !4061
  %51 = load i32*, i32** %6, align 8, !dbg !4062
  store i32 %50, i32* %51, align 4, !dbg !4063
  br label %52, !dbg !4064

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4065
  br label %55, !dbg !4065

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4066
  store i64 %54, i64* %5, align 8, !dbg !4067
  br label %55, !dbg !4067

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4068
  ret i64 %56, !dbg !4068
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4069 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4084, metadata !DIExpression()), !dbg !4085
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4086
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4087
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4087
  ret void, !dbg !4088
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4089 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4092, metadata !DIExpression()), !dbg !4093
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4094, metadata !DIExpression()), !dbg !4095
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4096, metadata !DIExpression()), !dbg !4097
  %7 = load i8*, i8** %4, align 8, !dbg !4098
  %8 = load i8*, i8** %5, align 8, !dbg !4099
  %9 = load i64, i64* %6, align 8, !dbg !4100
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !4101
  %11 = icmp ne i32 %10, 0, !dbg !4102
  %12 = xor i1 %11, true, !dbg !4102
  ret i1 %12, !dbg !4103
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4104 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4106, metadata !DIExpression()), !dbg !4107
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4108, metadata !DIExpression()), !dbg !4109
  %5 = load i8*, i8** %3, align 8, !dbg !4110
  %6 = load i64, i64* %4, align 8, !dbg !4111
  %7 = icmp ne i64 %6, 0, !dbg !4111
  br i1 %7, label %8, label %10, !dbg !4111

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4112
  br label %11, !dbg !4111

10:                                               ; preds = %2
  br label %11, !dbg !4111

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4111
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !4113
  ret i8* %13, !dbg !4114
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4115 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4116, metadata !DIExpression()), !dbg !4117
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4118, metadata !DIExpression()), !dbg !4119
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4120, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4122, metadata !DIExpression()), !dbg !4123
  %9 = load i64, i64* %7, align 8, !dbg !4124
  %10 = icmp ult i64 %9, 0, !dbg !4124
  br i1 %10, label %11, label %60, !dbg !4124

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4124
  %13 = icmp ult i64 %12, 0, !dbg !4124
  br i1 %13, label %14, label %37, !dbg !4124

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4124

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4124
  %17 = load i64, i64* %7, align 8, !dbg !4124
  %18 = udiv i64 -1, %17, !dbg !4124
  %19 = icmp ult i64 %16, %18, !dbg !4124
  br i1 %19, label %92, label %96, !dbg !4124

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4124

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4124
  %23 = icmp ult i64 %22, 1, !dbg !4124
  br i1 %23, label %27, label %28, !dbg !4124

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4124
  %26 = icmp ult i64 0, %25, !dbg !4124
  br i1 %26, label %27, label %28, !dbg !4124

27:                                               ; preds = %24, %21
  br label %32, !dbg !4124

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4124
  %30 = sub i64 0, %29, !dbg !4124
  %31 = udiv i64 -1, %30, !dbg !4124
  br label %32, !dbg !4124

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4124
  %34 = load i64, i64* %6, align 8, !dbg !4124
  %35 = sub i64 -1, %34, !dbg !4124
  %36 = icmp ule i64 %33, %35, !dbg !4124
  br i1 %36, label %92, label %96, !dbg !4124

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4124

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4124

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4124

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4124
  %42 = icmp eq i64 %41, -1, !dbg !4124
  br i1 %42, label %43, label %55, !dbg !4124

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4124

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4124
  %46 = add i64 %45, 0, !dbg !4124
  %47 = icmp ult i64 0, %46, !dbg !4124
  br i1 %47, label %92, label %96, !dbg !4124

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4124
  %50 = icmp ult i64 0, %49, !dbg !4124
  br i1 %50, label %51, label %96, !dbg !4124

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4124
  %53 = sub i64 %52, 1, !dbg !4124
  %54 = icmp ult i64 -1, %53, !dbg !4124
  br i1 %54, label %92, label %96, !dbg !4124

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4124
  %57 = udiv i64 0, %56, !dbg !4124
  %58 = load i64, i64* %6, align 8, !dbg !4124
  %59 = icmp ult i64 %57, %58, !dbg !4124
  br i1 %59, label %92, label %96, !dbg !4124

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4124
  %62 = icmp eq i64 %61, 0, !dbg !4124
  br i1 %62, label %63, label %64, !dbg !4124

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4124

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4124
  %66 = icmp ult i64 %65, 0, !dbg !4124
  br i1 %66, label %67, label %87, !dbg !4124

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4124

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4124

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4124

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4124
  %72 = icmp eq i64 %71, -1, !dbg !4124
  br i1 %72, label %73, label %82, !dbg !4124

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4124

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4124
  %76 = add i64 %75, 0, !dbg !4124
  %77 = icmp ult i64 0, %76, !dbg !4124
  br i1 %77, label %92, label %96, !dbg !4124

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4124
  %80 = sub i64 %79, 1, !dbg !4124
  %81 = icmp ult i64 -1, %80, !dbg !4124
  br i1 %81, label %92, label %96, !dbg !4124

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4124
  %84 = udiv i64 0, %83, !dbg !4124
  %85 = load i64, i64* %7, align 8, !dbg !4124
  %86 = icmp ult i64 %84, %85, !dbg !4124
  br i1 %86, label %92, label %96, !dbg !4124

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4124
  %89 = udiv i64 -1, %88, !dbg !4124
  %90 = load i64, i64* %6, align 8, !dbg !4124
  %91 = icmp ult i64 %89, %90, !dbg !4124
  br i1 %91, label %92, label %96, !dbg !4124

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4124
  %94 = load i64, i64* %7, align 8, !dbg !4124
  %95 = mul i64 %93, %94, !dbg !4124
  store i64 %95, i64* %8, align 8, !dbg !4124
  br label %100, !dbg !4124

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4124
  %98 = load i64, i64* %7, align 8, !dbg !4124
  %99 = mul i64 %97, %98, !dbg !4124
  store i64 %99, i64* %8, align 8, !dbg !4124
  br label %100, !dbg !4124

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4124
  %102 = icmp ne i32 %101, 0, !dbg !4124
  br i1 %102, label %103, label %105, !dbg !4126

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4127
  store i32 12, i32* %104, align 4, !dbg !4129
  store i8* null, i8** %4, align 8, !dbg !4130
  br label %109, !dbg !4130

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4131
  %107 = load i64, i64* %8, align 8, !dbg !4132
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4133
  store i8* %108, i8** %4, align 8, !dbg !4134
  br label %109, !dbg !4134

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4135
  ret i8* %110, !dbg !4135
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4136 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4139, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4141, metadata !DIExpression()), !dbg !4145
  %5 = load i32, i32* %3, align 4, !dbg !4146
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4148
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4149
  %8 = icmp ne i32 %7, 0, !dbg !4149
  br i1 %8, label %9, label %10, !dbg !4150

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4151
  br label %18, !dbg !4151

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4152
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.189, i64 0, i64 0)), !dbg !4154
  br i1 %12, label %17, label %13, !dbg !4155

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4156
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.190, i64 0, i64 0)), !dbg !4157
  br i1 %15, label %17, label %16, !dbg !4158

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4159
  br label %18, !dbg !4159

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4160
  br label %18, !dbg !4160

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4161
  ret i1 %19, !dbg !4161
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4162 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4165, metadata !DIExpression()), !dbg !4166
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4167, metadata !DIExpression()), !dbg !4168
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4169, metadata !DIExpression()), !dbg !4170
  %7 = load i32, i32* %4, align 4, !dbg !4171
  %8 = load i8*, i8** %5, align 8, !dbg !4172
  %9 = load i64, i64* %6, align 8, !dbg !4173
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4174
  ret i32 %10, !dbg !4175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4176 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4179, metadata !DIExpression()), !dbg !4180
  %3 = load i32, i32* %2, align 4, !dbg !4181
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4182
  ret i8* %4, !dbg !4183
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4184 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4185, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4187, metadata !DIExpression()), !dbg !4188
  %4 = load i32, i32* %2, align 4, !dbg !4189
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4190
  store i8* %5, i8** %3, align 8, !dbg !4188
  %6 = load i8*, i8** %3, align 8, !dbg !4191
  ret i8* %6, !dbg !4192
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4193 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4194, metadata !DIExpression()), !dbg !4195
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4196, metadata !DIExpression()), !dbg !4197
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4198, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4200, metadata !DIExpression()), !dbg !4201
  %10 = load i32, i32* %5, align 4, !dbg !4202
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4203
  store i8* %11, i8** %8, align 8, !dbg !4201
  %12 = load i8*, i8** %8, align 8, !dbg !4204
  %13 = icmp eq i8* %12, null, !dbg !4206
  br i1 %13, label %14, label %21, !dbg !4207

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4208
  %16 = icmp ugt i64 %15, 0, !dbg !4211
  br i1 %16, label %17, label %20, !dbg !4212

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4213
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4213
  store i8 0, i8* %19, align 1, !dbg !4214
  br label %20, !dbg !4213

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4215
  br label %45, !dbg !4215

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4216, metadata !DIExpression()), !dbg !4218
  %22 = load i8*, i8** %8, align 8, !dbg !4219
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4220
  store i64 %23, i64* %9, align 8, !dbg !4218
  %24 = load i64, i64* %9, align 8, !dbg !4221
  %25 = load i64, i64* %7, align 8, !dbg !4223
  %26 = icmp ult i64 %24, %25, !dbg !4224
  br i1 %26, label %27, label %32, !dbg !4225

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4226
  %29 = load i8*, i8** %8, align 8, !dbg !4228
  %30 = load i64, i64* %9, align 8, !dbg !4229
  %31 = add i64 %30, 1, !dbg !4230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4231
  store i32 0, i32* %4, align 4, !dbg !4232
  br label %45, !dbg !4232

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4233
  %34 = icmp ugt i64 %33, 0, !dbg !4236
  br i1 %34, label %35, label %44, !dbg !4237

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4238
  %37 = load i8*, i8** %8, align 8, !dbg !4240
  %38 = load i64, i64* %7, align 8, !dbg !4241
  %39 = sub i64 %38, 1, !dbg !4242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4243
  %40 = load i8*, i8** %6, align 8, !dbg !4244
  %41 = load i64, i64* %7, align 8, !dbg !4245
  %42 = sub i64 %41, 1, !dbg !4246
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4244
  store i8 0, i8* %43, align 1, !dbg !4247
  br label %44, !dbg !4248

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4249
  br label %45, !dbg !4249

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4250
  ret i32 %46, !dbg !4250
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
attributes #23 = { allocsize(0) }
attributes #24 = { cold }
attributes #25 = { allocsize(1) }
attributes #26 = { allocsize(1,2) }
attributes #27 = { allocsize(0,1) }

!llvm.dbg.cu = !{!2, !51, !56, !225, !227, !64, !200, !229, !98, !108, !115, !231, !233, !192, !239, !259, !261, !263, !265, !267, !269, !271, !273, !206, !275, !277, !279, !281, !284, !286, !288}
!llvm.ident = !{!290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290, !290}
!llvm.module.flags = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 30, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/basename.c", directory: "/src", checksumkind: CSK_MD5, checksum: "477d3cd1850fe551cd0c5a9952f88312")
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
!27 = !{!28, !0}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !30, file: !31, line: 575, type: !25, isLocal: true, isDefinition: true)
!30 = distinct !DISubprogram(name: "oputs_", scope: !31, file: !31, line: 573, type: !32, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !36)
!31 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!36 = !{}
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1536, elements: !47)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !40, line: 50, size: 256, elements: !41)
!40 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!41 = !{!42, !43, !44, !46}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !40, line: 52, baseType: !34, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !39, file: !40, line: 55, baseType: !25, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !39, file: !40, line: 56, baseType: !45, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !39, file: !40, line: 57, baseType: !25, size: 32, offset: 192)
!47 = !{!48}
!48 = !DISubrange(count: 6)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "Version", scope: !51, file: !52, line: 3, type: !34, isLocal: false, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !53, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!53 = !{!49}
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "file_name", scope: !56, file: !57, line: 45, type: !34, isLocal: true, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !58, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!58 = !{!54, !59}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !56, file: !57, line: 55, type: !61, isLocal: true, isDefinition: true)
!61 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !64, file: !65, line: 66, type: !93, isLocal: false, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !66, globals: !67, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!66 = !{!24}
!67 = !{!68, !87, !62, !89, !91}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "old_file_name", scope: !70, file: !65, line: 304, type: !34, isLocal: true, isDefinition: true)
!70 = distinct !DISubprogram(name: "verror_at_line", scope: !65, file: !65, line: 298, type: !71, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !36)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !25, !25, !34, !7, !34, !73}
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !74, line: 52, baseType: !75)
!74 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !76, line: 32, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !78, baseType: !79)
!78 = !DIFile(filename: "lib/error.c", directory: "/src")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !80, size: 256, elements: !81)
!80 = !DINamespace(name: "std", scope: null)
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !79, file: !78, baseType: !24, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !79, file: !78, baseType: !24, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !79, file: !78, baseType: !24, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !79, file: !78, baseType: !25, size: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !79, file: !78, baseType: !25, size: 32, offset: 224)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "old_line_number", scope: !70, file: !65, line: 305, type: !7, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "error_message_count", scope: !64, file: !65, line: 69, type: !7, isLocal: false, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !64, file: !65, line: 295, type: !25, isLocal: false, isDefinition: true)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null}
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "program_name", scope: !98, file: !99, line: 31, type: !34, isLocal: false, isDefinition: true)
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !100, globals: !101, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!100 = !{!22}
!101 = !{!96}
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "utf07FF", scope: !104, file: !105, line: 46, type: !110, isLocal: true, isDefinition: true)
!104 = distinct !DISubprogram(name: "proper_name_lite", scope: !105, file: !105, line: 38, type: !106, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !36)
!105 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!106 = !DISubroutineType(types: !107)
!107 = !{!34, !34, !34}
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !109, splitDebugInlining: false, nameTableKind: None)
!109 = !{!102}
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 16, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 2)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !115, file: !116, line: 76, type: !186, isLocal: false, isDefinition: true)
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !117, retainedTypes: !137, globals: !141, splitDebugInlining: false, nameTableKind: None)
!116 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!117 = !{!118, !132, !5}
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !119, line: 42, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!121 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!122 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!123 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!124 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!125 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!126 = !DIEnumerator(name: "c_quoting_style", value: 5)
!127 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!128 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!129 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!130 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!131 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !119, line: 254, baseType: !7, size: 32, elements: !133)
!133 = !{!134, !135, !136}
!134 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!135 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!136 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!137 = !{!25, !26, !138}
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!140 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!141 = !{!113, !142, !148, !160, !162, !167, !175, !182, !184}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !115, file: !116, line: 92, type: !144, isLocal: false, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 320, elements: !146)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!146 = !{!147}
!147 = !DISubrange(count: 10)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !115, file: !116, line: 1040, type: !150, isLocal: false, isDefinition: true)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !116, line: 56, size: 448, elements: !151)
!151 = !{!152, !153, !154, !158, !159}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !150, file: !116, line: 59, baseType: !118, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !116, line: 62, baseType: !25, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !150, file: !116, line: 66, baseType: !155, size: 256, offset: 64)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !150, file: !116, line: 69, baseType: !34, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !150, file: !116, line: 72, baseType: !34, size: 64, offset: 384)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !115, file: !116, line: 107, type: !150, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "slot0", scope: !115, file: !116, line: 831, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 256)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "quote", scope: !169, file: !116, line: 228, type: !172, isLocal: true, isDefinition: true)
!169 = distinct !DISubprogram(name: "gettext_quote", scope: !116, file: !116, line: 197, type: !170, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !36)
!170 = !DISubroutineType(types: !171)
!171 = !{!34, !34, !118}
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !173)
!173 = !{!112, !174}
!174 = !DISubrange(count: 4)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "slotvec", scope: !115, file: !116, line: 834, type: !177, isLocal: true, isDefinition: true)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !116, line: 823, size: 128, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !178, file: !116, line: 825, baseType: !138, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !178, file: !116, line: 826, baseType: !22, size: 64, offset: 64)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "nslots", scope: !115, file: !116, line: 832, type: !25, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "slotvec0", scope: !115, file: !116, line: 833, type: !178, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 704, elements: !188)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!188 = !{!189}
!189 = !DISubrange(count: 11)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !192, file: !193, line: 26, type: !195, isLocal: false, isDefinition: true)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !194, splitDebugInlining: false, nameTableKind: None)
!193 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!194 = !{!190}
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 376, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 47)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "exit_failure", scope: !200, file: !201, line: 24, type: !203, isLocal: false, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !202, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!202 = !{!198}
!203 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "internal_state", scope: !206, file: !207, line: 97, type: !211, isLocal: true, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !208, globals: !210, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!208 = !{!24, !138, !209}
!209 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!210 = !{!204}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !212, line: 6, baseType: !213)
!212 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !214, line: 21, baseType: !215)
!214 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 13, size: 64, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !215, file: !214, line: 15, baseType: !25, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !215, file: !214, line: 20, baseType: !219, size: 32, offset: 32)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !214, line: 16, size: 32, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !219, file: !214, line: 18, baseType: !7, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !219, file: !214, line: 19, baseType: !223, size: 32)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !224)
!224 = !{!174}
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "lib/basename.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f66445772cbc4fc024422470508e242e")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!230 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!232 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !235, retainedTypes: !66, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!235 = !{!236}
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !234, line: 40, baseType: !7, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !241, retainedTypes: !258, splitDebugInlining: false, nameTableKind: None)
!240 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!241 = !{!242, !249}
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !243, file: !240, line: 188, baseType: !7, size: 32, elements: !247)
!243 = distinct !DISubprogram(name: "x2nrealloc", scope: !240, file: !240, line: 176, type: !244, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!244 = !DISubroutineType(types: !245)
!245 = !{!24, !24, !246, !138}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!247 = !{!248}
!248 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !250, file: !240, line: 228, baseType: !7, size: 32, elements: !247)
!250 = distinct !DISubprogram(name: "xpalloc", scope: !240, file: !240, line: 223, type: !251, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!251 = !DISubroutineType(types: !252)
!252 = !{!24, !24, !253, !254, !256, !254}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !255, line: 130, baseType: !256)
!255 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !139, line: 35, baseType: !257)
!257 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!258 = !{!22, !24, !61, !257, !140}
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !100, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!266 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!267 = distinct !DICompileUnit(language: DW_LANG_C99, file: !268, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!268 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !66, splitDebugInlining: false, nameTableKind: None)
!270 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !66, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !66, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!276 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!278 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!280 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !283, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!283 = !{!61, !140, !24}
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!285 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !66, splitDebugInlining: false, nameTableKind: None)
!289 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!290 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!291 = !{i32 7, !"Dwarf Version", i32 5}
!292 = !{i32 2, !"Debug Info Version", i32 3}
!293 = !{i32 1, !"wchar_size", i32 4}
!294 = !{i32 1, !"branch-target-enforcement", i32 0}
!295 = !{i32 1, !"sign-return-address", i32 0}
!296 = !{i32 1, !"sign-return-address-all", i32 0}
!297 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!298 = !{i32 7, !"PIC Level", i32 2}
!299 = !{i32 7, !"PIE Level", i32 2}
!300 = !{i32 7, !"uwtable", i32 1}
!301 = !{i32 7, !"frame-pointer", i32 1}
!302 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 41, type: !303, scopeLine: 42, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !25}
!305 = !DILocalVariable(name: "status", arg: 1, scope: !302, file: !3, line: 41, type: !25)
!306 = !DILocation(line: 41, column: 12, scope: !302)
!307 = !DILocation(line: 43, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !302, file: !3, line: 43, column: 7)
!309 = !DILocation(line: 43, column: 14, scope: !308)
!310 = !DILocation(line: 43, column: 7, scope: !302)
!311 = !DILocation(line: 44, column: 5, scope: !308)
!312 = !DILocation(line: 44, column: 5, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !3, line: 44, column: 5)
!314 = !DILocation(line: 47, column: 15, scope: !315)
!315 = distinct !DILexicalBlock(scope: !308, file: !3, line: 46, column: 5)
!316 = !DILocation(line: 51, column: 15, scope: !315)
!317 = !DILocation(line: 51, column: 29, scope: !315)
!318 = !DILocation(line: 47, column: 7, scope: !315)
!319 = !DILocation(line: 52, column: 7, scope: !315)
!320 = !DILocation(line: 57, column: 7, scope: !315)
!321 = !DILocation(line: 59, column: 7, scope: !315)
!322 = !DILocation(line: 63, column: 7, scope: !315)
!323 = !DILocation(line: 67, column: 7, scope: !315)
!324 = !DILocation(line: 71, column: 7, scope: !315)
!325 = !DILocation(line: 72, column: 7, scope: !315)
!326 = !DILocation(line: 73, column: 15, scope: !315)
!327 = !DILocation(line: 81, column: 15, scope: !315)
!328 = !DILocation(line: 81, column: 29, scope: !315)
!329 = !DILocation(line: 81, column: 43, scope: !315)
!330 = !DILocation(line: 81, column: 57, scope: !315)
!331 = !DILocation(line: 73, column: 7, scope: !315)
!332 = !DILocation(line: 82, column: 7, scope: !315)
!333 = !DILocation(line: 84, column: 9, scope: !302)
!334 = !DILocation(line: 84, column: 3, scope: !302)
!335 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !31, file: !31, line: 734, type: !94, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !36)
!336 = !DILocation(line: 736, column: 3, scope: !335)
!337 = !DILocation(line: 739, column: 1, scope: !335)
!338 = !DILocalVariable(name: "program", arg: 1, scope: !30, file: !31, line: 573, type: !34)
!339 = !DILocation(line: 573, column: 34, scope: !30)
!340 = !DILocalVariable(name: "option", arg: 2, scope: !30, file: !31, line: 573, type: !34)
!341 = !DILocation(line: 573, column: 55, scope: !30)
!342 = !DILocation(line: 581, column: 7, scope: !343)
!343 = distinct !DILexicalBlock(scope: !30, file: !31, line: 581, column: 7)
!344 = !DILocation(line: 581, column: 19, scope: !343)
!345 = !DILocation(line: 581, column: 7, scope: !30)
!346 = !DILocalVariable(name: "term", scope: !347, file: !31, line: 585, type: !34)
!347 = distinct !DILexicalBlock(scope: !343, file: !31, line: 582, column: 5)
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
!360 = distinct !DILexicalBlock(scope: !30, file: !31, line: 588, column: 7)
!361 = !DILocation(line: 588, column: 7, scope: !30)
!362 = !DILocation(line: 590, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !31, line: 589, column: 5)
!364 = !DILocation(line: 591, column: 7, scope: !363)
!365 = !DILocalVariable(name: "double_space", scope: !30, file: !31, line: 594, type: !61)
!366 = !DILocation(line: 594, column: 8, scope: !30)
!367 = !DILocalVariable(name: "first_word", scope: !30, file: !31, line: 595, type: !34)
!368 = !DILocation(line: 595, column: 15, scope: !30)
!369 = !DILocation(line: 595, column: 28, scope: !30)
!370 = !DILocation(line: 595, column: 45, scope: !30)
!371 = !DILocation(line: 595, column: 37, scope: !30)
!372 = !DILocation(line: 595, column: 35, scope: !30)
!373 = !DILocalVariable(name: "option_text", scope: !30, file: !31, line: 596, type: !34)
!374 = !DILocation(line: 596, column: 15, scope: !30)
!375 = !DILocation(line: 596, column: 37, scope: !30)
!376 = !DILocation(line: 596, column: 29, scope: !30)
!377 = !DILocation(line: 597, column: 8, scope: !378)
!378 = distinct !DILexicalBlock(scope: !30, file: !31, line: 597, column: 7)
!379 = !DILocation(line: 597, column: 7, scope: !30)
!380 = !DILocation(line: 599, column: 21, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !31, line: 598, column: 5)
!382 = !DILocation(line: 599, column: 19, scope: !381)
!383 = !DILocation(line: 602, column: 20, scope: !381)
!384 = !DILocation(line: 603, column: 5, scope: !381)
!385 = !DILocation(line: 604, column: 12, scope: !386)
!386 = distinct !DILexicalBlock(scope: !378, file: !31, line: 604, column: 12)
!387 = !DILocation(line: 604, column: 27, scope: !386)
!388 = !DILocation(line: 604, column: 24, scope: !386)
!389 = !DILocation(line: 604, column: 12, scope: !378)
!390 = !DILocalVariable(name: "s", scope: !391, file: !31, line: 608, type: !34)
!391 = distinct !DILexicalBlock(scope: !386, file: !31, line: 605, column: 5)
!392 = !DILocation(line: 608, column: 19, scope: !391)
!393 = !DILocation(line: 608, column: 23, scope: !391)
!394 = !DILocalVariable(name: "spaces", scope: !391, file: !31, line: 609, type: !138)
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
!411 = distinct !DILexicalBlock(scope: !391, file: !31, line: 612, column: 11)
!412 = !DILocation(line: 612, column: 18, scope: !411)
!413 = !DILocation(line: 612, column: 11, scope: !391)
!414 = !DILocation(line: 615, column: 25, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !31, line: 613, column: 9)
!416 = !DILocation(line: 615, column: 23, scope: !415)
!417 = !DILocation(line: 616, column: 24, scope: !415)
!418 = !DILocation(line: 617, column: 9, scope: !415)
!419 = !DILocation(line: 618, column: 5, scope: !391)
!420 = !DILocalVariable(name: "anchor_len", scope: !30, file: !31, line: 620, type: !138)
!421 = !DILocation(line: 620, column: 10, scope: !30)
!422 = !DILocation(line: 620, column: 32, scope: !30)
!423 = !DILocation(line: 620, column: 23, scope: !30)
!424 = !DILocalVariable(name: "desc_text", scope: !30, file: !31, line: 625, type: !34)
!425 = !DILocation(line: 625, column: 15, scope: !30)
!426 = !DILocation(line: 625, column: 27, scope: !30)
!427 = !DILocation(line: 625, column: 41, scope: !30)
!428 = !DILocation(line: 625, column: 39, scope: !30)
!429 = !DILocation(line: 626, column: 3, scope: !30)
!430 = !DILocation(line: 626, column: 11, scope: !30)
!431 = !DILocation(line: 626, column: 10, scope: !30)
!432 = !DILocation(line: 626, column: 21, scope: !30)
!433 = !DILocation(line: 626, column: 25, scope: !30)
!434 = !DILocation(line: 626, column: 24, scope: !30)
!435 = !DILocation(line: 626, column: 35, scope: !30)
!436 = !DILocation(line: 0, scope: !30)
!437 = !DILocation(line: 628, column: 12, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !31, line: 628, column: 11)
!439 = distinct !DILexicalBlock(scope: !30, file: !31, line: 627, column: 5)
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
!451 = distinct !DILexicalBlock(scope: !439, file: !31, line: 630, column: 11)
!452 = !DILocation(line: 630, column: 11, scope: !439)
!453 = !DILocation(line: 632, column: 16, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !31, line: 632, column: 15)
!455 = distinct !DILexicalBlock(scope: !451, file: !31, line: 631, column: 9)
!456 = !DILocation(line: 632, column: 15, scope: !454)
!457 = !DILocation(line: 632, column: 26, scope: !454)
!458 = !DILocation(line: 632, column: 34, scope: !454)
!459 = !DILocation(line: 632, column: 37, scope: !454)
!460 = !DILocation(line: 632, column: 15, scope: !455)
!461 = !DILocation(line: 633, column: 13, scope: !454)
!462 = !DILocation(line: 636, column: 16, scope: !463)
!463 = distinct !DILexicalBlock(scope: !455, file: !31, line: 636, column: 15)
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
!474 = !DILocation(line: 641, column: 5, scope: !30)
!475 = !DILocation(line: 644, column: 3, scope: !30)
!476 = !DILocalVariable(name: "url_program", scope: !30, file: !31, line: 648, type: !34)
!477 = !DILocation(line: 648, column: 15, scope: !30)
!478 = !DILocation(line: 648, column: 38, scope: !30)
!479 = !DILocation(line: 648, column: 31, scope: !30)
!480 = !DILocation(line: 649, column: 38, scope: !30)
!481 = !DILocation(line: 649, column: 31, scope: !30)
!482 = !DILocation(line: 650, column: 38, scope: !30)
!483 = !DILocation(line: 650, column: 31, scope: !30)
!484 = !DILocation(line: 651, column: 38, scope: !30)
!485 = !DILocation(line: 651, column: 31, scope: !30)
!486 = !DILocation(line: 652, column: 38, scope: !30)
!487 = !DILocation(line: 652, column: 31, scope: !30)
!488 = !DILocation(line: 653, column: 38, scope: !30)
!489 = !DILocation(line: 653, column: 31, scope: !30)
!490 = !DILocation(line: 654, column: 38, scope: !30)
!491 = !DILocation(line: 654, column: 31, scope: !30)
!492 = !DILocation(line: 655, column: 38, scope: !30)
!493 = !DILocation(line: 655, column: 31, scope: !30)
!494 = !DILocation(line: 656, column: 38, scope: !30)
!495 = !DILocation(line: 656, column: 31, scope: !30)
!496 = !DILocation(line: 657, column: 38, scope: !30)
!497 = !DILocation(line: 657, column: 31, scope: !30)
!498 = !DILocation(line: 658, column: 31, scope: !30)
!499 = !DILocation(line: 663, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !30, file: !31, line: 663, column: 7)
!501 = !DILocation(line: 664, column: 7, scope: !500)
!502 = !DILocation(line: 664, column: 10, scope: !500)
!503 = !DILocation(line: 663, column: 7, scope: !30)
!504 = !DILocation(line: 670, column: 15, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !31, line: 665, column: 5)
!506 = !DILocation(line: 670, column: 28, scope: !505)
!507 = !DILocation(line: 670, column: 47, scope: !505)
!508 = !DILocation(line: 670, column: 41, scope: !505)
!509 = !DILocation(line: 670, column: 59, scope: !505)
!510 = !DILocation(line: 669, column: 7, scope: !505)
!511 = !DILocation(line: 671, column: 5, scope: !505)
!512 = !DILocation(line: 676, column: 48, scope: !513)
!513 = distinct !DILexicalBlock(scope: !500, file: !31, line: 673, column: 5)
!514 = !DILocation(line: 677, column: 21, scope: !513)
!515 = !DILocation(line: 677, column: 15, scope: !513)
!516 = !DILocation(line: 677, column: 33, scope: !513)
!517 = !DILocation(line: 676, column: 7, scope: !513)
!518 = !DILocation(line: 679, column: 3, scope: !30)
!519 = !DILocation(line: 683, column: 3, scope: !30)
!520 = !DILocation(line: 686, column: 3, scope: !30)
!521 = !DILocation(line: 688, column: 3, scope: !30)
!522 = !DILocation(line: 691, column: 3, scope: !30)
!523 = !DILocation(line: 695, column: 3, scope: !30)
!524 = !DILocation(line: 696, column: 1, scope: !30)
!525 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !31, file: !31, line: 836, type: !526, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !36)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !34}
!528 = !DILocalVariable(name: "program", arg: 1, scope: !525, file: !31, line: 836, type: !34)
!529 = !DILocation(line: 836, column: 34, scope: !525)
!530 = !DILocalVariable(name: "infomap", scope: !525, file: !31, line: 838, type: !531)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 896, elements: !537)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !525, file: !31, line: 838, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !533, file: !31, line: 838, baseType: !34, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !533, file: !31, line: 838, baseType: !34, size: 64, offset: 64)
!537 = !{!538}
!538 = !DISubrange(count: 7)
!539 = !DILocation(line: 838, column: 67, scope: !525)
!540 = !DILocalVariable(name: "node", scope: !525, file: !31, line: 848, type: !34)
!541 = !DILocation(line: 848, column: 15, scope: !525)
!542 = !DILocation(line: 848, column: 22, scope: !525)
!543 = !DILocalVariable(name: "map_prog", scope: !525, file: !31, line: 849, type: !544)
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
!560 = distinct !DILexicalBlock(scope: !525, file: !31, line: 854, column: 7)
!561 = !DILocation(line: 854, column: 17, scope: !560)
!562 = !DILocation(line: 854, column: 7, scope: !525)
!563 = !DILocation(line: 855, column: 12, scope: !560)
!564 = !DILocation(line: 855, column: 22, scope: !560)
!565 = !DILocation(line: 855, column: 10, scope: !560)
!566 = !DILocation(line: 855, column: 5, scope: !560)
!567 = !DILocation(line: 857, column: 3, scope: !525)
!568 = !DILocalVariable(name: "lc_messages", scope: !525, file: !31, line: 861, type: !34)
!569 = !DILocation(line: 861, column: 15, scope: !525)
!570 = !DILocation(line: 861, column: 29, scope: !525)
!571 = !DILocation(line: 862, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !525, file: !31, line: 862, column: 7)
!573 = !DILocation(line: 862, column: 19, scope: !572)
!574 = !DILocation(line: 862, column: 22, scope: !572)
!575 = !DILocation(line: 862, column: 7, scope: !525)
!576 = !DILocation(line: 868, column: 7, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !31, line: 863, column: 5)
!578 = !DILocation(line: 870, column: 5, scope: !577)
!579 = !DILocalVariable(name: "url_program", scope: !525, file: !31, line: 874, type: !34)
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
!594 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 127, type: !595, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!595 = !DISubroutineType(types: !596)
!596 = !{!25, !25, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!598 = !DILocalVariable(name: "argc", arg: 1, scope: !594, file: !3, line: 127, type: !25)
!599 = !DILocation(line: 127, column: 11, scope: !594)
!600 = !DILocalVariable(name: "argv", arg: 2, scope: !594, file: !3, line: 127, type: !597)
!601 = !DILocation(line: 127, column: 24, scope: !594)
!602 = !DILocalVariable(name: "multiple_names", scope: !594, file: !3, line: 129, type: !61)
!603 = !DILocation(line: 129, column: 8, scope: !594)
!604 = !DILocalVariable(name: "use_nuls", scope: !594, file: !3, line: 130, type: !61)
!605 = !DILocation(line: 130, column: 8, scope: !594)
!606 = !DILocalVariable(name: "suffix", scope: !594, file: !3, line: 131, type: !34)
!607 = !DILocation(line: 131, column: 15, scope: !594)
!608 = !DILocation(line: 134, column: 21, scope: !594)
!609 = !DILocation(line: 134, column: 3, scope: !594)
!610 = !DILocation(line: 135, column: 3, scope: !594)
!611 = !DILocation(line: 136, column: 3, scope: !594)
!612 = !DILocation(line: 137, column: 3, scope: !594)
!613 = !DILocation(line: 139, column: 3, scope: !594)
!614 = !DILocation(line: 141, column: 3, scope: !594)
!615 = !DILocalVariable(name: "c", scope: !616, file: !3, line: 143, type: !25)
!616 = distinct !DILexicalBlock(scope: !594, file: !3, line: 142, column: 5)
!617 = !DILocation(line: 143, column: 11, scope: !616)
!618 = !DILocation(line: 143, column: 28, scope: !616)
!619 = !DILocation(line: 143, column: 34, scope: !616)
!620 = !DILocation(line: 143, column: 15, scope: !616)
!621 = !DILocation(line: 145, column: 11, scope: !622)
!622 = distinct !DILexicalBlock(scope: !616, file: !3, line: 145, column: 11)
!623 = !DILocation(line: 145, column: 13, scope: !622)
!624 = !DILocation(line: 145, column: 11, scope: !616)
!625 = !DILocation(line: 146, column: 9, scope: !622)
!626 = !DILocation(line: 148, column: 15, scope: !616)
!627 = !DILocation(line: 148, column: 7, scope: !616)
!628 = !DILocation(line: 151, column: 20, scope: !629)
!629 = distinct !DILexicalBlock(scope: !616, file: !3, line: 149, column: 9)
!630 = !DILocation(line: 151, column: 18, scope: !629)
!631 = !DILocation(line: 151, column: 11, scope: !629)
!632 = !DILocation(line: 156, column: 26, scope: !629)
!633 = !DILocation(line: 157, column: 11, scope: !629)
!634 = !DILocation(line: 160, column: 20, scope: !629)
!635 = !DILocation(line: 161, column: 11, scope: !629)
!636 = !DILocation(line: 163, column: 9, scope: !629)
!637 = !DILocation(line: 164, column: 9, scope: !629)
!638 = !DILocation(line: 167, column: 11, scope: !629)
!639 = distinct !{!639, !614, !640}
!640 = !DILocation(line: 169, column: 5, scope: !594)
!641 = !DILocation(line: 171, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !594, file: !3, line: 171, column: 7)
!643 = !DILocation(line: 171, column: 14, scope: !642)
!644 = !DILocation(line: 171, column: 21, scope: !642)
!645 = !DILocation(line: 171, column: 12, scope: !642)
!646 = !DILocation(line: 171, column: 7, scope: !594)
!647 = !DILocation(line: 173, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !642, file: !3, line: 172, column: 5)
!649 = !DILocation(line: 174, column: 7, scope: !648)
!650 = !DILocation(line: 177, column: 8, scope: !651)
!651 = distinct !DILexicalBlock(scope: !594, file: !3, line: 177, column: 7)
!652 = !DILocation(line: 177, column: 23, scope: !651)
!653 = !DILocation(line: 177, column: 26, scope: !651)
!654 = !DILocation(line: 177, column: 33, scope: !651)
!655 = !DILocation(line: 177, column: 39, scope: !651)
!656 = !DILocation(line: 177, column: 37, scope: !651)
!657 = !DILocation(line: 177, column: 7, scope: !594)
!658 = !DILocation(line: 179, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !651, file: !3, line: 178, column: 5)
!660 = !DILocation(line: 180, column: 7, scope: !659)
!661 = !DILocation(line: 183, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !594, file: !3, line: 183, column: 7)
!663 = !DILocation(line: 183, column: 7, scope: !594)
!664 = !DILocation(line: 185, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !3, line: 184, column: 5)
!666 = !DILocation(line: 185, column: 14, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 185, column: 7)
!668 = distinct !DILexicalBlock(scope: !665, file: !3, line: 185, column: 7)
!669 = !DILocation(line: 185, column: 23, scope: !667)
!670 = !DILocation(line: 185, column: 21, scope: !667)
!671 = !DILocation(line: 185, column: 7, scope: !668)
!672 = !DILocation(line: 186, column: 27, scope: !667)
!673 = !DILocation(line: 186, column: 32, scope: !667)
!674 = !DILocation(line: 186, column: 41, scope: !667)
!675 = !DILocation(line: 186, column: 49, scope: !667)
!676 = !DILocation(line: 186, column: 9, scope: !667)
!677 = !DILocation(line: 185, column: 35, scope: !667)
!678 = !DILocation(line: 185, column: 7, scope: !667)
!679 = distinct !{!679, !671, !680, !409}
!680 = !DILocation(line: 186, column: 57, scope: !668)
!681 = !DILocation(line: 187, column: 5, scope: !665)
!682 = !DILocation(line: 189, column: 23, scope: !662)
!683 = !DILocation(line: 189, column: 28, scope: !662)
!684 = !DILocation(line: 190, column: 23, scope: !662)
!685 = !DILocation(line: 190, column: 30, scope: !662)
!686 = !DILocation(line: 190, column: 37, scope: !662)
!687 = !DILocation(line: 190, column: 34, scope: !662)
!688 = !DILocation(line: 190, column: 44, scope: !662)
!689 = !DILocation(line: 190, column: 49, scope: !662)
!690 = !DILocation(line: 190, column: 56, scope: !662)
!691 = !DILocation(line: 191, column: 23, scope: !662)
!692 = !DILocation(line: 189, column: 5, scope: !662)
!693 = !DILocation(line: 193, column: 3, scope: !594)
!694 = distinct !DISubprogram(name: "perform_basename", scope: !3, file: !3, line: 107, type: !695, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !36)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !34, !34, !61}
!697 = !DILocalVariable(name: "string", arg: 1, scope: !694, file: !3, line: 107, type: !34)
!698 = !DILocation(line: 107, column: 31, scope: !694)
!699 = !DILocalVariable(name: "suffix", arg: 2, scope: !694, file: !3, line: 107, type: !34)
!700 = !DILocation(line: 107, column: 51, scope: !694)
!701 = !DILocalVariable(name: "use_nuls", arg: 3, scope: !694, file: !3, line: 107, type: !61)
!702 = !DILocation(line: 107, column: 64, scope: !694)
!703 = !DILocalVariable(name: "name", scope: !694, file: !3, line: 109, type: !22)
!704 = !DILocation(line: 109, column: 9, scope: !694)
!705 = !DILocation(line: 109, column: 27, scope: !694)
!706 = !DILocation(line: 109, column: 16, scope: !694)
!707 = !DILocation(line: 110, column: 27, scope: !694)
!708 = !DILocation(line: 110, column: 3, scope: !694)
!709 = !DILocation(line: 118, column: 7, scope: !710)
!710 = distinct !DILexicalBlock(scope: !694, file: !3, line: 118, column: 7)
!711 = !DILocation(line: 118, column: 14, scope: !710)
!712 = !DILocation(line: 118, column: 17, scope: !710)
!713 = !DILocation(line: 118, column: 46, scope: !710)
!714 = !DILocation(line: 118, column: 51, scope: !710)
!715 = !DILocation(line: 118, column: 7, scope: !694)
!716 = !DILocation(line: 119, column: 20, scope: !710)
!717 = !DILocation(line: 119, column: 26, scope: !710)
!718 = !DILocation(line: 119, column: 5, scope: !710)
!719 = !DILocation(line: 121, column: 3, scope: !694)
!720 = !DILocation(line: 122, column: 3, scope: !694)
!721 = !DILocation(line: 123, column: 9, scope: !694)
!722 = !DILocation(line: 123, column: 3, scope: !694)
!723 = !DILocation(line: 124, column: 1, scope: !694)
!724 = distinct !DISubprogram(name: "remove_suffix", scope: !3, file: !3, line: 91, type: !725, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !36)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !22, !34}
!727 = !DILocalVariable(name: "name", arg: 1, scope: !724, file: !3, line: 91, type: !22)
!728 = !DILocation(line: 91, column: 22, scope: !724)
!729 = !DILocalVariable(name: "suffix", arg: 2, scope: !724, file: !3, line: 91, type: !34)
!730 = !DILocation(line: 91, column: 40, scope: !724)
!731 = !DILocalVariable(name: "np", scope: !724, file: !3, line: 93, type: !22)
!732 = !DILocation(line: 93, column: 9, scope: !724)
!733 = !DILocation(line: 93, column: 14, scope: !724)
!734 = !DILocation(line: 93, column: 29, scope: !724)
!735 = !DILocation(line: 93, column: 21, scope: !724)
!736 = !DILocation(line: 93, column: 19, scope: !724)
!737 = !DILocalVariable(name: "sp", scope: !724, file: !3, line: 94, type: !34)
!738 = !DILocation(line: 94, column: 15, scope: !724)
!739 = !DILocation(line: 94, column: 20, scope: !724)
!740 = !DILocation(line: 94, column: 37, scope: !724)
!741 = !DILocation(line: 94, column: 29, scope: !724)
!742 = !DILocation(line: 94, column: 27, scope: !724)
!743 = !DILocation(line: 96, column: 3, scope: !724)
!744 = !DILocation(line: 96, column: 10, scope: !724)
!745 = !DILocation(line: 96, column: 15, scope: !724)
!746 = !DILocation(line: 96, column: 13, scope: !724)
!747 = !DILocation(line: 96, column: 20, scope: !724)
!748 = !DILocation(line: 96, column: 23, scope: !724)
!749 = !DILocation(line: 96, column: 28, scope: !724)
!750 = !DILocation(line: 96, column: 26, scope: !724)
!751 = !DILocation(line: 0, scope: !724)
!752 = !DILocation(line: 97, column: 10, scope: !753)
!753 = distinct !DILexicalBlock(scope: !724, file: !3, line: 97, column: 9)
!754 = !DILocation(line: 97, column: 9, scope: !753)
!755 = !DILocation(line: 97, column: 19, scope: !753)
!756 = !DILocation(line: 97, column: 18, scope: !753)
!757 = !DILocation(line: 97, column: 15, scope: !753)
!758 = !DILocation(line: 97, column: 9, scope: !724)
!759 = !DILocation(line: 98, column: 7, scope: !753)
!760 = distinct !{!760, !743, !761, !409}
!761 = !DILocation(line: 98, column: 7, scope: !724)
!762 = !DILocation(line: 99, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !724, file: !3, line: 99, column: 7)
!764 = !DILocation(line: 99, column: 12, scope: !763)
!765 = !DILocation(line: 99, column: 10, scope: !763)
!766 = !DILocation(line: 99, column: 7, scope: !724)
!767 = !DILocation(line: 100, column: 6, scope: !763)
!768 = !DILocation(line: 100, column: 9, scope: !763)
!769 = !DILocation(line: 100, column: 5, scope: !763)
!770 = !DILocation(line: 101, column: 1, scope: !724)
!771 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !57, file: !57, line: 50, type: !526, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !36)
!772 = !DILocalVariable(name: "file", arg: 1, scope: !771, file: !57, line: 50, type: !34)
!773 = !DILocation(line: 50, column: 41, scope: !771)
!774 = !DILocation(line: 52, column: 15, scope: !771)
!775 = !DILocation(line: 52, column: 13, scope: !771)
!776 = !DILocation(line: 53, column: 1, scope: !771)
!777 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !57, file: !57, line: 87, type: !778, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !36)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !61}
!780 = !DILocalVariable(name: "ignore", arg: 1, scope: !777, file: !57, line: 87, type: !61)
!781 = !DILocation(line: 87, column: 37, scope: !777)
!782 = !DILocation(line: 89, column: 18, scope: !777)
!783 = !DILocation(line: 89, column: 16, scope: !777)
!784 = !DILocation(line: 90, column: 1, scope: !777)
!785 = distinct !DISubprogram(name: "close_stdout", scope: !57, file: !57, line: 116, type: !94, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !36)
!786 = !DILocation(line: 118, column: 21, scope: !787)
!787 = distinct !DILexicalBlock(scope: !785, file: !57, line: 118, column: 7)
!788 = !DILocation(line: 118, column: 7, scope: !787)
!789 = !DILocation(line: 118, column: 29, scope: !787)
!790 = !DILocation(line: 119, column: 7, scope: !787)
!791 = !DILocation(line: 119, column: 12, scope: !787)
!792 = !DILocation(line: 119, column: 25, scope: !787)
!793 = !DILocation(line: 119, column: 28, scope: !787)
!794 = !DILocation(line: 119, column: 34, scope: !787)
!795 = !DILocation(line: 118, column: 7, scope: !785)
!796 = !DILocalVariable(name: "write_error", scope: !797, file: !57, line: 121, type: !34)
!797 = distinct !DILexicalBlock(scope: !787, file: !57, line: 120, column: 5)
!798 = !DILocation(line: 121, column: 19, scope: !797)
!799 = !DILocation(line: 121, column: 33, scope: !797)
!800 = !DILocation(line: 122, column: 11, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !57, line: 122, column: 11)
!802 = !DILocation(line: 122, column: 11, scope: !797)
!803 = !DILocation(line: 123, column: 9, scope: !801)
!804 = !DILocation(line: 126, column: 9, scope: !801)
!805 = !DILocation(line: 128, column: 14, scope: !797)
!806 = !DILocation(line: 128, column: 7, scope: !797)
!807 = !DILocation(line: 133, column: 42, scope: !808)
!808 = distinct !DILexicalBlock(scope: !785, file: !57, line: 133, column: 7)
!809 = !DILocation(line: 133, column: 28, scope: !808)
!810 = !DILocation(line: 133, column: 50, scope: !808)
!811 = !DILocation(line: 133, column: 7, scope: !785)
!812 = !DILocation(line: 134, column: 12, scope: !808)
!813 = !DILocation(line: 134, column: 5, scope: !808)
!814 = !DILocation(line: 135, column: 1, scope: !785)
!815 = distinct !DISubprogram(name: "base_name", scope: !226, file: !226, line: 27, type: !816, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !225, retainedNodes: !36)
!816 = !DISubroutineType(types: !817)
!817 = !{!22, !34}
!818 = !DILocalVariable(name: "name", arg: 1, scope: !815, file: !226, line: 27, type: !34)
!819 = !DILocation(line: 27, column: 24, scope: !815)
!820 = !DILocalVariable(name: "base", scope: !815, file: !226, line: 29, type: !34)
!821 = !DILocation(line: 29, column: 15, scope: !815)
!822 = !DILocation(line: 29, column: 38, scope: !815)
!823 = !DILocation(line: 29, column: 22, scope: !815)
!824 = !DILocalVariable(name: "length", scope: !815, file: !226, line: 30, type: !254)
!825 = !DILocation(line: 30, column: 9, scope: !815)
!826 = !DILocalVariable(name: "dotslash_len", scope: !815, file: !226, line: 31, type: !25)
!827 = !DILocation(line: 31, column: 7, scope: !815)
!828 = !DILocation(line: 32, column: 8, scope: !829)
!829 = distinct !DILexicalBlock(scope: !815, file: !226, line: 32, column: 7)
!830 = !DILocation(line: 32, column: 7, scope: !829)
!831 = !DILocation(line: 32, column: 7, scope: !815)
!832 = !DILocation(line: 34, column: 26, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !226, line: 33, column: 5)
!834 = !DILocation(line: 34, column: 16, scope: !833)
!835 = !DILocation(line: 34, column: 14, scope: !833)
!836 = !DILocation(line: 37, column: 17, scope: !833)
!837 = !DILocation(line: 37, column: 14, scope: !833)
!838 = !DILocation(line: 42, column: 22, scope: !833)
!839 = !DILocation(line: 42, column: 20, scope: !833)
!840 = !DILocation(line: 43, column: 5, scope: !833)
!841 = !DILocation(line: 48, column: 14, scope: !842)
!842 = distinct !DILexicalBlock(scope: !829, file: !226, line: 45, column: 5)
!843 = !DILocation(line: 48, column: 12, scope: !842)
!844 = !DILocation(line: 49, column: 26, scope: !842)
!845 = !DILocation(line: 49, column: 16, scope: !842)
!846 = !DILocation(line: 49, column: 14, scope: !842)
!847 = !DILocation(line: 50, column: 20, scope: !842)
!848 = !DILocalVariable(name: "p", scope: !815, file: !226, line: 53, type: !22)
!849 = !DILocation(line: 53, column: 9, scope: !815)
!850 = !DILocation(line: 53, column: 23, scope: !815)
!851 = !DILocation(line: 53, column: 38, scope: !815)
!852 = !DILocation(line: 53, column: 36, scope: !815)
!853 = !DILocation(line: 53, column: 45, scope: !815)
!854 = !DILocation(line: 53, column: 13, scope: !815)
!855 = !DILocation(line: 54, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !815, file: !226, line: 54, column: 7)
!857 = !DILocation(line: 54, column: 7, scope: !815)
!858 = !DILocation(line: 56, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !226, line: 55, column: 5)
!860 = !DILocation(line: 56, column: 12, scope: !859)
!861 = !DILocation(line: 57, column: 7, scope: !859)
!862 = !DILocation(line: 57, column: 12, scope: !859)
!863 = !DILocation(line: 58, column: 5, scope: !859)
!864 = !DILocation(line: 61, column: 11, scope: !815)
!865 = !DILocation(line: 61, column: 15, scope: !815)
!866 = !DILocation(line: 61, column: 13, scope: !815)
!867 = !DILocation(line: 61, column: 29, scope: !815)
!868 = !DILocation(line: 61, column: 35, scope: !815)
!869 = !DILocation(line: 61, column: 3, scope: !815)
!870 = !DILocation(line: 62, column: 3, scope: !815)
!871 = !DILocation(line: 62, column: 5, scope: !815)
!872 = !DILocation(line: 62, column: 20, scope: !815)
!873 = !DILocation(line: 62, column: 18, scope: !815)
!874 = !DILocation(line: 62, column: 28, scope: !815)
!875 = !DILocation(line: 63, column: 10, scope: !815)
!876 = !DILocation(line: 63, column: 3, scope: !815)
!877 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !228, file: !228, line: 31, type: !878, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !227, retainedNodes: !36)
!878 = !DISubroutineType(types: !879)
!879 = !{!61, !22}
!880 = !DILocalVariable(name: "file", arg: 1, scope: !877, file: !228, line: 31, type: !22)
!881 = !DILocation(line: 31, column: 31, scope: !877)
!882 = !DILocalVariable(name: "base", scope: !877, file: !228, line: 33, type: !22)
!883 = !DILocation(line: 33, column: 9, scope: !877)
!884 = !DILocation(line: 33, column: 32, scope: !877)
!885 = !DILocation(line: 33, column: 16, scope: !877)
!886 = !DILocation(line: 37, column: 10, scope: !887)
!887 = distinct !DILexicalBlock(scope: !877, file: !228, line: 37, column: 7)
!888 = !DILocation(line: 37, column: 9, scope: !887)
!889 = !DILocation(line: 37, column: 7, scope: !877)
!890 = !DILocation(line: 38, column: 12, scope: !887)
!891 = !DILocation(line: 38, column: 10, scope: !887)
!892 = !DILocation(line: 38, column: 5, scope: !887)
!893 = !DILocalVariable(name: "base_lim", scope: !877, file: !228, line: 39, type: !22)
!894 = !DILocation(line: 39, column: 9, scope: !877)
!895 = !DILocation(line: 39, column: 20, scope: !877)
!896 = !DILocation(line: 39, column: 37, scope: !877)
!897 = !DILocation(line: 39, column: 27, scope: !877)
!898 = !DILocation(line: 39, column: 25, scope: !877)
!899 = !DILocalVariable(name: "had_slash", scope: !877, file: !228, line: 40, type: !61)
!900 = !DILocation(line: 40, column: 8, scope: !877)
!901 = !DILocation(line: 40, column: 22, scope: !877)
!902 = !DILocation(line: 40, column: 21, scope: !877)
!903 = !DILocation(line: 40, column: 31, scope: !877)
!904 = !DILocation(line: 41, column: 4, scope: !877)
!905 = !DILocation(line: 41, column: 13, scope: !877)
!906 = !DILocation(line: 42, column: 10, scope: !877)
!907 = !DILocation(line: 42, column: 3, scope: !877)
!908 = distinct !DISubprogram(name: "verror", scope: !65, file: !65, line: 251, type: !909, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !36)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !25, !25, !34, !73}
!911 = !DILocalVariable(name: "status", arg: 1, scope: !908, file: !65, line: 251, type: !25)
!912 = !DILocation(line: 251, column: 1, scope: !908)
!913 = !DILocalVariable(name: "errnum", arg: 2, scope: !908, file: !65, line: 251, type: !25)
!914 = !DILocalVariable(name: "message", arg: 3, scope: !908, file: !65, line: 251, type: !34)
!915 = !DILocalVariable(name: "args", arg: 4, scope: !908, file: !65, line: 251, type: !73)
!916 = !DILocation(line: 261, column: 3, scope: !908)
!917 = !DILocation(line: 265, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !908, file: !65, line: 265, column: 7)
!919 = !DILocation(line: 265, column: 7, scope: !908)
!920 = !DILocation(line: 266, column: 7, scope: !918)
!921 = !DILocation(line: 266, column: 5, scope: !918)
!922 = !DILocation(line: 272, column: 16, scope: !923)
!923 = distinct !DILexicalBlock(scope: !918, file: !65, line: 268, column: 5)
!924 = !DILocation(line: 272, column: 32, scope: !923)
!925 = !DILocation(line: 272, column: 7, scope: !923)
!926 = !DILocation(line: 276, column: 3, scope: !908)
!927 = !DILocation(line: 282, column: 1, scope: !908)
!928 = distinct !DISubprogram(name: "flush_stdout", scope: !65, file: !65, line: 163, type: !94, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !36)
!929 = !DILocalVariable(name: "stdout_fd", scope: !928, file: !65, line: 166, type: !25)
!930 = !DILocation(line: 166, column: 7, scope: !928)
!931 = !DILocation(line: 172, column: 13, scope: !928)
!932 = !DILocation(line: 182, column: 12, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !65, line: 182, column: 7)
!934 = !DILocation(line: 182, column: 9, scope: !933)
!935 = !DILocation(line: 182, column: 22, scope: !933)
!936 = !DILocation(line: 182, column: 34, scope: !933)
!937 = !DILocation(line: 182, column: 25, scope: !933)
!938 = !DILocation(line: 182, column: 7, scope: !928)
!939 = !DILocation(line: 184, column: 5, scope: !933)
!940 = !DILocation(line: 185, column: 1, scope: !928)
!941 = distinct !DISubprogram(name: "error_tail", scope: !65, file: !65, line: 219, type: !909, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !36)
!942 = !DILocalVariable(name: "status", arg: 1, scope: !941, file: !65, line: 219, type: !25)
!943 = !DILocation(line: 219, column: 1, scope: !941)
!944 = !DILocalVariable(name: "errnum", arg: 2, scope: !941, file: !65, line: 219, type: !25)
!945 = !DILocalVariable(name: "message", arg: 3, scope: !941, file: !65, line: 219, type: !34)
!946 = !DILocalVariable(name: "args", arg: 4, scope: !941, file: !65, line: 219, type: !73)
!947 = !DILocation(line: 229, column: 13, scope: !941)
!948 = !DILocation(line: 229, column: 21, scope: !941)
!949 = !DILocation(line: 229, column: 3, scope: !941)
!950 = !DILocation(line: 232, column: 3, scope: !941)
!951 = !DILocation(line: 233, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !941, file: !65, line: 233, column: 7)
!953 = !DILocation(line: 233, column: 7, scope: !941)
!954 = !DILocation(line: 234, column: 26, scope: !952)
!955 = !DILocation(line: 234, column: 5, scope: !952)
!956 = !DILocation(line: 238, column: 3, scope: !941)
!957 = !DILocation(line: 240, column: 3, scope: !941)
!958 = !DILocation(line: 241, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !941, file: !65, line: 241, column: 7)
!960 = !DILocation(line: 241, column: 7, scope: !941)
!961 = !DILocation(line: 242, column: 11, scope: !959)
!962 = !DILocation(line: 242, column: 5, scope: !959)
!963 = !DILocation(line: 243, column: 1, scope: !941)
!964 = distinct !DISubprogram(name: "print_errno_message", scope: !65, file: !65, line: 188, type: !303, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !36)
!965 = !DILocalVariable(name: "errnum", arg: 1, scope: !964, file: !65, line: 188, type: !25)
!966 = !DILocation(line: 188, column: 26, scope: !964)
!967 = !DILocalVariable(name: "s", scope: !964, file: !65, line: 190, type: !34)
!968 = !DILocation(line: 190, column: 15, scope: !964)
!969 = !DILocalVariable(name: "errbuf", scope: !964, file: !65, line: 193, type: !970)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 1024)
!973 = !DILocation(line: 193, column: 8, scope: !964)
!974 = !DILocation(line: 195, column: 21, scope: !964)
!975 = !DILocation(line: 195, column: 29, scope: !964)
!976 = !DILocation(line: 195, column: 7, scope: !964)
!977 = !DILocation(line: 195, column: 5, scope: !964)
!978 = !DILocation(line: 207, column: 9, scope: !979)
!979 = distinct !DILexicalBlock(scope: !964, file: !65, line: 207, column: 7)
!980 = !DILocation(line: 207, column: 7, scope: !964)
!981 = !DILocation(line: 208, column: 9, scope: !979)
!982 = !DILocation(line: 208, column: 7, scope: !979)
!983 = !DILocation(line: 208, column: 5, scope: !979)
!984 = !DILocation(line: 214, column: 12, scope: !964)
!985 = !DILocation(line: 214, column: 28, scope: !964)
!986 = !DILocation(line: 214, column: 3, scope: !964)
!987 = !DILocation(line: 216, column: 1, scope: !964)
!988 = distinct !DISubprogram(name: "is_open", scope: !65, file: !65, line: 145, type: !989, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !64, retainedNodes: !36)
!989 = !DISubroutineType(types: !990)
!990 = !{!25, !25}
!991 = !DILocalVariable(name: "fd", arg: 1, scope: !988, file: !65, line: 145, type: !25)
!992 = !DILocation(line: 145, column: 14, scope: !988)
!993 = !DILocation(line: 157, column: 22, scope: !988)
!994 = !DILocation(line: 157, column: 15, scope: !988)
!995 = !DILocation(line: 157, column: 12, scope: !988)
!996 = !DILocation(line: 157, column: 3, scope: !988)
!997 = distinct !DISubprogram(name: "error", scope: !65, file: !65, line: 285, type: !998, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !36)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !25, !25, !34, null}
!1000 = !DILocalVariable(name: "status", arg: 1, scope: !997, file: !65, line: 285, type: !25)
!1001 = !DILocation(line: 285, column: 12, scope: !997)
!1002 = !DILocalVariable(name: "errnum", arg: 2, scope: !997, file: !65, line: 285, type: !25)
!1003 = !DILocation(line: 285, column: 24, scope: !997)
!1004 = !DILocalVariable(name: "message", arg: 3, scope: !997, file: !65, line: 285, type: !34)
!1005 = !DILocation(line: 285, column: 44, scope: !997)
!1006 = !DILocalVariable(name: "ap", scope: !997, file: !65, line: 287, type: !73)
!1007 = !DILocation(line: 287, column: 11, scope: !997)
!1008 = !DILocation(line: 288, column: 3, scope: !997)
!1009 = !DILocation(line: 289, column: 3, scope: !997)
!1010 = !DILocation(line: 290, column: 3, scope: !997)
!1011 = !DILocation(line: 291, column: 1, scope: !997)
!1012 = !DILocalVariable(name: "status", arg: 1, scope: !70, file: !65, line: 298, type: !25)
!1013 = !DILocation(line: 298, column: 1, scope: !70)
!1014 = !DILocalVariable(name: "errnum", arg: 2, scope: !70, file: !65, line: 298, type: !25)
!1015 = !DILocalVariable(name: "file_name", arg: 3, scope: !70, file: !65, line: 298, type: !34)
!1016 = !DILocalVariable(name: "line_number", arg: 4, scope: !70, file: !65, line: 298, type: !7)
!1017 = !DILocalVariable(name: "message", arg: 5, scope: !70, file: !65, line: 298, type: !34)
!1018 = !DILocalVariable(name: "args", arg: 6, scope: !70, file: !65, line: 298, type: !73)
!1019 = !DILocation(line: 302, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !70, file: !65, line: 302, column: 7)
!1021 = !DILocation(line: 302, column: 7, scope: !70)
!1022 = !DILocation(line: 307, column: 11, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !65, line: 307, column: 11)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !65, line: 303, column: 5)
!1025 = !DILocation(line: 307, column: 30, scope: !1023)
!1026 = !DILocation(line: 307, column: 27, scope: !1023)
!1027 = !DILocation(line: 308, column: 11, scope: !1023)
!1028 = !DILocation(line: 308, column: 15, scope: !1023)
!1029 = !DILocation(line: 308, column: 28, scope: !1023)
!1030 = !DILocation(line: 308, column: 25, scope: !1023)
!1031 = !DILocation(line: 309, column: 15, scope: !1023)
!1032 = !DILocation(line: 309, column: 19, scope: !1023)
!1033 = !DILocation(line: 309, column: 33, scope: !1023)
!1034 = !DILocation(line: 310, column: 19, scope: !1023)
!1035 = !DILocation(line: 310, column: 22, scope: !1023)
!1036 = !DILocation(line: 310, column: 32, scope: !1023)
!1037 = !DILocation(line: 311, column: 19, scope: !1023)
!1038 = !DILocation(line: 311, column: 30, scope: !1023)
!1039 = !DILocation(line: 311, column: 45, scope: !1023)
!1040 = !DILocation(line: 311, column: 22, scope: !1023)
!1041 = !DILocation(line: 311, column: 56, scope: !1023)
!1042 = !DILocation(line: 307, column: 11, scope: !1024)
!1043 = !DILocation(line: 314, column: 9, scope: !1023)
!1044 = !DILocation(line: 316, column: 23, scope: !1024)
!1045 = !DILocation(line: 316, column: 21, scope: !1024)
!1046 = !DILocation(line: 317, column: 25, scope: !1024)
!1047 = !DILocation(line: 317, column: 23, scope: !1024)
!1048 = !DILocation(line: 318, column: 5, scope: !1024)
!1049 = !DILocation(line: 327, column: 3, scope: !70)
!1050 = !DILocation(line: 331, column: 7, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !70, file: !65, line: 331, column: 7)
!1052 = !DILocation(line: 331, column: 7, scope: !70)
!1053 = !DILocation(line: 332, column: 7, scope: !1051)
!1054 = !DILocation(line: 332, column: 5, scope: !1051)
!1055 = !DILocation(line: 338, column: 16, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !65, line: 334, column: 5)
!1057 = !DILocation(line: 338, column: 31, scope: !1056)
!1058 = !DILocation(line: 338, column: 7, scope: !1056)
!1059 = !DILocation(line: 346, column: 12, scope: !70)
!1060 = !DILocation(line: 346, column: 20, scope: !70)
!1061 = !DILocation(line: 346, column: 30, scope: !70)
!1062 = !DILocation(line: 347, column: 12, scope: !70)
!1063 = !DILocation(line: 347, column: 23, scope: !70)
!1064 = !DILocation(line: 346, column: 3, scope: !70)
!1065 = !DILocation(line: 350, column: 3, scope: !70)
!1066 = !DILocation(line: 356, column: 1, scope: !70)
!1067 = distinct !DISubprogram(name: "error_at_line", scope: !65, file: !65, line: 359, type: !1068, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !36)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !25, !25, !34, !7, !34, null}
!1070 = !DILocalVariable(name: "status", arg: 1, scope: !1067, file: !65, line: 359, type: !25)
!1071 = !DILocation(line: 359, column: 20, scope: !1067)
!1072 = !DILocalVariable(name: "errnum", arg: 2, scope: !1067, file: !65, line: 359, type: !25)
!1073 = !DILocation(line: 359, column: 32, scope: !1067)
!1074 = !DILocalVariable(name: "file_name", arg: 3, scope: !1067, file: !65, line: 359, type: !34)
!1075 = !DILocation(line: 359, column: 52, scope: !1067)
!1076 = !DILocalVariable(name: "line_number", arg: 4, scope: !1067, file: !65, line: 360, type: !7)
!1077 = !DILocation(line: 360, column: 29, scope: !1067)
!1078 = !DILocalVariable(name: "message", arg: 5, scope: !1067, file: !65, line: 360, type: !34)
!1079 = !DILocation(line: 360, column: 54, scope: !1067)
!1080 = !DILocalVariable(name: "ap", scope: !1067, file: !65, line: 362, type: !73)
!1081 = !DILocation(line: 362, column: 11, scope: !1067)
!1082 = !DILocation(line: 363, column: 3, scope: !1067)
!1083 = !DILocation(line: 364, column: 3, scope: !1067)
!1084 = !DILocation(line: 366, column: 3, scope: !1067)
!1085 = !DILocation(line: 367, column: 1, scope: !1067)
!1086 = distinct !DISubprogram(name: "getprogname", scope: !230, file: !230, line: 54, type: !1087, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !229, retainedNodes: !36)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!34}
!1089 = !DILocation(line: 58, column: 10, scope: !1086)
!1090 = !DILocation(line: 58, column: 3, scope: !1086)
!1091 = distinct !DISubprogram(name: "set_program_name", scope: !99, file: !99, line: 37, type: !526, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !36)
!1092 = !DILocalVariable(name: "argv0", arg: 1, scope: !1091, file: !99, line: 37, type: !34)
!1093 = !DILocation(line: 37, column: 31, scope: !1091)
!1094 = !DILocalVariable(name: "slash", scope: !1091, file: !99, line: 44, type: !34)
!1095 = !DILocation(line: 44, column: 15, scope: !1091)
!1096 = !DILocation(line: 44, column: 32, scope: !1091)
!1097 = !DILocation(line: 44, column: 23, scope: !1091)
!1098 = !DILocalVariable(name: "base", scope: !1091, file: !99, line: 45, type: !34)
!1099 = !DILocation(line: 45, column: 15, scope: !1091)
!1100 = !DILocation(line: 45, column: 22, scope: !1091)
!1101 = !DILocation(line: 45, column: 30, scope: !1091)
!1102 = !DILocation(line: 45, column: 36, scope: !1091)
!1103 = !DILocation(line: 45, column: 42, scope: !1091)
!1104 = !DILocation(line: 46, column: 12, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1091, file: !99, line: 46, column: 7)
!1106 = !DILocation(line: 46, column: 19, scope: !1105)
!1107 = !DILocation(line: 46, column: 17, scope: !1105)
!1108 = !DILocation(line: 46, column: 9, scope: !1105)
!1109 = !DILocation(line: 46, column: 25, scope: !1105)
!1110 = !DILocation(line: 46, column: 35, scope: !1105)
!1111 = !DILocation(line: 46, column: 40, scope: !1105)
!1112 = !DILocation(line: 46, column: 28, scope: !1105)
!1113 = !DILocation(line: 46, column: 7, scope: !1091)
!1114 = !DILocation(line: 48, column: 15, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1105, file: !99, line: 47, column: 5)
!1116 = !DILocation(line: 48, column: 13, scope: !1115)
!1117 = !DILocation(line: 49, column: 20, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1115, file: !99, line: 49, column: 11)
!1119 = !DILocation(line: 49, column: 11, scope: !1118)
!1120 = !DILocation(line: 49, column: 36, scope: !1118)
!1121 = !DILocation(line: 49, column: 11, scope: !1115)
!1122 = !DILocation(line: 51, column: 16, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !99, line: 50, column: 9)
!1124 = !DILocation(line: 52, column: 19, scope: !1123)
!1125 = !DILocation(line: 52, column: 17, scope: !1123)
!1126 = !DILocation(line: 53, column: 9, scope: !1123)
!1127 = !DILocation(line: 54, column: 5, scope: !1115)
!1128 = !DILocation(line: 65, column: 18, scope: !1091)
!1129 = !DILocation(line: 65, column: 16, scope: !1091)
!1130 = !DILocation(line: 71, column: 38, scope: !1091)
!1131 = !DILocation(line: 71, column: 27, scope: !1091)
!1132 = !DILocation(line: 74, column: 44, scope: !1091)
!1133 = !DILocation(line: 74, column: 33, scope: !1091)
!1134 = !DILocation(line: 76, column: 1, scope: !1091)
!1135 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !104, file: !105, line: 38, type: !34)
!1136 = !DILocation(line: 38, column: 31, scope: !104)
!1137 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !104, file: !105, line: 38, type: !34)
!1138 = !DILocation(line: 38, column: 66, scope: !104)
!1139 = !DILocalVariable(name: "translation", scope: !104, file: !105, line: 40, type: !34)
!1140 = !DILocation(line: 40, column: 15, scope: !104)
!1141 = !DILocation(line: 40, column: 38, scope: !104)
!1142 = !DILocation(line: 40, column: 29, scope: !104)
!1143 = !DILocation(line: 41, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !104, file: !105, line: 41, column: 7)
!1145 = !DILocation(line: 41, column: 22, scope: !1144)
!1146 = !DILocation(line: 41, column: 19, scope: !1144)
!1147 = !DILocation(line: 41, column: 7, scope: !104)
!1148 = !DILocation(line: 42, column: 12, scope: !1144)
!1149 = !DILocation(line: 42, column: 5, scope: !1144)
!1150 = !DILocalVariable(name: "w", scope: !104, file: !105, line: 47, type: !1151)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1152, line: 37, baseType: !1153)
!1152 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1154, line: 57, baseType: !1155)
!1154 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1154, line: 42, baseType: !7)
!1156 = !DILocation(line: 47, column: 12, scope: !104)
!1157 = !DILocalVariable(name: "mbs", scope: !104, file: !105, line: 48, type: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !212, line: 6, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !214, line: 21, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 13, size: 64, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1160, file: !214, line: 15, baseType: !25, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1160, file: !214, line: 20, baseType: !1164, size: 32, offset: 32)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1160, file: !214, line: 16, size: 32, elements: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1164, file: !214, line: 18, baseType: !7, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1164, file: !214, line: 19, baseType: !223, size: 32)
!1168 = !DILocation(line: 48, column: 13, scope: !104)
!1169 = !DILocation(line: 48, column: 18, scope: !104)
!1170 = !DILocation(line: 49, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !104, file: !105, line: 49, column: 7)
!1172 = !DILocation(line: 49, column: 39, scope: !1171)
!1173 = !DILocation(line: 49, column: 44, scope: !1171)
!1174 = !DILocation(line: 49, column: 47, scope: !1171)
!1175 = !DILocation(line: 49, column: 49, scope: !1171)
!1176 = !DILocation(line: 49, column: 7, scope: !104)
!1177 = !DILocation(line: 50, column: 12, scope: !1171)
!1178 = !DILocation(line: 50, column: 5, scope: !1171)
!1179 = !DILocation(line: 53, column: 10, scope: !104)
!1180 = !DILocation(line: 53, column: 3, scope: !104)
!1181 = !DILocation(line: 54, column: 1, scope: !104)
!1182 = distinct !DISubprogram(name: "clone_quoting_options", scope: !116, file: !116, line: 113, type: !1183, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!1185, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1186 = !DILocalVariable(name: "o", arg: 1, scope: !1182, file: !116, line: 113, type: !1185)
!1187 = !DILocation(line: 113, column: 48, scope: !1182)
!1188 = !DILocalVariable(name: "saved_errno", scope: !1182, file: !116, line: 115, type: !25)
!1189 = !DILocation(line: 115, column: 7, scope: !1182)
!1190 = !DILocation(line: 115, column: 21, scope: !1182)
!1191 = !DILocalVariable(name: "p", scope: !1182, file: !116, line: 116, type: !1185)
!1192 = !DILocation(line: 116, column: 27, scope: !1182)
!1193 = !DILocation(line: 116, column: 40, scope: !1182)
!1194 = !DILocation(line: 116, column: 44, scope: !1182)
!1195 = !DILocation(line: 116, column: 31, scope: !1182)
!1196 = !DILocation(line: 118, column: 11, scope: !1182)
!1197 = !DILocation(line: 118, column: 3, scope: !1182)
!1198 = !DILocation(line: 118, column: 9, scope: !1182)
!1199 = !DILocation(line: 119, column: 10, scope: !1182)
!1200 = !DILocation(line: 119, column: 3, scope: !1182)
!1201 = distinct !DISubprogram(name: "get_quoting_style", scope: !116, file: !116, line: 124, type: !1202, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!118, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!1206 = !DILocalVariable(name: "o", arg: 1, scope: !1201, file: !116, line: 124, type: !1204)
!1207 = !DILocation(line: 124, column: 50, scope: !1201)
!1208 = !DILocation(line: 126, column: 11, scope: !1201)
!1209 = !DILocation(line: 126, column: 15, scope: !1201)
!1210 = !DILocation(line: 126, column: 46, scope: !1201)
!1211 = !DILocation(line: 126, column: 3, scope: !1201)
!1212 = distinct !DISubprogram(name: "set_quoting_style", scope: !116, file: !116, line: 132, type: !1213, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !1185, !118}
!1215 = !DILocalVariable(name: "o", arg: 1, scope: !1212, file: !116, line: 132, type: !1185)
!1216 = !DILocation(line: 132, column: 44, scope: !1212)
!1217 = !DILocalVariable(name: "s", arg: 2, scope: !1212, file: !116, line: 132, type: !118)
!1218 = !DILocation(line: 132, column: 66, scope: !1212)
!1219 = !DILocation(line: 134, column: 47, scope: !1212)
!1220 = !DILocation(line: 134, column: 4, scope: !1212)
!1221 = !DILocation(line: 134, column: 8, scope: !1212)
!1222 = !DILocation(line: 134, column: 39, scope: !1212)
!1223 = !DILocation(line: 134, column: 45, scope: !1212)
!1224 = !DILocation(line: 135, column: 1, scope: !1212)
!1225 = distinct !DISubprogram(name: "set_char_quoting", scope: !116, file: !116, line: 143, type: !1226, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!25, !1185, !23, !25}
!1228 = !DILocalVariable(name: "o", arg: 1, scope: !1225, file: !116, line: 143, type: !1185)
!1229 = !DILocation(line: 143, column: 43, scope: !1225)
!1230 = !DILocalVariable(name: "c", arg: 2, scope: !1225, file: !116, line: 143, type: !23)
!1231 = !DILocation(line: 143, column: 51, scope: !1225)
!1232 = !DILocalVariable(name: "i", arg: 3, scope: !1225, file: !116, line: 143, type: !25)
!1233 = !DILocation(line: 143, column: 58, scope: !1225)
!1234 = !DILocalVariable(name: "uc", scope: !1225, file: !116, line: 145, type: !209)
!1235 = !DILocation(line: 145, column: 17, scope: !1225)
!1236 = !DILocation(line: 145, column: 22, scope: !1225)
!1237 = !DILocalVariable(name: "p", scope: !1225, file: !116, line: 146, type: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1239 = !DILocation(line: 146, column: 17, scope: !1225)
!1240 = !DILocation(line: 147, column: 6, scope: !1225)
!1241 = !DILocation(line: 147, column: 10, scope: !1225)
!1242 = !DILocation(line: 147, column: 41, scope: !1225)
!1243 = !DILocation(line: 147, column: 5, scope: !1225)
!1244 = !DILocation(line: 147, column: 59, scope: !1225)
!1245 = !DILocation(line: 147, column: 62, scope: !1225)
!1246 = !DILocation(line: 147, column: 57, scope: !1225)
!1247 = !DILocalVariable(name: "shift", scope: !1225, file: !116, line: 148, type: !25)
!1248 = !DILocation(line: 148, column: 7, scope: !1225)
!1249 = !DILocation(line: 148, column: 15, scope: !1225)
!1250 = !DILocation(line: 148, column: 18, scope: !1225)
!1251 = !DILocalVariable(name: "r", scope: !1225, file: !116, line: 149, type: !7)
!1252 = !DILocation(line: 149, column: 16, scope: !1225)
!1253 = !DILocation(line: 149, column: 22, scope: !1225)
!1254 = !DILocation(line: 149, column: 21, scope: !1225)
!1255 = !DILocation(line: 149, column: 27, scope: !1225)
!1256 = !DILocation(line: 149, column: 24, scope: !1225)
!1257 = !DILocation(line: 149, column: 34, scope: !1225)
!1258 = !DILocation(line: 150, column: 11, scope: !1225)
!1259 = !DILocation(line: 150, column: 13, scope: !1225)
!1260 = !DILocation(line: 150, column: 21, scope: !1225)
!1261 = !DILocation(line: 150, column: 19, scope: !1225)
!1262 = !DILocation(line: 150, column: 27, scope: !1225)
!1263 = !DILocation(line: 150, column: 24, scope: !1225)
!1264 = !DILocation(line: 150, column: 4, scope: !1225)
!1265 = !DILocation(line: 150, column: 6, scope: !1225)
!1266 = !DILocation(line: 151, column: 10, scope: !1225)
!1267 = !DILocation(line: 151, column: 3, scope: !1225)
!1268 = distinct !DISubprogram(name: "set_quoting_flags", scope: !116, file: !116, line: 159, type: !1269, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!25, !1185, !25}
!1271 = !DILocalVariable(name: "o", arg: 1, scope: !1268, file: !116, line: 159, type: !1185)
!1272 = !DILocation(line: 159, column: 44, scope: !1268)
!1273 = !DILocalVariable(name: "i", arg: 2, scope: !1268, file: !116, line: 159, type: !25)
!1274 = !DILocation(line: 159, column: 51, scope: !1268)
!1275 = !DILocation(line: 161, column: 8, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1268, file: !116, line: 161, column: 7)
!1277 = !DILocation(line: 161, column: 7, scope: !1268)
!1278 = !DILocation(line: 162, column: 7, scope: !1276)
!1279 = !DILocation(line: 162, column: 5, scope: !1276)
!1280 = !DILocalVariable(name: "r", scope: !1268, file: !116, line: 163, type: !25)
!1281 = !DILocation(line: 163, column: 7, scope: !1268)
!1282 = !DILocation(line: 163, column: 11, scope: !1268)
!1283 = !DILocation(line: 163, column: 14, scope: !1268)
!1284 = !DILocation(line: 164, column: 14, scope: !1268)
!1285 = !DILocation(line: 164, column: 3, scope: !1268)
!1286 = !DILocation(line: 164, column: 6, scope: !1268)
!1287 = !DILocation(line: 164, column: 12, scope: !1268)
!1288 = !DILocation(line: 165, column: 10, scope: !1268)
!1289 = !DILocation(line: 165, column: 3, scope: !1268)
!1290 = distinct !DISubprogram(name: "set_custom_quoting", scope: !116, file: !116, line: 169, type: !1291, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !1185, !34, !34}
!1293 = !DILocalVariable(name: "o", arg: 1, scope: !1290, file: !116, line: 169, type: !1185)
!1294 = !DILocation(line: 169, column: 45, scope: !1290)
!1295 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1290, file: !116, line: 170, type: !34)
!1296 = !DILocation(line: 170, column: 33, scope: !1290)
!1297 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1290, file: !116, line: 170, type: !34)
!1298 = !DILocation(line: 170, column: 57, scope: !1290)
!1299 = !DILocation(line: 172, column: 8, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1290, file: !116, line: 172, column: 7)
!1301 = !DILocation(line: 172, column: 7, scope: !1290)
!1302 = !DILocation(line: 173, column: 7, scope: !1300)
!1303 = !DILocation(line: 173, column: 5, scope: !1300)
!1304 = !DILocation(line: 174, column: 3, scope: !1290)
!1305 = !DILocation(line: 174, column: 6, scope: !1290)
!1306 = !DILocation(line: 174, column: 12, scope: !1290)
!1307 = !DILocation(line: 175, column: 8, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1290, file: !116, line: 175, column: 7)
!1309 = !DILocation(line: 175, column: 19, scope: !1308)
!1310 = !DILocation(line: 175, column: 23, scope: !1308)
!1311 = !DILocation(line: 175, column: 7, scope: !1290)
!1312 = !DILocation(line: 176, column: 5, scope: !1308)
!1313 = !DILocation(line: 177, column: 19, scope: !1290)
!1314 = !DILocation(line: 177, column: 3, scope: !1290)
!1315 = !DILocation(line: 177, column: 6, scope: !1290)
!1316 = !DILocation(line: 177, column: 17, scope: !1290)
!1317 = !DILocation(line: 178, column: 20, scope: !1290)
!1318 = !DILocation(line: 178, column: 3, scope: !1290)
!1319 = !DILocation(line: 178, column: 6, scope: !1290)
!1320 = !DILocation(line: 178, column: 18, scope: !1290)
!1321 = !DILocation(line: 179, column: 1, scope: !1290)
!1322 = distinct !DISubprogram(name: "quotearg_buffer", scope: !116, file: !116, line: 774, type: !1323, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!138, !22, !138, !34, !138, !1204}
!1325 = !DILocalVariable(name: "buffer", arg: 1, scope: !1322, file: !116, line: 774, type: !22)
!1326 = !DILocation(line: 774, column: 24, scope: !1322)
!1327 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1322, file: !116, line: 774, type: !138)
!1328 = !DILocation(line: 774, column: 39, scope: !1322)
!1329 = !DILocalVariable(name: "arg", arg: 3, scope: !1322, file: !116, line: 775, type: !34)
!1330 = !DILocation(line: 775, column: 30, scope: !1322)
!1331 = !DILocalVariable(name: "argsize", arg: 4, scope: !1322, file: !116, line: 775, type: !138)
!1332 = !DILocation(line: 775, column: 42, scope: !1322)
!1333 = !DILocalVariable(name: "o", arg: 5, scope: !1322, file: !116, line: 776, type: !1204)
!1334 = !DILocation(line: 776, column: 48, scope: !1322)
!1335 = !DILocalVariable(name: "p", scope: !1322, file: !116, line: 778, type: !1204)
!1336 = !DILocation(line: 778, column: 33, scope: !1322)
!1337 = !DILocation(line: 778, column: 37, scope: !1322)
!1338 = !DILocation(line: 778, column: 41, scope: !1322)
!1339 = !DILocalVariable(name: "saved_errno", scope: !1322, file: !116, line: 779, type: !25)
!1340 = !DILocation(line: 779, column: 7, scope: !1322)
!1341 = !DILocation(line: 779, column: 21, scope: !1322)
!1342 = !DILocalVariable(name: "r", scope: !1322, file: !116, line: 780, type: !138)
!1343 = !DILocation(line: 780, column: 10, scope: !1322)
!1344 = !DILocation(line: 780, column: 40, scope: !1322)
!1345 = !DILocation(line: 780, column: 48, scope: !1322)
!1346 = !DILocation(line: 780, column: 60, scope: !1322)
!1347 = !DILocation(line: 780, column: 65, scope: !1322)
!1348 = !DILocation(line: 781, column: 40, scope: !1322)
!1349 = !DILocation(line: 781, column: 43, scope: !1322)
!1350 = !DILocation(line: 781, column: 50, scope: !1322)
!1351 = !DILocation(line: 781, column: 53, scope: !1322)
!1352 = !DILocation(line: 781, column: 60, scope: !1322)
!1353 = !DILocation(line: 781, column: 63, scope: !1322)
!1354 = !DILocation(line: 782, column: 40, scope: !1322)
!1355 = !DILocation(line: 782, column: 43, scope: !1322)
!1356 = !DILocation(line: 782, column: 55, scope: !1322)
!1357 = !DILocation(line: 782, column: 58, scope: !1322)
!1358 = !DILocation(line: 780, column: 14, scope: !1322)
!1359 = !DILocation(line: 783, column: 11, scope: !1322)
!1360 = !DILocation(line: 783, column: 3, scope: !1322)
!1361 = !DILocation(line: 783, column: 9, scope: !1322)
!1362 = !DILocation(line: 784, column: 10, scope: !1322)
!1363 = !DILocation(line: 784, column: 3, scope: !1322)
!1364 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !116, file: !116, line: 251, type: !1365, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !36)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!138, !22, !138, !34, !138, !118, !25, !1367, !34, !34}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1369 = !DILocalVariable(name: "buffer", arg: 1, scope: !1364, file: !116, line: 251, type: !22)
!1370 = !DILocation(line: 251, column: 33, scope: !1364)
!1371 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1364, file: !116, line: 251, type: !138)
!1372 = !DILocation(line: 251, column: 48, scope: !1364)
!1373 = !DILocalVariable(name: "arg", arg: 3, scope: !1364, file: !116, line: 252, type: !34)
!1374 = !DILocation(line: 252, column: 39, scope: !1364)
!1375 = !DILocalVariable(name: "argsize", arg: 4, scope: !1364, file: !116, line: 252, type: !138)
!1376 = !DILocation(line: 252, column: 51, scope: !1364)
!1377 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1364, file: !116, line: 253, type: !118)
!1378 = !DILocation(line: 253, column: 46, scope: !1364)
!1379 = !DILocalVariable(name: "flags", arg: 6, scope: !1364, file: !116, line: 253, type: !25)
!1380 = !DILocation(line: 253, column: 65, scope: !1364)
!1381 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1364, file: !116, line: 254, type: !1367)
!1382 = !DILocation(line: 254, column: 47, scope: !1364)
!1383 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1364, file: !116, line: 255, type: !34)
!1384 = !DILocation(line: 255, column: 39, scope: !1364)
!1385 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1364, file: !116, line: 256, type: !34)
!1386 = !DILocation(line: 256, column: 39, scope: !1364)
!1387 = !DILocalVariable(name: "unibyte_locale", scope: !1364, file: !116, line: 258, type: !61)
!1388 = !DILocation(line: 258, column: 8, scope: !1364)
!1389 = !DILocation(line: 258, column: 25, scope: !1364)
!1390 = !DILocation(line: 258, column: 36, scope: !1364)
!1391 = !DILocalVariable(name: "len", scope: !1364, file: !116, line: 260, type: !138)
!1392 = !DILocation(line: 260, column: 10, scope: !1364)
!1393 = !DILocalVariable(name: "orig_buffersize", scope: !1364, file: !116, line: 261, type: !138)
!1394 = !DILocation(line: 261, column: 10, scope: !1364)
!1395 = !DILocalVariable(name: "quote_string", scope: !1364, file: !116, line: 262, type: !34)
!1396 = !DILocation(line: 262, column: 15, scope: !1364)
!1397 = !DILocalVariable(name: "quote_string_len", scope: !1364, file: !116, line: 263, type: !138)
!1398 = !DILocation(line: 263, column: 10, scope: !1364)
!1399 = !DILocalVariable(name: "backslash_escapes", scope: !1364, file: !116, line: 264, type: !61)
!1400 = !DILocation(line: 264, column: 8, scope: !1364)
!1401 = !DILocalVariable(name: "elide_outer_quotes", scope: !1364, file: !116, line: 265, type: !61)
!1402 = !DILocation(line: 265, column: 8, scope: !1364)
!1403 = !DILocation(line: 265, column: 30, scope: !1364)
!1404 = !DILocation(line: 265, column: 36, scope: !1364)
!1405 = !DILocation(line: 265, column: 61, scope: !1364)
!1406 = !DILocalVariable(name: "encountered_single_quote", scope: !1364, file: !116, line: 266, type: !61)
!1407 = !DILocation(line: 266, column: 8, scope: !1364)
!1408 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1364, file: !116, line: 267, type: !61)
!1409 = !DILocation(line: 267, column: 8, scope: !1364)
!1410 = !DILocation(line: 267, column: 3, scope: !1364)
!1411 = !DILabel(scope: !1364, name: "process_input", file: !116, line: 308)
!1412 = !DILocation(line: 308, column: 2, scope: !1364)
!1413 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1364, file: !116, line: 309, type: !61)
!1414 = !DILocation(line: 309, column: 8, scope: !1364)
!1415 = !DILocation(line: 311, column: 11, scope: !1364)
!1416 = !DILocation(line: 311, column: 3, scope: !1364)
!1417 = !DILocation(line: 314, column: 21, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1364, file: !116, line: 312, column: 5)
!1419 = !DILocation(line: 315, column: 26, scope: !1418)
!1420 = !DILocation(line: 315, column: 7, scope: !1418)
!1421 = !DILocation(line: 318, column: 12, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !116, line: 318, column: 11)
!1423 = !DILocation(line: 318, column: 11, scope: !1418)
!1424 = !DILocation(line: 319, column: 9, scope: !1422)
!1425 = !DILocation(line: 319, column: 9, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !116, line: 319, column: 9)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !116, line: 319, column: 9)
!1428 = !DILocation(line: 319, column: 9, scope: !1427)
!1429 = !DILocation(line: 320, column: 25, scope: !1418)
!1430 = !DILocation(line: 321, column: 20, scope: !1418)
!1431 = !DILocation(line: 322, column: 24, scope: !1418)
!1432 = !DILocation(line: 323, column: 7, scope: !1418)
!1433 = !DILocation(line: 326, column: 25, scope: !1418)
!1434 = !DILocation(line: 327, column: 26, scope: !1418)
!1435 = !DILocation(line: 328, column: 7, scope: !1418)
!1436 = !DILocation(line: 334, column: 13, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !116, line: 334, column: 13)
!1438 = distinct !DILexicalBlock(scope: !1418, file: !116, line: 333, column: 7)
!1439 = !DILocation(line: 334, column: 27, scope: !1437)
!1440 = !DILocation(line: 334, column: 13, scope: !1438)
!1441 = !DILocation(line: 357, column: 50, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !116, line: 335, column: 11)
!1443 = !DILocation(line: 357, column: 26, scope: !1442)
!1444 = !DILocation(line: 357, column: 24, scope: !1442)
!1445 = !DILocation(line: 358, column: 51, scope: !1442)
!1446 = !DILocation(line: 358, column: 27, scope: !1442)
!1447 = !DILocation(line: 358, column: 25, scope: !1442)
!1448 = !DILocation(line: 359, column: 11, scope: !1442)
!1449 = !DILocation(line: 360, column: 14, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1438, file: !116, line: 360, column: 13)
!1451 = !DILocation(line: 360, column: 13, scope: !1438)
!1452 = !DILocalVariable(name: "lq", scope: !1453, file: !116, line: 361, type: !34)
!1453 = distinct !DILexicalBlock(scope: !1450, file: !116, line: 361, column: 11)
!1454 = !DILocation(line: 361, column: 28, scope: !1453)
!1455 = !DILocation(line: 361, column: 33, scope: !1453)
!1456 = !DILocation(line: 361, column: 16, scope: !1453)
!1457 = !DILocation(line: 361, column: 46, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !116, line: 361, column: 11)
!1459 = !DILocation(line: 361, column: 45, scope: !1458)
!1460 = !DILocation(line: 361, column: 11, scope: !1453)
!1461 = !DILocation(line: 362, column: 13, scope: !1458)
!1462 = !DILocation(line: 362, column: 13, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !116, line: 362, column: 13)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !116, line: 362, column: 13)
!1465 = !DILocation(line: 362, column: 13, scope: !1464)
!1466 = !DILocation(line: 361, column: 52, scope: !1458)
!1467 = !DILocation(line: 361, column: 11, scope: !1458)
!1468 = distinct !{!1468, !1460, !1469, !409}
!1469 = !DILocation(line: 362, column: 13, scope: !1453)
!1470 = !DILocation(line: 363, column: 27, scope: !1438)
!1471 = !DILocation(line: 364, column: 24, scope: !1438)
!1472 = !DILocation(line: 364, column: 22, scope: !1438)
!1473 = !DILocation(line: 365, column: 36, scope: !1438)
!1474 = !DILocation(line: 365, column: 28, scope: !1438)
!1475 = !DILocation(line: 365, column: 26, scope: !1438)
!1476 = !DILocation(line: 367, column: 7, scope: !1418)
!1477 = !DILocation(line: 370, column: 25, scope: !1418)
!1478 = !DILocation(line: 370, column: 7, scope: !1418)
!1479 = !DILocation(line: 373, column: 26, scope: !1418)
!1480 = !DILocation(line: 373, column: 7, scope: !1418)
!1481 = !DILocation(line: 376, column: 12, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1418, file: !116, line: 376, column: 11)
!1483 = !DILocation(line: 376, column: 11, scope: !1418)
!1484 = !DILocation(line: 377, column: 27, scope: !1482)
!1485 = !DILocation(line: 377, column: 9, scope: !1482)
!1486 = !DILocation(line: 380, column: 21, scope: !1418)
!1487 = !DILocation(line: 381, column: 12, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1418, file: !116, line: 381, column: 11)
!1489 = !DILocation(line: 381, column: 11, scope: !1418)
!1490 = !DILocation(line: 382, column: 9, scope: !1488)
!1491 = !DILocation(line: 382, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !116, line: 382, column: 9)
!1493 = distinct !DILexicalBlock(scope: !1488, file: !116, line: 382, column: 9)
!1494 = !DILocation(line: 382, column: 9, scope: !1493)
!1495 = !DILocation(line: 383, column: 20, scope: !1418)
!1496 = !DILocation(line: 384, column: 24, scope: !1418)
!1497 = !DILocation(line: 385, column: 7, scope: !1418)
!1498 = !DILocation(line: 388, column: 26, scope: !1418)
!1499 = !DILocation(line: 389, column: 7, scope: !1418)
!1500 = !DILocation(line: 392, column: 7, scope: !1418)
!1501 = !DILocalVariable(name: "i", scope: !1502, file: !116, line: 395, type: !138)
!1502 = distinct !DILexicalBlock(scope: !1364, file: !116, line: 395, column: 3)
!1503 = !DILocation(line: 395, column: 15, scope: !1502)
!1504 = !DILocation(line: 395, column: 8, scope: !1502)
!1505 = !DILocation(line: 395, column: 26, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !116, line: 395, column: 3)
!1507 = !DILocation(line: 395, column: 34, scope: !1506)
!1508 = !DILocation(line: 395, column: 48, scope: !1506)
!1509 = !DILocation(line: 395, column: 52, scope: !1506)
!1510 = !DILocation(line: 395, column: 55, scope: !1506)
!1511 = !DILocation(line: 395, column: 65, scope: !1506)
!1512 = !DILocation(line: 395, column: 70, scope: !1506)
!1513 = !DILocation(line: 395, column: 67, scope: !1506)
!1514 = !DILocation(line: 395, column: 23, scope: !1506)
!1515 = !DILocation(line: 395, column: 3, scope: !1502)
!1516 = !DILocalVariable(name: "is_right_quote", scope: !1517, file: !116, line: 397, type: !61)
!1517 = distinct !DILexicalBlock(scope: !1506, file: !116, line: 396, column: 5)
!1518 = !DILocation(line: 397, column: 12, scope: !1517)
!1519 = !DILocalVariable(name: "escaping", scope: !1517, file: !116, line: 398, type: !61)
!1520 = !DILocation(line: 398, column: 12, scope: !1517)
!1521 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1517, file: !116, line: 399, type: !61)
!1522 = !DILocation(line: 399, column: 12, scope: !1517)
!1523 = !DILocation(line: 401, column: 11, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1517, file: !116, line: 401, column: 11)
!1525 = !DILocation(line: 402, column: 11, scope: !1524)
!1526 = !DILocation(line: 402, column: 14, scope: !1524)
!1527 = !DILocation(line: 402, column: 28, scope: !1524)
!1528 = !DILocation(line: 403, column: 11, scope: !1524)
!1529 = !DILocation(line: 403, column: 14, scope: !1524)
!1530 = !DILocation(line: 404, column: 11, scope: !1524)
!1531 = !DILocation(line: 404, column: 15, scope: !1524)
!1532 = !DILocation(line: 404, column: 19, scope: !1524)
!1533 = !DILocation(line: 404, column: 17, scope: !1524)
!1534 = !DILocation(line: 405, column: 19, scope: !1524)
!1535 = !DILocation(line: 405, column: 27, scope: !1524)
!1536 = !DILocation(line: 405, column: 39, scope: !1524)
!1537 = !DILocation(line: 405, column: 46, scope: !1524)
!1538 = !DILocation(line: 405, column: 44, scope: !1524)
!1539 = !DILocation(line: 409, column: 40, scope: !1524)
!1540 = !DILocation(line: 409, column: 32, scope: !1524)
!1541 = !DILocation(line: 409, column: 30, scope: !1524)
!1542 = !DILocation(line: 409, column: 48, scope: !1524)
!1543 = !DILocation(line: 405, column: 15, scope: !1524)
!1544 = !DILocation(line: 410, column: 11, scope: !1524)
!1545 = !DILocation(line: 410, column: 21, scope: !1524)
!1546 = !DILocation(line: 410, column: 27, scope: !1524)
!1547 = !DILocation(line: 410, column: 25, scope: !1524)
!1548 = !DILocation(line: 410, column: 30, scope: !1524)
!1549 = !DILocation(line: 410, column: 44, scope: !1524)
!1550 = !DILocation(line: 410, column: 14, scope: !1524)
!1551 = !DILocation(line: 401, column: 11, scope: !1517)
!1552 = !DILocation(line: 412, column: 15, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !116, line: 412, column: 15)
!1554 = distinct !DILexicalBlock(scope: !1524, file: !116, line: 411, column: 9)
!1555 = !DILocation(line: 412, column: 15, scope: !1554)
!1556 = !DILocation(line: 413, column: 13, scope: !1553)
!1557 = !DILocation(line: 414, column: 26, scope: !1554)
!1558 = !DILocation(line: 415, column: 9, scope: !1554)
!1559 = !DILocalVariable(name: "c", scope: !1517, file: !116, line: 417, type: !209)
!1560 = !DILocation(line: 417, column: 21, scope: !1517)
!1561 = !DILocation(line: 417, column: 25, scope: !1517)
!1562 = !DILocation(line: 417, column: 29, scope: !1517)
!1563 = !DILocation(line: 418, column: 15, scope: !1517)
!1564 = !DILocation(line: 418, column: 7, scope: !1517)
!1565 = !DILocation(line: 421, column: 15, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !116, line: 421, column: 15)
!1567 = distinct !DILexicalBlock(scope: !1517, file: !116, line: 419, column: 9)
!1568 = !DILocation(line: 421, column: 15, scope: !1567)
!1569 = !DILocation(line: 423, column: 15, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !116, line: 422, column: 13)
!1571 = !DILocation(line: 423, column: 15, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !116, line: 423, column: 15)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !116, line: 423, column: 15)
!1574 = !DILocation(line: 423, column: 15, scope: !1573)
!1575 = !DILocation(line: 423, column: 15, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1573, file: !116, line: 423, column: 15)
!1577 = !DILocation(line: 423, column: 15, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1576, file: !116, line: 423, column: 15)
!1579 = !DILocation(line: 423, column: 15, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !116, line: 423, column: 15)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !116, line: 423, column: 15)
!1582 = !DILocation(line: 423, column: 15, scope: !1581)
!1583 = !DILocation(line: 423, column: 15, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !116, line: 423, column: 15)
!1585 = distinct !DILexicalBlock(scope: !1578, file: !116, line: 423, column: 15)
!1586 = !DILocation(line: 423, column: 15, scope: !1585)
!1587 = !DILocation(line: 423, column: 15, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !116, line: 423, column: 15)
!1589 = distinct !DILexicalBlock(scope: !1578, file: !116, line: 423, column: 15)
!1590 = !DILocation(line: 423, column: 15, scope: !1589)
!1591 = !DILocation(line: 423, column: 15, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !116, line: 423, column: 15)
!1593 = distinct !DILexicalBlock(scope: !1573, file: !116, line: 423, column: 15)
!1594 = !DILocation(line: 423, column: 15, scope: !1593)
!1595 = !DILocation(line: 430, column: 19, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1570, file: !116, line: 430, column: 19)
!1597 = !DILocation(line: 430, column: 33, scope: !1596)
!1598 = !DILocation(line: 431, column: 19, scope: !1596)
!1599 = !DILocation(line: 431, column: 22, scope: !1596)
!1600 = !DILocation(line: 431, column: 24, scope: !1596)
!1601 = !DILocation(line: 431, column: 30, scope: !1596)
!1602 = !DILocation(line: 431, column: 28, scope: !1596)
!1603 = !DILocation(line: 431, column: 38, scope: !1596)
!1604 = !DILocation(line: 431, column: 48, scope: !1596)
!1605 = !DILocation(line: 431, column: 52, scope: !1596)
!1606 = !DILocation(line: 431, column: 54, scope: !1596)
!1607 = !DILocation(line: 431, column: 45, scope: !1596)
!1608 = !DILocation(line: 431, column: 59, scope: !1596)
!1609 = !DILocation(line: 431, column: 62, scope: !1596)
!1610 = !DILocation(line: 431, column: 66, scope: !1596)
!1611 = !DILocation(line: 431, column: 68, scope: !1596)
!1612 = !DILocation(line: 431, column: 73, scope: !1596)
!1613 = !DILocation(line: 430, column: 19, scope: !1570)
!1614 = !DILocation(line: 433, column: 19, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1596, file: !116, line: 432, column: 17)
!1616 = !DILocation(line: 433, column: 19, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !116, line: 433, column: 19)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !116, line: 433, column: 19)
!1619 = !DILocation(line: 433, column: 19, scope: !1618)
!1620 = !DILocation(line: 434, column: 19, scope: !1615)
!1621 = !DILocation(line: 434, column: 19, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !116, line: 434, column: 19)
!1623 = distinct !DILexicalBlock(scope: !1615, file: !116, line: 434, column: 19)
!1624 = !DILocation(line: 434, column: 19, scope: !1623)
!1625 = !DILocation(line: 435, column: 17, scope: !1615)
!1626 = !DILocation(line: 436, column: 17, scope: !1570)
!1627 = !DILocation(line: 441, column: 13, scope: !1570)
!1628 = !DILocation(line: 442, column: 20, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1566, file: !116, line: 442, column: 20)
!1630 = !DILocation(line: 442, column: 26, scope: !1629)
!1631 = !DILocation(line: 442, column: 20, scope: !1566)
!1632 = !DILocation(line: 443, column: 13, scope: !1629)
!1633 = !DILocation(line: 444, column: 11, scope: !1567)
!1634 = !DILocation(line: 447, column: 20, scope: !1567)
!1635 = !DILocation(line: 447, column: 11, scope: !1567)
!1636 = !DILocation(line: 450, column: 19, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !116, line: 450, column: 19)
!1638 = distinct !DILexicalBlock(scope: !1567, file: !116, line: 448, column: 13)
!1639 = !DILocation(line: 450, column: 19, scope: !1638)
!1640 = !DILocation(line: 451, column: 17, scope: !1637)
!1641 = !DILocation(line: 452, column: 15, scope: !1638)
!1642 = !DILocation(line: 455, column: 20, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !116, line: 455, column: 19)
!1644 = !DILocation(line: 455, column: 26, scope: !1643)
!1645 = !DILocation(line: 456, column: 19, scope: !1643)
!1646 = !DILocation(line: 456, column: 22, scope: !1643)
!1647 = !DILocation(line: 456, column: 24, scope: !1643)
!1648 = !DILocation(line: 456, column: 30, scope: !1643)
!1649 = !DILocation(line: 456, column: 28, scope: !1643)
!1650 = !DILocation(line: 456, column: 38, scope: !1643)
!1651 = !DILocation(line: 456, column: 41, scope: !1643)
!1652 = !DILocation(line: 456, column: 45, scope: !1643)
!1653 = !DILocation(line: 456, column: 47, scope: !1643)
!1654 = !DILocation(line: 456, column: 52, scope: !1643)
!1655 = !DILocation(line: 455, column: 19, scope: !1638)
!1656 = !DILocation(line: 457, column: 25, scope: !1643)
!1657 = !DILocation(line: 457, column: 29, scope: !1643)
!1658 = !DILocation(line: 457, column: 31, scope: !1643)
!1659 = !DILocation(line: 457, column: 17, scope: !1643)
!1660 = !DILocation(line: 464, column: 25, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !116, line: 464, column: 25)
!1662 = distinct !DILexicalBlock(scope: !1643, file: !116, line: 458, column: 19)
!1663 = !DILocation(line: 464, column: 25, scope: !1662)
!1664 = !DILocation(line: 465, column: 23, scope: !1661)
!1665 = !DILocation(line: 466, column: 25, scope: !1662)
!1666 = !DILocation(line: 466, column: 29, scope: !1662)
!1667 = !DILocation(line: 466, column: 31, scope: !1662)
!1668 = !DILocation(line: 466, column: 23, scope: !1662)
!1669 = !DILocation(line: 467, column: 23, scope: !1662)
!1670 = !DILocation(line: 468, column: 21, scope: !1662)
!1671 = !DILocation(line: 468, column: 21, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !116, line: 468, column: 21)
!1673 = distinct !DILexicalBlock(scope: !1662, file: !116, line: 468, column: 21)
!1674 = !DILocation(line: 468, column: 21, scope: !1673)
!1675 = !DILocation(line: 469, column: 21, scope: !1662)
!1676 = !DILocation(line: 469, column: 21, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !116, line: 469, column: 21)
!1678 = distinct !DILexicalBlock(scope: !1662, file: !116, line: 469, column: 21)
!1679 = !DILocation(line: 469, column: 21, scope: !1678)
!1680 = !DILocation(line: 470, column: 21, scope: !1662)
!1681 = !DILocation(line: 470, column: 21, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !116, line: 470, column: 21)
!1683 = distinct !DILexicalBlock(scope: !1662, file: !116, line: 470, column: 21)
!1684 = !DILocation(line: 470, column: 21, scope: !1683)
!1685 = !DILocation(line: 471, column: 21, scope: !1662)
!1686 = !DILocation(line: 471, column: 21, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !116, line: 471, column: 21)
!1688 = distinct !DILexicalBlock(scope: !1662, file: !116, line: 471, column: 21)
!1689 = !DILocation(line: 471, column: 21, scope: !1688)
!1690 = !DILocation(line: 472, column: 21, scope: !1662)
!1691 = !DILocation(line: 473, column: 19, scope: !1662)
!1692 = !DILocation(line: 474, column: 15, scope: !1638)
!1693 = !DILocation(line: 476, column: 11, scope: !1567)
!1694 = !DILocation(line: 481, column: 26, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1567, file: !116, line: 478, column: 9)
!1696 = !DILocation(line: 481, column: 33, scope: !1695)
!1697 = !DILocation(line: 482, column: 26, scope: !1695)
!1698 = !DILocation(line: 482, column: 33, scope: !1695)
!1699 = !DILocation(line: 483, column: 26, scope: !1695)
!1700 = !DILocation(line: 483, column: 33, scope: !1695)
!1701 = !DILocation(line: 484, column: 26, scope: !1695)
!1702 = !DILocation(line: 484, column: 33, scope: !1695)
!1703 = !DILocation(line: 485, column: 26, scope: !1695)
!1704 = !DILocation(line: 485, column: 33, scope: !1695)
!1705 = !DILocation(line: 486, column: 26, scope: !1695)
!1706 = !DILocation(line: 486, column: 33, scope: !1695)
!1707 = !DILocation(line: 487, column: 26, scope: !1695)
!1708 = !DILocation(line: 487, column: 33, scope: !1695)
!1709 = !DILocation(line: 488, column: 28, scope: !1695)
!1710 = !DILocation(line: 488, column: 26, scope: !1695)
!1711 = !DILocation(line: 490, column: 17, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1695, file: !116, line: 490, column: 17)
!1713 = !DILocation(line: 490, column: 31, scope: !1712)
!1714 = !DILocation(line: 490, column: 17, scope: !1695)
!1715 = !DILocation(line: 492, column: 21, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !116, line: 492, column: 21)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !116, line: 491, column: 15)
!1718 = !DILocation(line: 492, column: 21, scope: !1717)
!1719 = !DILocation(line: 493, column: 19, scope: !1716)
!1720 = !DILocation(line: 494, column: 17, scope: !1717)
!1721 = !DILocation(line: 499, column: 17, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1695, file: !116, line: 499, column: 17)
!1723 = !DILocation(line: 499, column: 35, scope: !1722)
!1724 = !DILocation(line: 499, column: 38, scope: !1722)
!1725 = !DILocation(line: 499, column: 57, scope: !1722)
!1726 = !DILocation(line: 499, column: 60, scope: !1722)
!1727 = !DILocation(line: 499, column: 17, scope: !1695)
!1728 = !DILocation(line: 500, column: 15, scope: !1722)
!1729 = !DILabel(scope: !1695, name: "c_and_shell_escape", file: !116, line: 502)
!1730 = !DILocation(line: 502, column: 11, scope: !1695)
!1731 = !DILocation(line: 503, column: 17, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1695, file: !116, line: 503, column: 17)
!1733 = !DILocation(line: 503, column: 31, scope: !1732)
!1734 = !DILocation(line: 504, column: 17, scope: !1732)
!1735 = !DILocation(line: 504, column: 20, scope: !1732)
!1736 = !DILocation(line: 503, column: 17, scope: !1695)
!1737 = !DILocation(line: 505, column: 15, scope: !1732)
!1738 = !DILabel(scope: !1695, name: "c_escape", file: !116, line: 507)
!1739 = !DILocation(line: 507, column: 11, scope: !1695)
!1740 = !DILocation(line: 508, column: 17, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1695, file: !116, line: 508, column: 17)
!1742 = !DILocation(line: 508, column: 17, scope: !1695)
!1743 = !DILocation(line: 510, column: 21, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1741, file: !116, line: 509, column: 15)
!1745 = !DILocation(line: 510, column: 19, scope: !1744)
!1746 = !DILocation(line: 511, column: 17, scope: !1744)
!1747 = !DILocation(line: 513, column: 13, scope: !1695)
!1748 = !DILocation(line: 517, column: 18, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1567, file: !116, line: 517, column: 15)
!1750 = !DILocation(line: 517, column: 26, scope: !1749)
!1751 = !DILocation(line: 517, column: 15, scope: !1567)
!1752 = !DILocation(line: 517, column: 40, scope: !1749)
!1753 = !DILocation(line: 517, column: 47, scope: !1749)
!1754 = !DILocation(line: 517, column: 57, scope: !1749)
!1755 = !DILocation(line: 517, column: 65, scope: !1749)
!1756 = !DILocation(line: 518, column: 13, scope: !1749)
!1757 = !DILocation(line: 517, column: 69, scope: !1749)
!1758 = !DILocation(line: 521, column: 15, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1567, file: !116, line: 521, column: 15)
!1760 = !DILocation(line: 521, column: 17, scope: !1759)
!1761 = !DILocation(line: 521, column: 15, scope: !1567)
!1762 = !DILocation(line: 522, column: 13, scope: !1759)
!1763 = !DILocation(line: 521, column: 20, scope: !1759)
!1764 = !DILocation(line: 525, column: 36, scope: !1567)
!1765 = !DILocation(line: 525, column: 11, scope: !1567)
!1766 = !DILocation(line: 536, column: 15, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1567, file: !116, line: 536, column: 15)
!1768 = !DILocation(line: 536, column: 29, scope: !1767)
!1769 = !DILocation(line: 537, column: 15, scope: !1767)
!1770 = !DILocation(line: 537, column: 18, scope: !1767)
!1771 = !DILocation(line: 536, column: 15, scope: !1567)
!1772 = !DILocation(line: 538, column: 13, scope: !1767)
!1773 = !DILocation(line: 539, column: 11, scope: !1567)
!1774 = !DILocation(line: 542, column: 36, scope: !1567)
!1775 = !DILocation(line: 543, column: 36, scope: !1567)
!1776 = !DILocation(line: 544, column: 15, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1567, file: !116, line: 544, column: 15)
!1778 = !DILocation(line: 544, column: 29, scope: !1777)
!1779 = !DILocation(line: 544, column: 15, scope: !1567)
!1780 = !DILocation(line: 546, column: 19, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !116, line: 546, column: 19)
!1782 = distinct !DILexicalBlock(scope: !1777, file: !116, line: 545, column: 13)
!1783 = !DILocation(line: 546, column: 19, scope: !1782)
!1784 = !DILocation(line: 547, column: 17, scope: !1781)
!1785 = !DILocation(line: 549, column: 19, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !116, line: 549, column: 19)
!1787 = !DILocation(line: 549, column: 30, scope: !1786)
!1788 = !DILocation(line: 549, column: 35, scope: !1786)
!1789 = !DILocation(line: 549, column: 19, scope: !1782)
!1790 = !DILocation(line: 554, column: 37, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1786, file: !116, line: 550, column: 17)
!1792 = !DILocation(line: 554, column: 35, scope: !1791)
!1793 = !DILocation(line: 555, column: 30, scope: !1791)
!1794 = !DILocation(line: 556, column: 17, scope: !1791)
!1795 = !DILocation(line: 558, column: 15, scope: !1782)
!1796 = !DILocation(line: 558, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !116, line: 558, column: 15)
!1798 = distinct !DILexicalBlock(scope: !1782, file: !116, line: 558, column: 15)
!1799 = !DILocation(line: 558, column: 15, scope: !1798)
!1800 = !DILocation(line: 559, column: 15, scope: !1782)
!1801 = !DILocation(line: 559, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !116, line: 559, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1782, file: !116, line: 559, column: 15)
!1804 = !DILocation(line: 559, column: 15, scope: !1803)
!1805 = !DILocation(line: 560, column: 15, scope: !1782)
!1806 = !DILocation(line: 560, column: 15, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !116, line: 560, column: 15)
!1808 = distinct !DILexicalBlock(scope: !1782, file: !116, line: 560, column: 15)
!1809 = !DILocation(line: 560, column: 15, scope: !1808)
!1810 = !DILocation(line: 561, column: 40, scope: !1782)
!1811 = !DILocation(line: 562, column: 13, scope: !1782)
!1812 = !DILocation(line: 563, column: 11, scope: !1567)
!1813 = !DILocation(line: 587, column: 36, scope: !1567)
!1814 = !DILocation(line: 588, column: 11, scope: !1567)
!1815 = !DILocalVariable(name: "m", scope: !1816, file: !116, line: 598, type: !138)
!1816 = distinct !DILexicalBlock(scope: !1567, file: !116, line: 596, column: 11)
!1817 = !DILocation(line: 598, column: 20, scope: !1816)
!1818 = !DILocalVariable(name: "printable", scope: !1816, file: !116, line: 600, type: !61)
!1819 = !DILocation(line: 600, column: 18, scope: !1816)
!1820 = !DILocation(line: 602, column: 17, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1816, file: !116, line: 602, column: 17)
!1822 = !DILocation(line: 602, column: 17, scope: !1816)
!1823 = !DILocation(line: 604, column: 19, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1821, file: !116, line: 603, column: 15)
!1825 = !DILocation(line: 605, column: 29, scope: !1824)
!1826 = !DILocation(line: 605, column: 41, scope: !1824)
!1827 = !DILocation(line: 605, column: 27, scope: !1824)
!1828 = !DILocation(line: 606, column: 15, scope: !1824)
!1829 = !DILocalVariable(name: "mbs", scope: !1830, file: !116, line: 609, type: !1831)
!1830 = distinct !DILexicalBlock(scope: !1821, file: !116, line: 608, column: 15)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !212, line: 6, baseType: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !214, line: 21, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 13, size: 64, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1833, file: !214, line: 15, baseType: !25, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1833, file: !214, line: 20, baseType: !1837, size: 32, offset: 32)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1833, file: !214, line: 16, size: 32, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1837, file: !214, line: 18, baseType: !7, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1837, file: !214, line: 19, baseType: !223, size: 32)
!1841 = !DILocation(line: 609, column: 27, scope: !1830)
!1842 = !DILocation(line: 609, column: 32, scope: !1830)
!1843 = !DILocation(line: 611, column: 19, scope: !1830)
!1844 = !DILocation(line: 612, column: 27, scope: !1830)
!1845 = !DILocation(line: 613, column: 21, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1830, file: !116, line: 613, column: 21)
!1847 = !DILocation(line: 613, column: 29, scope: !1846)
!1848 = !DILocation(line: 613, column: 21, scope: !1830)
!1849 = !DILocation(line: 614, column: 37, scope: !1846)
!1850 = !DILocation(line: 614, column: 29, scope: !1846)
!1851 = !DILocation(line: 614, column: 27, scope: !1846)
!1852 = !DILocation(line: 614, column: 19, scope: !1846)
!1853 = !DILocation(line: 616, column: 17, scope: !1830)
!1854 = !DILocalVariable(name: "w", scope: !1855, file: !116, line: 618, type: !1151)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !116, line: 617, column: 19)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !116, line: 616, column: 17)
!1857 = distinct !DILexicalBlock(scope: !1830, file: !116, line: 616, column: 17)
!1858 = !DILocation(line: 618, column: 30, scope: !1855)
!1859 = !DILocalVariable(name: "bytes", scope: !1855, file: !116, line: 619, type: !138)
!1860 = !DILocation(line: 619, column: 28, scope: !1855)
!1861 = !DILocation(line: 619, column: 51, scope: !1855)
!1862 = !DILocation(line: 619, column: 55, scope: !1855)
!1863 = !DILocation(line: 619, column: 59, scope: !1855)
!1864 = !DILocation(line: 619, column: 57, scope: !1855)
!1865 = !DILocation(line: 620, column: 46, scope: !1855)
!1866 = !DILocation(line: 620, column: 57, scope: !1855)
!1867 = !DILocation(line: 620, column: 61, scope: !1855)
!1868 = !DILocation(line: 620, column: 59, scope: !1855)
!1869 = !DILocation(line: 620, column: 54, scope: !1855)
!1870 = !DILocation(line: 619, column: 36, scope: !1855)
!1871 = !DILocation(line: 621, column: 25, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1855, file: !116, line: 621, column: 25)
!1873 = !DILocation(line: 621, column: 31, scope: !1872)
!1874 = !DILocation(line: 621, column: 25, scope: !1855)
!1875 = !DILocation(line: 622, column: 23, scope: !1872)
!1876 = !DILocation(line: 623, column: 30, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !116, line: 623, column: 30)
!1878 = !DILocation(line: 623, column: 36, scope: !1877)
!1879 = !DILocation(line: 623, column: 30, scope: !1872)
!1880 = !DILocation(line: 625, column: 35, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !116, line: 624, column: 23)
!1882 = !DILocation(line: 626, column: 25, scope: !1881)
!1883 = !DILocation(line: 628, column: 30, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1877, file: !116, line: 628, column: 30)
!1885 = !DILocation(line: 628, column: 36, scope: !1884)
!1886 = !DILocation(line: 628, column: 30, scope: !1877)
!1887 = !DILocation(line: 630, column: 35, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1884, file: !116, line: 629, column: 23)
!1889 = !DILocation(line: 631, column: 25, scope: !1888)
!1890 = !DILocation(line: 631, column: 32, scope: !1888)
!1891 = !DILocation(line: 631, column: 36, scope: !1888)
!1892 = !DILocation(line: 631, column: 34, scope: !1888)
!1893 = !DILocation(line: 631, column: 40, scope: !1888)
!1894 = !DILocation(line: 631, column: 38, scope: !1888)
!1895 = !DILocation(line: 631, column: 48, scope: !1888)
!1896 = !DILocation(line: 631, column: 51, scope: !1888)
!1897 = !DILocation(line: 631, column: 55, scope: !1888)
!1898 = !DILocation(line: 631, column: 59, scope: !1888)
!1899 = !DILocation(line: 631, column: 57, scope: !1888)
!1900 = !DILocation(line: 0, scope: !1888)
!1901 = !DILocation(line: 632, column: 28, scope: !1888)
!1902 = distinct !{!1902, !1889, !1901, !409}
!1903 = !DILocation(line: 633, column: 25, scope: !1888)
!1904 = !DILocation(line: 645, column: 44, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !116, line: 645, column: 29)
!1906 = distinct !DILexicalBlock(scope: !1884, file: !116, line: 636, column: 23)
!1907 = !DILocation(line: 646, column: 29, scope: !1905)
!1908 = !DILocation(line: 646, column: 32, scope: !1905)
!1909 = !DILocation(line: 646, column: 46, scope: !1905)
!1910 = !DILocation(line: 645, column: 29, scope: !1906)
!1911 = !DILocalVariable(name: "j", scope: !1912, file: !116, line: 648, type: !138)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !116, line: 648, column: 29)
!1913 = distinct !DILexicalBlock(scope: !1905, file: !116, line: 647, column: 27)
!1914 = !DILocation(line: 648, column: 41, scope: !1912)
!1915 = !DILocation(line: 648, column: 34, scope: !1912)
!1916 = !DILocation(line: 648, column: 48, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1912, file: !116, line: 648, column: 29)
!1918 = !DILocation(line: 648, column: 52, scope: !1917)
!1919 = !DILocation(line: 648, column: 50, scope: !1917)
!1920 = !DILocation(line: 648, column: 29, scope: !1912)
!1921 = !DILocation(line: 649, column: 39, scope: !1917)
!1922 = !DILocation(line: 649, column: 43, scope: !1917)
!1923 = !DILocation(line: 649, column: 47, scope: !1917)
!1924 = !DILocation(line: 649, column: 45, scope: !1917)
!1925 = !DILocation(line: 649, column: 51, scope: !1917)
!1926 = !DILocation(line: 649, column: 49, scope: !1917)
!1927 = !DILocation(line: 649, column: 31, scope: !1917)
!1928 = !DILocation(line: 653, column: 35, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1917, file: !116, line: 650, column: 33)
!1930 = !DILocation(line: 654, column: 33, scope: !1929)
!1931 = !DILocation(line: 648, column: 60, scope: !1917)
!1932 = !DILocation(line: 648, column: 29, scope: !1917)
!1933 = distinct !{!1933, !1920, !1934, !409}
!1934 = !DILocation(line: 654, column: 33, scope: !1912)
!1935 = !DILocation(line: 655, column: 27, scope: !1913)
!1936 = !DILocation(line: 657, column: 43, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1906, file: !116, line: 657, column: 29)
!1938 = !DILocation(line: 657, column: 31, scope: !1937)
!1939 = !DILocation(line: 657, column: 29, scope: !1906)
!1940 = !DILocation(line: 658, column: 37, scope: !1937)
!1941 = !DILocation(line: 658, column: 27, scope: !1937)
!1942 = !DILocation(line: 659, column: 30, scope: !1906)
!1943 = !DILocation(line: 659, column: 27, scope: !1906)
!1944 = !DILocation(line: 664, column: 23, scope: !1855)
!1945 = !DILocation(line: 668, column: 40, scope: !1816)
!1946 = !DILocation(line: 668, column: 38, scope: !1816)
!1947 = !DILocation(line: 670, column: 21, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1816, file: !116, line: 670, column: 17)
!1949 = !DILocation(line: 670, column: 19, scope: !1948)
!1950 = !DILocation(line: 670, column: 23, scope: !1948)
!1951 = !DILocation(line: 670, column: 27, scope: !1948)
!1952 = !DILocation(line: 670, column: 45, scope: !1948)
!1953 = !DILocation(line: 670, column: 50, scope: !1948)
!1954 = !DILocation(line: 670, column: 17, scope: !1816)
!1955 = !DILocalVariable(name: "ilim", scope: !1956, file: !116, line: 674, type: !138)
!1956 = distinct !DILexicalBlock(scope: !1948, file: !116, line: 671, column: 15)
!1957 = !DILocation(line: 674, column: 24, scope: !1956)
!1958 = !DILocation(line: 674, column: 31, scope: !1956)
!1959 = !DILocation(line: 674, column: 35, scope: !1956)
!1960 = !DILocation(line: 674, column: 33, scope: !1956)
!1961 = !DILocation(line: 676, column: 17, scope: !1956)
!1962 = !DILocation(line: 678, column: 25, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !116, line: 678, column: 25)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !116, line: 677, column: 19)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !116, line: 676, column: 17)
!1966 = distinct !DILexicalBlock(scope: !1956, file: !116, line: 676, column: 17)
!1967 = !DILocation(line: 678, column: 43, scope: !1963)
!1968 = !DILocation(line: 678, column: 48, scope: !1963)
!1969 = !DILocation(line: 678, column: 25, scope: !1964)
!1970 = !DILocation(line: 680, column: 25, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1963, file: !116, line: 679, column: 23)
!1972 = !DILocation(line: 680, column: 25, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !116, line: 680, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !116, line: 680, column: 25)
!1975 = !DILocation(line: 680, column: 25, scope: !1974)
!1976 = !DILocation(line: 680, column: 25, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !116, line: 680, column: 25)
!1978 = !DILocation(line: 680, column: 25, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1977, file: !116, line: 680, column: 25)
!1980 = !DILocation(line: 680, column: 25, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !116, line: 680, column: 25)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !116, line: 680, column: 25)
!1983 = !DILocation(line: 680, column: 25, scope: !1982)
!1984 = !DILocation(line: 680, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !116, line: 680, column: 25)
!1986 = distinct !DILexicalBlock(scope: !1979, file: !116, line: 680, column: 25)
!1987 = !DILocation(line: 680, column: 25, scope: !1986)
!1988 = !DILocation(line: 680, column: 25, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !116, line: 680, column: 25)
!1990 = distinct !DILexicalBlock(scope: !1979, file: !116, line: 680, column: 25)
!1991 = !DILocation(line: 680, column: 25, scope: !1990)
!1992 = !DILocation(line: 680, column: 25, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !116, line: 680, column: 25)
!1994 = distinct !DILexicalBlock(scope: !1974, file: !116, line: 680, column: 25)
!1995 = !DILocation(line: 680, column: 25, scope: !1994)
!1996 = !DILocation(line: 681, column: 25, scope: !1971)
!1997 = !DILocation(line: 681, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !116, line: 681, column: 25)
!1999 = distinct !DILexicalBlock(scope: !1971, file: !116, line: 681, column: 25)
!2000 = !DILocation(line: 681, column: 25, scope: !1999)
!2001 = !DILocation(line: 682, column: 25, scope: !1971)
!2002 = !DILocation(line: 682, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !116, line: 682, column: 25)
!2004 = distinct !DILexicalBlock(scope: !1971, file: !116, line: 682, column: 25)
!2005 = !DILocation(line: 682, column: 25, scope: !2004)
!2006 = !DILocation(line: 683, column: 36, scope: !1971)
!2007 = !DILocation(line: 683, column: 38, scope: !1971)
!2008 = !DILocation(line: 683, column: 33, scope: !1971)
!2009 = !DILocation(line: 683, column: 29, scope: !1971)
!2010 = !DILocation(line: 683, column: 27, scope: !1971)
!2011 = !DILocation(line: 684, column: 23, scope: !1971)
!2012 = !DILocation(line: 685, column: 30, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1963, file: !116, line: 685, column: 30)
!2014 = !DILocation(line: 685, column: 30, scope: !1963)
!2015 = !DILocation(line: 687, column: 25, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2013, file: !116, line: 686, column: 23)
!2017 = !DILocation(line: 687, column: 25, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !116, line: 687, column: 25)
!2019 = distinct !DILexicalBlock(scope: !2016, file: !116, line: 687, column: 25)
!2020 = !DILocation(line: 687, column: 25, scope: !2019)
!2021 = !DILocation(line: 688, column: 40, scope: !2016)
!2022 = !DILocation(line: 689, column: 23, scope: !2016)
!2023 = !DILocation(line: 690, column: 25, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1964, file: !116, line: 690, column: 25)
!2025 = !DILocation(line: 690, column: 33, scope: !2024)
!2026 = !DILocation(line: 690, column: 35, scope: !2024)
!2027 = !DILocation(line: 690, column: 30, scope: !2024)
!2028 = !DILocation(line: 690, column: 25, scope: !1964)
!2029 = !DILocation(line: 691, column: 23, scope: !2024)
!2030 = !DILocation(line: 692, column: 21, scope: !1964)
!2031 = !DILocation(line: 692, column: 21, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !116, line: 692, column: 21)
!2033 = distinct !DILexicalBlock(scope: !1964, file: !116, line: 692, column: 21)
!2034 = !DILocation(line: 692, column: 21, scope: !2033)
!2035 = !DILocation(line: 692, column: 21, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2032, file: !116, line: 692, column: 21)
!2037 = !DILocation(line: 692, column: 21, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !116, line: 692, column: 21)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !116, line: 692, column: 21)
!2040 = !DILocation(line: 692, column: 21, scope: !2039)
!2041 = !DILocation(line: 692, column: 21, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !116, line: 692, column: 21)
!2043 = distinct !DILexicalBlock(scope: !2036, file: !116, line: 692, column: 21)
!2044 = !DILocation(line: 692, column: 21, scope: !2043)
!2045 = !DILocation(line: 693, column: 21, scope: !1964)
!2046 = !DILocation(line: 693, column: 21, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !116, line: 693, column: 21)
!2048 = distinct !DILexicalBlock(scope: !1964, file: !116, line: 693, column: 21)
!2049 = !DILocation(line: 693, column: 21, scope: !2048)
!2050 = !DILocation(line: 694, column: 25, scope: !1964)
!2051 = !DILocation(line: 694, column: 29, scope: !1964)
!2052 = !DILocation(line: 694, column: 23, scope: !1964)
!2053 = !DILocation(line: 676, column: 17, scope: !1965)
!2054 = distinct !{!2054, !2055, !2056}
!2055 = !DILocation(line: 676, column: 17, scope: !1966)
!2056 = !DILocation(line: 695, column: 19, scope: !1966)
!2057 = !DILocation(line: 697, column: 17, scope: !1956)
!2058 = !DILocation(line: 700, column: 9, scope: !1567)
!2059 = !DILocation(line: 702, column: 16, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1517, file: !116, line: 702, column: 11)
!2061 = !DILocation(line: 702, column: 34, scope: !2060)
!2062 = !DILocation(line: 702, column: 37, scope: !2060)
!2063 = !DILocation(line: 702, column: 51, scope: !2060)
!2064 = !DILocation(line: 703, column: 15, scope: !2060)
!2065 = !DILocation(line: 703, column: 18, scope: !2060)
!2066 = !DILocation(line: 704, column: 14, scope: !2060)
!2067 = !DILocation(line: 704, column: 17, scope: !2060)
!2068 = !DILocation(line: 705, column: 14, scope: !2060)
!2069 = !DILocation(line: 705, column: 17, scope: !2060)
!2070 = !DILocation(line: 705, column: 33, scope: !2060)
!2071 = !DILocation(line: 705, column: 35, scope: !2060)
!2072 = !DILocation(line: 705, column: 51, scope: !2060)
!2073 = !DILocation(line: 705, column: 53, scope: !2060)
!2074 = !DILocation(line: 705, column: 47, scope: !2060)
!2075 = !DILocation(line: 705, column: 65, scope: !2060)
!2076 = !DILocation(line: 706, column: 11, scope: !2060)
!2077 = !DILocation(line: 706, column: 15, scope: !2060)
!2078 = !DILocation(line: 702, column: 11, scope: !1517)
!2079 = !DILocation(line: 707, column: 9, scope: !2060)
!2080 = !DILabel(scope: !1517, name: "store_escape", file: !116, line: 709)
!2081 = !DILocation(line: 709, column: 5, scope: !1517)
!2082 = !DILocation(line: 710, column: 7, scope: !1517)
!2083 = !DILocation(line: 710, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !116, line: 710, column: 7)
!2085 = distinct !DILexicalBlock(scope: !1517, file: !116, line: 710, column: 7)
!2086 = !DILocation(line: 710, column: 7, scope: !2085)
!2087 = !DILocation(line: 710, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !116, line: 710, column: 7)
!2089 = !DILocation(line: 710, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2088, file: !116, line: 710, column: 7)
!2091 = !DILocation(line: 710, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !116, line: 710, column: 7)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !116, line: 710, column: 7)
!2094 = !DILocation(line: 710, column: 7, scope: !2093)
!2095 = !DILocation(line: 710, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !116, line: 710, column: 7)
!2097 = distinct !DILexicalBlock(scope: !2090, file: !116, line: 710, column: 7)
!2098 = !DILocation(line: 710, column: 7, scope: !2097)
!2099 = !DILocation(line: 710, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !116, line: 710, column: 7)
!2101 = distinct !DILexicalBlock(scope: !2090, file: !116, line: 710, column: 7)
!2102 = !DILocation(line: 710, column: 7, scope: !2101)
!2103 = !DILocation(line: 710, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !116, line: 710, column: 7)
!2105 = distinct !DILexicalBlock(scope: !2085, file: !116, line: 710, column: 7)
!2106 = !DILocation(line: 710, column: 7, scope: !2105)
!2107 = !DILabel(scope: !1517, name: "store_c", file: !116, line: 712)
!2108 = !DILocation(line: 712, column: 5, scope: !1517)
!2109 = !DILocation(line: 713, column: 7, scope: !1517)
!2110 = !DILocation(line: 713, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !116, line: 713, column: 7)
!2112 = distinct !DILexicalBlock(scope: !1517, file: !116, line: 713, column: 7)
!2113 = !DILocation(line: 713, column: 7, scope: !2112)
!2114 = !DILocation(line: 713, column: 7, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !116, line: 713, column: 7)
!2116 = !DILocation(line: 713, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !116, line: 713, column: 7)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !116, line: 713, column: 7)
!2119 = !DILocation(line: 713, column: 7, scope: !2118)
!2120 = !DILocation(line: 713, column: 7, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !116, line: 713, column: 7)
!2122 = distinct !DILexicalBlock(scope: !2115, file: !116, line: 713, column: 7)
!2123 = !DILocation(line: 713, column: 7, scope: !2122)
!2124 = !DILocation(line: 714, column: 7, scope: !1517)
!2125 = !DILocation(line: 714, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !116, line: 714, column: 7)
!2127 = distinct !DILexicalBlock(scope: !1517, file: !116, line: 714, column: 7)
!2128 = !DILocation(line: 714, column: 7, scope: !2127)
!2129 = !DILocation(line: 716, column: 13, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1517, file: !116, line: 716, column: 11)
!2131 = !DILocation(line: 716, column: 11, scope: !1517)
!2132 = !DILocation(line: 717, column: 38, scope: !2130)
!2133 = !DILocation(line: 717, column: 9, scope: !2130)
!2134 = !DILocation(line: 718, column: 5, scope: !1517)
!2135 = !DILocation(line: 395, column: 82, scope: !1506)
!2136 = !DILocation(line: 395, column: 3, scope: !1506)
!2137 = distinct !{!2137, !1515, !2138, !409}
!2138 = !DILocation(line: 718, column: 5, scope: !1502)
!2139 = !DILocation(line: 720, column: 7, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1364, file: !116, line: 720, column: 7)
!2141 = !DILocation(line: 720, column: 11, scope: !2140)
!2142 = !DILocation(line: 720, column: 16, scope: !2140)
!2143 = !DILocation(line: 720, column: 19, scope: !2140)
!2144 = !DILocation(line: 720, column: 33, scope: !2140)
!2145 = !DILocation(line: 721, column: 7, scope: !2140)
!2146 = !DILocation(line: 721, column: 10, scope: !2140)
!2147 = !DILocation(line: 720, column: 7, scope: !1364)
!2148 = !DILocation(line: 722, column: 5, scope: !2140)
!2149 = !DILocation(line: 728, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1364, file: !116, line: 728, column: 7)
!2151 = !DILocation(line: 728, column: 21, scope: !2150)
!2152 = !DILocation(line: 728, column: 51, scope: !2150)
!2153 = !DILocation(line: 728, column: 56, scope: !2150)
!2154 = !DILocation(line: 729, column: 7, scope: !2150)
!2155 = !DILocation(line: 729, column: 10, scope: !2150)
!2156 = !DILocation(line: 728, column: 7, scope: !1364)
!2157 = !DILocation(line: 731, column: 11, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !116, line: 731, column: 11)
!2159 = distinct !DILexicalBlock(scope: !2150, file: !116, line: 730, column: 5)
!2160 = !DILocation(line: 731, column: 11, scope: !2159)
!2161 = !DILocation(line: 732, column: 42, scope: !2158)
!2162 = !DILocation(line: 732, column: 50, scope: !2158)
!2163 = !DILocation(line: 732, column: 67, scope: !2158)
!2164 = !DILocation(line: 732, column: 72, scope: !2158)
!2165 = !DILocation(line: 734, column: 42, scope: !2158)
!2166 = !DILocation(line: 734, column: 49, scope: !2158)
!2167 = !DILocation(line: 735, column: 42, scope: !2158)
!2168 = !DILocation(line: 735, column: 54, scope: !2158)
!2169 = !DILocation(line: 732, column: 16, scope: !2158)
!2170 = !DILocation(line: 732, column: 9, scope: !2158)
!2171 = !DILocation(line: 736, column: 18, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2158, file: !116, line: 736, column: 16)
!2173 = !DILocation(line: 736, column: 29, scope: !2172)
!2174 = !DILocation(line: 736, column: 32, scope: !2172)
!2175 = !DILocation(line: 736, column: 16, scope: !2158)
!2176 = !DILocation(line: 739, column: 24, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !116, line: 737, column: 9)
!2178 = !DILocation(line: 739, column: 22, scope: !2177)
!2179 = !DILocation(line: 740, column: 15, scope: !2177)
!2180 = !DILocation(line: 741, column: 11, scope: !2177)
!2181 = !DILocation(line: 743, column: 5, scope: !2159)
!2182 = !DILocation(line: 745, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !1364, file: !116, line: 745, column: 7)
!2184 = !DILocation(line: 745, column: 20, scope: !2183)
!2185 = !DILocation(line: 745, column: 24, scope: !2183)
!2186 = !DILocation(line: 745, column: 7, scope: !1364)
!2187 = !DILocation(line: 746, column: 5, scope: !2183)
!2188 = !DILocation(line: 746, column: 13, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !116, line: 746, column: 5)
!2190 = distinct !DILexicalBlock(scope: !2183, file: !116, line: 746, column: 5)
!2191 = !DILocation(line: 746, column: 12, scope: !2189)
!2192 = !DILocation(line: 746, column: 5, scope: !2190)
!2193 = !DILocation(line: 747, column: 7, scope: !2189)
!2194 = !DILocation(line: 747, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !116, line: 747, column: 7)
!2196 = distinct !DILexicalBlock(scope: !2189, file: !116, line: 747, column: 7)
!2197 = !DILocation(line: 747, column: 7, scope: !2196)
!2198 = !DILocation(line: 746, column: 39, scope: !2189)
!2199 = !DILocation(line: 746, column: 5, scope: !2189)
!2200 = distinct !{!2200, !2192, !2201, !409}
!2201 = !DILocation(line: 747, column: 7, scope: !2190)
!2202 = !DILocation(line: 749, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1364, file: !116, line: 749, column: 7)
!2204 = !DILocation(line: 749, column: 13, scope: !2203)
!2205 = !DILocation(line: 749, column: 11, scope: !2203)
!2206 = !DILocation(line: 749, column: 7, scope: !1364)
!2207 = !DILocation(line: 750, column: 5, scope: !2203)
!2208 = !DILocation(line: 750, column: 12, scope: !2203)
!2209 = !DILocation(line: 750, column: 17, scope: !2203)
!2210 = !DILocation(line: 751, column: 10, scope: !1364)
!2211 = !DILocation(line: 751, column: 3, scope: !1364)
!2212 = !DILabel(scope: !1364, name: "force_outer_quoting_style", file: !116, line: 753)
!2213 = !DILocation(line: 753, column: 2, scope: !1364)
!2214 = !DILocation(line: 756, column: 7, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !1364, file: !116, line: 756, column: 7)
!2216 = !DILocation(line: 756, column: 21, scope: !2215)
!2217 = !DILocation(line: 756, column: 51, scope: !2215)
!2218 = !DILocation(line: 756, column: 54, scope: !2215)
!2219 = !DILocation(line: 756, column: 7, scope: !1364)
!2220 = !DILocation(line: 757, column: 19, scope: !2215)
!2221 = !DILocation(line: 757, column: 5, scope: !2215)
!2222 = !DILocation(line: 758, column: 36, scope: !1364)
!2223 = !DILocation(line: 758, column: 44, scope: !1364)
!2224 = !DILocation(line: 758, column: 56, scope: !1364)
!2225 = !DILocation(line: 758, column: 61, scope: !1364)
!2226 = !DILocation(line: 759, column: 36, scope: !1364)
!2227 = !DILocation(line: 760, column: 36, scope: !1364)
!2228 = !DILocation(line: 760, column: 42, scope: !1364)
!2229 = !DILocation(line: 761, column: 36, scope: !1364)
!2230 = !DILocation(line: 761, column: 48, scope: !1364)
!2231 = !DILocation(line: 758, column: 10, scope: !1364)
!2232 = !DILocation(line: 758, column: 3, scope: !1364)
!2233 = !DILocation(line: 762, column: 1, scope: !1364)
!2234 = !DILocalVariable(name: "msgid", arg: 1, scope: !169, file: !116, line: 197, type: !34)
!2235 = !DILocation(line: 197, column: 28, scope: !169)
!2236 = !DILocalVariable(name: "s", arg: 2, scope: !169, file: !116, line: 197, type: !118)
!2237 = !DILocation(line: 197, column: 54, scope: !169)
!2238 = !DILocalVariable(name: "translation", scope: !169, file: !116, line: 199, type: !34)
!2239 = !DILocation(line: 199, column: 15, scope: !169)
!2240 = !DILocation(line: 199, column: 29, scope: !169)
!2241 = !DILocation(line: 201, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !169, file: !116, line: 201, column: 7)
!2243 = !DILocation(line: 201, column: 22, scope: !2242)
!2244 = !DILocation(line: 201, column: 19, scope: !2242)
!2245 = !DILocation(line: 201, column: 7, scope: !169)
!2246 = !DILocation(line: 202, column: 12, scope: !2242)
!2247 = !DILocation(line: 202, column: 5, scope: !2242)
!2248 = !DILocalVariable(name: "w", scope: !169, file: !116, line: 229, type: !1151)
!2249 = !DILocation(line: 229, column: 12, scope: !169)
!2250 = !DILocalVariable(name: "mbs", scope: !169, file: !116, line: 230, type: !1831)
!2251 = !DILocation(line: 230, column: 13, scope: !169)
!2252 = !DILocation(line: 230, column: 18, scope: !169)
!2253 = !DILocation(line: 231, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !169, file: !116, line: 231, column: 7)
!2255 = !DILocation(line: 231, column: 40, scope: !2254)
!2256 = !DILocation(line: 231, column: 45, scope: !2254)
!2257 = !DILocation(line: 231, column: 48, scope: !2254)
!2258 = !DILocation(line: 231, column: 50, scope: !2254)
!2259 = !DILocation(line: 231, column: 7, scope: !169)
!2260 = !DILocation(line: 232, column: 18, scope: !2254)
!2261 = !DILocation(line: 232, column: 27, scope: !2254)
!2262 = !DILocation(line: 232, column: 12, scope: !2254)
!2263 = !DILocation(line: 232, column: 5, scope: !2254)
!2264 = !DILocation(line: 234, column: 11, scope: !169)
!2265 = !DILocation(line: 234, column: 13, scope: !169)
!2266 = !DILocation(line: 234, column: 3, scope: !169)
!2267 = !DILocation(line: 235, column: 1, scope: !169)
!2268 = distinct !DISubprogram(name: "quotearg_alloc", scope: !116, file: !116, line: 788, type: !2269, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!22, !34, !138, !1204}
!2271 = !DILocalVariable(name: "arg", arg: 1, scope: !2268, file: !116, line: 788, type: !34)
!2272 = !DILocation(line: 788, column: 29, scope: !2268)
!2273 = !DILocalVariable(name: "argsize", arg: 2, scope: !2268, file: !116, line: 788, type: !138)
!2274 = !DILocation(line: 788, column: 41, scope: !2268)
!2275 = !DILocalVariable(name: "o", arg: 3, scope: !2268, file: !116, line: 789, type: !1204)
!2276 = !DILocation(line: 789, column: 47, scope: !2268)
!2277 = !DILocation(line: 791, column: 30, scope: !2268)
!2278 = !DILocation(line: 791, column: 35, scope: !2268)
!2279 = !DILocation(line: 791, column: 50, scope: !2268)
!2280 = !DILocation(line: 791, column: 10, scope: !2268)
!2281 = !DILocation(line: 791, column: 3, scope: !2268)
!2282 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !116, file: !116, line: 801, type: !2283, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!22, !34, !138, !246, !1204}
!2285 = !DILocalVariable(name: "arg", arg: 1, scope: !2282, file: !116, line: 801, type: !34)
!2286 = !DILocation(line: 801, column: 33, scope: !2282)
!2287 = !DILocalVariable(name: "argsize", arg: 2, scope: !2282, file: !116, line: 801, type: !138)
!2288 = !DILocation(line: 801, column: 45, scope: !2282)
!2289 = !DILocalVariable(name: "size", arg: 3, scope: !2282, file: !116, line: 801, type: !246)
!2290 = !DILocation(line: 801, column: 62, scope: !2282)
!2291 = !DILocalVariable(name: "o", arg: 4, scope: !2282, file: !116, line: 802, type: !1204)
!2292 = !DILocation(line: 802, column: 51, scope: !2282)
!2293 = !DILocalVariable(name: "p", scope: !2282, file: !116, line: 804, type: !1204)
!2294 = !DILocation(line: 804, column: 33, scope: !2282)
!2295 = !DILocation(line: 804, column: 37, scope: !2282)
!2296 = !DILocation(line: 804, column: 41, scope: !2282)
!2297 = !DILocalVariable(name: "saved_errno", scope: !2282, file: !116, line: 805, type: !25)
!2298 = !DILocation(line: 805, column: 7, scope: !2282)
!2299 = !DILocation(line: 805, column: 21, scope: !2282)
!2300 = !DILocalVariable(name: "flags", scope: !2282, file: !116, line: 807, type: !25)
!2301 = !DILocation(line: 807, column: 7, scope: !2282)
!2302 = !DILocation(line: 807, column: 15, scope: !2282)
!2303 = !DILocation(line: 807, column: 18, scope: !2282)
!2304 = !DILocation(line: 807, column: 27, scope: !2282)
!2305 = !DILocation(line: 807, column: 24, scope: !2282)
!2306 = !DILocalVariable(name: "bufsize", scope: !2282, file: !116, line: 808, type: !138)
!2307 = !DILocation(line: 808, column: 10, scope: !2282)
!2308 = !DILocation(line: 808, column: 55, scope: !2282)
!2309 = !DILocation(line: 808, column: 60, scope: !2282)
!2310 = !DILocation(line: 808, column: 69, scope: !2282)
!2311 = !DILocation(line: 808, column: 72, scope: !2282)
!2312 = !DILocation(line: 809, column: 46, scope: !2282)
!2313 = !DILocation(line: 809, column: 53, scope: !2282)
!2314 = !DILocation(line: 809, column: 56, scope: !2282)
!2315 = !DILocation(line: 810, column: 46, scope: !2282)
!2316 = !DILocation(line: 810, column: 49, scope: !2282)
!2317 = !DILocation(line: 811, column: 46, scope: !2282)
!2318 = !DILocation(line: 811, column: 49, scope: !2282)
!2319 = !DILocation(line: 808, column: 20, scope: !2282)
!2320 = !DILocation(line: 811, column: 62, scope: !2282)
!2321 = !DILocalVariable(name: "buf", scope: !2282, file: !116, line: 812, type: !22)
!2322 = !DILocation(line: 812, column: 9, scope: !2282)
!2323 = !DILocation(line: 812, column: 27, scope: !2282)
!2324 = !DILocation(line: 812, column: 15, scope: !2282)
!2325 = !DILocation(line: 813, column: 29, scope: !2282)
!2326 = !DILocation(line: 813, column: 34, scope: !2282)
!2327 = !DILocation(line: 813, column: 43, scope: !2282)
!2328 = !DILocation(line: 813, column: 48, scope: !2282)
!2329 = !DILocation(line: 813, column: 57, scope: !2282)
!2330 = !DILocation(line: 813, column: 60, scope: !2282)
!2331 = !DILocation(line: 813, column: 67, scope: !2282)
!2332 = !DILocation(line: 814, column: 29, scope: !2282)
!2333 = !DILocation(line: 814, column: 32, scope: !2282)
!2334 = !DILocation(line: 815, column: 29, scope: !2282)
!2335 = !DILocation(line: 815, column: 32, scope: !2282)
!2336 = !DILocation(line: 815, column: 44, scope: !2282)
!2337 = !DILocation(line: 815, column: 47, scope: !2282)
!2338 = !DILocation(line: 813, column: 3, scope: !2282)
!2339 = !DILocation(line: 816, column: 11, scope: !2282)
!2340 = !DILocation(line: 816, column: 3, scope: !2282)
!2341 = !DILocation(line: 816, column: 9, scope: !2282)
!2342 = !DILocation(line: 817, column: 7, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2282, file: !116, line: 817, column: 7)
!2344 = !DILocation(line: 817, column: 7, scope: !2282)
!2345 = !DILocation(line: 818, column: 13, scope: !2343)
!2346 = !DILocation(line: 818, column: 21, scope: !2343)
!2347 = !DILocation(line: 818, column: 6, scope: !2343)
!2348 = !DILocation(line: 818, column: 11, scope: !2343)
!2349 = !DILocation(line: 818, column: 5, scope: !2343)
!2350 = !DILocation(line: 819, column: 10, scope: !2282)
!2351 = !DILocation(line: 819, column: 3, scope: !2282)
!2352 = distinct !DISubprogram(name: "quotearg_free", scope: !116, file: !116, line: 837, type: !94, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2353 = !DILocalVariable(name: "sv", scope: !2352, file: !116, line: 839, type: !177)
!2354 = !DILocation(line: 839, column: 19, scope: !2352)
!2355 = !DILocation(line: 839, column: 24, scope: !2352)
!2356 = !DILocalVariable(name: "i", scope: !2357, file: !116, line: 840, type: !25)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !116, line: 840, column: 3)
!2358 = !DILocation(line: 840, column: 12, scope: !2357)
!2359 = !DILocation(line: 840, column: 8, scope: !2357)
!2360 = !DILocation(line: 840, column: 19, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !116, line: 840, column: 3)
!2362 = !DILocation(line: 840, column: 23, scope: !2361)
!2363 = !DILocation(line: 840, column: 21, scope: !2361)
!2364 = !DILocation(line: 840, column: 3, scope: !2357)
!2365 = !DILocation(line: 841, column: 11, scope: !2361)
!2366 = !DILocation(line: 841, column: 14, scope: !2361)
!2367 = !DILocation(line: 841, column: 17, scope: !2361)
!2368 = !DILocation(line: 841, column: 5, scope: !2361)
!2369 = !DILocation(line: 840, column: 32, scope: !2361)
!2370 = !DILocation(line: 840, column: 3, scope: !2361)
!2371 = distinct !{!2371, !2364, !2372, !409}
!2372 = !DILocation(line: 841, column: 20, scope: !2357)
!2373 = !DILocation(line: 842, column: 7, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2352, file: !116, line: 842, column: 7)
!2375 = !DILocation(line: 842, column: 13, scope: !2374)
!2376 = !DILocation(line: 842, column: 17, scope: !2374)
!2377 = !DILocation(line: 842, column: 7, scope: !2352)
!2378 = !DILocation(line: 844, column: 13, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2374, file: !116, line: 843, column: 5)
!2380 = !DILocation(line: 844, column: 19, scope: !2379)
!2381 = !DILocation(line: 844, column: 7, scope: !2379)
!2382 = !DILocation(line: 845, column: 21, scope: !2379)
!2383 = !DILocation(line: 846, column: 20, scope: !2379)
!2384 = !DILocation(line: 847, column: 5, scope: !2379)
!2385 = !DILocation(line: 848, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2352, file: !116, line: 848, column: 7)
!2387 = !DILocation(line: 848, column: 10, scope: !2386)
!2388 = !DILocation(line: 848, column: 7, scope: !2352)
!2389 = !DILocation(line: 850, column: 13, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !116, line: 849, column: 5)
!2391 = !DILocation(line: 850, column: 7, scope: !2390)
!2392 = !DILocation(line: 851, column: 15, scope: !2390)
!2393 = !DILocation(line: 852, column: 5, scope: !2390)
!2394 = !DILocation(line: 853, column: 10, scope: !2352)
!2395 = !DILocation(line: 854, column: 1, scope: !2352)
!2396 = distinct !DISubprogram(name: "quotearg_n", scope: !116, file: !116, line: 919, type: !2397, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!22, !25, !34}
!2399 = !DILocalVariable(name: "n", arg: 1, scope: !2396, file: !116, line: 919, type: !25)
!2400 = !DILocation(line: 919, column: 17, scope: !2396)
!2401 = !DILocalVariable(name: "arg", arg: 2, scope: !2396, file: !116, line: 919, type: !34)
!2402 = !DILocation(line: 919, column: 32, scope: !2396)
!2403 = !DILocation(line: 921, column: 30, scope: !2396)
!2404 = !DILocation(line: 921, column: 33, scope: !2396)
!2405 = !DILocation(line: 921, column: 10, scope: !2396)
!2406 = !DILocation(line: 921, column: 3, scope: !2396)
!2407 = distinct !DISubprogram(name: "quotearg_n_options", scope: !116, file: !116, line: 866, type: !2408, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!22, !25, !34, !138, !1204}
!2410 = !DILocalVariable(name: "n", arg: 1, scope: !2407, file: !116, line: 866, type: !25)
!2411 = !DILocation(line: 866, column: 25, scope: !2407)
!2412 = !DILocalVariable(name: "arg", arg: 2, scope: !2407, file: !116, line: 866, type: !34)
!2413 = !DILocation(line: 866, column: 40, scope: !2407)
!2414 = !DILocalVariable(name: "argsize", arg: 3, scope: !2407, file: !116, line: 866, type: !138)
!2415 = !DILocation(line: 866, column: 52, scope: !2407)
!2416 = !DILocalVariable(name: "options", arg: 4, scope: !2407, file: !116, line: 867, type: !1204)
!2417 = !DILocation(line: 867, column: 51, scope: !2407)
!2418 = !DILocalVariable(name: "saved_errno", scope: !2407, file: !116, line: 869, type: !25)
!2419 = !DILocation(line: 869, column: 7, scope: !2407)
!2420 = !DILocation(line: 869, column: 21, scope: !2407)
!2421 = !DILocalVariable(name: "sv", scope: !2407, file: !116, line: 871, type: !177)
!2422 = !DILocation(line: 871, column: 19, scope: !2407)
!2423 = !DILocation(line: 871, column: 24, scope: !2407)
!2424 = !DILocalVariable(name: "nslots_max", scope: !2407, file: !116, line: 873, type: !25)
!2425 = !DILocation(line: 873, column: 7, scope: !2407)
!2426 = !DILocation(line: 874, column: 15, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2407, file: !116, line: 874, column: 7)
!2428 = !DILocation(line: 874, column: 12, scope: !2427)
!2429 = !DILocation(line: 874, column: 17, scope: !2427)
!2430 = !DILocation(line: 874, column: 20, scope: !2427)
!2431 = !DILocation(line: 874, column: 24, scope: !2427)
!2432 = !DILocation(line: 874, column: 22, scope: !2427)
!2433 = !DILocation(line: 874, column: 7, scope: !2407)
!2434 = !DILocation(line: 875, column: 5, scope: !2427)
!2435 = !DILocation(line: 877, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2407, file: !116, line: 877, column: 7)
!2437 = !DILocation(line: 877, column: 17, scope: !2436)
!2438 = !DILocation(line: 877, column: 14, scope: !2436)
!2439 = !DILocation(line: 877, column: 7, scope: !2407)
!2440 = !DILocalVariable(name: "preallocated", scope: !2441, file: !116, line: 879, type: !61)
!2441 = distinct !DILexicalBlock(scope: !2436, file: !116, line: 878, column: 5)
!2442 = !DILocation(line: 879, column: 12, scope: !2441)
!2443 = !DILocation(line: 879, column: 28, scope: !2441)
!2444 = !DILocation(line: 879, column: 31, scope: !2441)
!2445 = !DILocalVariable(name: "new_nslots", scope: !2441, file: !116, line: 880, type: !254)
!2446 = !DILocation(line: 880, column: 13, scope: !2441)
!2447 = !DILocation(line: 880, column: 26, scope: !2441)
!2448 = !DILocation(line: 882, column: 31, scope: !2441)
!2449 = !DILocation(line: 882, column: 53, scope: !2441)
!2450 = !DILocation(line: 883, column: 31, scope: !2441)
!2451 = !DILocation(line: 883, column: 35, scope: !2441)
!2452 = !DILocation(line: 883, column: 33, scope: !2441)
!2453 = !DILocation(line: 883, column: 42, scope: !2441)
!2454 = !DILocation(line: 883, column: 47, scope: !2441)
!2455 = !DILocation(line: 882, column: 22, scope: !2441)
!2456 = !DILocation(line: 882, column: 20, scope: !2441)
!2457 = !DILocation(line: 882, column: 15, scope: !2441)
!2458 = !DILocation(line: 884, column: 11, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2441, file: !116, line: 884, column: 11)
!2460 = !DILocation(line: 884, column: 11, scope: !2441)
!2461 = !DILocation(line: 885, column: 10, scope: !2459)
!2462 = !DILocation(line: 885, column: 15, scope: !2459)
!2463 = !DILocation(line: 885, column: 9, scope: !2459)
!2464 = !DILocation(line: 886, column: 15, scope: !2441)
!2465 = !DILocation(line: 886, column: 20, scope: !2441)
!2466 = !DILocation(line: 886, column: 18, scope: !2441)
!2467 = !DILocation(line: 886, column: 7, scope: !2441)
!2468 = !DILocation(line: 886, column: 32, scope: !2441)
!2469 = !DILocation(line: 886, column: 45, scope: !2441)
!2470 = !DILocation(line: 886, column: 43, scope: !2441)
!2471 = !DILocation(line: 886, column: 53, scope: !2441)
!2472 = !DILocation(line: 887, column: 16, scope: !2441)
!2473 = !DILocation(line: 887, column: 14, scope: !2441)
!2474 = !DILocation(line: 888, column: 5, scope: !2441)
!2475 = !DILocalVariable(name: "size", scope: !2476, file: !116, line: 891, type: !138)
!2476 = distinct !DILexicalBlock(scope: !2407, file: !116, line: 890, column: 3)
!2477 = !DILocation(line: 891, column: 12, scope: !2476)
!2478 = !DILocation(line: 891, column: 19, scope: !2476)
!2479 = !DILocation(line: 891, column: 22, scope: !2476)
!2480 = !DILocation(line: 891, column: 25, scope: !2476)
!2481 = !DILocalVariable(name: "val", scope: !2476, file: !116, line: 892, type: !22)
!2482 = !DILocation(line: 892, column: 11, scope: !2476)
!2483 = !DILocation(line: 892, column: 17, scope: !2476)
!2484 = !DILocation(line: 892, column: 20, scope: !2476)
!2485 = !DILocation(line: 892, column: 23, scope: !2476)
!2486 = !DILocalVariable(name: "flags", scope: !2476, file: !116, line: 894, type: !25)
!2487 = !DILocation(line: 894, column: 9, scope: !2476)
!2488 = !DILocation(line: 894, column: 17, scope: !2476)
!2489 = !DILocation(line: 894, column: 26, scope: !2476)
!2490 = !DILocation(line: 894, column: 32, scope: !2476)
!2491 = !DILocalVariable(name: "qsize", scope: !2476, file: !116, line: 895, type: !138)
!2492 = !DILocation(line: 895, column: 12, scope: !2476)
!2493 = !DILocation(line: 895, column: 46, scope: !2476)
!2494 = !DILocation(line: 895, column: 51, scope: !2476)
!2495 = !DILocation(line: 895, column: 57, scope: !2476)
!2496 = !DILocation(line: 895, column: 62, scope: !2476)
!2497 = !DILocation(line: 896, column: 46, scope: !2476)
!2498 = !DILocation(line: 896, column: 55, scope: !2476)
!2499 = !DILocation(line: 896, column: 62, scope: !2476)
!2500 = !DILocation(line: 897, column: 46, scope: !2476)
!2501 = !DILocation(line: 897, column: 55, scope: !2476)
!2502 = !DILocation(line: 898, column: 46, scope: !2476)
!2503 = !DILocation(line: 898, column: 55, scope: !2476)
!2504 = !DILocation(line: 899, column: 46, scope: !2476)
!2505 = !DILocation(line: 899, column: 55, scope: !2476)
!2506 = !DILocation(line: 895, column: 20, scope: !2476)
!2507 = !DILocation(line: 901, column: 9, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2476, file: !116, line: 901, column: 9)
!2509 = !DILocation(line: 901, column: 17, scope: !2508)
!2510 = !DILocation(line: 901, column: 14, scope: !2508)
!2511 = !DILocation(line: 901, column: 9, scope: !2476)
!2512 = !DILocation(line: 903, column: 29, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !116, line: 902, column: 7)
!2514 = !DILocation(line: 903, column: 35, scope: !2513)
!2515 = !DILocation(line: 903, column: 27, scope: !2513)
!2516 = !DILocation(line: 903, column: 9, scope: !2513)
!2517 = !DILocation(line: 903, column: 12, scope: !2513)
!2518 = !DILocation(line: 903, column: 15, scope: !2513)
!2519 = !DILocation(line: 903, column: 20, scope: !2513)
!2520 = !DILocation(line: 904, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2513, file: !116, line: 904, column: 13)
!2522 = !DILocation(line: 904, column: 17, scope: !2521)
!2523 = !DILocation(line: 904, column: 13, scope: !2513)
!2524 = !DILocation(line: 905, column: 17, scope: !2521)
!2525 = !DILocation(line: 905, column: 11, scope: !2521)
!2526 = !DILocation(line: 906, column: 39, scope: !2513)
!2527 = !DILocation(line: 906, column: 27, scope: !2513)
!2528 = !DILocation(line: 906, column: 25, scope: !2513)
!2529 = !DILocation(line: 906, column: 9, scope: !2513)
!2530 = !DILocation(line: 906, column: 12, scope: !2513)
!2531 = !DILocation(line: 906, column: 15, scope: !2513)
!2532 = !DILocation(line: 906, column: 19, scope: !2513)
!2533 = !DILocation(line: 907, column: 35, scope: !2513)
!2534 = !DILocation(line: 907, column: 40, scope: !2513)
!2535 = !DILocation(line: 907, column: 46, scope: !2513)
!2536 = !DILocation(line: 907, column: 51, scope: !2513)
!2537 = !DILocation(line: 907, column: 60, scope: !2513)
!2538 = !DILocation(line: 907, column: 69, scope: !2513)
!2539 = !DILocation(line: 908, column: 35, scope: !2513)
!2540 = !DILocation(line: 908, column: 42, scope: !2513)
!2541 = !DILocation(line: 908, column: 51, scope: !2513)
!2542 = !DILocation(line: 909, column: 35, scope: !2513)
!2543 = !DILocation(line: 909, column: 44, scope: !2513)
!2544 = !DILocation(line: 910, column: 35, scope: !2513)
!2545 = !DILocation(line: 910, column: 44, scope: !2513)
!2546 = !DILocation(line: 907, column: 9, scope: !2513)
!2547 = !DILocation(line: 911, column: 7, scope: !2513)
!2548 = !DILocation(line: 913, column: 13, scope: !2476)
!2549 = !DILocation(line: 913, column: 5, scope: !2476)
!2550 = !DILocation(line: 913, column: 11, scope: !2476)
!2551 = !DILocation(line: 914, column: 12, scope: !2476)
!2552 = !DILocation(line: 914, column: 5, scope: !2476)
!2553 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !116, file: !116, line: 925, type: !2554, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!22, !25, !34, !138}
!2556 = !DILocalVariable(name: "n", arg: 1, scope: !2553, file: !116, line: 925, type: !25)
!2557 = !DILocation(line: 925, column: 21, scope: !2553)
!2558 = !DILocalVariable(name: "arg", arg: 2, scope: !2553, file: !116, line: 925, type: !34)
!2559 = !DILocation(line: 925, column: 36, scope: !2553)
!2560 = !DILocalVariable(name: "argsize", arg: 3, scope: !2553, file: !116, line: 925, type: !138)
!2561 = !DILocation(line: 925, column: 48, scope: !2553)
!2562 = !DILocation(line: 927, column: 30, scope: !2553)
!2563 = !DILocation(line: 927, column: 33, scope: !2553)
!2564 = !DILocation(line: 927, column: 38, scope: !2553)
!2565 = !DILocation(line: 927, column: 10, scope: !2553)
!2566 = !DILocation(line: 927, column: 3, scope: !2553)
!2567 = distinct !DISubprogram(name: "quotearg", scope: !116, file: !116, line: 931, type: !816, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2568 = !DILocalVariable(name: "arg", arg: 1, scope: !2567, file: !116, line: 931, type: !34)
!2569 = !DILocation(line: 931, column: 23, scope: !2567)
!2570 = !DILocation(line: 933, column: 25, scope: !2567)
!2571 = !DILocation(line: 933, column: 10, scope: !2567)
!2572 = !DILocation(line: 933, column: 3, scope: !2567)
!2573 = distinct !DISubprogram(name: "quotearg_mem", scope: !116, file: !116, line: 937, type: !2574, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!22, !34, !138}
!2576 = !DILocalVariable(name: "arg", arg: 1, scope: !2573, file: !116, line: 937, type: !34)
!2577 = !DILocation(line: 937, column: 27, scope: !2573)
!2578 = !DILocalVariable(name: "argsize", arg: 2, scope: !2573, file: !116, line: 937, type: !138)
!2579 = !DILocation(line: 937, column: 39, scope: !2573)
!2580 = !DILocation(line: 939, column: 29, scope: !2573)
!2581 = !DILocation(line: 939, column: 34, scope: !2573)
!2582 = !DILocation(line: 939, column: 10, scope: !2573)
!2583 = !DILocation(line: 939, column: 3, scope: !2573)
!2584 = distinct !DISubprogram(name: "quotearg_n_style", scope: !116, file: !116, line: 943, type: !2585, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!22, !25, !118, !34}
!2587 = !DILocalVariable(name: "n", arg: 1, scope: !2584, file: !116, line: 943, type: !25)
!2588 = !DILocation(line: 943, column: 23, scope: !2584)
!2589 = !DILocalVariable(name: "s", arg: 2, scope: !2584, file: !116, line: 943, type: !118)
!2590 = !DILocation(line: 943, column: 45, scope: !2584)
!2591 = !DILocalVariable(name: "arg", arg: 3, scope: !2584, file: !116, line: 943, type: !34)
!2592 = !DILocation(line: 943, column: 60, scope: !2584)
!2593 = !DILocalVariable(name: "o", scope: !2584, file: !116, line: 945, type: !1205)
!2594 = !DILocation(line: 945, column: 32, scope: !2584)
!2595 = !DILocation(line: 945, column: 64, scope: !2584)
!2596 = !DILocation(line: 945, column: 36, scope: !2584)
!2597 = !DILocation(line: 946, column: 30, scope: !2584)
!2598 = !DILocation(line: 946, column: 33, scope: !2584)
!2599 = !DILocation(line: 946, column: 10, scope: !2584)
!2600 = !DILocation(line: 946, column: 3, scope: !2584)
!2601 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !116, file: !116, line: 183, type: !2602, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!150, !118}
!2604 = !DILocalVariable(name: "style", arg: 1, scope: !2601, file: !116, line: 183, type: !118)
!2605 = !DILocation(line: 183, column: 48, scope: !2601)
!2606 = !DILocalVariable(name: "o", scope: !2601, file: !116, line: 185, type: !150)
!2607 = !DILocation(line: 185, column: 26, scope: !2601)
!2608 = !DILocation(line: 186, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2601, file: !116, line: 186, column: 7)
!2610 = !DILocation(line: 186, column: 13, scope: !2609)
!2611 = !DILocation(line: 186, column: 7, scope: !2601)
!2612 = !DILocation(line: 187, column: 5, scope: !2609)
!2613 = !DILocation(line: 188, column: 13, scope: !2601)
!2614 = !DILocation(line: 188, column: 5, scope: !2601)
!2615 = !DILocation(line: 188, column: 11, scope: !2601)
!2616 = !DILocation(line: 189, column: 3, scope: !2601)
!2617 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !116, file: !116, line: 950, type: !2618, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!22, !25, !118, !34, !138}
!2620 = !DILocalVariable(name: "n", arg: 1, scope: !2617, file: !116, line: 950, type: !25)
!2621 = !DILocation(line: 950, column: 27, scope: !2617)
!2622 = !DILocalVariable(name: "s", arg: 2, scope: !2617, file: !116, line: 950, type: !118)
!2623 = !DILocation(line: 950, column: 49, scope: !2617)
!2624 = !DILocalVariable(name: "arg", arg: 3, scope: !2617, file: !116, line: 951, type: !34)
!2625 = !DILocation(line: 951, column: 35, scope: !2617)
!2626 = !DILocalVariable(name: "argsize", arg: 4, scope: !2617, file: !116, line: 951, type: !138)
!2627 = !DILocation(line: 951, column: 47, scope: !2617)
!2628 = !DILocalVariable(name: "o", scope: !2617, file: !116, line: 953, type: !1205)
!2629 = !DILocation(line: 953, column: 32, scope: !2617)
!2630 = !DILocation(line: 953, column: 64, scope: !2617)
!2631 = !DILocation(line: 953, column: 36, scope: !2617)
!2632 = !DILocation(line: 954, column: 30, scope: !2617)
!2633 = !DILocation(line: 954, column: 33, scope: !2617)
!2634 = !DILocation(line: 954, column: 38, scope: !2617)
!2635 = !DILocation(line: 954, column: 10, scope: !2617)
!2636 = !DILocation(line: 954, column: 3, scope: !2617)
!2637 = distinct !DISubprogram(name: "quotearg_style", scope: !116, file: !116, line: 958, type: !2638, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!22, !118, !34}
!2640 = !DILocalVariable(name: "s", arg: 1, scope: !2637, file: !116, line: 958, type: !118)
!2641 = !DILocation(line: 958, column: 36, scope: !2637)
!2642 = !DILocalVariable(name: "arg", arg: 2, scope: !2637, file: !116, line: 958, type: !34)
!2643 = !DILocation(line: 958, column: 51, scope: !2637)
!2644 = !DILocation(line: 960, column: 31, scope: !2637)
!2645 = !DILocation(line: 960, column: 34, scope: !2637)
!2646 = !DILocation(line: 960, column: 10, scope: !2637)
!2647 = !DILocation(line: 960, column: 3, scope: !2637)
!2648 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !116, file: !116, line: 964, type: !2649, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!22, !118, !34, !138}
!2651 = !DILocalVariable(name: "s", arg: 1, scope: !2648, file: !116, line: 964, type: !118)
!2652 = !DILocation(line: 964, column: 40, scope: !2648)
!2653 = !DILocalVariable(name: "arg", arg: 2, scope: !2648, file: !116, line: 964, type: !34)
!2654 = !DILocation(line: 964, column: 55, scope: !2648)
!2655 = !DILocalVariable(name: "argsize", arg: 3, scope: !2648, file: !116, line: 964, type: !138)
!2656 = !DILocation(line: 964, column: 67, scope: !2648)
!2657 = !DILocation(line: 966, column: 35, scope: !2648)
!2658 = !DILocation(line: 966, column: 38, scope: !2648)
!2659 = !DILocation(line: 966, column: 43, scope: !2648)
!2660 = !DILocation(line: 966, column: 10, scope: !2648)
!2661 = !DILocation(line: 966, column: 3, scope: !2648)
!2662 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !116, file: !116, line: 970, type: !2663, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!22, !34, !138, !23}
!2665 = !DILocalVariable(name: "arg", arg: 1, scope: !2662, file: !116, line: 970, type: !34)
!2666 = !DILocation(line: 970, column: 32, scope: !2662)
!2667 = !DILocalVariable(name: "argsize", arg: 2, scope: !2662, file: !116, line: 970, type: !138)
!2668 = !DILocation(line: 970, column: 44, scope: !2662)
!2669 = !DILocalVariable(name: "ch", arg: 3, scope: !2662, file: !116, line: 970, type: !23)
!2670 = !DILocation(line: 970, column: 58, scope: !2662)
!2671 = !DILocalVariable(name: "options", scope: !2662, file: !116, line: 972, type: !150)
!2672 = !DILocation(line: 972, column: 26, scope: !2662)
!2673 = !DILocation(line: 973, column: 13, scope: !2662)
!2674 = !DILocation(line: 974, column: 31, scope: !2662)
!2675 = !DILocation(line: 974, column: 3, scope: !2662)
!2676 = !DILocation(line: 975, column: 33, scope: !2662)
!2677 = !DILocation(line: 975, column: 38, scope: !2662)
!2678 = !DILocation(line: 975, column: 10, scope: !2662)
!2679 = !DILocation(line: 975, column: 3, scope: !2662)
!2680 = distinct !DISubprogram(name: "quotearg_char", scope: !116, file: !116, line: 979, type: !2681, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!22, !34, !23}
!2683 = !DILocalVariable(name: "arg", arg: 1, scope: !2680, file: !116, line: 979, type: !34)
!2684 = !DILocation(line: 979, column: 28, scope: !2680)
!2685 = !DILocalVariable(name: "ch", arg: 2, scope: !2680, file: !116, line: 979, type: !23)
!2686 = !DILocation(line: 979, column: 38, scope: !2680)
!2687 = !DILocation(line: 981, column: 29, scope: !2680)
!2688 = !DILocation(line: 981, column: 44, scope: !2680)
!2689 = !DILocation(line: 981, column: 10, scope: !2680)
!2690 = !DILocation(line: 981, column: 3, scope: !2680)
!2691 = distinct !DISubprogram(name: "quotearg_colon", scope: !116, file: !116, line: 985, type: !816, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2692 = !DILocalVariable(name: "arg", arg: 1, scope: !2691, file: !116, line: 985, type: !34)
!2693 = !DILocation(line: 985, column: 29, scope: !2691)
!2694 = !DILocation(line: 987, column: 25, scope: !2691)
!2695 = !DILocation(line: 987, column: 10, scope: !2691)
!2696 = !DILocation(line: 987, column: 3, scope: !2691)
!2697 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !116, file: !116, line: 991, type: !2574, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2698 = !DILocalVariable(name: "arg", arg: 1, scope: !2697, file: !116, line: 991, type: !34)
!2699 = !DILocation(line: 991, column: 33, scope: !2697)
!2700 = !DILocalVariable(name: "argsize", arg: 2, scope: !2697, file: !116, line: 991, type: !138)
!2701 = !DILocation(line: 991, column: 45, scope: !2697)
!2702 = !DILocation(line: 993, column: 29, scope: !2697)
!2703 = !DILocation(line: 993, column: 34, scope: !2697)
!2704 = !DILocation(line: 993, column: 10, scope: !2697)
!2705 = !DILocation(line: 993, column: 3, scope: !2697)
!2706 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !116, file: !116, line: 997, type: !2585, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2706, file: !116, line: 997, type: !25)
!2708 = !DILocation(line: 997, column: 29, scope: !2706)
!2709 = !DILocalVariable(name: "s", arg: 2, scope: !2706, file: !116, line: 997, type: !118)
!2710 = !DILocation(line: 997, column: 51, scope: !2706)
!2711 = !DILocalVariable(name: "arg", arg: 3, scope: !2706, file: !116, line: 997, type: !34)
!2712 = !DILocation(line: 997, column: 66, scope: !2706)
!2713 = !DILocalVariable(name: "options", scope: !2706, file: !116, line: 999, type: !150)
!2714 = !DILocation(line: 999, column: 26, scope: !2706)
!2715 = !DILocation(line: 1000, column: 41, scope: !2706)
!2716 = !DILocation(line: 1000, column: 13, scope: !2706)
!2717 = !DILocation(line: 1001, column: 3, scope: !2706)
!2718 = !DILocation(line: 1002, column: 30, scope: !2706)
!2719 = !DILocation(line: 1002, column: 33, scope: !2706)
!2720 = !DILocation(line: 1002, column: 10, scope: !2706)
!2721 = !DILocation(line: 1002, column: 3, scope: !2706)
!2722 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !116, file: !116, line: 1006, type: !2723, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!22, !25, !34, !34, !34}
!2725 = !DILocalVariable(name: "n", arg: 1, scope: !2722, file: !116, line: 1006, type: !25)
!2726 = !DILocation(line: 1006, column: 24, scope: !2722)
!2727 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2722, file: !116, line: 1006, type: !34)
!2728 = !DILocation(line: 1006, column: 39, scope: !2722)
!2729 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2722, file: !116, line: 1007, type: !34)
!2730 = !DILocation(line: 1007, column: 32, scope: !2722)
!2731 = !DILocalVariable(name: "arg", arg: 4, scope: !2722, file: !116, line: 1007, type: !34)
!2732 = !DILocation(line: 1007, column: 57, scope: !2722)
!2733 = !DILocation(line: 1009, column: 33, scope: !2722)
!2734 = !DILocation(line: 1009, column: 36, scope: !2722)
!2735 = !DILocation(line: 1009, column: 48, scope: !2722)
!2736 = !DILocation(line: 1009, column: 61, scope: !2722)
!2737 = !DILocation(line: 1009, column: 10, scope: !2722)
!2738 = !DILocation(line: 1009, column: 3, scope: !2722)
!2739 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !116, file: !116, line: 1014, type: !2740, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!22, !25, !34, !34, !34, !138}
!2742 = !DILocalVariable(name: "n", arg: 1, scope: !2739, file: !116, line: 1014, type: !25)
!2743 = !DILocation(line: 1014, column: 28, scope: !2739)
!2744 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2739, file: !116, line: 1014, type: !34)
!2745 = !DILocation(line: 1014, column: 43, scope: !2739)
!2746 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2739, file: !116, line: 1015, type: !34)
!2747 = !DILocation(line: 1015, column: 36, scope: !2739)
!2748 = !DILocalVariable(name: "arg", arg: 4, scope: !2739, file: !116, line: 1016, type: !34)
!2749 = !DILocation(line: 1016, column: 36, scope: !2739)
!2750 = !DILocalVariable(name: "argsize", arg: 5, scope: !2739, file: !116, line: 1016, type: !138)
!2751 = !DILocation(line: 1016, column: 48, scope: !2739)
!2752 = !DILocalVariable(name: "o", scope: !2739, file: !116, line: 1018, type: !150)
!2753 = !DILocation(line: 1018, column: 26, scope: !2739)
!2754 = !DILocation(line: 1018, column: 30, scope: !2739)
!2755 = !DILocation(line: 1019, column: 27, scope: !2739)
!2756 = !DILocation(line: 1019, column: 39, scope: !2739)
!2757 = !DILocation(line: 1019, column: 3, scope: !2739)
!2758 = !DILocation(line: 1020, column: 30, scope: !2739)
!2759 = !DILocation(line: 1020, column: 33, scope: !2739)
!2760 = !DILocation(line: 1020, column: 38, scope: !2739)
!2761 = !DILocation(line: 1020, column: 10, scope: !2739)
!2762 = !DILocation(line: 1020, column: 3, scope: !2739)
!2763 = distinct !DISubprogram(name: "quotearg_custom", scope: !116, file: !116, line: 1024, type: !2764, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!22, !34, !34, !34}
!2766 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2763, file: !116, line: 1024, type: !34)
!2767 = !DILocation(line: 1024, column: 30, scope: !2763)
!2768 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2763, file: !116, line: 1024, type: !34)
!2769 = !DILocation(line: 1024, column: 54, scope: !2763)
!2770 = !DILocalVariable(name: "arg", arg: 3, scope: !2763, file: !116, line: 1025, type: !34)
!2771 = !DILocation(line: 1025, column: 30, scope: !2763)
!2772 = !DILocation(line: 1027, column: 32, scope: !2763)
!2773 = !DILocation(line: 1027, column: 44, scope: !2763)
!2774 = !DILocation(line: 1027, column: 57, scope: !2763)
!2775 = !DILocation(line: 1027, column: 10, scope: !2763)
!2776 = !DILocation(line: 1027, column: 3, scope: !2763)
!2777 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !116, file: !116, line: 1031, type: !2778, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!22, !34, !34, !34, !138}
!2780 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2777, file: !116, line: 1031, type: !34)
!2781 = !DILocation(line: 1031, column: 34, scope: !2777)
!2782 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2777, file: !116, line: 1031, type: !34)
!2783 = !DILocation(line: 1031, column: 58, scope: !2777)
!2784 = !DILocalVariable(name: "arg", arg: 3, scope: !2777, file: !116, line: 1032, type: !34)
!2785 = !DILocation(line: 1032, column: 34, scope: !2777)
!2786 = !DILocalVariable(name: "argsize", arg: 4, scope: !2777, file: !116, line: 1032, type: !138)
!2787 = !DILocation(line: 1032, column: 46, scope: !2777)
!2788 = !DILocation(line: 1034, column: 36, scope: !2777)
!2789 = !DILocation(line: 1034, column: 48, scope: !2777)
!2790 = !DILocation(line: 1034, column: 61, scope: !2777)
!2791 = !DILocation(line: 1035, column: 33, scope: !2777)
!2792 = !DILocation(line: 1034, column: 10, scope: !2777)
!2793 = !DILocation(line: 1034, column: 3, scope: !2777)
!2794 = distinct !DISubprogram(name: "quote_n_mem", scope: !116, file: !116, line: 1049, type: !2795, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!34, !25, !34, !138}
!2797 = !DILocalVariable(name: "n", arg: 1, scope: !2794, file: !116, line: 1049, type: !25)
!2798 = !DILocation(line: 1049, column: 18, scope: !2794)
!2799 = !DILocalVariable(name: "arg", arg: 2, scope: !2794, file: !116, line: 1049, type: !34)
!2800 = !DILocation(line: 1049, column: 33, scope: !2794)
!2801 = !DILocalVariable(name: "argsize", arg: 3, scope: !2794, file: !116, line: 1049, type: !138)
!2802 = !DILocation(line: 1049, column: 45, scope: !2794)
!2803 = !DILocation(line: 1051, column: 30, scope: !2794)
!2804 = !DILocation(line: 1051, column: 33, scope: !2794)
!2805 = !DILocation(line: 1051, column: 38, scope: !2794)
!2806 = !DILocation(line: 1051, column: 10, scope: !2794)
!2807 = !DILocation(line: 1051, column: 3, scope: !2794)
!2808 = distinct !DISubprogram(name: "quote_mem", scope: !116, file: !116, line: 1055, type: !2809, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!34, !34, !138}
!2811 = !DILocalVariable(name: "arg", arg: 1, scope: !2808, file: !116, line: 1055, type: !34)
!2812 = !DILocation(line: 1055, column: 24, scope: !2808)
!2813 = !DILocalVariable(name: "argsize", arg: 2, scope: !2808, file: !116, line: 1055, type: !138)
!2814 = !DILocation(line: 1055, column: 36, scope: !2808)
!2815 = !DILocation(line: 1057, column: 26, scope: !2808)
!2816 = !DILocation(line: 1057, column: 31, scope: !2808)
!2817 = !DILocation(line: 1057, column: 10, scope: !2808)
!2818 = !DILocation(line: 1057, column: 3, scope: !2808)
!2819 = distinct !DISubprogram(name: "quote_n", scope: !116, file: !116, line: 1061, type: !2820, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!34, !25, !34}
!2822 = !DILocalVariable(name: "n", arg: 1, scope: !2819, file: !116, line: 1061, type: !25)
!2823 = !DILocation(line: 1061, column: 14, scope: !2819)
!2824 = !DILocalVariable(name: "arg", arg: 2, scope: !2819, file: !116, line: 1061, type: !34)
!2825 = !DILocation(line: 1061, column: 29, scope: !2819)
!2826 = !DILocation(line: 1063, column: 23, scope: !2819)
!2827 = !DILocation(line: 1063, column: 26, scope: !2819)
!2828 = !DILocation(line: 1063, column: 10, scope: !2819)
!2829 = !DILocation(line: 1063, column: 3, scope: !2819)
!2830 = distinct !DISubprogram(name: "quote", scope: !116, file: !116, line: 1067, type: !2831, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !36)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!34, !34}
!2833 = !DILocalVariable(name: "arg", arg: 1, scope: !2830, file: !116, line: 1067, type: !34)
!2834 = !DILocation(line: 1067, column: 20, scope: !2830)
!2835 = !DILocation(line: 1069, column: 22, scope: !2830)
!2836 = !DILocation(line: 1069, column: 10, scope: !2830)
!2837 = !DILocation(line: 1069, column: 3, scope: !2830)
!2838 = distinct !DISubprogram(name: "streq", scope: !2839, file: !2839, line: 1359, type: !2840, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !231, retainedNodes: !36)
!2839 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!61, !34, !34}
!2842 = !DILocalVariable(name: "__s1", arg: 1, scope: !2838, file: !2839, line: 1359, type: !34)
!2843 = !DILocation(line: 1359, column: 20, scope: !2838)
!2844 = !DILocalVariable(name: "__s2", arg: 2, scope: !2838, file: !2839, line: 1359, type: !34)
!2845 = !DILocation(line: 1359, column: 38, scope: !2838)
!2846 = !DILocation(line: 1361, column: 19, scope: !2838)
!2847 = !DILocation(line: 1361, column: 25, scope: !2838)
!2848 = !DILocation(line: 1361, column: 11, scope: !2838)
!2849 = !DILocation(line: 1361, column: 10, scope: !2838)
!2850 = !DILocation(line: 1361, column: 3, scope: !2838)
!2851 = distinct !DISubprogram(name: "version_etc_arn", scope: !234, file: !234, line: 61, type: !2852, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !233, retainedNodes: !36)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{null, !2854, !34, !34, !34, !2907, !138}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2856, line: 7, baseType: !2857)
!2856 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2858, line: 49, size: 1728, elements: !2859)
!2858 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2859 = !{!2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2875, !2877, !2878, !2879, !2881, !2882, !2884, !2888, !2891, !2893, !2896, !2899, !2900, !2901, !2902, !2903}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2857, file: !2858, line: 51, baseType: !25, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2857, file: !2858, line: 54, baseType: !22, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2857, file: !2858, line: 55, baseType: !22, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2857, file: !2858, line: 56, baseType: !22, size: 64, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2857, file: !2858, line: 57, baseType: !22, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2857, file: !2858, line: 58, baseType: !22, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2857, file: !2858, line: 59, baseType: !22, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2857, file: !2858, line: 60, baseType: !22, size: 64, offset: 448)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2857, file: !2858, line: 61, baseType: !22, size: 64, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2857, file: !2858, line: 64, baseType: !22, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2857, file: !2858, line: 65, baseType: !22, size: 64, offset: 640)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2857, file: !2858, line: 66, baseType: !22, size: 64, offset: 704)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2857, file: !2858, line: 68, baseType: !2873, size: 64, offset: 768)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2858, line: 36, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2857, file: !2858, line: 70, baseType: !2876, size: 64, offset: 832)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2857, file: !2858, line: 72, baseType: !25, size: 32, offset: 896)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2857, file: !2858, line: 73, baseType: !25, size: 32, offset: 928)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2857, file: !2858, line: 74, baseType: !2880, size: 64, offset: 960)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1154, line: 152, baseType: !257)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2857, file: !2858, line: 77, baseType: !26, size: 16, offset: 1024)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2857, file: !2858, line: 78, baseType: !2883, size: 8, offset: 1040)
!2883 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2857, file: !2858, line: 79, baseType: !2885, size: 8, offset: 1048)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !2886)
!2886 = !{!2887}
!2887 = !DISubrange(count: 1)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2857, file: !2858, line: 81, baseType: !2889, size: 64, offset: 1088)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2858, line: 43, baseType: null)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2857, file: !2858, line: 89, baseType: !2892, size: 64, offset: 1152)
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1154, line: 153, baseType: !257)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2857, file: !2858, line: 91, baseType: !2894, size: 64, offset: 1216)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2858, line: 37, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2857, file: !2858, line: 92, baseType: !2897, size: 64, offset: 1280)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2858, line: 38, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2857, file: !2858, line: 93, baseType: !2876, size: 64, offset: 1344)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2857, file: !2858, line: 94, baseType: !24, size: 64, offset: 1408)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2857, file: !2858, line: 95, baseType: !138, size: 64, offset: 1472)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2857, file: !2858, line: 96, baseType: !25, size: 32, offset: 1536)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2857, file: !2858, line: 98, baseType: !2904, size: 160, offset: 1568)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !2905)
!2905 = !{!2906}
!2906 = !DISubrange(count: 20)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!2908 = !DILocalVariable(name: "stream", arg: 1, scope: !2851, file: !234, line: 61, type: !2854)
!2909 = !DILocation(line: 61, column: 24, scope: !2851)
!2910 = !DILocalVariable(name: "command_name", arg: 2, scope: !2851, file: !234, line: 62, type: !34)
!2911 = !DILocation(line: 62, column: 30, scope: !2851)
!2912 = !DILocalVariable(name: "package", arg: 3, scope: !2851, file: !234, line: 62, type: !34)
!2913 = !DILocation(line: 62, column: 56, scope: !2851)
!2914 = !DILocalVariable(name: "version", arg: 4, scope: !2851, file: !234, line: 63, type: !34)
!2915 = !DILocation(line: 63, column: 30, scope: !2851)
!2916 = !DILocalVariable(name: "authors", arg: 5, scope: !2851, file: !234, line: 64, type: !2907)
!2917 = !DILocation(line: 64, column: 39, scope: !2851)
!2918 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2851, file: !234, line: 64, type: !138)
!2919 = !DILocation(line: 64, column: 55, scope: !2851)
!2920 = !DILocation(line: 66, column: 7, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2851, file: !234, line: 66, column: 7)
!2922 = !DILocation(line: 66, column: 7, scope: !2851)
!2923 = !DILocation(line: 67, column: 14, scope: !2921)
!2924 = !DILocation(line: 67, column: 38, scope: !2921)
!2925 = !DILocation(line: 67, column: 52, scope: !2921)
!2926 = !DILocation(line: 67, column: 61, scope: !2921)
!2927 = !DILocation(line: 67, column: 5, scope: !2921)
!2928 = !DILocation(line: 69, column: 14, scope: !2921)
!2929 = !DILocation(line: 69, column: 33, scope: !2921)
!2930 = !DILocation(line: 69, column: 42, scope: !2921)
!2931 = !DILocation(line: 69, column: 5, scope: !2921)
!2932 = !DILocation(line: 83, column: 12, scope: !2851)
!2933 = !DILocation(line: 83, column: 43, scope: !2851)
!2934 = !DILocation(line: 83, column: 3, scope: !2851)
!2935 = !DILocation(line: 85, column: 3, scope: !2851)
!2936 = !DILocation(line: 88, column: 12, scope: !2851)
!2937 = !DILocation(line: 88, column: 20, scope: !2851)
!2938 = !DILocation(line: 88, column: 3, scope: !2851)
!2939 = !DILocation(line: 95, column: 3, scope: !2851)
!2940 = !DILocation(line: 97, column: 11, scope: !2851)
!2941 = !DILocation(line: 97, column: 3, scope: !2851)
!2942 = !DILocation(line: 102, column: 7, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2851, file: !234, line: 98, column: 5)
!2944 = !DILocation(line: 105, column: 16, scope: !2943)
!2945 = !DILocation(line: 105, column: 24, scope: !2943)
!2946 = !DILocation(line: 105, column: 47, scope: !2943)
!2947 = !DILocation(line: 105, column: 7, scope: !2943)
!2948 = !DILocation(line: 106, column: 7, scope: !2943)
!2949 = !DILocation(line: 109, column: 16, scope: !2943)
!2950 = !DILocation(line: 109, column: 24, scope: !2943)
!2951 = !DILocation(line: 109, column: 54, scope: !2943)
!2952 = !DILocation(line: 109, column: 66, scope: !2943)
!2953 = !DILocation(line: 109, column: 7, scope: !2943)
!2954 = !DILocation(line: 110, column: 7, scope: !2943)
!2955 = !DILocation(line: 113, column: 16, scope: !2943)
!2956 = !DILocation(line: 113, column: 24, scope: !2943)
!2957 = !DILocation(line: 114, column: 16, scope: !2943)
!2958 = !DILocation(line: 114, column: 28, scope: !2943)
!2959 = !DILocation(line: 114, column: 40, scope: !2943)
!2960 = !DILocation(line: 113, column: 7, scope: !2943)
!2961 = !DILocation(line: 115, column: 7, scope: !2943)
!2962 = !DILocation(line: 120, column: 16, scope: !2943)
!2963 = !DILocation(line: 120, column: 24, scope: !2943)
!2964 = !DILocation(line: 121, column: 16, scope: !2943)
!2965 = !DILocation(line: 121, column: 28, scope: !2943)
!2966 = !DILocation(line: 121, column: 40, scope: !2943)
!2967 = !DILocation(line: 121, column: 52, scope: !2943)
!2968 = !DILocation(line: 120, column: 7, scope: !2943)
!2969 = !DILocation(line: 122, column: 7, scope: !2943)
!2970 = !DILocation(line: 127, column: 16, scope: !2943)
!2971 = !DILocation(line: 127, column: 24, scope: !2943)
!2972 = !DILocation(line: 128, column: 16, scope: !2943)
!2973 = !DILocation(line: 128, column: 28, scope: !2943)
!2974 = !DILocation(line: 128, column: 40, scope: !2943)
!2975 = !DILocation(line: 128, column: 52, scope: !2943)
!2976 = !DILocation(line: 128, column: 64, scope: !2943)
!2977 = !DILocation(line: 127, column: 7, scope: !2943)
!2978 = !DILocation(line: 129, column: 7, scope: !2943)
!2979 = !DILocation(line: 134, column: 16, scope: !2943)
!2980 = !DILocation(line: 134, column: 24, scope: !2943)
!2981 = !DILocation(line: 135, column: 16, scope: !2943)
!2982 = !DILocation(line: 135, column: 28, scope: !2943)
!2983 = !DILocation(line: 135, column: 40, scope: !2943)
!2984 = !DILocation(line: 135, column: 52, scope: !2943)
!2985 = !DILocation(line: 135, column: 64, scope: !2943)
!2986 = !DILocation(line: 136, column: 16, scope: !2943)
!2987 = !DILocation(line: 134, column: 7, scope: !2943)
!2988 = !DILocation(line: 137, column: 7, scope: !2943)
!2989 = !DILocation(line: 142, column: 16, scope: !2943)
!2990 = !DILocation(line: 142, column: 24, scope: !2943)
!2991 = !DILocation(line: 143, column: 16, scope: !2943)
!2992 = !DILocation(line: 143, column: 28, scope: !2943)
!2993 = !DILocation(line: 143, column: 40, scope: !2943)
!2994 = !DILocation(line: 143, column: 52, scope: !2943)
!2995 = !DILocation(line: 143, column: 64, scope: !2943)
!2996 = !DILocation(line: 144, column: 16, scope: !2943)
!2997 = !DILocation(line: 144, column: 28, scope: !2943)
!2998 = !DILocation(line: 142, column: 7, scope: !2943)
!2999 = !DILocation(line: 145, column: 7, scope: !2943)
!3000 = !DILocation(line: 150, column: 16, scope: !2943)
!3001 = !DILocation(line: 150, column: 24, scope: !2943)
!3002 = !DILocation(line: 152, column: 17, scope: !2943)
!3003 = !DILocation(line: 152, column: 29, scope: !2943)
!3004 = !DILocation(line: 152, column: 41, scope: !2943)
!3005 = !DILocation(line: 152, column: 53, scope: !2943)
!3006 = !DILocation(line: 152, column: 65, scope: !2943)
!3007 = !DILocation(line: 153, column: 17, scope: !2943)
!3008 = !DILocation(line: 153, column: 29, scope: !2943)
!3009 = !DILocation(line: 153, column: 41, scope: !2943)
!3010 = !DILocation(line: 150, column: 7, scope: !2943)
!3011 = !DILocation(line: 154, column: 7, scope: !2943)
!3012 = !DILocation(line: 159, column: 16, scope: !2943)
!3013 = !DILocation(line: 159, column: 24, scope: !2943)
!3014 = !DILocation(line: 161, column: 16, scope: !2943)
!3015 = !DILocation(line: 161, column: 28, scope: !2943)
!3016 = !DILocation(line: 161, column: 40, scope: !2943)
!3017 = !DILocation(line: 161, column: 52, scope: !2943)
!3018 = !DILocation(line: 161, column: 64, scope: !2943)
!3019 = !DILocation(line: 162, column: 16, scope: !2943)
!3020 = !DILocation(line: 162, column: 28, scope: !2943)
!3021 = !DILocation(line: 162, column: 40, scope: !2943)
!3022 = !DILocation(line: 162, column: 52, scope: !2943)
!3023 = !DILocation(line: 159, column: 7, scope: !2943)
!3024 = !DILocation(line: 163, column: 7, scope: !2943)
!3025 = !DILocation(line: 170, column: 16, scope: !2943)
!3026 = !DILocation(line: 170, column: 24, scope: !2943)
!3027 = !DILocation(line: 172, column: 17, scope: !2943)
!3028 = !DILocation(line: 172, column: 29, scope: !2943)
!3029 = !DILocation(line: 172, column: 41, scope: !2943)
!3030 = !DILocation(line: 172, column: 53, scope: !2943)
!3031 = !DILocation(line: 172, column: 65, scope: !2943)
!3032 = !DILocation(line: 173, column: 17, scope: !2943)
!3033 = !DILocation(line: 173, column: 29, scope: !2943)
!3034 = !DILocation(line: 173, column: 41, scope: !2943)
!3035 = !DILocation(line: 173, column: 53, scope: !2943)
!3036 = !DILocation(line: 170, column: 7, scope: !2943)
!3037 = !DILocation(line: 174, column: 7, scope: !2943)
!3038 = !DILocation(line: 176, column: 1, scope: !2851)
!3039 = distinct !DISubprogram(name: "version_etc_ar", scope: !234, file: !234, line: 183, type: !3040, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !233, retainedNodes: !36)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !2854, !34, !34, !34, !2907}
!3042 = !DILocalVariable(name: "stream", arg: 1, scope: !3039, file: !234, line: 183, type: !2854)
!3043 = !DILocation(line: 183, column: 23, scope: !3039)
!3044 = !DILocalVariable(name: "command_name", arg: 2, scope: !3039, file: !234, line: 184, type: !34)
!3045 = !DILocation(line: 184, column: 29, scope: !3039)
!3046 = !DILocalVariable(name: "package", arg: 3, scope: !3039, file: !234, line: 184, type: !34)
!3047 = !DILocation(line: 184, column: 55, scope: !3039)
!3048 = !DILocalVariable(name: "version", arg: 4, scope: !3039, file: !234, line: 185, type: !34)
!3049 = !DILocation(line: 185, column: 29, scope: !3039)
!3050 = !DILocalVariable(name: "authors", arg: 5, scope: !3039, file: !234, line: 185, type: !2907)
!3051 = !DILocation(line: 185, column: 59, scope: !3039)
!3052 = !DILocalVariable(name: "n_authors", scope: !3039, file: !234, line: 187, type: !138)
!3053 = !DILocation(line: 187, column: 10, scope: !3039)
!3054 = !DILocation(line: 189, column: 18, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3039, file: !234, line: 189, column: 3)
!3056 = !DILocation(line: 189, column: 8, scope: !3055)
!3057 = !DILocation(line: 189, column: 23, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3055, file: !234, line: 189, column: 3)
!3059 = !DILocation(line: 189, column: 31, scope: !3058)
!3060 = !DILocation(line: 189, column: 3, scope: !3055)
!3061 = !DILocation(line: 189, column: 52, scope: !3058)
!3062 = !DILocation(line: 189, column: 3, scope: !3058)
!3063 = distinct !{!3063, !3060, !3064, !409}
!3064 = !DILocation(line: 190, column: 5, scope: !3055)
!3065 = !DILocation(line: 191, column: 20, scope: !3039)
!3066 = !DILocation(line: 191, column: 28, scope: !3039)
!3067 = !DILocation(line: 191, column: 42, scope: !3039)
!3068 = !DILocation(line: 191, column: 51, scope: !3039)
!3069 = !DILocation(line: 191, column: 60, scope: !3039)
!3070 = !DILocation(line: 191, column: 69, scope: !3039)
!3071 = !DILocation(line: 191, column: 3, scope: !3039)
!3072 = !DILocation(line: 192, column: 1, scope: !3039)
!3073 = distinct !DISubprogram(name: "version_etc_va", scope: !234, file: !234, line: 199, type: !3074, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !233, retainedNodes: !36)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{null, !2854, !34, !34, !34, !3076}
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !74, line: 52, baseType: !3077)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !76, line: 32, baseType: !3078)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3079, baseType: !3080)
!3079 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !80, size: 256, elements: !3081)
!3081 = !{!3082, !3083, !3084, !3085, !3086}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3080, file: !3079, line: 192, baseType: !24, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3080, file: !3079, line: 192, baseType: !24, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3080, file: !3079, line: 192, baseType: !24, size: 64, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3080, file: !3079, line: 192, baseType: !25, size: 32, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3080, file: !3079, line: 192, baseType: !25, size: 32, offset: 224)
!3087 = !DILocalVariable(name: "stream", arg: 1, scope: !3073, file: !234, line: 199, type: !2854)
!3088 = !DILocation(line: 199, column: 23, scope: !3073)
!3089 = !DILocalVariable(name: "command_name", arg: 2, scope: !3073, file: !234, line: 200, type: !34)
!3090 = !DILocation(line: 200, column: 29, scope: !3073)
!3091 = !DILocalVariable(name: "package", arg: 3, scope: !3073, file: !234, line: 200, type: !34)
!3092 = !DILocation(line: 200, column: 55, scope: !3073)
!3093 = !DILocalVariable(name: "version", arg: 4, scope: !3073, file: !234, line: 201, type: !34)
!3094 = !DILocation(line: 201, column: 29, scope: !3073)
!3095 = !DILocalVariable(name: "authors", arg: 5, scope: !3073, file: !234, line: 201, type: !3076)
!3096 = !DILocation(line: 201, column: 46, scope: !3073)
!3097 = !DILocalVariable(name: "n_authors", scope: !3073, file: !234, line: 203, type: !138)
!3098 = !DILocation(line: 203, column: 10, scope: !3073)
!3099 = !DILocalVariable(name: "authtab", scope: !3073, file: !234, line: 204, type: !3100)
!3100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 640, elements: !146)
!3101 = !DILocation(line: 204, column: 15, scope: !3073)
!3102 = !DILocation(line: 206, column: 18, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3073, file: !234, line: 206, column: 3)
!3104 = !DILocation(line: 206, column: 8, scope: !3103)
!3105 = !DILocation(line: 207, column: 8, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3103, file: !234, line: 206, column: 3)
!3107 = !DILocation(line: 207, column: 18, scope: !3106)
!3108 = !DILocation(line: 208, column: 10, scope: !3106)
!3109 = !DILocation(line: 208, column: 35, scope: !3106)
!3110 = !DILocation(line: 208, column: 22, scope: !3106)
!3111 = !DILocation(line: 208, column: 14, scope: !3106)
!3112 = !DILocation(line: 208, column: 33, scope: !3106)
!3113 = !DILocation(line: 208, column: 67, scope: !3106)
!3114 = !DILocation(line: 0, scope: !3106)
!3115 = !DILocation(line: 206, column: 3, scope: !3103)
!3116 = !DILocation(line: 209, column: 17, scope: !3106)
!3117 = !DILocation(line: 206, column: 3, scope: !3106)
!3118 = distinct !{!3118, !3115, !3119, !409}
!3119 = !DILocation(line: 210, column: 5, scope: !3103)
!3120 = !DILocation(line: 211, column: 20, scope: !3073)
!3121 = !DILocation(line: 211, column: 28, scope: !3073)
!3122 = !DILocation(line: 211, column: 42, scope: !3073)
!3123 = !DILocation(line: 211, column: 51, scope: !3073)
!3124 = !DILocation(line: 212, column: 20, scope: !3073)
!3125 = !DILocation(line: 212, column: 29, scope: !3073)
!3126 = !DILocation(line: 211, column: 3, scope: !3073)
!3127 = !DILocation(line: 213, column: 1, scope: !3073)
!3128 = distinct !DISubprogram(name: "version_etc", scope: !234, file: !234, line: 230, type: !3129, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !233, retainedNodes: !36)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{null, !2854, !34, !34, !34, null}
!3131 = !DILocalVariable(name: "stream", arg: 1, scope: !3128, file: !234, line: 230, type: !2854)
!3132 = !DILocation(line: 230, column: 20, scope: !3128)
!3133 = !DILocalVariable(name: "command_name", arg: 2, scope: !3128, file: !234, line: 231, type: !34)
!3134 = !DILocation(line: 231, column: 26, scope: !3128)
!3135 = !DILocalVariable(name: "package", arg: 3, scope: !3128, file: !234, line: 231, type: !34)
!3136 = !DILocation(line: 231, column: 52, scope: !3128)
!3137 = !DILocalVariable(name: "version", arg: 4, scope: !3128, file: !234, line: 232, type: !34)
!3138 = !DILocation(line: 232, column: 26, scope: !3128)
!3139 = !DILocalVariable(name: "authors", scope: !3128, file: !234, line: 234, type: !3076)
!3140 = !DILocation(line: 234, column: 11, scope: !3128)
!3141 = !DILocation(line: 235, column: 3, scope: !3128)
!3142 = !DILocation(line: 236, column: 19, scope: !3128)
!3143 = !DILocation(line: 236, column: 27, scope: !3128)
!3144 = !DILocation(line: 236, column: 41, scope: !3128)
!3145 = !DILocation(line: 236, column: 50, scope: !3128)
!3146 = !DILocation(line: 236, column: 3, scope: !3128)
!3147 = !DILocation(line: 237, column: 3, scope: !3128)
!3148 = !DILocation(line: 238, column: 1, scope: !3128)
!3149 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !234, file: !234, line: 241, type: !94, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !233, retainedNodes: !36)
!3150 = !DILocation(line: 243, column: 3, scope: !3149)
!3151 = !DILocation(line: 248, column: 11, scope: !3149)
!3152 = !DILocation(line: 248, column: 3, scope: !3149)
!3153 = !DILocation(line: 254, column: 11, scope: !3149)
!3154 = !DILocation(line: 254, column: 3, scope: !3149)
!3155 = !DILocation(line: 259, column: 11, scope: !3149)
!3156 = !DILocation(line: 259, column: 3, scope: !3149)
!3157 = !DILocation(line: 261, column: 1, scope: !3149)
!3158 = distinct !DISubprogram(name: "xnrealloc", scope: !3159, file: !3159, line: 147, type: !3160, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3159 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!24, !24, !138, !138}
!3162 = !DILocalVariable(name: "p", arg: 1, scope: !3158, file: !3159, line: 147, type: !24)
!3163 = !DILocation(line: 147, column: 18, scope: !3158)
!3164 = !DILocalVariable(name: "n", arg: 2, scope: !3158, file: !3159, line: 147, type: !138)
!3165 = !DILocation(line: 147, column: 28, scope: !3158)
!3166 = !DILocalVariable(name: "s", arg: 3, scope: !3158, file: !3159, line: 147, type: !138)
!3167 = !DILocation(line: 147, column: 38, scope: !3158)
!3168 = !DILocation(line: 149, column: 25, scope: !3158)
!3169 = !DILocation(line: 149, column: 28, scope: !3158)
!3170 = !DILocation(line: 149, column: 31, scope: !3158)
!3171 = !DILocation(line: 149, column: 10, scope: !3158)
!3172 = !DILocation(line: 149, column: 3, scope: !3158)
!3173 = distinct !DISubprogram(name: "xreallocarray", scope: !240, file: !240, line: 83, type: !3160, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3174 = !DILocalVariable(name: "p", arg: 1, scope: !3173, file: !240, line: 83, type: !24)
!3175 = !DILocation(line: 83, column: 22, scope: !3173)
!3176 = !DILocalVariable(name: "n", arg: 2, scope: !3173, file: !240, line: 83, type: !138)
!3177 = !DILocation(line: 83, column: 32, scope: !3173)
!3178 = !DILocalVariable(name: "s", arg: 3, scope: !3173, file: !240, line: 83, type: !138)
!3179 = !DILocation(line: 83, column: 42, scope: !3173)
!3180 = !DILocation(line: 85, column: 39, scope: !3173)
!3181 = !DILocation(line: 85, column: 42, scope: !3173)
!3182 = !DILocation(line: 85, column: 45, scope: !3173)
!3183 = !DILocation(line: 85, column: 25, scope: !3173)
!3184 = !DILocation(line: 85, column: 10, scope: !3173)
!3185 = !DILocation(line: 85, column: 3, scope: !3173)
!3186 = distinct !DISubprogram(name: "check_nonnull", scope: !240, file: !240, line: 37, type: !3187, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!24, !24}
!3189 = !DILocalVariable(name: "p", arg: 1, scope: !3186, file: !240, line: 37, type: !24)
!3190 = !DILocation(line: 37, column: 22, scope: !3186)
!3191 = !DILocation(line: 39, column: 8, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3186, file: !240, line: 39, column: 7)
!3193 = !DILocation(line: 39, column: 7, scope: !3186)
!3194 = !DILocation(line: 40, column: 5, scope: !3192)
!3195 = !DILocation(line: 41, column: 10, scope: !3186)
!3196 = !DILocation(line: 41, column: 3, scope: !3186)
!3197 = distinct !DISubprogram(name: "xmalloc", scope: !240, file: !240, line: 47, type: !3198, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!24, !138}
!3200 = !DILocalVariable(name: "s", arg: 1, scope: !3197, file: !240, line: 47, type: !138)
!3201 = !DILocation(line: 47, column: 17, scope: !3197)
!3202 = !DILocation(line: 49, column: 33, scope: !3197)
!3203 = !DILocation(line: 49, column: 25, scope: !3197)
!3204 = !DILocation(line: 49, column: 10, scope: !3197)
!3205 = !DILocation(line: 49, column: 3, scope: !3197)
!3206 = distinct !DISubprogram(name: "ximalloc", scope: !240, file: !240, line: 53, type: !3207, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!24, !254}
!3209 = !DILocalVariable(name: "s", arg: 1, scope: !3206, file: !240, line: 53, type: !254)
!3210 = !DILocation(line: 53, column: 17, scope: !3206)
!3211 = !DILocation(line: 55, column: 34, scope: !3206)
!3212 = !DILocation(line: 55, column: 25, scope: !3206)
!3213 = !DILocation(line: 55, column: 10, scope: !3206)
!3214 = !DILocation(line: 55, column: 3, scope: !3206)
!3215 = distinct !DISubprogram(name: "xcharalloc", scope: !240, file: !240, line: 59, type: !3216, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!22, !138}
!3218 = !DILocalVariable(name: "n", arg: 1, scope: !3215, file: !240, line: 59, type: !138)
!3219 = !DILocation(line: 59, column: 20, scope: !3215)
!3220 = !DILocation(line: 61, column: 10, scope: !3215)
!3221 = !DILocation(line: 61, column: 3, scope: !3215)
!3222 = distinct !DISubprogram(name: "xrealloc", scope: !240, file: !240, line: 68, type: !3223, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!24, !24, !138}
!3225 = !DILocalVariable(name: "p", arg: 1, scope: !3222, file: !240, line: 68, type: !24)
!3226 = !DILocation(line: 68, column: 17, scope: !3222)
!3227 = !DILocalVariable(name: "s", arg: 2, scope: !3222, file: !240, line: 68, type: !138)
!3228 = !DILocation(line: 68, column: 27, scope: !3222)
!3229 = !DILocation(line: 70, column: 34, scope: !3222)
!3230 = !DILocation(line: 70, column: 37, scope: !3222)
!3231 = !DILocation(line: 70, column: 25, scope: !3222)
!3232 = !DILocation(line: 70, column: 10, scope: !3222)
!3233 = !DILocation(line: 70, column: 3, scope: !3222)
!3234 = distinct !DISubprogram(name: "xirealloc", scope: !240, file: !240, line: 74, type: !3235, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!24, !24, !254}
!3237 = !DILocalVariable(name: "p", arg: 1, scope: !3234, file: !240, line: 74, type: !24)
!3238 = !DILocation(line: 74, column: 18, scope: !3234)
!3239 = !DILocalVariable(name: "s", arg: 2, scope: !3234, file: !240, line: 74, type: !254)
!3240 = !DILocation(line: 74, column: 27, scope: !3234)
!3241 = !DILocation(line: 76, column: 35, scope: !3234)
!3242 = !DILocation(line: 76, column: 38, scope: !3234)
!3243 = !DILocation(line: 76, column: 25, scope: !3234)
!3244 = !DILocation(line: 76, column: 10, scope: !3234)
!3245 = !DILocation(line: 76, column: 3, scope: !3234)
!3246 = distinct !DISubprogram(name: "xireallocarray", scope: !240, file: !240, line: 89, type: !3247, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!24, !24, !254, !254}
!3249 = !DILocalVariable(name: "p", arg: 1, scope: !3246, file: !240, line: 89, type: !24)
!3250 = !DILocation(line: 89, column: 23, scope: !3246)
!3251 = !DILocalVariable(name: "n", arg: 2, scope: !3246, file: !240, line: 89, type: !254)
!3252 = !DILocation(line: 89, column: 32, scope: !3246)
!3253 = !DILocalVariable(name: "s", arg: 3, scope: !3246, file: !240, line: 89, type: !254)
!3254 = !DILocation(line: 89, column: 41, scope: !3246)
!3255 = !DILocation(line: 91, column: 40, scope: !3246)
!3256 = !DILocation(line: 91, column: 43, scope: !3246)
!3257 = !DILocation(line: 91, column: 46, scope: !3246)
!3258 = !DILocation(line: 91, column: 25, scope: !3246)
!3259 = !DILocation(line: 91, column: 10, scope: !3246)
!3260 = !DILocation(line: 91, column: 3, scope: !3246)
!3261 = distinct !DISubprogram(name: "xnmalloc", scope: !240, file: !240, line: 98, type: !3262, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!24, !138, !138}
!3264 = !DILocalVariable(name: "n", arg: 1, scope: !3261, file: !240, line: 98, type: !138)
!3265 = !DILocation(line: 98, column: 18, scope: !3261)
!3266 = !DILocalVariable(name: "s", arg: 2, scope: !3261, file: !240, line: 98, type: !138)
!3267 = !DILocation(line: 98, column: 28, scope: !3261)
!3268 = !DILocation(line: 100, column: 31, scope: !3261)
!3269 = !DILocation(line: 100, column: 34, scope: !3261)
!3270 = !DILocation(line: 100, column: 10, scope: !3261)
!3271 = !DILocation(line: 100, column: 3, scope: !3261)
!3272 = distinct !DISubprogram(name: "xinmalloc", scope: !240, file: !240, line: 104, type: !3273, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!24, !254, !254}
!3275 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !240, line: 104, type: !254)
!3276 = !DILocation(line: 104, column: 18, scope: !3272)
!3277 = !DILocalVariable(name: "s", arg: 2, scope: !3272, file: !240, line: 104, type: !254)
!3278 = !DILocation(line: 104, column: 27, scope: !3272)
!3279 = !DILocation(line: 106, column: 32, scope: !3272)
!3280 = !DILocation(line: 106, column: 35, scope: !3272)
!3281 = !DILocation(line: 106, column: 10, scope: !3272)
!3282 = !DILocation(line: 106, column: 3, scope: !3272)
!3283 = distinct !DISubprogram(name: "x2realloc", scope: !240, file: !240, line: 116, type: !3284, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!24, !24, !246}
!3286 = !DILocalVariable(name: "p", arg: 1, scope: !3283, file: !240, line: 116, type: !24)
!3287 = !DILocation(line: 116, column: 18, scope: !3283)
!3288 = !DILocalVariable(name: "ps", arg: 2, scope: !3283, file: !240, line: 116, type: !246)
!3289 = !DILocation(line: 116, column: 29, scope: !3283)
!3290 = !DILocation(line: 118, column: 22, scope: !3283)
!3291 = !DILocation(line: 118, column: 25, scope: !3283)
!3292 = !DILocation(line: 118, column: 10, scope: !3283)
!3293 = !DILocation(line: 118, column: 3, scope: !3283)
!3294 = !DILocalVariable(name: "p", arg: 1, scope: !243, file: !240, line: 176, type: !24)
!3295 = !DILocation(line: 176, column: 19, scope: !243)
!3296 = !DILocalVariable(name: "pn", arg: 2, scope: !243, file: !240, line: 176, type: !246)
!3297 = !DILocation(line: 176, column: 30, scope: !243)
!3298 = !DILocalVariable(name: "s", arg: 3, scope: !243, file: !240, line: 176, type: !138)
!3299 = !DILocation(line: 176, column: 41, scope: !243)
!3300 = !DILocalVariable(name: "n", scope: !243, file: !240, line: 178, type: !138)
!3301 = !DILocation(line: 178, column: 10, scope: !243)
!3302 = !DILocation(line: 178, column: 15, scope: !243)
!3303 = !DILocation(line: 178, column: 14, scope: !243)
!3304 = !DILocation(line: 180, column: 9, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !243, file: !240, line: 180, column: 7)
!3306 = !DILocation(line: 180, column: 7, scope: !243)
!3307 = !DILocation(line: 182, column: 13, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !240, line: 182, column: 11)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !240, line: 181, column: 5)
!3310 = !DILocation(line: 182, column: 11, scope: !3309)
!3311 = !DILocation(line: 190, column: 32, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3308, file: !240, line: 183, column: 9)
!3313 = !DILocation(line: 190, column: 30, scope: !3312)
!3314 = !DILocation(line: 190, column: 13, scope: !3312)
!3315 = !DILocation(line: 191, column: 17, scope: !3312)
!3316 = !DILocation(line: 191, column: 16, scope: !3312)
!3317 = !DILocation(line: 191, column: 13, scope: !3312)
!3318 = !DILocation(line: 192, column: 9, scope: !3312)
!3319 = !DILocation(line: 193, column: 5, scope: !3309)
!3320 = !DILocation(line: 197, column: 11, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !240, line: 197, column: 11)
!3322 = distinct !DILexicalBlock(scope: !3305, file: !240, line: 195, column: 5)
!3323 = !DILocation(line: 197, column: 11, scope: !3322)
!3324 = !DILocation(line: 198, column: 9, scope: !3321)
!3325 = !DILocation(line: 201, column: 22, scope: !243)
!3326 = !DILocation(line: 201, column: 25, scope: !243)
!3327 = !DILocation(line: 201, column: 28, scope: !243)
!3328 = !DILocation(line: 201, column: 7, scope: !243)
!3329 = !DILocation(line: 201, column: 5, scope: !243)
!3330 = !DILocation(line: 202, column: 9, scope: !243)
!3331 = !DILocation(line: 202, column: 4, scope: !243)
!3332 = !DILocation(line: 202, column: 7, scope: !243)
!3333 = !DILocation(line: 203, column: 10, scope: !243)
!3334 = !DILocation(line: 203, column: 3, scope: !243)
!3335 = !DILocalVariable(name: "pa", arg: 1, scope: !250, file: !240, line: 223, type: !24)
!3336 = !DILocation(line: 223, column: 16, scope: !250)
!3337 = !DILocalVariable(name: "pn", arg: 2, scope: !250, file: !240, line: 223, type: !253)
!3338 = !DILocation(line: 223, column: 27, scope: !250)
!3339 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !250, file: !240, line: 223, type: !254)
!3340 = !DILocation(line: 223, column: 37, scope: !250)
!3341 = !DILocalVariable(name: "n_max", arg: 4, scope: !250, file: !240, line: 223, type: !256)
!3342 = !DILocation(line: 223, column: 59, scope: !250)
!3343 = !DILocalVariable(name: "s", arg: 5, scope: !250, file: !240, line: 223, type: !254)
!3344 = !DILocation(line: 223, column: 72, scope: !250)
!3345 = !DILocalVariable(name: "n0", scope: !250, file: !240, line: 230, type: !254)
!3346 = !DILocation(line: 230, column: 9, scope: !250)
!3347 = !DILocation(line: 230, column: 15, scope: !250)
!3348 = !DILocation(line: 230, column: 14, scope: !250)
!3349 = !DILocalVariable(name: "n", scope: !250, file: !240, line: 237, type: !254)
!3350 = !DILocation(line: 237, column: 9, scope: !250)
!3351 = !DILocation(line: 238, column: 7, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !250, file: !240, line: 238, column: 7)
!3353 = !DILocation(line: 238, column: 7, scope: !250)
!3354 = !DILocation(line: 239, column: 7, scope: !3352)
!3355 = !DILocation(line: 239, column: 5, scope: !3352)
!3356 = !DILocation(line: 240, column: 12, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !250, file: !240, line: 240, column: 7)
!3358 = !DILocation(line: 240, column: 9, scope: !3357)
!3359 = !DILocation(line: 240, column: 18, scope: !3357)
!3360 = !DILocation(line: 240, column: 21, scope: !3357)
!3361 = !DILocation(line: 240, column: 29, scope: !3357)
!3362 = !DILocation(line: 240, column: 27, scope: !3357)
!3363 = !DILocation(line: 240, column: 7, scope: !250)
!3364 = !DILocation(line: 241, column: 9, scope: !3357)
!3365 = !DILocation(line: 241, column: 7, scope: !3357)
!3366 = !DILocation(line: 241, column: 5, scope: !3357)
!3367 = !DILocalVariable(name: "nbytes", scope: !250, file: !240, line: 248, type: !254)
!3368 = !DILocation(line: 248, column: 9, scope: !250)
!3369 = !DILocalVariable(name: "adjusted_nbytes", scope: !250, file: !240, line: 252, type: !254)
!3370 = !DILocation(line: 252, column: 9, scope: !250)
!3371 = !DILocation(line: 253, column: 8, scope: !250)
!3372 = !DILocation(line: 255, column: 10, scope: !250)
!3373 = !DILocation(line: 255, column: 17, scope: !250)
!3374 = !DILocation(line: 256, column: 7, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !250, file: !240, line: 256, column: 7)
!3376 = !DILocation(line: 256, column: 7, scope: !250)
!3377 = !DILocation(line: 258, column: 11, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !240, line: 257, column: 5)
!3379 = !DILocation(line: 258, column: 29, scope: !3378)
!3380 = !DILocation(line: 258, column: 27, scope: !3378)
!3381 = !DILocation(line: 258, column: 9, scope: !3378)
!3382 = !DILocation(line: 259, column: 16, scope: !3378)
!3383 = !DILocation(line: 259, column: 34, scope: !3378)
!3384 = !DILocation(line: 259, column: 52, scope: !3378)
!3385 = !DILocation(line: 259, column: 50, scope: !3378)
!3386 = !DILocation(line: 259, column: 32, scope: !3378)
!3387 = !DILocation(line: 259, column: 14, scope: !3378)
!3388 = !DILocation(line: 260, column: 5, scope: !3378)
!3389 = !DILocation(line: 262, column: 9, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !250, file: !240, line: 262, column: 7)
!3391 = !DILocation(line: 262, column: 7, scope: !250)
!3392 = !DILocation(line: 263, column: 6, scope: !3390)
!3393 = !DILocation(line: 263, column: 9, scope: !3390)
!3394 = !DILocation(line: 263, column: 5, scope: !3390)
!3395 = !DILocation(line: 264, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !250, file: !240, line: 264, column: 7)
!3397 = !DILocation(line: 264, column: 11, scope: !3396)
!3398 = !DILocation(line: 264, column: 9, scope: !3396)
!3399 = !DILocation(line: 264, column: 16, scope: !3396)
!3400 = !DILocation(line: 264, column: 14, scope: !3396)
!3401 = !DILocation(line: 265, column: 7, scope: !3396)
!3402 = !DILocation(line: 265, column: 11, scope: !3396)
!3403 = !DILocation(line: 266, column: 11, scope: !3396)
!3404 = !DILocation(line: 266, column: 20, scope: !3396)
!3405 = !DILocation(line: 266, column: 17, scope: !3396)
!3406 = !DILocation(line: 266, column: 26, scope: !3396)
!3407 = !DILocation(line: 266, column: 29, scope: !3396)
!3408 = !DILocation(line: 266, column: 37, scope: !3396)
!3409 = !DILocation(line: 266, column: 35, scope: !3396)
!3410 = !DILocation(line: 267, column: 11, scope: !3396)
!3411 = !DILocation(line: 267, column: 14, scope: !3396)
!3412 = !DILocation(line: 264, column: 7, scope: !250)
!3413 = !DILocation(line: 268, column: 5, scope: !3396)
!3414 = !DILocation(line: 269, column: 18, scope: !250)
!3415 = !DILocation(line: 269, column: 22, scope: !250)
!3416 = !DILocation(line: 269, column: 8, scope: !250)
!3417 = !DILocation(line: 269, column: 6, scope: !250)
!3418 = !DILocation(line: 270, column: 9, scope: !250)
!3419 = !DILocation(line: 270, column: 4, scope: !250)
!3420 = !DILocation(line: 270, column: 7, scope: !250)
!3421 = !DILocation(line: 271, column: 10, scope: !250)
!3422 = !DILocation(line: 271, column: 3, scope: !250)
!3423 = distinct !DISubprogram(name: "xzalloc", scope: !240, file: !240, line: 279, type: !3198, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3424 = !DILocalVariable(name: "s", arg: 1, scope: !3423, file: !240, line: 279, type: !138)
!3425 = !DILocation(line: 279, column: 17, scope: !3423)
!3426 = !DILocation(line: 281, column: 19, scope: !3423)
!3427 = !DILocation(line: 281, column: 10, scope: !3423)
!3428 = !DILocation(line: 281, column: 3, scope: !3423)
!3429 = distinct !DISubprogram(name: "xcalloc", scope: !240, file: !240, line: 294, type: !3262, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3430 = !DILocalVariable(name: "n", arg: 1, scope: !3429, file: !240, line: 294, type: !138)
!3431 = !DILocation(line: 294, column: 17, scope: !3429)
!3432 = !DILocalVariable(name: "s", arg: 2, scope: !3429, file: !240, line: 294, type: !138)
!3433 = !DILocation(line: 294, column: 27, scope: !3429)
!3434 = !DILocation(line: 296, column: 33, scope: !3429)
!3435 = !DILocation(line: 296, column: 36, scope: !3429)
!3436 = !DILocation(line: 296, column: 25, scope: !3429)
!3437 = !DILocation(line: 296, column: 10, scope: !3429)
!3438 = !DILocation(line: 296, column: 3, scope: !3429)
!3439 = distinct !DISubprogram(name: "xizalloc", scope: !240, file: !240, line: 285, type: !3207, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3440 = !DILocalVariable(name: "s", arg: 1, scope: !3439, file: !240, line: 285, type: !254)
!3441 = !DILocation(line: 285, column: 17, scope: !3439)
!3442 = !DILocation(line: 287, column: 20, scope: !3439)
!3443 = !DILocation(line: 287, column: 10, scope: !3439)
!3444 = !DILocation(line: 287, column: 3, scope: !3439)
!3445 = distinct !DISubprogram(name: "xicalloc", scope: !240, file: !240, line: 300, type: !3273, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3446 = !DILocalVariable(name: "n", arg: 1, scope: !3445, file: !240, line: 300, type: !254)
!3447 = !DILocation(line: 300, column: 17, scope: !3445)
!3448 = !DILocalVariable(name: "s", arg: 2, scope: !3445, file: !240, line: 300, type: !254)
!3449 = !DILocation(line: 300, column: 26, scope: !3445)
!3450 = !DILocation(line: 302, column: 34, scope: !3445)
!3451 = !DILocation(line: 302, column: 37, scope: !3445)
!3452 = !DILocation(line: 302, column: 25, scope: !3445)
!3453 = !DILocation(line: 302, column: 10, scope: !3445)
!3454 = !DILocation(line: 302, column: 3, scope: !3445)
!3455 = distinct !DISubprogram(name: "xmemdup", scope: !240, file: !240, line: 310, type: !3456, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!24, !3458, !138}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3460 = !DILocalVariable(name: "p", arg: 1, scope: !3455, file: !240, line: 310, type: !3458)
!3461 = !DILocation(line: 310, column: 22, scope: !3455)
!3462 = !DILocalVariable(name: "s", arg: 2, scope: !3455, file: !240, line: 310, type: !138)
!3463 = !DILocation(line: 310, column: 32, scope: !3455)
!3464 = !DILocation(line: 312, column: 27, scope: !3455)
!3465 = !DILocation(line: 312, column: 18, scope: !3455)
!3466 = !DILocation(line: 312, column: 31, scope: !3455)
!3467 = !DILocation(line: 312, column: 34, scope: !3455)
!3468 = !DILocation(line: 312, column: 10, scope: !3455)
!3469 = !DILocation(line: 312, column: 3, scope: !3455)
!3470 = distinct !DISubprogram(name: "ximemdup", scope: !240, file: !240, line: 316, type: !3471, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!24, !3458, !254}
!3473 = !DILocalVariable(name: "p", arg: 1, scope: !3470, file: !240, line: 316, type: !3458)
!3474 = !DILocation(line: 316, column: 23, scope: !3470)
!3475 = !DILocalVariable(name: "s", arg: 2, scope: !3470, file: !240, line: 316, type: !254)
!3476 = !DILocation(line: 316, column: 32, scope: !3470)
!3477 = !DILocation(line: 318, column: 28, scope: !3470)
!3478 = !DILocation(line: 318, column: 18, scope: !3470)
!3479 = !DILocation(line: 318, column: 32, scope: !3470)
!3480 = !DILocation(line: 318, column: 35, scope: !3470)
!3481 = !DILocation(line: 318, column: 10, scope: !3470)
!3482 = !DILocation(line: 318, column: 3, scope: !3470)
!3483 = distinct !DISubprogram(name: "ximemdup0", scope: !240, file: !240, line: 325, type: !3484, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!22, !3458, !254}
!3486 = !DILocalVariable(name: "p", arg: 1, scope: !3483, file: !240, line: 325, type: !3458)
!3487 = !DILocation(line: 325, column: 24, scope: !3483)
!3488 = !DILocalVariable(name: "s", arg: 2, scope: !3483, file: !240, line: 325, type: !254)
!3489 = !DILocation(line: 325, column: 33, scope: !3483)
!3490 = !DILocalVariable(name: "result", scope: !3483, file: !240, line: 327, type: !22)
!3491 = !DILocation(line: 327, column: 9, scope: !3483)
!3492 = !DILocation(line: 327, column: 28, scope: !3483)
!3493 = !DILocation(line: 327, column: 30, scope: !3483)
!3494 = !DILocation(line: 327, column: 18, scope: !3483)
!3495 = !DILocation(line: 328, column: 3, scope: !3483)
!3496 = !DILocation(line: 328, column: 10, scope: !3483)
!3497 = !DILocation(line: 328, column: 13, scope: !3483)
!3498 = !DILocation(line: 329, column: 18, scope: !3483)
!3499 = !DILocation(line: 329, column: 26, scope: !3483)
!3500 = !DILocation(line: 329, column: 29, scope: !3483)
!3501 = !DILocation(line: 329, column: 10, scope: !3483)
!3502 = !DILocation(line: 329, column: 3, scope: !3483)
!3503 = distinct !DISubprogram(name: "xstrdup", scope: !240, file: !240, line: 335, type: !816, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !36)
!3504 = !DILocalVariable(name: "string", arg: 1, scope: !3503, file: !240, line: 335, type: !34)
!3505 = !DILocation(line: 335, column: 22, scope: !3503)
!3506 = !DILocation(line: 337, column: 19, scope: !3503)
!3507 = !DILocation(line: 337, column: 35, scope: !3503)
!3508 = !DILocation(line: 337, column: 27, scope: !3503)
!3509 = !DILocation(line: 337, column: 43, scope: !3503)
!3510 = !DILocation(line: 337, column: 10, scope: !3503)
!3511 = !DILocation(line: 337, column: 3, scope: !3503)
!3512 = distinct !DISubprogram(name: "xalloc_die", scope: !260, file: !260, line: 32, type: !94, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !259, retainedNodes: !36)
!3513 = !DILocalVariable(name: "__errstatus", scope: !3514, file: !260, line: 34, type: !3515)
!3514 = distinct !DILexicalBlock(scope: !3512, file: !260, line: 34, column: 3)
!3515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!3516 = !DILocation(line: 34, column: 3, scope: !3514)
!3517 = !DILocation(line: 40, column: 3, scope: !3512)
!3518 = distinct !DISubprogram(name: "last_component", scope: !262, file: !262, line: 29, type: !816, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !261, retainedNodes: !36)
!3519 = !DILocalVariable(name: "name", arg: 1, scope: !3518, file: !262, line: 29, type: !34)
!3520 = !DILocation(line: 29, column: 29, scope: !3518)
!3521 = !DILocalVariable(name: "base", scope: !3518, file: !262, line: 31, type: !34)
!3522 = !DILocation(line: 31, column: 15, scope: !3518)
!3523 = !DILocation(line: 31, column: 22, scope: !3518)
!3524 = !DILocation(line: 31, column: 29, scope: !3518)
!3525 = !DILocation(line: 31, column: 27, scope: !3518)
!3526 = !DILocation(line: 32, column: 3, scope: !3518)
!3527 = !DILocation(line: 32, column: 10, scope: !3518)
!3528 = !DILocation(line: 33, column: 9, scope: !3518)
!3529 = distinct !{!3529, !3526, !3528, !409}
!3530 = !DILocalVariable(name: "last_was_slash", scope: !3518, file: !262, line: 35, type: !61)
!3531 = !DILocation(line: 35, column: 8, scope: !3518)
!3532 = !DILocalVariable(name: "p", scope: !3533, file: !262, line: 36, type: !34)
!3533 = distinct !DILexicalBlock(scope: !3518, file: !262, line: 36, column: 3)
!3534 = !DILocation(line: 36, column: 20, scope: !3533)
!3535 = !DILocation(line: 36, column: 24, scope: !3533)
!3536 = !DILocation(line: 36, column: 8, scope: !3533)
!3537 = !DILocation(line: 36, column: 31, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3533, file: !262, line: 36, column: 3)
!3539 = !DILocation(line: 36, column: 30, scope: !3538)
!3540 = !DILocation(line: 36, column: 3, scope: !3533)
!3541 = !DILocation(line: 38, column: 11, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !262, line: 38, column: 11)
!3543 = distinct !DILexicalBlock(scope: !3538, file: !262, line: 37, column: 5)
!3544 = !DILocation(line: 38, column: 11, scope: !3543)
!3545 = !DILocation(line: 39, column: 24, scope: !3542)
!3546 = !DILocation(line: 39, column: 9, scope: !3542)
!3547 = !DILocation(line: 40, column: 16, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3542, file: !262, line: 40, column: 16)
!3549 = !DILocation(line: 40, column: 16, scope: !3542)
!3550 = !DILocation(line: 42, column: 18, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3548, file: !262, line: 41, column: 9)
!3552 = !DILocation(line: 42, column: 16, scope: !3551)
!3553 = !DILocation(line: 43, column: 26, scope: !3551)
!3554 = !DILocation(line: 44, column: 9, scope: !3551)
!3555 = !DILocation(line: 45, column: 5, scope: !3543)
!3556 = !DILocation(line: 36, column: 35, scope: !3538)
!3557 = !DILocation(line: 36, column: 3, scope: !3538)
!3558 = distinct !{!3558, !3540, !3559, !409}
!3559 = !DILocation(line: 45, column: 5, scope: !3533)
!3560 = !DILocation(line: 47, column: 19, scope: !3518)
!3561 = !DILocation(line: 47, column: 3, scope: !3518)
!3562 = distinct !DISubprogram(name: "base_len", scope: !262, file: !262, line: 51, type: !3563, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !261, retainedNodes: !36)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!138, !34}
!3565 = !DILocalVariable(name: "name", arg: 1, scope: !3562, file: !262, line: 51, type: !34)
!3566 = !DILocation(line: 51, column: 23, scope: !3562)
!3567 = !DILocalVariable(name: "len", scope: !3562, file: !262, line: 53, type: !138)
!3568 = !DILocation(line: 53, column: 10, scope: !3562)
!3569 = !DILocation(line: 54, column: 22, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3562, file: !262, line: 54, column: 3)
!3571 = !DILocation(line: 54, column: 14, scope: !3570)
!3572 = !DILocation(line: 54, column: 12, scope: !3570)
!3573 = !DILocation(line: 54, column: 8, scope: !3570)
!3574 = !DILocation(line: 54, column: 34, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3570, file: !262, line: 54, column: 3)
!3576 = !DILocation(line: 54, column: 32, scope: !3575)
!3577 = !DILocation(line: 54, column: 38, scope: !3575)
!3578 = !DILocation(line: 54, column: 41, scope: !3575)
!3579 = !DILocation(line: 0, scope: !3575)
!3580 = !DILocation(line: 54, column: 3, scope: !3570)
!3581 = !DILocation(line: 55, column: 5, scope: !3575)
!3582 = !DILocation(line: 54, column: 70, scope: !3575)
!3583 = !DILocation(line: 54, column: 3, scope: !3575)
!3584 = distinct !{!3584, !3580, !3585, !409}
!3585 = !DILocation(line: 55, column: 5, scope: !3570)
!3586 = !DILocalVariable(name: "prefix_len", scope: !3562, file: !262, line: 61, type: !138)
!3587 = !DILocation(line: 61, column: 10, scope: !3562)
!3588 = !DILocation(line: 61, column: 23, scope: !3562)
!3589 = !DILocation(line: 66, column: 10, scope: !3562)
!3590 = !DILocation(line: 66, column: 3, scope: !3562)
!3591 = distinct !DISubprogram(name: "c32isprint", scope: !3592, file: !3592, line: 41, type: !3593, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !36)
!3592 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!25, !3595}
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3596, line: 20, baseType: !7)
!3596 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3597 = !DILocalVariable(name: "wc", arg: 1, scope: !3591, file: !3592, line: 41, type: !3595)
!3598 = !DILocation(line: 41, column: 14, scope: !3591)
!3599 = !DILocation(line: 66, column: 22, scope: !3591)
!3600 = !DILocation(line: 66, column: 10, scope: !3591)
!3601 = !DILocation(line: 66, column: 3, scope: !3591)
!3602 = distinct !DISubprogram(name: "close_stream", scope: !266, file: !266, line: 55, type: !3603, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !36)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!25, !3605}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2856, line: 7, baseType: !3607)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2858, line: 49, size: 1728, elements: !3608)
!3608 = !{!3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3607, file: !2858, line: 51, baseType: !25, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3607, file: !2858, line: 54, baseType: !22, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3607, file: !2858, line: 55, baseType: !22, size: 64, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3607, file: !2858, line: 56, baseType: !22, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3607, file: !2858, line: 57, baseType: !22, size: 64, offset: 256)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3607, file: !2858, line: 58, baseType: !22, size: 64, offset: 320)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3607, file: !2858, line: 59, baseType: !22, size: 64, offset: 384)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3607, file: !2858, line: 60, baseType: !22, size: 64, offset: 448)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3607, file: !2858, line: 61, baseType: !22, size: 64, offset: 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3607, file: !2858, line: 64, baseType: !22, size: 64, offset: 576)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3607, file: !2858, line: 65, baseType: !22, size: 64, offset: 640)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3607, file: !2858, line: 66, baseType: !22, size: 64, offset: 704)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3607, file: !2858, line: 68, baseType: !2873, size: 64, offset: 768)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3607, file: !2858, line: 70, baseType: !3623, size: 64, offset: 832)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3607, file: !2858, line: 72, baseType: !25, size: 32, offset: 896)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3607, file: !2858, line: 73, baseType: !25, size: 32, offset: 928)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3607, file: !2858, line: 74, baseType: !2880, size: 64, offset: 960)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3607, file: !2858, line: 77, baseType: !26, size: 16, offset: 1024)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3607, file: !2858, line: 78, baseType: !2883, size: 8, offset: 1040)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3607, file: !2858, line: 79, baseType: !2885, size: 8, offset: 1048)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3607, file: !2858, line: 81, baseType: !2889, size: 64, offset: 1088)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3607, file: !2858, line: 89, baseType: !2892, size: 64, offset: 1152)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3607, file: !2858, line: 91, baseType: !2894, size: 64, offset: 1216)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3607, file: !2858, line: 92, baseType: !2897, size: 64, offset: 1280)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3607, file: !2858, line: 93, baseType: !3623, size: 64, offset: 1344)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3607, file: !2858, line: 94, baseType: !24, size: 64, offset: 1408)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3607, file: !2858, line: 95, baseType: !138, size: 64, offset: 1472)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3607, file: !2858, line: 96, baseType: !25, size: 32, offset: 1536)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3607, file: !2858, line: 98, baseType: !2904, size: 160, offset: 1568)
!3639 = !DILocalVariable(name: "stream", arg: 1, scope: !3602, file: !266, line: 55, type: !3605)
!3640 = !DILocation(line: 55, column: 21, scope: !3602)
!3641 = !DILocalVariable(name: "some_pending", scope: !3602, file: !266, line: 57, type: !3642)
!3642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!3643 = !DILocation(line: 57, column: 14, scope: !3602)
!3644 = !DILocation(line: 57, column: 42, scope: !3602)
!3645 = !DILocation(line: 57, column: 30, scope: !3602)
!3646 = !DILocation(line: 57, column: 50, scope: !3602)
!3647 = !DILocalVariable(name: "prev_fail", scope: !3602, file: !266, line: 58, type: !3642)
!3648 = !DILocation(line: 58, column: 14, scope: !3602)
!3649 = !DILocation(line: 58, column: 27, scope: !3602)
!3650 = !DILocation(line: 58, column: 43, scope: !3602)
!3651 = !DILocalVariable(name: "fclose_fail", scope: !3602, file: !266, line: 59, type: !3642)
!3652 = !DILocation(line: 59, column: 14, scope: !3602)
!3653 = !DILocation(line: 59, column: 37, scope: !3602)
!3654 = !DILocation(line: 59, column: 29, scope: !3602)
!3655 = !DILocation(line: 59, column: 45, scope: !3602)
!3656 = !DILocation(line: 69, column: 7, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3602, file: !266, line: 69, column: 7)
!3658 = !DILocation(line: 69, column: 17, scope: !3657)
!3659 = !DILocation(line: 69, column: 21, scope: !3657)
!3660 = !DILocation(line: 69, column: 33, scope: !3657)
!3661 = !DILocation(line: 69, column: 37, scope: !3657)
!3662 = !DILocation(line: 69, column: 50, scope: !3657)
!3663 = !DILocation(line: 69, column: 53, scope: !3657)
!3664 = !DILocation(line: 69, column: 59, scope: !3657)
!3665 = !DILocation(line: 69, column: 7, scope: !3602)
!3666 = !DILocation(line: 71, column: 13, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !266, line: 71, column: 11)
!3668 = distinct !DILexicalBlock(scope: !3657, file: !266, line: 70, column: 5)
!3669 = !DILocation(line: 71, column: 11, scope: !3668)
!3670 = !DILocation(line: 72, column: 9, scope: !3667)
!3671 = !DILocation(line: 72, column: 15, scope: !3667)
!3672 = !DILocation(line: 73, column: 7, scope: !3668)
!3673 = !DILocation(line: 76, column: 3, scope: !3602)
!3674 = !DILocation(line: 77, column: 1, scope: !3602)
!3675 = distinct !DISubprogram(name: "rpl_fclose", scope: !268, file: !268, line: 58, type: !3676, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !36)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!25, !3678}
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2856, line: 7, baseType: !3680)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2858, line: 49, size: 1728, elements: !3681)
!3681 = !{!3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3680, file: !2858, line: 51, baseType: !25, size: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3680, file: !2858, line: 54, baseType: !22, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3680, file: !2858, line: 55, baseType: !22, size: 64, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3680, file: !2858, line: 56, baseType: !22, size: 64, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3680, file: !2858, line: 57, baseType: !22, size: 64, offset: 256)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3680, file: !2858, line: 58, baseType: !22, size: 64, offset: 320)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3680, file: !2858, line: 59, baseType: !22, size: 64, offset: 384)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3680, file: !2858, line: 60, baseType: !22, size: 64, offset: 448)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3680, file: !2858, line: 61, baseType: !22, size: 64, offset: 512)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3680, file: !2858, line: 64, baseType: !22, size: 64, offset: 576)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3680, file: !2858, line: 65, baseType: !22, size: 64, offset: 640)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3680, file: !2858, line: 66, baseType: !22, size: 64, offset: 704)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3680, file: !2858, line: 68, baseType: !2873, size: 64, offset: 768)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3680, file: !2858, line: 70, baseType: !3696, size: 64, offset: 832)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3680, file: !2858, line: 72, baseType: !25, size: 32, offset: 896)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3680, file: !2858, line: 73, baseType: !25, size: 32, offset: 928)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3680, file: !2858, line: 74, baseType: !2880, size: 64, offset: 960)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3680, file: !2858, line: 77, baseType: !26, size: 16, offset: 1024)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3680, file: !2858, line: 78, baseType: !2883, size: 8, offset: 1040)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3680, file: !2858, line: 79, baseType: !2885, size: 8, offset: 1048)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3680, file: !2858, line: 81, baseType: !2889, size: 64, offset: 1088)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3680, file: !2858, line: 89, baseType: !2892, size: 64, offset: 1152)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3680, file: !2858, line: 91, baseType: !2894, size: 64, offset: 1216)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3680, file: !2858, line: 92, baseType: !2897, size: 64, offset: 1280)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3680, file: !2858, line: 93, baseType: !3696, size: 64, offset: 1344)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3680, file: !2858, line: 94, baseType: !24, size: 64, offset: 1408)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3680, file: !2858, line: 95, baseType: !138, size: 64, offset: 1472)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3680, file: !2858, line: 96, baseType: !25, size: 32, offset: 1536)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3680, file: !2858, line: 98, baseType: !2904, size: 160, offset: 1568)
!3712 = !DILocalVariable(name: "fp", arg: 1, scope: !3675, file: !268, line: 58, type: !3678)
!3713 = !DILocation(line: 58, column: 19, scope: !3675)
!3714 = !DILocalVariable(name: "saved_errno", scope: !3675, file: !268, line: 60, type: !25)
!3715 = !DILocation(line: 60, column: 7, scope: !3675)
!3716 = !DILocalVariable(name: "fd", scope: !3675, file: !268, line: 63, type: !25)
!3717 = !DILocation(line: 63, column: 7, scope: !3675)
!3718 = !DILocation(line: 63, column: 20, scope: !3675)
!3719 = !DILocation(line: 63, column: 12, scope: !3675)
!3720 = !DILocation(line: 64, column: 7, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3675, file: !268, line: 64, column: 7)
!3722 = !DILocation(line: 64, column: 10, scope: !3721)
!3723 = !DILocation(line: 64, column: 7, scope: !3675)
!3724 = !DILocation(line: 65, column: 28, scope: !3721)
!3725 = !DILocation(line: 65, column: 12, scope: !3721)
!3726 = !DILocation(line: 65, column: 5, scope: !3721)
!3727 = !DILocation(line: 70, column: 9, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3675, file: !268, line: 70, column: 7)
!3729 = !DILocation(line: 70, column: 23, scope: !3728)
!3730 = !DILocation(line: 70, column: 41, scope: !3728)
!3731 = !DILocation(line: 70, column: 33, scope: !3728)
!3732 = !DILocation(line: 70, column: 26, scope: !3728)
!3733 = !DILocation(line: 70, column: 59, scope: !3728)
!3734 = !DILocation(line: 71, column: 7, scope: !3728)
!3735 = !DILocation(line: 71, column: 18, scope: !3728)
!3736 = !DILocation(line: 71, column: 10, scope: !3728)
!3737 = !DILocation(line: 70, column: 7, scope: !3675)
!3738 = !DILocation(line: 72, column: 19, scope: !3728)
!3739 = !DILocation(line: 72, column: 17, scope: !3728)
!3740 = !DILocation(line: 72, column: 5, scope: !3728)
!3741 = !DILocalVariable(name: "result", scope: !3675, file: !268, line: 74, type: !25)
!3742 = !DILocation(line: 74, column: 7, scope: !3675)
!3743 = !DILocation(line: 100, column: 28, scope: !3675)
!3744 = !DILocation(line: 100, column: 12, scope: !3675)
!3745 = !DILocation(line: 100, column: 10, scope: !3675)
!3746 = !DILocation(line: 105, column: 7, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3675, file: !268, line: 105, column: 7)
!3748 = !DILocation(line: 105, column: 19, scope: !3747)
!3749 = !DILocation(line: 105, column: 7, scope: !3675)
!3750 = !DILocation(line: 107, column: 15, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3747, file: !268, line: 106, column: 5)
!3752 = !DILocation(line: 107, column: 7, scope: !3751)
!3753 = !DILocation(line: 107, column: 13, scope: !3751)
!3754 = !DILocation(line: 108, column: 14, scope: !3751)
!3755 = !DILocation(line: 109, column: 5, scope: !3751)
!3756 = !DILocation(line: 111, column: 10, scope: !3675)
!3757 = !DILocation(line: 111, column: 3, scope: !3675)
!3758 = !DILocation(line: 112, column: 1, scope: !3675)
!3759 = distinct !DISubprogram(name: "rpl_fflush", scope: !270, file: !270, line: 130, type: !3760, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !269, retainedNodes: !36)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!25, !3762}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2856, line: 7, baseType: !3764)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2858, line: 49, size: 1728, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3764, file: !2858, line: 51, baseType: !25, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3764, file: !2858, line: 54, baseType: !22, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3764, file: !2858, line: 55, baseType: !22, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3764, file: !2858, line: 56, baseType: !22, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3764, file: !2858, line: 57, baseType: !22, size: 64, offset: 256)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3764, file: !2858, line: 58, baseType: !22, size: 64, offset: 320)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3764, file: !2858, line: 59, baseType: !22, size: 64, offset: 384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3764, file: !2858, line: 60, baseType: !22, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3764, file: !2858, line: 61, baseType: !22, size: 64, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3764, file: !2858, line: 64, baseType: !22, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3764, file: !2858, line: 65, baseType: !22, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3764, file: !2858, line: 66, baseType: !22, size: 64, offset: 704)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3764, file: !2858, line: 68, baseType: !2873, size: 64, offset: 768)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3764, file: !2858, line: 70, baseType: !3780, size: 64, offset: 832)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3764, file: !2858, line: 72, baseType: !25, size: 32, offset: 896)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3764, file: !2858, line: 73, baseType: !25, size: 32, offset: 928)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3764, file: !2858, line: 74, baseType: !2880, size: 64, offset: 960)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3764, file: !2858, line: 77, baseType: !26, size: 16, offset: 1024)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3764, file: !2858, line: 78, baseType: !2883, size: 8, offset: 1040)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3764, file: !2858, line: 79, baseType: !2885, size: 8, offset: 1048)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3764, file: !2858, line: 81, baseType: !2889, size: 64, offset: 1088)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3764, file: !2858, line: 89, baseType: !2892, size: 64, offset: 1152)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3764, file: !2858, line: 91, baseType: !2894, size: 64, offset: 1216)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3764, file: !2858, line: 92, baseType: !2897, size: 64, offset: 1280)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3764, file: !2858, line: 93, baseType: !3780, size: 64, offset: 1344)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3764, file: !2858, line: 94, baseType: !24, size: 64, offset: 1408)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3764, file: !2858, line: 95, baseType: !138, size: 64, offset: 1472)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3764, file: !2858, line: 96, baseType: !25, size: 32, offset: 1536)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3764, file: !2858, line: 98, baseType: !2904, size: 160, offset: 1568)
!3796 = !DILocalVariable(name: "stream", arg: 1, scope: !3759, file: !270, line: 130, type: !3762)
!3797 = !DILocation(line: 130, column: 19, scope: !3759)
!3798 = !DILocation(line: 151, column: 7, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3759, file: !270, line: 151, column: 7)
!3800 = !DILocation(line: 151, column: 14, scope: !3799)
!3801 = !DILocation(line: 151, column: 22, scope: !3799)
!3802 = !DILocation(line: 151, column: 27, scope: !3799)
!3803 = !DILocation(line: 151, column: 7, scope: !3759)
!3804 = !DILocation(line: 152, column: 20, scope: !3799)
!3805 = !DILocation(line: 152, column: 12, scope: !3799)
!3806 = !DILocation(line: 152, column: 5, scope: !3799)
!3807 = !DILocation(line: 157, column: 44, scope: !3759)
!3808 = !DILocation(line: 157, column: 3, scope: !3759)
!3809 = !DILocation(line: 159, column: 18, scope: !3759)
!3810 = !DILocation(line: 159, column: 10, scope: !3759)
!3811 = !DILocation(line: 159, column: 3, scope: !3759)
!3812 = !DILocation(line: 236, column: 1, scope: !3759)
!3813 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !270, file: !270, line: 42, type: !3814, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !269, retainedNodes: !36)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !3762}
!3816 = !DILocalVariable(name: "fp", arg: 1, scope: !3813, file: !270, line: 42, type: !3762)
!3817 = !DILocation(line: 42, column: 48, scope: !3813)
!3818 = !DILocation(line: 44, column: 7, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3813, file: !270, line: 44, column: 7)
!3820 = !DILocation(line: 44, column: 12, scope: !3819)
!3821 = !DILocation(line: 44, column: 19, scope: !3819)
!3822 = !DILocation(line: 44, column: 7, scope: !3813)
!3823 = !DILocation(line: 46, column: 13, scope: !3819)
!3824 = !DILocation(line: 46, column: 5, scope: !3819)
!3825 = !DILocation(line: 47, column: 1, scope: !3813)
!3826 = distinct !DISubprogram(name: "rpl_fseeko", scope: !272, file: !272, line: 28, type: !3827, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !36)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!25, !3829, !3863, !25}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2856, line: 7, baseType: !3831)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2858, line: 49, size: 1728, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3831, file: !2858, line: 51, baseType: !25, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3831, file: !2858, line: 54, baseType: !22, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3831, file: !2858, line: 55, baseType: !22, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3831, file: !2858, line: 56, baseType: !22, size: 64, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3831, file: !2858, line: 57, baseType: !22, size: 64, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3831, file: !2858, line: 58, baseType: !22, size: 64, offset: 320)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3831, file: !2858, line: 59, baseType: !22, size: 64, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3831, file: !2858, line: 60, baseType: !22, size: 64, offset: 448)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3831, file: !2858, line: 61, baseType: !22, size: 64, offset: 512)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3831, file: !2858, line: 64, baseType: !22, size: 64, offset: 576)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3831, file: !2858, line: 65, baseType: !22, size: 64, offset: 640)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3831, file: !2858, line: 66, baseType: !22, size: 64, offset: 704)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3831, file: !2858, line: 68, baseType: !2873, size: 64, offset: 768)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3831, file: !2858, line: 70, baseType: !3847, size: 64, offset: 832)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3831, file: !2858, line: 72, baseType: !25, size: 32, offset: 896)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3831, file: !2858, line: 73, baseType: !25, size: 32, offset: 928)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3831, file: !2858, line: 74, baseType: !2880, size: 64, offset: 960)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3831, file: !2858, line: 77, baseType: !26, size: 16, offset: 1024)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3831, file: !2858, line: 78, baseType: !2883, size: 8, offset: 1040)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3831, file: !2858, line: 79, baseType: !2885, size: 8, offset: 1048)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3831, file: !2858, line: 81, baseType: !2889, size: 64, offset: 1088)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3831, file: !2858, line: 89, baseType: !2892, size: 64, offset: 1152)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3831, file: !2858, line: 91, baseType: !2894, size: 64, offset: 1216)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3831, file: !2858, line: 92, baseType: !2897, size: 64, offset: 1280)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3831, file: !2858, line: 93, baseType: !3847, size: 64, offset: 1344)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3831, file: !2858, line: 94, baseType: !24, size: 64, offset: 1408)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3831, file: !2858, line: 95, baseType: !138, size: 64, offset: 1472)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3831, file: !2858, line: 96, baseType: !25, size: 32, offset: 1536)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3831, file: !2858, line: 98, baseType: !2904, size: 160, offset: 1568)
!3863 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !74, line: 63, baseType: !2880)
!3864 = !DILocalVariable(name: "fp", arg: 1, scope: !3826, file: !272, line: 28, type: !3829)
!3865 = !DILocation(line: 28, column: 15, scope: !3826)
!3866 = !DILocalVariable(name: "offset", arg: 2, scope: !3826, file: !272, line: 28, type: !3863)
!3867 = !DILocation(line: 28, column: 25, scope: !3826)
!3868 = !DILocalVariable(name: "whence", arg: 3, scope: !3826, file: !272, line: 28, type: !25)
!3869 = !DILocation(line: 28, column: 37, scope: !3826)
!3870 = !DILocation(line: 55, column: 7, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3826, file: !272, line: 55, column: 7)
!3872 = !DILocation(line: 55, column: 12, scope: !3871)
!3873 = !DILocation(line: 55, column: 28, scope: !3871)
!3874 = !DILocation(line: 55, column: 33, scope: !3871)
!3875 = !DILocation(line: 55, column: 25, scope: !3871)
!3876 = !DILocation(line: 56, column: 7, scope: !3871)
!3877 = !DILocation(line: 56, column: 10, scope: !3871)
!3878 = !DILocation(line: 56, column: 15, scope: !3871)
!3879 = !DILocation(line: 56, column: 32, scope: !3871)
!3880 = !DILocation(line: 56, column: 37, scope: !3871)
!3881 = !DILocation(line: 56, column: 29, scope: !3871)
!3882 = !DILocation(line: 57, column: 7, scope: !3871)
!3883 = !DILocation(line: 57, column: 10, scope: !3871)
!3884 = !DILocation(line: 57, column: 15, scope: !3871)
!3885 = !DILocation(line: 57, column: 29, scope: !3871)
!3886 = !DILocation(line: 55, column: 7, scope: !3826)
!3887 = !DILocalVariable(name: "pos", scope: !3888, file: !272, line: 123, type: !3863)
!3888 = distinct !DILexicalBlock(scope: !3871, file: !272, line: 119, column: 5)
!3889 = !DILocation(line: 123, column: 13, scope: !3888)
!3890 = !DILocation(line: 123, column: 34, scope: !3888)
!3891 = !DILocation(line: 123, column: 26, scope: !3888)
!3892 = !DILocation(line: 123, column: 39, scope: !3888)
!3893 = !DILocation(line: 123, column: 47, scope: !3888)
!3894 = !DILocation(line: 123, column: 19, scope: !3888)
!3895 = !DILocation(line: 124, column: 11, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3888, file: !272, line: 124, column: 11)
!3897 = !DILocation(line: 124, column: 15, scope: !3896)
!3898 = !DILocation(line: 124, column: 11, scope: !3888)
!3899 = !DILocation(line: 130, column: 11, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3896, file: !272, line: 125, column: 9)
!3901 = !DILocation(line: 135, column: 7, scope: !3888)
!3902 = !DILocation(line: 135, column: 12, scope: !3888)
!3903 = !DILocation(line: 135, column: 19, scope: !3888)
!3904 = !DILocation(line: 136, column: 22, scope: !3888)
!3905 = !DILocation(line: 136, column: 7, scope: !3888)
!3906 = !DILocation(line: 136, column: 12, scope: !3888)
!3907 = !DILocation(line: 136, column: 20, scope: !3888)
!3908 = !DILocation(line: 167, column: 7, scope: !3888)
!3909 = !DILocation(line: 169, column: 18, scope: !3826)
!3910 = !DILocation(line: 169, column: 22, scope: !3826)
!3911 = !DILocation(line: 169, column: 30, scope: !3826)
!3912 = !DILocation(line: 169, column: 10, scope: !3826)
!3913 = !DILocation(line: 169, column: 3, scope: !3826)
!3914 = !DILocation(line: 170, column: 1, scope: !3826)
!3915 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3916, file: !3916, line: 43, type: !3917, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !36)
!3916 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3917 = !DISubroutineType(types: !66)
!3918 = !DILocation(line: 45, column: 3, scope: !3915)
!3919 = !DILocation(line: 45, column: 9, scope: !3915)
!3920 = !DILocation(line: 46, column: 3, scope: !3915)
!3921 = distinct !DISubprogram(name: "imalloc", scope: !3916, file: !3916, line: 55, type: !3207, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !36)
!3922 = !DILocalVariable(name: "s", arg: 1, scope: !3921, file: !3916, line: 55, type: !254)
!3923 = !DILocation(line: 55, column: 16, scope: !3921)
!3924 = !DILocation(line: 57, column: 10, scope: !3921)
!3925 = !DILocation(line: 57, column: 12, scope: !3921)
!3926 = !DILocation(line: 57, column: 34, scope: !3921)
!3927 = !DILocation(line: 57, column: 26, scope: !3921)
!3928 = !DILocation(line: 57, column: 39, scope: !3921)
!3929 = !DILocation(line: 57, column: 3, scope: !3921)
!3930 = distinct !DISubprogram(name: "irealloc", scope: !3916, file: !3916, line: 66, type: !3235, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !36)
!3931 = !DILocalVariable(name: "p", arg: 1, scope: !3930, file: !3916, line: 66, type: !24)
!3932 = !DILocation(line: 66, column: 17, scope: !3930)
!3933 = !DILocalVariable(name: "s", arg: 2, scope: !3930, file: !3916, line: 66, type: !254)
!3934 = !DILocation(line: 66, column: 26, scope: !3930)
!3935 = !DILocation(line: 68, column: 10, scope: !3930)
!3936 = !DILocation(line: 68, column: 12, scope: !3930)
!3937 = !DILocation(line: 68, column: 35, scope: !3930)
!3938 = !DILocation(line: 68, column: 38, scope: !3930)
!3939 = !DILocation(line: 68, column: 26, scope: !3930)
!3940 = !DILocation(line: 68, column: 43, scope: !3930)
!3941 = !DILocation(line: 68, column: 3, scope: !3930)
!3942 = distinct !DISubprogram(name: "icalloc", scope: !3916, file: !3916, line: 77, type: !3273, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !36)
!3943 = !DILocalVariable(name: "n", arg: 1, scope: !3942, file: !3916, line: 77, type: !254)
!3944 = !DILocation(line: 77, column: 16, scope: !3942)
!3945 = !DILocalVariable(name: "s", arg: 2, scope: !3942, file: !3916, line: 77, type: !254)
!3946 = !DILocation(line: 77, column: 25, scope: !3942)
!3947 = !DILocation(line: 79, column: 18, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3942, file: !3916, line: 79, column: 7)
!3949 = !DILocation(line: 79, column: 16, scope: !3948)
!3950 = !DILocation(line: 79, column: 7, scope: !3942)
!3951 = !DILocation(line: 81, column: 11, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !3916, line: 81, column: 11)
!3953 = distinct !DILexicalBlock(scope: !3948, file: !3916, line: 80, column: 5)
!3954 = !DILocation(line: 81, column: 13, scope: !3952)
!3955 = !DILocation(line: 81, column: 11, scope: !3953)
!3956 = !DILocation(line: 82, column: 16, scope: !3952)
!3957 = !DILocation(line: 82, column: 9, scope: !3952)
!3958 = !DILocation(line: 83, column: 9, scope: !3953)
!3959 = !DILocation(line: 84, column: 5, scope: !3953)
!3960 = !DILocation(line: 85, column: 18, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3942, file: !3916, line: 85, column: 7)
!3962 = !DILocation(line: 85, column: 16, scope: !3961)
!3963 = !DILocation(line: 85, column: 7, scope: !3942)
!3964 = !DILocation(line: 87, column: 11, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !3916, line: 87, column: 11)
!3966 = distinct !DILexicalBlock(scope: !3961, file: !3916, line: 86, column: 5)
!3967 = !DILocation(line: 87, column: 13, scope: !3965)
!3968 = !DILocation(line: 87, column: 11, scope: !3966)
!3969 = !DILocation(line: 88, column: 16, scope: !3965)
!3970 = !DILocation(line: 88, column: 9, scope: !3965)
!3971 = !DILocation(line: 89, column: 9, scope: !3966)
!3972 = !DILocation(line: 90, column: 5, scope: !3966)
!3973 = !DILocation(line: 91, column: 18, scope: !3942)
!3974 = !DILocation(line: 91, column: 21, scope: !3942)
!3975 = !DILocation(line: 91, column: 10, scope: !3942)
!3976 = !DILocation(line: 91, column: 3, scope: !3942)
!3977 = !DILocation(line: 92, column: 1, scope: !3942)
!3978 = distinct !DISubprogram(name: "ireallocarray", scope: !3916, file: !3916, line: 98, type: !3247, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !36)
!3979 = !DILocalVariable(name: "p", arg: 1, scope: !3978, file: !3916, line: 98, type: !24)
!3980 = !DILocation(line: 98, column: 22, scope: !3978)
!3981 = !DILocalVariable(name: "n", arg: 2, scope: !3978, file: !3916, line: 98, type: !254)
!3982 = !DILocation(line: 98, column: 31, scope: !3978)
!3983 = !DILocalVariable(name: "s", arg: 3, scope: !3978, file: !3916, line: 98, type: !254)
!3984 = !DILocation(line: 98, column: 40, scope: !3978)
!3985 = !DILocation(line: 100, column: 11, scope: !3978)
!3986 = !DILocation(line: 100, column: 13, scope: !3978)
!3987 = !DILocation(line: 100, column: 25, scope: !3978)
!3988 = !DILocation(line: 100, column: 28, scope: !3978)
!3989 = !DILocation(line: 100, column: 30, scope: !3978)
!3990 = !DILocation(line: 101, column: 27, scope: !3978)
!3991 = !DILocation(line: 101, column: 30, scope: !3978)
!3992 = !DILocation(line: 101, column: 33, scope: !3978)
!3993 = !DILocation(line: 101, column: 13, scope: !3978)
!3994 = !DILocation(line: 102, column: 13, scope: !3978)
!3995 = !DILocation(line: 100, column: 3, scope: !3978)
!3996 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !207, file: !207, line: 100, type: !3997, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !206, retainedNodes: !36)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!138, !3999, !34, !138, !4000}
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!4001 = !DILocalVariable(name: "pwc", arg: 1, scope: !3996, file: !207, line: 100, type: !3999)
!4002 = !DILocation(line: 100, column: 21, scope: !3996)
!4003 = !DILocalVariable(name: "s", arg: 2, scope: !3996, file: !207, line: 100, type: !34)
!4004 = !DILocation(line: 100, column: 38, scope: !3996)
!4005 = !DILocalVariable(name: "n", arg: 3, scope: !3996, file: !207, line: 100, type: !138)
!4006 = !DILocation(line: 100, column: 48, scope: !3996)
!4007 = !DILocalVariable(name: "ps", arg: 4, scope: !3996, file: !207, line: 100, type: !4000)
!4008 = !DILocation(line: 100, column: 62, scope: !3996)
!4009 = !DILocation(line: 105, column: 7, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3996, file: !207, line: 105, column: 7)
!4011 = !DILocation(line: 105, column: 9, scope: !4010)
!4012 = !DILocation(line: 105, column: 7, scope: !3996)
!4013 = !DILocation(line: 107, column: 11, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4010, file: !207, line: 106, column: 5)
!4015 = !DILocation(line: 108, column: 9, scope: !4014)
!4016 = !DILocation(line: 109, column: 9, scope: !4014)
!4017 = !DILocation(line: 110, column: 5, scope: !4014)
!4018 = !DILocation(line: 117, column: 7, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3996, file: !207, line: 117, column: 7)
!4020 = !DILocation(line: 117, column: 10, scope: !4019)
!4021 = !DILocation(line: 117, column: 7, scope: !3996)
!4022 = !DILocation(line: 118, column: 8, scope: !4019)
!4023 = !DILocation(line: 118, column: 5, scope: !4019)
!4024 = !DILocalVariable(name: "ret", scope: !3996, file: !207, line: 130, type: !138)
!4025 = !DILocation(line: 130, column: 10, scope: !3996)
!4026 = !DILocation(line: 130, column: 26, scope: !3996)
!4027 = !DILocation(line: 130, column: 31, scope: !3996)
!4028 = !DILocation(line: 130, column: 34, scope: !3996)
!4029 = !DILocation(line: 130, column: 37, scope: !3996)
!4030 = !DILocation(line: 130, column: 16, scope: !3996)
!4031 = !DILocation(line: 135, column: 7, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3996, file: !207, line: 135, column: 7)
!4033 = !DILocation(line: 135, column: 11, scope: !4032)
!4034 = !DILocation(line: 135, column: 25, scope: !4032)
!4035 = !DILocation(line: 135, column: 39, scope: !4032)
!4036 = !DILocation(line: 135, column: 30, scope: !4032)
!4037 = !DILocation(line: 135, column: 7, scope: !3996)
!4038 = !DILocation(line: 137, column: 14, scope: !4032)
!4039 = !DILocation(line: 137, column: 5, scope: !4032)
!4040 = !DILocation(line: 138, column: 7, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !3996, file: !207, line: 138, column: 7)
!4042 = !DILocation(line: 138, column: 11, scope: !4041)
!4043 = !DILocation(line: 138, column: 7, scope: !3996)
!4044 = !DILocation(line: 139, column: 5, scope: !4041)
!4045 = !DILocation(line: 143, column: 22, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !3996, file: !207, line: 143, column: 7)
!4047 = !DILocation(line: 143, column: 19, scope: !4046)
!4048 = !DILocation(line: 143, column: 26, scope: !4046)
!4049 = !DILocation(line: 143, column: 29, scope: !4046)
!4050 = !DILocation(line: 143, column: 31, scope: !4046)
!4051 = !DILocation(line: 143, column: 36, scope: !4046)
!4052 = !DILocation(line: 143, column: 41, scope: !4046)
!4053 = !DILocation(line: 143, column: 7, scope: !3996)
!4054 = !DILocation(line: 145, column: 11, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !207, line: 145, column: 11)
!4056 = distinct !DILexicalBlock(scope: !4046, file: !207, line: 144, column: 5)
!4057 = !DILocation(line: 145, column: 15, scope: !4055)
!4058 = !DILocation(line: 145, column: 11, scope: !4056)
!4059 = !DILocation(line: 146, column: 33, scope: !4055)
!4060 = !DILocation(line: 146, column: 32, scope: !4055)
!4061 = !DILocation(line: 146, column: 16, scope: !4055)
!4062 = !DILocation(line: 146, column: 10, scope: !4055)
!4063 = !DILocation(line: 146, column: 14, scope: !4055)
!4064 = !DILocation(line: 146, column: 9, scope: !4055)
!4065 = !DILocation(line: 147, column: 7, scope: !4056)
!4066 = !DILocation(line: 151, column: 10, scope: !3996)
!4067 = !DILocation(line: 151, column: 3, scope: !3996)
!4068 = !DILocation(line: 286, column: 1, scope: !3996)
!4069 = distinct !DISubprogram(name: "mbszero", scope: !4070, file: !4070, line: 1135, type: !4071, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !36)
!4070 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !4073}
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !212, line: 6, baseType: !4075)
!4075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !214, line: 21, baseType: !4076)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 13, size: 64, elements: !4077)
!4077 = !{!4078, !4079}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4076, file: !214, line: 15, baseType: !25, size: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4076, file: !214, line: 20, baseType: !4080, size: 32, offset: 32)
!4080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !214, line: 16, size: 32, elements: !4081)
!4081 = !{!4082, !4083}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4080, file: !214, line: 18, baseType: !7, size: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4080, file: !214, line: 19, baseType: !223, size: 32)
!4084 = !DILocalVariable(name: "ps", arg: 1, scope: !4069, file: !4070, line: 1135, type: !4073)
!4085 = !DILocation(line: 1135, column: 21, scope: !4069)
!4086 = !DILocation(line: 1137, column: 11, scope: !4069)
!4087 = !DILocation(line: 1137, column: 3, scope: !4069)
!4088 = !DILocation(line: 1138, column: 1, scope: !4069)
!4089 = distinct !DISubprogram(name: "memeq", scope: !2839, file: !2839, line: 974, type: !4090, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !36)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!61, !3458, !3458, !138}
!4092 = !DILocalVariable(name: "__s1", arg: 1, scope: !4089, file: !2839, line: 974, type: !3458)
!4093 = !DILocation(line: 974, column: 20, scope: !4089)
!4094 = !DILocalVariable(name: "__s2", arg: 2, scope: !4089, file: !2839, line: 974, type: !3458)
!4095 = !DILocation(line: 974, column: 38, scope: !4089)
!4096 = !DILocalVariable(name: "__n", arg: 3, scope: !4089, file: !2839, line: 974, type: !138)
!4097 = !DILocation(line: 974, column: 51, scope: !4089)
!4098 = !DILocation(line: 976, column: 19, scope: !4089)
!4099 = !DILocation(line: 976, column: 25, scope: !4089)
!4100 = !DILocation(line: 976, column: 31, scope: !4089)
!4101 = !DILocation(line: 976, column: 11, scope: !4089)
!4102 = !DILocation(line: 976, column: 10, scope: !4089)
!4103 = !DILocation(line: 976, column: 3, scope: !4089)
!4104 = distinct !DISubprogram(name: "rpl_realloc", scope: !4105, file: !4105, line: 2057, type: !3223, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !279, retainedNodes: !36)
!4105 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4106 = !DILocalVariable(name: "ptr", arg: 1, scope: !4104, file: !4105, line: 2057, type: !24)
!4107 = !DILocation(line: 2057, column: 20, scope: !4104)
!4108 = !DILocalVariable(name: "size", arg: 2, scope: !4104, file: !4105, line: 2057, type: !138)
!4109 = !DILocation(line: 2057, column: 32, scope: !4104)
!4110 = !DILocation(line: 2059, column: 19, scope: !4104)
!4111 = !DILocation(line: 2059, column: 24, scope: !4104)
!4112 = !DILocation(line: 2059, column: 31, scope: !4104)
!4113 = !DILocation(line: 2059, column: 10, scope: !4104)
!4114 = !DILocation(line: 2059, column: 3, scope: !4104)
!4115 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !282, file: !282, line: 27, type: !3160, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !36)
!4116 = !DILocalVariable(name: "ptr", arg: 1, scope: !4115, file: !282, line: 27, type: !24)
!4117 = !DILocation(line: 27, column: 21, scope: !4115)
!4118 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4115, file: !282, line: 27, type: !138)
!4119 = !DILocation(line: 27, column: 33, scope: !4115)
!4120 = !DILocalVariable(name: "size", arg: 3, scope: !4115, file: !282, line: 27, type: !138)
!4121 = !DILocation(line: 27, column: 47, scope: !4115)
!4122 = !DILocalVariable(name: "nbytes", scope: !4115, file: !282, line: 29, type: !138)
!4123 = !DILocation(line: 29, column: 10, scope: !4115)
!4124 = !DILocation(line: 30, column: 7, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4115, file: !282, line: 30, column: 7)
!4126 = !DILocation(line: 30, column: 7, scope: !4115)
!4127 = !DILocation(line: 32, column: 7, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4125, file: !282, line: 31, column: 5)
!4129 = !DILocation(line: 32, column: 13, scope: !4128)
!4130 = !DILocation(line: 33, column: 7, scope: !4128)
!4131 = !DILocation(line: 37, column: 19, scope: !4115)
!4132 = !DILocation(line: 37, column: 24, scope: !4115)
!4133 = !DILocation(line: 37, column: 10, scope: !4115)
!4134 = !DILocation(line: 37, column: 3, scope: !4115)
!4135 = !DILocation(line: 38, column: 1, scope: !4115)
!4136 = distinct !DISubprogram(name: "hard_locale", scope: !285, file: !285, line: 28, type: !4137, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !284, retainedNodes: !36)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!61, !25}
!4139 = !DILocalVariable(name: "category", arg: 1, scope: !4136, file: !285, line: 28, type: !25)
!4140 = !DILocation(line: 28, column: 18, scope: !4136)
!4141 = !DILocalVariable(name: "locale", scope: !4136, file: !285, line: 30, type: !4142)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !4143)
!4143 = !{!4144}
!4144 = !DISubrange(count: 257)
!4145 = !DILocation(line: 30, column: 8, scope: !4136)
!4146 = !DILocation(line: 32, column: 25, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4136, file: !285, line: 32, column: 7)
!4148 = !DILocation(line: 32, column: 35, scope: !4147)
!4149 = !DILocation(line: 32, column: 7, scope: !4147)
!4150 = !DILocation(line: 32, column: 7, scope: !4136)
!4151 = !DILocation(line: 33, column: 5, scope: !4147)
!4152 = !DILocation(line: 35, column: 16, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4136, file: !285, line: 35, column: 7)
!4154 = !DILocation(line: 35, column: 9, scope: !4153)
!4155 = !DILocation(line: 35, column: 29, scope: !4153)
!4156 = !DILocation(line: 35, column: 39, scope: !4153)
!4157 = !DILocation(line: 35, column: 32, scope: !4153)
!4158 = !DILocation(line: 35, column: 7, scope: !4136)
!4159 = !DILocation(line: 36, column: 5, scope: !4153)
!4160 = !DILocation(line: 46, column: 3, scope: !4136)
!4161 = !DILocation(line: 47, column: 1, scope: !4136)
!4162 = distinct !DISubprogram(name: "setlocale_null_r", scope: !287, file: !287, line: 154, type: !4163, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !36)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!25, !25, !22, !138}
!4165 = !DILocalVariable(name: "category", arg: 1, scope: !4162, file: !287, line: 154, type: !25)
!4166 = !DILocation(line: 154, column: 23, scope: !4162)
!4167 = !DILocalVariable(name: "buf", arg: 2, scope: !4162, file: !287, line: 154, type: !22)
!4168 = !DILocation(line: 154, column: 39, scope: !4162)
!4169 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4162, file: !287, line: 154, type: !138)
!4170 = !DILocation(line: 154, column: 51, scope: !4162)
!4171 = !DILocation(line: 159, column: 37, scope: !4162)
!4172 = !DILocation(line: 159, column: 47, scope: !4162)
!4173 = !DILocation(line: 159, column: 52, scope: !4162)
!4174 = !DILocation(line: 159, column: 10, scope: !4162)
!4175 = !DILocation(line: 159, column: 3, scope: !4162)
!4176 = distinct !DISubprogram(name: "setlocale_null", scope: !287, file: !287, line: 186, type: !4177, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !36)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!34, !25}
!4179 = !DILocalVariable(name: "category", arg: 1, scope: !4176, file: !287, line: 186, type: !25)
!4180 = !DILocation(line: 186, column: 21, scope: !4176)
!4181 = !DILocation(line: 189, column: 35, scope: !4176)
!4182 = !DILocation(line: 189, column: 10, scope: !4176)
!4183 = !DILocation(line: 189, column: 3, scope: !4176)
!4184 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !289, file: !289, line: 35, type: !4177, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !288, retainedNodes: !36)
!4185 = !DILocalVariable(name: "category", arg: 1, scope: !4184, file: !289, line: 35, type: !25)
!4186 = !DILocation(line: 35, column: 30, scope: !4184)
!4187 = !DILocalVariable(name: "result", scope: !4184, file: !289, line: 37, type: !34)
!4188 = !DILocation(line: 37, column: 15, scope: !4184)
!4189 = !DILocation(line: 37, column: 35, scope: !4184)
!4190 = !DILocation(line: 37, column: 24, scope: !4184)
!4191 = !DILocation(line: 62, column: 10, scope: !4184)
!4192 = !DILocation(line: 62, column: 3, scope: !4184)
!4193 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !289, file: !289, line: 66, type: !4163, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !288, retainedNodes: !36)
!4194 = !DILocalVariable(name: "category", arg: 1, scope: !4193, file: !289, line: 66, type: !25)
!4195 = !DILocation(line: 66, column: 32, scope: !4193)
!4196 = !DILocalVariable(name: "buf", arg: 2, scope: !4193, file: !289, line: 66, type: !22)
!4197 = !DILocation(line: 66, column: 48, scope: !4193)
!4198 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4193, file: !289, line: 66, type: !138)
!4199 = !DILocation(line: 66, column: 60, scope: !4193)
!4200 = !DILocalVariable(name: "result", scope: !4193, file: !289, line: 111, type: !34)
!4201 = !DILocation(line: 111, column: 15, scope: !4193)
!4202 = !DILocation(line: 111, column: 49, scope: !4193)
!4203 = !DILocation(line: 111, column: 24, scope: !4193)
!4204 = !DILocation(line: 113, column: 7, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4193, file: !289, line: 113, column: 7)
!4206 = !DILocation(line: 113, column: 14, scope: !4205)
!4207 = !DILocation(line: 113, column: 7, scope: !4193)
!4208 = !DILocation(line: 116, column: 11, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !289, line: 116, column: 11)
!4210 = distinct !DILexicalBlock(scope: !4205, file: !289, line: 114, column: 5)
!4211 = !DILocation(line: 116, column: 19, scope: !4209)
!4212 = !DILocation(line: 116, column: 11, scope: !4210)
!4213 = !DILocation(line: 120, column: 9, scope: !4209)
!4214 = !DILocation(line: 120, column: 16, scope: !4209)
!4215 = !DILocation(line: 121, column: 7, scope: !4210)
!4216 = !DILocalVariable(name: "length", scope: !4217, file: !289, line: 125, type: !138)
!4217 = distinct !DILexicalBlock(scope: !4205, file: !289, line: 124, column: 5)
!4218 = !DILocation(line: 125, column: 14, scope: !4217)
!4219 = !DILocation(line: 125, column: 31, scope: !4217)
!4220 = !DILocation(line: 125, column: 23, scope: !4217)
!4221 = !DILocation(line: 126, column: 11, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4217, file: !289, line: 126, column: 11)
!4223 = !DILocation(line: 126, column: 20, scope: !4222)
!4224 = !DILocation(line: 126, column: 18, scope: !4222)
!4225 = !DILocation(line: 126, column: 11, scope: !4217)
!4226 = !DILocation(line: 128, column: 19, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4222, file: !289, line: 127, column: 9)
!4228 = !DILocation(line: 128, column: 24, scope: !4227)
!4229 = !DILocation(line: 128, column: 32, scope: !4227)
!4230 = !DILocation(line: 128, column: 39, scope: !4227)
!4231 = !DILocation(line: 128, column: 11, scope: !4227)
!4232 = !DILocation(line: 129, column: 11, scope: !4227)
!4233 = !DILocation(line: 133, column: 15, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4235, file: !289, line: 133, column: 15)
!4235 = distinct !DILexicalBlock(scope: !4222, file: !289, line: 132, column: 9)
!4236 = !DILocation(line: 133, column: 23, scope: !4234)
!4237 = !DILocation(line: 133, column: 15, scope: !4235)
!4238 = !DILocation(line: 138, column: 23, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4234, file: !289, line: 134, column: 13)
!4240 = !DILocation(line: 138, column: 28, scope: !4239)
!4241 = !DILocation(line: 138, column: 36, scope: !4239)
!4242 = !DILocation(line: 138, column: 44, scope: !4239)
!4243 = !DILocation(line: 138, column: 15, scope: !4239)
!4244 = !DILocation(line: 139, column: 15, scope: !4239)
!4245 = !DILocation(line: 139, column: 19, scope: !4239)
!4246 = !DILocation(line: 139, column: 27, scope: !4239)
!4247 = !DILocation(line: 139, column: 32, scope: !4239)
!4248 = !DILocation(line: 140, column: 13, scope: !4239)
!4249 = !DILocation(line: 141, column: 11, scope: !4235)
!4250 = !DILocation(line: 145, column: 1, scope: !4193)
