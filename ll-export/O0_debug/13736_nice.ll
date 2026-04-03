; ModuleID = 'src/nice.bc'
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
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s [OPTION] [COMMAND [ARG]...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [222 x i8] c"Run COMMAND with an adjusted niceness, which affects process scheduling.\0AWith no COMMAND, print the current niceness.  Niceness values range from\0A%d (most favorable to the process) to %d (least favorable to the process).\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"  -n, --adjustment=N\0A         add integer N to the niceness (default 10)\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@optind = external global i32, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"+n:\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external global i8*, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid adjustment %s\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"a command must be given with an adjustment\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"cannot get niceness\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"cannot set niceness\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !58
@.str.21 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.43 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.48 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.52 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.53 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"adjustment\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0), align 8, !dbg !77
@file_name = internal global i8* null, align 8, !dbg !82
@ignore_EPIPE = internal global i8 0, align 1, !dbg !87
@.str.65 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.66 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.67 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !90
@stderr = external global %struct._IO_FILE*, align 8
@.str.69 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !119
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !96
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !115
@.str.1.75 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.76 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.77 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !117
@.str.4.70 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.71 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.72 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
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
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !170
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !188
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !202
@nslots = internal global i32 1, align 4, !dbg !209
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !190
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !211
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !176
@.str.10.100 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.101 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.102 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.103 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !195
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !217
@exit_failure = dso_local global i32 1, align 4, !dbg !225
@.str.150 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.148 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.149 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.173 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !231
@.str.184 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.185 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !328 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !331, metadata !DIExpression()), !dbg !332
  %3 = load i32, i32* %2, align 4, !dbg !333
  %4 = icmp ne i32 %3, 0, !dbg !335
  br i1 %4, label %5, label %12, !dbg !336

5:                                                ; preds = %1
  br label %6, !dbg !337

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !338
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !338
  %9 = load i8*, i8** @program_name, align 8, !dbg !338
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !338
  br label %11, !dbg !338

11:                                               ; preds = %6
  br label %23, !dbg !338

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !340
  %14 = load i8*, i8** @program_name, align 8, !dbg !342
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !343
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([222 x i8], [222 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !344
  %17 = call i32 (i8*, ...) @printf(i8* noundef %16, i32 noundef -20, i32 noundef 19), !dbg !345
  call void @emit_mandatory_arg_note(), !dbg !346
  %18 = call i8* @gettext(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !347
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %18), !dbg !347
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !348
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !348
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !349
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !349
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !350
  %22 = call i32 (i8*, ...) @printf(i8* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !351
  call void @emit_exec_status(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !352
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !353
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32, i32* %2, align 4, !dbg !354
  call void @exit(i32 noundef %24) #19, !dbg !355
  unreachable, !dbg !355
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #4 !dbg !356 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0)) #18, !dbg !357
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !357
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !60 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !359, metadata !DIExpression()), !dbg !360
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !361, metadata !DIExpression()), !dbg !362
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !363
  %15 = icmp eq i32 %14, -1, !dbg !365
  br i1 %15, label %16, label %30, !dbg !366

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !367, metadata !DIExpression()), !dbg !369
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #18, !dbg !370
  store i8* %17, i8** %5, align 8, !dbg !369
  %18 = load i8*, i8** %5, align 8, !dbg !371
  %19 = icmp ne i8* %18, null, !dbg !371
  br i1 %19, label %20, label %27, !dbg !372

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !373
  %22 = load i8, i8* %21, align 1, !dbg !374
  %23 = icmp ne i8 %22, 0, !dbg !374
  br i1 %23, label %24, label %27, !dbg !375

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !376
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)), !dbg !377
  br label %27, !dbg !375

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !375
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !378
  br label %30, !dbg !379

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !380
  %32 = icmp ne i32 %31, 0, !dbg !380
  br i1 %32, label %33, label %37, !dbg !382

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !383
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !383
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !383
  br label %274, !dbg !385

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !386, metadata !DIExpression()), !dbg !387
  store i8 1, i8* %6, align 1, !dbg !387
  call void @llvm.dbg.declare(metadata i8** %7, metadata !388, metadata !DIExpression()), !dbg !389
  %38 = load i8*, i8** %4, align 8, !dbg !390
  %39 = load i8*, i8** %4, align 8, !dbg !391
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)) #20, !dbg !392
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !393
  store i8* %41, i8** %7, align 8, !dbg !389
  call void @llvm.dbg.declare(metadata i8** %8, metadata !394, metadata !DIExpression()), !dbg !395
  %42 = load i8*, i8** %4, align 8, !dbg !396
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !397
  store i8* %43, i8** %8, align 8, !dbg !395
  %44 = load i8*, i8** %8, align 8, !dbg !398
  %45 = icmp ne i8* %44, null, !dbg !398
  br i1 %45, label %48, label %46, !dbg !400

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !401
  store i8* %47, i8** %8, align 8, !dbg !403
  store i8 0, i8* %6, align 1, !dbg !404
  br label %89, !dbg !405

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !406
  %50 = load i8*, i8** %7, align 8, !dbg !408
  %51 = icmp ne i8* %49, %50, !dbg !409
  br i1 %51, label %52, label %88, !dbg !410

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !411, metadata !DIExpression()), !dbg !413
  %53 = load i8*, i8** %7, align 8, !dbg !414
  store i8* %53, i8** %9, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata i64* %10, metadata !415, metadata !DIExpression()), !dbg !416
  store i64 0, i64* %10, align 8, !dbg !416
  br label %54, !dbg !417

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !418
  %56 = load i8*, i8** %8, align 8, !dbg !419
  %57 = icmp ult i8* %55, %56, !dbg !420
  br i1 %57, label %58, label %61, !dbg !421

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !422
  %60 = icmp ult i64 %59, 2, !dbg !423
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !424
  br i1 %62, label %63, label %82, !dbg !417

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !425
  %65 = load i16*, i16** %64, align 8, !dbg !425
  %66 = load i8*, i8** %9, align 8, !dbg !425
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !425
  store i8* %67, i8** %9, align 8, !dbg !425
  %68 = load i8, i8* %66, align 1, !dbg !425
  %69 = zext i8 %68 to i32, !dbg !425
  %70 = sext i32 %69 to i64, !dbg !425
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !425
  %72 = load i16, i16* %71, align 2, !dbg !425
  %73 = zext i16 %72 to i32, !dbg !425
  %74 = and i32 %73, 8192, !dbg !425
  %75 = icmp ne i32 %74, 0, !dbg !426
  %76 = xor i1 %75, true, !dbg !426
  %77 = xor i1 %76, true, !dbg !427
  %78 = zext i1 %77 to i32, !dbg !427
  %79 = sext i32 %78 to i64, !dbg !427
  %80 = load i64, i64* %10, align 8, !dbg !428
  %81 = add i64 %80, %79, !dbg !428
  store i64 %81, i64* %10, align 8, !dbg !428
  br label %54, !dbg !417, !llvm.loop !429

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !431
  %84 = icmp eq i64 %83, 2, !dbg !433
  br i1 %84, label %85, label %87, !dbg !434

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !435
  store i8* %86, i8** %8, align 8, !dbg !437
  store i8 0, i8* %6, align 1, !dbg !438
  br label %87, !dbg !439

87:                                               ; preds = %85, %82
  br label %88, !dbg !440

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !441, metadata !DIExpression()), !dbg !442
  %90 = load i8*, i8** %8, align 8, !dbg !443
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)) #20, !dbg !444
  store i64 %91, i64* %11, align 8, !dbg !442
  call void @llvm.dbg.declare(metadata i8** %12, metadata !445, metadata !DIExpression()), !dbg !446
  %92 = load i8*, i8** %8, align 8, !dbg !447
  %93 = load i64, i64* %11, align 8, !dbg !448
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !449
  store i8* %94, i8** %12, align 8, !dbg !446
  br label %95, !dbg !450

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !451
  %97 = load i8, i8* %96, align 1, !dbg !452
  %98 = zext i8 %97 to i32, !dbg !452
  %99 = icmp ne i32 %98, 0, !dbg !452
  br i1 %99, label %100, label %105, !dbg !453

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !454
  %102 = load i8, i8* %101, align 1, !dbg !455
  %103 = zext i8 %102 to i32, !dbg !455
  %104 = icmp ne i32 %103, 10, !dbg !456
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !457
  br i1 %106, label %107, label %164, !dbg !450

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !458
  %109 = load i8, i8* %108, align 1, !dbg !461
  %110 = zext i8 %109 to i32, !dbg !461
  %111 = icmp eq i32 %110, 45, !dbg !462
  br i1 %111, label %112, label %119, !dbg !463

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !464
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !465
  %115 = load i8, i8* %114, align 1, !dbg !466
  %116 = zext i8 %115 to i32, !dbg !466
  %117 = icmp eq i32 %116, 45, !dbg !467
  br i1 %117, label %118, label %119, !dbg !468

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !469
  br label %119, !dbg !470

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !471
  %121 = load i16*, i16** %120, align 8, !dbg !471
  %122 = load i8*, i8** %12, align 8, !dbg !471
  %123 = load i8, i8* %122, align 1, !dbg !471
  %124 = zext i8 %123 to i32, !dbg !471
  %125 = sext i32 %124 to i64, !dbg !471
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !471
  %127 = load i16, i16* %126, align 2, !dbg !471
  %128 = zext i16 %127 to i32, !dbg !471
  %129 = and i32 %128, 8192, !dbg !471
  %130 = icmp ne i32 %129, 0, !dbg !471
  br i1 %130, label %131, label %161, !dbg !473

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !474
  %133 = load i8, i8* %132, align 1, !dbg !477
  %134 = zext i8 %133 to i32, !dbg !477
  %135 = icmp eq i32 %134, 9, !dbg !478
  br i1 %135, label %149, label %136, !dbg !479

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !480
  %138 = load i16*, i16** %137, align 8, !dbg !480
  %139 = load i8*, i8** %12, align 8, !dbg !480
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !480
  %141 = load i8, i8* %140, align 1, !dbg !480
  %142 = zext i8 %141 to i32, !dbg !480
  %143 = sext i32 %142 to i64, !dbg !480
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !480
  %145 = load i16, i16* %144, align 2, !dbg !480
  %146 = zext i16 %145 to i32, !dbg !480
  %147 = and i32 %146, 8192, !dbg !480
  %148 = icmp ne i32 %147, 0, !dbg !480
  br i1 %148, label %149, label %150, !dbg !481

149:                                              ; preds = %136, %131
  br label %164, !dbg !482

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !483
  %152 = trunc i8 %151 to i1, !dbg !483
  br i1 %152, label %160, label %153, !dbg !485

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !486
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !487
  %156 = load i8, i8* %155, align 1, !dbg !488
  %157 = zext i8 %156 to i32, !dbg !488
  %158 = icmp ne i32 %157, 45, !dbg !489
  br i1 %158, label %159, label %160, !dbg !490

159:                                              ; preds = %153
  br label %164, !dbg !491

160:                                              ; preds = %153, %150
  br label %161, !dbg !492

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !493
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !493
  store i8* %163, i8** %12, align 8, !dbg !493
  br label %95, !dbg !450, !llvm.loop !494

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !496
  %166 = load i8*, i8** %7, align 8, !dbg !496
  %167 = load i8*, i8** %4, align 8, !dbg !496
  %168 = ptrtoint i8* %166 to i64, !dbg !496
  %169 = ptrtoint i8* %167 to i64, !dbg !496
  %170 = sub i64 %168, %169, !dbg !496
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !496
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !496
  call void @llvm.dbg.declare(metadata i8** %13, metadata !497, metadata !DIExpression()), !dbg !498
  %173 = load i8*, i8** %3, align 8, !dbg !499
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)), !dbg !500
  br i1 %174, label %175, label %176, !dbg !500

175:                                              ; preds = %164
  br label %232, !dbg !500

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !501
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0)), !dbg !502
  br i1 %178, label %179, label %180, !dbg !502

179:                                              ; preds = %176
  br label %230, !dbg !502

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !503
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)), !dbg !504
  br i1 %182, label %183, label %184, !dbg !504

183:                                              ; preds = %180
  br label %228, !dbg !504

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !505
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)), !dbg !506
  br i1 %186, label %187, label %188, !dbg !506

187:                                              ; preds = %184
  br label %226, !dbg !506

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !507
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0)), !dbg !508
  br i1 %190, label %191, label %192, !dbg !508

191:                                              ; preds = %188
  br label %224, !dbg !508

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !509
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)), !dbg !510
  br i1 %194, label %195, label %196, !dbg !510

195:                                              ; preds = %192
  br label %222, !dbg !510

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !511
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)), !dbg !512
  br i1 %198, label %199, label %200, !dbg !512

199:                                              ; preds = %196
  br label %220, !dbg !512

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !513
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0)), !dbg !514
  br i1 %202, label %203, label %204, !dbg !514

203:                                              ; preds = %200
  br label %218, !dbg !514

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !515
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0)), !dbg !516
  br i1 %206, label %207, label %208, !dbg !516

207:                                              ; preds = %204
  br label %216, !dbg !516

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !517
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0)), !dbg !518
  br i1 %210, label %211, label %212, !dbg !518

211:                                              ; preds = %208
  br label %214, !dbg !518

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !519
  br label %214, !dbg !518

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !518
  br label %216, !dbg !516

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !516
  br label %218, !dbg !514

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !514
  br label %220, !dbg !512

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !512
  br label %222, !dbg !510

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !510
  br label %224, !dbg !508

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !508
  br label %226, !dbg !506

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !506
  br label %228, !dbg !504

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !504
  br label %230, !dbg !502

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !502
  br label %232, !dbg !500

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !500
  store i8* %233, i8** %13, align 8, !dbg !498
  %234 = load i8*, i8** %8, align 8, !dbg !520
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i64 noundef 6) #20, !dbg !520
  %236 = icmp eq i32 %235, 0, !dbg !520
  br i1 %236, label %241, label %237, !dbg !522

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !523
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i64 noundef 9) #20, !dbg !523
  %240 = icmp eq i32 %239, 0, !dbg !523
  br i1 %240, label %241, label %248, !dbg !524

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !525
  %243 = load i8*, i8** %13, align 8, !dbg !527
  %244 = load i64, i64* %11, align 8, !dbg !528
  %245 = trunc i64 %244 to i32, !dbg !529
  %246 = load i8*, i8** %8, align 8, !dbg !530
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !531
  br label %254, !dbg !532

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !533
  %250 = load i64, i64* %11, align 8, !dbg !535
  %251 = trunc i64 %250 to i32, !dbg !536
  %252 = load i8*, i8** %8, align 8, !dbg !537
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.43, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !538
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !539
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !539
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !540
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !540
  %259 = load i8*, i8** %7, align 8, !dbg !541
  %260 = load i8*, i8** %12, align 8, !dbg !541
  %261 = load i8*, i8** %7, align 8, !dbg !541
  %262 = ptrtoint i8* %260 to i64, !dbg !541
  %263 = ptrtoint i8* %261 to i64, !dbg !541
  %264 = sub i64 %262, %263, !dbg !541
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !541
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !541
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !542
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !542
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !543
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !543
  %271 = load i8*, i8** %12, align 8, !dbg !544
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !544
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !544
  br label %274, !dbg !545

274:                                              ; preds = %254, %33
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_exec_status(i8* noundef %0) #4 !dbg !546 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !549, metadata !DIExpression()), !dbg !550
  %3 = call i8* @gettext(i8* noundef getelementptr inbounds ([180 x i8], [180 x i8]* @.str.48, i64 0, i64 0)) #18, !dbg !551
  %4 = load i8*, i8** %2, align 8, !dbg !552
  %5 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef %4), !dbg !553
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !555 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !558, metadata !DIExpression()), !dbg !567
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !567
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !567
  call void @llvm.dbg.declare(metadata i8** %4, metadata !568, metadata !DIExpression()), !dbg !569
  %9 = load i8*, i8** %2, align 8, !dbg !570
  store i8* %9, i8** %4, align 8, !dbg !569
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !571, metadata !DIExpression()), !dbg !573
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !574
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !573
  br label %11, !dbg !575

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !576
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !577
  %14 = load i8*, i8** %13, align 8, !dbg !577
  %15 = icmp ne i8* %14, null, !dbg !576
  br i1 %15, label %16, label %23, !dbg !578

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !579
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !580
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !581
  %20 = load i8*, i8** %19, align 8, !dbg !581
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !582
  %22 = xor i1 %21, true, !dbg !583
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !584
  br i1 %24, label %25, label %28, !dbg !575

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !585
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !585
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !585
  br label %11, !dbg !575, !llvm.loop !586

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !587
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !589
  %31 = load i8*, i8** %30, align 8, !dbg !589
  %32 = icmp ne i8* %31, null, !dbg !587
  br i1 %32, label %33, label %37, !dbg !590

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !591
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !592
  %36 = load i8*, i8** %35, align 8, !dbg !592
  store i8* %36, i8** %4, align 8, !dbg !593
  br label %37, !dbg !594

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !595
  call void @llvm.dbg.declare(metadata i8** %6, metadata !596, metadata !DIExpression()), !dbg !597
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !598
  store i8* %38, i8** %6, align 8, !dbg !597
  %39 = load i8*, i8** %6, align 8, !dbg !599
  %40 = icmp ne i8* %39, null, !dbg !599
  br i1 %40, label %41, label %49, !dbg !601

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !602
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i64 noundef 3) #20, !dbg !602
  %44 = icmp ne i32 %43, 0, !dbg !602
  br i1 %44, label %45, label %49, !dbg !603

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.53, i64 0, i64 0)) #18, !dbg !604
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !604
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !604
  br label %49, !dbg !606

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !607, metadata !DIExpression()), !dbg !608
  %50 = load i8*, i8** %2, align 8, !dbg !609
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)), !dbg !610
  br i1 %51, label %52, label %53, !dbg !610

52:                                               ; preds = %49
  br label %55, !dbg !610

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !611
  br label %55, !dbg !610

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !610
  store i8* %56, i8** %7, align 8, !dbg !608
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0)) #18, !dbg !612
  %58 = load i8*, i8** %7, align 8, !dbg !613
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0), i8* noundef %58), !dbg !614
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i64 0, i64 0)) #18, !dbg !615
  %61 = load i8*, i8** %4, align 8, !dbg !616
  %62 = load i8*, i8** %4, align 8, !dbg !617
  %63 = load i8*, i8** %2, align 8, !dbg !618
  %64 = icmp eq i8* %62, %63, !dbg !619
  %65 = zext i1 %64 to i64, !dbg !617
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !617
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !620
  ret void, !dbg !621
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i8* @setlocale(i32 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #7

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !22 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !622, metadata !DIExpression()), !dbg !623
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !624, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata i32* %6, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata i32* %7, metadata !628, metadata !DIExpression()), !dbg !629
  store i32 10, i32* %7, align 4, !dbg !629
  call void @llvm.dbg.declare(metadata i8** %8, metadata !630, metadata !DIExpression()), !dbg !631
  store i8* null, i8** %8, align 8, !dbg !631
  call void @llvm.dbg.declare(metadata i8* %9, metadata !632, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.declare(metadata i32* %10, metadata !634, metadata !DIExpression()), !dbg !635
  %18 = load i8**, i8*** %5, align 8, !dbg !636
  %19 = getelementptr inbounds i8*, i8** %18, i64 0, !dbg !636
  %20 = load i8*, i8** %19, align 8, !dbg !636
  call void @set_program_name(i8* noundef %20), !dbg !637
  %21 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !638
  %22 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !639
  %23 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !640
  call void @initialize_exit_failure(i32 noundef 125), !dbg !641
  %24 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !642
  store i32 1, i32* %10, align 4, !dbg !643
  br label %25, !dbg !645

25:                                               ; preds = %104, %2
  %26 = load i32, i32* %10, align 4, !dbg !646
  %27 = load i32, i32* %4, align 4, !dbg !648
  %28 = icmp slt i32 %26, %27, !dbg !649
  br i1 %28, label %29, label %105, !dbg !650

29:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata i8** %11, metadata !651, metadata !DIExpression()), !dbg !653
  %30 = load i8**, i8*** %5, align 8, !dbg !654
  %31 = load i32, i32* %10, align 4, !dbg !655
  %32 = sext i32 %31 to i64, !dbg !654
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32, !dbg !654
  %34 = load i8*, i8** %33, align 8, !dbg !654
  store i8* %34, i8** %11, align 8, !dbg !653
  %35 = load i8*, i8** %11, align 8, !dbg !656
  %36 = getelementptr inbounds i8, i8* %35, i64 0, !dbg !656
  %37 = load i8, i8* %36, align 1, !dbg !656
  %38 = zext i8 %37 to i32, !dbg !656
  %39 = icmp eq i32 %38, 45, !dbg !658
  br i1 %39, label %40, label %67, !dbg !659

40:                                               ; preds = %29
  %41 = load i8*, i8** %11, align 8, !dbg !660
  %42 = load i8*, i8** %11, align 8, !dbg !661
  %43 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !661
  %44 = load i8, i8* %43, align 1, !dbg !661
  %45 = zext i8 %44 to i32, !dbg !661
  %46 = icmp eq i32 %45, 45, !dbg !662
  br i1 %46, label %53, label %47, !dbg !663

47:                                               ; preds = %40
  %48 = load i8*, i8** %11, align 8, !dbg !664
  %49 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !664
  %50 = load i8, i8* %49, align 1, !dbg !664
  %51 = zext i8 %50 to i32, !dbg !664
  %52 = icmp eq i32 %51, 43, !dbg !665
  br label %53, !dbg !663

53:                                               ; preds = %47, %40
  %54 = phi i1 [ true, %40 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32, !dbg !663
  %56 = add nsw i32 1, %55, !dbg !666
  %57 = sext i32 %56 to i64, !dbg !660
  %58 = getelementptr inbounds i8, i8* %41, i64 %57, !dbg !660
  %59 = load i8, i8* %58, align 1, !dbg !660
  %60 = zext i8 %59 to i32, !dbg !660
  %61 = call i1 @c_isdigit(i32 noundef %60), !dbg !667
  br i1 %61, label %62, label %67, !dbg !668

62:                                               ; preds = %53
  %63 = load i8*, i8** %11, align 8, !dbg !669
  %64 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !671
  store i8* %64, i8** %8, align 8, !dbg !672
  %65 = load i32, i32* %10, align 4, !dbg !673
  %66 = add nsw i32 %65, 1, !dbg !673
  store i32 %66, i32* %10, align 4, !dbg !673
  br label %104, !dbg !674

67:                                               ; preds = %53, %29
  call void @llvm.dbg.declare(metadata i32* %12, metadata !675, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.declare(metadata i32* %13, metadata !678, metadata !DIExpression()), !dbg !679
  %68 = load i32, i32* %4, align 4, !dbg !680
  %69 = load i32, i32* %10, align 4, !dbg !681
  %70 = sub nsw i32 %69, 1, !dbg !682
  %71 = sub nsw i32 %68, %70, !dbg !683
  store i32 %71, i32* %13, align 4, !dbg !679
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !684, metadata !DIExpression()), !dbg !685
  %72 = load i8**, i8*** %5, align 8, !dbg !686
  %73 = load i32, i32* %10, align 4, !dbg !687
  %74 = sub nsw i32 %73, 1, !dbg !688
  %75 = sext i32 %74 to i64, !dbg !689
  %76 = getelementptr inbounds i8*, i8** %72, i64 %75, !dbg !689
  store i8** %76, i8*** %14, align 8, !dbg !685
  %77 = load i8**, i8*** %5, align 8, !dbg !690
  %78 = getelementptr inbounds i8*, i8** %77, i64 0, !dbg !690
  %79 = load i8*, i8** %78, align 8, !dbg !690
  %80 = load i8**, i8*** %14, align 8, !dbg !691
  %81 = getelementptr inbounds i8*, i8** %80, i64 0, !dbg !691
  store i8* %79, i8** %81, align 8, !dbg !692
  store i32 0, i32* @optind, align 4, !dbg !693
  %82 = load i32, i32* %13, align 4, !dbg !694
  %83 = load i8**, i8*** %14, align 8, !dbg !695
  %84 = call i32 @getopt_long(i32 noundef %82, i8** noundef %83, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !696
  store i32 %84, i32* %12, align 4, !dbg !697
  %85 = load i32, i32* @optind, align 4, !dbg !698
  %86 = sub nsw i32 %85, 1, !dbg !699
  %87 = load i32, i32* %10, align 4, !dbg !700
  %88 = add nsw i32 %87, %86, !dbg !700
  store i32 %88, i32* %10, align 4, !dbg !700
  %89 = load i32, i32* %12, align 4, !dbg !701
  switch i32 %89, label %98 [
    i32 110, label %90
    i32 -1, label %92
    i32 -2, label %93
    i32 -3, label %94
  ], !dbg !702

90:                                               ; preds = %67
  %91 = load i8*, i8** @optarg, align 8, !dbg !703
  store i8* %91, i8** %8, align 8, !dbg !705
  br label %99, !dbg !706

92:                                               ; preds = %67
  br label %99, !dbg !707

93:                                               ; preds = %67
  call void @usage(i32 noundef 0) #22, !dbg !708
  unreachable, !dbg !708

94:                                               ; preds = %67
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709
  %96 = load i8*, i8** @Version, align 8, !dbg !709
  %97 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)), !dbg !709
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %95, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %96, i8* noundef %97, i8* noundef null), !dbg !709
  call void @exit(i32 noundef 0) #19, !dbg !709
  unreachable, !dbg !709

98:                                               ; preds = %67
  call void @usage(i32 noundef 125) #22, !dbg !710
  unreachable, !dbg !710

99:                                               ; preds = %92, %90
  %100 = load i32, i32* %12, align 4, !dbg !711
  %101 = icmp eq i32 %100, -1, !dbg !713
  br i1 %101, label %102, label %103, !dbg !714

102:                                              ; preds = %99
  br label %105, !dbg !715

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %62
  br label %25, !dbg !716, !llvm.loop !717

105:                                              ; preds = %102, %25
  %106 = load i8*, i8** %8, align 8, !dbg !719
  %107 = icmp ne i8* %106, null, !dbg !719
  br i1 %107, label %108, label %137, !dbg !721

108:                                              ; preds = %105
  call void @llvm.dbg.declare(metadata i64* %15, metadata !722, metadata !DIExpression()), !dbg !724
  %109 = load i8*, i8** %8, align 8, !dbg !725
  %110 = call i32 @xstrtol(i8* noundef %109, i8** noundef null, i32 noundef 10, i64* noundef %15, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)), !dbg !727
  %111 = icmp ult i32 1, %110, !dbg !728
  br i1 %111, label %112, label %116, !dbg !729

112:                                              ; preds = %108
  %113 = call i8* @gettext(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !730
  %114 = load i8*, i8** %8, align 8, !dbg !730
  %115 = call i8* @quote(i8* noundef %114), !dbg !730
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef 0, i8* noundef %113, i8* noundef %115), !dbg !730
  unreachable, !dbg !730

116:                                              ; preds = %108
  %117 = load i64, i64* %15, align 8, !dbg !731
  %118 = icmp slt i64 %117, 39, !dbg !731
  br i1 %118, label %119, label %121, !dbg !731

119:                                              ; preds = %116
  %120 = load i64, i64* %15, align 8, !dbg !731
  br label %122, !dbg !731

121:                                              ; preds = %116
  br label %122, !dbg !731

122:                                              ; preds = %121, %119
  %123 = phi i64 [ %120, %119 ], [ 39, %121 ], !dbg !731
  %124 = icmp sgt i64 -39, %123, !dbg !731
  br i1 %124, label %125, label %126, !dbg !731

125:                                              ; preds = %122
  br label %134, !dbg !731

126:                                              ; preds = %122
  %127 = load i64, i64* %15, align 8, !dbg !731
  %128 = icmp slt i64 %127, 39, !dbg !731
  br i1 %128, label %129, label %131, !dbg !731

129:                                              ; preds = %126
  %130 = load i64, i64* %15, align 8, !dbg !731
  br label %132, !dbg !731

131:                                              ; preds = %126
  br label %132, !dbg !731

132:                                              ; preds = %131, %129
  %133 = phi i64 [ %130, %129 ], [ 39, %131 ], !dbg !731
  br label %134, !dbg !731

134:                                              ; preds = %132, %125
  %135 = phi i64 [ -39, %125 ], [ %133, %132 ], !dbg !731
  %136 = trunc i64 %135 to i32, !dbg !731
  store i32 %136, i32* %7, align 4, !dbg !732
  br label %137, !dbg !733

137:                                              ; preds = %134, %105
  %138 = load i32, i32* %10, align 4, !dbg !734
  %139 = load i32, i32* %4, align 4, !dbg !736
  %140 = icmp eq i32 %138, %139, !dbg !737
  br i1 %140, label %141, label %162, !dbg !738

141:                                              ; preds = %137
  %142 = load i8*, i8** %8, align 8, !dbg !739
  %143 = icmp ne i8* %142, null, !dbg !739
  br i1 %143, label %144, label %146, !dbg !742

144:                                              ; preds = %141
  %145 = call i8* @gettext(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !743
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %145), !dbg !743
  call void @usage(i32 noundef 125) #22, !dbg !745
  unreachable, !dbg !745

146:                                              ; preds = %141
  %147 = call i32* @__errno_location() #21, !dbg !746
  store i32 0, i32* %147, align 4, !dbg !747
  %148 = call i32 @getpriority(i32 noundef 0, i32 noundef 0) #18, !dbg !748
  store i32 %148, i32* %6, align 4, !dbg !749
  %149 = load i32, i32* %6, align 4, !dbg !750
  %150 = icmp eq i32 %149, -1, !dbg !752
  br i1 %150, label %151, label %159, !dbg !753

151:                                              ; preds = %146
  %152 = call i32* @__errno_location() #21, !dbg !754
  %153 = load i32, i32* %152, align 4, !dbg !754
  %154 = icmp ne i32 %153, 0, !dbg !755
  br i1 %154, label %155, label %159, !dbg !756

155:                                              ; preds = %151
  %156 = call i32* @__errno_location() #21, !dbg !757
  %157 = load i32, i32* %156, align 4, !dbg !757
  %158 = call i8* @gettext(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !757
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %157, i8* noundef %158), !dbg !757
  unreachable, !dbg !757

159:                                              ; preds = %151, %146
  %160 = load i32, i32* %6, align 4, !dbg !758
  %161 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 noundef %160), !dbg !759
  store i32 0, i32* %3, align 4, !dbg !760
  br label %230, !dbg !760

162:                                              ; preds = %137
  %163 = call i32* @__errno_location() #21, !dbg !761
  store i32 0, i32* %163, align 4, !dbg !762
  %164 = call i32 @getpriority(i32 noundef 0, i32 noundef 0) #18, !dbg !763
  store i32 %164, i32* %6, align 4, !dbg !764
  %165 = load i32, i32* %6, align 4, !dbg !765
  %166 = icmp eq i32 %165, -1, !dbg !767
  br i1 %166, label %167, label %175, !dbg !768

167:                                              ; preds = %162
  %168 = call i32* @__errno_location() #21, !dbg !769
  %169 = load i32, i32* %168, align 4, !dbg !769
  %170 = icmp ne i32 %169, 0, !dbg !770
  br i1 %170, label %171, label %175, !dbg !771

171:                                              ; preds = %167
  %172 = call i32* @__errno_location() #21, !dbg !772
  %173 = load i32, i32* %172, align 4, !dbg !772
  %174 = call i8* @gettext(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !772
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %173, i8* noundef %174), !dbg !772
  unreachable, !dbg !772

175:                                              ; preds = %167, %162
  %176 = load i32, i32* %6, align 4, !dbg !773
  %177 = load i32, i32* %7, align 4, !dbg !774
  %178 = add nsw i32 %176, %177, !dbg !775
  %179 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %178) #18, !dbg !776
  %180 = icmp eq i32 %179, 0, !dbg !777
  %181 = zext i1 %180 to i8, !dbg !778
  store i8 %181, i8* %9, align 1, !dbg !778
  %182 = load i8, i8* %9, align 1, !dbg !779
  %183 = trunc i8 %182 to i1, !dbg !779
  br i1 %183, label %205, label %184, !dbg !781

184:                                              ; preds = %175
  call void @llvm.dbg.declare(metadata i32* %16, metadata !782, metadata !DIExpression()), !dbg !786
  %185 = call i32* @__errno_location() #21, !dbg !786
  %186 = load i32, i32* %185, align 4, !dbg !786
  %187 = call i1 @perm_related_errno(i32 noundef %186), !dbg !786
  %188 = zext i1 %187 to i64, !dbg !786
  %189 = select i1 %187, i32 0, i32 125, !dbg !786
  store i32 %189, i32* %16, align 4, !dbg !786
  %190 = load i32, i32* %16, align 4, !dbg !786
  %191 = call i32* @__errno_location() #21, !dbg !786
  %192 = load i32, i32* %191, align 4, !dbg !786
  %193 = call i8* @gettext(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0)) #18, !dbg !786
  call void (i32, i32, i8*, ...) @error(i32 noundef %190, i32 noundef %192, i8* noundef %193), !dbg !786
  %194 = load i32, i32* %16, align 4, !dbg !786
  %195 = icmp ne i32 %194, 0, !dbg !786
  br i1 %195, label %196, label %198, !dbg !786

196:                                              ; preds = %184
  unreachable, !dbg !786

197:                                              ; No predecessors!
  br label %199, !dbg !786

198:                                              ; preds = %184
  br label %199, !dbg !786

199:                                              ; preds = %198, %197
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !787
  %201 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %200) #18, !dbg !787
  %202 = icmp ne i32 %201, 0, !dbg !787
  br i1 %202, label %203, label %204, !dbg !789

203:                                              ; preds = %199
  store i32 125, i32* %3, align 4, !dbg !790
  br label %230, !dbg !790

204:                                              ; preds = %199
  br label %205, !dbg !791

205:                                              ; preds = %204, %175
  %206 = load i8**, i8*** %5, align 8, !dbg !792
  %207 = load i32, i32* %10, align 4, !dbg !793
  %208 = sext i32 %207 to i64, !dbg !792
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208, !dbg !792
  %210 = load i8*, i8** %209, align 8, !dbg !792
  %211 = load i8**, i8*** %5, align 8, !dbg !794
  %212 = load i32, i32* %10, align 4, !dbg !795
  %213 = sext i32 %212 to i64, !dbg !794
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213, !dbg !794
  %215 = call i32 @execvp(i8* noundef %210, i8** noundef %214) #18, !dbg !796
  call void @llvm.dbg.declare(metadata i32* %17, metadata !797, metadata !DIExpression()), !dbg !798
  %216 = call i32* @__errno_location() #21, !dbg !799
  %217 = load i32, i32* %216, align 4, !dbg !799
  %218 = icmp eq i32 %217, 2, !dbg !800
  %219 = zext i1 %218 to i64, !dbg !799
  %220 = select i1 %218, i32 127, i32 126, !dbg !799
  store i32 %220, i32* %17, align 4, !dbg !798
  %221 = call i32* @__errno_location() #21, !dbg !801
  %222 = load i32, i32* %221, align 4, !dbg !801
  %223 = load i8**, i8*** %5, align 8, !dbg !801
  %224 = load i32, i32* %10, align 4, !dbg !801
  %225 = sext i32 %224 to i64, !dbg !801
  %226 = getelementptr inbounds i8*, i8** %223, i64 %225, !dbg !801
  %227 = load i8*, i8** %226, align 8, !dbg !801
  %228 = call i8* @quote(i8* noundef %227), !dbg !801
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %222, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %228), !dbg !801
  %229 = load i32, i32* %17, align 4, !dbg !802
  store i32 %229, i32* %3, align 4, !dbg !803
  br label %230, !dbg !803

230:                                              ; preds = %205, %203, %159
  %231 = load i32, i32* %3, align 4, !dbg !804
  ret i32 %231, !dbg !804
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_exit_failure(i32 noundef %0) #4 !dbg !805 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !806, metadata !DIExpression()), !dbg !807
  %3 = load i32, i32* %2, align 4, !dbg !808
  %4 = icmp ne i32 %3, 1, !dbg !810
  br i1 %4, label %5, label %7, !dbg !811

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !812
  store volatile i32 %6, i32* @exit_failure, align 4, !dbg !813
  br label %7, !dbg !814

7:                                                ; preds = %5, %1
  ret void, !dbg !815
}

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i32 @getpriority(i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @perm_related_errno(i32 noundef %0) #4 !dbg !816 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !819, metadata !DIExpression()), !dbg !820
  %3 = load i32, i32* %2, align 4, !dbg !821
  %4 = icmp eq i32 %3, 13, !dbg !822
  br i1 %4, label %8, label %5, !dbg !823

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !824
  %7 = icmp eq i32 %6, 1, !dbg !825
  br label %8, !dbg !823

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !826
}

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @execvp(i8* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalnum(i32 noundef %0) #4 !dbg !827 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !829, metadata !DIExpression()), !dbg !830
  %4 = load i32, i32* %3, align 4, !dbg !831
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
  ], !dbg !832

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !833
  br label %7, !dbg !833

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !835
  br label %7, !dbg !835

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !836
  ret i1 %8, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalpha(i32 noundef %0) #4 !dbg !837 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !838, metadata !DIExpression()), !dbg !839
  %4 = load i32, i32* %3, align 4, !dbg !840
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
  ], !dbg !841

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !842
  br label %7, !dbg !842

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !844
  br label %7, !dbg !844

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !845
  ret i1 %8, !dbg !845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isascii(i32 noundef %0) #4 !dbg !846 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !847, metadata !DIExpression()), !dbg !848
  %4 = load i32, i32* %3, align 4, !dbg !849
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
  ], !dbg !850

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !851
  br label %7, !dbg !851

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !853
  br label %7, !dbg !853

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !854
  ret i1 %8, !dbg !854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isblank(i32 noundef %0) #4 !dbg !855 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !856, metadata !DIExpression()), !dbg !857
  %3 = load i32, i32* %2, align 4, !dbg !858
  %4 = icmp eq i32 %3, 32, !dbg !859
  br i1 %4, label %8, label %5, !dbg !860

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !861
  %7 = icmp eq i32 %6, 9, !dbg !862
  br label %8, !dbg !860

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !863
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_iscntrl(i32 noundef %0) #4 !dbg !864 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !865, metadata !DIExpression()), !dbg !866
  %4 = load i32, i32* %3, align 4, !dbg !867
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
  ], !dbg !868

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !869
  br label %7, !dbg !869

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !871
  br label %7, !dbg !871

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !872
  ret i1 %8, !dbg !872
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isdigit(i32 noundef %0) #4 !dbg !873 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !874, metadata !DIExpression()), !dbg !875
  %4 = load i32, i32* %3, align 4, !dbg !876
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
  ], !dbg !877

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !878
  br label %7, !dbg !878

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !880
  br label %7, !dbg !880

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !881
  ret i1 %8, !dbg !881
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isgraph(i32 noundef %0) #4 !dbg !882 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !883, metadata !DIExpression()), !dbg !884
  %4 = load i32, i32* %3, align 4, !dbg !885
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
  ], !dbg !886

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !887
  br label %7, !dbg !887

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !889
  br label %7, !dbg !889

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !890
  ret i1 %8, !dbg !890
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_islower(i32 noundef %0) #4 !dbg !891 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !892, metadata !DIExpression()), !dbg !893
  %4 = load i32, i32* %3, align 4, !dbg !894
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
  ], !dbg !895

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !896
  br label %7, !dbg !896

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !898
  br label %7, !dbg !898

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !899
  ret i1 %8, !dbg !899
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isprint(i32 noundef %0) #4 !dbg !900 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !901, metadata !DIExpression()), !dbg !902
  %4 = load i32, i32* %3, align 4, !dbg !903
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
  ], !dbg !904

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !905
  br label %7, !dbg !905

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !907
  br label %7, !dbg !907

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !908
  ret i1 %8, !dbg !908
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_ispunct(i32 noundef %0) #4 !dbg !909 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !910, metadata !DIExpression()), !dbg !911
  %4 = load i32, i32* %3, align 4, !dbg !912
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
  ], !dbg !913

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !914
  br label %7, !dbg !914

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !916
  br label %7, !dbg !916

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !917
  ret i1 %8, !dbg !917
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isspace(i32 noundef %0) #4 !dbg !918 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !919, metadata !DIExpression()), !dbg !920
  %4 = load i32, i32* %3, align 4, !dbg !921
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 13, label %5
  ], !dbg !922

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !923
  br label %7, !dbg !923

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !925
  br label %7, !dbg !925

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !926
  ret i1 %8, !dbg !926
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isupper(i32 noundef %0) #4 !dbg !927 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !928, metadata !DIExpression()), !dbg !929
  %4 = load i32, i32* %3, align 4, !dbg !930
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
  ], !dbg !931

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !932
  br label %7, !dbg !932

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !934
  br label %7, !dbg !934

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !935
  ret i1 %8, !dbg !935
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isxdigit(i32 noundef %0) #4 !dbg !936 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !937, metadata !DIExpression()), !dbg !938
  %4 = load i32, i32* %3, align 4, !dbg !939
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
  ], !dbg !940

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !941
  br label %7, !dbg !941

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !943
  br label %7, !dbg !943

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !944
  ret i1 %8, !dbg !944
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_tolower(i32 noundef %0) #4 !dbg !945 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !948, metadata !DIExpression()), !dbg !949
  %4 = load i32, i32* %3, align 4, !dbg !950
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
  ], !dbg !951

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !952
  %7 = sub nsw i32 %6, 65, !dbg !954
  %8 = add nsw i32 %7, 97, !dbg !955
  store i32 %8, i32* %2, align 4, !dbg !956
  br label %11, !dbg !956

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !957
  store i32 %10, i32* %2, align 4, !dbg !958
  br label %11, !dbg !958

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !959
  ret i32 %12, !dbg !959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_toupper(i32 noundef %0) #4 !dbg !960 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !961, metadata !DIExpression()), !dbg !962
  %4 = load i32, i32* %3, align 4, !dbg !963
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
  ], !dbg !964

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !965
  %7 = sub nsw i32 %6, 97, !dbg !967
  %8 = add nsw i32 %7, 65, !dbg !968
  store i32 %8, i32* %2, align 4, !dbg !969
  br label %11, !dbg !969

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !970
  store i32 %10, i32* %2, align 4, !dbg !971
  br label %11, !dbg !971

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !972
  ret i32 %12, !dbg !972
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !973 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !974, metadata !DIExpression()), !dbg !975
  %3 = load i8*, i8** %2, align 8, !dbg !976
  store i8* %3, i8** @file_name, align 8, !dbg !977
  ret void, !dbg !978
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !979 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !982, metadata !DIExpression()), !dbg !983
  %4 = load i8, i8* %2, align 1, !dbg !984
  %5 = trunc i8 %4 to i1, !dbg !984
  %6 = zext i1 %5 to i8, !dbg !985
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !985
  ret void, !dbg !986
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !987 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !988
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !990
  %4 = icmp ne i32 %3, 0, !dbg !991
  br i1 %4, label %5, label %28, !dbg !992

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !993
  %7 = trunc i8 %6 to i1, !dbg !993
  br i1 %7, label %8, label %12, !dbg !994

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !995
  %10 = load i32, i32* %9, align 4, !dbg !995
  %11 = icmp eq i32 %10, 32, !dbg !996
  br i1 %11, label %28, label %12, !dbg !997

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !998, metadata !DIExpression()), !dbg !1000
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.66, i64 0, i64 0)) #18, !dbg !1001
  store i8* %13, i8** %1, align 8, !dbg !1000
  %14 = load i8*, i8** @file_name, align 8, !dbg !1002
  %15 = icmp ne i8* %14, null, !dbg !1002
  br i1 %15, label %16, label %22, !dbg !1004

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !1005
  %18 = load i32, i32* %17, align 4, !dbg !1005
  %19 = load i8*, i8** @file_name, align 8, !dbg !1005
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1005
  %21 = load i8*, i8** %1, align 8, !dbg !1005
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.67, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1005
  br label %26, !dbg !1005

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !1006
  %24 = load i32, i32* %23, align 4, !dbg !1006
  %25 = load i8*, i8** %1, align 8, !dbg !1006
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.68, i64 0, i64 0), i8* noundef %25), !dbg !1006
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1007
  call void @_exit(i32 noundef %27) #22, !dbg !1008
  unreachable, !dbg !1008

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1009
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1011
  %31 = icmp ne i32 %30, 0, !dbg !1012
  br i1 %31, label %32, label %34, !dbg !1013

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1014
  call void @_exit(i32 noundef %33) #22, !dbg !1015
  unreachable, !dbg !1015

34:                                               ; preds = %28
  ret void, !dbg !1016
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !1017 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1020, metadata !DIExpression()), !dbg !1021
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1022, metadata !DIExpression()), !dbg !1021
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1023, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1024, metadata !DIExpression()), !dbg !1021
  call void @flush_stdout(), !dbg !1025
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1026
  %10 = icmp ne void ()* %9, null, !dbg !1026
  br i1 %10, label %11, label %13, !dbg !1028

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1029
  call void %12(), !dbg !1030
  br label %17, !dbg !1030

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1031
  %15 = call i8* @getprogname() #20, !dbg !1033
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), i8* noundef %15), !dbg !1034
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1035
  %19 = load i32, i32* %6, align 4, !dbg !1035
  %20 = load i8*, i8** %7, align 8, !dbg !1035
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1035
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1035
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1035
  ret void, !dbg !1036
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1037 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1038, metadata !DIExpression()), !dbg !1039
  store i32 1, i32* %1, align 4, !dbg !1040
  %2 = load i32, i32* %1, align 4, !dbg !1041
  %3 = icmp sle i32 0, %2, !dbg !1043
  br i1 %3, label %4, label %11, !dbg !1044

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1045
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1046
  %7 = icmp ne i32 %6, 0, !dbg !1046
  br i1 %7, label %8, label %11, !dbg !1047

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1048
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1048
  br label %11, !dbg !1048

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1049
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1050 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1051, metadata !DIExpression()), !dbg !1052
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1053, metadata !DIExpression()), !dbg !1052
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1054, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1055, metadata !DIExpression()), !dbg !1052
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1056
  %10 = load i8*, i8** %7, align 8, !dbg !1057
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1058
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1058
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1058
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1058
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1059
  %15 = add i32 %14, 1, !dbg !1059
  store i32 %15, i32* @error_message_count, align 4, !dbg !1059
  %16 = load i32, i32* %6, align 4, !dbg !1060
  %17 = icmp ne i32 %16, 0, !dbg !1060
  br i1 %17, label %18, label %20, !dbg !1062

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1063
  call void @print_errno_message(i32 noundef %19), !dbg !1064
  br label %20, !dbg !1064

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1065
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1065
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1066
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1066
  %25 = load i32, i32* %5, align 4, !dbg !1067
  %26 = icmp ne i32 %25, 0, !dbg !1067
  br i1 %26, label %27, label %29, !dbg !1069

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1070
  call void @exit(i32 noundef %28) #19, !dbg !1071
  unreachable, !dbg !1071

29:                                               ; preds = %20
  ret void, !dbg !1072
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1073 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1074, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1076, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1078, metadata !DIExpression()), !dbg !1082
  %5 = load i32, i32* %2, align 4, !dbg !1083
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1084
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !1085
  store i8* %7, i8** %3, align 8, !dbg !1086
  %8 = load i8*, i8** %3, align 8, !dbg !1087
  %9 = icmp ne i8* %8, null, !dbg !1087
  br i1 %9, label %12, label %10, !dbg !1089

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.71, i64 0, i64 0)) #18, !dbg !1090
  store i8* %11, i8** %3, align 8, !dbg !1091
  br label %12, !dbg !1092

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1093
  %14 = load i8*, i8** %3, align 8, !dbg !1094
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.72, i64 0, i64 0), i8* noundef %14), !dbg !1095
  ret void, !dbg !1096
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1097 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1098, metadata !DIExpression()), !dbg !1099
  %3 = load i32, i32* %2, align 4, !dbg !1100
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1101
  %5 = icmp sle i32 0, %4, !dbg !1102
  %6 = zext i1 %5 to i32, !dbg !1102
  ret i32 %6, !dbg !1103
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1104 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1107, metadata !DIExpression()), !dbg !1108
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1109, metadata !DIExpression()), !dbg !1110
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1111, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1113, metadata !DIExpression()), !dbg !1114
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1115
  call void @llvm.va_start(i8* %9), !dbg !1115
  %10 = load i32, i32* %4, align 4, !dbg !1116
  %11 = load i32, i32* %5, align 4, !dbg !1116
  %12 = load i8*, i8** %6, align 8, !dbg !1116
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1116
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1116
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !1116
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1117
  call void @llvm.va_end(i8* %15), !dbg !1117
  ret void, !dbg !1118
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !98 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1119, metadata !DIExpression()), !dbg !1120
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1121, metadata !DIExpression()), !dbg !1120
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1122, metadata !DIExpression()), !dbg !1120
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1123, metadata !DIExpression()), !dbg !1120
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1124, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1125, metadata !DIExpression()), !dbg !1120
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1126
  %14 = icmp ne i32 %13, 0, !dbg !1126
  br i1 %14, label %15, label %38, !dbg !1128

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1129
  %17 = load i32, i32* %10, align 4, !dbg !1132
  %18 = icmp eq i32 %16, %17, !dbg !1133
  br i1 %18, label %19, label %35, !dbg !1134

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1135
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1136
  %22 = icmp eq i8* %20, %21, !dbg !1137
  br i1 %22, label %34, label %23, !dbg !1138

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1139
  %25 = icmp ne i8* %24, null, !dbg !1140
  br i1 %25, label %26, label %35, !dbg !1141

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1142
  %28 = icmp ne i8* %27, null, !dbg !1143
  br i1 %28, label %29, label %35, !dbg !1144

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1145
  %31 = load i8*, i8** %9, align 8, !dbg !1146
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1147
  %33 = icmp eq i32 %32, 0, !dbg !1148
  br i1 %33, label %34, label %35, !dbg !1149

34:                                               ; preds = %29, %19
  br label %61, !dbg !1150

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1151
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1152
  %37 = load i32, i32* %10, align 4, !dbg !1153
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1154
  br label %38, !dbg !1155

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1156
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1157
  %40 = icmp ne void ()* %39, null, !dbg !1157
  br i1 %40, label %41, label %43, !dbg !1159

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1160
  call void %42(), !dbg !1161
  br label %47, !dbg !1161

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1162
  %45 = call i8* @getprogname() #20, !dbg !1164
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.75, i64 0, i64 0), i8* noundef %45), !dbg !1165
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1166
  %49 = load i8*, i8** %9, align 8, !dbg !1167
  %50 = icmp ne i8* %49, null, !dbg !1168
  %51 = zext i1 %50 to i64, !dbg !1167
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), !dbg !1167
  %53 = load i8*, i8** %9, align 8, !dbg !1169
  %54 = load i32, i32* %10, align 4, !dbg !1170
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1171
  %56 = load i32, i32* %7, align 4, !dbg !1172
  %57 = load i32, i32* %8, align 4, !dbg !1172
  %58 = load i8*, i8** %11, align 8, !dbg !1172
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1172
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1172
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1172
  br label %61, !dbg !1173

61:                                               ; preds = %47, %34
  ret void, !dbg !1173
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1174 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1177, metadata !DIExpression()), !dbg !1178
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1179, metadata !DIExpression()), !dbg !1180
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1181, metadata !DIExpression()), !dbg !1182
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1183, metadata !DIExpression()), !dbg !1184
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1185, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1187, metadata !DIExpression()), !dbg !1188
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1189
  call void @llvm.va_start(i8* %13), !dbg !1189
  %14 = load i32, i32* %6, align 4, !dbg !1190
  %15 = load i32, i32* %7, align 4, !dbg !1190
  %16 = load i8*, i8** %8, align 8, !dbg !1190
  %17 = load i32, i32* %9, align 4, !dbg !1190
  %18 = load i8*, i8** %10, align 8, !dbg !1190
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1190
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1190
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !1190
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1191
  call void @llvm.va_end(i8* %21), !dbg !1191
  ret void, !dbg !1192
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1193 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1196
  ret i8* %1, !dbg !1197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1198 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1199, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1201, metadata !DIExpression()), !dbg !1202
  %5 = load i8*, i8** %2, align 8, !dbg !1203
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1204
  store i8* %6, i8** %3, align 8, !dbg !1202
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1205, metadata !DIExpression()), !dbg !1206
  %7 = load i8*, i8** %3, align 8, !dbg !1207
  %8 = icmp ne i8* %7, null, !dbg !1207
  br i1 %8, label %9, label %12, !dbg !1207

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1208
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1209
  br label %14, !dbg !1207

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1210
  br label %14, !dbg !1207

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1207
  store i8* %15, i8** %4, align 8, !dbg !1206
  %16 = load i8*, i8** %4, align 8, !dbg !1211
  %17 = load i8*, i8** %2, align 8, !dbg !1213
  %18 = ptrtoint i8* %16 to i64, !dbg !1214
  %19 = ptrtoint i8* %17 to i64, !dbg !1214
  %20 = sub i64 %18, %19, !dbg !1214
  %21 = icmp sle i64 7, %20, !dbg !1215
  br i1 %21, label %22, label %36, !dbg !1216

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1217
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1218
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i64 noundef 7), !dbg !1219
  br i1 %25, label %26, label %36, !dbg !1220

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1221
  store i8* %27, i8** %2, align 8, !dbg !1223
  %28 = load i8*, i8** %4, align 8, !dbg !1224
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.87, i64 0, i64 0), i64 noundef 3) #20, !dbg !1226
  %30 = icmp eq i32 %29, 0, !dbg !1227
  br i1 %30, label %31, label %35, !dbg !1228

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1229
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1229
  store i8* %33, i8** %4, align 8, !dbg !1229
  %34 = load i8*, i8** %4, align 8, !dbg !1231
  store i8* %34, i8** %2, align 8, !dbg !1232
  br label %35, !dbg !1233

35:                                               ; preds = %31, %26
  br label %36, !dbg !1234

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1235
  store i8* %37, i8** @program_name, align 8, !dbg !1236
  %38 = load i8*, i8** %2, align 8, !dbg !1237
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1238
  %39 = load i8*, i8** %4, align 8, !dbg !1239
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1240
  ret void, !dbg !1241
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1242, metadata !DIExpression()), !dbg !1243
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1244, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1246, metadata !DIExpression()), !dbg !1247
  %9 = load i8*, i8** %4, align 8, !dbg !1248
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1249
  store i8* %10, i8** %6, align 8, !dbg !1247
  %11 = load i8*, i8** %6, align 8, !dbg !1250
  %12 = load i8*, i8** %4, align 8, !dbg !1252
  %13 = icmp ne i8* %11, %12, !dbg !1253
  br i1 %13, label %14, label %16, !dbg !1254

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1255
  store i8* %15, i8** %3, align 8, !dbg !1256
  br label %26, !dbg !1256

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1257, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1264, metadata !DIExpression()), !dbg !1275
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1276
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1277
  %18 = icmp eq i64 %17, 2, !dbg !1279
  br i1 %18, label %19, label %24, !dbg !1280

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1281
  %21 = icmp eq i32 %20, 2047, !dbg !1282
  br i1 %21, label %22, label %24, !dbg !1283

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1284
  store i8* %23, i8** %3, align 8, !dbg !1285
  br label %26, !dbg !1285

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1286
  store i8* %25, i8** %3, align 8, !dbg !1287
  br label %26, !dbg !1287

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1288
  ret i8* %27, !dbg !1288
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1289 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1293, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1295, metadata !DIExpression()), !dbg !1296
  %5 = call i32* @__errno_location() #21, !dbg !1297
  %6 = load i32, i32* %5, align 4, !dbg !1297
  store i32 %6, i32* %3, align 4, !dbg !1296
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1298, metadata !DIExpression()), !dbg !1299
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1300
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1300
  br i1 %8, label %9, label %11, !dbg !1300

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1301
  br label %12, !dbg !1300

11:                                               ; preds = %1
  br label %12, !dbg !1300

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1300
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1300
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1302
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1302
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1299
  %17 = load i32, i32* %3, align 4, !dbg !1303
  %18 = call i32* @__errno_location() #21, !dbg !1304
  store i32 %17, i32* %18, align 4, !dbg !1305
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1306
  ret %struct.quoting_options* %19, !dbg !1307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1308 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1313, metadata !DIExpression()), !dbg !1314
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1315
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1315
  br i1 %4, label %5, label %7, !dbg !1315

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1316
  br label %8, !dbg !1315

7:                                                ; preds = %1
  br label %8, !dbg !1315

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1315
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1317
  %11 = load i32, i32* %10, align 8, !dbg !1317
  ret i32 %11, !dbg !1318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1319 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1322, metadata !DIExpression()), !dbg !1323
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1324, metadata !DIExpression()), !dbg !1325
  %5 = load i32, i32* %4, align 4, !dbg !1326
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1327
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1327
  br i1 %7, label %8, label %10, !dbg !1327

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1328
  br label %11, !dbg !1327

10:                                               ; preds = %2
  br label %11, !dbg !1327

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1327
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1329
  store i32 %5, i32* %13, align 8, !dbg !1330
  ret void, !dbg !1331
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1332 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1335, metadata !DIExpression()), !dbg !1336
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1337, metadata !DIExpression()), !dbg !1338
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1339, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1341, metadata !DIExpression()), !dbg !1342
  %11 = load i8, i8* %5, align 1, !dbg !1343
  store i8 %11, i8* %7, align 1, !dbg !1342
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1344, metadata !DIExpression()), !dbg !1346
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1347
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1347
  br i1 %13, label %14, label %16, !dbg !1347

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1348
  br label %17, !dbg !1347

16:                                               ; preds = %3
  br label %17, !dbg !1347

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1347
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1349
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1350
  %21 = load i8, i8* %7, align 1, !dbg !1351
  %22 = zext i8 %21 to i64, !dbg !1351
  %23 = udiv i64 %22, 32, !dbg !1352
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1353
  store i32* %24, i32** %8, align 8, !dbg !1346
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1354, metadata !DIExpression()), !dbg !1355
  %25 = load i8, i8* %7, align 1, !dbg !1356
  %26 = zext i8 %25 to i64, !dbg !1356
  %27 = urem i64 %26, 32, !dbg !1357
  %28 = trunc i64 %27 to i32, !dbg !1356
  store i32 %28, i32* %9, align 4, !dbg !1355
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1358, metadata !DIExpression()), !dbg !1359
  %29 = load i32*, i32** %8, align 8, !dbg !1360
  %30 = load i32, i32* %29, align 4, !dbg !1361
  %31 = load i32, i32* %9, align 4, !dbg !1362
  %32 = lshr i32 %30, %31, !dbg !1363
  %33 = and i32 %32, 1, !dbg !1364
  store i32 %33, i32* %10, align 4, !dbg !1359
  %34 = load i32, i32* %6, align 4, !dbg !1365
  %35 = and i32 %34, 1, !dbg !1366
  %36 = load i32, i32* %10, align 4, !dbg !1367
  %37 = xor i32 %35, %36, !dbg !1368
  %38 = load i32, i32* %9, align 4, !dbg !1369
  %39 = shl i32 %37, %38, !dbg !1370
  %40 = load i32*, i32** %8, align 8, !dbg !1371
  %41 = load i32, i32* %40, align 4, !dbg !1372
  %42 = xor i32 %41, %39, !dbg !1372
  store i32 %42, i32* %40, align 4, !dbg !1372
  %43 = load i32, i32* %10, align 4, !dbg !1373
  ret i32 %43, !dbg !1374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1375 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1378, metadata !DIExpression()), !dbg !1379
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1380, metadata !DIExpression()), !dbg !1381
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1382
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1382
  br i1 %7, label %9, label %8, !dbg !1384

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1385
  br label %9, !dbg !1386

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1387, metadata !DIExpression()), !dbg !1388
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1389
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1390
  %12 = load i32, i32* %11, align 4, !dbg !1390
  store i32 %12, i32* %5, align 4, !dbg !1388
  %13 = load i32, i32* %4, align 4, !dbg !1391
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1392
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1393
  store i32 %13, i32* %15, align 4, !dbg !1394
  %16 = load i32, i32* %5, align 4, !dbg !1395
  ret i32 %16, !dbg !1396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1397 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1400, metadata !DIExpression()), !dbg !1401
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1402, metadata !DIExpression()), !dbg !1403
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1404, metadata !DIExpression()), !dbg !1405
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1406
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1406
  br i1 %8, label %10, label %9, !dbg !1408

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1409
  br label %10, !dbg !1410

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1411
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1412
  store i32 10, i32* %12, align 8, !dbg !1413
  %13 = load i8*, i8** %5, align 8, !dbg !1414
  %14 = icmp ne i8* %13, null, !dbg !1414
  br i1 %14, label %15, label %18, !dbg !1416

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1417
  %17 = icmp ne i8* %16, null, !dbg !1417
  br i1 %17, label %19, label %18, !dbg !1418

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1419
  unreachable, !dbg !1419

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1420
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1421
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1422
  store i8* %20, i8** %22, align 8, !dbg !1423
  %23 = load i8*, i8** %6, align 8, !dbg !1424
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1425
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1426
  store i8* %23, i8** %25, align 8, !dbg !1427
  ret void, !dbg !1428
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1429 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1432, metadata !DIExpression()), !dbg !1433
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1434, metadata !DIExpression()), !dbg !1435
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1436, metadata !DIExpression()), !dbg !1437
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1438, metadata !DIExpression()), !dbg !1439
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1440, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1442, metadata !DIExpression()), !dbg !1443
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1444
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1444
  br i1 %15, label %16, label %18, !dbg !1444

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1445
  br label %19, !dbg !1444

18:                                               ; preds = %5
  br label %19, !dbg !1444

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1444
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1443
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1446, metadata !DIExpression()), !dbg !1447
  %21 = call i32* @__errno_location() #21, !dbg !1448
  %22 = load i32, i32* %21, align 4, !dbg !1448
  store i32 %22, i32* %12, align 4, !dbg !1447
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1449, metadata !DIExpression()), !dbg !1450
  %23 = load i8*, i8** %6, align 8, !dbg !1451
  %24 = load i64, i64* %7, align 8, !dbg !1452
  %25 = load i8*, i8** %8, align 8, !dbg !1453
  %26 = load i64, i64* %9, align 8, !dbg !1454
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1455
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1456
  %29 = load i32, i32* %28, align 8, !dbg !1456
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1457
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1458
  %32 = load i32, i32* %31, align 4, !dbg !1458
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1459
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1460
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1459
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1461
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1462
  %38 = load i8*, i8** %37, align 8, !dbg !1462
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1463
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1464
  %41 = load i8*, i8** %40, align 8, !dbg !1464
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1465
  store i64 %42, i64* %13, align 8, !dbg !1450
  %43 = load i32, i32* %12, align 4, !dbg !1466
  %44 = call i32* @__errno_location() #21, !dbg !1467
  store i32 %43, i32* %44, align 4, !dbg !1468
  %45 = load i64, i64* %13, align 8, !dbg !1469
  ret i64 %45, !dbg !1470
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1471 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1476, metadata !DIExpression()), !dbg !1477
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1478, metadata !DIExpression()), !dbg !1479
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1480, metadata !DIExpression()), !dbg !1481
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1482, metadata !DIExpression()), !dbg !1483
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1484, metadata !DIExpression()), !dbg !1485
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1486, metadata !DIExpression()), !dbg !1487
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1488, metadata !DIExpression()), !dbg !1489
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1490, metadata !DIExpression()), !dbg !1491
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1492, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1494, metadata !DIExpression()), !dbg !1495
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1496
  %45 = icmp eq i64 %44, 1, !dbg !1497
  %46 = zext i1 %45 to i8, !dbg !1495
  store i8 %46, i8* %20, align 1, !dbg !1495
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1498, metadata !DIExpression()), !dbg !1499
  store i64 0, i64* %21, align 8, !dbg !1499
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1500, metadata !DIExpression()), !dbg !1501
  store i64 0, i64* %22, align 8, !dbg !1501
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1502, metadata !DIExpression()), !dbg !1503
  store i8* null, i8** %23, align 8, !dbg !1503
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1504, metadata !DIExpression()), !dbg !1505
  store i64 0, i64* %24, align 8, !dbg !1505
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1506, metadata !DIExpression()), !dbg !1507
  store i8 0, i8* %25, align 1, !dbg !1507
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1508, metadata !DIExpression()), !dbg !1509
  %47 = load i32, i32* %16, align 4, !dbg !1510
  %48 = and i32 %47, 2, !dbg !1511
  %49 = icmp ne i32 %48, 0, !dbg !1512
  %50 = zext i1 %49 to i8, !dbg !1509
  store i8 %50, i8* %26, align 1, !dbg !1509
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1513, metadata !DIExpression()), !dbg !1514
  store i8 0, i8* %27, align 1, !dbg !1514
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1515, metadata !DIExpression()), !dbg !1516
  store i8 1, i8* %28, align 1, !dbg !1516
  br label %51, !dbg !1517

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1518), !dbg !1519
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i8 0, i8* %29, align 1, !dbg !1521
  %52 = load i32, i32* %15, align 4, !dbg !1522
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
  ], !dbg !1523

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1524
  store i8 1, i8* %26, align 1, !dbg !1526
  br label %54, !dbg !1527

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1528
  %56 = trunc i8 %55 to i1, !dbg !1528
  br i1 %56, label %70, label %57, !dbg !1530

57:                                               ; preds = %54
  br label %58, !dbg !1531

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1532
  %60 = load i64, i64* %12, align 8, !dbg !1532
  %61 = icmp ult i64 %59, %60, !dbg !1532
  br i1 %61, label %62, label %66, !dbg !1535

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1532
  %64 = load i64, i64* %21, align 8, !dbg !1532
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1532
  store i8 34, i8* %65, align 1, !dbg !1532
  br label %66, !dbg !1532

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1535
  %68 = add i64 %67, 1, !dbg !1535
  store i64 %68, i64* %21, align 8, !dbg !1535
  br label %69, !dbg !1535

69:                                               ; preds = %66
  br label %70, !dbg !1535

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1536
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.100, i64 0, i64 0), i8** %23, align 8, !dbg !1537
  store i64 1, i64* %24, align 8, !dbg !1538
  br label %138, !dbg !1539

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1540
  store i8 0, i8* %26, align 1, !dbg !1541
  br label %138, !dbg !1542

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1543
  %74 = icmp ne i32 %73, 10, !dbg !1546
  br i1 %74, label %75, label %80, !dbg !1547

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1548
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.101, i64 0, i64 0), i32 noundef %76), !dbg !1550
  store i8* %77, i8** %18, align 8, !dbg !1551
  %78 = load i32, i32* %15, align 4, !dbg !1552
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.102, i64 0, i64 0), i32 noundef %78), !dbg !1553
  store i8* %79, i8** %19, align 8, !dbg !1554
  br label %80, !dbg !1555

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1556
  %82 = trunc i8 %81 to i1, !dbg !1556
  br i1 %82, label %108, label %83, !dbg !1558

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1559, metadata !DIExpression()), !dbg !1561
  %84 = load i8*, i8** %18, align 8, !dbg !1562
  store i8* %84, i8** %30, align 8, !dbg !1561
  br label %85, !dbg !1563

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1564
  %87 = load i8, i8* %86, align 1, !dbg !1566
  %88 = icmp ne i8 %87, 0, !dbg !1567
  br i1 %88, label %89, label %107, !dbg !1567

89:                                               ; preds = %85
  br label %90, !dbg !1568

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1569
  %92 = load i64, i64* %12, align 8, !dbg !1569
  %93 = icmp ult i64 %91, %92, !dbg !1569
  br i1 %93, label %94, label %100, !dbg !1572

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1569
  %96 = load i8, i8* %95, align 1, !dbg !1569
  %97 = load i8*, i8** %11, align 8, !dbg !1569
  %98 = load i64, i64* %21, align 8, !dbg !1569
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1569
  store i8 %96, i8* %99, align 1, !dbg !1569
  br label %100, !dbg !1569

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1572
  %102 = add i64 %101, 1, !dbg !1572
  store i64 %102, i64* %21, align 8, !dbg !1572
  br label %103, !dbg !1572

103:                                              ; preds = %100
  br label %104, !dbg !1572

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1573
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1573
  store i8* %106, i8** %30, align 8, !dbg !1573
  br label %85, !dbg !1574, !llvm.loop !1575

107:                                              ; preds = %85
  br label %108, !dbg !1576

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1577
  %109 = load i8*, i8** %19, align 8, !dbg !1578
  store i8* %109, i8** %23, align 8, !dbg !1579
  %110 = load i8*, i8** %23, align 8, !dbg !1580
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1581
  store i64 %111, i64* %24, align 8, !dbg !1582
  br label %138, !dbg !1583

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1584
  br label %113, !dbg !1585

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1586
  br label %114, !dbg !1587

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1588
  %116 = trunc i8 %115 to i1, !dbg !1588
  br i1 %116, label %118, label %117, !dbg !1590

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1591
  br label %118, !dbg !1592

118:                                              ; preds = %117, %114
  br label %119, !dbg !1588

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1593
  %120 = load i8, i8* %26, align 1, !dbg !1594
  %121 = trunc i8 %120 to i1, !dbg !1594
  br i1 %121, label %135, label %122, !dbg !1596

122:                                              ; preds = %119
  br label %123, !dbg !1597

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1598
  %125 = load i64, i64* %12, align 8, !dbg !1598
  %126 = icmp ult i64 %124, %125, !dbg !1598
  br i1 %126, label %127, label %131, !dbg !1601

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1598
  %129 = load i64, i64* %21, align 8, !dbg !1598
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1598
  store i8 39, i8* %130, align 1, !dbg !1598
  br label %131, !dbg !1598

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1601
  %133 = add i64 %132, 1, !dbg !1601
  store i64 %133, i64* %21, align 8, !dbg !1601
  br label %134, !dbg !1601

134:                                              ; preds = %131
  br label %135, !dbg !1601

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.102, i64 0, i64 0), i8** %23, align 8, !dbg !1602
  store i64 1, i64* %24, align 8, !dbg !1603
  br label %138, !dbg !1604

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1605
  br label %138, !dbg !1606

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1607
  unreachable, !dbg !1607

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1608, metadata !DIExpression()), !dbg !1610
  store i64 0, i64* %31, align 8, !dbg !1610
  br label %139, !dbg !1611

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1612
  %141 = icmp eq i64 %140, -1, !dbg !1614
  br i1 %141, label %142, label %150, !dbg !1612

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1615
  %144 = load i64, i64* %31, align 8, !dbg !1616
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1615
  %146 = load i8, i8* %145, align 1, !dbg !1615
  %147 = zext i8 %146 to i32, !dbg !1615
  %148 = icmp eq i32 %147, 0, !dbg !1617
  %149 = zext i1 %148 to i32, !dbg !1617
  br label %155, !dbg !1612

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1618
  %152 = load i64, i64* %14, align 8, !dbg !1619
  %153 = icmp eq i64 %151, %152, !dbg !1620
  %154 = zext i1 %153 to i32, !dbg !1620
  br label %155, !dbg !1612

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1612
  %157 = icmp ne i32 %156, 0, !dbg !1621
  %158 = xor i1 %157, true, !dbg !1621
  br i1 %158, label %159, label %996, !dbg !1622

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1623, metadata !DIExpression()), !dbg !1625
  store i8 0, i8* %32, align 1, !dbg !1625
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1626, metadata !DIExpression()), !dbg !1627
  store i8 0, i8* %33, align 1, !dbg !1627
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1628, metadata !DIExpression()), !dbg !1629
  store i8 0, i8* %34, align 1, !dbg !1629
  %160 = load i8, i8* %25, align 1, !dbg !1630
  %161 = trunc i8 %160 to i1, !dbg !1630
  br i1 %161, label %162, label %197, !dbg !1632

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1633
  %164 = icmp ne i32 %163, 2, !dbg !1634
  br i1 %164, label %165, label %197, !dbg !1635

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1636
  %167 = icmp ne i64 %166, 0, !dbg !1636
  br i1 %167, label %168, label %197, !dbg !1637

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1638
  %170 = load i64, i64* %24, align 8, !dbg !1639
  %171 = add i64 %169, %170, !dbg !1640
  %172 = load i64, i64* %14, align 8, !dbg !1641
  %173 = icmp eq i64 %172, -1, !dbg !1642
  br i1 %173, label %174, label %180, !dbg !1643

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1644
  %176 = icmp ult i64 1, %175, !dbg !1645
  br i1 %176, label %177, label %180, !dbg !1641

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1646
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1647
  store i64 %179, i64* %14, align 8, !dbg !1648
  br label %182, !dbg !1641

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1649
  br label %182, !dbg !1641

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1641
  %184 = icmp ule i64 %171, %183, !dbg !1650
  br i1 %184, label %185, label %197, !dbg !1651

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1652
  %187 = load i64, i64* %31, align 8, !dbg !1653
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1654
  %189 = load i8*, i8** %23, align 8, !dbg !1655
  %190 = load i64, i64* %24, align 8, !dbg !1656
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1657
  br i1 %191, label %192, label %197, !dbg !1658

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1659
  %194 = trunc i8 %193 to i1, !dbg !1659
  br i1 %194, label %195, label %196, !dbg !1662

195:                                              ; preds = %192
  br label %1078, !dbg !1663

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1664
  br label %197, !dbg !1665

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1666, metadata !DIExpression()), !dbg !1667
  %198 = load i8*, i8** %13, align 8, !dbg !1668
  %199 = load i64, i64* %31, align 8, !dbg !1669
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1668
  %201 = load i8, i8* %200, align 1, !dbg !1668
  store i8 %201, i8* %35, align 1, !dbg !1667
  %202 = load i8, i8* %35, align 1, !dbg !1670
  %203 = zext i8 %202 to i32, !dbg !1670
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
  ], !dbg !1671

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1672
  %206 = trunc i8 %205 to i1, !dbg !1672
  br i1 %206, label %207, label %318, !dbg !1675

207:                                              ; preds = %204
  br label %208, !dbg !1676

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1678
  %210 = trunc i8 %209 to i1, !dbg !1678
  br i1 %210, label %211, label %212, !dbg !1681

211:                                              ; preds = %208
  br label %1078, !dbg !1678

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1681
  %213 = load i32, i32* %15, align 4, !dbg !1682
  %214 = icmp eq i32 %213, 2, !dbg !1682
  br i1 %214, label %215, label %255, !dbg !1682

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1682
  %217 = trunc i8 %216 to i1, !dbg !1682
  br i1 %217, label %255, label %218, !dbg !1681

218:                                              ; preds = %215
  br label %219, !dbg !1684

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1686
  %221 = load i64, i64* %12, align 8, !dbg !1686
  %222 = icmp ult i64 %220, %221, !dbg !1686
  br i1 %222, label %223, label %227, !dbg !1689

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1686
  %225 = load i64, i64* %21, align 8, !dbg !1686
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1686
  store i8 39, i8* %226, align 1, !dbg !1686
  br label %227, !dbg !1686

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1689
  %229 = add i64 %228, 1, !dbg !1689
  store i64 %229, i64* %21, align 8, !dbg !1689
  br label %230, !dbg !1689

230:                                              ; preds = %227
  br label %231, !dbg !1684

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1690
  %233 = load i64, i64* %12, align 8, !dbg !1690
  %234 = icmp ult i64 %232, %233, !dbg !1690
  br i1 %234, label %235, label %239, !dbg !1693

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1690
  %237 = load i64, i64* %21, align 8, !dbg !1690
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1690
  store i8 36, i8* %238, align 1, !dbg !1690
  br label %239, !dbg !1690

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1693
  %241 = add i64 %240, 1, !dbg !1693
  store i64 %241, i64* %21, align 8, !dbg !1693
  br label %242, !dbg !1693

242:                                              ; preds = %239
  br label %243, !dbg !1684

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1694
  %245 = load i64, i64* %12, align 8, !dbg !1694
  %246 = icmp ult i64 %244, %245, !dbg !1694
  br i1 %246, label %247, label %251, !dbg !1697

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1694
  %249 = load i64, i64* %21, align 8, !dbg !1694
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1694
  store i8 39, i8* %250, align 1, !dbg !1694
  br label %251, !dbg !1694

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1697
  %253 = add i64 %252, 1, !dbg !1697
  store i64 %253, i64* %21, align 8, !dbg !1697
  br label %254, !dbg !1697

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1684
  br label %255, !dbg !1684

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1681

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1698
  %258 = load i64, i64* %12, align 8, !dbg !1698
  %259 = icmp ult i64 %257, %258, !dbg !1698
  br i1 %259, label %260, label %264, !dbg !1701

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1698
  %262 = load i64, i64* %21, align 8, !dbg !1698
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1698
  store i8 92, i8* %263, align 1, !dbg !1698
  br label %264, !dbg !1698

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1701
  %266 = add i64 %265, 1, !dbg !1701
  store i64 %266, i64* %21, align 8, !dbg !1701
  br label %267, !dbg !1701

267:                                              ; preds = %264
  br label %268, !dbg !1681

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1702
  %270 = icmp ne i32 %269, 2, !dbg !1704
  br i1 %270, label %271, label %317, !dbg !1705

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1706
  %273 = add i64 %272, 1, !dbg !1707
  %274 = load i64, i64* %14, align 8, !dbg !1708
  %275 = icmp ult i64 %273, %274, !dbg !1709
  br i1 %275, label %276, label %317, !dbg !1710

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1711
  %278 = load i64, i64* %31, align 8, !dbg !1712
  %279 = add i64 %278, 1, !dbg !1713
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1711
  %281 = load i8, i8* %280, align 1, !dbg !1711
  %282 = zext i8 %281 to i32, !dbg !1711
  %283 = icmp sle i32 48, %282, !dbg !1714
  br i1 %283, label %284, label %317, !dbg !1715

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1716
  %286 = load i64, i64* %31, align 8, !dbg !1717
  %287 = add i64 %286, 1, !dbg !1718
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1716
  %289 = load i8, i8* %288, align 1, !dbg !1716
  %290 = zext i8 %289 to i32, !dbg !1716
  %291 = icmp sle i32 %290, 57, !dbg !1719
  br i1 %291, label %292, label %317, !dbg !1720

292:                                              ; preds = %284
  br label %293, !dbg !1721

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1723
  %295 = load i64, i64* %12, align 8, !dbg !1723
  %296 = icmp ult i64 %294, %295, !dbg !1723
  br i1 %296, label %297, label %301, !dbg !1726

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1723
  %299 = load i64, i64* %21, align 8, !dbg !1723
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1723
  store i8 48, i8* %300, align 1, !dbg !1723
  br label %301, !dbg !1723

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1726
  %303 = add i64 %302, 1, !dbg !1726
  store i64 %303, i64* %21, align 8, !dbg !1726
  br label %304, !dbg !1726

304:                                              ; preds = %301
  br label %305, !dbg !1727

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1728
  %307 = load i64, i64* %12, align 8, !dbg !1728
  %308 = icmp ult i64 %306, %307, !dbg !1728
  br i1 %308, label %309, label %313, !dbg !1731

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1728
  %311 = load i64, i64* %21, align 8, !dbg !1728
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1728
  store i8 48, i8* %312, align 1, !dbg !1728
  br label %313, !dbg !1728

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1731
  %315 = add i64 %314, 1, !dbg !1731
  store i64 %315, i64* %21, align 8, !dbg !1731
  br label %316, !dbg !1731

316:                                              ; preds = %313
  br label %317, !dbg !1732

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1733
  br label %324, !dbg !1734

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1735
  %320 = and i32 %319, 1, !dbg !1737
  %321 = icmp ne i32 %320, 0, !dbg !1737
  br i1 %321, label %322, label %323, !dbg !1738

322:                                              ; preds = %318
  br label %993, !dbg !1739

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1740

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1741
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1742

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1743
  %329 = trunc i8 %328 to i1, !dbg !1743
  br i1 %329, label %330, label %331, !dbg !1746

330:                                              ; preds = %327
  br label %1078, !dbg !1747

331:                                              ; preds = %327
  br label %418, !dbg !1748

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1749
  %334 = and i32 %333, 4, !dbg !1751
  %335 = icmp ne i32 %334, 0, !dbg !1751
  br i1 %335, label %336, label %417, !dbg !1752

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1753
  %338 = add i64 %337, 2, !dbg !1754
  %339 = load i64, i64* %14, align 8, !dbg !1755
  %340 = icmp ult i64 %338, %339, !dbg !1756
  br i1 %340, label %341, label %417, !dbg !1757

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1758
  %343 = load i64, i64* %31, align 8, !dbg !1759
  %344 = add i64 %343, 1, !dbg !1760
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1758
  %346 = load i8, i8* %345, align 1, !dbg !1758
  %347 = zext i8 %346 to i32, !dbg !1758
  %348 = icmp eq i32 %347, 63, !dbg !1761
  br i1 %348, label %349, label %417, !dbg !1762

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1763
  %351 = load i64, i64* %31, align 8, !dbg !1764
  %352 = add i64 %351, 2, !dbg !1765
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1763
  %354 = load i8, i8* %353, align 1, !dbg !1763
  %355 = zext i8 %354 to i32, !dbg !1763
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
  ], !dbg !1766

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1767
  %358 = trunc i8 %357 to i1, !dbg !1767
  br i1 %358, label %359, label %360, !dbg !1770

359:                                              ; preds = %356
  br label %1078, !dbg !1771

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1772
  %362 = load i64, i64* %31, align 8, !dbg !1773
  %363 = add i64 %362, 2, !dbg !1774
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1772
  %365 = load i8, i8* %364, align 1, !dbg !1772
  store i8 %365, i8* %35, align 1, !dbg !1775
  %366 = load i64, i64* %31, align 8, !dbg !1776
  %367 = add i64 %366, 2, !dbg !1776
  store i64 %367, i64* %31, align 8, !dbg !1776
  br label %368, !dbg !1777

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1778
  %370 = load i64, i64* %12, align 8, !dbg !1778
  %371 = icmp ult i64 %369, %370, !dbg !1778
  br i1 %371, label %372, label %376, !dbg !1781

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1778
  %374 = load i64, i64* %21, align 8, !dbg !1778
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1778
  store i8 63, i8* %375, align 1, !dbg !1778
  br label %376, !dbg !1778

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1781
  %378 = add i64 %377, 1, !dbg !1781
  store i64 %378, i64* %21, align 8, !dbg !1781
  br label %379, !dbg !1781

379:                                              ; preds = %376
  br label %380, !dbg !1782

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1783
  %382 = load i64, i64* %12, align 8, !dbg !1783
  %383 = icmp ult i64 %381, %382, !dbg !1783
  br i1 %383, label %384, label %388, !dbg !1786

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1783
  %386 = load i64, i64* %21, align 8, !dbg !1783
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1783
  store i8 34, i8* %387, align 1, !dbg !1783
  br label %388, !dbg !1783

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1786
  %390 = add i64 %389, 1, !dbg !1786
  store i64 %390, i64* %21, align 8, !dbg !1786
  br label %391, !dbg !1786

391:                                              ; preds = %388
  br label %392, !dbg !1787

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1788
  %394 = load i64, i64* %12, align 8, !dbg !1788
  %395 = icmp ult i64 %393, %394, !dbg !1788
  br i1 %395, label %396, label %400, !dbg !1791

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1788
  %398 = load i64, i64* %21, align 8, !dbg !1788
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1788
  store i8 34, i8* %399, align 1, !dbg !1788
  br label %400, !dbg !1788

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1791
  %402 = add i64 %401, 1, !dbg !1791
  store i64 %402, i64* %21, align 8, !dbg !1791
  br label %403, !dbg !1791

403:                                              ; preds = %400
  br label %404, !dbg !1792

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1793
  %406 = load i64, i64* %12, align 8, !dbg !1793
  %407 = icmp ult i64 %405, %406, !dbg !1793
  br i1 %407, label %408, label %412, !dbg !1796

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1793
  %410 = load i64, i64* %21, align 8, !dbg !1793
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1793
  store i8 63, i8* %411, align 1, !dbg !1793
  br label %412, !dbg !1793

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1796
  %414 = add i64 %413, 1, !dbg !1796
  store i64 %414, i64* %21, align 8, !dbg !1796
  br label %415, !dbg !1796

415:                                              ; preds = %412
  br label %416, !dbg !1797

416:                                              ; preds = %349, %415
  br label %417, !dbg !1798

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1799

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1800

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1801
  br label %454, !dbg !1803

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1804
  br label %454, !dbg !1805

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1806
  br label %454, !dbg !1807

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1808
  br label %446, !dbg !1809

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1810
  br label %446, !dbg !1811

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1812
  br label %446, !dbg !1813

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1814
  br label %454, !dbg !1815

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1816
  store i8 %427, i8* %36, align 1, !dbg !1817
  %428 = load i32, i32* %15, align 4, !dbg !1818
  %429 = icmp eq i32 %428, 2, !dbg !1820
  br i1 %429, label %430, label %435, !dbg !1821

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1822
  %432 = trunc i8 %431 to i1, !dbg !1822
  br i1 %432, label %433, label %434, !dbg !1825

433:                                              ; preds = %430
  br label %1078, !dbg !1826

434:                                              ; preds = %430
  br label %942, !dbg !1827

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1828
  %437 = trunc i8 %436 to i1, !dbg !1828
  br i1 %437, label %438, label %445, !dbg !1830

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1831
  %440 = trunc i8 %439 to i1, !dbg !1831
  br i1 %440, label %441, label %445, !dbg !1832

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1833
  %443 = icmp ne i64 %442, 0, !dbg !1833
  br i1 %443, label %444, label %445, !dbg !1834

444:                                              ; preds = %441
  br label %942, !dbg !1835

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1833

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1836), !dbg !1837
  %447 = load i32, i32* %15, align 4, !dbg !1838
  %448 = icmp eq i32 %447, 2, !dbg !1840
  br i1 %448, label %449, label %453, !dbg !1841

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1842
  %451 = trunc i8 %450 to i1, !dbg !1842
  br i1 %451, label %452, label %453, !dbg !1843

452:                                              ; preds = %449
  br label %1078, !dbg !1844

453:                                              ; preds = %449, %446
  br label %454, !dbg !1842

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1845), !dbg !1846
  %455 = load i8, i8* %25, align 1, !dbg !1847
  %456 = trunc i8 %455 to i1, !dbg !1847
  br i1 %456, label %457, label %459, !dbg !1849

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1850
  store i8 %458, i8* %35, align 1, !dbg !1852
  br label %880, !dbg !1853

459:                                              ; preds = %454
  br label %849, !dbg !1854

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1855
  %462 = icmp eq i64 %461, -1, !dbg !1857
  br i1 %462, label %463, label %469, !dbg !1858

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1859
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1859
  %466 = load i8, i8* %465, align 1, !dbg !1859
  %467 = zext i8 %466 to i32, !dbg !1859
  %468 = icmp eq i32 %467, 0, !dbg !1860
  br i1 %468, label %473, label %472, !dbg !1855

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1861
  %471 = icmp eq i64 %470, 1, !dbg !1862
  br i1 %471, label %473, label %472, !dbg !1858

472:                                              ; preds = %469, %463
  br label %849, !dbg !1863

473:                                              ; preds = %469, %463
  br label %474, !dbg !1864

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1865
  %476 = icmp ne i64 %475, 0, !dbg !1867
  br i1 %476, label %477, label %478, !dbg !1868

477:                                              ; preds = %474
  br label %849, !dbg !1869

478:                                              ; preds = %474
  br label %479, !dbg !1870

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1871
  br label %480, !dbg !1872

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1873
  %482 = icmp eq i32 %481, 2, !dbg !1875
  br i1 %482, label %483, label %487, !dbg !1876

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1877
  %485 = trunc i8 %484 to i1, !dbg !1877
  br i1 %485, label %486, label %487, !dbg !1878

486:                                              ; preds = %483
  br label %1078, !dbg !1879

487:                                              ; preds = %483, %480
  br label %849, !dbg !1880

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1881
  store i8 1, i8* %34, align 1, !dbg !1882
  %489 = load i32, i32* %15, align 4, !dbg !1883
  %490 = icmp eq i32 %489, 2, !dbg !1885
  br i1 %490, label %491, label %540, !dbg !1886

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1887
  %493 = trunc i8 %492 to i1, !dbg !1887
  br i1 %493, label %494, label %495, !dbg !1890

494:                                              ; preds = %491
  br label %1078, !dbg !1891

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1892
  %497 = icmp ne i64 %496, 0, !dbg !1892
  br i1 %497, label %498, label %503, !dbg !1894

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1895
  %500 = icmp ne i64 %499, 0, !dbg !1895
  br i1 %500, label %503, label %501, !dbg !1896

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1897
  store i64 %502, i64* %22, align 8, !dbg !1899
  store i64 0, i64* %12, align 8, !dbg !1900
  br label %503, !dbg !1901

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1902

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1903
  %506 = load i64, i64* %12, align 8, !dbg !1903
  %507 = icmp ult i64 %505, %506, !dbg !1903
  br i1 %507, label %508, label %512, !dbg !1906

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1903
  %510 = load i64, i64* %21, align 8, !dbg !1903
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1903
  store i8 39, i8* %511, align 1, !dbg !1903
  br label %512, !dbg !1903

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1906
  %514 = add i64 %513, 1, !dbg !1906
  store i64 %514, i64* %21, align 8, !dbg !1906
  br label %515, !dbg !1906

515:                                              ; preds = %512
  br label %516, !dbg !1907

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1908
  %518 = load i64, i64* %12, align 8, !dbg !1908
  %519 = icmp ult i64 %517, %518, !dbg !1908
  br i1 %519, label %520, label %524, !dbg !1911

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1908
  %522 = load i64, i64* %21, align 8, !dbg !1908
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1908
  store i8 92, i8* %523, align 1, !dbg !1908
  br label %524, !dbg !1908

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1911
  %526 = add i64 %525, 1, !dbg !1911
  store i64 %526, i64* %21, align 8, !dbg !1911
  br label %527, !dbg !1911

527:                                              ; preds = %524
  br label %528, !dbg !1912

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1913
  %530 = load i64, i64* %12, align 8, !dbg !1913
  %531 = icmp ult i64 %529, %530, !dbg !1913
  br i1 %531, label %532, label %536, !dbg !1916

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1913
  %534 = load i64, i64* %21, align 8, !dbg !1913
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1913
  store i8 39, i8* %535, align 1, !dbg !1913
  br label %536, !dbg !1913

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1916
  %538 = add i64 %537, 1, !dbg !1916
  store i64 %538, i64* %21, align 8, !dbg !1916
  br label %539, !dbg !1916

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1917
  br label %540, !dbg !1918

540:                                              ; preds = %539, %488
  br label %849, !dbg !1919

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1920
  br label %849, !dbg !1921

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1922, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1925, metadata !DIExpression()), !dbg !1926
  %543 = load i8, i8* %20, align 1, !dbg !1927
  %544 = trunc i8 %543 to i1, !dbg !1927
  br i1 %544, label %545, label %557, !dbg !1929

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1930
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1932
  %547 = load i16*, i16** %546, align 8, !dbg !1932
  %548 = load i8, i8* %35, align 1, !dbg !1932
  %549 = zext i8 %548 to i32, !dbg !1932
  %550 = sext i32 %549 to i64, !dbg !1932
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1932
  %552 = load i16, i16* %551, align 2, !dbg !1932
  %553 = zext i16 %552 to i32, !dbg !1932
  %554 = and i32 %553, 16384, !dbg !1932
  %555 = icmp ne i32 %554, 0, !dbg !1933
  %556 = zext i1 %555 to i8, !dbg !1934
  store i8 %556, i8* %38, align 1, !dbg !1934
  br label %648, !dbg !1935

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1936, metadata !DIExpression()), !dbg !1948
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1949
  store i64 0, i64* %37, align 8, !dbg !1950
  store i8 1, i8* %38, align 1, !dbg !1951
  %558 = load i64, i64* %14, align 8, !dbg !1952
  %559 = icmp eq i64 %558, -1, !dbg !1954
  br i1 %559, label %560, label %563, !dbg !1955

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1956
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1957
  store i64 %562, i64* %14, align 8, !dbg !1958
  br label %563, !dbg !1959

563:                                              ; preds = %560, %557
  br label %564, !dbg !1960

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1961, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1966, metadata !DIExpression()), !dbg !1967
  %565 = load i8*, i8** %13, align 8, !dbg !1968
  %566 = load i64, i64* %31, align 8, !dbg !1969
  %567 = load i64, i64* %37, align 8, !dbg !1970
  %568 = add i64 %566, %567, !dbg !1971
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1968
  %570 = load i64, i64* %14, align 8, !dbg !1972
  %571 = load i64, i64* %31, align 8, !dbg !1973
  %572 = load i64, i64* %37, align 8, !dbg !1974
  %573 = add i64 %571, %572, !dbg !1975
  %574 = sub i64 %570, %573, !dbg !1976
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1977
  store i64 %575, i64* %41, align 8, !dbg !1967
  %576 = load i64, i64* %41, align 8, !dbg !1978
  %577 = icmp eq i64 %576, 0, !dbg !1980
  br i1 %577, label %578, label %579, !dbg !1981

578:                                              ; preds = %564
  br label %647, !dbg !1982

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1983
  %581 = icmp eq i64 %580, -1, !dbg !1985
  br i1 %581, label %582, label %583, !dbg !1986

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1987
  br label %647, !dbg !1989

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1990
  %585 = icmp eq i64 %584, -2, !dbg !1992
  br i1 %585, label %586, label %608, !dbg !1993

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1994
  br label %587, !dbg !1996

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1997
  %589 = load i64, i64* %37, align 8, !dbg !1998
  %590 = add i64 %588, %589, !dbg !1999
  %591 = load i64, i64* %14, align 8, !dbg !2000
  %592 = icmp ult i64 %590, %591, !dbg !2001
  br i1 %592, label %593, label %602, !dbg !2002

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2003
  %595 = load i64, i64* %31, align 8, !dbg !2004
  %596 = load i64, i64* %37, align 8, !dbg !2005
  %597 = add i64 %595, %596, !dbg !2006
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2003
  %599 = load i8, i8* %598, align 1, !dbg !2003
  %600 = zext i8 %599 to i32, !dbg !2003
  %601 = icmp ne i32 %600, 0, !dbg !2002
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2007
  br i1 %603, label %604, label %607, !dbg !1996

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2008
  %606 = add i64 %605, 1, !dbg !2008
  store i64 %606, i64* %37, align 8, !dbg !2008
  br label %587, !dbg !1996, !llvm.loop !2009

607:                                              ; preds = %602
  br label %647, !dbg !2010

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2011
  %610 = trunc i8 %609 to i1, !dbg !2011
  br i1 %610, label %611, label %635, !dbg !2014

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2015
  %613 = icmp eq i32 %612, 2, !dbg !2016
  br i1 %613, label %614, label %635, !dbg !2017

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2018, metadata !DIExpression()), !dbg !2021
  store i64 1, i64* %42, align 8, !dbg !2021
  br label %615, !dbg !2022

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2023
  %617 = load i64, i64* %41, align 8, !dbg !2025
  %618 = icmp ult i64 %616, %617, !dbg !2026
  br i1 %618, label %619, label %634, !dbg !2027

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2028
  %621 = load i64, i64* %31, align 8, !dbg !2029
  %622 = load i64, i64* %37, align 8, !dbg !2030
  %623 = add i64 %621, %622, !dbg !2031
  %624 = load i64, i64* %42, align 8, !dbg !2032
  %625 = add i64 %623, %624, !dbg !2033
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2028
  %627 = load i8, i8* %626, align 1, !dbg !2028
  %628 = zext i8 %627 to i32, !dbg !2028
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2034

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2035

630:                                              ; preds = %619
  br label %631, !dbg !2037

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2038
  %633 = add i64 %632, 1, !dbg !2038
  store i64 %633, i64* %42, align 8, !dbg !2038
  br label %615, !dbg !2039, !llvm.loop !2040

634:                                              ; preds = %615
  br label %635, !dbg !2042

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2043
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2045
  %638 = icmp ne i32 %637, 0, !dbg !2045
  br i1 %638, label %640, label %639, !dbg !2046

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2047
  br label %640, !dbg !2048

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2049
  %642 = load i64, i64* %37, align 8, !dbg !2050
  %643 = add i64 %642, %641, !dbg !2050
  store i64 %643, i64* %37, align 8, !dbg !2050
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2051

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2052
  %650 = trunc i8 %649 to i1, !dbg !2052
  %651 = zext i1 %650 to i8, !dbg !2053
  store i8 %651, i8* %34, align 1, !dbg !2053
  %652 = load i64, i64* %37, align 8, !dbg !2054
  %653 = icmp ult i64 1, %652, !dbg !2056
  br i1 %653, label %660, label %654, !dbg !2057

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2058
  %656 = trunc i8 %655 to i1, !dbg !2058
  br i1 %656, label %657, label %848, !dbg !2059

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2060
  %659 = trunc i8 %658 to i1, !dbg !2060
  br i1 %659, label %848, label %660, !dbg !2061

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2062, metadata !DIExpression()), !dbg !2064
  %661 = load i64, i64* %31, align 8, !dbg !2065
  %662 = load i64, i64* %37, align 8, !dbg !2066
  %663 = add i64 %661, %662, !dbg !2067
  store i64 %663, i64* %43, align 8, !dbg !2064
  br label %664, !dbg !2068

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2069
  %666 = trunc i8 %665 to i1, !dbg !2069
  br i1 %666, label %667, label %772, !dbg !2074

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2075
  %669 = trunc i8 %668 to i1, !dbg !2075
  br i1 %669, label %772, label %670, !dbg !2076

670:                                              ; preds = %667
  br label %671, !dbg !2077

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2079
  %673 = trunc i8 %672 to i1, !dbg !2079
  br i1 %673, label %674, label %675, !dbg !2082

674:                                              ; preds = %671
  br label %1078, !dbg !2079

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2082
  %676 = load i32, i32* %15, align 4, !dbg !2083
  %677 = icmp eq i32 %676, 2, !dbg !2083
  br i1 %677, label %678, label %718, !dbg !2083

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2083
  %680 = trunc i8 %679 to i1, !dbg !2083
  br i1 %680, label %718, label %681, !dbg !2082

681:                                              ; preds = %678
  br label %682, !dbg !2085

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2087
  %684 = load i64, i64* %12, align 8, !dbg !2087
  %685 = icmp ult i64 %683, %684, !dbg !2087
  br i1 %685, label %686, label %690, !dbg !2090

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2087
  %688 = load i64, i64* %21, align 8, !dbg !2087
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2087
  store i8 39, i8* %689, align 1, !dbg !2087
  br label %690, !dbg !2087

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2090
  %692 = add i64 %691, 1, !dbg !2090
  store i64 %692, i64* %21, align 8, !dbg !2090
  br label %693, !dbg !2090

693:                                              ; preds = %690
  br label %694, !dbg !2085

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2091
  %696 = load i64, i64* %12, align 8, !dbg !2091
  %697 = icmp ult i64 %695, %696, !dbg !2091
  br i1 %697, label %698, label %702, !dbg !2094

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2091
  %700 = load i64, i64* %21, align 8, !dbg !2091
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2091
  store i8 36, i8* %701, align 1, !dbg !2091
  br label %702, !dbg !2091

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2094
  %704 = add i64 %703, 1, !dbg !2094
  store i64 %704, i64* %21, align 8, !dbg !2094
  br label %705, !dbg !2094

705:                                              ; preds = %702
  br label %706, !dbg !2085

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2095
  %708 = load i64, i64* %12, align 8, !dbg !2095
  %709 = icmp ult i64 %707, %708, !dbg !2095
  br i1 %709, label %710, label %714, !dbg !2098

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2095
  %712 = load i64, i64* %21, align 8, !dbg !2095
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2095
  store i8 39, i8* %713, align 1, !dbg !2095
  br label %714, !dbg !2095

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2098
  %716 = add i64 %715, 1, !dbg !2098
  store i64 %716, i64* %21, align 8, !dbg !2098
  br label %717, !dbg !2098

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2085
  br label %718, !dbg !2085

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2082

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2099
  %721 = load i64, i64* %12, align 8, !dbg !2099
  %722 = icmp ult i64 %720, %721, !dbg !2099
  br i1 %722, label %723, label %727, !dbg !2102

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2099
  %725 = load i64, i64* %21, align 8, !dbg !2099
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2099
  store i8 92, i8* %726, align 1, !dbg !2099
  br label %727, !dbg !2099

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2102
  %729 = add i64 %728, 1, !dbg !2102
  store i64 %729, i64* %21, align 8, !dbg !2102
  br label %730, !dbg !2102

730:                                              ; preds = %727
  br label %731, !dbg !2082

731:                                              ; preds = %730
  br label %732, !dbg !2103

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2104
  %734 = load i64, i64* %12, align 8, !dbg !2104
  %735 = icmp ult i64 %733, %734, !dbg !2104
  br i1 %735, label %736, label %745, !dbg !2107

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2104
  %738 = zext i8 %737 to i32, !dbg !2104
  %739 = ashr i32 %738, 6, !dbg !2104
  %740 = add nsw i32 48, %739, !dbg !2104
  %741 = trunc i32 %740 to i8, !dbg !2104
  %742 = load i8*, i8** %11, align 8, !dbg !2104
  %743 = load i64, i64* %21, align 8, !dbg !2104
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2104
  store i8 %741, i8* %744, align 1, !dbg !2104
  br label %745, !dbg !2104

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2107
  %747 = add i64 %746, 1, !dbg !2107
  store i64 %747, i64* %21, align 8, !dbg !2107
  br label %748, !dbg !2107

748:                                              ; preds = %745
  br label %749, !dbg !2108

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2109
  %751 = load i64, i64* %12, align 8, !dbg !2109
  %752 = icmp ult i64 %750, %751, !dbg !2109
  br i1 %752, label %753, label %763, !dbg !2112

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2109
  %755 = zext i8 %754 to i32, !dbg !2109
  %756 = ashr i32 %755, 3, !dbg !2109
  %757 = and i32 %756, 7, !dbg !2109
  %758 = add nsw i32 48, %757, !dbg !2109
  %759 = trunc i32 %758 to i8, !dbg !2109
  %760 = load i8*, i8** %11, align 8, !dbg !2109
  %761 = load i64, i64* %21, align 8, !dbg !2109
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2109
  store i8 %759, i8* %762, align 1, !dbg !2109
  br label %763, !dbg !2109

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2112
  %765 = add i64 %764, 1, !dbg !2112
  store i64 %765, i64* %21, align 8, !dbg !2112
  br label %766, !dbg !2112

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2113
  %768 = zext i8 %767 to i32, !dbg !2113
  %769 = and i32 %768, 7, !dbg !2114
  %770 = add nsw i32 48, %769, !dbg !2115
  %771 = trunc i32 %770 to i8, !dbg !2116
  store i8 %771, i8* %35, align 1, !dbg !2117
  br label %789, !dbg !2118

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2119
  %774 = trunc i8 %773 to i1, !dbg !2119
  br i1 %774, label %775, label %788, !dbg !2121

775:                                              ; preds = %772
  br label %776, !dbg !2122

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2124
  %778 = load i64, i64* %12, align 8, !dbg !2124
  %779 = icmp ult i64 %777, %778, !dbg !2124
  br i1 %779, label %780, label %784, !dbg !2127

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2124
  %782 = load i64, i64* %21, align 8, !dbg !2124
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2124
  store i8 92, i8* %783, align 1, !dbg !2124
  br label %784, !dbg !2124

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2127
  %786 = add i64 %785, 1, !dbg !2127
  store i64 %786, i64* %21, align 8, !dbg !2127
  br label %787, !dbg !2127

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2128
  br label %788, !dbg !2129

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2130
  %791 = load i64, i64* %31, align 8, !dbg !2132
  %792 = add i64 %791, 1, !dbg !2133
  %793 = icmp ule i64 %790, %792, !dbg !2134
  br i1 %793, label %794, label %795, !dbg !2135

794:                                              ; preds = %789
  br label %847, !dbg !2136

795:                                              ; preds = %789
  br label %796, !dbg !2137

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2138
  %798 = trunc i8 %797 to i1, !dbg !2138
  br i1 %798, label %799, label %827, !dbg !2138

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2138
  %801 = trunc i8 %800 to i1, !dbg !2138
  br i1 %801, label %827, label %802, !dbg !2141

802:                                              ; preds = %799
  br label %803, !dbg !2142

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2144
  %805 = load i64, i64* %12, align 8, !dbg !2144
  %806 = icmp ult i64 %804, %805, !dbg !2144
  br i1 %806, label %807, label %811, !dbg !2147

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2144
  %809 = load i64, i64* %21, align 8, !dbg !2144
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2144
  store i8 39, i8* %810, align 1, !dbg !2144
  br label %811, !dbg !2144

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2147
  %813 = add i64 %812, 1, !dbg !2147
  store i64 %813, i64* %21, align 8, !dbg !2147
  br label %814, !dbg !2147

814:                                              ; preds = %811
  br label %815, !dbg !2142

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2148
  %817 = load i64, i64* %12, align 8, !dbg !2148
  %818 = icmp ult i64 %816, %817, !dbg !2148
  br i1 %818, label %819, label %823, !dbg !2151

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2148
  %821 = load i64, i64* %21, align 8, !dbg !2148
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2148
  store i8 39, i8* %822, align 1, !dbg !2148
  br label %823, !dbg !2148

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2151
  %825 = add i64 %824, 1, !dbg !2151
  store i64 %825, i64* %21, align 8, !dbg !2151
  br label %826, !dbg !2151

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2142
  br label %827, !dbg !2142

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2141

828:                                              ; preds = %827
  br label %829, !dbg !2152

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2153
  %831 = load i64, i64* %12, align 8, !dbg !2153
  %832 = icmp ult i64 %830, %831, !dbg !2153
  br i1 %832, label %833, label %838, !dbg !2156

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2153
  %835 = load i8*, i8** %11, align 8, !dbg !2153
  %836 = load i64, i64* %21, align 8, !dbg !2153
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2153
  store i8 %834, i8* %837, align 1, !dbg !2153
  br label %838, !dbg !2153

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2156
  %840 = add i64 %839, 1, !dbg !2156
  store i64 %840, i64* %21, align 8, !dbg !2156
  br label %841, !dbg !2156

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2157
  %843 = load i64, i64* %31, align 8, !dbg !2158
  %844 = add i64 %843, 1, !dbg !2158
  store i64 %844, i64* %31, align 8, !dbg !2158
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2157
  %846 = load i8, i8* %845, align 1, !dbg !2157
  store i8 %846, i8* %35, align 1, !dbg !2159
  br label %664, !dbg !2160, !llvm.loop !2161

847:                                              ; preds = %794
  br label %942, !dbg !2164

848:                                              ; preds = %657, %654
  br label %849, !dbg !2165

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2166
  %851 = trunc i8 %850 to i1, !dbg !2166
  br i1 %851, label %852, label %855, !dbg !2168

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2169
  %854 = icmp ne i32 %853, 2, !dbg !2170
  br i1 %854, label %858, label %855, !dbg !2171

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2172
  %857 = trunc i8 %856 to i1, !dbg !2172
  br i1 %857, label %858, label %875, !dbg !2173

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2174
  %860 = icmp ne i32* %859, null, !dbg !2174
  br i1 %860, label %861, label %875, !dbg !2175

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2176
  %863 = load i8, i8* %35, align 1, !dbg !2177
  %864 = zext i8 %863 to i64, !dbg !2177
  %865 = udiv i64 %864, 32, !dbg !2178
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2176
  %867 = load i32, i32* %866, align 4, !dbg !2176
  %868 = load i8, i8* %35, align 1, !dbg !2179
  %869 = zext i8 %868 to i64, !dbg !2179
  %870 = urem i64 %869, 32, !dbg !2180
  %871 = trunc i64 %870 to i32, !dbg !2181
  %872 = lshr i32 %867, %871, !dbg !2181
  %873 = and i32 %872, 1, !dbg !2182
  %874 = icmp ne i32 %873, 0, !dbg !2182
  br i1 %874, label %879, label %875, !dbg !2183

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2184
  %877 = trunc i8 %876 to i1, !dbg !2184
  br i1 %877, label %879, label %878, !dbg !2185

878:                                              ; preds = %875
  br label %942, !dbg !2186

879:                                              ; preds = %875, %861
  br label %880, !dbg !2184

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2187), !dbg !2188
  br label %881, !dbg !2189

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2190
  %883 = trunc i8 %882 to i1, !dbg !2190
  br i1 %883, label %884, label %885, !dbg !2193

884:                                              ; preds = %881
  br label %1078, !dbg !2190

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2193
  %886 = load i32, i32* %15, align 4, !dbg !2194
  %887 = icmp eq i32 %886, 2, !dbg !2194
  br i1 %887, label %888, label %928, !dbg !2194

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2194
  %890 = trunc i8 %889 to i1, !dbg !2194
  br i1 %890, label %928, label %891, !dbg !2193

891:                                              ; preds = %888
  br label %892, !dbg !2196

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2198
  %894 = load i64, i64* %12, align 8, !dbg !2198
  %895 = icmp ult i64 %893, %894, !dbg !2198
  br i1 %895, label %896, label %900, !dbg !2201

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2198
  %898 = load i64, i64* %21, align 8, !dbg !2198
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2198
  store i8 39, i8* %899, align 1, !dbg !2198
  br label %900, !dbg !2198

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2201
  %902 = add i64 %901, 1, !dbg !2201
  store i64 %902, i64* %21, align 8, !dbg !2201
  br label %903, !dbg !2201

903:                                              ; preds = %900
  br label %904, !dbg !2196

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2202
  %906 = load i64, i64* %12, align 8, !dbg !2202
  %907 = icmp ult i64 %905, %906, !dbg !2202
  br i1 %907, label %908, label %912, !dbg !2205

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2202
  %910 = load i64, i64* %21, align 8, !dbg !2202
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2202
  store i8 36, i8* %911, align 1, !dbg !2202
  br label %912, !dbg !2202

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2205
  %914 = add i64 %913, 1, !dbg !2205
  store i64 %914, i64* %21, align 8, !dbg !2205
  br label %915, !dbg !2205

915:                                              ; preds = %912
  br label %916, !dbg !2196

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2206
  %918 = load i64, i64* %12, align 8, !dbg !2206
  %919 = icmp ult i64 %917, %918, !dbg !2206
  br i1 %919, label %920, label %924, !dbg !2209

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2206
  %922 = load i64, i64* %21, align 8, !dbg !2206
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2206
  store i8 39, i8* %923, align 1, !dbg !2206
  br label %924, !dbg !2206

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2209
  %926 = add i64 %925, 1, !dbg !2209
  store i64 %926, i64* %21, align 8, !dbg !2209
  br label %927, !dbg !2209

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2196
  br label %928, !dbg !2196

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2193

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2210
  %931 = load i64, i64* %12, align 8, !dbg !2210
  %932 = icmp ult i64 %930, %931, !dbg !2210
  br i1 %932, label %933, label %937, !dbg !2213

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2210
  %935 = load i64, i64* %21, align 8, !dbg !2210
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2210
  store i8 92, i8* %936, align 1, !dbg !2210
  br label %937, !dbg !2210

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2213
  %939 = add i64 %938, 1, !dbg !2213
  store i64 %939, i64* %21, align 8, !dbg !2213
  br label %940, !dbg !2213

940:                                              ; preds = %937
  br label %941, !dbg !2193

941:                                              ; preds = %940
  br label %942, !dbg !2193

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2214), !dbg !2215
  br label %943, !dbg !2216

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2217
  %945 = trunc i8 %944 to i1, !dbg !2217
  br i1 %945, label %946, label %974, !dbg !2217

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2217
  %948 = trunc i8 %947 to i1, !dbg !2217
  br i1 %948, label %974, label %949, !dbg !2220

949:                                              ; preds = %946
  br label %950, !dbg !2221

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2223
  %952 = load i64, i64* %12, align 8, !dbg !2223
  %953 = icmp ult i64 %951, %952, !dbg !2223
  br i1 %953, label %954, label %958, !dbg !2226

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2223
  %956 = load i64, i64* %21, align 8, !dbg !2223
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2223
  store i8 39, i8* %957, align 1, !dbg !2223
  br label %958, !dbg !2223

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2226
  %960 = add i64 %959, 1, !dbg !2226
  store i64 %960, i64* %21, align 8, !dbg !2226
  br label %961, !dbg !2226

961:                                              ; preds = %958
  br label %962, !dbg !2221

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2227
  %964 = load i64, i64* %12, align 8, !dbg !2227
  %965 = icmp ult i64 %963, %964, !dbg !2227
  br i1 %965, label %966, label %970, !dbg !2230

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2227
  %968 = load i64, i64* %21, align 8, !dbg !2227
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2227
  store i8 39, i8* %969, align 1, !dbg !2227
  br label %970, !dbg !2227

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2230
  %972 = add i64 %971, 1, !dbg !2230
  store i64 %972, i64* %21, align 8, !dbg !2230
  br label %973, !dbg !2230

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2221
  br label %974, !dbg !2221

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2220

975:                                              ; preds = %974
  br label %976, !dbg !2231

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2232
  %978 = load i64, i64* %12, align 8, !dbg !2232
  %979 = icmp ult i64 %977, %978, !dbg !2232
  br i1 %979, label %980, label %985, !dbg !2235

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2232
  %982 = load i8*, i8** %11, align 8, !dbg !2232
  %983 = load i64, i64* %21, align 8, !dbg !2232
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2232
  store i8 %981, i8* %984, align 1, !dbg !2232
  br label %985, !dbg !2232

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2235
  %987 = add i64 %986, 1, !dbg !2235
  store i64 %987, i64* %21, align 8, !dbg !2235
  br label %988, !dbg !2235

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2236
  %990 = trunc i8 %989 to i1, !dbg !2236
  br i1 %990, label %992, label %991, !dbg !2238

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2239
  br label %992, !dbg !2240

992:                                              ; preds = %991, %988
  br label %993, !dbg !2241

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2242
  %995 = add i64 %994, 1, !dbg !2242
  store i64 %995, i64* %31, align 8, !dbg !2242
  br label %139, !dbg !2243, !llvm.loop !2244

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2246
  %998 = icmp eq i64 %997, 0, !dbg !2248
  br i1 %998, label %999, label %1006, !dbg !2249

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2250
  %1001 = icmp eq i32 %1000, 2, !dbg !2251
  br i1 %1001, label %1002, label %1006, !dbg !2252

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2253
  %1004 = trunc i8 %1003 to i1, !dbg !2253
  br i1 %1004, label %1005, label %1006, !dbg !2254

1005:                                             ; preds = %1002
  br label %1078, !dbg !2255

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2256
  %1008 = icmp eq i32 %1007, 2, !dbg !2258
  br i1 %1008, label %1009, label %1038, !dbg !2259

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2260
  %1011 = trunc i8 %1010 to i1, !dbg !2260
  br i1 %1011, label %1038, label %1012, !dbg !2261

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2262
  %1014 = trunc i8 %1013 to i1, !dbg !2262
  br i1 %1014, label %1015, label %1038, !dbg !2263

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2264
  %1017 = trunc i8 %1016 to i1, !dbg !2264
  br i1 %1017, label %1018, label %1028, !dbg !2267

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2268
  %1020 = load i64, i64* %22, align 8, !dbg !2269
  %1021 = load i8*, i8** %13, align 8, !dbg !2270
  %1022 = load i64, i64* %14, align 8, !dbg !2271
  %1023 = load i32, i32* %16, align 4, !dbg !2272
  %1024 = load i32*, i32** %17, align 8, !dbg !2273
  %1025 = load i8*, i8** %18, align 8, !dbg !2274
  %1026 = load i8*, i8** %19, align 8, !dbg !2275
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2276
  store i64 %1027, i64* %10, align 8, !dbg !2277
  br label %1096, !dbg !2277

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2278
  %1030 = icmp ne i64 %1029, 0, !dbg !2278
  br i1 %1030, label %1036, label %1031, !dbg !2280

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2281
  %1033 = icmp ne i64 %1032, 0, !dbg !2281
  br i1 %1033, label %1034, label %1036, !dbg !2282

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2283
  store i64 %1035, i64* %12, align 8, !dbg !2285
  store i64 0, i64* %21, align 8, !dbg !2286
  br label %51, !dbg !2287

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2288

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2289
  %1040 = icmp ne i8* %1039, null, !dbg !2289
  br i1 %1040, label %1041, label %1068, !dbg !2291

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2292
  %1043 = trunc i8 %1042 to i1, !dbg !2292
  br i1 %1043, label %1068, label %1044, !dbg !2293

1044:                                             ; preds = %1041
  br label %1045, !dbg !2294

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2295
  %1047 = load i8, i8* %1046, align 1, !dbg !2298
  %1048 = icmp ne i8 %1047, 0, !dbg !2299
  br i1 %1048, label %1049, label %1067, !dbg !2299

1049:                                             ; preds = %1045
  br label %1050, !dbg !2300

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2301
  %1052 = load i64, i64* %12, align 8, !dbg !2301
  %1053 = icmp ult i64 %1051, %1052, !dbg !2301
  br i1 %1053, label %1054, label %1060, !dbg !2304

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2301
  %1056 = load i8, i8* %1055, align 1, !dbg !2301
  %1057 = load i8*, i8** %11, align 8, !dbg !2301
  %1058 = load i64, i64* %21, align 8, !dbg !2301
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2301
  store i8 %1056, i8* %1059, align 1, !dbg !2301
  br label %1060, !dbg !2301

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2304
  %1062 = add i64 %1061, 1, !dbg !2304
  store i64 %1062, i64* %21, align 8, !dbg !2304
  br label %1063, !dbg !2304

1063:                                             ; preds = %1060
  br label %1064, !dbg !2304

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2305
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2305
  store i8* %1066, i8** %23, align 8, !dbg !2305
  br label %1045, !dbg !2306, !llvm.loop !2307

1067:                                             ; preds = %1045
  br label %1068, !dbg !2308

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2309
  %1070 = load i64, i64* %12, align 8, !dbg !2311
  %1071 = icmp ult i64 %1069, %1070, !dbg !2312
  br i1 %1071, label %1072, label %1076, !dbg !2313

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2314
  %1074 = load i64, i64* %21, align 8, !dbg !2315
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2314
  store i8 0, i8* %1075, align 1, !dbg !2316
  br label %1076, !dbg !2314

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2317
  store i64 %1077, i64* %10, align 8, !dbg !2318
  br label %1096, !dbg !2318

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2319), !dbg !2320
  %1079 = load i32, i32* %15, align 4, !dbg !2321
  %1080 = icmp eq i32 %1079, 2, !dbg !2323
  br i1 %1080, label %1081, label %1085, !dbg !2324

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2325
  %1083 = trunc i8 %1082 to i1, !dbg !2325
  br i1 %1083, label %1084, label %1085, !dbg !2326

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2327
  br label %1085, !dbg !2328

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2329
  %1087 = load i64, i64* %12, align 8, !dbg !2330
  %1088 = load i8*, i8** %13, align 8, !dbg !2331
  %1089 = load i64, i64* %14, align 8, !dbg !2332
  %1090 = load i32, i32* %15, align 4, !dbg !2333
  %1091 = load i32, i32* %16, align 4, !dbg !2334
  %1092 = and i32 %1091, -3, !dbg !2335
  %1093 = load i8*, i8** %18, align 8, !dbg !2336
  %1094 = load i8*, i8** %19, align 8, !dbg !2337
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2338
  store i64 %1095, i64* %10, align 8, !dbg !2339
  br label %1096, !dbg !2339

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2340
  ret i64 %1097, !dbg !2340
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !197 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2341, metadata !DIExpression()), !dbg !2342
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2343, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2345, metadata !DIExpression()), !dbg !2346
  %9 = load i8*, i8** %4, align 8, !dbg !2347
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.103, i64 0, i64 0), i8* noundef %9) #18, !dbg !2347
  store i8* %10, i8** %6, align 8, !dbg !2346
  %11 = load i8*, i8** %6, align 8, !dbg !2348
  %12 = load i8*, i8** %4, align 8, !dbg !2350
  %13 = icmp ne i8* %11, %12, !dbg !2351
  br i1 %13, label %14, label %16, !dbg !2352

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2353
  store i8* %15, i8** %3, align 8, !dbg !2354
  br label %37, !dbg !2354

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2355, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2357, metadata !DIExpression()), !dbg !2358
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2359
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2360
  %18 = icmp eq i64 %17, 3, !dbg !2362
  br i1 %18, label %19, label %32, !dbg !2363

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2364
  %21 = icmp eq i32 %20, 8216, !dbg !2365
  br i1 %21, label %22, label %32, !dbg !2366

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2367
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2367
  %25 = load i8, i8* %24, align 1, !dbg !2367
  %26 = zext i8 %25 to i32, !dbg !2367
  %27 = icmp eq i32 %26, 39, !dbg !2368
  %28 = zext i1 %27 to i32, !dbg !2368
  %29 = sext i32 %28 to i64, !dbg !2369
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2369
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2369
  store i8* %31, i8** %3, align 8, !dbg !2370
  br label %37, !dbg !2370

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2371
  %34 = icmp eq i32 %33, 9, !dbg !2372
  %35 = zext i1 %34 to i64, !dbg !2371
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.100, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.102, i64 0, i64 0), !dbg !2371
  store i8* %36, i8** %3, align 8, !dbg !2373
  br label %37, !dbg !2373

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2374
  ret i8* %38, !dbg !2374
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2375 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2378, metadata !DIExpression()), !dbg !2379
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2380, metadata !DIExpression()), !dbg !2381
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2382, metadata !DIExpression()), !dbg !2383
  %7 = load i8*, i8** %4, align 8, !dbg !2384
  %8 = load i64, i64* %5, align 8, !dbg !2385
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2386
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2387
  ret i8* %10, !dbg !2388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2389 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2392, metadata !DIExpression()), !dbg !2393
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2394, metadata !DIExpression()), !dbg !2395
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2396, metadata !DIExpression()), !dbg !2397
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2398, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2400, metadata !DIExpression()), !dbg !2401
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2402
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2402
  br i1 %15, label %16, label %18, !dbg !2402

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2403
  br label %19, !dbg !2402

18:                                               ; preds = %4
  br label %19, !dbg !2402

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2402
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2401
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2404, metadata !DIExpression()), !dbg !2405
  %21 = call i32* @__errno_location() #21, !dbg !2406
  %22 = load i32, i32* %21, align 4, !dbg !2406
  store i32 %22, i32* %10, align 4, !dbg !2405
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2407, metadata !DIExpression()), !dbg !2408
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2409
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2410
  %25 = load i32, i32* %24, align 4, !dbg !2410
  %26 = load i64*, i64** %7, align 8, !dbg !2411
  %27 = icmp ne i64* %26, null, !dbg !2411
  %28 = zext i1 %27 to i64, !dbg !2411
  %29 = select i1 %27, i32 0, i32 1, !dbg !2411
  %30 = or i32 %25, %29, !dbg !2412
  store i32 %30, i32* %11, align 4, !dbg !2408
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2413, metadata !DIExpression()), !dbg !2414
  %31 = load i8*, i8** %5, align 8, !dbg !2415
  %32 = load i64, i64* %6, align 8, !dbg !2416
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2417
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2418
  %35 = load i32, i32* %34, align 8, !dbg !2418
  %36 = load i32, i32* %11, align 4, !dbg !2419
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2420
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2421
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2420
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2422
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2423
  %42 = load i8*, i8** %41, align 8, !dbg !2423
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2424
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2425
  %45 = load i8*, i8** %44, align 8, !dbg !2425
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2426
  %47 = add i64 %46, 1, !dbg !2427
  store i64 %47, i64* %12, align 8, !dbg !2414
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2428, metadata !DIExpression()), !dbg !2429
  %48 = load i64, i64* %12, align 8, !dbg !2430
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2431
  store i8* %49, i8** %13, align 8, !dbg !2429
  %50 = load i8*, i8** %13, align 8, !dbg !2432
  %51 = load i64, i64* %12, align 8, !dbg !2433
  %52 = load i8*, i8** %5, align 8, !dbg !2434
  %53 = load i64, i64* %6, align 8, !dbg !2435
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2436
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2437
  %56 = load i32, i32* %55, align 8, !dbg !2437
  %57 = load i32, i32* %11, align 4, !dbg !2438
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2439
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2440
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2439
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2441
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2442
  %63 = load i8*, i8** %62, align 8, !dbg !2442
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2443
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2444
  %66 = load i8*, i8** %65, align 8, !dbg !2444
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2445
  %68 = load i32, i32* %10, align 4, !dbg !2446
  %69 = call i32* @__errno_location() #21, !dbg !2447
  store i32 %68, i32* %69, align 4, !dbg !2448
  %70 = load i64*, i64** %7, align 8, !dbg !2449
  %71 = icmp ne i64* %70, null, !dbg !2449
  br i1 %71, label %72, label %76, !dbg !2451

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2452
  %74 = sub i64 %73, 1, !dbg !2453
  %75 = load i64*, i64** %7, align 8, !dbg !2454
  store i64 %74, i64* %75, align 8, !dbg !2455
  br label %76, !dbg !2456

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2457
  ret i8* %77, !dbg !2458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2459 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2460, metadata !DIExpression()), !dbg !2461
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2462
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2461
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2463, metadata !DIExpression()), !dbg !2465
  store i32 1, i32* %2, align 4, !dbg !2465
  br label %4, !dbg !2466

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2467
  %6 = load i32, i32* @nslots, align 4, !dbg !2469
  %7 = icmp slt i32 %5, %6, !dbg !2470
  br i1 %7, label %8, label %18, !dbg !2471

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2472
  %10 = load i32, i32* %2, align 4, !dbg !2473
  %11 = sext i32 %10 to i64, !dbg !2472
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2472
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2474
  %14 = load i8*, i8** %13, align 8, !dbg !2474
  call void @free(i8* noundef %14) #18, !dbg !2475
  br label %15, !dbg !2475

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2476
  %17 = add nsw i32 %16, 1, !dbg !2476
  store i32 %17, i32* %2, align 4, !dbg !2476
  br label %4, !dbg !2477, !llvm.loop !2478

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2480
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2480
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2482
  %22 = load i8*, i8** %21, align 8, !dbg !2482
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2483
  br i1 %23, label %24, label %29, !dbg !2484

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2485
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2485
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2487
  %28 = load i8*, i8** %27, align 8, !dbg !2487
  call void @free(i8* noundef %28) #18, !dbg !2488
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2489
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2490
  br label %29, !dbg !2491

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2492
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2494
  br i1 %31, label %32, label %35, !dbg !2495

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2496
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2496
  call void @free(i8* noundef %34) #18, !dbg !2498
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2499
  br label %35, !dbg !2500

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2501
  ret void, !dbg !2502
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2503 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2508, metadata !DIExpression()), !dbg !2509
  %5 = load i32, i32* %3, align 4, !dbg !2510
  %6 = load i8*, i8** %4, align 8, !dbg !2511
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2512
  ret i8* %7, !dbg !2513
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2514 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2517, metadata !DIExpression()), !dbg !2518
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2519, metadata !DIExpression()), !dbg !2520
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2521, metadata !DIExpression()), !dbg !2522
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2523, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2525, metadata !DIExpression()), !dbg !2526
  %18 = call i32* @__errno_location() #21, !dbg !2527
  %19 = load i32, i32* %18, align 4, !dbg !2527
  store i32 %19, i32* %9, align 4, !dbg !2526
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2528, metadata !DIExpression()), !dbg !2529
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2530
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2529
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2531, metadata !DIExpression()), !dbg !2532
  store i32 2147483647, i32* %11, align 4, !dbg !2532
  %21 = load i32, i32* %5, align 4, !dbg !2533
  %22 = icmp sle i32 0, %21, !dbg !2535
  br i1 %22, label %23, label %27, !dbg !2536

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2537
  %25 = load i32, i32* %11, align 4, !dbg !2538
  %26 = icmp slt i32 %24, %25, !dbg !2539
  br i1 %26, label %28, label %27, !dbg !2540

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2541
  unreachable, !dbg !2541

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2542
  %30 = load i32, i32* %5, align 4, !dbg !2544
  %31 = icmp sle i32 %29, %30, !dbg !2545
  br i1 %31, label %32, label %73, !dbg !2546

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2547, metadata !DIExpression()), !dbg !2549
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2550
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2551
  %35 = zext i1 %34 to i8, !dbg !2549
  store i8 %35, i8* %12, align 1, !dbg !2549
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2552, metadata !DIExpression()), !dbg !2553
  %36 = load i32, i32* @nslots, align 4, !dbg !2554
  %37 = sext i32 %36 to i64, !dbg !2554
  store i64 %37, i64* %13, align 8, !dbg !2553
  %38 = load i8, i8* %12, align 1, !dbg !2555
  %39 = trunc i8 %38 to i1, !dbg !2555
  br i1 %39, label %40, label %41, !dbg !2555

40:                                               ; preds = %32
  br label %43, !dbg !2555

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2556
  br label %43, !dbg !2555

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2555
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2555
  %46 = load i32, i32* %5, align 4, !dbg !2557
  %47 = load i32, i32* @nslots, align 4, !dbg !2558
  %48 = sub nsw i32 %46, %47, !dbg !2559
  %49 = add nsw i32 %48, 1, !dbg !2560
  %50 = sext i32 %49 to i64, !dbg !2557
  %51 = load i32, i32* %11, align 4, !dbg !2561
  %52 = sext i32 %51 to i64, !dbg !2561
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2562
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2562
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2563
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2564
  %55 = load i8, i8* %12, align 1, !dbg !2565
  %56 = trunc i8 %55 to i1, !dbg !2565
  br i1 %56, label %57, label %60, !dbg !2567

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2568
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2569
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2569
  br label %60, !dbg !2570

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2571
  %62 = load i32, i32* @nslots, align 4, !dbg !2572
  %63 = sext i32 %62 to i64, !dbg !2573
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2573
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2574
  %66 = load i64, i64* %13, align 8, !dbg !2575
  %67 = load i32, i32* @nslots, align 4, !dbg !2576
  %68 = sext i32 %67 to i64, !dbg !2576
  %69 = sub nsw i64 %66, %68, !dbg !2577
  %70 = mul i64 %69, 16, !dbg !2578
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2574
  %71 = load i64, i64* %13, align 8, !dbg !2579
  %72 = trunc i64 %71 to i32, !dbg !2579
  store i32 %72, i32* @nslots, align 4, !dbg !2580
  br label %73, !dbg !2581

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2582, metadata !DIExpression()), !dbg !2584
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2585
  %75 = load i32, i32* %5, align 4, !dbg !2586
  %76 = sext i32 %75 to i64, !dbg !2585
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2585
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2587
  %79 = load i64, i64* %78, align 8, !dbg !2587
  store i64 %79, i64* %14, align 8, !dbg !2584
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2588, metadata !DIExpression()), !dbg !2589
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2590
  %81 = load i32, i32* %5, align 4, !dbg !2591
  %82 = sext i32 %81 to i64, !dbg !2590
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2590
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2592
  %85 = load i8*, i8** %84, align 8, !dbg !2592
  store i8* %85, i8** %15, align 8, !dbg !2589
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2593, metadata !DIExpression()), !dbg !2594
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2595
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2596
  %88 = load i32, i32* %87, align 4, !dbg !2596
  %89 = or i32 %88, 1, !dbg !2597
  store i32 %89, i32* %16, align 4, !dbg !2594
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2598, metadata !DIExpression()), !dbg !2599
  %90 = load i8*, i8** %15, align 8, !dbg !2600
  %91 = load i64, i64* %14, align 8, !dbg !2601
  %92 = load i8*, i8** %6, align 8, !dbg !2602
  %93 = load i64, i64* %7, align 8, !dbg !2603
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2604
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2605
  %96 = load i32, i32* %95, align 8, !dbg !2605
  %97 = load i32, i32* %16, align 4, !dbg !2606
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2607
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2608
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2607
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2609
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2610
  %103 = load i8*, i8** %102, align 8, !dbg !2610
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2611
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2612
  %106 = load i8*, i8** %105, align 8, !dbg !2612
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2613
  store i64 %107, i64* %17, align 8, !dbg !2599
  %108 = load i64, i64* %14, align 8, !dbg !2614
  %109 = load i64, i64* %17, align 8, !dbg !2616
  %110 = icmp ule i64 %108, %109, !dbg !2617
  br i1 %110, label %111, label %149, !dbg !2618

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2619
  %113 = add i64 %112, 1, !dbg !2621
  store i64 %113, i64* %14, align 8, !dbg !2622
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2623
  %115 = load i32, i32* %5, align 4, !dbg !2624
  %116 = sext i32 %115 to i64, !dbg !2623
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2623
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2625
  store i64 %113, i64* %118, align 8, !dbg !2626
  %119 = load i8*, i8** %15, align 8, !dbg !2627
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2629
  br i1 %120, label %121, label %123, !dbg !2630

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2631
  call void @free(i8* noundef %122) #18, !dbg !2632
  br label %123, !dbg !2632

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2633
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2634
  store i8* %125, i8** %15, align 8, !dbg !2635
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2636
  %127 = load i32, i32* %5, align 4, !dbg !2637
  %128 = sext i32 %127 to i64, !dbg !2636
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2636
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2638
  store i8* %125, i8** %130, align 8, !dbg !2639
  %131 = load i8*, i8** %15, align 8, !dbg !2640
  %132 = load i64, i64* %14, align 8, !dbg !2641
  %133 = load i8*, i8** %6, align 8, !dbg !2642
  %134 = load i64, i64* %7, align 8, !dbg !2643
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2644
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2645
  %137 = load i32, i32* %136, align 8, !dbg !2645
  %138 = load i32, i32* %16, align 4, !dbg !2646
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2647
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2648
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2647
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2649
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2650
  %144 = load i8*, i8** %143, align 8, !dbg !2650
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2651
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2652
  %147 = load i8*, i8** %146, align 8, !dbg !2652
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2653
  br label %149, !dbg !2654

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2655
  %151 = call i32* @__errno_location() #21, !dbg !2656
  store i32 %150, i32* %151, align 4, !dbg !2657
  %152 = load i8*, i8** %15, align 8, !dbg !2658
  ret i8* %152, !dbg !2659
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2660 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2663, metadata !DIExpression()), !dbg !2664
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2665, metadata !DIExpression()), !dbg !2666
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2667, metadata !DIExpression()), !dbg !2668
  %7 = load i32, i32* %4, align 4, !dbg !2669
  %8 = load i8*, i8** %5, align 8, !dbg !2670
  %9 = load i64, i64* %6, align 8, !dbg !2671
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2672
  ret i8* %10, !dbg !2673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2674 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2677, metadata !DIExpression()), !dbg !2678
  %3 = load i8*, i8** %2, align 8, !dbg !2679
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2680
  ret i8* %4, !dbg !2681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2682 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2685, metadata !DIExpression()), !dbg !2686
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2687, metadata !DIExpression()), !dbg !2688
  %5 = load i8*, i8** %3, align 8, !dbg !2689
  %6 = load i64, i64* %4, align 8, !dbg !2690
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2691
  ret i8* %7, !dbg !2692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2693 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2696, metadata !DIExpression()), !dbg !2697
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2698, metadata !DIExpression()), !dbg !2699
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2700, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2702, metadata !DIExpression()), !dbg !2703
  %8 = load i32, i32* %5, align 4, !dbg !2704
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2705
  %9 = load i32, i32* %4, align 4, !dbg !2706
  %10 = load i8*, i8** %6, align 8, !dbg !2707
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2708
  ret i8* %11, !dbg !2709
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2710 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2713, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2715, metadata !DIExpression()), !dbg !2716
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2716
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2716
  %5 = load i32, i32* %3, align 4, !dbg !2717
  %6 = icmp eq i32 %5, 10, !dbg !2719
  br i1 %6, label %7, label %8, !dbg !2720

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2721
  unreachable, !dbg !2721

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2722
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2723
  store i32 %9, i32* %10, align 8, !dbg !2724
  ret void, !dbg !2725
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2726 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2729, metadata !DIExpression()), !dbg !2730
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2731, metadata !DIExpression()), !dbg !2732
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2733, metadata !DIExpression()), !dbg !2734
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2737, metadata !DIExpression()), !dbg !2738
  %10 = load i32, i32* %6, align 4, !dbg !2739
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2740
  %11 = load i32, i32* %5, align 4, !dbg !2741
  %12 = load i8*, i8** %7, align 8, !dbg !2742
  %13 = load i64, i64* %8, align 8, !dbg !2743
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2744
  ret i8* %14, !dbg !2745
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2746 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2749, metadata !DIExpression()), !dbg !2750
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2751, metadata !DIExpression()), !dbg !2752
  %5 = load i32, i32* %3, align 4, !dbg !2753
  %6 = load i8*, i8** %4, align 8, !dbg !2754
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2755
  ret i8* %7, !dbg !2756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2757 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2760, metadata !DIExpression()), !dbg !2761
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2762, metadata !DIExpression()), !dbg !2763
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2764, metadata !DIExpression()), !dbg !2765
  %7 = load i32, i32* %4, align 4, !dbg !2766
  %8 = load i8*, i8** %5, align 8, !dbg !2767
  %9 = load i64, i64* %6, align 8, !dbg !2768
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2769
  ret i8* %10, !dbg !2770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2771 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2774, metadata !DIExpression()), !dbg !2775
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2776, metadata !DIExpression()), !dbg !2777
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2780, metadata !DIExpression()), !dbg !2781
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2782
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2782
  %9 = load i8, i8* %6, align 1, !dbg !2783
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2784
  %11 = load i8*, i8** %4, align 8, !dbg !2785
  %12 = load i64, i64* %5, align 8, !dbg !2786
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2787
  ret i8* %13, !dbg !2788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2789 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2792, metadata !DIExpression()), !dbg !2793
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2794, metadata !DIExpression()), !dbg !2795
  %5 = load i8*, i8** %3, align 8, !dbg !2796
  %6 = load i8, i8* %4, align 1, !dbg !2797
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2798
  ret i8* %7, !dbg !2799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2800 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2801, metadata !DIExpression()), !dbg !2802
  %3 = load i8*, i8** %2, align 8, !dbg !2803
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2804
  ret i8* %4, !dbg !2805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2806 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2807, metadata !DIExpression()), !dbg !2808
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2809, metadata !DIExpression()), !dbg !2810
  %5 = load i8*, i8** %3, align 8, !dbg !2811
  %6 = load i64, i64* %4, align 8, !dbg !2812
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2813
  ret i8* %7, !dbg !2814
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2815 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2816, metadata !DIExpression()), !dbg !2817
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2818, metadata !DIExpression()), !dbg !2819
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2820, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2822, metadata !DIExpression()), !dbg !2823
  %9 = load i32, i32* %5, align 4, !dbg !2824
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2825
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2825
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2825
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2825
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2826
  %13 = load i32, i32* %4, align 4, !dbg !2827
  %14 = load i8*, i8** %6, align 8, !dbg !2828
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2829
  ret i8* %15, !dbg !2830
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2831 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2834, metadata !DIExpression()), !dbg !2835
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2836, metadata !DIExpression()), !dbg !2837
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2838, metadata !DIExpression()), !dbg !2839
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2840, metadata !DIExpression()), !dbg !2841
  %9 = load i32, i32* %5, align 4, !dbg !2842
  %10 = load i8*, i8** %6, align 8, !dbg !2843
  %11 = load i8*, i8** %7, align 8, !dbg !2844
  %12 = load i8*, i8** %8, align 8, !dbg !2845
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2846
  ret i8* %13, !dbg !2847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2848 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2851, metadata !DIExpression()), !dbg !2852
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2853, metadata !DIExpression()), !dbg !2854
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2855, metadata !DIExpression()), !dbg !2856
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2857, metadata !DIExpression()), !dbg !2858
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2859, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2861, metadata !DIExpression()), !dbg !2862
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2863
  %13 = load i8*, i8** %7, align 8, !dbg !2864
  %14 = load i8*, i8** %8, align 8, !dbg !2865
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2866
  %15 = load i32, i32* %6, align 4, !dbg !2867
  %16 = load i8*, i8** %9, align 8, !dbg !2868
  %17 = load i64, i64* %10, align 8, !dbg !2869
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2870
  ret i8* %18, !dbg !2871
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2872 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2875, metadata !DIExpression()), !dbg !2876
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2877, metadata !DIExpression()), !dbg !2878
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2879, metadata !DIExpression()), !dbg !2880
  %7 = load i8*, i8** %4, align 8, !dbg !2881
  %8 = load i8*, i8** %5, align 8, !dbg !2882
  %9 = load i8*, i8** %6, align 8, !dbg !2883
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2884
  ret i8* %10, !dbg !2885
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2886 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2889, metadata !DIExpression()), !dbg !2890
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2891, metadata !DIExpression()), !dbg !2892
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2893, metadata !DIExpression()), !dbg !2894
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2895, metadata !DIExpression()), !dbg !2896
  %9 = load i8*, i8** %5, align 8, !dbg !2897
  %10 = load i8*, i8** %6, align 8, !dbg !2898
  %11 = load i8*, i8** %7, align 8, !dbg !2899
  %12 = load i64, i64* %8, align 8, !dbg !2900
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2901
  ret i8* %13, !dbg !2902
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2903 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2906, metadata !DIExpression()), !dbg !2907
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2908, metadata !DIExpression()), !dbg !2909
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2910, metadata !DIExpression()), !dbg !2911
  %7 = load i32, i32* %4, align 4, !dbg !2912
  %8 = load i8*, i8** %5, align 8, !dbg !2913
  %9 = load i64, i64* %6, align 8, !dbg !2914
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2915
  ret i8* %10, !dbg !2916
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2917 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2920, metadata !DIExpression()), !dbg !2921
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2922, metadata !DIExpression()), !dbg !2923
  %5 = load i8*, i8** %3, align 8, !dbg !2924
  %6 = load i64, i64* %4, align 8, !dbg !2925
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2926
  ret i8* %7, !dbg !2927
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2928 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2931, metadata !DIExpression()), !dbg !2932
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2933, metadata !DIExpression()), !dbg !2934
  %5 = load i32, i32* %3, align 4, !dbg !2935
  %6 = load i8*, i8** %4, align 8, !dbg !2936
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2937
  ret i8* %7, !dbg !2938
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2939 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2942, metadata !DIExpression()), !dbg !2943
  %3 = load i8*, i8** %2, align 8, !dbg !2944
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2945
  ret i8* %4, !dbg !2946
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2947 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2951, metadata !DIExpression()), !dbg !2952
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2953, metadata !DIExpression()), !dbg !2954
  %5 = load i8*, i8** %3, align 8, !dbg !2955
  %6 = load i8*, i8** %4, align 8, !dbg !2956
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2957
  %8 = icmp ne i32 %7, 0, !dbg !2958
  %9 = xor i1 %8, true, !dbg !2958
  ret i1 %9, !dbg !2959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2960 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3017, metadata !DIExpression()), !dbg !3018
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3019, metadata !DIExpression()), !dbg !3020
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3021, metadata !DIExpression()), !dbg !3022
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3023, metadata !DIExpression()), !dbg !3024
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3025, metadata !DIExpression()), !dbg !3026
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3027, metadata !DIExpression()), !dbg !3028
  %13 = load i8*, i8** %8, align 8, !dbg !3029
  %14 = icmp ne i8* %13, null, !dbg !3029
  br i1 %14, label %15, label %21, !dbg !3031

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3032
  %17 = load i8*, i8** %8, align 8, !dbg !3033
  %18 = load i8*, i8** %9, align 8, !dbg !3034
  %19 = load i8*, i8** %10, align 8, !dbg !3035
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3036
  br label %26, !dbg !3036

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3037
  %23 = load i8*, i8** %9, align 8, !dbg !3038
  %24 = load i8*, i8** %10, align 8, !dbg !3039
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.111, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3040
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3041
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.113, i64 0, i64 0)) #18, !dbg !3042
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3043
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3044
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.114, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3044
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3045
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.115, i64 0, i64 0)) #18, !dbg !3046
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.116, i64 0, i64 0)), !dbg !3047
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3048
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.114, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3048
  %37 = load i64, i64* %12, align 8, !dbg !3049
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
  ], !dbg !3050

38:                                               ; preds = %26
  br label %241, !dbg !3051

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3053
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.117, i64 0, i64 0)) #18, !dbg !3054
  %42 = load i8**, i8*** %11, align 8, !dbg !3055
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3055
  %44 = load i8*, i8** %43, align 8, !dbg !3055
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3056
  br label %241, !dbg !3057

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3058
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.118, i64 0, i64 0)) #18, !dbg !3059
  %49 = load i8**, i8*** %11, align 8, !dbg !3060
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3060
  %51 = load i8*, i8** %50, align 8, !dbg !3060
  %52 = load i8**, i8*** %11, align 8, !dbg !3061
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3061
  %54 = load i8*, i8** %53, align 8, !dbg !3061
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3062
  br label %241, !dbg !3063

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3064
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.119, i64 0, i64 0)) #18, !dbg !3065
  %59 = load i8**, i8*** %11, align 8, !dbg !3066
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3066
  %61 = load i8*, i8** %60, align 8, !dbg !3066
  %62 = load i8**, i8*** %11, align 8, !dbg !3067
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3067
  %64 = load i8*, i8** %63, align 8, !dbg !3067
  %65 = load i8**, i8*** %11, align 8, !dbg !3068
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3068
  %67 = load i8*, i8** %66, align 8, !dbg !3068
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3069
  br label %241, !dbg !3070

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3071
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.120, i64 0, i64 0)) #18, !dbg !3072
  %72 = load i8**, i8*** %11, align 8, !dbg !3073
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3073
  %74 = load i8*, i8** %73, align 8, !dbg !3073
  %75 = load i8**, i8*** %11, align 8, !dbg !3074
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3074
  %77 = load i8*, i8** %76, align 8, !dbg !3074
  %78 = load i8**, i8*** %11, align 8, !dbg !3075
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3075
  %80 = load i8*, i8** %79, align 8, !dbg !3075
  %81 = load i8**, i8*** %11, align 8, !dbg !3076
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3076
  %83 = load i8*, i8** %82, align 8, !dbg !3076
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3077
  br label %241, !dbg !3078

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3079
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.121, i64 0, i64 0)) #18, !dbg !3080
  %88 = load i8**, i8*** %11, align 8, !dbg !3081
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3081
  %90 = load i8*, i8** %89, align 8, !dbg !3081
  %91 = load i8**, i8*** %11, align 8, !dbg !3082
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3082
  %93 = load i8*, i8** %92, align 8, !dbg !3082
  %94 = load i8**, i8*** %11, align 8, !dbg !3083
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3083
  %96 = load i8*, i8** %95, align 8, !dbg !3083
  %97 = load i8**, i8*** %11, align 8, !dbg !3084
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3084
  %99 = load i8*, i8** %98, align 8, !dbg !3084
  %100 = load i8**, i8*** %11, align 8, !dbg !3085
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3085
  %102 = load i8*, i8** %101, align 8, !dbg !3085
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3086
  br label %241, !dbg !3087

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3088
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.122, i64 0, i64 0)) #18, !dbg !3089
  %107 = load i8**, i8*** %11, align 8, !dbg !3090
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3090
  %109 = load i8*, i8** %108, align 8, !dbg !3090
  %110 = load i8**, i8*** %11, align 8, !dbg !3091
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3091
  %112 = load i8*, i8** %111, align 8, !dbg !3091
  %113 = load i8**, i8*** %11, align 8, !dbg !3092
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3092
  %115 = load i8*, i8** %114, align 8, !dbg !3092
  %116 = load i8**, i8*** %11, align 8, !dbg !3093
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3093
  %118 = load i8*, i8** %117, align 8, !dbg !3093
  %119 = load i8**, i8*** %11, align 8, !dbg !3094
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3094
  %121 = load i8*, i8** %120, align 8, !dbg !3094
  %122 = load i8**, i8*** %11, align 8, !dbg !3095
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3095
  %124 = load i8*, i8** %123, align 8, !dbg !3095
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3096
  br label %241, !dbg !3097

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3098
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.123, i64 0, i64 0)) #18, !dbg !3099
  %129 = load i8**, i8*** %11, align 8, !dbg !3100
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3100
  %131 = load i8*, i8** %130, align 8, !dbg !3100
  %132 = load i8**, i8*** %11, align 8, !dbg !3101
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3101
  %134 = load i8*, i8** %133, align 8, !dbg !3101
  %135 = load i8**, i8*** %11, align 8, !dbg !3102
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3102
  %137 = load i8*, i8** %136, align 8, !dbg !3102
  %138 = load i8**, i8*** %11, align 8, !dbg !3103
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3103
  %140 = load i8*, i8** %139, align 8, !dbg !3103
  %141 = load i8**, i8*** %11, align 8, !dbg !3104
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3104
  %143 = load i8*, i8** %142, align 8, !dbg !3104
  %144 = load i8**, i8*** %11, align 8, !dbg !3105
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3105
  %146 = load i8*, i8** %145, align 8, !dbg !3105
  %147 = load i8**, i8*** %11, align 8, !dbg !3106
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3106
  %149 = load i8*, i8** %148, align 8, !dbg !3106
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3107
  br label %241, !dbg !3108

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3109
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.124, i64 0, i64 0)) #18, !dbg !3110
  %154 = load i8**, i8*** %11, align 8, !dbg !3111
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3111
  %156 = load i8*, i8** %155, align 8, !dbg !3111
  %157 = load i8**, i8*** %11, align 8, !dbg !3112
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3112
  %159 = load i8*, i8** %158, align 8, !dbg !3112
  %160 = load i8**, i8*** %11, align 8, !dbg !3113
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3113
  %162 = load i8*, i8** %161, align 8, !dbg !3113
  %163 = load i8**, i8*** %11, align 8, !dbg !3114
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3114
  %165 = load i8*, i8** %164, align 8, !dbg !3114
  %166 = load i8**, i8*** %11, align 8, !dbg !3115
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3115
  %168 = load i8*, i8** %167, align 8, !dbg !3115
  %169 = load i8**, i8*** %11, align 8, !dbg !3116
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3116
  %171 = load i8*, i8** %170, align 8, !dbg !3116
  %172 = load i8**, i8*** %11, align 8, !dbg !3117
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3117
  %174 = load i8*, i8** %173, align 8, !dbg !3117
  %175 = load i8**, i8*** %11, align 8, !dbg !3118
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3118
  %177 = load i8*, i8** %176, align 8, !dbg !3118
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3119
  br label %241, !dbg !3120

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3121
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.125, i64 0, i64 0)) #18, !dbg !3122
  %182 = load i8**, i8*** %11, align 8, !dbg !3123
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3123
  %184 = load i8*, i8** %183, align 8, !dbg !3123
  %185 = load i8**, i8*** %11, align 8, !dbg !3124
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3124
  %187 = load i8*, i8** %186, align 8, !dbg !3124
  %188 = load i8**, i8*** %11, align 8, !dbg !3125
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3125
  %190 = load i8*, i8** %189, align 8, !dbg !3125
  %191 = load i8**, i8*** %11, align 8, !dbg !3126
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3126
  %193 = load i8*, i8** %192, align 8, !dbg !3126
  %194 = load i8**, i8*** %11, align 8, !dbg !3127
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3127
  %196 = load i8*, i8** %195, align 8, !dbg !3127
  %197 = load i8**, i8*** %11, align 8, !dbg !3128
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3128
  %199 = load i8*, i8** %198, align 8, !dbg !3128
  %200 = load i8**, i8*** %11, align 8, !dbg !3129
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3129
  %202 = load i8*, i8** %201, align 8, !dbg !3129
  %203 = load i8**, i8*** %11, align 8, !dbg !3130
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3130
  %205 = load i8*, i8** %204, align 8, !dbg !3130
  %206 = load i8**, i8*** %11, align 8, !dbg !3131
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3131
  %208 = load i8*, i8** %207, align 8, !dbg !3131
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3132
  br label %241, !dbg !3133

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3134
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.126, i64 0, i64 0)) #18, !dbg !3135
  %213 = load i8**, i8*** %11, align 8, !dbg !3136
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3136
  %215 = load i8*, i8** %214, align 8, !dbg !3136
  %216 = load i8**, i8*** %11, align 8, !dbg !3137
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3137
  %218 = load i8*, i8** %217, align 8, !dbg !3137
  %219 = load i8**, i8*** %11, align 8, !dbg !3138
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3138
  %221 = load i8*, i8** %220, align 8, !dbg !3138
  %222 = load i8**, i8*** %11, align 8, !dbg !3139
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3139
  %224 = load i8*, i8** %223, align 8, !dbg !3139
  %225 = load i8**, i8*** %11, align 8, !dbg !3140
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3140
  %227 = load i8*, i8** %226, align 8, !dbg !3140
  %228 = load i8**, i8*** %11, align 8, !dbg !3141
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3141
  %230 = load i8*, i8** %229, align 8, !dbg !3141
  %231 = load i8**, i8*** %11, align 8, !dbg !3142
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3142
  %233 = load i8*, i8** %232, align 8, !dbg !3142
  %234 = load i8**, i8*** %11, align 8, !dbg !3143
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3143
  %236 = load i8*, i8** %235, align 8, !dbg !3143
  %237 = load i8**, i8*** %11, align 8, !dbg !3144
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3144
  %239 = load i8*, i8** %238, align 8, !dbg !3144
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3145
  br label %241, !dbg !3146

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3148 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3151, metadata !DIExpression()), !dbg !3152
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3153, metadata !DIExpression()), !dbg !3154
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3155, metadata !DIExpression()), !dbg !3156
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3157, metadata !DIExpression()), !dbg !3158
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3159, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3161, metadata !DIExpression()), !dbg !3162
  store i64 0, i64* %11, align 8, !dbg !3163
  br label %12, !dbg !3165

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3166
  %14 = load i64, i64* %11, align 8, !dbg !3168
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3166
  %16 = load i8*, i8** %15, align 8, !dbg !3166
  %17 = icmp ne i8* %16, null, !dbg !3169
  br i1 %17, label %18, label %22, !dbg !3169

18:                                               ; preds = %12
  br label %19, !dbg !3169

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3170
  %21 = add i64 %20, 1, !dbg !3170
  store i64 %21, i64* %11, align 8, !dbg !3170
  br label %12, !dbg !3171, !llvm.loop !3172

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3174
  %24 = load i8*, i8** %7, align 8, !dbg !3175
  %25 = load i8*, i8** %8, align 8, !dbg !3176
  %26 = load i8*, i8** %9, align 8, !dbg !3177
  %27 = load i8**, i8*** %10, align 8, !dbg !3178
  %28 = load i64, i64* %11, align 8, !dbg !3179
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3180
  ret void, !dbg !3181
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3182 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3196, metadata !DIExpression()), !dbg !3197
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3198, metadata !DIExpression()), !dbg !3199
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3200, metadata !DIExpression()), !dbg !3201
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3202, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3204, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3206, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3208, metadata !DIExpression()), !dbg !3210
  store i64 0, i64* %10, align 8, !dbg !3211
  br label %12, !dbg !3213

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3214
  %14 = icmp ult i64 %13, 10, !dbg !3216
  br i1 %14, label %15, label %38, !dbg !3217

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3218
  %17 = load i32, i32* %16, align 8, !dbg !3218
  %18 = icmp sge i32 %17, 0, !dbg !3218
  br i1 %18, label %27, label %19, !dbg !3218

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3218
  store i32 %20, i32* %16, align 8, !dbg !3218
  %21 = icmp sle i32 %20, 0, !dbg !3218
  br i1 %21, label %22, label %27, !dbg !3218

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3218
  %24 = load i8*, i8** %23, align 8, !dbg !3218
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3218
  %26 = bitcast i8* %25 to i8**, !dbg !3218
  br label %32, !dbg !3218

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3218
  %29 = load i8*, i8** %28, align 8, !dbg !3218
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3218
  store i8* %30, i8** %28, align 8, !dbg !3218
  %31 = bitcast i8* %29 to i8**, !dbg !3218
  br label %32, !dbg !3218

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3218
  %34 = load i8*, i8** %33, align 8, !dbg !3218
  %35 = load i64, i64* %10, align 8, !dbg !3219
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3220
  store i8* %34, i8** %36, align 8, !dbg !3221
  %37 = icmp ne i8* %34, null, !dbg !3222
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3223
  br i1 %39, label %40, label %44, !dbg !3224

40:                                               ; preds = %38
  br label %41, !dbg !3224

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3225
  %43 = add i64 %42, 1, !dbg !3225
  store i64 %43, i64* %10, align 8, !dbg !3225
  br label %12, !dbg !3226, !llvm.loop !3227

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3229
  %46 = load i8*, i8** %7, align 8, !dbg !3230
  %47 = load i8*, i8** %8, align 8, !dbg !3231
  %48 = load i8*, i8** %9, align 8, !dbg !3232
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3233
  %50 = load i64, i64* %10, align 8, !dbg !3234
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3235
  ret void, !dbg !3236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3237 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3240, metadata !DIExpression()), !dbg !3241
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3242, metadata !DIExpression()), !dbg !3243
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3244, metadata !DIExpression()), !dbg !3245
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3246, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3248, metadata !DIExpression()), !dbg !3249
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3250
  call void @llvm.va_start(i8* %11), !dbg !3250
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3251
  %13 = load i8*, i8** %6, align 8, !dbg !3252
  %14 = load i8*, i8** %7, align 8, !dbg !3253
  %15 = load i8*, i8** %8, align 8, !dbg !3254
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3255
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3255
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3255
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3255
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3256
  call void @llvm.va_end(i8* %18), !dbg !3256
  ret void, !dbg !3257
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3258 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3259
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.114, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3259
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.131, i64 0, i64 0)) #18, !dbg !3260
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.132, i64 0, i64 0)), !dbg !3261
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.133, i64 0, i64 0)) #18, !dbg !3262
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.134, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.135, i64 0, i64 0)), !dbg !3263
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.136, i64 0, i64 0)) #18, !dbg !3264
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.137, i64 0, i64 0)), !dbg !3265
  ret void, !dbg !3266
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3267 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3271, metadata !DIExpression()), !dbg !3272
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3273, metadata !DIExpression()), !dbg !3274
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3275, metadata !DIExpression()), !dbg !3276
  %7 = load i8*, i8** %4, align 8, !dbg !3277
  %8 = load i64, i64* %5, align 8, !dbg !3278
  %9 = load i64, i64* %6, align 8, !dbg !3279
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3280
  ret i8* %10, !dbg !3281
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3282 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3283, metadata !DIExpression()), !dbg !3284
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3285, metadata !DIExpression()), !dbg !3286
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3287, metadata !DIExpression()), !dbg !3288
  %7 = load i8*, i8** %4, align 8, !dbg !3289
  %8 = load i64, i64* %5, align 8, !dbg !3290
  %9 = load i64, i64* %6, align 8, !dbg !3291
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3292
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3293
  ret i8* %11, !dbg !3294
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3295 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3298, metadata !DIExpression()), !dbg !3299
  %3 = load i8*, i8** %2, align 8, !dbg !3300
  %4 = icmp ne i8* %3, null, !dbg !3300
  br i1 %4, label %6, label %5, !dbg !3302

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3303
  unreachable, !dbg !3303

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3304
  ret i8* %7, !dbg !3305
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3306 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3309, metadata !DIExpression()), !dbg !3310
  %3 = load i64, i64* %2, align 8, !dbg !3311
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3312
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3313
  ret i8* %5, !dbg !3314
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3315 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3318, metadata !DIExpression()), !dbg !3319
  %3 = load i64, i64* %2, align 8, !dbg !3320
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3321
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3322
  ret i8* %5, !dbg !3323
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3324 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3327, metadata !DIExpression()), !dbg !3328
  %3 = load i64, i64* %2, align 8, !dbg !3329
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3329
  ret i8* %4, !dbg !3330
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3331 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3334, metadata !DIExpression()), !dbg !3335
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3336, metadata !DIExpression()), !dbg !3337
  %5 = load i8*, i8** %3, align 8, !dbg !3338
  %6 = load i64, i64* %4, align 8, !dbg !3339
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3340
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3341
  ret i8* %8, !dbg !3342
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3343 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3346, metadata !DIExpression()), !dbg !3347
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3348, metadata !DIExpression()), !dbg !3349
  %5 = load i8*, i8** %3, align 8, !dbg !3350
  %6 = load i64, i64* %4, align 8, !dbg !3351
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3352
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3353
  ret i8* %8, !dbg !3354
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3355 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3358, metadata !DIExpression()), !dbg !3359
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3360, metadata !DIExpression()), !dbg !3361
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3362, metadata !DIExpression()), !dbg !3363
  %7 = load i8*, i8** %4, align 8, !dbg !3364
  %8 = load i64, i64* %5, align 8, !dbg !3365
  %9 = load i64, i64* %6, align 8, !dbg !3366
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3367
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3368
  ret i8* %11, !dbg !3369
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3370 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3373, metadata !DIExpression()), !dbg !3374
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3375, metadata !DIExpression()), !dbg !3376
  %5 = load i64, i64* %3, align 8, !dbg !3377
  %6 = load i64, i64* %4, align 8, !dbg !3378
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3379
  ret i8* %7, !dbg !3380
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3381 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3384, metadata !DIExpression()), !dbg !3385
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3386, metadata !DIExpression()), !dbg !3387
  %5 = load i64, i64* %3, align 8, !dbg !3388
  %6 = load i64, i64* %4, align 8, !dbg !3389
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3390
  ret i8* %7, !dbg !3391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3392 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3395, metadata !DIExpression()), !dbg !3396
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3397, metadata !DIExpression()), !dbg !3398
  %5 = load i8*, i8** %3, align 8, !dbg !3399
  %6 = load i64*, i64** %4, align 8, !dbg !3400
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3401
  ret i8* %7, !dbg !3402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !267 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3403, metadata !DIExpression()), !dbg !3404
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3405, metadata !DIExpression()), !dbg !3406
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3407, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3409, metadata !DIExpression()), !dbg !3410
  %8 = load i64*, i64** %5, align 8, !dbg !3411
  %9 = load i64, i64* %8, align 8, !dbg !3412
  store i64 %9, i64* %7, align 8, !dbg !3410
  %10 = load i8*, i8** %4, align 8, !dbg !3413
  %11 = icmp ne i8* %10, null, !dbg !3413
  br i1 %11, label %26, label %12, !dbg !3415

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3416
  %14 = icmp ne i64 %13, 0, !dbg !3416
  br i1 %14, label %25, label %15, !dbg !3419

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3420
  %17 = udiv i64 128, %16, !dbg !3422
  store i64 %17, i64* %7, align 8, !dbg !3423
  %18 = load i64, i64* %7, align 8, !dbg !3424
  %19 = icmp ne i64 %18, 0, !dbg !3425
  %20 = xor i1 %19, true, !dbg !3425
  %21 = zext i1 %20 to i32, !dbg !3425
  %22 = sext i32 %21 to i64, !dbg !3425
  %23 = load i64, i64* %7, align 8, !dbg !3426
  %24 = add i64 %23, %22, !dbg !3426
  store i64 %24, i64* %7, align 8, !dbg !3426
  br label %25, !dbg !3427

25:                                               ; preds = %15, %12
  br label %36, !dbg !3428

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3429
  %28 = load i64, i64* %7, align 8, !dbg !3429
  %29 = lshr i64 %28, 1, !dbg !3429
  %30 = add i64 %29, 1, !dbg !3429
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3429
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3429
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3429
  store i64 %33, i64* %7, align 8, !dbg !3429
  br i1 %32, label %34, label %35, !dbg !3432

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3433
  unreachable, !dbg !3433

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3434
  %38 = load i64, i64* %7, align 8, !dbg !3435
  %39 = load i64, i64* %6, align 8, !dbg !3436
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3437
  store i8* %40, i8** %4, align 8, !dbg !3438
  %41 = load i64, i64* %7, align 8, !dbg !3439
  %42 = load i64*, i64** %5, align 8, !dbg !3440
  store i64 %41, i64* %42, align 8, !dbg !3441
  %43 = load i8*, i8** %4, align 8, !dbg !3442
  ret i8* %43, !dbg !3443
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !274 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3444, metadata !DIExpression()), !dbg !3445
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3446, metadata !DIExpression()), !dbg !3447
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3448, metadata !DIExpression()), !dbg !3449
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3450, metadata !DIExpression()), !dbg !3451
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3452, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3454, metadata !DIExpression()), !dbg !3455
  %15 = load i64*, i64** %7, align 8, !dbg !3456
  %16 = load i64, i64* %15, align 8, !dbg !3457
  store i64 %16, i64* %11, align 8, !dbg !3455
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3458, metadata !DIExpression()), !dbg !3459
  %17 = load i64, i64* %11, align 8, !dbg !3460
  %18 = load i64, i64* %11, align 8, !dbg !3460
  %19 = ashr i64 %18, 1, !dbg !3460
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3460
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3460
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3460
  store i64 %22, i64* %12, align 8, !dbg !3460
  br i1 %21, label %23, label %24, !dbg !3462

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3463
  br label %24, !dbg !3464

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3465
  %26 = icmp sle i64 0, %25, !dbg !3467
  br i1 %26, label %27, label %33, !dbg !3468

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3469
  %29 = load i64, i64* %12, align 8, !dbg !3470
  %30 = icmp slt i64 %28, %29, !dbg !3471
  br i1 %30, label %31, label %33, !dbg !3472

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3473
  store i64 %32, i64* %12, align 8, !dbg !3474
  br label %33, !dbg !3475

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3478, metadata !DIExpression()), !dbg !3479
  %34 = load i64, i64* %10, align 8, !dbg !3480
  %35 = icmp slt i64 %34, 0, !dbg !3480
  br i1 %35, label %36, label %82, !dbg !3480

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3480
  %38 = icmp slt i64 %37, 0, !dbg !3480
  br i1 %38, label %39, label %62, !dbg !3480

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3480

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3480
  %42 = load i64, i64* %10, align 8, !dbg !3480
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3480
  %44 = icmp slt i64 %41, %43, !dbg !3480
  br i1 %44, label %111, label %115, !dbg !3480

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3480

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3480
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3480
  br i1 %48, label %52, label %53, !dbg !3480

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3480
  %51 = icmp slt i64 0, %50, !dbg !3480
  br i1 %51, label %52, label %53, !dbg !3480

52:                                               ; preds = %49, %46
  br label %57, !dbg !3480

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3480
  %55 = sub nsw i64 0, %54, !dbg !3480
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3480
  br label %57, !dbg !3480

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3480
  %59 = load i64, i64* %12, align 8, !dbg !3480
  %60 = sub nsw i64 -1, %59, !dbg !3480
  %61 = icmp sle i64 %58, %60, !dbg !3480
  br i1 %61, label %111, label %115, !dbg !3480

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3480
  %64 = icmp eq i64 %63, -1, !dbg !3480
  br i1 %64, label %65, label %77, !dbg !3480

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3480

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3480
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3480
  %69 = icmp slt i64 0, %68, !dbg !3480
  br i1 %69, label %111, label %115, !dbg !3480

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3480
  %72 = icmp slt i64 0, %71, !dbg !3480
  br i1 %72, label %73, label %115, !dbg !3480

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3480
  %75 = sub nsw i64 %74, 1, !dbg !3480
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3480
  br i1 %76, label %111, label %115, !dbg !3480

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3480
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3480
  %80 = load i64, i64* %12, align 8, !dbg !3480
  %81 = icmp slt i64 %79, %80, !dbg !3480
  br i1 %81, label %111, label %115, !dbg !3480

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3480
  %84 = icmp eq i64 %83, 0, !dbg !3480
  br i1 %84, label %85, label %86, !dbg !3480

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3480

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3480
  %88 = icmp slt i64 %87, 0, !dbg !3480
  br i1 %88, label %89, label %106, !dbg !3480

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3480
  %91 = icmp eq i64 %90, -1, !dbg !3480
  br i1 %91, label %92, label %101, !dbg !3480

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3480

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3480
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3480
  %96 = icmp slt i64 0, %95, !dbg !3480
  br i1 %96, label %111, label %115, !dbg !3480

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3480
  %99 = sub nsw i64 %98, 1, !dbg !3480
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3480
  br i1 %100, label %111, label %115, !dbg !3480

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3480
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3480
  %104 = load i64, i64* %10, align 8, !dbg !3480
  %105 = icmp slt i64 %103, %104, !dbg !3480
  br i1 %105, label %111, label %115, !dbg !3480

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3480
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3480
  %109 = load i64, i64* %12, align 8, !dbg !3480
  %110 = icmp slt i64 %108, %109, !dbg !3480
  br i1 %110, label %111, label %115, !dbg !3480

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3480
  %113 = load i64, i64* %10, align 8, !dbg !3480
  %114 = mul i64 %112, %113, !dbg !3480
  store i64 %114, i64* %13, align 8, !dbg !3480
  br label %119, !dbg !3480

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3480
  %117 = load i64, i64* %10, align 8, !dbg !3480
  %118 = mul i64 %116, %117, !dbg !3480
  store i64 %118, i64* %13, align 8, !dbg !3480
  br label %119, !dbg !3480

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3480
  %121 = icmp ne i32 %120, 0, !dbg !3480
  br i1 %121, label %122, label %123, !dbg !3480

122:                                              ; preds = %119
  br label %129, !dbg !3480

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3481
  %125 = icmp slt i64 %124, 128, !dbg !3482
  %126 = zext i1 %125 to i64, !dbg !3481
  %127 = select i1 %125, i32 128, i32 0, !dbg !3481
  %128 = sext i32 %127 to i64, !dbg !3481
  br label %129, !dbg !3480

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3480
  store i64 %130, i64* %14, align 8, !dbg !3479
  %131 = load i64, i64* %14, align 8, !dbg !3483
  %132 = icmp ne i64 %131, 0, !dbg !3483
  br i1 %132, label %133, label %142, !dbg !3485

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3486
  %135 = load i64, i64* %10, align 8, !dbg !3488
  %136 = sdiv i64 %134, %135, !dbg !3489
  store i64 %136, i64* %12, align 8, !dbg !3490
  %137 = load i64, i64* %14, align 8, !dbg !3491
  %138 = load i64, i64* %14, align 8, !dbg !3492
  %139 = load i64, i64* %10, align 8, !dbg !3493
  %140 = srem i64 %138, %139, !dbg !3494
  %141 = sub nsw i64 %137, %140, !dbg !3495
  store i64 %141, i64* %13, align 8, !dbg !3496
  br label %142, !dbg !3497

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3498
  %144 = icmp ne i8* %143, null, !dbg !3498
  br i1 %144, label %147, label %145, !dbg !3500

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3501
  store i64 0, i64* %146, align 8, !dbg !3502
  br label %147, !dbg !3503

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3504
  %149 = load i64, i64* %11, align 8, !dbg !3506
  %150 = sub nsw i64 %148, %149, !dbg !3507
  %151 = load i64, i64* %8, align 8, !dbg !3508
  %152 = icmp slt i64 %150, %151, !dbg !3509
  br i1 %152, label %153, label %256, !dbg !3510

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3511
  %155 = load i64, i64* %8, align 8, !dbg !3511
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3511
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3511
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3511
  store i64 %158, i64* %12, align 8, !dbg !3511
  br i1 %157, label %255, label %159, !dbg !3512

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3513
  %161 = icmp sle i64 0, %160, !dbg !3514
  br i1 %161, label %162, label %166, !dbg !3515

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3516
  %164 = load i64, i64* %12, align 8, !dbg !3517
  %165 = icmp slt i64 %163, %164, !dbg !3518
  br i1 %165, label %255, label %166, !dbg !3519

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3520
  %168 = icmp slt i64 %167, 0, !dbg !3520
  br i1 %168, label %169, label %215, !dbg !3520

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3520
  %171 = icmp slt i64 %170, 0, !dbg !3520
  br i1 %171, label %172, label %195, !dbg !3520

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3520

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3520
  %175 = load i64, i64* %10, align 8, !dbg !3520
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3520
  %177 = icmp slt i64 %174, %176, !dbg !3520
  br i1 %177, label %244, label %248, !dbg !3520

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3520

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3520
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3520
  br i1 %181, label %185, label %186, !dbg !3520

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3520
  %184 = icmp slt i64 0, %183, !dbg !3520
  br i1 %184, label %185, label %186, !dbg !3520

185:                                              ; preds = %182, %179
  br label %190, !dbg !3520

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3520
  %188 = sub nsw i64 0, %187, !dbg !3520
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3520
  br label %190, !dbg !3520

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3520
  %192 = load i64, i64* %12, align 8, !dbg !3520
  %193 = sub nsw i64 -1, %192, !dbg !3520
  %194 = icmp sle i64 %191, %193, !dbg !3520
  br i1 %194, label %244, label %248, !dbg !3520

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3520
  %197 = icmp eq i64 %196, -1, !dbg !3520
  br i1 %197, label %198, label %210, !dbg !3520

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3520

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3520
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3520
  %202 = icmp slt i64 0, %201, !dbg !3520
  br i1 %202, label %244, label %248, !dbg !3520

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3520
  %205 = icmp slt i64 0, %204, !dbg !3520
  br i1 %205, label %206, label %248, !dbg !3520

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3520
  %208 = sub nsw i64 %207, 1, !dbg !3520
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3520
  br i1 %209, label %244, label %248, !dbg !3520

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3520
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3520
  %213 = load i64, i64* %12, align 8, !dbg !3520
  %214 = icmp slt i64 %212, %213, !dbg !3520
  br i1 %214, label %244, label %248, !dbg !3520

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3520
  %217 = icmp eq i64 %216, 0, !dbg !3520
  br i1 %217, label %218, label %219, !dbg !3520

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3520

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3520
  %221 = icmp slt i64 %220, 0, !dbg !3520
  br i1 %221, label %222, label %239, !dbg !3520

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3520
  %224 = icmp eq i64 %223, -1, !dbg !3520
  br i1 %224, label %225, label %234, !dbg !3520

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3520

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3520
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3520
  %229 = icmp slt i64 0, %228, !dbg !3520
  br i1 %229, label %244, label %248, !dbg !3520

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3520
  %232 = sub nsw i64 %231, 1, !dbg !3520
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3520
  br i1 %233, label %244, label %248, !dbg !3520

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3520
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3520
  %237 = load i64, i64* %10, align 8, !dbg !3520
  %238 = icmp slt i64 %236, %237, !dbg !3520
  br i1 %238, label %244, label %248, !dbg !3520

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3520
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3520
  %242 = load i64, i64* %12, align 8, !dbg !3520
  %243 = icmp slt i64 %241, %242, !dbg !3520
  br i1 %243, label %244, label %248, !dbg !3520

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3520
  %246 = load i64, i64* %10, align 8, !dbg !3520
  %247 = mul i64 %245, %246, !dbg !3520
  store i64 %247, i64* %13, align 8, !dbg !3520
  br label %252, !dbg !3520

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3520
  %250 = load i64, i64* %10, align 8, !dbg !3520
  %251 = mul i64 %249, %250, !dbg !3520
  store i64 %251, i64* %13, align 8, !dbg !3520
  br label %252, !dbg !3520

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3520
  %254 = icmp ne i32 %253, 0, !dbg !3520
  br i1 %254, label %255, label %256, !dbg !3521

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3522
  unreachable, !dbg !3522

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3523
  %258 = load i64, i64* %13, align 8, !dbg !3524
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3525
  store i8* %259, i8** %6, align 8, !dbg !3526
  %260 = load i64, i64* %12, align 8, !dbg !3527
  %261 = load i64*, i64** %7, align 8, !dbg !3528
  store i64 %260, i64* %261, align 8, !dbg !3529
  %262 = load i8*, i8** %6, align 8, !dbg !3530
  ret i8* %262, !dbg !3531
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3532 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3533, metadata !DIExpression()), !dbg !3534
  %3 = load i64, i64* %2, align 8, !dbg !3535
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3536
  ret i8* %4, !dbg !3537
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3538 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3539, metadata !DIExpression()), !dbg !3540
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3541, metadata !DIExpression()), !dbg !3542
  %5 = load i64, i64* %3, align 8, !dbg !3543
  %6 = load i64, i64* %4, align 8, !dbg !3544
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3545
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3546
  ret i8* %8, !dbg !3547
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3548 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3549, metadata !DIExpression()), !dbg !3550
  %3 = load i64, i64* %2, align 8, !dbg !3551
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3552
  ret i8* %4, !dbg !3553
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3554 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3555, metadata !DIExpression()), !dbg !3556
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3557, metadata !DIExpression()), !dbg !3558
  %5 = load i64, i64* %3, align 8, !dbg !3559
  %6 = load i64, i64* %4, align 8, !dbg !3560
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3561
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3562
  ret i8* %8, !dbg !3563
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3564 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3569, metadata !DIExpression()), !dbg !3570
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3571, metadata !DIExpression()), !dbg !3572
  %5 = load i64, i64* %4, align 8, !dbg !3573
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3574
  %7 = load i8*, i8** %3, align 8, !dbg !3575
  %8 = load i64, i64* %4, align 8, !dbg !3576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3577
  ret i8* %6, !dbg !3578
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3579 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3582, metadata !DIExpression()), !dbg !3583
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3584, metadata !DIExpression()), !dbg !3585
  %5 = load i64, i64* %4, align 8, !dbg !3586
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3587
  %7 = load i8*, i8** %3, align 8, !dbg !3588
  %8 = load i64, i64* %4, align 8, !dbg !3589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3590
  ret i8* %6, !dbg !3591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3592 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3595, metadata !DIExpression()), !dbg !3596
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3597, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3599, metadata !DIExpression()), !dbg !3600
  %6 = load i64, i64* %4, align 8, !dbg !3601
  %7 = add nsw i64 %6, 1, !dbg !3602
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3603
  store i8* %8, i8** %5, align 8, !dbg !3600
  %9 = load i8*, i8** %5, align 8, !dbg !3604
  %10 = load i64, i64* %4, align 8, !dbg !3605
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3604
  store i8 0, i8* %11, align 1, !dbg !3606
  %12 = load i8*, i8** %5, align 8, !dbg !3607
  %13 = load i8*, i8** %3, align 8, !dbg !3608
  %14 = load i64, i64* %4, align 8, !dbg !3609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3610
  ret i8* %12, !dbg !3611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3612 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3613, metadata !DIExpression()), !dbg !3614
  %3 = load i8*, i8** %2, align 8, !dbg !3615
  %4 = load i8*, i8** %2, align 8, !dbg !3616
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3617
  %6 = add i64 %5, 1, !dbg !3618
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3619
  ret i8* %7, !dbg !3620
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3621 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3622, metadata !DIExpression()), !dbg !3624
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3624
  store i32 %2, i32* %1, align 4, !dbg !3624
  %3 = load i32, i32* %1, align 4, !dbg !3624
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.149, i64 0, i64 0)) #18, !dbg !3624
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* noundef %4), !dbg !3624
  %5 = load i32, i32* %1, align 4, !dbg !3624
  %6 = icmp ne i32 %5, 0, !dbg !3624
  br i1 %6, label %7, label %9, !dbg !3624

7:                                                ; preds = %0
  unreachable, !dbg !3624

8:                                                ; No predecessors!
  br label %10, !dbg !3624

9:                                                ; preds = %0
  br label %10, !dbg !3624

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3625
  unreachable, !dbg !3625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xstrtol(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* noundef %3, i8* noundef %4) #4 !dbg !3626 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3631, metadata !DIExpression()), !dbg !3632
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !3633, metadata !DIExpression()), !dbg !3634
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3635, metadata !DIExpression()), !dbg !3636
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !3637, metadata !DIExpression()), !dbg !3638
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3639, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3641, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !3643, metadata !DIExpression()), !dbg !3644
  %19 = load i8**, i8*** %8, align 8, !dbg !3645
  %20 = icmp ne i8** %19, null, !dbg !3645
  br i1 %20, label %21, label %23, !dbg !3645

21:                                               ; preds = %5
  %22 = load i8**, i8*** %8, align 8, !dbg !3646
  br label %24, !dbg !3645

23:                                               ; preds = %5
  br label %24, !dbg !3645

24:                                               ; preds = %23, %21
  %25 = phi i8** [ %22, %21 ], [ %12, %23 ], !dbg !3645
  store i8** %25, i8*** %13, align 8, !dbg !3644
  %26 = call i32* @__errno_location() #21, !dbg !3647
  store i32 0, i32* %26, align 4, !dbg !3648
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3649, metadata !DIExpression()), !dbg !3650
  %27 = load i8*, i8** %7, align 8, !dbg !3651
  %28 = load i8**, i8*** %13, align 8, !dbg !3652
  %29 = load i32, i32* %9, align 4, !dbg !3653
  %30 = call i64 @strtol(i8* noundef %27, i8** noundef %28, i32 noundef %29) #18, !dbg !3654
  store i64 %30, i64* %14, align 8, !dbg !3650
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3655, metadata !DIExpression()), !dbg !3656
  store i32 0, i32* %15, align 4, !dbg !3656
  %31 = load i8**, i8*** %13, align 8, !dbg !3657
  %32 = load i8*, i8** %31, align 8, !dbg !3659
  %33 = load i8*, i8** %7, align 8, !dbg !3660
  %34 = icmp eq i8* %32, %33, !dbg !3661
  br i1 %34, label %35, label %52, !dbg !3662

35:                                               ; preds = %24
  %36 = load i8*, i8** %11, align 8, !dbg !3663
  %37 = icmp ne i8* %36, null, !dbg !3663
  br i1 %37, label %38, label %50, !dbg !3666

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8, !dbg !3667
  %40 = load i8, i8* %39, align 1, !dbg !3668
  %41 = zext i8 %40 to i32, !dbg !3668
  %42 = icmp ne i32 %41, 0, !dbg !3668
  br i1 %42, label %43, label %50, !dbg !3669

43:                                               ; preds = %38
  %44 = load i8*, i8** %11, align 8, !dbg !3670
  %45 = load i8*, i8** %7, align 8, !dbg !3671
  %46 = load i8, i8* %45, align 1, !dbg !3672
  %47 = zext i8 %46 to i32, !dbg !3672
  %48 = call i8* @strchr(i8* noundef %44, i32 noundef %47) #20, !dbg !3673
  %49 = icmp ne i8* %48, null, !dbg !3673
  br i1 %49, label %51, label %50, !dbg !3674

50:                                               ; preds = %43, %38, %35
  store i32 4, i32* %6, align 4, !dbg !3675
  br label %190, !dbg !3675

51:                                               ; preds = %43
  store i64 1, i64* %14, align 8, !dbg !3676
  br label %63, !dbg !3677

52:                                               ; preds = %24
  %53 = call i32* @__errno_location() #21, !dbg !3678
  %54 = load i32, i32* %53, align 4, !dbg !3678
  %55 = icmp ne i32 %54, 0, !dbg !3680
  br i1 %55, label %56, label %62, !dbg !3681

56:                                               ; preds = %52
  %57 = call i32* @__errno_location() #21, !dbg !3682
  %58 = load i32, i32* %57, align 4, !dbg !3682
  %59 = icmp ne i32 %58, 34, !dbg !3685
  br i1 %59, label %60, label %61, !dbg !3686

60:                                               ; preds = %56
  store i32 4, i32* %6, align 4, !dbg !3687
  br label %190, !dbg !3687

61:                                               ; preds = %56
  store i32 1, i32* %15, align 4, !dbg !3688
  br label %62, !dbg !3689

62:                                               ; preds = %61, %52
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i8*, i8** %11, align 8, !dbg !3690
  %65 = icmp ne i8* %64, null, !dbg !3690
  br i1 %65, label %70, label %66, !dbg !3692

66:                                               ; preds = %63
  %67 = load i64, i64* %14, align 8, !dbg !3693
  %68 = load i64*, i64** %10, align 8, !dbg !3695
  store i64 %67, i64* %68, align 8, !dbg !3696
  %69 = load i32, i32* %15, align 4, !dbg !3697
  store i32 %69, i32* %6, align 4, !dbg !3698
  br label %190, !dbg !3698

70:                                               ; preds = %63
  %71 = load i8**, i8*** %13, align 8, !dbg !3699
  %72 = load i8*, i8** %71, align 8, !dbg !3701
  %73 = load i8, i8* %72, align 1, !dbg !3702
  %74 = zext i8 %73 to i32, !dbg !3702
  %75 = icmp ne i32 %74, 0, !dbg !3703
  br i1 %75, label %76, label %186, !dbg !3704

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8, !dbg !3705
  %78 = load i8**, i8*** %13, align 8, !dbg !3708
  %79 = load i8*, i8** %78, align 8, !dbg !3709
  %80 = load i8, i8* %79, align 1, !dbg !3710
  %81 = zext i8 %80 to i32, !dbg !3710
  %82 = call i8* @strchr(i8* noundef %77, i32 noundef %81) #20, !dbg !3711
  %83 = icmp ne i8* %82, null, !dbg !3711
  br i1 %83, label %89, label %84, !dbg !3712

84:                                               ; preds = %76
  %85 = load i64, i64* %14, align 8, !dbg !3713
  %86 = load i64*, i64** %10, align 8, !dbg !3715
  store i64 %85, i64* %86, align 8, !dbg !3716
  %87 = load i32, i32* %15, align 4, !dbg !3717
  %88 = or i32 %87, 2, !dbg !3718
  store i32 %88, i32* %6, align 4, !dbg !3719
  br label %190, !dbg !3719

89:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3720, metadata !DIExpression()), !dbg !3721
  store i32 1024, i32* %16, align 4, !dbg !3721
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3722, metadata !DIExpression()), !dbg !3723
  store i32 1, i32* %17, align 4, !dbg !3723
  %90 = load i8**, i8*** %13, align 8, !dbg !3724
  %91 = load i8*, i8** %90, align 8, !dbg !3725
  %92 = load i8, i8* %91, align 1, !dbg !3726
  %93 = zext i8 %92 to i32, !dbg !3726
  switch i32 %93, label %122 [
    i32 69, label %94
    i32 71, label %94
    i32 103, label %94
    i32 107, label %94
    i32 75, label %94
    i32 77, label %94
    i32 109, label %94
    i32 80, label %94
    i32 81, label %94
    i32 82, label %94
    i32 84, label %94
    i32 116, label %94
    i32 89, label %94
    i32 90, label %94
  ], !dbg !3727

94:                                               ; preds = %89, %89, %89, %89, %89, %89, %89, %89, %89, %89, %89, %89, %89, %89
  %95 = load i8*, i8** %11, align 8, !dbg !3728
  %96 = call i8* @strchr(i8* noundef %95, i32 noundef 48) #20, !dbg !3731
  %97 = icmp ne i8* %96, null, !dbg !3731
  br i1 %97, label %98, label %121, !dbg !3732

98:                                               ; preds = %94
  %99 = load i8**, i8*** %13, align 8, !dbg !3733
  %100 = getelementptr inbounds i8*, i8** %99, i64 0, !dbg !3733
  %101 = load i8*, i8** %100, align 8, !dbg !3733
  %102 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !3733
  %103 = load i8, i8* %102, align 1, !dbg !3733
  %104 = zext i8 %103 to i32, !dbg !3733
  switch i32 %104, label %120 [
    i32 105, label %105
    i32 66, label %117
    i32 68, label %117
  ], !dbg !3734

105:                                              ; preds = %98
  %106 = load i8**, i8*** %13, align 8, !dbg !3735
  %107 = getelementptr inbounds i8*, i8** %106, i64 0, !dbg !3735
  %108 = load i8*, i8** %107, align 8, !dbg !3735
  %109 = getelementptr inbounds i8, i8* %108, i64 2, !dbg !3735
  %110 = load i8, i8* %109, align 1, !dbg !3735
  %111 = zext i8 %110 to i32, !dbg !3735
  %112 = icmp eq i32 %111, 66, !dbg !3738
  br i1 %112, label %113, label %116, !dbg !3739

113:                                              ; preds = %105
  %114 = load i32, i32* %17, align 4, !dbg !3740
  %115 = add nsw i32 %114, 2, !dbg !3740
  store i32 %115, i32* %17, align 4, !dbg !3740
  br label %116, !dbg !3741

116:                                              ; preds = %113, %105
  br label %120, !dbg !3742

117:                                              ; preds = %98, %98
  store i32 1000, i32* %16, align 4, !dbg !3743
  %118 = load i32, i32* %17, align 4, !dbg !3744
  %119 = add nsw i32 %118, 1, !dbg !3744
  store i32 %119, i32* %17, align 4, !dbg !3744
  br label %120, !dbg !3745

120:                                              ; preds = %98, %117, %116
  br label %121, !dbg !3746

121:                                              ; preds = %120, %94
  br label %122, !dbg !3747

122:                                              ; preds = %121, %89
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3748, metadata !DIExpression()), !dbg !3749
  %123 = load i8**, i8*** %13, align 8, !dbg !3750
  %124 = load i8*, i8** %123, align 8, !dbg !3751
  %125 = load i8, i8* %124, align 1, !dbg !3752
  %126 = zext i8 %125 to i32, !dbg !3752
  switch i32 %126, label %164 [
    i32 98, label %127
    i32 66, label %129
    i32 99, label %131
    i32 69, label %132
    i32 71, label %135
    i32 103, label %135
    i32 107, label %138
    i32 75, label %138
    i32 77, label %141
    i32 109, label %141
    i32 80, label %144
    i32 81, label %147
    i32 82, label %150
    i32 84, label %153
    i32 116, label %153
    i32 119, label %156
    i32 89, label %158
    i32 90, label %161
  ], !dbg !3753

127:                                              ; preds = %122
  %128 = call i32 @bkm_scale(i64* noundef %14, i32 noundef 512), !dbg !3754
  store i32 %128, i32* %18, align 4, !dbg !3756
  br label %169, !dbg !3757

129:                                              ; preds = %122
  %130 = call i32 @bkm_scale(i64* noundef %14, i32 noundef 1024), !dbg !3758
  store i32 %130, i32* %18, align 4, !dbg !3759
  br label %169, !dbg !3760

131:                                              ; preds = %122
  store i32 0, i32* %18, align 4, !dbg !3761
  br label %169, !dbg !3762

132:                                              ; preds = %122
  %133 = load i32, i32* %16, align 4, !dbg !3763
  %134 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %133, i32 noundef 6), !dbg !3764
  store i32 %134, i32* %18, align 4, !dbg !3765
  br label %169, !dbg !3766

135:                                              ; preds = %122, %122
  %136 = load i32, i32* %16, align 4, !dbg !3767
  %137 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %136, i32 noundef 3), !dbg !3768
  store i32 %137, i32* %18, align 4, !dbg !3769
  br label %169, !dbg !3770

138:                                              ; preds = %122, %122
  %139 = load i32, i32* %16, align 4, !dbg !3771
  %140 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %139, i32 noundef 1), !dbg !3772
  store i32 %140, i32* %18, align 4, !dbg !3773
  br label %169, !dbg !3774

141:                                              ; preds = %122, %122
  %142 = load i32, i32* %16, align 4, !dbg !3775
  %143 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %142, i32 noundef 2), !dbg !3776
  store i32 %143, i32* %18, align 4, !dbg !3777
  br label %169, !dbg !3778

144:                                              ; preds = %122
  %145 = load i32, i32* %16, align 4, !dbg !3779
  %146 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %145, i32 noundef 5), !dbg !3780
  store i32 %146, i32* %18, align 4, !dbg !3781
  br label %169, !dbg !3782

147:                                              ; preds = %122
  %148 = load i32, i32* %16, align 4, !dbg !3783
  %149 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %148, i32 noundef 10), !dbg !3784
  store i32 %149, i32* %18, align 4, !dbg !3785
  br label %169, !dbg !3786

150:                                              ; preds = %122
  %151 = load i32, i32* %16, align 4, !dbg !3787
  %152 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %151, i32 noundef 9), !dbg !3788
  store i32 %152, i32* %18, align 4, !dbg !3789
  br label %169, !dbg !3790

153:                                              ; preds = %122, %122
  %154 = load i32, i32* %16, align 4, !dbg !3791
  %155 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %154, i32 noundef 4), !dbg !3792
  store i32 %155, i32* %18, align 4, !dbg !3793
  br label %169, !dbg !3794

156:                                              ; preds = %122
  %157 = call i32 @bkm_scale(i64* noundef %14, i32 noundef 2), !dbg !3795
  store i32 %157, i32* %18, align 4, !dbg !3796
  br label %169, !dbg !3797

158:                                              ; preds = %122
  %159 = load i32, i32* %16, align 4, !dbg !3798
  %160 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %159, i32 noundef 8), !dbg !3799
  store i32 %160, i32* %18, align 4, !dbg !3800
  br label %169, !dbg !3801

161:                                              ; preds = %122
  %162 = load i32, i32* %16, align 4, !dbg !3802
  %163 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %162, i32 noundef 7), !dbg !3803
  store i32 %163, i32* %18, align 4, !dbg !3804
  br label %169, !dbg !3805

164:                                              ; preds = %122
  %165 = load i64, i64* %14, align 8, !dbg !3806
  %166 = load i64*, i64** %10, align 8, !dbg !3807
  store i64 %165, i64* %166, align 8, !dbg !3808
  %167 = load i32, i32* %15, align 4, !dbg !3809
  %168 = or i32 %167, 2, !dbg !3810
  store i32 %168, i32* %6, align 4, !dbg !3811
  br label %190, !dbg !3811

169:                                              ; preds = %161, %158, %156, %153, %150, %147, %144, %141, %138, %135, %132, %131, %129, %127
  %170 = load i32, i32* %18, align 4, !dbg !3812
  %171 = load i32, i32* %15, align 4, !dbg !3813
  %172 = or i32 %171, %170, !dbg !3813
  store i32 %172, i32* %15, align 4, !dbg !3813
  %173 = load i32, i32* %17, align 4, !dbg !3814
  %174 = load i8**, i8*** %13, align 8, !dbg !3815
  %175 = load i8*, i8** %174, align 8, !dbg !3816
  %176 = sext i32 %173 to i64, !dbg !3816
  %177 = getelementptr inbounds i8, i8* %175, i64 %176, !dbg !3816
  store i8* %177, i8** %174, align 8, !dbg !3816
  %178 = load i8**, i8*** %13, align 8, !dbg !3817
  %179 = load i8*, i8** %178, align 8, !dbg !3819
  %180 = load i8, i8* %179, align 1, !dbg !3820
  %181 = icmp ne i8 %180, 0, !dbg !3820
  br i1 %181, label %182, label %185, !dbg !3821

182:                                              ; preds = %169
  %183 = load i32, i32* %15, align 4, !dbg !3822
  %184 = or i32 %183, 2, !dbg !3822
  store i32 %184, i32* %15, align 4, !dbg !3822
  br label %185, !dbg !3823

185:                                              ; preds = %182, %169
  br label %186, !dbg !3824

186:                                              ; preds = %185, %70
  %187 = load i64, i64* %14, align 8, !dbg !3825
  %188 = load i64*, i64** %10, align 8, !dbg !3826
  store i64 %187, i64* %188, align 8, !dbg !3827
  %189 = load i32, i32* %15, align 4, !dbg !3828
  store i32 %189, i32* %6, align 4, !dbg !3829
  br label %190, !dbg !3829

190:                                              ; preds = %186, %164, %84, %66, %60, %50
  %191 = load i32, i32* %6, align 4, !dbg !3830
  ret i32 %191, !dbg !3830
}

; Function Attrs: nounwind
declare i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale(i64* noundef %0, i32 noundef %1) #4 !dbg !3831 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3834, metadata !DIExpression()), !dbg !3835
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3836, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3838, metadata !DIExpression()), !dbg !3839
  %7 = load i32, i32* %5, align 4, !dbg !3840
  %8 = icmp slt i32 %7, 0, !dbg !3840
  br i1 %8, label %9, label %65, !dbg !3840

9:                                                ; preds = %2
  %10 = load i64*, i64** %4, align 8, !dbg !3840
  %11 = load i64, i64* %10, align 8, !dbg !3840
  %12 = icmp slt i64 %11, 0, !dbg !3840
  br i1 %12, label %13, label %40, !dbg !3840

13:                                               ; preds = %9
  br i1 true, label %14, label %21, !dbg !3840

14:                                               ; preds = %13
  %15 = load i64*, i64** %4, align 8, !dbg !3840
  %16 = load i64, i64* %15, align 8, !dbg !3840
  %17 = load i32, i32* %5, align 4, !dbg !3840
  %18 = sext i32 %17 to i64, !dbg !3840
  %19 = sdiv i64 9223372036854775807, %18, !dbg !3840
  %20 = icmp slt i64 %16, %19, !dbg !3840
  br i1 %20, label %102, label %108, !dbg !3840

21:                                               ; preds = %13
  br i1 true, label %22, label %25, !dbg !3840

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4, !dbg !3840
  %24 = icmp slt i32 %23, -2147483647, !dbg !3840
  br i1 %24, label %28, label %29, !dbg !3840

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4, !dbg !3840
  %27 = icmp slt i32 0, %26, !dbg !3840
  br i1 %27, label %28, label %29, !dbg !3840

28:                                               ; preds = %25, %22
  br label %34, !dbg !3840

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %5, align 4, !dbg !3840
  %31 = sub nsw i32 0, %30, !dbg !3840
  %32 = sext i32 %31 to i64, !dbg !3840
  %33 = sdiv i64 9223372036854775807, %32, !dbg !3840
  br label %34, !dbg !3840

34:                                               ; preds = %29, %28
  %35 = phi i64 [ 4294967295, %28 ], [ %33, %29 ], !dbg !3840
  %36 = load i64*, i64** %4, align 8, !dbg !3840
  %37 = load i64, i64* %36, align 8, !dbg !3840
  %38 = sub nsw i64 -1, %37, !dbg !3840
  %39 = icmp sle i64 %35, %38, !dbg !3840
  br i1 %39, label %102, label %108, !dbg !3840

40:                                               ; preds = %9
  %41 = load i32, i32* %5, align 4, !dbg !3840
  %42 = icmp eq i32 %41, -1, !dbg !3840
  br i1 %42, label %43, label %58, !dbg !3840

43:                                               ; preds = %40
  br i1 true, label %44, label %49, !dbg !3840

44:                                               ; preds = %43
  %45 = load i64*, i64** %4, align 8, !dbg !3840
  %46 = load i64, i64* %45, align 8, !dbg !3840
  %47 = add nsw i64 %46, -9223372036854775808, !dbg !3840
  %48 = icmp slt i64 0, %47, !dbg !3840
  br i1 %48, label %102, label %108, !dbg !3840

49:                                               ; preds = %43
  %50 = load i64*, i64** %4, align 8, !dbg !3840
  %51 = load i64, i64* %50, align 8, !dbg !3840
  %52 = icmp slt i64 0, %51, !dbg !3840
  br i1 %52, label %53, label %108, !dbg !3840

53:                                               ; preds = %49
  %54 = load i64*, i64** %4, align 8, !dbg !3840
  %55 = load i64, i64* %54, align 8, !dbg !3840
  %56 = sub nsw i64 %55, 1, !dbg !3840
  %57 = icmp slt i64 9223372036854775807, %56, !dbg !3840
  br i1 %57, label %102, label %108, !dbg !3840

58:                                               ; preds = %40
  %59 = load i32, i32* %5, align 4, !dbg !3840
  %60 = sext i32 %59 to i64, !dbg !3840
  %61 = sdiv i64 -9223372036854775808, %60, !dbg !3840
  %62 = load i64*, i64** %4, align 8, !dbg !3840
  %63 = load i64, i64* %62, align 8, !dbg !3840
  %64 = icmp slt i64 %61, %63, !dbg !3840
  br i1 %64, label %102, label %108, !dbg !3840

65:                                               ; preds = %2
  %66 = load i32, i32* %5, align 4, !dbg !3840
  %67 = icmp eq i32 %66, 0, !dbg !3840
  br i1 %67, label %68, label %69, !dbg !3840

68:                                               ; preds = %65
  br i1 false, label %102, label %108, !dbg !3840

69:                                               ; preds = %65
  %70 = load i64*, i64** %4, align 8, !dbg !3840
  %71 = load i64, i64* %70, align 8, !dbg !3840
  %72 = icmp slt i64 %71, 0, !dbg !3840
  br i1 %72, label %73, label %95, !dbg !3840

73:                                               ; preds = %69
  %74 = load i64*, i64** %4, align 8, !dbg !3840
  %75 = load i64, i64* %74, align 8, !dbg !3840
  %76 = icmp eq i64 %75, -1, !dbg !3840
  br i1 %76, label %77, label %88, !dbg !3840

77:                                               ; preds = %73
  br i1 true, label %78, label %83, !dbg !3840

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4, !dbg !3840
  %80 = sext i32 %79 to i64, !dbg !3840
  %81 = add nsw i64 %80, -9223372036854775808, !dbg !3840
  %82 = icmp slt i64 0, %81, !dbg !3840
  br i1 %82, label %102, label %108, !dbg !3840

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4, !dbg !3840
  %85 = sub nsw i32 %84, 1, !dbg !3840
  %86 = sext i32 %85 to i64, !dbg !3840
  %87 = icmp slt i64 9223372036854775807, %86, !dbg !3840
  br i1 %87, label %102, label %108, !dbg !3840

88:                                               ; preds = %73
  %89 = load i64*, i64** %4, align 8, !dbg !3840
  %90 = load i64, i64* %89, align 8, !dbg !3840
  %91 = sdiv i64 -9223372036854775808, %90, !dbg !3840
  %92 = load i32, i32* %5, align 4, !dbg !3840
  %93 = sext i32 %92 to i64, !dbg !3840
  %94 = icmp slt i64 %91, %93, !dbg !3840
  br i1 %94, label %102, label %108, !dbg !3840

95:                                               ; preds = %69
  %96 = load i32, i32* %5, align 4, !dbg !3840
  %97 = sext i32 %96 to i64, !dbg !3840
  %98 = sdiv i64 9223372036854775807, %97, !dbg !3840
  %99 = load i64*, i64** %4, align 8, !dbg !3840
  %100 = load i64, i64* %99, align 8, !dbg !3840
  %101 = icmp slt i64 %98, %100, !dbg !3840
  br i1 %101, label %102, label %108, !dbg !3840

102:                                              ; preds = %95, %88, %83, %78, %68, %58, %53, %44, %34, %14
  %103 = load i64*, i64** %4, align 8, !dbg !3840
  %104 = load i64, i64* %103, align 8, !dbg !3840
  %105 = load i32, i32* %5, align 4, !dbg !3840
  %106 = sext i32 %105 to i64, !dbg !3840
  %107 = mul i64 %104, %106, !dbg !3840
  store i64 %107, i64* %6, align 8, !dbg !3840
  br label %114, !dbg !3840

108:                                              ; preds = %95, %88, %83, %78, %68, %58, %53, %49, %44, %34, %14
  %109 = load i64*, i64** %4, align 8, !dbg !3840
  %110 = load i64, i64* %109, align 8, !dbg !3840
  %111 = load i32, i32* %5, align 4, !dbg !3840
  %112 = sext i32 %111 to i64, !dbg !3840
  %113 = mul i64 %110, %112, !dbg !3840
  store i64 %113, i64* %6, align 8, !dbg !3840
  br label %114, !dbg !3840

114:                                              ; preds = %108, %102
  %115 = phi i32 [ 1, %102 ], [ 0, %108 ], !dbg !3840
  %116 = icmp ne i32 %115, 0, !dbg !3840
  br i1 %116, label %117, label %124, !dbg !3842

117:                                              ; preds = %114
  %118 = load i64*, i64** %4, align 8, !dbg !3843
  %119 = load i64, i64* %118, align 8, !dbg !3845
  %120 = icmp slt i64 %119, 0, !dbg !3846
  %121 = zext i1 %120 to i64, !dbg !3845
  %122 = select i1 %120, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3845
  %123 = load i64*, i64** %4, align 8, !dbg !3847
  store i64 %122, i64* %123, align 8, !dbg !3848
  store i32 1, i32* %3, align 4, !dbg !3849
  br label %127, !dbg !3849

124:                                              ; preds = %114
  %125 = load i64, i64* %6, align 8, !dbg !3850
  %126 = load i64*, i64** %4, align 8, !dbg !3851
  store i64 %125, i64* %126, align 8, !dbg !3852
  store i32 0, i32* %3, align 4, !dbg !3853
  br label %127, !dbg !3853

127:                                              ; preds = %124, %117
  %128 = load i32, i32* %3, align 4, !dbg !3854
  ret i32 %128, !dbg !3854
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale_by_power(i64* noundef %0, i32 noundef %1, i32 noundef %2) #4 !dbg !3855 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3858, metadata !DIExpression()), !dbg !3859
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3860, metadata !DIExpression()), !dbg !3861
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3862, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3864, metadata !DIExpression()), !dbg !3865
  store i32 0, i32* %7, align 4, !dbg !3865
  br label %8, !dbg !3866

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %6, align 4, !dbg !3867
  %10 = add nsw i32 %9, -1, !dbg !3867
  store i32 %10, i32* %6, align 4, !dbg !3867
  %11 = icmp ne i32 %9, 0, !dbg !3866
  br i1 %11, label %12, label %18, !dbg !3866

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8, !dbg !3868
  %14 = load i32, i32* %5, align 4, !dbg !3869
  %15 = call i32 @bkm_scale(i64* noundef %13, i32 noundef %14), !dbg !3870
  %16 = load i32, i32* %7, align 4, !dbg !3871
  %17 = or i32 %16, %15, !dbg !3871
  store i32 %17, i32* %7, align 4, !dbg !3871
  br label %8, !dbg !3866, !llvm.loop !3872

18:                                               ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !3874
  ret i32 %19, !dbg !3875
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3876 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3882, metadata !DIExpression()), !dbg !3883
  %3 = load i32, i32* %2, align 4, !dbg !3884
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3885
  ret i32 %4, !dbg !3886
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3887 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3924, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3926, metadata !DIExpression()), !dbg !3928
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3929
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3930
  %9 = icmp ne i64 %8, 0, !dbg !3931
  %10 = zext i1 %9 to i8, !dbg !3928
  store i8 %10, i8* %4, align 1, !dbg !3928
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3932, metadata !DIExpression()), !dbg !3933
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3934
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3934
  %13 = icmp ne i32 %12, 0, !dbg !3935
  %14 = zext i1 %13 to i8, !dbg !3933
  store i8 %14, i8* %5, align 1, !dbg !3933
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3936, metadata !DIExpression()), !dbg !3937
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3938
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3939
  %17 = icmp ne i32 %16, 0, !dbg !3940
  %18 = zext i1 %17 to i8, !dbg !3937
  store i8 %18, i8* %6, align 1, !dbg !3937
  %19 = load i8, i8* %5, align 1, !dbg !3941
  %20 = trunc i8 %19 to i1, !dbg !3941
  br i1 %20, label %31, label %21, !dbg !3943

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3944
  %23 = trunc i8 %22 to i1, !dbg !3944
  br i1 %23, label %24, label %37, !dbg !3945

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3946
  %26 = trunc i8 %25 to i1, !dbg !3946
  br i1 %26, label %31, label %27, !dbg !3947

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3948
  %29 = load i32, i32* %28, align 4, !dbg !3948
  %30 = icmp ne i32 %29, 9, !dbg !3949
  br i1 %30, label %31, label %37, !dbg !3950

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3951
  %33 = trunc i8 %32 to i1, !dbg !3951
  br i1 %33, label %36, label %34, !dbg !3954

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3955
  store i32 0, i32* %35, align 4, !dbg !3956
  br label %36, !dbg !3955

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3957
  br label %38, !dbg !3957

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3958
  br label %38, !dbg !3958

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3959
  ret i32 %39, !dbg !3959
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3960 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3997, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3999, metadata !DIExpression()), !dbg !4000
  store i32 0, i32* %4, align 4, !dbg !4000
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4001, metadata !DIExpression()), !dbg !4002
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4003
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !4004
  store i32 %8, i32* %5, align 4, !dbg !4002
  %9 = load i32, i32* %5, align 4, !dbg !4005
  %10 = icmp slt i32 %9, 0, !dbg !4007
  br i1 %10, label %11, label %14, !dbg !4008

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4009
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !4010
  store i32 %13, i32* %2, align 4, !dbg !4011
  br label %40, !dbg !4011

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4012
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !4012
  %17 = icmp ne i32 %16, 0, !dbg !4012
  br i1 %17, label %18, label %23, !dbg !4014

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4015
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !4016
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !4017
  %22 = icmp ne i64 %21, -1, !dbg !4018
  br i1 %22, label %23, label %30, !dbg !4019

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4020
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !4021
  %26 = icmp ne i32 %25, 0, !dbg !4021
  br i1 %26, label %27, label %30, !dbg !4022

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !4023
  %29 = load i32, i32* %28, align 4, !dbg !4023
  store i32 %29, i32* %4, align 4, !dbg !4024
  br label %30, !dbg !4025

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4026, metadata !DIExpression()), !dbg !4027
  store i32 0, i32* %6, align 4, !dbg !4027
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4028
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !4029
  store i32 %32, i32* %6, align 4, !dbg !4030
  %33 = load i32, i32* %4, align 4, !dbg !4031
  %34 = icmp ne i32 %33, 0, !dbg !4033
  br i1 %34, label %35, label %38, !dbg !4034

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4035
  %37 = call i32* @__errno_location() #21, !dbg !4037
  store i32 %36, i32* %37, align 4, !dbg !4038
  store i32 -1, i32* %6, align 4, !dbg !4039
  br label %38, !dbg !4040

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4041
  store i32 %39, i32* %2, align 4, !dbg !4042
  br label %40, !dbg !4042

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4043
  ret i32 %41, !dbg !4043
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !4044 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4081, metadata !DIExpression()), !dbg !4082
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4083
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4085
  br i1 %5, label %10, label %6, !dbg !4086

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4087
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !4087
  %9 = icmp ne i32 %8, 0, !dbg !4087
  br i1 %9, label %13, label %10, !dbg !4088

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4089
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !4090
  store i32 %12, i32* %2, align 4, !dbg !4091
  br label %17, !dbg !4091

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4092
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !4093
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4094
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !4095
  store i32 %16, i32* %2, align 4, !dbg !4096
  br label %17, !dbg !4096

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4097
  ret i32 %18, !dbg !4097
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !4098 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4101, metadata !DIExpression()), !dbg !4102
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4103
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4105
  %5 = load i32, i32* %4, align 8, !dbg !4105
  %6 = and i32 %5, 256, !dbg !4106
  %7 = icmp ne i32 %6, 0, !dbg !4106
  br i1 %7, label %8, label %11, !dbg !4107

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4108
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4109
  br label %11, !dbg !4109

11:                                               ; preds = %8, %1
  ret void, !dbg !4110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4111 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4149, metadata !DIExpression()), !dbg !4150
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4151, metadata !DIExpression()), !dbg !4152
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4153, metadata !DIExpression()), !dbg !4154
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4155
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4157
  %11 = load i8*, i8** %10, align 8, !dbg !4157
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4158
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4159
  %14 = load i8*, i8** %13, align 8, !dbg !4159
  %15 = icmp eq i8* %11, %14, !dbg !4160
  br i1 %15, label %16, label %46, !dbg !4161

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4162
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4163
  %19 = load i8*, i8** %18, align 8, !dbg !4163
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4164
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4165
  %22 = load i8*, i8** %21, align 8, !dbg !4165
  %23 = icmp eq i8* %19, %22, !dbg !4166
  br i1 %23, label %24, label %46, !dbg !4167

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4168
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4169
  %27 = load i8*, i8** %26, align 8, !dbg !4169
  %28 = icmp eq i8* %27, null, !dbg !4170
  br i1 %28, label %29, label %46, !dbg !4171

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4172, metadata !DIExpression()), !dbg !4174
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4175
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !4176
  %32 = load i64, i64* %6, align 8, !dbg !4177
  %33 = load i32, i32* %7, align 4, !dbg !4178
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !4179
  store i64 %34, i64* %8, align 8, !dbg !4174
  %35 = load i64, i64* %8, align 8, !dbg !4180
  %36 = icmp eq i64 %35, -1, !dbg !4182
  br i1 %36, label %37, label %38, !dbg !4183

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4184
  br label %51, !dbg !4184

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4186
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4187
  %41 = load i32, i32* %40, align 8, !dbg !4188
  %42 = and i32 %41, -17, !dbg !4188
  store i32 %42, i32* %40, align 8, !dbg !4188
  %43 = load i64, i64* %8, align 8, !dbg !4189
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4190
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4191
  store i64 %43, i64* %45, align 8, !dbg !4192
  store i32 0, i32* %4, align 4, !dbg !4193
  br label %51, !dbg !4193

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4194
  %48 = load i64, i64* %6, align 8, !dbg !4195
  %49 = load i32, i32* %7, align 4, !dbg !4196
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4197
  store i32 %50, i32* %4, align 4, !dbg !4198
  br label %51, !dbg !4198

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4199
  ret i32 %52, !dbg !4199
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !4200 {
  %1 = call i32* @__errno_location() #21, !dbg !4203
  store i32 12, i32* %1, align 4, !dbg !4204
  ret i8* null, !dbg !4205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4206 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4207, metadata !DIExpression()), !dbg !4208
  %3 = load i64, i64* %2, align 8, !dbg !4209
  %4 = icmp ule i64 %3, -1, !dbg !4210
  br i1 %4, label %5, label %8, !dbg !4209

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4211
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !4212
  br label %10, !dbg !4209

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !4213
  br label %10, !dbg !4209

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4209
  ret i8* %11, !dbg !4214
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4215 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4216, metadata !DIExpression()), !dbg !4217
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4218, metadata !DIExpression()), !dbg !4219
  %5 = load i64, i64* %4, align 8, !dbg !4220
  %6 = icmp ule i64 %5, -1, !dbg !4221
  br i1 %6, label %7, label %11, !dbg !4220

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4222
  %9 = load i64, i64* %4, align 8, !dbg !4223
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4224
  br label %13, !dbg !4220

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4225
  br label %13, !dbg !4220

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4220
  ret i8* %14, !dbg !4226
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4227 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4228, metadata !DIExpression()), !dbg !4229
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4230, metadata !DIExpression()), !dbg !4231
  %6 = load i64, i64* %4, align 8, !dbg !4232
  %7 = icmp ult i64 -1, %6, !dbg !4234
  br i1 %7, label %8, label %14, !dbg !4235

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4236
  %10 = icmp ne i64 %9, 0, !dbg !4239
  br i1 %10, label %11, label %13, !dbg !4240

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4241
  store i8* %12, i8** %3, align 8, !dbg !4242
  br label %27, !dbg !4242

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4243
  br label %14, !dbg !4244

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4245
  %16 = icmp ult i64 -1, %15, !dbg !4247
  br i1 %16, label %17, label %23, !dbg !4248

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4249
  %19 = icmp ne i64 %18, 0, !dbg !4252
  br i1 %19, label %20, label %22, !dbg !4253

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !4254
  store i8* %21, i8** %3, align 8, !dbg !4255
  br label %27, !dbg !4255

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4256
  br label %23, !dbg !4257

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4258
  %25 = load i64, i64* %5, align 8, !dbg !4259
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !4260
  store i8* %26, i8** %3, align 8, !dbg !4261
  br label %27, !dbg !4261

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4262
  ret i8* %28, !dbg !4262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4263 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4264, metadata !DIExpression()), !dbg !4265
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4266, metadata !DIExpression()), !dbg !4267
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4268, metadata !DIExpression()), !dbg !4269
  %7 = load i64, i64* %5, align 8, !dbg !4270
  %8 = icmp ule i64 %7, -1, !dbg !4271
  br i1 %8, label %9, label %17, !dbg !4272

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4273
  %11 = icmp ule i64 %10, -1, !dbg !4274
  br i1 %11, label %12, label %17, !dbg !4270

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4275
  %14 = load i64, i64* %5, align 8, !dbg !4276
  %15 = load i64, i64* %6, align 8, !dbg !4277
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4278
  br label %19, !dbg !4270

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !4279
  br label %19, !dbg !4270

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4270
  ret i8* %20, !dbg !4280
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4281 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4286, metadata !DIExpression()), !dbg !4287
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4288, metadata !DIExpression()), !dbg !4289
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4290, metadata !DIExpression()), !dbg !4291
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4292, metadata !DIExpression()), !dbg !4293
  %11 = load i8*, i8** %7, align 8, !dbg !4294
  %12 = icmp eq i8* %11, null, !dbg !4296
  br i1 %12, label %13, label %14, !dbg !4297

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4298
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), i8** %7, align 8, !dbg !4300
  store i64 1, i64* %8, align 8, !dbg !4301
  br label %14, !dbg !4302

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4303
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4305
  br i1 %16, label %17, label %18, !dbg !4306

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4307
  br label %18, !dbg !4308

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4309, metadata !DIExpression()), !dbg !4310
  %19 = load i32*, i32** %6, align 8, !dbg !4311
  %20 = load i8*, i8** %7, align 8, !dbg !4312
  %21 = load i64, i64* %8, align 8, !dbg !4313
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4314
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !4315
  store i64 %23, i64* %10, align 8, !dbg !4310
  %24 = load i64, i64* %10, align 8, !dbg !4316
  %25 = icmp ult i64 %24, -3, !dbg !4318
  br i1 %25, label %26, label %32, !dbg !4319

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4320
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !4321
  %29 = icmp ne i32 %28, 0, !dbg !4321
  br i1 %29, label %32, label %30, !dbg !4322

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4323
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4324
  br label %32, !dbg !4324

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4325
  %34 = icmp eq i64 %33, -3, !dbg !4327
  br i1 %34, label %35, label %36, !dbg !4328

35:                                               ; preds = %32
  call void @abort() #19, !dbg !4329
  unreachable, !dbg !4329

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4330
  %38 = icmp ule i64 -2, %37, !dbg !4332
  br i1 %38, label %39, label %53, !dbg !4333

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4334
  %41 = icmp ne i64 %40, 0, !dbg !4335
  br i1 %41, label %42, label %53, !dbg !4336

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4337
  br i1 %43, label %53, label %44, !dbg !4338

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4339
  %46 = icmp ne i32* %45, null, !dbg !4342
  br i1 %46, label %47, label %52, !dbg !4343

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4344
  %49 = load i8, i8* %48, align 1, !dbg !4345
  %50 = zext i8 %49 to i32, !dbg !4346
  %51 = load i32*, i32** %6, align 8, !dbg !4347
  store i32 %50, i32* %51, align 4, !dbg !4348
  br label %52, !dbg !4349

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4350
  br label %55, !dbg !4350

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4351
  store i64 %54, i64* %5, align 8, !dbg !4352
  br label %55, !dbg !4352

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4353
  ret i64 %56, !dbg !4353
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4354 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4369, metadata !DIExpression()), !dbg !4370
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4371
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4372
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4372
  ret void, !dbg !4373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4374 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4377, metadata !DIExpression()), !dbg !4378
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4379, metadata !DIExpression()), !dbg !4380
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4381, metadata !DIExpression()), !dbg !4382
  %7 = load i8*, i8** %4, align 8, !dbg !4383
  %8 = load i8*, i8** %5, align 8, !dbg !4384
  %9 = load i64, i64* %6, align 8, !dbg !4385
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !4386
  %11 = icmp ne i32 %10, 0, !dbg !4387
  %12 = xor i1 %11, true, !dbg !4387
  ret i1 %12, !dbg !4388
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4389 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4391, metadata !DIExpression()), !dbg !4392
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4393, metadata !DIExpression()), !dbg !4394
  %5 = load i8*, i8** %3, align 8, !dbg !4395
  %6 = load i64, i64* %4, align 8, !dbg !4396
  %7 = icmp ne i64 %6, 0, !dbg !4396
  br i1 %7, label %8, label %10, !dbg !4396

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4397
  br label %11, !dbg !4396

10:                                               ; preds = %2
  br label %11, !dbg !4396

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4396
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !4398
  ret i8* %13, !dbg !4399
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4400 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4401, metadata !DIExpression()), !dbg !4402
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4403, metadata !DIExpression()), !dbg !4404
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4405, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4407, metadata !DIExpression()), !dbg !4408
  %9 = load i64, i64* %7, align 8, !dbg !4409
  %10 = icmp ult i64 %9, 0, !dbg !4409
  br i1 %10, label %11, label %60, !dbg !4409

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4409
  %13 = icmp ult i64 %12, 0, !dbg !4409
  br i1 %13, label %14, label %37, !dbg !4409

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4409

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4409
  %17 = load i64, i64* %7, align 8, !dbg !4409
  %18 = udiv i64 -1, %17, !dbg !4409
  %19 = icmp ult i64 %16, %18, !dbg !4409
  br i1 %19, label %92, label %96, !dbg !4409

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4409

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4409
  %23 = icmp ult i64 %22, 1, !dbg !4409
  br i1 %23, label %27, label %28, !dbg !4409

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4409
  %26 = icmp ult i64 0, %25, !dbg !4409
  br i1 %26, label %27, label %28, !dbg !4409

27:                                               ; preds = %24, %21
  br label %32, !dbg !4409

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4409
  %30 = sub i64 0, %29, !dbg !4409
  %31 = udiv i64 -1, %30, !dbg !4409
  br label %32, !dbg !4409

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4409
  %34 = load i64, i64* %6, align 8, !dbg !4409
  %35 = sub i64 -1, %34, !dbg !4409
  %36 = icmp ule i64 %33, %35, !dbg !4409
  br i1 %36, label %92, label %96, !dbg !4409

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4409

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4409

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4409

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4409
  %42 = icmp eq i64 %41, -1, !dbg !4409
  br i1 %42, label %43, label %55, !dbg !4409

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4409

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4409
  %46 = add i64 %45, 0, !dbg !4409
  %47 = icmp ult i64 0, %46, !dbg !4409
  br i1 %47, label %92, label %96, !dbg !4409

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4409
  %50 = icmp ult i64 0, %49, !dbg !4409
  br i1 %50, label %51, label %96, !dbg !4409

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4409
  %53 = sub i64 %52, 1, !dbg !4409
  %54 = icmp ult i64 -1, %53, !dbg !4409
  br i1 %54, label %92, label %96, !dbg !4409

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4409
  %57 = udiv i64 0, %56, !dbg !4409
  %58 = load i64, i64* %6, align 8, !dbg !4409
  %59 = icmp ult i64 %57, %58, !dbg !4409
  br i1 %59, label %92, label %96, !dbg !4409

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4409
  %62 = icmp eq i64 %61, 0, !dbg !4409
  br i1 %62, label %63, label %64, !dbg !4409

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4409

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4409
  %66 = icmp ult i64 %65, 0, !dbg !4409
  br i1 %66, label %67, label %87, !dbg !4409

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4409

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4409

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4409

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4409
  %72 = icmp eq i64 %71, -1, !dbg !4409
  br i1 %72, label %73, label %82, !dbg !4409

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4409

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4409
  %76 = add i64 %75, 0, !dbg !4409
  %77 = icmp ult i64 0, %76, !dbg !4409
  br i1 %77, label %92, label %96, !dbg !4409

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4409
  %80 = sub i64 %79, 1, !dbg !4409
  %81 = icmp ult i64 -1, %80, !dbg !4409
  br i1 %81, label %92, label %96, !dbg !4409

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4409
  %84 = udiv i64 0, %83, !dbg !4409
  %85 = load i64, i64* %7, align 8, !dbg !4409
  %86 = icmp ult i64 %84, %85, !dbg !4409
  br i1 %86, label %92, label %96, !dbg !4409

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4409
  %89 = udiv i64 -1, %88, !dbg !4409
  %90 = load i64, i64* %6, align 8, !dbg !4409
  %91 = icmp ult i64 %89, %90, !dbg !4409
  br i1 %91, label %92, label %96, !dbg !4409

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4409
  %94 = load i64, i64* %7, align 8, !dbg !4409
  %95 = mul i64 %93, %94, !dbg !4409
  store i64 %95, i64* %8, align 8, !dbg !4409
  br label %100, !dbg !4409

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4409
  %98 = load i64, i64* %7, align 8, !dbg !4409
  %99 = mul i64 %97, %98, !dbg !4409
  store i64 %99, i64* %8, align 8, !dbg !4409
  br label %100, !dbg !4409

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4409
  %102 = icmp ne i32 %101, 0, !dbg !4409
  br i1 %102, label %103, label %105, !dbg !4411

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4412
  store i32 12, i32* %104, align 4, !dbg !4414
  store i8* null, i8** %4, align 8, !dbg !4415
  br label %109, !dbg !4415

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4416
  %107 = load i64, i64* %8, align 8, !dbg !4417
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4418
  store i8* %108, i8** %4, align 8, !dbg !4419
  br label %109, !dbg !4419

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4420
  ret i8* %110, !dbg !4420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4421 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4424, metadata !DIExpression()), !dbg !4428
  %5 = load i32, i32* %3, align 4, !dbg !4429
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4431
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4432
  %8 = icmp ne i32 %7, 0, !dbg !4432
  br i1 %8, label %9, label %10, !dbg !4433

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4434
  br label %18, !dbg !4434

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4435
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.184, i64 0, i64 0)), !dbg !4437
  br i1 %12, label %17, label %13, !dbg !4438

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4439
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.185, i64 0, i64 0)), !dbg !4440
  br i1 %15, label %17, label %16, !dbg !4441

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4442
  br label %18, !dbg !4442

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4443
  br label %18, !dbg !4443

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4444
  ret i1 %19, !dbg !4444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4445 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4448, metadata !DIExpression()), !dbg !4449
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4450, metadata !DIExpression()), !dbg !4451
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4452, metadata !DIExpression()), !dbg !4453
  %7 = load i32, i32* %4, align 4, !dbg !4454
  %8 = load i8*, i8** %5, align 8, !dbg !4455
  %9 = load i64, i64* %6, align 8, !dbg !4456
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4457
  ret i32 %10, !dbg !4458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4459 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4462, metadata !DIExpression()), !dbg !4463
  %3 = load i32, i32* %2, align 4, !dbg !4464
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4465
  ret i8* %4, !dbg !4466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4467 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4468, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4470, metadata !DIExpression()), !dbg !4471
  %4 = load i32, i32* %2, align 4, !dbg !4472
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4473
  store i8* %5, i8** %3, align 8, !dbg !4471
  %6 = load i8*, i8** %3, align 8, !dbg !4474
  ret i8* %6, !dbg !4475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4476 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4477, metadata !DIExpression()), !dbg !4478
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4479, metadata !DIExpression()), !dbg !4480
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4483, metadata !DIExpression()), !dbg !4484
  %10 = load i32, i32* %5, align 4, !dbg !4485
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4486
  store i8* %11, i8** %8, align 8, !dbg !4484
  %12 = load i8*, i8** %8, align 8, !dbg !4487
  %13 = icmp eq i8* %12, null, !dbg !4489
  br i1 %13, label %14, label %21, !dbg !4490

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4491
  %16 = icmp ugt i64 %15, 0, !dbg !4494
  br i1 %16, label %17, label %20, !dbg !4495

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4496
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4496
  store i8 0, i8* %19, align 1, !dbg !4497
  br label %20, !dbg !4496

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4498
  br label %45, !dbg !4498

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4499, metadata !DIExpression()), !dbg !4501
  %22 = load i8*, i8** %8, align 8, !dbg !4502
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4503
  store i64 %23, i64* %9, align 8, !dbg !4501
  %24 = load i64, i64* %9, align 8, !dbg !4504
  %25 = load i64, i64* %7, align 8, !dbg !4506
  %26 = icmp ult i64 %24, %25, !dbg !4507
  br i1 %26, label %27, label %32, !dbg !4508

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4509
  %29 = load i8*, i8** %8, align 8, !dbg !4511
  %30 = load i64, i64* %9, align 8, !dbg !4512
  %31 = add i64 %30, 1, !dbg !4513
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4514
  store i32 0, i32* %4, align 4, !dbg !4515
  br label %45, !dbg !4515

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4516
  %34 = icmp ugt i64 %33, 0, !dbg !4519
  br i1 %34, label %35, label %44, !dbg !4520

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4521
  %37 = load i8*, i8** %8, align 8, !dbg !4523
  %38 = load i64, i64* %7, align 8, !dbg !4524
  %39 = sub i64 %38, 1, !dbg !4525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4526
  %40 = load i8*, i8** %6, align 8, !dbg !4527
  %41 = load i64, i64* %7, align 8, !dbg !4528
  %42 = sub i64 %41, 1, !dbg !4529
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4527
  store i8 0, i8* %43, align 1, !dbg !4530
  br label %44, !dbg !4531

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4532
  br label %45, !dbg !4532

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4533
  ret i32 %46, !dbg !4533
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

!llvm.dbg.cu = !{!2, !79, !251, !84, !92, !227, !253, !126, !136, !143, !255, !257, !219, !263, !283, !285, !289, !291, !293, !295, !297, !299, !233, !301, !303, !305, !307, !310, !312, !314}
!llvm.ident = !{!316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316, !316}
!llvm.module.flags = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 57, type: !65, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !54, globals: !57, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/nice.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bb63d6c4d157649b1559df44069c2e07")
!4 = !{!5, !13, !21, !33, !39}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 90, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !14, line: 30, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!17 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!18 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!19 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!20 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !22, file: !3, line: 177, baseType: !25, size: 32, elements: !30)
!22 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 102, type: !23, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !29)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !25, !26}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !{}
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "MIN_ADJUSTMENT", value: -39)
!32 = !DIEnumerator(name: "MAX_ADJUSTMENT", value: 39)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__priority_which", file: !34, line: 187, baseType: !7, size: 32, elements: !35)
!34 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "bb0bdc9e7ae341ef435e98e05276a863")
!35 = !{!36, !37, !38}
!36 = !DIEnumerator(name: "PRIO_PROCESS", value: 0)
!37 = !DIEnumerator(name: "PRIO_PGRP", value: 1)
!38 = !DIEnumerator(name: "PRIO_USER", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 46, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!42 = !DIEnumerator(name: "_ISupper", value: 256)
!43 = !DIEnumerator(name: "_ISlower", value: 512)
!44 = !DIEnumerator(name: "_ISalpha", value: 1024)
!45 = !DIEnumerator(name: "_ISdigit", value: 2048)
!46 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!47 = !DIEnumerator(name: "_ISspace", value: 8192)
!48 = !DIEnumerator(name: "_ISprint", value: 16384)
!49 = !DIEnumerator(name: "_ISgraph", value: 32768)
!50 = !DIEnumerator(name: "_ISblank", value: 1)
!51 = !DIEnumerator(name: "_IScntrl", value: 2)
!52 = !DIEnumerator(name: "_ISpunct", value: 4)
!53 = !DIEnumerator(name: "_ISalnum", value: 8)
!54 = !{!27, !55, !25, !56}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !{!58, !0}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !60, file: !6, line: 575, type: !25, isLocal: true, isDefinition: true)
!60 = distinct !DISubprogram(name: "oputs_", scope: !6, file: !6, line: 573, type: !61, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !29)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 1024, elements: !75)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !68, line: 50, size: 256, elements: !69)
!68 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!69 = !{!70, !71, !72, !74}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !68, line: 52, baseType: !63, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !67, file: !68, line: 55, baseType: !25, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !67, file: !68, line: 56, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !67, file: !68, line: 57, baseType: !25, size: 32, offset: 192)
!75 = !{!76}
!76 = !DISubrange(count: 4)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "Version", scope: !79, file: !80, line: 3, type: !63, isLocal: false, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !81, splitDebugInlining: false, nameTableKind: None)
!80 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!81 = !{!77}
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "file_name", scope: !84, file: !85, line: 45, type: !63, isLocal: true, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !86, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!86 = !{!82, !87}
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !84, file: !85, line: 55, type: !89, isLocal: true, isDefinition: true)
!89 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !92, file: !93, line: 66, type: !121, isLocal: false, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !94, globals: !95, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!94 = !{!55}
!95 = !{!96, !115, !90, !117, !119}
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "old_file_name", scope: !98, file: !93, line: 304, type: !63, isLocal: true, isDefinition: true)
!98 = distinct !DISubprogram(name: "verror_at_line", scope: !93, file: !93, line: 298, type: !99, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !29)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !25, !25, !63, !7, !63, !101}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !102, line: 52, baseType: !103)
!102 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !104, line: 32, baseType: !105)
!104 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !106, baseType: !107)
!106 = !DIFile(filename: "lib/error.c", directory: "/src")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !108, size: 256, elements: !109)
!108 = !DINamespace(name: "std", scope: null)
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !107, file: !106, baseType: !55, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !107, file: !106, baseType: !55, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !107, file: !106, baseType: !55, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !107, file: !106, baseType: !25, size: 32, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !107, file: !106, baseType: !25, size: 32, offset: 224)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "old_line_number", scope: !98, file: !93, line: 305, type: !7, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "error_message_count", scope: !92, file: !93, line: 69, type: !7, isLocal: false, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !92, file: !93, line: 295, type: !25, isLocal: false, isDefinition: true)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null}
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "program_name", scope: !126, file: !127, line: 31, type: !63, isLocal: false, isDefinition: true)
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !128, globals: !129, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!128 = !{!27}
!129 = !{!124}
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "utf07FF", scope: !132, file: !133, line: 46, type: !138, isLocal: true, isDefinition: true)
!132 = distinct !DISubprogram(name: "proper_name_lite", scope: !133, file: !133, line: 38, type: !134, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !136, retainedNodes: !29)
!133 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!134 = !DISubroutineType(types: !135)
!135 = !{!63, !63, !63}
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !137, splitDebugInlining: false, nameTableKind: None)
!137 = !{!130}
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 16, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 2)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !143, file: !144, line: 76, type: !213, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !165, globals: !169, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!145 = !{!146, !160, !39}
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !147, line: 42, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!149 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!150 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!151 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!152 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!153 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!154 = !DIEnumerator(name: "c_quoting_style", value: 5)
!155 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!156 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!157 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!158 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!159 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !147, line: 254, baseType: !7, size: 32, elements: !161)
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!163 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!164 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!165 = !{!25, !56, !166}
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 46, baseType: !168)
!167 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!168 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!169 = !{!141, !170, !176, !188, !190, !195, !202, !209, !211}
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !143, file: !144, line: 92, type: !172, isLocal: false, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 320, elements: !174)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!174 = !{!175}
!175 = !DISubrange(count: 10)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !143, file: !144, line: 1040, type: !178, isLocal: false, isDefinition: true)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !144, line: 56, size: 448, elements: !179)
!179 = !{!180, !181, !182, !186, !187}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !178, file: !144, line: 59, baseType: !146, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !178, file: !144, line: 62, baseType: !25, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !178, file: !144, line: 66, baseType: !183, size: 256, offset: 64)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !178, file: !144, line: 69, baseType: !63, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !178, file: !144, line: 72, baseType: !63, size: 64, offset: 384)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !143, file: !144, line: 107, type: !178, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "slot0", scope: !143, file: !144, line: 831, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 256)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "quote", scope: !197, file: !144, line: 228, type: !200, isLocal: true, isDefinition: true)
!197 = distinct !DISubprogram(name: "gettext_quote", scope: !144, file: !144, line: 197, type: !198, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !143, retainedNodes: !29)
!198 = !DISubroutineType(types: !199)
!199 = !{!63, !63, !146}
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !201)
!201 = !{!140, !76}
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "slotvec", scope: !143, file: !144, line: 834, type: !204, isLocal: true, isDefinition: true)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !144, line: 823, size: 128, elements: !206)
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !205, file: !144, line: 825, baseType: !166, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !205, file: !144, line: 826, baseType: !27, size: 64, offset: 64)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "nslots", scope: !143, file: !144, line: 832, type: !25, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "slotvec0", scope: !143, file: !144, line: 833, type: !205, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 704, elements: !215)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!215 = !{!216}
!216 = !DISubrange(count: 11)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !219, file: !220, line: 26, type: !222, isLocal: false, isDefinition: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !221, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!221 = !{!217}
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 376, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 47)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "exit_failure", scope: !227, file: !228, line: 24, type: !230, isLocal: false, isDefinition: true)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !229, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!229 = !{!225}
!230 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "internal_state", scope: !233, file: !234, line: 97, type: !238, isLocal: true, isDefinition: true)
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !235, globals: !237, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!235 = !{!55, !166, !236}
!236 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!237 = !{!231}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !239, line: 6, baseType: !240)
!239 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !241, line: 21, baseType: !242)
!241 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 13, size: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !242, file: !241, line: 15, baseType: !25, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !242, file: !241, line: 20, baseType: !246, size: 32, offset: 32)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !241, line: 16, size: 32, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !246, file: !241, line: 18, baseType: !7, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !246, file: !241, line: 19, baseType: !250, size: 32)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !75)
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!252 = !DIFile(filename: "lib/c-ctype.c", directory: "/src", checksumkind: CSK_MD5, checksum: "245df19f202f37bba31cfa46647ceb93")
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !259, retainedTypes: !94, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!259 = !{!260}
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !258, line: 40, baseType: !7, size: 32, elements: !261)
!261 = !{!262}
!262 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !265, retainedTypes: !282, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!265 = !{!266, !273}
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !267, file: !264, line: 188, baseType: !7, size: 32, elements: !271)
!267 = distinct !DISubprogram(name: "x2nrealloc", scope: !264, file: !264, line: 176, type: !268, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!268 = !DISubroutineType(types: !269)
!269 = !{!55, !55, !270, !166}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!271 = !{!272}
!272 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !274, file: !264, line: 228, baseType: !7, size: 32, elements: !271)
!274 = distinct !DISubprogram(name: "xpalloc", scope: !264, file: !264, line: 223, type: !275, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!275 = !DISubroutineType(types: !276)
!276 = !{!55, !55, !277, !278, !280, !278}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !279, line: 130, baseType: !280)
!279 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !167, line: 35, baseType: !281)
!281 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!282 = !{!27, !55, !89, !281, !168}
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !287, retainedTypes: !288, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!287 = !{!13}
!288 = !{!89, !281, !168}
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!290 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !94, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !94, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !94, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!302 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!303 = distinct !DICompileUnit(language: DW_LANG_C99, file: !304, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!304 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!306 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !309, splitDebugInlining: false, nameTableKind: None)
!308 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!309 = !{!89, !168, !55}
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!311 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !94, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!316 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!317 = !{i32 7, !"Dwarf Version", i32 5}
!318 = !{i32 2, !"Debug Info Version", i32 3}
!319 = !{i32 1, !"wchar_size", i32 4}
!320 = !{i32 1, !"branch-target-enforcement", i32 0}
!321 = !{i32 1, !"sign-return-address", i32 0}
!322 = !{i32 1, !"sign-return-address-all", i32 0}
!323 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!324 = !{i32 7, !"PIC Level", i32 2}
!325 = !{i32 7, !"PIE Level", i32 2}
!326 = !{i32 7, !"uwtable", i32 1}
!327 = !{i32 7, !"frame-pointer", i32 1}
!328 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 66, type: !329, scopeLine: 67, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !29)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !25}
!331 = !DILocalVariable(name: "status", arg: 1, scope: !328, file: !3, line: 66, type: !25)
!332 = !DILocation(line: 66, column: 12, scope: !328)
!333 = !DILocation(line: 68, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !3, line: 68, column: 7)
!335 = !DILocation(line: 68, column: 14, scope: !334)
!336 = !DILocation(line: 68, column: 7, scope: !328)
!337 = !DILocation(line: 69, column: 5, scope: !334)
!338 = !DILocation(line: 69, column: 5, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 69, column: 5)
!340 = !DILocation(line: 72, column: 15, scope: !341)
!341 = distinct !DILexicalBlock(scope: !334, file: !3, line: 71, column: 5)
!342 = !DILocation(line: 72, column: 61, scope: !341)
!343 = !DILocation(line: 72, column: 7, scope: !341)
!344 = !DILocation(line: 73, column: 15, scope: !341)
!345 = !DILocation(line: 73, column: 7, scope: !341)
!346 = !DILocation(line: 80, column: 7, scope: !341)
!347 = !DILocation(line: 82, column: 7, scope: !341)
!348 = !DILocation(line: 86, column: 7, scope: !341)
!349 = !DILocation(line: 87, column: 7, scope: !341)
!350 = !DILocation(line: 88, column: 15, scope: !341)
!351 = !DILocation(line: 88, column: 7, scope: !341)
!352 = !DILocation(line: 89, column: 7, scope: !341)
!353 = !DILocation(line: 90, column: 7, scope: !341)
!354 = !DILocation(line: 92, column: 9, scope: !328)
!355 = !DILocation(line: 92, column: 3, scope: !328)
!356 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 734, type: !122, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !29)
!357 = !DILocation(line: 736, column: 3, scope: !356)
!358 = !DILocation(line: 739, column: 1, scope: !356)
!359 = !DILocalVariable(name: "program", arg: 1, scope: !60, file: !6, line: 573, type: !63)
!360 = !DILocation(line: 573, column: 34, scope: !60)
!361 = !DILocalVariable(name: "option", arg: 2, scope: !60, file: !6, line: 573, type: !63)
!362 = !DILocation(line: 573, column: 55, scope: !60)
!363 = !DILocation(line: 581, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !60, file: !6, line: 581, column: 7)
!365 = !DILocation(line: 581, column: 19, scope: !364)
!366 = !DILocation(line: 581, column: 7, scope: !60)
!367 = !DILocalVariable(name: "term", scope: !368, file: !6, line: 585, type: !63)
!368 = distinct !DILexicalBlock(scope: !364, file: !6, line: 582, column: 5)
!369 = !DILocation(line: 585, column: 19, scope: !368)
!370 = !DILocation(line: 585, column: 26, scope: !368)
!371 = !DILocation(line: 586, column: 23, scope: !368)
!372 = !DILocation(line: 586, column: 28, scope: !368)
!373 = !DILocation(line: 586, column: 33, scope: !368)
!374 = !DILocation(line: 586, column: 32, scope: !368)
!375 = !DILocation(line: 586, column: 38, scope: !368)
!376 = !DILocation(line: 586, column: 48, scope: !368)
!377 = !DILocation(line: 586, column: 41, scope: !368)
!378 = !DILocation(line: 586, column: 19, scope: !368)
!379 = !DILocation(line: 587, column: 5, scope: !368)
!380 = !DILocation(line: 588, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !60, file: !6, line: 588, column: 7)
!382 = !DILocation(line: 588, column: 7, scope: !60)
!383 = !DILocation(line: 590, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !6, line: 589, column: 5)
!385 = !DILocation(line: 591, column: 7, scope: !384)
!386 = !DILocalVariable(name: "double_space", scope: !60, file: !6, line: 594, type: !89)
!387 = !DILocation(line: 594, column: 8, scope: !60)
!388 = !DILocalVariable(name: "first_word", scope: !60, file: !6, line: 595, type: !63)
!389 = !DILocation(line: 595, column: 15, scope: !60)
!390 = !DILocation(line: 595, column: 28, scope: !60)
!391 = !DILocation(line: 595, column: 45, scope: !60)
!392 = !DILocation(line: 595, column: 37, scope: !60)
!393 = !DILocation(line: 595, column: 35, scope: !60)
!394 = !DILocalVariable(name: "option_text", scope: !60, file: !6, line: 596, type: !63)
!395 = !DILocation(line: 596, column: 15, scope: !60)
!396 = !DILocation(line: 596, column: 37, scope: !60)
!397 = !DILocation(line: 596, column: 29, scope: !60)
!398 = !DILocation(line: 597, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !60, file: !6, line: 597, column: 7)
!400 = !DILocation(line: 597, column: 7, scope: !60)
!401 = !DILocation(line: 599, column: 21, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !6, line: 598, column: 5)
!403 = !DILocation(line: 599, column: 19, scope: !402)
!404 = !DILocation(line: 602, column: 20, scope: !402)
!405 = !DILocation(line: 603, column: 5, scope: !402)
!406 = !DILocation(line: 604, column: 12, scope: !407)
!407 = distinct !DILexicalBlock(scope: !399, file: !6, line: 604, column: 12)
!408 = !DILocation(line: 604, column: 27, scope: !407)
!409 = !DILocation(line: 604, column: 24, scope: !407)
!410 = !DILocation(line: 604, column: 12, scope: !399)
!411 = !DILocalVariable(name: "s", scope: !412, file: !6, line: 608, type: !63)
!412 = distinct !DILexicalBlock(scope: !407, file: !6, line: 605, column: 5)
!413 = !DILocation(line: 608, column: 19, scope: !412)
!414 = !DILocation(line: 608, column: 23, scope: !412)
!415 = !DILocalVariable(name: "spaces", scope: !412, file: !6, line: 609, type: !166)
!416 = !DILocation(line: 609, column: 14, scope: !412)
!417 = !DILocation(line: 610, column: 7, scope: !412)
!418 = !DILocation(line: 610, column: 14, scope: !412)
!419 = !DILocation(line: 610, column: 18, scope: !412)
!420 = !DILocation(line: 610, column: 16, scope: !412)
!421 = !DILocation(line: 610, column: 30, scope: !412)
!422 = !DILocation(line: 610, column: 33, scope: !412)
!423 = !DILocation(line: 610, column: 40, scope: !412)
!424 = !DILocation(line: 0, scope: !412)
!425 = !DILocation(line: 611, column: 21, scope: !412)
!426 = !DILocation(line: 611, column: 20, scope: !412)
!427 = !DILocation(line: 611, column: 19, scope: !412)
!428 = !DILocation(line: 611, column: 16, scope: !412)
!429 = distinct !{!429, !417, !425, !430}
!430 = !{!"llvm.loop.mustprogress"}
!431 = !DILocation(line: 612, column: 11, scope: !432)
!432 = distinct !DILexicalBlock(scope: !412, file: !6, line: 612, column: 11)
!433 = !DILocation(line: 612, column: 18, scope: !432)
!434 = !DILocation(line: 612, column: 11, scope: !412)
!435 = !DILocation(line: 615, column: 25, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !6, line: 613, column: 9)
!437 = !DILocation(line: 615, column: 23, scope: !436)
!438 = !DILocation(line: 616, column: 24, scope: !436)
!439 = !DILocation(line: 617, column: 9, scope: !436)
!440 = !DILocation(line: 618, column: 5, scope: !412)
!441 = !DILocalVariable(name: "anchor_len", scope: !60, file: !6, line: 620, type: !166)
!442 = !DILocation(line: 620, column: 10, scope: !60)
!443 = !DILocation(line: 620, column: 32, scope: !60)
!444 = !DILocation(line: 620, column: 23, scope: !60)
!445 = !DILocalVariable(name: "desc_text", scope: !60, file: !6, line: 625, type: !63)
!446 = !DILocation(line: 625, column: 15, scope: !60)
!447 = !DILocation(line: 625, column: 27, scope: !60)
!448 = !DILocation(line: 625, column: 41, scope: !60)
!449 = !DILocation(line: 625, column: 39, scope: !60)
!450 = !DILocation(line: 626, column: 3, scope: !60)
!451 = !DILocation(line: 626, column: 11, scope: !60)
!452 = !DILocation(line: 626, column: 10, scope: !60)
!453 = !DILocation(line: 626, column: 21, scope: !60)
!454 = !DILocation(line: 626, column: 25, scope: !60)
!455 = !DILocation(line: 626, column: 24, scope: !60)
!456 = !DILocation(line: 626, column: 35, scope: !60)
!457 = !DILocation(line: 0, scope: !60)
!458 = !DILocation(line: 628, column: 12, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !6, line: 628, column: 11)
!460 = distinct !DILexicalBlock(scope: !60, file: !6, line: 627, column: 5)
!461 = !DILocation(line: 628, column: 11, scope: !459)
!462 = !DILocation(line: 628, column: 22, scope: !459)
!463 = !DILocation(line: 628, column: 29, scope: !459)
!464 = !DILocation(line: 628, column: 34, scope: !459)
!465 = !DILocation(line: 628, column: 44, scope: !459)
!466 = !DILocation(line: 628, column: 32, scope: !459)
!467 = !DILocation(line: 628, column: 49, scope: !459)
!468 = !DILocation(line: 628, column: 11, scope: !460)
!469 = !DILocation(line: 629, column: 22, scope: !459)
!470 = !DILocation(line: 629, column: 9, scope: !459)
!471 = !DILocation(line: 630, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !460, file: !6, line: 630, column: 11)
!473 = !DILocation(line: 630, column: 11, scope: !460)
!474 = !DILocation(line: 632, column: 16, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !6, line: 632, column: 15)
!476 = distinct !DILexicalBlock(scope: !472, file: !6, line: 631, column: 9)
!477 = !DILocation(line: 632, column: 15, scope: !475)
!478 = !DILocation(line: 632, column: 26, scope: !475)
!479 = !DILocation(line: 632, column: 34, scope: !475)
!480 = !DILocation(line: 632, column: 37, scope: !475)
!481 = !DILocation(line: 632, column: 15, scope: !476)
!482 = !DILocation(line: 633, column: 13, scope: !475)
!483 = !DILocation(line: 636, column: 16, scope: !484)
!484 = distinct !DILexicalBlock(scope: !476, file: !6, line: 636, column: 15)
!485 = !DILocation(line: 636, column: 29, scope: !484)
!486 = !DILocation(line: 636, column: 34, scope: !484)
!487 = !DILocation(line: 636, column: 44, scope: !484)
!488 = !DILocation(line: 636, column: 32, scope: !484)
!489 = !DILocation(line: 636, column: 49, scope: !484)
!490 = !DILocation(line: 636, column: 15, scope: !476)
!491 = !DILocation(line: 637, column: 13, scope: !484)
!492 = !DILocation(line: 638, column: 9, scope: !476)
!493 = !DILocation(line: 640, column: 16, scope: !460)
!494 = distinct !{!494, !450, !495, !430}
!495 = !DILocation(line: 641, column: 5, scope: !60)
!496 = !DILocation(line: 644, column: 3, scope: !60)
!497 = !DILocalVariable(name: "url_program", scope: !60, file: !6, line: 648, type: !63)
!498 = !DILocation(line: 648, column: 15, scope: !60)
!499 = !DILocation(line: 648, column: 38, scope: !60)
!500 = !DILocation(line: 648, column: 31, scope: !60)
!501 = !DILocation(line: 649, column: 38, scope: !60)
!502 = !DILocation(line: 649, column: 31, scope: !60)
!503 = !DILocation(line: 650, column: 38, scope: !60)
!504 = !DILocation(line: 650, column: 31, scope: !60)
!505 = !DILocation(line: 651, column: 38, scope: !60)
!506 = !DILocation(line: 651, column: 31, scope: !60)
!507 = !DILocation(line: 652, column: 38, scope: !60)
!508 = !DILocation(line: 652, column: 31, scope: !60)
!509 = !DILocation(line: 653, column: 38, scope: !60)
!510 = !DILocation(line: 653, column: 31, scope: !60)
!511 = !DILocation(line: 654, column: 38, scope: !60)
!512 = !DILocation(line: 654, column: 31, scope: !60)
!513 = !DILocation(line: 655, column: 38, scope: !60)
!514 = !DILocation(line: 655, column: 31, scope: !60)
!515 = !DILocation(line: 656, column: 38, scope: !60)
!516 = !DILocation(line: 656, column: 31, scope: !60)
!517 = !DILocation(line: 657, column: 38, scope: !60)
!518 = !DILocation(line: 657, column: 31, scope: !60)
!519 = !DILocation(line: 658, column: 31, scope: !60)
!520 = !DILocation(line: 663, column: 7, scope: !521)
!521 = distinct !DILexicalBlock(scope: !60, file: !6, line: 663, column: 7)
!522 = !DILocation(line: 664, column: 7, scope: !521)
!523 = !DILocation(line: 664, column: 10, scope: !521)
!524 = !DILocation(line: 663, column: 7, scope: !60)
!525 = !DILocation(line: 670, column: 15, scope: !526)
!526 = distinct !DILexicalBlock(scope: !521, file: !6, line: 665, column: 5)
!527 = !DILocation(line: 670, column: 28, scope: !526)
!528 = !DILocation(line: 670, column: 47, scope: !526)
!529 = !DILocation(line: 670, column: 41, scope: !526)
!530 = !DILocation(line: 670, column: 59, scope: !526)
!531 = !DILocation(line: 669, column: 7, scope: !526)
!532 = !DILocation(line: 671, column: 5, scope: !526)
!533 = !DILocation(line: 676, column: 48, scope: !534)
!534 = distinct !DILexicalBlock(scope: !521, file: !6, line: 673, column: 5)
!535 = !DILocation(line: 677, column: 21, scope: !534)
!536 = !DILocation(line: 677, column: 15, scope: !534)
!537 = !DILocation(line: 677, column: 33, scope: !534)
!538 = !DILocation(line: 676, column: 7, scope: !534)
!539 = !DILocation(line: 679, column: 3, scope: !60)
!540 = !DILocation(line: 683, column: 3, scope: !60)
!541 = !DILocation(line: 686, column: 3, scope: !60)
!542 = !DILocation(line: 688, column: 3, scope: !60)
!543 = !DILocation(line: 691, column: 3, scope: !60)
!544 = !DILocation(line: 695, column: 3, scope: !60)
!545 = !DILocation(line: 696, column: 1, scope: !60)
!546 = distinct !DISubprogram(name: "emit_exec_status", scope: !6, file: !6, line: 824, type: !547, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !29)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !63}
!549 = !DILocalVariable(name: "program", arg: 1, scope: !546, file: !6, line: 824, type: !63)
!550 = !DILocation(line: 824, column: 31, scope: !546)
!551 = !DILocation(line: 826, column: 15, scope: !546)
!552 = !DILocation(line: 832, column: 5, scope: !546)
!553 = !DILocation(line: 826, column: 7, scope: !546)
!554 = !DILocation(line: 833, column: 1, scope: !546)
!555 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 836, type: !547, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !29)
!556 = !DILocalVariable(name: "program", arg: 1, scope: !555, file: !6, line: 836, type: !63)
!557 = !DILocation(line: 836, column: 34, scope: !555)
!558 = !DILocalVariable(name: "infomap", scope: !555, file: !6, line: 838, type: !559)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 896, elements: !565)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !555, file: !6, line: 838, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !561, file: !6, line: 838, baseType: !63, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !561, file: !6, line: 838, baseType: !63, size: 64, offset: 64)
!565 = !{!566}
!566 = !DISubrange(count: 7)
!567 = !DILocation(line: 838, column: 67, scope: !555)
!568 = !DILocalVariable(name: "node", scope: !555, file: !6, line: 848, type: !63)
!569 = !DILocation(line: 848, column: 15, scope: !555)
!570 = !DILocation(line: 848, column: 22, scope: !555)
!571 = !DILocalVariable(name: "map_prog", scope: !555, file: !6, line: 849, type: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!573 = !DILocation(line: 849, column: 25, scope: !555)
!574 = !DILocation(line: 849, column: 36, scope: !555)
!575 = !DILocation(line: 851, column: 3, scope: !555)
!576 = !DILocation(line: 851, column: 10, scope: !555)
!577 = !DILocation(line: 851, column: 20, scope: !555)
!578 = !DILocation(line: 851, column: 28, scope: !555)
!579 = !DILocation(line: 851, column: 40, scope: !555)
!580 = !DILocation(line: 851, column: 49, scope: !555)
!581 = !DILocation(line: 851, column: 59, scope: !555)
!582 = !DILocation(line: 851, column: 33, scope: !555)
!583 = !DILocation(line: 851, column: 31, scope: !555)
!584 = !DILocation(line: 0, scope: !555)
!585 = !DILocation(line: 852, column: 13, scope: !555)
!586 = distinct !{!586, !575, !585, !430}
!587 = !DILocation(line: 854, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !555, file: !6, line: 854, column: 7)
!589 = !DILocation(line: 854, column: 17, scope: !588)
!590 = !DILocation(line: 854, column: 7, scope: !555)
!591 = !DILocation(line: 855, column: 12, scope: !588)
!592 = !DILocation(line: 855, column: 22, scope: !588)
!593 = !DILocation(line: 855, column: 10, scope: !588)
!594 = !DILocation(line: 855, column: 5, scope: !588)
!595 = !DILocation(line: 857, column: 3, scope: !555)
!596 = !DILocalVariable(name: "lc_messages", scope: !555, file: !6, line: 861, type: !63)
!597 = !DILocation(line: 861, column: 15, scope: !555)
!598 = !DILocation(line: 861, column: 29, scope: !555)
!599 = !DILocation(line: 862, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !555, file: !6, line: 862, column: 7)
!601 = !DILocation(line: 862, column: 19, scope: !600)
!602 = !DILocation(line: 862, column: 22, scope: !600)
!603 = !DILocation(line: 862, column: 7, scope: !555)
!604 = !DILocation(line: 868, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !600, file: !6, line: 863, column: 5)
!606 = !DILocation(line: 870, column: 5, scope: !605)
!607 = !DILocalVariable(name: "url_program", scope: !555, file: !6, line: 874, type: !63)
!608 = !DILocation(line: 874, column: 15, scope: !555)
!609 = !DILocation(line: 874, column: 36, scope: !555)
!610 = !DILocation(line: 874, column: 29, scope: !555)
!611 = !DILocation(line: 874, column: 61, scope: !555)
!612 = !DILocation(line: 875, column: 11, scope: !555)
!613 = !DILocation(line: 876, column: 24, scope: !555)
!614 = !DILocation(line: 875, column: 3, scope: !555)
!615 = !DILocation(line: 877, column: 11, scope: !555)
!616 = !DILocation(line: 878, column: 11, scope: !555)
!617 = !DILocation(line: 878, column: 17, scope: !555)
!618 = !DILocation(line: 878, column: 25, scope: !555)
!619 = !DILocation(line: 878, column: 22, scope: !555)
!620 = !DILocation(line: 877, column: 3, scope: !555)
!621 = !DILocation(line: 879, column: 1, scope: !555)
!622 = !DILocalVariable(name: "argc", arg: 1, scope: !22, file: !3, line: 102, type: !25)
!623 = !DILocation(line: 102, column: 11, scope: !22)
!624 = !DILocalVariable(name: "argv", arg: 2, scope: !22, file: !3, line: 102, type: !26)
!625 = !DILocation(line: 102, column: 24, scope: !22)
!626 = !DILocalVariable(name: "current_niceness", scope: !22, file: !3, line: 104, type: !25)
!627 = !DILocation(line: 104, column: 7, scope: !22)
!628 = !DILocalVariable(name: "adjustment", scope: !22, file: !3, line: 105, type: !25)
!629 = !DILocation(line: 105, column: 7, scope: !22)
!630 = !DILocalVariable(name: "adjustment_given", scope: !22, file: !3, line: 106, type: !63)
!631 = !DILocation(line: 106, column: 15, scope: !22)
!632 = !DILocalVariable(name: "ok", scope: !22, file: !3, line: 107, type: !89)
!633 = !DILocation(line: 107, column: 8, scope: !22)
!634 = !DILocalVariable(name: "i", scope: !22, file: !3, line: 108, type: !25)
!635 = !DILocation(line: 108, column: 7, scope: !22)
!636 = !DILocation(line: 111, column: 21, scope: !22)
!637 = !DILocation(line: 111, column: 3, scope: !22)
!638 = !DILocation(line: 112, column: 3, scope: !22)
!639 = !DILocation(line: 113, column: 3, scope: !22)
!640 = !DILocation(line: 114, column: 3, scope: !22)
!641 = !DILocation(line: 116, column: 3, scope: !22)
!642 = !DILocation(line: 117, column: 3, scope: !22)
!643 = !DILocation(line: 119, column: 10, scope: !644)
!644 = distinct !DILexicalBlock(scope: !22, file: !3, line: 119, column: 3)
!645 = !DILocation(line: 119, column: 8, scope: !644)
!646 = !DILocation(line: 119, column: 15, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !3, line: 119, column: 3)
!648 = !DILocation(line: 119, column: 19, scope: !647)
!649 = !DILocation(line: 119, column: 17, scope: !647)
!650 = !DILocation(line: 119, column: 3, scope: !644)
!651 = !DILocalVariable(name: "s", scope: !652, file: !3, line: 121, type: !63)
!652 = distinct !DILexicalBlock(scope: !647, file: !3, line: 120, column: 5)
!653 = !DILocation(line: 121, column: 19, scope: !652)
!654 = !DILocation(line: 121, column: 23, scope: !652)
!655 = !DILocation(line: 121, column: 28, scope: !652)
!656 = !DILocation(line: 123, column: 11, scope: !657)
!657 = distinct !DILexicalBlock(scope: !652, file: !3, line: 123, column: 11)
!658 = !DILocation(line: 123, column: 16, scope: !657)
!659 = !DILocation(line: 123, column: 23, scope: !657)
!660 = !DILocation(line: 123, column: 37, scope: !657)
!661 = !DILocation(line: 123, column: 44, scope: !657)
!662 = !DILocation(line: 123, column: 49, scope: !657)
!663 = !DILocation(line: 123, column: 56, scope: !657)
!664 = !DILocation(line: 123, column: 59, scope: !657)
!665 = !DILocation(line: 123, column: 64, scope: !657)
!666 = !DILocation(line: 123, column: 41, scope: !657)
!667 = !DILocation(line: 123, column: 26, scope: !657)
!668 = !DILocation(line: 123, column: 11, scope: !652)
!669 = !DILocation(line: 125, column: 30, scope: !670)
!670 = distinct !DILexicalBlock(scope: !657, file: !3, line: 124, column: 9)
!671 = !DILocation(line: 125, column: 32, scope: !670)
!672 = !DILocation(line: 125, column: 28, scope: !670)
!673 = !DILocation(line: 126, column: 11, scope: !670)
!674 = !DILocation(line: 127, column: 9, scope: !670)
!675 = !DILocalVariable(name: "c", scope: !676, file: !3, line: 130, type: !25)
!676 = distinct !DILexicalBlock(scope: !657, file: !3, line: 129, column: 9)
!677 = !DILocation(line: 130, column: 15, scope: !676)
!678 = !DILocalVariable(name: "fake_argc", scope: !676, file: !3, line: 131, type: !25)
!679 = !DILocation(line: 131, column: 15, scope: !676)
!680 = !DILocation(line: 131, column: 27, scope: !676)
!681 = !DILocation(line: 131, column: 35, scope: !676)
!682 = !DILocation(line: 131, column: 37, scope: !676)
!683 = !DILocation(line: 131, column: 32, scope: !676)
!684 = !DILocalVariable(name: "fake_argv", scope: !676, file: !3, line: 132, type: !26)
!685 = !DILocation(line: 132, column: 18, scope: !676)
!686 = !DILocation(line: 132, column: 30, scope: !676)
!687 = !DILocation(line: 132, column: 38, scope: !676)
!688 = !DILocation(line: 132, column: 40, scope: !676)
!689 = !DILocation(line: 132, column: 35, scope: !676)
!690 = !DILocation(line: 135, column: 26, scope: !676)
!691 = !DILocation(line: 135, column: 11, scope: !676)
!692 = !DILocation(line: 135, column: 24, scope: !676)
!693 = !DILocation(line: 138, column: 18, scope: !676)
!694 = !DILocation(line: 140, column: 28, scope: !676)
!695 = !DILocation(line: 140, column: 39, scope: !676)
!696 = !DILocation(line: 140, column: 15, scope: !676)
!697 = !DILocation(line: 140, column: 13, scope: !676)
!698 = !DILocation(line: 141, column: 16, scope: !676)
!699 = !DILocation(line: 141, column: 23, scope: !676)
!700 = !DILocation(line: 141, column: 13, scope: !676)
!701 = !DILocation(line: 143, column: 19, scope: !676)
!702 = !DILocation(line: 143, column: 11, scope: !676)
!703 = !DILocation(line: 146, column: 34, scope: !704)
!704 = distinct !DILexicalBlock(scope: !676, file: !3, line: 144, column: 13)
!705 = !DILocation(line: 146, column: 32, scope: !704)
!706 = !DILocation(line: 147, column: 15, scope: !704)
!707 = !DILocation(line: 150, column: 15, scope: !704)
!708 = !DILocation(line: 152, column: 13, scope: !704)
!709 = !DILocation(line: 154, column: 13, scope: !704)
!710 = !DILocation(line: 157, column: 15, scope: !704)
!711 = !DILocation(line: 161, column: 15, scope: !712)
!712 = distinct !DILexicalBlock(scope: !676, file: !3, line: 161, column: 15)
!713 = !DILocation(line: 161, column: 17, scope: !712)
!714 = !DILocation(line: 161, column: 15, scope: !676)
!715 = !DILocation(line: 162, column: 13, scope: !712)
!716 = !DILocation(line: 119, column: 3, scope: !647)
!717 = distinct !{!717, !650, !718, !430}
!718 = !DILocation(line: 164, column: 5, scope: !644)
!719 = !DILocation(line: 166, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !22, file: !3, line: 166, column: 7)
!721 = !DILocation(line: 166, column: 7, scope: !22)
!722 = !DILocalVariable(name: "tmp", scope: !723, file: !3, line: 179, type: !281)
!723 = distinct !DILexicalBlock(scope: !720, file: !3, line: 167, column: 5)
!724 = !DILocation(line: 179, column: 16, scope: !723)
!725 = !DILocation(line: 180, column: 39, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !3, line: 180, column: 11)
!727 = !DILocation(line: 180, column: 30, scope: !726)
!728 = !DILocation(line: 180, column: 28, scope: !726)
!729 = !DILocation(line: 180, column: 11, scope: !723)
!730 = !DILocation(line: 181, column: 9, scope: !726)
!731 = !DILocation(line: 209, column: 20, scope: !723)
!732 = !DILocation(line: 209, column: 18, scope: !723)
!733 = !DILocation(line: 211, column: 5, scope: !723)
!734 = !DILocation(line: 213, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !22, file: !3, line: 213, column: 7)
!736 = !DILocation(line: 213, column: 12, scope: !735)
!737 = !DILocation(line: 213, column: 9, scope: !735)
!738 = !DILocation(line: 213, column: 7, scope: !22)
!739 = !DILocation(line: 215, column: 11, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 215, column: 11)
!741 = distinct !DILexicalBlock(scope: !735, file: !3, line: 214, column: 5)
!742 = !DILocation(line: 215, column: 11, scope: !741)
!743 = !DILocation(line: 217, column: 11, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !3, line: 216, column: 9)
!745 = !DILocation(line: 218, column: 11, scope: !744)
!746 = !DILocation(line: 221, column: 7, scope: !741)
!747 = !DILocation(line: 221, column: 13, scope: !741)
!748 = !DILocation(line: 222, column: 26, scope: !741)
!749 = !DILocation(line: 222, column: 24, scope: !741)
!750 = !DILocation(line: 223, column: 11, scope: !751)
!751 = distinct !DILexicalBlock(scope: !741, file: !3, line: 223, column: 11)
!752 = !DILocation(line: 223, column: 28, scope: !751)
!753 = !DILocation(line: 223, column: 34, scope: !751)
!754 = !DILocation(line: 223, column: 37, scope: !751)
!755 = !DILocation(line: 223, column: 43, scope: !751)
!756 = !DILocation(line: 223, column: 11, scope: !741)
!757 = !DILocation(line: 224, column: 9, scope: !751)
!758 = !DILocation(line: 225, column: 23, scope: !741)
!759 = !DILocation(line: 225, column: 7, scope: !741)
!760 = !DILocation(line: 226, column: 7, scope: !741)
!761 = !DILocation(line: 229, column: 3, scope: !22)
!762 = !DILocation(line: 229, column: 9, scope: !22)
!763 = !DILocation(line: 233, column: 22, scope: !22)
!764 = !DILocation(line: 233, column: 20, scope: !22)
!765 = !DILocation(line: 234, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !22, file: !3, line: 234, column: 7)
!767 = !DILocation(line: 234, column: 24, scope: !766)
!768 = !DILocation(line: 234, column: 30, scope: !766)
!769 = !DILocation(line: 234, column: 33, scope: !766)
!770 = !DILocation(line: 234, column: 39, scope: !766)
!771 = !DILocation(line: 234, column: 7, scope: !22)
!772 = !DILocation(line: 235, column: 5, scope: !766)
!773 = !DILocation(line: 236, column: 39, scope: !22)
!774 = !DILocation(line: 236, column: 58, scope: !22)
!775 = !DILocation(line: 236, column: 56, scope: !22)
!776 = !DILocation(line: 236, column: 9, scope: !22)
!777 = !DILocation(line: 236, column: 70, scope: !22)
!778 = !DILocation(line: 236, column: 6, scope: !22)
!779 = !DILocation(line: 238, column: 8, scope: !780)
!780 = distinct !DILexicalBlock(scope: !22, file: !3, line: 238, column: 7)
!781 = !DILocation(line: 238, column: 7, scope: !22)
!782 = !DILocalVariable(name: "__errstatus", scope: !783, file: !3, line: 240, type: !785)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 240, column: 7)
!784 = distinct !DILexicalBlock(scope: !780, file: !3, line: 239, column: 5)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!786 = !DILocation(line: 240, column: 7, scope: !783)
!787 = !DILocation(line: 247, column: 11, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !3, line: 247, column: 11)
!789 = !DILocation(line: 247, column: 11, scope: !784)
!790 = !DILocation(line: 248, column: 9, scope: !788)
!791 = !DILocation(line: 249, column: 5, scope: !784)
!792 = !DILocation(line: 251, column: 11, scope: !22)
!793 = !DILocation(line: 251, column: 16, scope: !22)
!794 = !DILocation(line: 251, column: 21, scope: !22)
!795 = !DILocation(line: 251, column: 26, scope: !22)
!796 = !DILocation(line: 251, column: 3, scope: !22)
!797 = !DILocalVariable(name: "exit_status", scope: !22, file: !3, line: 253, type: !25)
!798 = !DILocation(line: 253, column: 7, scope: !22)
!799 = !DILocation(line: 253, column: 21, scope: !22)
!800 = !DILocation(line: 253, column: 27, scope: !22)
!801 = !DILocation(line: 254, column: 3, scope: !22)
!802 = !DILocation(line: 255, column: 10, scope: !22)
!803 = !DILocation(line: 255, column: 3, scope: !22)
!804 = !DILocation(line: 256, column: 1, scope: !22)
!805 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 102, type: !329, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !29)
!806 = !DILocalVariable(name: "status", arg: 1, scope: !805, file: !6, line: 102, type: !25)
!807 = !DILocation(line: 102, column: 30, scope: !805)
!808 = !DILocation(line: 104, column: 7, scope: !809)
!809 = distinct !DILexicalBlock(scope: !805, file: !6, line: 104, column: 7)
!810 = !DILocation(line: 104, column: 14, scope: !809)
!811 = !DILocation(line: 104, column: 7, scope: !805)
!812 = !DILocation(line: 105, column: 20, scope: !809)
!813 = !DILocation(line: 105, column: 18, scope: !809)
!814 = !DILocation(line: 105, column: 5, scope: !809)
!815 = !DILocation(line: 106, column: 1, scope: !805)
!816 = distinct !DISubprogram(name: "perm_related_errno", scope: !3, file: !3, line: 96, type: !817, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !29)
!817 = !DISubroutineType(types: !818)
!818 = !{!89, !25}
!819 = !DILocalVariable(name: "err", arg: 1, scope: !816, file: !3, line: 96, type: !25)
!820 = !DILocation(line: 96, column: 25, scope: !816)
!821 = !DILocation(line: 98, column: 10, scope: !816)
!822 = !DILocation(line: 98, column: 14, scope: !816)
!823 = !DILocation(line: 98, column: 24, scope: !816)
!824 = !DILocation(line: 98, column: 27, scope: !816)
!825 = !DILocation(line: 98, column: 31, scope: !816)
!826 = !DILocation(line: 98, column: 3, scope: !816)
!827 = distinct !DISubprogram(name: "c_isalnum", scope: !828, file: !828, line: 169, type: !817, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!828 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!829 = !DILocalVariable(name: "c", arg: 1, scope: !827, file: !828, line: 169, type: !25)
!830 = !DILocation(line: 169, column: 16, scope: !827)
!831 = !DILocation(line: 171, column: 11, scope: !827)
!832 = !DILocation(line: 171, column: 3, scope: !827)
!833 = !DILocation(line: 176, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !827, file: !828, line: 172, column: 5)
!835 = !DILocation(line: 178, column: 7, scope: !834)
!836 = !DILocation(line: 180, column: 1, scope: !827)
!837 = distinct !DISubprogram(name: "c_isalpha", scope: !828, file: !828, line: 183, type: !817, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!838 = !DILocalVariable(name: "c", arg: 1, scope: !837, file: !828, line: 183, type: !25)
!839 = !DILocation(line: 183, column: 16, scope: !837)
!840 = !DILocation(line: 185, column: 11, scope: !837)
!841 = !DILocation(line: 185, column: 3, scope: !837)
!842 = !DILocation(line: 189, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !837, file: !828, line: 186, column: 5)
!844 = !DILocation(line: 191, column: 7, scope: !843)
!845 = !DILocation(line: 193, column: 1, scope: !837)
!846 = distinct !DISubprogram(name: "c_isascii", scope: !828, file: !828, line: 198, type: !817, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!847 = !DILocalVariable(name: "c", arg: 1, scope: !846, file: !828, line: 198, type: !25)
!848 = !DILocation(line: 198, column: 16, scope: !846)
!849 = !DILocation(line: 200, column: 11, scope: !846)
!850 = !DILocation(line: 200, column: 3, scope: !846)
!851 = !DILocation(line: 208, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !846, file: !828, line: 201, column: 5)
!853 = !DILocation(line: 210, column: 7, scope: !852)
!854 = !DILocation(line: 212, column: 1, scope: !846)
!855 = distinct !DISubprogram(name: "c_isblank", scope: !828, file: !828, line: 215, type: !817, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!856 = !DILocalVariable(name: "c", arg: 1, scope: !855, file: !828, line: 215, type: !25)
!857 = !DILocation(line: 215, column: 16, scope: !855)
!858 = !DILocation(line: 217, column: 10, scope: !855)
!859 = !DILocation(line: 217, column: 12, scope: !855)
!860 = !DILocation(line: 217, column: 19, scope: !855)
!861 = !DILocation(line: 217, column: 22, scope: !855)
!862 = !DILocation(line: 217, column: 24, scope: !855)
!863 = !DILocation(line: 217, column: 3, scope: !855)
!864 = distinct !DISubprogram(name: "c_iscntrl", scope: !828, file: !828, line: 221, type: !817, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!865 = !DILocalVariable(name: "c", arg: 1, scope: !864, file: !828, line: 221, type: !25)
!866 = !DILocation(line: 221, column: 16, scope: !864)
!867 = !DILocation(line: 223, column: 11, scope: !864)
!868 = !DILocation(line: 223, column: 3, scope: !864)
!869 = !DILocation(line: 226, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !864, file: !828, line: 224, column: 5)
!871 = !DILocation(line: 228, column: 7, scope: !870)
!872 = !DILocation(line: 230, column: 1, scope: !864)
!873 = distinct !DISubprogram(name: "c_isdigit", scope: !828, file: !828, line: 233, type: !817, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!874 = !DILocalVariable(name: "c", arg: 1, scope: !873, file: !828, line: 233, type: !25)
!875 = !DILocation(line: 233, column: 16, scope: !873)
!876 = !DILocation(line: 235, column: 11, scope: !873)
!877 = !DILocation(line: 235, column: 3, scope: !873)
!878 = !DILocation(line: 238, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !873, file: !828, line: 236, column: 5)
!880 = !DILocation(line: 240, column: 7, scope: !879)
!881 = !DILocation(line: 242, column: 1, scope: !873)
!882 = distinct !DISubprogram(name: "c_isgraph", scope: !828, file: !828, line: 245, type: !817, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!883 = !DILocalVariable(name: "c", arg: 1, scope: !882, file: !828, line: 245, type: !25)
!884 = !DILocation(line: 245, column: 16, scope: !882)
!885 = !DILocation(line: 247, column: 11, scope: !882)
!886 = !DILocation(line: 247, column: 3, scope: !882)
!887 = !DILocation(line: 253, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !882, file: !828, line: 248, column: 5)
!889 = !DILocation(line: 255, column: 7, scope: !888)
!890 = !DILocation(line: 257, column: 1, scope: !882)
!891 = distinct !DISubprogram(name: "c_islower", scope: !828, file: !828, line: 260, type: !817, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!892 = !DILocalVariable(name: "c", arg: 1, scope: !891, file: !828, line: 260, type: !25)
!893 = !DILocation(line: 260, column: 16, scope: !891)
!894 = !DILocation(line: 262, column: 11, scope: !891)
!895 = !DILocation(line: 262, column: 3, scope: !891)
!896 = !DILocation(line: 265, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !891, file: !828, line: 263, column: 5)
!898 = !DILocation(line: 267, column: 7, scope: !897)
!899 = !DILocation(line: 269, column: 1, scope: !891)
!900 = distinct !DISubprogram(name: "c_isprint", scope: !828, file: !828, line: 272, type: !817, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!901 = !DILocalVariable(name: "c", arg: 1, scope: !900, file: !828, line: 272, type: !25)
!902 = !DILocation(line: 272, column: 16, scope: !900)
!903 = !DILocation(line: 274, column: 11, scope: !900)
!904 = !DILocation(line: 274, column: 3, scope: !900)
!905 = !DILocation(line: 281, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !900, file: !828, line: 275, column: 5)
!907 = !DILocation(line: 283, column: 7, scope: !906)
!908 = !DILocation(line: 285, column: 1, scope: !900)
!909 = distinct !DISubprogram(name: "c_ispunct", scope: !828, file: !828, line: 288, type: !817, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!910 = !DILocalVariable(name: "c", arg: 1, scope: !909, file: !828, line: 288, type: !25)
!911 = !DILocation(line: 288, column: 16, scope: !909)
!912 = !DILocation(line: 290, column: 11, scope: !909)
!913 = !DILocation(line: 290, column: 3, scope: !909)
!914 = !DILocation(line: 293, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !909, file: !828, line: 291, column: 5)
!916 = !DILocation(line: 295, column: 7, scope: !915)
!917 = !DILocation(line: 297, column: 1, scope: !909)
!918 = distinct !DISubprogram(name: "c_isspace", scope: !828, file: !828, line: 300, type: !817, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!919 = !DILocalVariable(name: "c", arg: 1, scope: !918, file: !828, line: 300, type: !25)
!920 = !DILocation(line: 300, column: 16, scope: !918)
!921 = !DILocation(line: 302, column: 11, scope: !918)
!922 = !DILocation(line: 302, column: 3, scope: !918)
!923 = !DILocation(line: 305, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !918, file: !828, line: 303, column: 5)
!925 = !DILocation(line: 307, column: 7, scope: !924)
!926 = !DILocation(line: 309, column: 1, scope: !918)
!927 = distinct !DISubprogram(name: "c_isupper", scope: !828, file: !828, line: 312, type: !817, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!928 = !DILocalVariable(name: "c", arg: 1, scope: !927, file: !828, line: 312, type: !25)
!929 = !DILocation(line: 312, column: 16, scope: !927)
!930 = !DILocation(line: 314, column: 11, scope: !927)
!931 = !DILocation(line: 314, column: 3, scope: !927)
!932 = !DILocation(line: 317, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !927, file: !828, line: 315, column: 5)
!934 = !DILocation(line: 319, column: 7, scope: !933)
!935 = !DILocation(line: 321, column: 1, scope: !927)
!936 = distinct !DISubprogram(name: "c_isxdigit", scope: !828, file: !828, line: 324, type: !817, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!937 = !DILocalVariable(name: "c", arg: 1, scope: !936, file: !828, line: 324, type: !25)
!938 = !DILocation(line: 324, column: 17, scope: !936)
!939 = !DILocation(line: 326, column: 11, scope: !936)
!940 = !DILocation(line: 326, column: 3, scope: !936)
!941 = !DILocation(line: 330, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !936, file: !828, line: 327, column: 5)
!943 = !DILocation(line: 332, column: 7, scope: !942)
!944 = !DILocation(line: 334, column: 1, scope: !936)
!945 = distinct !DISubprogram(name: "c_tolower", scope: !828, file: !828, line: 337, type: !946, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!946 = !DISubroutineType(types: !947)
!947 = !{!25, !25}
!948 = !DILocalVariable(name: "c", arg: 1, scope: !945, file: !828, line: 337, type: !25)
!949 = !DILocation(line: 337, column: 16, scope: !945)
!950 = !DILocation(line: 339, column: 11, scope: !945)
!951 = !DILocation(line: 339, column: 3, scope: !945)
!952 = !DILocation(line: 342, column: 14, scope: !953)
!953 = distinct !DILexicalBlock(scope: !945, file: !828, line: 340, column: 5)
!954 = !DILocation(line: 342, column: 16, scope: !953)
!955 = !DILocation(line: 342, column: 22, scope: !953)
!956 = !DILocation(line: 342, column: 7, scope: !953)
!957 = !DILocation(line: 344, column: 14, scope: !953)
!958 = !DILocation(line: 344, column: 7, scope: !953)
!959 = !DILocation(line: 346, column: 1, scope: !945)
!960 = distinct !DISubprogram(name: "c_toupper", scope: !828, file: !828, line: 349, type: !946, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !29)
!961 = !DILocalVariable(name: "c", arg: 1, scope: !960, file: !828, line: 349, type: !25)
!962 = !DILocation(line: 349, column: 16, scope: !960)
!963 = !DILocation(line: 351, column: 11, scope: !960)
!964 = !DILocation(line: 351, column: 3, scope: !960)
!965 = !DILocation(line: 354, column: 14, scope: !966)
!966 = distinct !DILexicalBlock(scope: !960, file: !828, line: 352, column: 5)
!967 = !DILocation(line: 354, column: 16, scope: !966)
!968 = !DILocation(line: 354, column: 22, scope: !966)
!969 = !DILocation(line: 354, column: 7, scope: !966)
!970 = !DILocation(line: 356, column: 14, scope: !966)
!971 = !DILocation(line: 356, column: 7, scope: !966)
!972 = !DILocation(line: 358, column: 1, scope: !960)
!973 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !85, file: !85, line: 50, type: !547, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !29)
!974 = !DILocalVariable(name: "file", arg: 1, scope: !973, file: !85, line: 50, type: !63)
!975 = !DILocation(line: 50, column: 41, scope: !973)
!976 = !DILocation(line: 52, column: 15, scope: !973)
!977 = !DILocation(line: 52, column: 13, scope: !973)
!978 = !DILocation(line: 53, column: 1, scope: !973)
!979 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !85, file: !85, line: 87, type: !980, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !29)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !89}
!982 = !DILocalVariable(name: "ignore", arg: 1, scope: !979, file: !85, line: 87, type: !89)
!983 = !DILocation(line: 87, column: 37, scope: !979)
!984 = !DILocation(line: 89, column: 18, scope: !979)
!985 = !DILocation(line: 89, column: 16, scope: !979)
!986 = !DILocation(line: 90, column: 1, scope: !979)
!987 = distinct !DISubprogram(name: "close_stdout", scope: !85, file: !85, line: 116, type: !122, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !29)
!988 = !DILocation(line: 118, column: 21, scope: !989)
!989 = distinct !DILexicalBlock(scope: !987, file: !85, line: 118, column: 7)
!990 = !DILocation(line: 118, column: 7, scope: !989)
!991 = !DILocation(line: 118, column: 29, scope: !989)
!992 = !DILocation(line: 119, column: 7, scope: !989)
!993 = !DILocation(line: 119, column: 12, scope: !989)
!994 = !DILocation(line: 119, column: 25, scope: !989)
!995 = !DILocation(line: 119, column: 28, scope: !989)
!996 = !DILocation(line: 119, column: 34, scope: !989)
!997 = !DILocation(line: 118, column: 7, scope: !987)
!998 = !DILocalVariable(name: "write_error", scope: !999, file: !85, line: 121, type: !63)
!999 = distinct !DILexicalBlock(scope: !989, file: !85, line: 120, column: 5)
!1000 = !DILocation(line: 121, column: 19, scope: !999)
!1001 = !DILocation(line: 121, column: 33, scope: !999)
!1002 = !DILocation(line: 122, column: 11, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !85, line: 122, column: 11)
!1004 = !DILocation(line: 122, column: 11, scope: !999)
!1005 = !DILocation(line: 123, column: 9, scope: !1003)
!1006 = !DILocation(line: 126, column: 9, scope: !1003)
!1007 = !DILocation(line: 128, column: 14, scope: !999)
!1008 = !DILocation(line: 128, column: 7, scope: !999)
!1009 = !DILocation(line: 133, column: 42, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !987, file: !85, line: 133, column: 7)
!1011 = !DILocation(line: 133, column: 28, scope: !1010)
!1012 = !DILocation(line: 133, column: 50, scope: !1010)
!1013 = !DILocation(line: 133, column: 7, scope: !987)
!1014 = !DILocation(line: 134, column: 12, scope: !1010)
!1015 = !DILocation(line: 134, column: 5, scope: !1010)
!1016 = !DILocation(line: 135, column: 1, scope: !987)
!1017 = distinct !DISubprogram(name: "verror", scope: !93, file: !93, line: 251, type: !1018, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !29)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !25, !25, !63, !101}
!1020 = !DILocalVariable(name: "status", arg: 1, scope: !1017, file: !93, line: 251, type: !25)
!1021 = !DILocation(line: 251, column: 1, scope: !1017)
!1022 = !DILocalVariable(name: "errnum", arg: 2, scope: !1017, file: !93, line: 251, type: !25)
!1023 = !DILocalVariable(name: "message", arg: 3, scope: !1017, file: !93, line: 251, type: !63)
!1024 = !DILocalVariable(name: "args", arg: 4, scope: !1017, file: !93, line: 251, type: !101)
!1025 = !DILocation(line: 261, column: 3, scope: !1017)
!1026 = !DILocation(line: 265, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1017, file: !93, line: 265, column: 7)
!1028 = !DILocation(line: 265, column: 7, scope: !1017)
!1029 = !DILocation(line: 266, column: 7, scope: !1027)
!1030 = !DILocation(line: 266, column: 5, scope: !1027)
!1031 = !DILocation(line: 272, column: 16, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !93, line: 268, column: 5)
!1033 = !DILocation(line: 272, column: 32, scope: !1032)
!1034 = !DILocation(line: 272, column: 7, scope: !1032)
!1035 = !DILocation(line: 276, column: 3, scope: !1017)
!1036 = !DILocation(line: 282, column: 1, scope: !1017)
!1037 = distinct !DISubprogram(name: "flush_stdout", scope: !93, file: !93, line: 163, type: !122, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !29)
!1038 = !DILocalVariable(name: "stdout_fd", scope: !1037, file: !93, line: 166, type: !25)
!1039 = !DILocation(line: 166, column: 7, scope: !1037)
!1040 = !DILocation(line: 172, column: 13, scope: !1037)
!1041 = !DILocation(line: 182, column: 12, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !93, line: 182, column: 7)
!1043 = !DILocation(line: 182, column: 9, scope: !1042)
!1044 = !DILocation(line: 182, column: 22, scope: !1042)
!1045 = !DILocation(line: 182, column: 34, scope: !1042)
!1046 = !DILocation(line: 182, column: 25, scope: !1042)
!1047 = !DILocation(line: 182, column: 7, scope: !1037)
!1048 = !DILocation(line: 184, column: 5, scope: !1042)
!1049 = !DILocation(line: 185, column: 1, scope: !1037)
!1050 = distinct !DISubprogram(name: "error_tail", scope: !93, file: !93, line: 219, type: !1018, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !29)
!1051 = !DILocalVariable(name: "status", arg: 1, scope: !1050, file: !93, line: 219, type: !25)
!1052 = !DILocation(line: 219, column: 1, scope: !1050)
!1053 = !DILocalVariable(name: "errnum", arg: 2, scope: !1050, file: !93, line: 219, type: !25)
!1054 = !DILocalVariable(name: "message", arg: 3, scope: !1050, file: !93, line: 219, type: !63)
!1055 = !DILocalVariable(name: "args", arg: 4, scope: !1050, file: !93, line: 219, type: !101)
!1056 = !DILocation(line: 229, column: 13, scope: !1050)
!1057 = !DILocation(line: 229, column: 21, scope: !1050)
!1058 = !DILocation(line: 229, column: 3, scope: !1050)
!1059 = !DILocation(line: 232, column: 3, scope: !1050)
!1060 = !DILocation(line: 233, column: 7, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1050, file: !93, line: 233, column: 7)
!1062 = !DILocation(line: 233, column: 7, scope: !1050)
!1063 = !DILocation(line: 234, column: 26, scope: !1061)
!1064 = !DILocation(line: 234, column: 5, scope: !1061)
!1065 = !DILocation(line: 238, column: 3, scope: !1050)
!1066 = !DILocation(line: 240, column: 3, scope: !1050)
!1067 = !DILocation(line: 241, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1050, file: !93, line: 241, column: 7)
!1069 = !DILocation(line: 241, column: 7, scope: !1050)
!1070 = !DILocation(line: 242, column: 11, scope: !1068)
!1071 = !DILocation(line: 242, column: 5, scope: !1068)
!1072 = !DILocation(line: 243, column: 1, scope: !1050)
!1073 = distinct !DISubprogram(name: "print_errno_message", scope: !93, file: !93, line: 188, type: !329, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !29)
!1074 = !DILocalVariable(name: "errnum", arg: 1, scope: !1073, file: !93, line: 188, type: !25)
!1075 = !DILocation(line: 188, column: 26, scope: !1073)
!1076 = !DILocalVariable(name: "s", scope: !1073, file: !93, line: 190, type: !63)
!1077 = !DILocation(line: 190, column: 15, scope: !1073)
!1078 = !DILocalVariable(name: "errbuf", scope: !1073, file: !93, line: 193, type: !1079)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8192, elements: !1080)
!1080 = !{!1081}
!1081 = !DISubrange(count: 1024)
!1082 = !DILocation(line: 193, column: 8, scope: !1073)
!1083 = !DILocation(line: 195, column: 21, scope: !1073)
!1084 = !DILocation(line: 195, column: 29, scope: !1073)
!1085 = !DILocation(line: 195, column: 7, scope: !1073)
!1086 = !DILocation(line: 195, column: 5, scope: !1073)
!1087 = !DILocation(line: 207, column: 9, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1073, file: !93, line: 207, column: 7)
!1089 = !DILocation(line: 207, column: 7, scope: !1073)
!1090 = !DILocation(line: 208, column: 9, scope: !1088)
!1091 = !DILocation(line: 208, column: 7, scope: !1088)
!1092 = !DILocation(line: 208, column: 5, scope: !1088)
!1093 = !DILocation(line: 214, column: 12, scope: !1073)
!1094 = !DILocation(line: 214, column: 28, scope: !1073)
!1095 = !DILocation(line: 214, column: 3, scope: !1073)
!1096 = !DILocation(line: 216, column: 1, scope: !1073)
!1097 = distinct !DISubprogram(name: "is_open", scope: !93, file: !93, line: 145, type: !946, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !92, retainedNodes: !29)
!1098 = !DILocalVariable(name: "fd", arg: 1, scope: !1097, file: !93, line: 145, type: !25)
!1099 = !DILocation(line: 145, column: 14, scope: !1097)
!1100 = !DILocation(line: 157, column: 22, scope: !1097)
!1101 = !DILocation(line: 157, column: 15, scope: !1097)
!1102 = !DILocation(line: 157, column: 12, scope: !1097)
!1103 = !DILocation(line: 157, column: 3, scope: !1097)
!1104 = distinct !DISubprogram(name: "error", scope: !93, file: !93, line: 285, type: !1105, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !29)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !25, !25, !63, null}
!1107 = !DILocalVariable(name: "status", arg: 1, scope: !1104, file: !93, line: 285, type: !25)
!1108 = !DILocation(line: 285, column: 12, scope: !1104)
!1109 = !DILocalVariable(name: "errnum", arg: 2, scope: !1104, file: !93, line: 285, type: !25)
!1110 = !DILocation(line: 285, column: 24, scope: !1104)
!1111 = !DILocalVariable(name: "message", arg: 3, scope: !1104, file: !93, line: 285, type: !63)
!1112 = !DILocation(line: 285, column: 44, scope: !1104)
!1113 = !DILocalVariable(name: "ap", scope: !1104, file: !93, line: 287, type: !101)
!1114 = !DILocation(line: 287, column: 11, scope: !1104)
!1115 = !DILocation(line: 288, column: 3, scope: !1104)
!1116 = !DILocation(line: 289, column: 3, scope: !1104)
!1117 = !DILocation(line: 290, column: 3, scope: !1104)
!1118 = !DILocation(line: 291, column: 1, scope: !1104)
!1119 = !DILocalVariable(name: "status", arg: 1, scope: !98, file: !93, line: 298, type: !25)
!1120 = !DILocation(line: 298, column: 1, scope: !98)
!1121 = !DILocalVariable(name: "errnum", arg: 2, scope: !98, file: !93, line: 298, type: !25)
!1122 = !DILocalVariable(name: "file_name", arg: 3, scope: !98, file: !93, line: 298, type: !63)
!1123 = !DILocalVariable(name: "line_number", arg: 4, scope: !98, file: !93, line: 298, type: !7)
!1124 = !DILocalVariable(name: "message", arg: 5, scope: !98, file: !93, line: 298, type: !63)
!1125 = !DILocalVariable(name: "args", arg: 6, scope: !98, file: !93, line: 298, type: !101)
!1126 = !DILocation(line: 302, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !98, file: !93, line: 302, column: 7)
!1128 = !DILocation(line: 302, column: 7, scope: !98)
!1129 = !DILocation(line: 307, column: 11, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !93, line: 307, column: 11)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !93, line: 303, column: 5)
!1132 = !DILocation(line: 307, column: 30, scope: !1130)
!1133 = !DILocation(line: 307, column: 27, scope: !1130)
!1134 = !DILocation(line: 308, column: 11, scope: !1130)
!1135 = !DILocation(line: 308, column: 15, scope: !1130)
!1136 = !DILocation(line: 308, column: 28, scope: !1130)
!1137 = !DILocation(line: 308, column: 25, scope: !1130)
!1138 = !DILocation(line: 309, column: 15, scope: !1130)
!1139 = !DILocation(line: 309, column: 19, scope: !1130)
!1140 = !DILocation(line: 309, column: 33, scope: !1130)
!1141 = !DILocation(line: 310, column: 19, scope: !1130)
!1142 = !DILocation(line: 310, column: 22, scope: !1130)
!1143 = !DILocation(line: 310, column: 32, scope: !1130)
!1144 = !DILocation(line: 311, column: 19, scope: !1130)
!1145 = !DILocation(line: 311, column: 30, scope: !1130)
!1146 = !DILocation(line: 311, column: 45, scope: !1130)
!1147 = !DILocation(line: 311, column: 22, scope: !1130)
!1148 = !DILocation(line: 311, column: 56, scope: !1130)
!1149 = !DILocation(line: 307, column: 11, scope: !1131)
!1150 = !DILocation(line: 314, column: 9, scope: !1130)
!1151 = !DILocation(line: 316, column: 23, scope: !1131)
!1152 = !DILocation(line: 316, column: 21, scope: !1131)
!1153 = !DILocation(line: 317, column: 25, scope: !1131)
!1154 = !DILocation(line: 317, column: 23, scope: !1131)
!1155 = !DILocation(line: 318, column: 5, scope: !1131)
!1156 = !DILocation(line: 327, column: 3, scope: !98)
!1157 = !DILocation(line: 331, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !98, file: !93, line: 331, column: 7)
!1159 = !DILocation(line: 331, column: 7, scope: !98)
!1160 = !DILocation(line: 332, column: 7, scope: !1158)
!1161 = !DILocation(line: 332, column: 5, scope: !1158)
!1162 = !DILocation(line: 338, column: 16, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !93, line: 334, column: 5)
!1164 = !DILocation(line: 338, column: 31, scope: !1163)
!1165 = !DILocation(line: 338, column: 7, scope: !1163)
!1166 = !DILocation(line: 346, column: 12, scope: !98)
!1167 = !DILocation(line: 346, column: 20, scope: !98)
!1168 = !DILocation(line: 346, column: 30, scope: !98)
!1169 = !DILocation(line: 347, column: 12, scope: !98)
!1170 = !DILocation(line: 347, column: 23, scope: !98)
!1171 = !DILocation(line: 346, column: 3, scope: !98)
!1172 = !DILocation(line: 350, column: 3, scope: !98)
!1173 = !DILocation(line: 356, column: 1, scope: !98)
!1174 = distinct !DISubprogram(name: "error_at_line", scope: !93, file: !93, line: 359, type: !1175, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !29)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !25, !25, !63, !7, !63, null}
!1177 = !DILocalVariable(name: "status", arg: 1, scope: !1174, file: !93, line: 359, type: !25)
!1178 = !DILocation(line: 359, column: 20, scope: !1174)
!1179 = !DILocalVariable(name: "errnum", arg: 2, scope: !1174, file: !93, line: 359, type: !25)
!1180 = !DILocation(line: 359, column: 32, scope: !1174)
!1181 = !DILocalVariable(name: "file_name", arg: 3, scope: !1174, file: !93, line: 359, type: !63)
!1182 = !DILocation(line: 359, column: 52, scope: !1174)
!1183 = !DILocalVariable(name: "line_number", arg: 4, scope: !1174, file: !93, line: 360, type: !7)
!1184 = !DILocation(line: 360, column: 29, scope: !1174)
!1185 = !DILocalVariable(name: "message", arg: 5, scope: !1174, file: !93, line: 360, type: !63)
!1186 = !DILocation(line: 360, column: 54, scope: !1174)
!1187 = !DILocalVariable(name: "ap", scope: !1174, file: !93, line: 362, type: !101)
!1188 = !DILocation(line: 362, column: 11, scope: !1174)
!1189 = !DILocation(line: 363, column: 3, scope: !1174)
!1190 = !DILocation(line: 364, column: 3, scope: !1174)
!1191 = !DILocation(line: 366, column: 3, scope: !1174)
!1192 = !DILocation(line: 367, column: 1, scope: !1174)
!1193 = distinct !DISubprogram(name: "getprogname", scope: !254, file: !254, line: 54, type: !1194, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !253, retainedNodes: !29)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!63}
!1196 = !DILocation(line: 58, column: 10, scope: !1193)
!1197 = !DILocation(line: 58, column: 3, scope: !1193)
!1198 = distinct !DISubprogram(name: "set_program_name", scope: !127, file: !127, line: 37, type: !547, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !29)
!1199 = !DILocalVariable(name: "argv0", arg: 1, scope: !1198, file: !127, line: 37, type: !63)
!1200 = !DILocation(line: 37, column: 31, scope: !1198)
!1201 = !DILocalVariable(name: "slash", scope: !1198, file: !127, line: 44, type: !63)
!1202 = !DILocation(line: 44, column: 15, scope: !1198)
!1203 = !DILocation(line: 44, column: 32, scope: !1198)
!1204 = !DILocation(line: 44, column: 23, scope: !1198)
!1205 = !DILocalVariable(name: "base", scope: !1198, file: !127, line: 45, type: !63)
!1206 = !DILocation(line: 45, column: 15, scope: !1198)
!1207 = !DILocation(line: 45, column: 22, scope: !1198)
!1208 = !DILocation(line: 45, column: 30, scope: !1198)
!1209 = !DILocation(line: 45, column: 36, scope: !1198)
!1210 = !DILocation(line: 45, column: 42, scope: !1198)
!1211 = !DILocation(line: 46, column: 12, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1198, file: !127, line: 46, column: 7)
!1213 = !DILocation(line: 46, column: 19, scope: !1212)
!1214 = !DILocation(line: 46, column: 17, scope: !1212)
!1215 = !DILocation(line: 46, column: 9, scope: !1212)
!1216 = !DILocation(line: 46, column: 25, scope: !1212)
!1217 = !DILocation(line: 46, column: 35, scope: !1212)
!1218 = !DILocation(line: 46, column: 40, scope: !1212)
!1219 = !DILocation(line: 46, column: 28, scope: !1212)
!1220 = !DILocation(line: 46, column: 7, scope: !1198)
!1221 = !DILocation(line: 48, column: 15, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1212, file: !127, line: 47, column: 5)
!1223 = !DILocation(line: 48, column: 13, scope: !1222)
!1224 = !DILocation(line: 49, column: 20, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !127, line: 49, column: 11)
!1226 = !DILocation(line: 49, column: 11, scope: !1225)
!1227 = !DILocation(line: 49, column: 36, scope: !1225)
!1228 = !DILocation(line: 49, column: 11, scope: !1222)
!1229 = !DILocation(line: 51, column: 16, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !127, line: 50, column: 9)
!1231 = !DILocation(line: 52, column: 19, scope: !1230)
!1232 = !DILocation(line: 52, column: 17, scope: !1230)
!1233 = !DILocation(line: 53, column: 9, scope: !1230)
!1234 = !DILocation(line: 54, column: 5, scope: !1222)
!1235 = !DILocation(line: 65, column: 18, scope: !1198)
!1236 = !DILocation(line: 65, column: 16, scope: !1198)
!1237 = !DILocation(line: 71, column: 38, scope: !1198)
!1238 = !DILocation(line: 71, column: 27, scope: !1198)
!1239 = !DILocation(line: 74, column: 44, scope: !1198)
!1240 = !DILocation(line: 74, column: 33, scope: !1198)
!1241 = !DILocation(line: 76, column: 1, scope: !1198)
!1242 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !132, file: !133, line: 38, type: !63)
!1243 = !DILocation(line: 38, column: 31, scope: !132)
!1244 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !132, file: !133, line: 38, type: !63)
!1245 = !DILocation(line: 38, column: 66, scope: !132)
!1246 = !DILocalVariable(name: "translation", scope: !132, file: !133, line: 40, type: !63)
!1247 = !DILocation(line: 40, column: 15, scope: !132)
!1248 = !DILocation(line: 40, column: 38, scope: !132)
!1249 = !DILocation(line: 40, column: 29, scope: !132)
!1250 = !DILocation(line: 41, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !132, file: !133, line: 41, column: 7)
!1252 = !DILocation(line: 41, column: 22, scope: !1251)
!1253 = !DILocation(line: 41, column: 19, scope: !1251)
!1254 = !DILocation(line: 41, column: 7, scope: !132)
!1255 = !DILocation(line: 42, column: 12, scope: !1251)
!1256 = !DILocation(line: 42, column: 5, scope: !1251)
!1257 = !DILocalVariable(name: "w", scope: !132, file: !133, line: 47, type: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1259, line: 37, baseType: !1260)
!1259 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1261, line: 57, baseType: !1262)
!1261 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1261, line: 42, baseType: !7)
!1263 = !DILocation(line: 47, column: 12, scope: !132)
!1264 = !DILocalVariable(name: "mbs", scope: !132, file: !133, line: 48, type: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !239, line: 6, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !241, line: 21, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 13, size: 64, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1267, file: !241, line: 15, baseType: !25, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1267, file: !241, line: 20, baseType: !1271, size: 32, offset: 32)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !241, line: 16, size: 32, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1271, file: !241, line: 18, baseType: !7, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1271, file: !241, line: 19, baseType: !250, size: 32)
!1275 = !DILocation(line: 48, column: 13, scope: !132)
!1276 = !DILocation(line: 48, column: 18, scope: !132)
!1277 = !DILocation(line: 49, column: 7, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !132, file: !133, line: 49, column: 7)
!1279 = !DILocation(line: 49, column: 39, scope: !1278)
!1280 = !DILocation(line: 49, column: 44, scope: !1278)
!1281 = !DILocation(line: 49, column: 47, scope: !1278)
!1282 = !DILocation(line: 49, column: 49, scope: !1278)
!1283 = !DILocation(line: 49, column: 7, scope: !132)
!1284 = !DILocation(line: 50, column: 12, scope: !1278)
!1285 = !DILocation(line: 50, column: 5, scope: !1278)
!1286 = !DILocation(line: 53, column: 10, scope: !132)
!1287 = !DILocation(line: 53, column: 3, scope: !132)
!1288 = !DILocation(line: 54, column: 1, scope: !132)
!1289 = distinct !DISubprogram(name: "clone_quoting_options", scope: !144, file: !144, line: 113, type: !1290, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!1292, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!1293 = !DILocalVariable(name: "o", arg: 1, scope: !1289, file: !144, line: 113, type: !1292)
!1294 = !DILocation(line: 113, column: 48, scope: !1289)
!1295 = !DILocalVariable(name: "saved_errno", scope: !1289, file: !144, line: 115, type: !25)
!1296 = !DILocation(line: 115, column: 7, scope: !1289)
!1297 = !DILocation(line: 115, column: 21, scope: !1289)
!1298 = !DILocalVariable(name: "p", scope: !1289, file: !144, line: 116, type: !1292)
!1299 = !DILocation(line: 116, column: 27, scope: !1289)
!1300 = !DILocation(line: 116, column: 40, scope: !1289)
!1301 = !DILocation(line: 116, column: 44, scope: !1289)
!1302 = !DILocation(line: 116, column: 31, scope: !1289)
!1303 = !DILocation(line: 118, column: 11, scope: !1289)
!1304 = !DILocation(line: 118, column: 3, scope: !1289)
!1305 = !DILocation(line: 118, column: 9, scope: !1289)
!1306 = !DILocation(line: 119, column: 10, scope: !1289)
!1307 = !DILocation(line: 119, column: 3, scope: !1289)
!1308 = distinct !DISubprogram(name: "get_quoting_style", scope: !144, file: !144, line: 124, type: !1309, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!146, !1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!1313 = !DILocalVariable(name: "o", arg: 1, scope: !1308, file: !144, line: 124, type: !1311)
!1314 = !DILocation(line: 124, column: 50, scope: !1308)
!1315 = !DILocation(line: 126, column: 11, scope: !1308)
!1316 = !DILocation(line: 126, column: 15, scope: !1308)
!1317 = !DILocation(line: 126, column: 46, scope: !1308)
!1318 = !DILocation(line: 126, column: 3, scope: !1308)
!1319 = distinct !DISubprogram(name: "set_quoting_style", scope: !144, file: !144, line: 132, type: !1320, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !1292, !146}
!1322 = !DILocalVariable(name: "o", arg: 1, scope: !1319, file: !144, line: 132, type: !1292)
!1323 = !DILocation(line: 132, column: 44, scope: !1319)
!1324 = !DILocalVariable(name: "s", arg: 2, scope: !1319, file: !144, line: 132, type: !146)
!1325 = !DILocation(line: 132, column: 66, scope: !1319)
!1326 = !DILocation(line: 134, column: 47, scope: !1319)
!1327 = !DILocation(line: 134, column: 4, scope: !1319)
!1328 = !DILocation(line: 134, column: 8, scope: !1319)
!1329 = !DILocation(line: 134, column: 39, scope: !1319)
!1330 = !DILocation(line: 134, column: 45, scope: !1319)
!1331 = !DILocation(line: 135, column: 1, scope: !1319)
!1332 = distinct !DISubprogram(name: "set_char_quoting", scope: !144, file: !144, line: 143, type: !1333, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!25, !1292, !28, !25}
!1335 = !DILocalVariable(name: "o", arg: 1, scope: !1332, file: !144, line: 143, type: !1292)
!1336 = !DILocation(line: 143, column: 43, scope: !1332)
!1337 = !DILocalVariable(name: "c", arg: 2, scope: !1332, file: !144, line: 143, type: !28)
!1338 = !DILocation(line: 143, column: 51, scope: !1332)
!1339 = !DILocalVariable(name: "i", arg: 3, scope: !1332, file: !144, line: 143, type: !25)
!1340 = !DILocation(line: 143, column: 58, scope: !1332)
!1341 = !DILocalVariable(name: "uc", scope: !1332, file: !144, line: 145, type: !236)
!1342 = !DILocation(line: 145, column: 17, scope: !1332)
!1343 = !DILocation(line: 145, column: 22, scope: !1332)
!1344 = !DILocalVariable(name: "p", scope: !1332, file: !144, line: 146, type: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1346 = !DILocation(line: 146, column: 17, scope: !1332)
!1347 = !DILocation(line: 147, column: 6, scope: !1332)
!1348 = !DILocation(line: 147, column: 10, scope: !1332)
!1349 = !DILocation(line: 147, column: 41, scope: !1332)
!1350 = !DILocation(line: 147, column: 5, scope: !1332)
!1351 = !DILocation(line: 147, column: 59, scope: !1332)
!1352 = !DILocation(line: 147, column: 62, scope: !1332)
!1353 = !DILocation(line: 147, column: 57, scope: !1332)
!1354 = !DILocalVariable(name: "shift", scope: !1332, file: !144, line: 148, type: !25)
!1355 = !DILocation(line: 148, column: 7, scope: !1332)
!1356 = !DILocation(line: 148, column: 15, scope: !1332)
!1357 = !DILocation(line: 148, column: 18, scope: !1332)
!1358 = !DILocalVariable(name: "r", scope: !1332, file: !144, line: 149, type: !7)
!1359 = !DILocation(line: 149, column: 16, scope: !1332)
!1360 = !DILocation(line: 149, column: 22, scope: !1332)
!1361 = !DILocation(line: 149, column: 21, scope: !1332)
!1362 = !DILocation(line: 149, column: 27, scope: !1332)
!1363 = !DILocation(line: 149, column: 24, scope: !1332)
!1364 = !DILocation(line: 149, column: 34, scope: !1332)
!1365 = !DILocation(line: 150, column: 11, scope: !1332)
!1366 = !DILocation(line: 150, column: 13, scope: !1332)
!1367 = !DILocation(line: 150, column: 21, scope: !1332)
!1368 = !DILocation(line: 150, column: 19, scope: !1332)
!1369 = !DILocation(line: 150, column: 27, scope: !1332)
!1370 = !DILocation(line: 150, column: 24, scope: !1332)
!1371 = !DILocation(line: 150, column: 4, scope: !1332)
!1372 = !DILocation(line: 150, column: 6, scope: !1332)
!1373 = !DILocation(line: 151, column: 10, scope: !1332)
!1374 = !DILocation(line: 151, column: 3, scope: !1332)
!1375 = distinct !DISubprogram(name: "set_quoting_flags", scope: !144, file: !144, line: 159, type: !1376, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!25, !1292, !25}
!1378 = !DILocalVariable(name: "o", arg: 1, scope: !1375, file: !144, line: 159, type: !1292)
!1379 = !DILocation(line: 159, column: 44, scope: !1375)
!1380 = !DILocalVariable(name: "i", arg: 2, scope: !1375, file: !144, line: 159, type: !25)
!1381 = !DILocation(line: 159, column: 51, scope: !1375)
!1382 = !DILocation(line: 161, column: 8, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1375, file: !144, line: 161, column: 7)
!1384 = !DILocation(line: 161, column: 7, scope: !1375)
!1385 = !DILocation(line: 162, column: 7, scope: !1383)
!1386 = !DILocation(line: 162, column: 5, scope: !1383)
!1387 = !DILocalVariable(name: "r", scope: !1375, file: !144, line: 163, type: !25)
!1388 = !DILocation(line: 163, column: 7, scope: !1375)
!1389 = !DILocation(line: 163, column: 11, scope: !1375)
!1390 = !DILocation(line: 163, column: 14, scope: !1375)
!1391 = !DILocation(line: 164, column: 14, scope: !1375)
!1392 = !DILocation(line: 164, column: 3, scope: !1375)
!1393 = !DILocation(line: 164, column: 6, scope: !1375)
!1394 = !DILocation(line: 164, column: 12, scope: !1375)
!1395 = !DILocation(line: 165, column: 10, scope: !1375)
!1396 = !DILocation(line: 165, column: 3, scope: !1375)
!1397 = distinct !DISubprogram(name: "set_custom_quoting", scope: !144, file: !144, line: 169, type: !1398, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !1292, !63, !63}
!1400 = !DILocalVariable(name: "o", arg: 1, scope: !1397, file: !144, line: 169, type: !1292)
!1401 = !DILocation(line: 169, column: 45, scope: !1397)
!1402 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1397, file: !144, line: 170, type: !63)
!1403 = !DILocation(line: 170, column: 33, scope: !1397)
!1404 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1397, file: !144, line: 170, type: !63)
!1405 = !DILocation(line: 170, column: 57, scope: !1397)
!1406 = !DILocation(line: 172, column: 8, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1397, file: !144, line: 172, column: 7)
!1408 = !DILocation(line: 172, column: 7, scope: !1397)
!1409 = !DILocation(line: 173, column: 7, scope: !1407)
!1410 = !DILocation(line: 173, column: 5, scope: !1407)
!1411 = !DILocation(line: 174, column: 3, scope: !1397)
!1412 = !DILocation(line: 174, column: 6, scope: !1397)
!1413 = !DILocation(line: 174, column: 12, scope: !1397)
!1414 = !DILocation(line: 175, column: 8, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1397, file: !144, line: 175, column: 7)
!1416 = !DILocation(line: 175, column: 19, scope: !1415)
!1417 = !DILocation(line: 175, column: 23, scope: !1415)
!1418 = !DILocation(line: 175, column: 7, scope: !1397)
!1419 = !DILocation(line: 176, column: 5, scope: !1415)
!1420 = !DILocation(line: 177, column: 19, scope: !1397)
!1421 = !DILocation(line: 177, column: 3, scope: !1397)
!1422 = !DILocation(line: 177, column: 6, scope: !1397)
!1423 = !DILocation(line: 177, column: 17, scope: !1397)
!1424 = !DILocation(line: 178, column: 20, scope: !1397)
!1425 = !DILocation(line: 178, column: 3, scope: !1397)
!1426 = !DILocation(line: 178, column: 6, scope: !1397)
!1427 = !DILocation(line: 178, column: 18, scope: !1397)
!1428 = !DILocation(line: 179, column: 1, scope: !1397)
!1429 = distinct !DISubprogram(name: "quotearg_buffer", scope: !144, file: !144, line: 774, type: !1430, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!166, !27, !166, !63, !166, !1311}
!1432 = !DILocalVariable(name: "buffer", arg: 1, scope: !1429, file: !144, line: 774, type: !27)
!1433 = !DILocation(line: 774, column: 24, scope: !1429)
!1434 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1429, file: !144, line: 774, type: !166)
!1435 = !DILocation(line: 774, column: 39, scope: !1429)
!1436 = !DILocalVariable(name: "arg", arg: 3, scope: !1429, file: !144, line: 775, type: !63)
!1437 = !DILocation(line: 775, column: 30, scope: !1429)
!1438 = !DILocalVariable(name: "argsize", arg: 4, scope: !1429, file: !144, line: 775, type: !166)
!1439 = !DILocation(line: 775, column: 42, scope: !1429)
!1440 = !DILocalVariable(name: "o", arg: 5, scope: !1429, file: !144, line: 776, type: !1311)
!1441 = !DILocation(line: 776, column: 48, scope: !1429)
!1442 = !DILocalVariable(name: "p", scope: !1429, file: !144, line: 778, type: !1311)
!1443 = !DILocation(line: 778, column: 33, scope: !1429)
!1444 = !DILocation(line: 778, column: 37, scope: !1429)
!1445 = !DILocation(line: 778, column: 41, scope: !1429)
!1446 = !DILocalVariable(name: "saved_errno", scope: !1429, file: !144, line: 779, type: !25)
!1447 = !DILocation(line: 779, column: 7, scope: !1429)
!1448 = !DILocation(line: 779, column: 21, scope: !1429)
!1449 = !DILocalVariable(name: "r", scope: !1429, file: !144, line: 780, type: !166)
!1450 = !DILocation(line: 780, column: 10, scope: !1429)
!1451 = !DILocation(line: 780, column: 40, scope: !1429)
!1452 = !DILocation(line: 780, column: 48, scope: !1429)
!1453 = !DILocation(line: 780, column: 60, scope: !1429)
!1454 = !DILocation(line: 780, column: 65, scope: !1429)
!1455 = !DILocation(line: 781, column: 40, scope: !1429)
!1456 = !DILocation(line: 781, column: 43, scope: !1429)
!1457 = !DILocation(line: 781, column: 50, scope: !1429)
!1458 = !DILocation(line: 781, column: 53, scope: !1429)
!1459 = !DILocation(line: 781, column: 60, scope: !1429)
!1460 = !DILocation(line: 781, column: 63, scope: !1429)
!1461 = !DILocation(line: 782, column: 40, scope: !1429)
!1462 = !DILocation(line: 782, column: 43, scope: !1429)
!1463 = !DILocation(line: 782, column: 55, scope: !1429)
!1464 = !DILocation(line: 782, column: 58, scope: !1429)
!1465 = !DILocation(line: 780, column: 14, scope: !1429)
!1466 = !DILocation(line: 783, column: 11, scope: !1429)
!1467 = !DILocation(line: 783, column: 3, scope: !1429)
!1468 = !DILocation(line: 783, column: 9, scope: !1429)
!1469 = !DILocation(line: 784, column: 10, scope: !1429)
!1470 = !DILocation(line: 784, column: 3, scope: !1429)
!1471 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !144, file: !144, line: 251, type: !1472, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !143, retainedNodes: !29)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!166, !27, !166, !63, !166, !146, !25, !1474, !63, !63}
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1476 = !DILocalVariable(name: "buffer", arg: 1, scope: !1471, file: !144, line: 251, type: !27)
!1477 = !DILocation(line: 251, column: 33, scope: !1471)
!1478 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1471, file: !144, line: 251, type: !166)
!1479 = !DILocation(line: 251, column: 48, scope: !1471)
!1480 = !DILocalVariable(name: "arg", arg: 3, scope: !1471, file: !144, line: 252, type: !63)
!1481 = !DILocation(line: 252, column: 39, scope: !1471)
!1482 = !DILocalVariable(name: "argsize", arg: 4, scope: !1471, file: !144, line: 252, type: !166)
!1483 = !DILocation(line: 252, column: 51, scope: !1471)
!1484 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1471, file: !144, line: 253, type: !146)
!1485 = !DILocation(line: 253, column: 46, scope: !1471)
!1486 = !DILocalVariable(name: "flags", arg: 6, scope: !1471, file: !144, line: 253, type: !25)
!1487 = !DILocation(line: 253, column: 65, scope: !1471)
!1488 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1471, file: !144, line: 254, type: !1474)
!1489 = !DILocation(line: 254, column: 47, scope: !1471)
!1490 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1471, file: !144, line: 255, type: !63)
!1491 = !DILocation(line: 255, column: 39, scope: !1471)
!1492 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1471, file: !144, line: 256, type: !63)
!1493 = !DILocation(line: 256, column: 39, scope: !1471)
!1494 = !DILocalVariable(name: "unibyte_locale", scope: !1471, file: !144, line: 258, type: !89)
!1495 = !DILocation(line: 258, column: 8, scope: !1471)
!1496 = !DILocation(line: 258, column: 25, scope: !1471)
!1497 = !DILocation(line: 258, column: 36, scope: !1471)
!1498 = !DILocalVariable(name: "len", scope: !1471, file: !144, line: 260, type: !166)
!1499 = !DILocation(line: 260, column: 10, scope: !1471)
!1500 = !DILocalVariable(name: "orig_buffersize", scope: !1471, file: !144, line: 261, type: !166)
!1501 = !DILocation(line: 261, column: 10, scope: !1471)
!1502 = !DILocalVariable(name: "quote_string", scope: !1471, file: !144, line: 262, type: !63)
!1503 = !DILocation(line: 262, column: 15, scope: !1471)
!1504 = !DILocalVariable(name: "quote_string_len", scope: !1471, file: !144, line: 263, type: !166)
!1505 = !DILocation(line: 263, column: 10, scope: !1471)
!1506 = !DILocalVariable(name: "backslash_escapes", scope: !1471, file: !144, line: 264, type: !89)
!1507 = !DILocation(line: 264, column: 8, scope: !1471)
!1508 = !DILocalVariable(name: "elide_outer_quotes", scope: !1471, file: !144, line: 265, type: !89)
!1509 = !DILocation(line: 265, column: 8, scope: !1471)
!1510 = !DILocation(line: 265, column: 30, scope: !1471)
!1511 = !DILocation(line: 265, column: 36, scope: !1471)
!1512 = !DILocation(line: 265, column: 61, scope: !1471)
!1513 = !DILocalVariable(name: "encountered_single_quote", scope: !1471, file: !144, line: 266, type: !89)
!1514 = !DILocation(line: 266, column: 8, scope: !1471)
!1515 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1471, file: !144, line: 267, type: !89)
!1516 = !DILocation(line: 267, column: 8, scope: !1471)
!1517 = !DILocation(line: 267, column: 3, scope: !1471)
!1518 = !DILabel(scope: !1471, name: "process_input", file: !144, line: 308)
!1519 = !DILocation(line: 308, column: 2, scope: !1471)
!1520 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1471, file: !144, line: 309, type: !89)
!1521 = !DILocation(line: 309, column: 8, scope: !1471)
!1522 = !DILocation(line: 311, column: 11, scope: !1471)
!1523 = !DILocation(line: 311, column: 3, scope: !1471)
!1524 = !DILocation(line: 314, column: 21, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1471, file: !144, line: 312, column: 5)
!1526 = !DILocation(line: 315, column: 26, scope: !1525)
!1527 = !DILocation(line: 315, column: 7, scope: !1525)
!1528 = !DILocation(line: 318, column: 12, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !144, line: 318, column: 11)
!1530 = !DILocation(line: 318, column: 11, scope: !1525)
!1531 = !DILocation(line: 319, column: 9, scope: !1529)
!1532 = !DILocation(line: 319, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !144, line: 319, column: 9)
!1534 = distinct !DILexicalBlock(scope: !1529, file: !144, line: 319, column: 9)
!1535 = !DILocation(line: 319, column: 9, scope: !1534)
!1536 = !DILocation(line: 320, column: 25, scope: !1525)
!1537 = !DILocation(line: 321, column: 20, scope: !1525)
!1538 = !DILocation(line: 322, column: 24, scope: !1525)
!1539 = !DILocation(line: 323, column: 7, scope: !1525)
!1540 = !DILocation(line: 326, column: 25, scope: !1525)
!1541 = !DILocation(line: 327, column: 26, scope: !1525)
!1542 = !DILocation(line: 328, column: 7, scope: !1525)
!1543 = !DILocation(line: 334, column: 13, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !144, line: 334, column: 13)
!1545 = distinct !DILexicalBlock(scope: !1525, file: !144, line: 333, column: 7)
!1546 = !DILocation(line: 334, column: 27, scope: !1544)
!1547 = !DILocation(line: 334, column: 13, scope: !1545)
!1548 = !DILocation(line: 357, column: 50, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !144, line: 335, column: 11)
!1550 = !DILocation(line: 357, column: 26, scope: !1549)
!1551 = !DILocation(line: 357, column: 24, scope: !1549)
!1552 = !DILocation(line: 358, column: 51, scope: !1549)
!1553 = !DILocation(line: 358, column: 27, scope: !1549)
!1554 = !DILocation(line: 358, column: 25, scope: !1549)
!1555 = !DILocation(line: 359, column: 11, scope: !1549)
!1556 = !DILocation(line: 360, column: 14, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1545, file: !144, line: 360, column: 13)
!1558 = !DILocation(line: 360, column: 13, scope: !1545)
!1559 = !DILocalVariable(name: "lq", scope: !1560, file: !144, line: 361, type: !63)
!1560 = distinct !DILexicalBlock(scope: !1557, file: !144, line: 361, column: 11)
!1561 = !DILocation(line: 361, column: 28, scope: !1560)
!1562 = !DILocation(line: 361, column: 33, scope: !1560)
!1563 = !DILocation(line: 361, column: 16, scope: !1560)
!1564 = !DILocation(line: 361, column: 46, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !144, line: 361, column: 11)
!1566 = !DILocation(line: 361, column: 45, scope: !1565)
!1567 = !DILocation(line: 361, column: 11, scope: !1560)
!1568 = !DILocation(line: 362, column: 13, scope: !1565)
!1569 = !DILocation(line: 362, column: 13, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !144, line: 362, column: 13)
!1571 = distinct !DILexicalBlock(scope: !1565, file: !144, line: 362, column: 13)
!1572 = !DILocation(line: 362, column: 13, scope: !1571)
!1573 = !DILocation(line: 361, column: 52, scope: !1565)
!1574 = !DILocation(line: 361, column: 11, scope: !1565)
!1575 = distinct !{!1575, !1567, !1576, !430}
!1576 = !DILocation(line: 362, column: 13, scope: !1560)
!1577 = !DILocation(line: 363, column: 27, scope: !1545)
!1578 = !DILocation(line: 364, column: 24, scope: !1545)
!1579 = !DILocation(line: 364, column: 22, scope: !1545)
!1580 = !DILocation(line: 365, column: 36, scope: !1545)
!1581 = !DILocation(line: 365, column: 28, scope: !1545)
!1582 = !DILocation(line: 365, column: 26, scope: !1545)
!1583 = !DILocation(line: 367, column: 7, scope: !1525)
!1584 = !DILocation(line: 370, column: 25, scope: !1525)
!1585 = !DILocation(line: 370, column: 7, scope: !1525)
!1586 = !DILocation(line: 373, column: 26, scope: !1525)
!1587 = !DILocation(line: 373, column: 7, scope: !1525)
!1588 = !DILocation(line: 376, column: 12, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1525, file: !144, line: 376, column: 11)
!1590 = !DILocation(line: 376, column: 11, scope: !1525)
!1591 = !DILocation(line: 377, column: 27, scope: !1589)
!1592 = !DILocation(line: 377, column: 9, scope: !1589)
!1593 = !DILocation(line: 380, column: 21, scope: !1525)
!1594 = !DILocation(line: 381, column: 12, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1525, file: !144, line: 381, column: 11)
!1596 = !DILocation(line: 381, column: 11, scope: !1525)
!1597 = !DILocation(line: 382, column: 9, scope: !1595)
!1598 = !DILocation(line: 382, column: 9, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !144, line: 382, column: 9)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !144, line: 382, column: 9)
!1601 = !DILocation(line: 382, column: 9, scope: !1600)
!1602 = !DILocation(line: 383, column: 20, scope: !1525)
!1603 = !DILocation(line: 384, column: 24, scope: !1525)
!1604 = !DILocation(line: 385, column: 7, scope: !1525)
!1605 = !DILocation(line: 388, column: 26, scope: !1525)
!1606 = !DILocation(line: 389, column: 7, scope: !1525)
!1607 = !DILocation(line: 392, column: 7, scope: !1525)
!1608 = !DILocalVariable(name: "i", scope: !1609, file: !144, line: 395, type: !166)
!1609 = distinct !DILexicalBlock(scope: !1471, file: !144, line: 395, column: 3)
!1610 = !DILocation(line: 395, column: 15, scope: !1609)
!1611 = !DILocation(line: 395, column: 8, scope: !1609)
!1612 = !DILocation(line: 395, column: 26, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !144, line: 395, column: 3)
!1614 = !DILocation(line: 395, column: 34, scope: !1613)
!1615 = !DILocation(line: 395, column: 48, scope: !1613)
!1616 = !DILocation(line: 395, column: 52, scope: !1613)
!1617 = !DILocation(line: 395, column: 55, scope: !1613)
!1618 = !DILocation(line: 395, column: 65, scope: !1613)
!1619 = !DILocation(line: 395, column: 70, scope: !1613)
!1620 = !DILocation(line: 395, column: 67, scope: !1613)
!1621 = !DILocation(line: 395, column: 23, scope: !1613)
!1622 = !DILocation(line: 395, column: 3, scope: !1609)
!1623 = !DILocalVariable(name: "is_right_quote", scope: !1624, file: !144, line: 397, type: !89)
!1624 = distinct !DILexicalBlock(scope: !1613, file: !144, line: 396, column: 5)
!1625 = !DILocation(line: 397, column: 12, scope: !1624)
!1626 = !DILocalVariable(name: "escaping", scope: !1624, file: !144, line: 398, type: !89)
!1627 = !DILocation(line: 398, column: 12, scope: !1624)
!1628 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1624, file: !144, line: 399, type: !89)
!1629 = !DILocation(line: 399, column: 12, scope: !1624)
!1630 = !DILocation(line: 401, column: 11, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1624, file: !144, line: 401, column: 11)
!1632 = !DILocation(line: 402, column: 11, scope: !1631)
!1633 = !DILocation(line: 402, column: 14, scope: !1631)
!1634 = !DILocation(line: 402, column: 28, scope: !1631)
!1635 = !DILocation(line: 403, column: 11, scope: !1631)
!1636 = !DILocation(line: 403, column: 14, scope: !1631)
!1637 = !DILocation(line: 404, column: 11, scope: !1631)
!1638 = !DILocation(line: 404, column: 15, scope: !1631)
!1639 = !DILocation(line: 404, column: 19, scope: !1631)
!1640 = !DILocation(line: 404, column: 17, scope: !1631)
!1641 = !DILocation(line: 405, column: 19, scope: !1631)
!1642 = !DILocation(line: 405, column: 27, scope: !1631)
!1643 = !DILocation(line: 405, column: 39, scope: !1631)
!1644 = !DILocation(line: 405, column: 46, scope: !1631)
!1645 = !DILocation(line: 405, column: 44, scope: !1631)
!1646 = !DILocation(line: 409, column: 40, scope: !1631)
!1647 = !DILocation(line: 409, column: 32, scope: !1631)
!1648 = !DILocation(line: 409, column: 30, scope: !1631)
!1649 = !DILocation(line: 409, column: 48, scope: !1631)
!1650 = !DILocation(line: 405, column: 15, scope: !1631)
!1651 = !DILocation(line: 410, column: 11, scope: !1631)
!1652 = !DILocation(line: 410, column: 21, scope: !1631)
!1653 = !DILocation(line: 410, column: 27, scope: !1631)
!1654 = !DILocation(line: 410, column: 25, scope: !1631)
!1655 = !DILocation(line: 410, column: 30, scope: !1631)
!1656 = !DILocation(line: 410, column: 44, scope: !1631)
!1657 = !DILocation(line: 410, column: 14, scope: !1631)
!1658 = !DILocation(line: 401, column: 11, scope: !1624)
!1659 = !DILocation(line: 412, column: 15, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !144, line: 412, column: 15)
!1661 = distinct !DILexicalBlock(scope: !1631, file: !144, line: 411, column: 9)
!1662 = !DILocation(line: 412, column: 15, scope: !1661)
!1663 = !DILocation(line: 413, column: 13, scope: !1660)
!1664 = !DILocation(line: 414, column: 26, scope: !1661)
!1665 = !DILocation(line: 415, column: 9, scope: !1661)
!1666 = !DILocalVariable(name: "c", scope: !1624, file: !144, line: 417, type: !236)
!1667 = !DILocation(line: 417, column: 21, scope: !1624)
!1668 = !DILocation(line: 417, column: 25, scope: !1624)
!1669 = !DILocation(line: 417, column: 29, scope: !1624)
!1670 = !DILocation(line: 418, column: 15, scope: !1624)
!1671 = !DILocation(line: 418, column: 7, scope: !1624)
!1672 = !DILocation(line: 421, column: 15, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !144, line: 421, column: 15)
!1674 = distinct !DILexicalBlock(scope: !1624, file: !144, line: 419, column: 9)
!1675 = !DILocation(line: 421, column: 15, scope: !1674)
!1676 = !DILocation(line: 423, column: 15, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !144, line: 422, column: 13)
!1678 = !DILocation(line: 423, column: 15, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !144, line: 423, column: 15)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !144, line: 423, column: 15)
!1681 = !DILocation(line: 423, column: 15, scope: !1680)
!1682 = !DILocation(line: 423, column: 15, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1680, file: !144, line: 423, column: 15)
!1684 = !DILocation(line: 423, column: 15, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1683, file: !144, line: 423, column: 15)
!1686 = !DILocation(line: 423, column: 15, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !144, line: 423, column: 15)
!1688 = distinct !DILexicalBlock(scope: !1685, file: !144, line: 423, column: 15)
!1689 = !DILocation(line: 423, column: 15, scope: !1688)
!1690 = !DILocation(line: 423, column: 15, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !144, line: 423, column: 15)
!1692 = distinct !DILexicalBlock(scope: !1685, file: !144, line: 423, column: 15)
!1693 = !DILocation(line: 423, column: 15, scope: !1692)
!1694 = !DILocation(line: 423, column: 15, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !144, line: 423, column: 15)
!1696 = distinct !DILexicalBlock(scope: !1685, file: !144, line: 423, column: 15)
!1697 = !DILocation(line: 423, column: 15, scope: !1696)
!1698 = !DILocation(line: 423, column: 15, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !144, line: 423, column: 15)
!1700 = distinct !DILexicalBlock(scope: !1680, file: !144, line: 423, column: 15)
!1701 = !DILocation(line: 423, column: 15, scope: !1700)
!1702 = !DILocation(line: 430, column: 19, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1677, file: !144, line: 430, column: 19)
!1704 = !DILocation(line: 430, column: 33, scope: !1703)
!1705 = !DILocation(line: 431, column: 19, scope: !1703)
!1706 = !DILocation(line: 431, column: 22, scope: !1703)
!1707 = !DILocation(line: 431, column: 24, scope: !1703)
!1708 = !DILocation(line: 431, column: 30, scope: !1703)
!1709 = !DILocation(line: 431, column: 28, scope: !1703)
!1710 = !DILocation(line: 431, column: 38, scope: !1703)
!1711 = !DILocation(line: 431, column: 48, scope: !1703)
!1712 = !DILocation(line: 431, column: 52, scope: !1703)
!1713 = !DILocation(line: 431, column: 54, scope: !1703)
!1714 = !DILocation(line: 431, column: 45, scope: !1703)
!1715 = !DILocation(line: 431, column: 59, scope: !1703)
!1716 = !DILocation(line: 431, column: 62, scope: !1703)
!1717 = !DILocation(line: 431, column: 66, scope: !1703)
!1718 = !DILocation(line: 431, column: 68, scope: !1703)
!1719 = !DILocation(line: 431, column: 73, scope: !1703)
!1720 = !DILocation(line: 430, column: 19, scope: !1677)
!1721 = !DILocation(line: 433, column: 19, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1703, file: !144, line: 432, column: 17)
!1723 = !DILocation(line: 433, column: 19, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !144, line: 433, column: 19)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !144, line: 433, column: 19)
!1726 = !DILocation(line: 433, column: 19, scope: !1725)
!1727 = !DILocation(line: 434, column: 19, scope: !1722)
!1728 = !DILocation(line: 434, column: 19, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !144, line: 434, column: 19)
!1730 = distinct !DILexicalBlock(scope: !1722, file: !144, line: 434, column: 19)
!1731 = !DILocation(line: 434, column: 19, scope: !1730)
!1732 = !DILocation(line: 435, column: 17, scope: !1722)
!1733 = !DILocation(line: 436, column: 17, scope: !1677)
!1734 = !DILocation(line: 441, column: 13, scope: !1677)
!1735 = !DILocation(line: 442, column: 20, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1673, file: !144, line: 442, column: 20)
!1737 = !DILocation(line: 442, column: 26, scope: !1736)
!1738 = !DILocation(line: 442, column: 20, scope: !1673)
!1739 = !DILocation(line: 443, column: 13, scope: !1736)
!1740 = !DILocation(line: 444, column: 11, scope: !1674)
!1741 = !DILocation(line: 447, column: 20, scope: !1674)
!1742 = !DILocation(line: 447, column: 11, scope: !1674)
!1743 = !DILocation(line: 450, column: 19, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !144, line: 450, column: 19)
!1745 = distinct !DILexicalBlock(scope: !1674, file: !144, line: 448, column: 13)
!1746 = !DILocation(line: 450, column: 19, scope: !1745)
!1747 = !DILocation(line: 451, column: 17, scope: !1744)
!1748 = !DILocation(line: 452, column: 15, scope: !1745)
!1749 = !DILocation(line: 455, column: 20, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !144, line: 455, column: 19)
!1751 = !DILocation(line: 455, column: 26, scope: !1750)
!1752 = !DILocation(line: 456, column: 19, scope: !1750)
!1753 = !DILocation(line: 456, column: 22, scope: !1750)
!1754 = !DILocation(line: 456, column: 24, scope: !1750)
!1755 = !DILocation(line: 456, column: 30, scope: !1750)
!1756 = !DILocation(line: 456, column: 28, scope: !1750)
!1757 = !DILocation(line: 456, column: 38, scope: !1750)
!1758 = !DILocation(line: 456, column: 41, scope: !1750)
!1759 = !DILocation(line: 456, column: 45, scope: !1750)
!1760 = !DILocation(line: 456, column: 47, scope: !1750)
!1761 = !DILocation(line: 456, column: 52, scope: !1750)
!1762 = !DILocation(line: 455, column: 19, scope: !1745)
!1763 = !DILocation(line: 457, column: 25, scope: !1750)
!1764 = !DILocation(line: 457, column: 29, scope: !1750)
!1765 = !DILocation(line: 457, column: 31, scope: !1750)
!1766 = !DILocation(line: 457, column: 17, scope: !1750)
!1767 = !DILocation(line: 464, column: 25, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !144, line: 464, column: 25)
!1769 = distinct !DILexicalBlock(scope: !1750, file: !144, line: 458, column: 19)
!1770 = !DILocation(line: 464, column: 25, scope: !1769)
!1771 = !DILocation(line: 465, column: 23, scope: !1768)
!1772 = !DILocation(line: 466, column: 25, scope: !1769)
!1773 = !DILocation(line: 466, column: 29, scope: !1769)
!1774 = !DILocation(line: 466, column: 31, scope: !1769)
!1775 = !DILocation(line: 466, column: 23, scope: !1769)
!1776 = !DILocation(line: 467, column: 23, scope: !1769)
!1777 = !DILocation(line: 468, column: 21, scope: !1769)
!1778 = !DILocation(line: 468, column: 21, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !144, line: 468, column: 21)
!1780 = distinct !DILexicalBlock(scope: !1769, file: !144, line: 468, column: 21)
!1781 = !DILocation(line: 468, column: 21, scope: !1780)
!1782 = !DILocation(line: 469, column: 21, scope: !1769)
!1783 = !DILocation(line: 469, column: 21, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !144, line: 469, column: 21)
!1785 = distinct !DILexicalBlock(scope: !1769, file: !144, line: 469, column: 21)
!1786 = !DILocation(line: 469, column: 21, scope: !1785)
!1787 = !DILocation(line: 470, column: 21, scope: !1769)
!1788 = !DILocation(line: 470, column: 21, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !144, line: 470, column: 21)
!1790 = distinct !DILexicalBlock(scope: !1769, file: !144, line: 470, column: 21)
!1791 = !DILocation(line: 470, column: 21, scope: !1790)
!1792 = !DILocation(line: 471, column: 21, scope: !1769)
!1793 = !DILocation(line: 471, column: 21, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !144, line: 471, column: 21)
!1795 = distinct !DILexicalBlock(scope: !1769, file: !144, line: 471, column: 21)
!1796 = !DILocation(line: 471, column: 21, scope: !1795)
!1797 = !DILocation(line: 472, column: 21, scope: !1769)
!1798 = !DILocation(line: 473, column: 19, scope: !1769)
!1799 = !DILocation(line: 474, column: 15, scope: !1745)
!1800 = !DILocation(line: 476, column: 11, scope: !1674)
!1801 = !DILocation(line: 481, column: 26, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1674, file: !144, line: 478, column: 9)
!1803 = !DILocation(line: 481, column: 33, scope: !1802)
!1804 = !DILocation(line: 482, column: 26, scope: !1802)
!1805 = !DILocation(line: 482, column: 33, scope: !1802)
!1806 = !DILocation(line: 483, column: 26, scope: !1802)
!1807 = !DILocation(line: 483, column: 33, scope: !1802)
!1808 = !DILocation(line: 484, column: 26, scope: !1802)
!1809 = !DILocation(line: 484, column: 33, scope: !1802)
!1810 = !DILocation(line: 485, column: 26, scope: !1802)
!1811 = !DILocation(line: 485, column: 33, scope: !1802)
!1812 = !DILocation(line: 486, column: 26, scope: !1802)
!1813 = !DILocation(line: 486, column: 33, scope: !1802)
!1814 = !DILocation(line: 487, column: 26, scope: !1802)
!1815 = !DILocation(line: 487, column: 33, scope: !1802)
!1816 = !DILocation(line: 488, column: 28, scope: !1802)
!1817 = !DILocation(line: 488, column: 26, scope: !1802)
!1818 = !DILocation(line: 490, column: 17, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1802, file: !144, line: 490, column: 17)
!1820 = !DILocation(line: 490, column: 31, scope: !1819)
!1821 = !DILocation(line: 490, column: 17, scope: !1802)
!1822 = !DILocation(line: 492, column: 21, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !144, line: 492, column: 21)
!1824 = distinct !DILexicalBlock(scope: !1819, file: !144, line: 491, column: 15)
!1825 = !DILocation(line: 492, column: 21, scope: !1824)
!1826 = !DILocation(line: 493, column: 19, scope: !1823)
!1827 = !DILocation(line: 494, column: 17, scope: !1824)
!1828 = !DILocation(line: 499, column: 17, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1802, file: !144, line: 499, column: 17)
!1830 = !DILocation(line: 499, column: 35, scope: !1829)
!1831 = !DILocation(line: 499, column: 38, scope: !1829)
!1832 = !DILocation(line: 499, column: 57, scope: !1829)
!1833 = !DILocation(line: 499, column: 60, scope: !1829)
!1834 = !DILocation(line: 499, column: 17, scope: !1802)
!1835 = !DILocation(line: 500, column: 15, scope: !1829)
!1836 = !DILabel(scope: !1802, name: "c_and_shell_escape", file: !144, line: 502)
!1837 = !DILocation(line: 502, column: 11, scope: !1802)
!1838 = !DILocation(line: 503, column: 17, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1802, file: !144, line: 503, column: 17)
!1840 = !DILocation(line: 503, column: 31, scope: !1839)
!1841 = !DILocation(line: 504, column: 17, scope: !1839)
!1842 = !DILocation(line: 504, column: 20, scope: !1839)
!1843 = !DILocation(line: 503, column: 17, scope: !1802)
!1844 = !DILocation(line: 505, column: 15, scope: !1839)
!1845 = !DILabel(scope: !1802, name: "c_escape", file: !144, line: 507)
!1846 = !DILocation(line: 507, column: 11, scope: !1802)
!1847 = !DILocation(line: 508, column: 17, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1802, file: !144, line: 508, column: 17)
!1849 = !DILocation(line: 508, column: 17, scope: !1802)
!1850 = !DILocation(line: 510, column: 21, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !144, line: 509, column: 15)
!1852 = !DILocation(line: 510, column: 19, scope: !1851)
!1853 = !DILocation(line: 511, column: 17, scope: !1851)
!1854 = !DILocation(line: 513, column: 13, scope: !1802)
!1855 = !DILocation(line: 517, column: 18, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1674, file: !144, line: 517, column: 15)
!1857 = !DILocation(line: 517, column: 26, scope: !1856)
!1858 = !DILocation(line: 517, column: 15, scope: !1674)
!1859 = !DILocation(line: 517, column: 40, scope: !1856)
!1860 = !DILocation(line: 517, column: 47, scope: !1856)
!1861 = !DILocation(line: 517, column: 57, scope: !1856)
!1862 = !DILocation(line: 517, column: 65, scope: !1856)
!1863 = !DILocation(line: 518, column: 13, scope: !1856)
!1864 = !DILocation(line: 517, column: 69, scope: !1856)
!1865 = !DILocation(line: 521, column: 15, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1674, file: !144, line: 521, column: 15)
!1867 = !DILocation(line: 521, column: 17, scope: !1866)
!1868 = !DILocation(line: 521, column: 15, scope: !1674)
!1869 = !DILocation(line: 522, column: 13, scope: !1866)
!1870 = !DILocation(line: 521, column: 20, scope: !1866)
!1871 = !DILocation(line: 525, column: 36, scope: !1674)
!1872 = !DILocation(line: 525, column: 11, scope: !1674)
!1873 = !DILocation(line: 536, column: 15, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1674, file: !144, line: 536, column: 15)
!1875 = !DILocation(line: 536, column: 29, scope: !1874)
!1876 = !DILocation(line: 537, column: 15, scope: !1874)
!1877 = !DILocation(line: 537, column: 18, scope: !1874)
!1878 = !DILocation(line: 536, column: 15, scope: !1674)
!1879 = !DILocation(line: 538, column: 13, scope: !1874)
!1880 = !DILocation(line: 539, column: 11, scope: !1674)
!1881 = !DILocation(line: 542, column: 36, scope: !1674)
!1882 = !DILocation(line: 543, column: 36, scope: !1674)
!1883 = !DILocation(line: 544, column: 15, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1674, file: !144, line: 544, column: 15)
!1885 = !DILocation(line: 544, column: 29, scope: !1884)
!1886 = !DILocation(line: 544, column: 15, scope: !1674)
!1887 = !DILocation(line: 546, column: 19, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !144, line: 546, column: 19)
!1889 = distinct !DILexicalBlock(scope: !1884, file: !144, line: 545, column: 13)
!1890 = !DILocation(line: 546, column: 19, scope: !1889)
!1891 = !DILocation(line: 547, column: 17, scope: !1888)
!1892 = !DILocation(line: 549, column: 19, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !144, line: 549, column: 19)
!1894 = !DILocation(line: 549, column: 30, scope: !1893)
!1895 = !DILocation(line: 549, column: 35, scope: !1893)
!1896 = !DILocation(line: 549, column: 19, scope: !1889)
!1897 = !DILocation(line: 554, column: 37, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1893, file: !144, line: 550, column: 17)
!1899 = !DILocation(line: 554, column: 35, scope: !1898)
!1900 = !DILocation(line: 555, column: 30, scope: !1898)
!1901 = !DILocation(line: 556, column: 17, scope: !1898)
!1902 = !DILocation(line: 558, column: 15, scope: !1889)
!1903 = !DILocation(line: 558, column: 15, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !144, line: 558, column: 15)
!1905 = distinct !DILexicalBlock(scope: !1889, file: !144, line: 558, column: 15)
!1906 = !DILocation(line: 558, column: 15, scope: !1905)
!1907 = !DILocation(line: 559, column: 15, scope: !1889)
!1908 = !DILocation(line: 559, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !144, line: 559, column: 15)
!1910 = distinct !DILexicalBlock(scope: !1889, file: !144, line: 559, column: 15)
!1911 = !DILocation(line: 559, column: 15, scope: !1910)
!1912 = !DILocation(line: 560, column: 15, scope: !1889)
!1913 = !DILocation(line: 560, column: 15, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !144, line: 560, column: 15)
!1915 = distinct !DILexicalBlock(scope: !1889, file: !144, line: 560, column: 15)
!1916 = !DILocation(line: 560, column: 15, scope: !1915)
!1917 = !DILocation(line: 561, column: 40, scope: !1889)
!1918 = !DILocation(line: 562, column: 13, scope: !1889)
!1919 = !DILocation(line: 563, column: 11, scope: !1674)
!1920 = !DILocation(line: 587, column: 36, scope: !1674)
!1921 = !DILocation(line: 588, column: 11, scope: !1674)
!1922 = !DILocalVariable(name: "m", scope: !1923, file: !144, line: 598, type: !166)
!1923 = distinct !DILexicalBlock(scope: !1674, file: !144, line: 596, column: 11)
!1924 = !DILocation(line: 598, column: 20, scope: !1923)
!1925 = !DILocalVariable(name: "printable", scope: !1923, file: !144, line: 600, type: !89)
!1926 = !DILocation(line: 600, column: 18, scope: !1923)
!1927 = !DILocation(line: 602, column: 17, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !144, line: 602, column: 17)
!1929 = !DILocation(line: 602, column: 17, scope: !1923)
!1930 = !DILocation(line: 604, column: 19, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1928, file: !144, line: 603, column: 15)
!1932 = !DILocation(line: 605, column: 29, scope: !1931)
!1933 = !DILocation(line: 605, column: 41, scope: !1931)
!1934 = !DILocation(line: 605, column: 27, scope: !1931)
!1935 = !DILocation(line: 606, column: 15, scope: !1931)
!1936 = !DILocalVariable(name: "mbs", scope: !1937, file: !144, line: 609, type: !1938)
!1937 = distinct !DILexicalBlock(scope: !1928, file: !144, line: 608, column: 15)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !239, line: 6, baseType: !1939)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !241, line: 21, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 13, size: 64, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1940, file: !241, line: 15, baseType: !25, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1940, file: !241, line: 20, baseType: !1944, size: 32, offset: 32)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !241, line: 16, size: 32, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1944, file: !241, line: 18, baseType: !7, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1944, file: !241, line: 19, baseType: !250, size: 32)
!1948 = !DILocation(line: 609, column: 27, scope: !1937)
!1949 = !DILocation(line: 609, column: 32, scope: !1937)
!1950 = !DILocation(line: 611, column: 19, scope: !1937)
!1951 = !DILocation(line: 612, column: 27, scope: !1937)
!1952 = !DILocation(line: 613, column: 21, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1937, file: !144, line: 613, column: 21)
!1954 = !DILocation(line: 613, column: 29, scope: !1953)
!1955 = !DILocation(line: 613, column: 21, scope: !1937)
!1956 = !DILocation(line: 614, column: 37, scope: !1953)
!1957 = !DILocation(line: 614, column: 29, scope: !1953)
!1958 = !DILocation(line: 614, column: 27, scope: !1953)
!1959 = !DILocation(line: 614, column: 19, scope: !1953)
!1960 = !DILocation(line: 616, column: 17, scope: !1937)
!1961 = !DILocalVariable(name: "w", scope: !1962, file: !144, line: 618, type: !1258)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !144, line: 617, column: 19)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !144, line: 616, column: 17)
!1964 = distinct !DILexicalBlock(scope: !1937, file: !144, line: 616, column: 17)
!1965 = !DILocation(line: 618, column: 30, scope: !1962)
!1966 = !DILocalVariable(name: "bytes", scope: !1962, file: !144, line: 619, type: !166)
!1967 = !DILocation(line: 619, column: 28, scope: !1962)
!1968 = !DILocation(line: 619, column: 51, scope: !1962)
!1969 = !DILocation(line: 619, column: 55, scope: !1962)
!1970 = !DILocation(line: 619, column: 59, scope: !1962)
!1971 = !DILocation(line: 619, column: 57, scope: !1962)
!1972 = !DILocation(line: 620, column: 46, scope: !1962)
!1973 = !DILocation(line: 620, column: 57, scope: !1962)
!1974 = !DILocation(line: 620, column: 61, scope: !1962)
!1975 = !DILocation(line: 620, column: 59, scope: !1962)
!1976 = !DILocation(line: 620, column: 54, scope: !1962)
!1977 = !DILocation(line: 619, column: 36, scope: !1962)
!1978 = !DILocation(line: 621, column: 25, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1962, file: !144, line: 621, column: 25)
!1980 = !DILocation(line: 621, column: 31, scope: !1979)
!1981 = !DILocation(line: 621, column: 25, scope: !1962)
!1982 = !DILocation(line: 622, column: 23, scope: !1979)
!1983 = !DILocation(line: 623, column: 30, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1979, file: !144, line: 623, column: 30)
!1985 = !DILocation(line: 623, column: 36, scope: !1984)
!1986 = !DILocation(line: 623, column: 30, scope: !1979)
!1987 = !DILocation(line: 625, column: 35, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !144, line: 624, column: 23)
!1989 = !DILocation(line: 626, column: 25, scope: !1988)
!1990 = !DILocation(line: 628, column: 30, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1984, file: !144, line: 628, column: 30)
!1992 = !DILocation(line: 628, column: 36, scope: !1991)
!1993 = !DILocation(line: 628, column: 30, scope: !1984)
!1994 = !DILocation(line: 630, column: 35, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !144, line: 629, column: 23)
!1996 = !DILocation(line: 631, column: 25, scope: !1995)
!1997 = !DILocation(line: 631, column: 32, scope: !1995)
!1998 = !DILocation(line: 631, column: 36, scope: !1995)
!1999 = !DILocation(line: 631, column: 34, scope: !1995)
!2000 = !DILocation(line: 631, column: 40, scope: !1995)
!2001 = !DILocation(line: 631, column: 38, scope: !1995)
!2002 = !DILocation(line: 631, column: 48, scope: !1995)
!2003 = !DILocation(line: 631, column: 51, scope: !1995)
!2004 = !DILocation(line: 631, column: 55, scope: !1995)
!2005 = !DILocation(line: 631, column: 59, scope: !1995)
!2006 = !DILocation(line: 631, column: 57, scope: !1995)
!2007 = !DILocation(line: 0, scope: !1995)
!2008 = !DILocation(line: 632, column: 28, scope: !1995)
!2009 = distinct !{!2009, !1996, !2008, !430}
!2010 = !DILocation(line: 633, column: 25, scope: !1995)
!2011 = !DILocation(line: 645, column: 44, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !144, line: 645, column: 29)
!2013 = distinct !DILexicalBlock(scope: !1991, file: !144, line: 636, column: 23)
!2014 = !DILocation(line: 646, column: 29, scope: !2012)
!2015 = !DILocation(line: 646, column: 32, scope: !2012)
!2016 = !DILocation(line: 646, column: 46, scope: !2012)
!2017 = !DILocation(line: 645, column: 29, scope: !2013)
!2018 = !DILocalVariable(name: "j", scope: !2019, file: !144, line: 648, type: !166)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !144, line: 648, column: 29)
!2020 = distinct !DILexicalBlock(scope: !2012, file: !144, line: 647, column: 27)
!2021 = !DILocation(line: 648, column: 41, scope: !2019)
!2022 = !DILocation(line: 648, column: 34, scope: !2019)
!2023 = !DILocation(line: 648, column: 48, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !144, line: 648, column: 29)
!2025 = !DILocation(line: 648, column: 52, scope: !2024)
!2026 = !DILocation(line: 648, column: 50, scope: !2024)
!2027 = !DILocation(line: 648, column: 29, scope: !2019)
!2028 = !DILocation(line: 649, column: 39, scope: !2024)
!2029 = !DILocation(line: 649, column: 43, scope: !2024)
!2030 = !DILocation(line: 649, column: 47, scope: !2024)
!2031 = !DILocation(line: 649, column: 45, scope: !2024)
!2032 = !DILocation(line: 649, column: 51, scope: !2024)
!2033 = !DILocation(line: 649, column: 49, scope: !2024)
!2034 = !DILocation(line: 649, column: 31, scope: !2024)
!2035 = !DILocation(line: 653, column: 35, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2024, file: !144, line: 650, column: 33)
!2037 = !DILocation(line: 654, column: 33, scope: !2036)
!2038 = !DILocation(line: 648, column: 60, scope: !2024)
!2039 = !DILocation(line: 648, column: 29, scope: !2024)
!2040 = distinct !{!2040, !2027, !2041, !430}
!2041 = !DILocation(line: 654, column: 33, scope: !2019)
!2042 = !DILocation(line: 655, column: 27, scope: !2020)
!2043 = !DILocation(line: 657, column: 43, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2013, file: !144, line: 657, column: 29)
!2045 = !DILocation(line: 657, column: 31, scope: !2044)
!2046 = !DILocation(line: 657, column: 29, scope: !2013)
!2047 = !DILocation(line: 658, column: 37, scope: !2044)
!2048 = !DILocation(line: 658, column: 27, scope: !2044)
!2049 = !DILocation(line: 659, column: 30, scope: !2013)
!2050 = !DILocation(line: 659, column: 27, scope: !2013)
!2051 = !DILocation(line: 664, column: 23, scope: !1962)
!2052 = !DILocation(line: 668, column: 40, scope: !1923)
!2053 = !DILocation(line: 668, column: 38, scope: !1923)
!2054 = !DILocation(line: 670, column: 21, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1923, file: !144, line: 670, column: 17)
!2056 = !DILocation(line: 670, column: 19, scope: !2055)
!2057 = !DILocation(line: 670, column: 23, scope: !2055)
!2058 = !DILocation(line: 670, column: 27, scope: !2055)
!2059 = !DILocation(line: 670, column: 45, scope: !2055)
!2060 = !DILocation(line: 670, column: 50, scope: !2055)
!2061 = !DILocation(line: 670, column: 17, scope: !1923)
!2062 = !DILocalVariable(name: "ilim", scope: !2063, file: !144, line: 674, type: !166)
!2063 = distinct !DILexicalBlock(scope: !2055, file: !144, line: 671, column: 15)
!2064 = !DILocation(line: 674, column: 24, scope: !2063)
!2065 = !DILocation(line: 674, column: 31, scope: !2063)
!2066 = !DILocation(line: 674, column: 35, scope: !2063)
!2067 = !DILocation(line: 674, column: 33, scope: !2063)
!2068 = !DILocation(line: 676, column: 17, scope: !2063)
!2069 = !DILocation(line: 678, column: 25, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !144, line: 678, column: 25)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !144, line: 677, column: 19)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !144, line: 676, column: 17)
!2073 = distinct !DILexicalBlock(scope: !2063, file: !144, line: 676, column: 17)
!2074 = !DILocation(line: 678, column: 43, scope: !2070)
!2075 = !DILocation(line: 678, column: 48, scope: !2070)
!2076 = !DILocation(line: 678, column: 25, scope: !2071)
!2077 = !DILocation(line: 680, column: 25, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2070, file: !144, line: 679, column: 23)
!2079 = !DILocation(line: 680, column: 25, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !144, line: 680, column: 25)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !144, line: 680, column: 25)
!2082 = !DILocation(line: 680, column: 25, scope: !2081)
!2083 = !DILocation(line: 680, column: 25, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2081, file: !144, line: 680, column: 25)
!2085 = !DILocation(line: 680, column: 25, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2084, file: !144, line: 680, column: 25)
!2087 = !DILocation(line: 680, column: 25, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !144, line: 680, column: 25)
!2089 = distinct !DILexicalBlock(scope: !2086, file: !144, line: 680, column: 25)
!2090 = !DILocation(line: 680, column: 25, scope: !2089)
!2091 = !DILocation(line: 680, column: 25, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !144, line: 680, column: 25)
!2093 = distinct !DILexicalBlock(scope: !2086, file: !144, line: 680, column: 25)
!2094 = !DILocation(line: 680, column: 25, scope: !2093)
!2095 = !DILocation(line: 680, column: 25, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !144, line: 680, column: 25)
!2097 = distinct !DILexicalBlock(scope: !2086, file: !144, line: 680, column: 25)
!2098 = !DILocation(line: 680, column: 25, scope: !2097)
!2099 = !DILocation(line: 680, column: 25, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !144, line: 680, column: 25)
!2101 = distinct !DILexicalBlock(scope: !2081, file: !144, line: 680, column: 25)
!2102 = !DILocation(line: 680, column: 25, scope: !2101)
!2103 = !DILocation(line: 681, column: 25, scope: !2078)
!2104 = !DILocation(line: 681, column: 25, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !144, line: 681, column: 25)
!2106 = distinct !DILexicalBlock(scope: !2078, file: !144, line: 681, column: 25)
!2107 = !DILocation(line: 681, column: 25, scope: !2106)
!2108 = !DILocation(line: 682, column: 25, scope: !2078)
!2109 = !DILocation(line: 682, column: 25, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !144, line: 682, column: 25)
!2111 = distinct !DILexicalBlock(scope: !2078, file: !144, line: 682, column: 25)
!2112 = !DILocation(line: 682, column: 25, scope: !2111)
!2113 = !DILocation(line: 683, column: 36, scope: !2078)
!2114 = !DILocation(line: 683, column: 38, scope: !2078)
!2115 = !DILocation(line: 683, column: 33, scope: !2078)
!2116 = !DILocation(line: 683, column: 29, scope: !2078)
!2117 = !DILocation(line: 683, column: 27, scope: !2078)
!2118 = !DILocation(line: 684, column: 23, scope: !2078)
!2119 = !DILocation(line: 685, column: 30, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2070, file: !144, line: 685, column: 30)
!2121 = !DILocation(line: 685, column: 30, scope: !2070)
!2122 = !DILocation(line: 687, column: 25, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2120, file: !144, line: 686, column: 23)
!2124 = !DILocation(line: 687, column: 25, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !144, line: 687, column: 25)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !144, line: 687, column: 25)
!2127 = !DILocation(line: 687, column: 25, scope: !2126)
!2128 = !DILocation(line: 688, column: 40, scope: !2123)
!2129 = !DILocation(line: 689, column: 23, scope: !2123)
!2130 = !DILocation(line: 690, column: 25, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2071, file: !144, line: 690, column: 25)
!2132 = !DILocation(line: 690, column: 33, scope: !2131)
!2133 = !DILocation(line: 690, column: 35, scope: !2131)
!2134 = !DILocation(line: 690, column: 30, scope: !2131)
!2135 = !DILocation(line: 690, column: 25, scope: !2071)
!2136 = !DILocation(line: 691, column: 23, scope: !2131)
!2137 = !DILocation(line: 692, column: 21, scope: !2071)
!2138 = !DILocation(line: 692, column: 21, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !144, line: 692, column: 21)
!2140 = distinct !DILexicalBlock(scope: !2071, file: !144, line: 692, column: 21)
!2141 = !DILocation(line: 692, column: 21, scope: !2140)
!2142 = !DILocation(line: 692, column: 21, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2139, file: !144, line: 692, column: 21)
!2144 = !DILocation(line: 692, column: 21, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !144, line: 692, column: 21)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !144, line: 692, column: 21)
!2147 = !DILocation(line: 692, column: 21, scope: !2146)
!2148 = !DILocation(line: 692, column: 21, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !144, line: 692, column: 21)
!2150 = distinct !DILexicalBlock(scope: !2143, file: !144, line: 692, column: 21)
!2151 = !DILocation(line: 692, column: 21, scope: !2150)
!2152 = !DILocation(line: 693, column: 21, scope: !2071)
!2153 = !DILocation(line: 693, column: 21, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !144, line: 693, column: 21)
!2155 = distinct !DILexicalBlock(scope: !2071, file: !144, line: 693, column: 21)
!2156 = !DILocation(line: 693, column: 21, scope: !2155)
!2157 = !DILocation(line: 694, column: 25, scope: !2071)
!2158 = !DILocation(line: 694, column: 29, scope: !2071)
!2159 = !DILocation(line: 694, column: 23, scope: !2071)
!2160 = !DILocation(line: 676, column: 17, scope: !2072)
!2161 = distinct !{!2161, !2162, !2163}
!2162 = !DILocation(line: 676, column: 17, scope: !2073)
!2163 = !DILocation(line: 695, column: 19, scope: !2073)
!2164 = !DILocation(line: 697, column: 17, scope: !2063)
!2165 = !DILocation(line: 700, column: 9, scope: !1674)
!2166 = !DILocation(line: 702, column: 16, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !1624, file: !144, line: 702, column: 11)
!2168 = !DILocation(line: 702, column: 34, scope: !2167)
!2169 = !DILocation(line: 702, column: 37, scope: !2167)
!2170 = !DILocation(line: 702, column: 51, scope: !2167)
!2171 = !DILocation(line: 703, column: 15, scope: !2167)
!2172 = !DILocation(line: 703, column: 18, scope: !2167)
!2173 = !DILocation(line: 704, column: 14, scope: !2167)
!2174 = !DILocation(line: 704, column: 17, scope: !2167)
!2175 = !DILocation(line: 705, column: 14, scope: !2167)
!2176 = !DILocation(line: 705, column: 17, scope: !2167)
!2177 = !DILocation(line: 705, column: 33, scope: !2167)
!2178 = !DILocation(line: 705, column: 35, scope: !2167)
!2179 = !DILocation(line: 705, column: 51, scope: !2167)
!2180 = !DILocation(line: 705, column: 53, scope: !2167)
!2181 = !DILocation(line: 705, column: 47, scope: !2167)
!2182 = !DILocation(line: 705, column: 65, scope: !2167)
!2183 = !DILocation(line: 706, column: 11, scope: !2167)
!2184 = !DILocation(line: 706, column: 15, scope: !2167)
!2185 = !DILocation(line: 702, column: 11, scope: !1624)
!2186 = !DILocation(line: 707, column: 9, scope: !2167)
!2187 = !DILabel(scope: !1624, name: "store_escape", file: !144, line: 709)
!2188 = !DILocation(line: 709, column: 5, scope: !1624)
!2189 = !DILocation(line: 710, column: 7, scope: !1624)
!2190 = !DILocation(line: 710, column: 7, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !144, line: 710, column: 7)
!2192 = distinct !DILexicalBlock(scope: !1624, file: !144, line: 710, column: 7)
!2193 = !DILocation(line: 710, column: 7, scope: !2192)
!2194 = !DILocation(line: 710, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !144, line: 710, column: 7)
!2196 = !DILocation(line: 710, column: 7, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2195, file: !144, line: 710, column: 7)
!2198 = !DILocation(line: 710, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !144, line: 710, column: 7)
!2200 = distinct !DILexicalBlock(scope: !2197, file: !144, line: 710, column: 7)
!2201 = !DILocation(line: 710, column: 7, scope: !2200)
!2202 = !DILocation(line: 710, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !144, line: 710, column: 7)
!2204 = distinct !DILexicalBlock(scope: !2197, file: !144, line: 710, column: 7)
!2205 = !DILocation(line: 710, column: 7, scope: !2204)
!2206 = !DILocation(line: 710, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !144, line: 710, column: 7)
!2208 = distinct !DILexicalBlock(scope: !2197, file: !144, line: 710, column: 7)
!2209 = !DILocation(line: 710, column: 7, scope: !2208)
!2210 = !DILocation(line: 710, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !144, line: 710, column: 7)
!2212 = distinct !DILexicalBlock(scope: !2192, file: !144, line: 710, column: 7)
!2213 = !DILocation(line: 710, column: 7, scope: !2212)
!2214 = !DILabel(scope: !1624, name: "store_c", file: !144, line: 712)
!2215 = !DILocation(line: 712, column: 5, scope: !1624)
!2216 = !DILocation(line: 713, column: 7, scope: !1624)
!2217 = !DILocation(line: 713, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !144, line: 713, column: 7)
!2219 = distinct !DILexicalBlock(scope: !1624, file: !144, line: 713, column: 7)
!2220 = !DILocation(line: 713, column: 7, scope: !2219)
!2221 = !DILocation(line: 713, column: 7, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2218, file: !144, line: 713, column: 7)
!2223 = !DILocation(line: 713, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !144, line: 713, column: 7)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !144, line: 713, column: 7)
!2226 = !DILocation(line: 713, column: 7, scope: !2225)
!2227 = !DILocation(line: 713, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !144, line: 713, column: 7)
!2229 = distinct !DILexicalBlock(scope: !2222, file: !144, line: 713, column: 7)
!2230 = !DILocation(line: 713, column: 7, scope: !2229)
!2231 = !DILocation(line: 714, column: 7, scope: !1624)
!2232 = !DILocation(line: 714, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !144, line: 714, column: 7)
!2234 = distinct !DILexicalBlock(scope: !1624, file: !144, line: 714, column: 7)
!2235 = !DILocation(line: 714, column: 7, scope: !2234)
!2236 = !DILocation(line: 716, column: 13, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !1624, file: !144, line: 716, column: 11)
!2238 = !DILocation(line: 716, column: 11, scope: !1624)
!2239 = !DILocation(line: 717, column: 38, scope: !2237)
!2240 = !DILocation(line: 717, column: 9, scope: !2237)
!2241 = !DILocation(line: 718, column: 5, scope: !1624)
!2242 = !DILocation(line: 395, column: 82, scope: !1613)
!2243 = !DILocation(line: 395, column: 3, scope: !1613)
!2244 = distinct !{!2244, !1622, !2245, !430}
!2245 = !DILocation(line: 718, column: 5, scope: !1609)
!2246 = !DILocation(line: 720, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !1471, file: !144, line: 720, column: 7)
!2248 = !DILocation(line: 720, column: 11, scope: !2247)
!2249 = !DILocation(line: 720, column: 16, scope: !2247)
!2250 = !DILocation(line: 720, column: 19, scope: !2247)
!2251 = !DILocation(line: 720, column: 33, scope: !2247)
!2252 = !DILocation(line: 721, column: 7, scope: !2247)
!2253 = !DILocation(line: 721, column: 10, scope: !2247)
!2254 = !DILocation(line: 720, column: 7, scope: !1471)
!2255 = !DILocation(line: 722, column: 5, scope: !2247)
!2256 = !DILocation(line: 728, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !1471, file: !144, line: 728, column: 7)
!2258 = !DILocation(line: 728, column: 21, scope: !2257)
!2259 = !DILocation(line: 728, column: 51, scope: !2257)
!2260 = !DILocation(line: 728, column: 56, scope: !2257)
!2261 = !DILocation(line: 729, column: 7, scope: !2257)
!2262 = !DILocation(line: 729, column: 10, scope: !2257)
!2263 = !DILocation(line: 728, column: 7, scope: !1471)
!2264 = !DILocation(line: 731, column: 11, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !144, line: 731, column: 11)
!2266 = distinct !DILexicalBlock(scope: !2257, file: !144, line: 730, column: 5)
!2267 = !DILocation(line: 731, column: 11, scope: !2266)
!2268 = !DILocation(line: 732, column: 42, scope: !2265)
!2269 = !DILocation(line: 732, column: 50, scope: !2265)
!2270 = !DILocation(line: 732, column: 67, scope: !2265)
!2271 = !DILocation(line: 732, column: 72, scope: !2265)
!2272 = !DILocation(line: 734, column: 42, scope: !2265)
!2273 = !DILocation(line: 734, column: 49, scope: !2265)
!2274 = !DILocation(line: 735, column: 42, scope: !2265)
!2275 = !DILocation(line: 735, column: 54, scope: !2265)
!2276 = !DILocation(line: 732, column: 16, scope: !2265)
!2277 = !DILocation(line: 732, column: 9, scope: !2265)
!2278 = !DILocation(line: 736, column: 18, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2265, file: !144, line: 736, column: 16)
!2280 = !DILocation(line: 736, column: 29, scope: !2279)
!2281 = !DILocation(line: 736, column: 32, scope: !2279)
!2282 = !DILocation(line: 736, column: 16, scope: !2265)
!2283 = !DILocation(line: 739, column: 24, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2279, file: !144, line: 737, column: 9)
!2285 = !DILocation(line: 739, column: 22, scope: !2284)
!2286 = !DILocation(line: 740, column: 15, scope: !2284)
!2287 = !DILocation(line: 741, column: 11, scope: !2284)
!2288 = !DILocation(line: 743, column: 5, scope: !2266)
!2289 = !DILocation(line: 745, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !1471, file: !144, line: 745, column: 7)
!2291 = !DILocation(line: 745, column: 20, scope: !2290)
!2292 = !DILocation(line: 745, column: 24, scope: !2290)
!2293 = !DILocation(line: 745, column: 7, scope: !1471)
!2294 = !DILocation(line: 746, column: 5, scope: !2290)
!2295 = !DILocation(line: 746, column: 13, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !144, line: 746, column: 5)
!2297 = distinct !DILexicalBlock(scope: !2290, file: !144, line: 746, column: 5)
!2298 = !DILocation(line: 746, column: 12, scope: !2296)
!2299 = !DILocation(line: 746, column: 5, scope: !2297)
!2300 = !DILocation(line: 747, column: 7, scope: !2296)
!2301 = !DILocation(line: 747, column: 7, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !144, line: 747, column: 7)
!2303 = distinct !DILexicalBlock(scope: !2296, file: !144, line: 747, column: 7)
!2304 = !DILocation(line: 747, column: 7, scope: !2303)
!2305 = !DILocation(line: 746, column: 39, scope: !2296)
!2306 = !DILocation(line: 746, column: 5, scope: !2296)
!2307 = distinct !{!2307, !2299, !2308, !430}
!2308 = !DILocation(line: 747, column: 7, scope: !2297)
!2309 = !DILocation(line: 749, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !1471, file: !144, line: 749, column: 7)
!2311 = !DILocation(line: 749, column: 13, scope: !2310)
!2312 = !DILocation(line: 749, column: 11, scope: !2310)
!2313 = !DILocation(line: 749, column: 7, scope: !1471)
!2314 = !DILocation(line: 750, column: 5, scope: !2310)
!2315 = !DILocation(line: 750, column: 12, scope: !2310)
!2316 = !DILocation(line: 750, column: 17, scope: !2310)
!2317 = !DILocation(line: 751, column: 10, scope: !1471)
!2318 = !DILocation(line: 751, column: 3, scope: !1471)
!2319 = !DILabel(scope: !1471, name: "force_outer_quoting_style", file: !144, line: 753)
!2320 = !DILocation(line: 753, column: 2, scope: !1471)
!2321 = !DILocation(line: 756, column: 7, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !1471, file: !144, line: 756, column: 7)
!2323 = !DILocation(line: 756, column: 21, scope: !2322)
!2324 = !DILocation(line: 756, column: 51, scope: !2322)
!2325 = !DILocation(line: 756, column: 54, scope: !2322)
!2326 = !DILocation(line: 756, column: 7, scope: !1471)
!2327 = !DILocation(line: 757, column: 19, scope: !2322)
!2328 = !DILocation(line: 757, column: 5, scope: !2322)
!2329 = !DILocation(line: 758, column: 36, scope: !1471)
!2330 = !DILocation(line: 758, column: 44, scope: !1471)
!2331 = !DILocation(line: 758, column: 56, scope: !1471)
!2332 = !DILocation(line: 758, column: 61, scope: !1471)
!2333 = !DILocation(line: 759, column: 36, scope: !1471)
!2334 = !DILocation(line: 760, column: 36, scope: !1471)
!2335 = !DILocation(line: 760, column: 42, scope: !1471)
!2336 = !DILocation(line: 761, column: 36, scope: !1471)
!2337 = !DILocation(line: 761, column: 48, scope: !1471)
!2338 = !DILocation(line: 758, column: 10, scope: !1471)
!2339 = !DILocation(line: 758, column: 3, scope: !1471)
!2340 = !DILocation(line: 762, column: 1, scope: !1471)
!2341 = !DILocalVariable(name: "msgid", arg: 1, scope: !197, file: !144, line: 197, type: !63)
!2342 = !DILocation(line: 197, column: 28, scope: !197)
!2343 = !DILocalVariable(name: "s", arg: 2, scope: !197, file: !144, line: 197, type: !146)
!2344 = !DILocation(line: 197, column: 54, scope: !197)
!2345 = !DILocalVariable(name: "translation", scope: !197, file: !144, line: 199, type: !63)
!2346 = !DILocation(line: 199, column: 15, scope: !197)
!2347 = !DILocation(line: 199, column: 29, scope: !197)
!2348 = !DILocation(line: 201, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !197, file: !144, line: 201, column: 7)
!2350 = !DILocation(line: 201, column: 22, scope: !2349)
!2351 = !DILocation(line: 201, column: 19, scope: !2349)
!2352 = !DILocation(line: 201, column: 7, scope: !197)
!2353 = !DILocation(line: 202, column: 12, scope: !2349)
!2354 = !DILocation(line: 202, column: 5, scope: !2349)
!2355 = !DILocalVariable(name: "w", scope: !197, file: !144, line: 229, type: !1258)
!2356 = !DILocation(line: 229, column: 12, scope: !197)
!2357 = !DILocalVariable(name: "mbs", scope: !197, file: !144, line: 230, type: !1938)
!2358 = !DILocation(line: 230, column: 13, scope: !197)
!2359 = !DILocation(line: 230, column: 18, scope: !197)
!2360 = !DILocation(line: 231, column: 7, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !197, file: !144, line: 231, column: 7)
!2362 = !DILocation(line: 231, column: 40, scope: !2361)
!2363 = !DILocation(line: 231, column: 45, scope: !2361)
!2364 = !DILocation(line: 231, column: 48, scope: !2361)
!2365 = !DILocation(line: 231, column: 50, scope: !2361)
!2366 = !DILocation(line: 231, column: 7, scope: !197)
!2367 = !DILocation(line: 232, column: 18, scope: !2361)
!2368 = !DILocation(line: 232, column: 27, scope: !2361)
!2369 = !DILocation(line: 232, column: 12, scope: !2361)
!2370 = !DILocation(line: 232, column: 5, scope: !2361)
!2371 = !DILocation(line: 234, column: 11, scope: !197)
!2372 = !DILocation(line: 234, column: 13, scope: !197)
!2373 = !DILocation(line: 234, column: 3, scope: !197)
!2374 = !DILocation(line: 235, column: 1, scope: !197)
!2375 = distinct !DISubprogram(name: "quotearg_alloc", scope: !144, file: !144, line: 788, type: !2376, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!27, !63, !166, !1311}
!2378 = !DILocalVariable(name: "arg", arg: 1, scope: !2375, file: !144, line: 788, type: !63)
!2379 = !DILocation(line: 788, column: 29, scope: !2375)
!2380 = !DILocalVariable(name: "argsize", arg: 2, scope: !2375, file: !144, line: 788, type: !166)
!2381 = !DILocation(line: 788, column: 41, scope: !2375)
!2382 = !DILocalVariable(name: "o", arg: 3, scope: !2375, file: !144, line: 789, type: !1311)
!2383 = !DILocation(line: 789, column: 47, scope: !2375)
!2384 = !DILocation(line: 791, column: 30, scope: !2375)
!2385 = !DILocation(line: 791, column: 35, scope: !2375)
!2386 = !DILocation(line: 791, column: 50, scope: !2375)
!2387 = !DILocation(line: 791, column: 10, scope: !2375)
!2388 = !DILocation(line: 791, column: 3, scope: !2375)
!2389 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !144, file: !144, line: 801, type: !2390, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!27, !63, !166, !270, !1311}
!2392 = !DILocalVariable(name: "arg", arg: 1, scope: !2389, file: !144, line: 801, type: !63)
!2393 = !DILocation(line: 801, column: 33, scope: !2389)
!2394 = !DILocalVariable(name: "argsize", arg: 2, scope: !2389, file: !144, line: 801, type: !166)
!2395 = !DILocation(line: 801, column: 45, scope: !2389)
!2396 = !DILocalVariable(name: "size", arg: 3, scope: !2389, file: !144, line: 801, type: !270)
!2397 = !DILocation(line: 801, column: 62, scope: !2389)
!2398 = !DILocalVariable(name: "o", arg: 4, scope: !2389, file: !144, line: 802, type: !1311)
!2399 = !DILocation(line: 802, column: 51, scope: !2389)
!2400 = !DILocalVariable(name: "p", scope: !2389, file: !144, line: 804, type: !1311)
!2401 = !DILocation(line: 804, column: 33, scope: !2389)
!2402 = !DILocation(line: 804, column: 37, scope: !2389)
!2403 = !DILocation(line: 804, column: 41, scope: !2389)
!2404 = !DILocalVariable(name: "saved_errno", scope: !2389, file: !144, line: 805, type: !25)
!2405 = !DILocation(line: 805, column: 7, scope: !2389)
!2406 = !DILocation(line: 805, column: 21, scope: !2389)
!2407 = !DILocalVariable(name: "flags", scope: !2389, file: !144, line: 807, type: !25)
!2408 = !DILocation(line: 807, column: 7, scope: !2389)
!2409 = !DILocation(line: 807, column: 15, scope: !2389)
!2410 = !DILocation(line: 807, column: 18, scope: !2389)
!2411 = !DILocation(line: 807, column: 27, scope: !2389)
!2412 = !DILocation(line: 807, column: 24, scope: !2389)
!2413 = !DILocalVariable(name: "bufsize", scope: !2389, file: !144, line: 808, type: !166)
!2414 = !DILocation(line: 808, column: 10, scope: !2389)
!2415 = !DILocation(line: 808, column: 55, scope: !2389)
!2416 = !DILocation(line: 808, column: 60, scope: !2389)
!2417 = !DILocation(line: 808, column: 69, scope: !2389)
!2418 = !DILocation(line: 808, column: 72, scope: !2389)
!2419 = !DILocation(line: 809, column: 46, scope: !2389)
!2420 = !DILocation(line: 809, column: 53, scope: !2389)
!2421 = !DILocation(line: 809, column: 56, scope: !2389)
!2422 = !DILocation(line: 810, column: 46, scope: !2389)
!2423 = !DILocation(line: 810, column: 49, scope: !2389)
!2424 = !DILocation(line: 811, column: 46, scope: !2389)
!2425 = !DILocation(line: 811, column: 49, scope: !2389)
!2426 = !DILocation(line: 808, column: 20, scope: !2389)
!2427 = !DILocation(line: 811, column: 62, scope: !2389)
!2428 = !DILocalVariable(name: "buf", scope: !2389, file: !144, line: 812, type: !27)
!2429 = !DILocation(line: 812, column: 9, scope: !2389)
!2430 = !DILocation(line: 812, column: 27, scope: !2389)
!2431 = !DILocation(line: 812, column: 15, scope: !2389)
!2432 = !DILocation(line: 813, column: 29, scope: !2389)
!2433 = !DILocation(line: 813, column: 34, scope: !2389)
!2434 = !DILocation(line: 813, column: 43, scope: !2389)
!2435 = !DILocation(line: 813, column: 48, scope: !2389)
!2436 = !DILocation(line: 813, column: 57, scope: !2389)
!2437 = !DILocation(line: 813, column: 60, scope: !2389)
!2438 = !DILocation(line: 813, column: 67, scope: !2389)
!2439 = !DILocation(line: 814, column: 29, scope: !2389)
!2440 = !DILocation(line: 814, column: 32, scope: !2389)
!2441 = !DILocation(line: 815, column: 29, scope: !2389)
!2442 = !DILocation(line: 815, column: 32, scope: !2389)
!2443 = !DILocation(line: 815, column: 44, scope: !2389)
!2444 = !DILocation(line: 815, column: 47, scope: !2389)
!2445 = !DILocation(line: 813, column: 3, scope: !2389)
!2446 = !DILocation(line: 816, column: 11, scope: !2389)
!2447 = !DILocation(line: 816, column: 3, scope: !2389)
!2448 = !DILocation(line: 816, column: 9, scope: !2389)
!2449 = !DILocation(line: 817, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2389, file: !144, line: 817, column: 7)
!2451 = !DILocation(line: 817, column: 7, scope: !2389)
!2452 = !DILocation(line: 818, column: 13, scope: !2450)
!2453 = !DILocation(line: 818, column: 21, scope: !2450)
!2454 = !DILocation(line: 818, column: 6, scope: !2450)
!2455 = !DILocation(line: 818, column: 11, scope: !2450)
!2456 = !DILocation(line: 818, column: 5, scope: !2450)
!2457 = !DILocation(line: 819, column: 10, scope: !2389)
!2458 = !DILocation(line: 819, column: 3, scope: !2389)
!2459 = distinct !DISubprogram(name: "quotearg_free", scope: !144, file: !144, line: 837, type: !122, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2460 = !DILocalVariable(name: "sv", scope: !2459, file: !144, line: 839, type: !204)
!2461 = !DILocation(line: 839, column: 19, scope: !2459)
!2462 = !DILocation(line: 839, column: 24, scope: !2459)
!2463 = !DILocalVariable(name: "i", scope: !2464, file: !144, line: 840, type: !25)
!2464 = distinct !DILexicalBlock(scope: !2459, file: !144, line: 840, column: 3)
!2465 = !DILocation(line: 840, column: 12, scope: !2464)
!2466 = !DILocation(line: 840, column: 8, scope: !2464)
!2467 = !DILocation(line: 840, column: 19, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2464, file: !144, line: 840, column: 3)
!2469 = !DILocation(line: 840, column: 23, scope: !2468)
!2470 = !DILocation(line: 840, column: 21, scope: !2468)
!2471 = !DILocation(line: 840, column: 3, scope: !2464)
!2472 = !DILocation(line: 841, column: 11, scope: !2468)
!2473 = !DILocation(line: 841, column: 14, scope: !2468)
!2474 = !DILocation(line: 841, column: 17, scope: !2468)
!2475 = !DILocation(line: 841, column: 5, scope: !2468)
!2476 = !DILocation(line: 840, column: 32, scope: !2468)
!2477 = !DILocation(line: 840, column: 3, scope: !2468)
!2478 = distinct !{!2478, !2471, !2479, !430}
!2479 = !DILocation(line: 841, column: 20, scope: !2464)
!2480 = !DILocation(line: 842, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2459, file: !144, line: 842, column: 7)
!2482 = !DILocation(line: 842, column: 13, scope: !2481)
!2483 = !DILocation(line: 842, column: 17, scope: !2481)
!2484 = !DILocation(line: 842, column: 7, scope: !2459)
!2485 = !DILocation(line: 844, column: 13, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !144, line: 843, column: 5)
!2487 = !DILocation(line: 844, column: 19, scope: !2486)
!2488 = !DILocation(line: 844, column: 7, scope: !2486)
!2489 = !DILocation(line: 845, column: 21, scope: !2486)
!2490 = !DILocation(line: 846, column: 20, scope: !2486)
!2491 = !DILocation(line: 847, column: 5, scope: !2486)
!2492 = !DILocation(line: 848, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2459, file: !144, line: 848, column: 7)
!2494 = !DILocation(line: 848, column: 10, scope: !2493)
!2495 = !DILocation(line: 848, column: 7, scope: !2459)
!2496 = !DILocation(line: 850, column: 13, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2493, file: !144, line: 849, column: 5)
!2498 = !DILocation(line: 850, column: 7, scope: !2497)
!2499 = !DILocation(line: 851, column: 15, scope: !2497)
!2500 = !DILocation(line: 852, column: 5, scope: !2497)
!2501 = !DILocation(line: 853, column: 10, scope: !2459)
!2502 = !DILocation(line: 854, column: 1, scope: !2459)
!2503 = distinct !DISubprogram(name: "quotearg_n", scope: !144, file: !144, line: 919, type: !2504, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!27, !25, !63}
!2506 = !DILocalVariable(name: "n", arg: 1, scope: !2503, file: !144, line: 919, type: !25)
!2507 = !DILocation(line: 919, column: 17, scope: !2503)
!2508 = !DILocalVariable(name: "arg", arg: 2, scope: !2503, file: !144, line: 919, type: !63)
!2509 = !DILocation(line: 919, column: 32, scope: !2503)
!2510 = !DILocation(line: 921, column: 30, scope: !2503)
!2511 = !DILocation(line: 921, column: 33, scope: !2503)
!2512 = !DILocation(line: 921, column: 10, scope: !2503)
!2513 = !DILocation(line: 921, column: 3, scope: !2503)
!2514 = distinct !DISubprogram(name: "quotearg_n_options", scope: !144, file: !144, line: 866, type: !2515, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!27, !25, !63, !166, !1311}
!2517 = !DILocalVariable(name: "n", arg: 1, scope: !2514, file: !144, line: 866, type: !25)
!2518 = !DILocation(line: 866, column: 25, scope: !2514)
!2519 = !DILocalVariable(name: "arg", arg: 2, scope: !2514, file: !144, line: 866, type: !63)
!2520 = !DILocation(line: 866, column: 40, scope: !2514)
!2521 = !DILocalVariable(name: "argsize", arg: 3, scope: !2514, file: !144, line: 866, type: !166)
!2522 = !DILocation(line: 866, column: 52, scope: !2514)
!2523 = !DILocalVariable(name: "options", arg: 4, scope: !2514, file: !144, line: 867, type: !1311)
!2524 = !DILocation(line: 867, column: 51, scope: !2514)
!2525 = !DILocalVariable(name: "saved_errno", scope: !2514, file: !144, line: 869, type: !25)
!2526 = !DILocation(line: 869, column: 7, scope: !2514)
!2527 = !DILocation(line: 869, column: 21, scope: !2514)
!2528 = !DILocalVariable(name: "sv", scope: !2514, file: !144, line: 871, type: !204)
!2529 = !DILocation(line: 871, column: 19, scope: !2514)
!2530 = !DILocation(line: 871, column: 24, scope: !2514)
!2531 = !DILocalVariable(name: "nslots_max", scope: !2514, file: !144, line: 873, type: !25)
!2532 = !DILocation(line: 873, column: 7, scope: !2514)
!2533 = !DILocation(line: 874, column: 15, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2514, file: !144, line: 874, column: 7)
!2535 = !DILocation(line: 874, column: 12, scope: !2534)
!2536 = !DILocation(line: 874, column: 17, scope: !2534)
!2537 = !DILocation(line: 874, column: 20, scope: !2534)
!2538 = !DILocation(line: 874, column: 24, scope: !2534)
!2539 = !DILocation(line: 874, column: 22, scope: !2534)
!2540 = !DILocation(line: 874, column: 7, scope: !2514)
!2541 = !DILocation(line: 875, column: 5, scope: !2534)
!2542 = !DILocation(line: 877, column: 7, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2514, file: !144, line: 877, column: 7)
!2544 = !DILocation(line: 877, column: 17, scope: !2543)
!2545 = !DILocation(line: 877, column: 14, scope: !2543)
!2546 = !DILocation(line: 877, column: 7, scope: !2514)
!2547 = !DILocalVariable(name: "preallocated", scope: !2548, file: !144, line: 879, type: !89)
!2548 = distinct !DILexicalBlock(scope: !2543, file: !144, line: 878, column: 5)
!2549 = !DILocation(line: 879, column: 12, scope: !2548)
!2550 = !DILocation(line: 879, column: 28, scope: !2548)
!2551 = !DILocation(line: 879, column: 31, scope: !2548)
!2552 = !DILocalVariable(name: "new_nslots", scope: !2548, file: !144, line: 880, type: !278)
!2553 = !DILocation(line: 880, column: 13, scope: !2548)
!2554 = !DILocation(line: 880, column: 26, scope: !2548)
!2555 = !DILocation(line: 882, column: 31, scope: !2548)
!2556 = !DILocation(line: 882, column: 53, scope: !2548)
!2557 = !DILocation(line: 883, column: 31, scope: !2548)
!2558 = !DILocation(line: 883, column: 35, scope: !2548)
!2559 = !DILocation(line: 883, column: 33, scope: !2548)
!2560 = !DILocation(line: 883, column: 42, scope: !2548)
!2561 = !DILocation(line: 883, column: 47, scope: !2548)
!2562 = !DILocation(line: 882, column: 22, scope: !2548)
!2563 = !DILocation(line: 882, column: 20, scope: !2548)
!2564 = !DILocation(line: 882, column: 15, scope: !2548)
!2565 = !DILocation(line: 884, column: 11, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2548, file: !144, line: 884, column: 11)
!2567 = !DILocation(line: 884, column: 11, scope: !2548)
!2568 = !DILocation(line: 885, column: 10, scope: !2566)
!2569 = !DILocation(line: 885, column: 15, scope: !2566)
!2570 = !DILocation(line: 885, column: 9, scope: !2566)
!2571 = !DILocation(line: 886, column: 15, scope: !2548)
!2572 = !DILocation(line: 886, column: 20, scope: !2548)
!2573 = !DILocation(line: 886, column: 18, scope: !2548)
!2574 = !DILocation(line: 886, column: 7, scope: !2548)
!2575 = !DILocation(line: 886, column: 32, scope: !2548)
!2576 = !DILocation(line: 886, column: 45, scope: !2548)
!2577 = !DILocation(line: 886, column: 43, scope: !2548)
!2578 = !DILocation(line: 886, column: 53, scope: !2548)
!2579 = !DILocation(line: 887, column: 16, scope: !2548)
!2580 = !DILocation(line: 887, column: 14, scope: !2548)
!2581 = !DILocation(line: 888, column: 5, scope: !2548)
!2582 = !DILocalVariable(name: "size", scope: !2583, file: !144, line: 891, type: !166)
!2583 = distinct !DILexicalBlock(scope: !2514, file: !144, line: 890, column: 3)
!2584 = !DILocation(line: 891, column: 12, scope: !2583)
!2585 = !DILocation(line: 891, column: 19, scope: !2583)
!2586 = !DILocation(line: 891, column: 22, scope: !2583)
!2587 = !DILocation(line: 891, column: 25, scope: !2583)
!2588 = !DILocalVariable(name: "val", scope: !2583, file: !144, line: 892, type: !27)
!2589 = !DILocation(line: 892, column: 11, scope: !2583)
!2590 = !DILocation(line: 892, column: 17, scope: !2583)
!2591 = !DILocation(line: 892, column: 20, scope: !2583)
!2592 = !DILocation(line: 892, column: 23, scope: !2583)
!2593 = !DILocalVariable(name: "flags", scope: !2583, file: !144, line: 894, type: !25)
!2594 = !DILocation(line: 894, column: 9, scope: !2583)
!2595 = !DILocation(line: 894, column: 17, scope: !2583)
!2596 = !DILocation(line: 894, column: 26, scope: !2583)
!2597 = !DILocation(line: 894, column: 32, scope: !2583)
!2598 = !DILocalVariable(name: "qsize", scope: !2583, file: !144, line: 895, type: !166)
!2599 = !DILocation(line: 895, column: 12, scope: !2583)
!2600 = !DILocation(line: 895, column: 46, scope: !2583)
!2601 = !DILocation(line: 895, column: 51, scope: !2583)
!2602 = !DILocation(line: 895, column: 57, scope: !2583)
!2603 = !DILocation(line: 895, column: 62, scope: !2583)
!2604 = !DILocation(line: 896, column: 46, scope: !2583)
!2605 = !DILocation(line: 896, column: 55, scope: !2583)
!2606 = !DILocation(line: 896, column: 62, scope: !2583)
!2607 = !DILocation(line: 897, column: 46, scope: !2583)
!2608 = !DILocation(line: 897, column: 55, scope: !2583)
!2609 = !DILocation(line: 898, column: 46, scope: !2583)
!2610 = !DILocation(line: 898, column: 55, scope: !2583)
!2611 = !DILocation(line: 899, column: 46, scope: !2583)
!2612 = !DILocation(line: 899, column: 55, scope: !2583)
!2613 = !DILocation(line: 895, column: 20, scope: !2583)
!2614 = !DILocation(line: 901, column: 9, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2583, file: !144, line: 901, column: 9)
!2616 = !DILocation(line: 901, column: 17, scope: !2615)
!2617 = !DILocation(line: 901, column: 14, scope: !2615)
!2618 = !DILocation(line: 901, column: 9, scope: !2583)
!2619 = !DILocation(line: 903, column: 29, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2615, file: !144, line: 902, column: 7)
!2621 = !DILocation(line: 903, column: 35, scope: !2620)
!2622 = !DILocation(line: 903, column: 27, scope: !2620)
!2623 = !DILocation(line: 903, column: 9, scope: !2620)
!2624 = !DILocation(line: 903, column: 12, scope: !2620)
!2625 = !DILocation(line: 903, column: 15, scope: !2620)
!2626 = !DILocation(line: 903, column: 20, scope: !2620)
!2627 = !DILocation(line: 904, column: 13, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2620, file: !144, line: 904, column: 13)
!2629 = !DILocation(line: 904, column: 17, scope: !2628)
!2630 = !DILocation(line: 904, column: 13, scope: !2620)
!2631 = !DILocation(line: 905, column: 17, scope: !2628)
!2632 = !DILocation(line: 905, column: 11, scope: !2628)
!2633 = !DILocation(line: 906, column: 39, scope: !2620)
!2634 = !DILocation(line: 906, column: 27, scope: !2620)
!2635 = !DILocation(line: 906, column: 25, scope: !2620)
!2636 = !DILocation(line: 906, column: 9, scope: !2620)
!2637 = !DILocation(line: 906, column: 12, scope: !2620)
!2638 = !DILocation(line: 906, column: 15, scope: !2620)
!2639 = !DILocation(line: 906, column: 19, scope: !2620)
!2640 = !DILocation(line: 907, column: 35, scope: !2620)
!2641 = !DILocation(line: 907, column: 40, scope: !2620)
!2642 = !DILocation(line: 907, column: 46, scope: !2620)
!2643 = !DILocation(line: 907, column: 51, scope: !2620)
!2644 = !DILocation(line: 907, column: 60, scope: !2620)
!2645 = !DILocation(line: 907, column: 69, scope: !2620)
!2646 = !DILocation(line: 908, column: 35, scope: !2620)
!2647 = !DILocation(line: 908, column: 42, scope: !2620)
!2648 = !DILocation(line: 908, column: 51, scope: !2620)
!2649 = !DILocation(line: 909, column: 35, scope: !2620)
!2650 = !DILocation(line: 909, column: 44, scope: !2620)
!2651 = !DILocation(line: 910, column: 35, scope: !2620)
!2652 = !DILocation(line: 910, column: 44, scope: !2620)
!2653 = !DILocation(line: 907, column: 9, scope: !2620)
!2654 = !DILocation(line: 911, column: 7, scope: !2620)
!2655 = !DILocation(line: 913, column: 13, scope: !2583)
!2656 = !DILocation(line: 913, column: 5, scope: !2583)
!2657 = !DILocation(line: 913, column: 11, scope: !2583)
!2658 = !DILocation(line: 914, column: 12, scope: !2583)
!2659 = !DILocation(line: 914, column: 5, scope: !2583)
!2660 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !144, file: !144, line: 925, type: !2661, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!27, !25, !63, !166}
!2663 = !DILocalVariable(name: "n", arg: 1, scope: !2660, file: !144, line: 925, type: !25)
!2664 = !DILocation(line: 925, column: 21, scope: !2660)
!2665 = !DILocalVariable(name: "arg", arg: 2, scope: !2660, file: !144, line: 925, type: !63)
!2666 = !DILocation(line: 925, column: 36, scope: !2660)
!2667 = !DILocalVariable(name: "argsize", arg: 3, scope: !2660, file: !144, line: 925, type: !166)
!2668 = !DILocation(line: 925, column: 48, scope: !2660)
!2669 = !DILocation(line: 927, column: 30, scope: !2660)
!2670 = !DILocation(line: 927, column: 33, scope: !2660)
!2671 = !DILocation(line: 927, column: 38, scope: !2660)
!2672 = !DILocation(line: 927, column: 10, scope: !2660)
!2673 = !DILocation(line: 927, column: 3, scope: !2660)
!2674 = distinct !DISubprogram(name: "quotearg", scope: !144, file: !144, line: 931, type: !2675, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!27, !63}
!2677 = !DILocalVariable(name: "arg", arg: 1, scope: !2674, file: !144, line: 931, type: !63)
!2678 = !DILocation(line: 931, column: 23, scope: !2674)
!2679 = !DILocation(line: 933, column: 25, scope: !2674)
!2680 = !DILocation(line: 933, column: 10, scope: !2674)
!2681 = !DILocation(line: 933, column: 3, scope: !2674)
!2682 = distinct !DISubprogram(name: "quotearg_mem", scope: !144, file: !144, line: 937, type: !2683, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!27, !63, !166}
!2685 = !DILocalVariable(name: "arg", arg: 1, scope: !2682, file: !144, line: 937, type: !63)
!2686 = !DILocation(line: 937, column: 27, scope: !2682)
!2687 = !DILocalVariable(name: "argsize", arg: 2, scope: !2682, file: !144, line: 937, type: !166)
!2688 = !DILocation(line: 937, column: 39, scope: !2682)
!2689 = !DILocation(line: 939, column: 29, scope: !2682)
!2690 = !DILocation(line: 939, column: 34, scope: !2682)
!2691 = !DILocation(line: 939, column: 10, scope: !2682)
!2692 = !DILocation(line: 939, column: 3, scope: !2682)
!2693 = distinct !DISubprogram(name: "quotearg_n_style", scope: !144, file: !144, line: 943, type: !2694, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!27, !25, !146, !63}
!2696 = !DILocalVariable(name: "n", arg: 1, scope: !2693, file: !144, line: 943, type: !25)
!2697 = !DILocation(line: 943, column: 23, scope: !2693)
!2698 = !DILocalVariable(name: "s", arg: 2, scope: !2693, file: !144, line: 943, type: !146)
!2699 = !DILocation(line: 943, column: 45, scope: !2693)
!2700 = !DILocalVariable(name: "arg", arg: 3, scope: !2693, file: !144, line: 943, type: !63)
!2701 = !DILocation(line: 943, column: 60, scope: !2693)
!2702 = !DILocalVariable(name: "o", scope: !2693, file: !144, line: 945, type: !1312)
!2703 = !DILocation(line: 945, column: 32, scope: !2693)
!2704 = !DILocation(line: 945, column: 64, scope: !2693)
!2705 = !DILocation(line: 945, column: 36, scope: !2693)
!2706 = !DILocation(line: 946, column: 30, scope: !2693)
!2707 = !DILocation(line: 946, column: 33, scope: !2693)
!2708 = !DILocation(line: 946, column: 10, scope: !2693)
!2709 = !DILocation(line: 946, column: 3, scope: !2693)
!2710 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !144, file: !144, line: 183, type: !2711, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!178, !146}
!2713 = !DILocalVariable(name: "style", arg: 1, scope: !2710, file: !144, line: 183, type: !146)
!2714 = !DILocation(line: 183, column: 48, scope: !2710)
!2715 = !DILocalVariable(name: "o", scope: !2710, file: !144, line: 185, type: !178)
!2716 = !DILocation(line: 185, column: 26, scope: !2710)
!2717 = !DILocation(line: 186, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2710, file: !144, line: 186, column: 7)
!2719 = !DILocation(line: 186, column: 13, scope: !2718)
!2720 = !DILocation(line: 186, column: 7, scope: !2710)
!2721 = !DILocation(line: 187, column: 5, scope: !2718)
!2722 = !DILocation(line: 188, column: 13, scope: !2710)
!2723 = !DILocation(line: 188, column: 5, scope: !2710)
!2724 = !DILocation(line: 188, column: 11, scope: !2710)
!2725 = !DILocation(line: 189, column: 3, scope: !2710)
!2726 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !144, file: !144, line: 950, type: !2727, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!27, !25, !146, !63, !166}
!2729 = !DILocalVariable(name: "n", arg: 1, scope: !2726, file: !144, line: 950, type: !25)
!2730 = !DILocation(line: 950, column: 27, scope: !2726)
!2731 = !DILocalVariable(name: "s", arg: 2, scope: !2726, file: !144, line: 950, type: !146)
!2732 = !DILocation(line: 950, column: 49, scope: !2726)
!2733 = !DILocalVariable(name: "arg", arg: 3, scope: !2726, file: !144, line: 951, type: !63)
!2734 = !DILocation(line: 951, column: 35, scope: !2726)
!2735 = !DILocalVariable(name: "argsize", arg: 4, scope: !2726, file: !144, line: 951, type: !166)
!2736 = !DILocation(line: 951, column: 47, scope: !2726)
!2737 = !DILocalVariable(name: "o", scope: !2726, file: !144, line: 953, type: !1312)
!2738 = !DILocation(line: 953, column: 32, scope: !2726)
!2739 = !DILocation(line: 953, column: 64, scope: !2726)
!2740 = !DILocation(line: 953, column: 36, scope: !2726)
!2741 = !DILocation(line: 954, column: 30, scope: !2726)
!2742 = !DILocation(line: 954, column: 33, scope: !2726)
!2743 = !DILocation(line: 954, column: 38, scope: !2726)
!2744 = !DILocation(line: 954, column: 10, scope: !2726)
!2745 = !DILocation(line: 954, column: 3, scope: !2726)
!2746 = distinct !DISubprogram(name: "quotearg_style", scope: !144, file: !144, line: 958, type: !2747, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!27, !146, !63}
!2749 = !DILocalVariable(name: "s", arg: 1, scope: !2746, file: !144, line: 958, type: !146)
!2750 = !DILocation(line: 958, column: 36, scope: !2746)
!2751 = !DILocalVariable(name: "arg", arg: 2, scope: !2746, file: !144, line: 958, type: !63)
!2752 = !DILocation(line: 958, column: 51, scope: !2746)
!2753 = !DILocation(line: 960, column: 31, scope: !2746)
!2754 = !DILocation(line: 960, column: 34, scope: !2746)
!2755 = !DILocation(line: 960, column: 10, scope: !2746)
!2756 = !DILocation(line: 960, column: 3, scope: !2746)
!2757 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !144, file: !144, line: 964, type: !2758, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!27, !146, !63, !166}
!2760 = !DILocalVariable(name: "s", arg: 1, scope: !2757, file: !144, line: 964, type: !146)
!2761 = !DILocation(line: 964, column: 40, scope: !2757)
!2762 = !DILocalVariable(name: "arg", arg: 2, scope: !2757, file: !144, line: 964, type: !63)
!2763 = !DILocation(line: 964, column: 55, scope: !2757)
!2764 = !DILocalVariable(name: "argsize", arg: 3, scope: !2757, file: !144, line: 964, type: !166)
!2765 = !DILocation(line: 964, column: 67, scope: !2757)
!2766 = !DILocation(line: 966, column: 35, scope: !2757)
!2767 = !DILocation(line: 966, column: 38, scope: !2757)
!2768 = !DILocation(line: 966, column: 43, scope: !2757)
!2769 = !DILocation(line: 966, column: 10, scope: !2757)
!2770 = !DILocation(line: 966, column: 3, scope: !2757)
!2771 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !144, file: !144, line: 970, type: !2772, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!27, !63, !166, !28}
!2774 = !DILocalVariable(name: "arg", arg: 1, scope: !2771, file: !144, line: 970, type: !63)
!2775 = !DILocation(line: 970, column: 32, scope: !2771)
!2776 = !DILocalVariable(name: "argsize", arg: 2, scope: !2771, file: !144, line: 970, type: !166)
!2777 = !DILocation(line: 970, column: 44, scope: !2771)
!2778 = !DILocalVariable(name: "ch", arg: 3, scope: !2771, file: !144, line: 970, type: !28)
!2779 = !DILocation(line: 970, column: 58, scope: !2771)
!2780 = !DILocalVariable(name: "options", scope: !2771, file: !144, line: 972, type: !178)
!2781 = !DILocation(line: 972, column: 26, scope: !2771)
!2782 = !DILocation(line: 973, column: 13, scope: !2771)
!2783 = !DILocation(line: 974, column: 31, scope: !2771)
!2784 = !DILocation(line: 974, column: 3, scope: !2771)
!2785 = !DILocation(line: 975, column: 33, scope: !2771)
!2786 = !DILocation(line: 975, column: 38, scope: !2771)
!2787 = !DILocation(line: 975, column: 10, scope: !2771)
!2788 = !DILocation(line: 975, column: 3, scope: !2771)
!2789 = distinct !DISubprogram(name: "quotearg_char", scope: !144, file: !144, line: 979, type: !2790, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!27, !63, !28}
!2792 = !DILocalVariable(name: "arg", arg: 1, scope: !2789, file: !144, line: 979, type: !63)
!2793 = !DILocation(line: 979, column: 28, scope: !2789)
!2794 = !DILocalVariable(name: "ch", arg: 2, scope: !2789, file: !144, line: 979, type: !28)
!2795 = !DILocation(line: 979, column: 38, scope: !2789)
!2796 = !DILocation(line: 981, column: 29, scope: !2789)
!2797 = !DILocation(line: 981, column: 44, scope: !2789)
!2798 = !DILocation(line: 981, column: 10, scope: !2789)
!2799 = !DILocation(line: 981, column: 3, scope: !2789)
!2800 = distinct !DISubprogram(name: "quotearg_colon", scope: !144, file: !144, line: 985, type: !2675, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2801 = !DILocalVariable(name: "arg", arg: 1, scope: !2800, file: !144, line: 985, type: !63)
!2802 = !DILocation(line: 985, column: 29, scope: !2800)
!2803 = !DILocation(line: 987, column: 25, scope: !2800)
!2804 = !DILocation(line: 987, column: 10, scope: !2800)
!2805 = !DILocation(line: 987, column: 3, scope: !2800)
!2806 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !144, file: !144, line: 991, type: !2683, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2807 = !DILocalVariable(name: "arg", arg: 1, scope: !2806, file: !144, line: 991, type: !63)
!2808 = !DILocation(line: 991, column: 33, scope: !2806)
!2809 = !DILocalVariable(name: "argsize", arg: 2, scope: !2806, file: !144, line: 991, type: !166)
!2810 = !DILocation(line: 991, column: 45, scope: !2806)
!2811 = !DILocation(line: 993, column: 29, scope: !2806)
!2812 = !DILocation(line: 993, column: 34, scope: !2806)
!2813 = !DILocation(line: 993, column: 10, scope: !2806)
!2814 = !DILocation(line: 993, column: 3, scope: !2806)
!2815 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !144, file: !144, line: 997, type: !2694, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2816 = !DILocalVariable(name: "n", arg: 1, scope: !2815, file: !144, line: 997, type: !25)
!2817 = !DILocation(line: 997, column: 29, scope: !2815)
!2818 = !DILocalVariable(name: "s", arg: 2, scope: !2815, file: !144, line: 997, type: !146)
!2819 = !DILocation(line: 997, column: 51, scope: !2815)
!2820 = !DILocalVariable(name: "arg", arg: 3, scope: !2815, file: !144, line: 997, type: !63)
!2821 = !DILocation(line: 997, column: 66, scope: !2815)
!2822 = !DILocalVariable(name: "options", scope: !2815, file: !144, line: 999, type: !178)
!2823 = !DILocation(line: 999, column: 26, scope: !2815)
!2824 = !DILocation(line: 1000, column: 41, scope: !2815)
!2825 = !DILocation(line: 1000, column: 13, scope: !2815)
!2826 = !DILocation(line: 1001, column: 3, scope: !2815)
!2827 = !DILocation(line: 1002, column: 30, scope: !2815)
!2828 = !DILocation(line: 1002, column: 33, scope: !2815)
!2829 = !DILocation(line: 1002, column: 10, scope: !2815)
!2830 = !DILocation(line: 1002, column: 3, scope: !2815)
!2831 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !144, file: !144, line: 1006, type: !2832, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!27, !25, !63, !63, !63}
!2834 = !DILocalVariable(name: "n", arg: 1, scope: !2831, file: !144, line: 1006, type: !25)
!2835 = !DILocation(line: 1006, column: 24, scope: !2831)
!2836 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2831, file: !144, line: 1006, type: !63)
!2837 = !DILocation(line: 1006, column: 39, scope: !2831)
!2838 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2831, file: !144, line: 1007, type: !63)
!2839 = !DILocation(line: 1007, column: 32, scope: !2831)
!2840 = !DILocalVariable(name: "arg", arg: 4, scope: !2831, file: !144, line: 1007, type: !63)
!2841 = !DILocation(line: 1007, column: 57, scope: !2831)
!2842 = !DILocation(line: 1009, column: 33, scope: !2831)
!2843 = !DILocation(line: 1009, column: 36, scope: !2831)
!2844 = !DILocation(line: 1009, column: 48, scope: !2831)
!2845 = !DILocation(line: 1009, column: 61, scope: !2831)
!2846 = !DILocation(line: 1009, column: 10, scope: !2831)
!2847 = !DILocation(line: 1009, column: 3, scope: !2831)
!2848 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !144, file: !144, line: 1014, type: !2849, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!27, !25, !63, !63, !63, !166}
!2851 = !DILocalVariable(name: "n", arg: 1, scope: !2848, file: !144, line: 1014, type: !25)
!2852 = !DILocation(line: 1014, column: 28, scope: !2848)
!2853 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2848, file: !144, line: 1014, type: !63)
!2854 = !DILocation(line: 1014, column: 43, scope: !2848)
!2855 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2848, file: !144, line: 1015, type: !63)
!2856 = !DILocation(line: 1015, column: 36, scope: !2848)
!2857 = !DILocalVariable(name: "arg", arg: 4, scope: !2848, file: !144, line: 1016, type: !63)
!2858 = !DILocation(line: 1016, column: 36, scope: !2848)
!2859 = !DILocalVariable(name: "argsize", arg: 5, scope: !2848, file: !144, line: 1016, type: !166)
!2860 = !DILocation(line: 1016, column: 48, scope: !2848)
!2861 = !DILocalVariable(name: "o", scope: !2848, file: !144, line: 1018, type: !178)
!2862 = !DILocation(line: 1018, column: 26, scope: !2848)
!2863 = !DILocation(line: 1018, column: 30, scope: !2848)
!2864 = !DILocation(line: 1019, column: 27, scope: !2848)
!2865 = !DILocation(line: 1019, column: 39, scope: !2848)
!2866 = !DILocation(line: 1019, column: 3, scope: !2848)
!2867 = !DILocation(line: 1020, column: 30, scope: !2848)
!2868 = !DILocation(line: 1020, column: 33, scope: !2848)
!2869 = !DILocation(line: 1020, column: 38, scope: !2848)
!2870 = !DILocation(line: 1020, column: 10, scope: !2848)
!2871 = !DILocation(line: 1020, column: 3, scope: !2848)
!2872 = distinct !DISubprogram(name: "quotearg_custom", scope: !144, file: !144, line: 1024, type: !2873, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!27, !63, !63, !63}
!2875 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2872, file: !144, line: 1024, type: !63)
!2876 = !DILocation(line: 1024, column: 30, scope: !2872)
!2877 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2872, file: !144, line: 1024, type: !63)
!2878 = !DILocation(line: 1024, column: 54, scope: !2872)
!2879 = !DILocalVariable(name: "arg", arg: 3, scope: !2872, file: !144, line: 1025, type: !63)
!2880 = !DILocation(line: 1025, column: 30, scope: !2872)
!2881 = !DILocation(line: 1027, column: 32, scope: !2872)
!2882 = !DILocation(line: 1027, column: 44, scope: !2872)
!2883 = !DILocation(line: 1027, column: 57, scope: !2872)
!2884 = !DILocation(line: 1027, column: 10, scope: !2872)
!2885 = !DILocation(line: 1027, column: 3, scope: !2872)
!2886 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !144, file: !144, line: 1031, type: !2887, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!27, !63, !63, !63, !166}
!2889 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2886, file: !144, line: 1031, type: !63)
!2890 = !DILocation(line: 1031, column: 34, scope: !2886)
!2891 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2886, file: !144, line: 1031, type: !63)
!2892 = !DILocation(line: 1031, column: 58, scope: !2886)
!2893 = !DILocalVariable(name: "arg", arg: 3, scope: !2886, file: !144, line: 1032, type: !63)
!2894 = !DILocation(line: 1032, column: 34, scope: !2886)
!2895 = !DILocalVariable(name: "argsize", arg: 4, scope: !2886, file: !144, line: 1032, type: !166)
!2896 = !DILocation(line: 1032, column: 46, scope: !2886)
!2897 = !DILocation(line: 1034, column: 36, scope: !2886)
!2898 = !DILocation(line: 1034, column: 48, scope: !2886)
!2899 = !DILocation(line: 1034, column: 61, scope: !2886)
!2900 = !DILocation(line: 1035, column: 33, scope: !2886)
!2901 = !DILocation(line: 1034, column: 10, scope: !2886)
!2902 = !DILocation(line: 1034, column: 3, scope: !2886)
!2903 = distinct !DISubprogram(name: "quote_n_mem", scope: !144, file: !144, line: 1049, type: !2904, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!63, !25, !63, !166}
!2906 = !DILocalVariable(name: "n", arg: 1, scope: !2903, file: !144, line: 1049, type: !25)
!2907 = !DILocation(line: 1049, column: 18, scope: !2903)
!2908 = !DILocalVariable(name: "arg", arg: 2, scope: !2903, file: !144, line: 1049, type: !63)
!2909 = !DILocation(line: 1049, column: 33, scope: !2903)
!2910 = !DILocalVariable(name: "argsize", arg: 3, scope: !2903, file: !144, line: 1049, type: !166)
!2911 = !DILocation(line: 1049, column: 45, scope: !2903)
!2912 = !DILocation(line: 1051, column: 30, scope: !2903)
!2913 = !DILocation(line: 1051, column: 33, scope: !2903)
!2914 = !DILocation(line: 1051, column: 38, scope: !2903)
!2915 = !DILocation(line: 1051, column: 10, scope: !2903)
!2916 = !DILocation(line: 1051, column: 3, scope: !2903)
!2917 = distinct !DISubprogram(name: "quote_mem", scope: !144, file: !144, line: 1055, type: !2918, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!63, !63, !166}
!2920 = !DILocalVariable(name: "arg", arg: 1, scope: !2917, file: !144, line: 1055, type: !63)
!2921 = !DILocation(line: 1055, column: 24, scope: !2917)
!2922 = !DILocalVariable(name: "argsize", arg: 2, scope: !2917, file: !144, line: 1055, type: !166)
!2923 = !DILocation(line: 1055, column: 36, scope: !2917)
!2924 = !DILocation(line: 1057, column: 26, scope: !2917)
!2925 = !DILocation(line: 1057, column: 31, scope: !2917)
!2926 = !DILocation(line: 1057, column: 10, scope: !2917)
!2927 = !DILocation(line: 1057, column: 3, scope: !2917)
!2928 = distinct !DISubprogram(name: "quote_n", scope: !144, file: !144, line: 1061, type: !2929, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!63, !25, !63}
!2931 = !DILocalVariable(name: "n", arg: 1, scope: !2928, file: !144, line: 1061, type: !25)
!2932 = !DILocation(line: 1061, column: 14, scope: !2928)
!2933 = !DILocalVariable(name: "arg", arg: 2, scope: !2928, file: !144, line: 1061, type: !63)
!2934 = !DILocation(line: 1061, column: 29, scope: !2928)
!2935 = !DILocation(line: 1063, column: 23, scope: !2928)
!2936 = !DILocation(line: 1063, column: 26, scope: !2928)
!2937 = !DILocation(line: 1063, column: 10, scope: !2928)
!2938 = !DILocation(line: 1063, column: 3, scope: !2928)
!2939 = distinct !DISubprogram(name: "quote", scope: !144, file: !144, line: 1067, type: !2940, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !143, retainedNodes: !29)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!63, !63}
!2942 = !DILocalVariable(name: "arg", arg: 1, scope: !2939, file: !144, line: 1067, type: !63)
!2943 = !DILocation(line: 1067, column: 20, scope: !2939)
!2944 = !DILocation(line: 1069, column: 22, scope: !2939)
!2945 = !DILocation(line: 1069, column: 10, scope: !2939)
!2946 = !DILocation(line: 1069, column: 3, scope: !2939)
!2947 = distinct !DISubprogram(name: "streq", scope: !2948, file: !2948, line: 1359, type: !2949, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !29)
!2948 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!89, !63, !63}
!2951 = !DILocalVariable(name: "__s1", arg: 1, scope: !2947, file: !2948, line: 1359, type: !63)
!2952 = !DILocation(line: 1359, column: 20, scope: !2947)
!2953 = !DILocalVariable(name: "__s2", arg: 2, scope: !2947, file: !2948, line: 1359, type: !63)
!2954 = !DILocation(line: 1359, column: 38, scope: !2947)
!2955 = !DILocation(line: 1361, column: 19, scope: !2947)
!2956 = !DILocation(line: 1361, column: 25, scope: !2947)
!2957 = !DILocation(line: 1361, column: 11, scope: !2947)
!2958 = !DILocation(line: 1361, column: 10, scope: !2947)
!2959 = !DILocation(line: 1361, column: 3, scope: !2947)
!2960 = distinct !DISubprogram(name: "version_etc_arn", scope: !258, file: !258, line: 61, type: !2961, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !29)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !2963, !63, !63, !63, !3016, !166}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2965, line: 7, baseType: !2966)
!2965 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2967, line: 49, size: 1728, elements: !2968)
!2967 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2984, !2986, !2987, !2988, !2990, !2991, !2993, !2997, !3000, !3002, !3005, !3008, !3009, !3010, !3011, !3012}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2966, file: !2967, line: 51, baseType: !25, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2966, file: !2967, line: 54, baseType: !27, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2966, file: !2967, line: 55, baseType: !27, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2966, file: !2967, line: 56, baseType: !27, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2966, file: !2967, line: 57, baseType: !27, size: 64, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2966, file: !2967, line: 58, baseType: !27, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2966, file: !2967, line: 59, baseType: !27, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2966, file: !2967, line: 60, baseType: !27, size: 64, offset: 448)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2966, file: !2967, line: 61, baseType: !27, size: 64, offset: 512)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2966, file: !2967, line: 64, baseType: !27, size: 64, offset: 576)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2966, file: !2967, line: 65, baseType: !27, size: 64, offset: 640)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2966, file: !2967, line: 66, baseType: !27, size: 64, offset: 704)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2966, file: !2967, line: 68, baseType: !2982, size: 64, offset: 768)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2967, line: 36, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2966, file: !2967, line: 70, baseType: !2985, size: 64, offset: 832)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2966, file: !2967, line: 72, baseType: !25, size: 32, offset: 896)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2966, file: !2967, line: 73, baseType: !25, size: 32, offset: 928)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2966, file: !2967, line: 74, baseType: !2989, size: 64, offset: 960)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1261, line: 152, baseType: !281)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2966, file: !2967, line: 77, baseType: !56, size: 16, offset: 1024)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2966, file: !2967, line: 78, baseType: !2992, size: 8, offset: 1040)
!2992 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2966, file: !2967, line: 79, baseType: !2994, size: 8, offset: 1048)
!2994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !2995)
!2995 = !{!2996}
!2996 = !DISubrange(count: 1)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2966, file: !2967, line: 81, baseType: !2998, size: 64, offset: 1088)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2967, line: 43, baseType: null)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2966, file: !2967, line: 89, baseType: !3001, size: 64, offset: 1152)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1261, line: 153, baseType: !281)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2966, file: !2967, line: 91, baseType: !3003, size: 64, offset: 1216)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2967, line: 37, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2966, file: !2967, line: 92, baseType: !3006, size: 64, offset: 1280)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2967, line: 38, flags: DIFlagFwdDecl)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2966, file: !2967, line: 93, baseType: !2985, size: 64, offset: 1344)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2966, file: !2967, line: 94, baseType: !55, size: 64, offset: 1408)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2966, file: !2967, line: 95, baseType: !166, size: 64, offset: 1472)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2966, file: !2967, line: 96, baseType: !25, size: 32, offset: 1536)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2966, file: !2967, line: 98, baseType: !3013, size: 160, offset: 1568)
!3013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !3014)
!3014 = !{!3015}
!3015 = !DISubrange(count: 20)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!3017 = !DILocalVariable(name: "stream", arg: 1, scope: !2960, file: !258, line: 61, type: !2963)
!3018 = !DILocation(line: 61, column: 24, scope: !2960)
!3019 = !DILocalVariable(name: "command_name", arg: 2, scope: !2960, file: !258, line: 62, type: !63)
!3020 = !DILocation(line: 62, column: 30, scope: !2960)
!3021 = !DILocalVariable(name: "package", arg: 3, scope: !2960, file: !258, line: 62, type: !63)
!3022 = !DILocation(line: 62, column: 56, scope: !2960)
!3023 = !DILocalVariable(name: "version", arg: 4, scope: !2960, file: !258, line: 63, type: !63)
!3024 = !DILocation(line: 63, column: 30, scope: !2960)
!3025 = !DILocalVariable(name: "authors", arg: 5, scope: !2960, file: !258, line: 64, type: !3016)
!3026 = !DILocation(line: 64, column: 39, scope: !2960)
!3027 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2960, file: !258, line: 64, type: !166)
!3028 = !DILocation(line: 64, column: 55, scope: !2960)
!3029 = !DILocation(line: 66, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2960, file: !258, line: 66, column: 7)
!3031 = !DILocation(line: 66, column: 7, scope: !2960)
!3032 = !DILocation(line: 67, column: 14, scope: !3030)
!3033 = !DILocation(line: 67, column: 38, scope: !3030)
!3034 = !DILocation(line: 67, column: 52, scope: !3030)
!3035 = !DILocation(line: 67, column: 61, scope: !3030)
!3036 = !DILocation(line: 67, column: 5, scope: !3030)
!3037 = !DILocation(line: 69, column: 14, scope: !3030)
!3038 = !DILocation(line: 69, column: 33, scope: !3030)
!3039 = !DILocation(line: 69, column: 42, scope: !3030)
!3040 = !DILocation(line: 69, column: 5, scope: !3030)
!3041 = !DILocation(line: 83, column: 12, scope: !2960)
!3042 = !DILocation(line: 83, column: 43, scope: !2960)
!3043 = !DILocation(line: 83, column: 3, scope: !2960)
!3044 = !DILocation(line: 85, column: 3, scope: !2960)
!3045 = !DILocation(line: 88, column: 12, scope: !2960)
!3046 = !DILocation(line: 88, column: 20, scope: !2960)
!3047 = !DILocation(line: 88, column: 3, scope: !2960)
!3048 = !DILocation(line: 95, column: 3, scope: !2960)
!3049 = !DILocation(line: 97, column: 11, scope: !2960)
!3050 = !DILocation(line: 97, column: 3, scope: !2960)
!3051 = !DILocation(line: 102, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2960, file: !258, line: 98, column: 5)
!3053 = !DILocation(line: 105, column: 16, scope: !3052)
!3054 = !DILocation(line: 105, column: 24, scope: !3052)
!3055 = !DILocation(line: 105, column: 47, scope: !3052)
!3056 = !DILocation(line: 105, column: 7, scope: !3052)
!3057 = !DILocation(line: 106, column: 7, scope: !3052)
!3058 = !DILocation(line: 109, column: 16, scope: !3052)
!3059 = !DILocation(line: 109, column: 24, scope: !3052)
!3060 = !DILocation(line: 109, column: 54, scope: !3052)
!3061 = !DILocation(line: 109, column: 66, scope: !3052)
!3062 = !DILocation(line: 109, column: 7, scope: !3052)
!3063 = !DILocation(line: 110, column: 7, scope: !3052)
!3064 = !DILocation(line: 113, column: 16, scope: !3052)
!3065 = !DILocation(line: 113, column: 24, scope: !3052)
!3066 = !DILocation(line: 114, column: 16, scope: !3052)
!3067 = !DILocation(line: 114, column: 28, scope: !3052)
!3068 = !DILocation(line: 114, column: 40, scope: !3052)
!3069 = !DILocation(line: 113, column: 7, scope: !3052)
!3070 = !DILocation(line: 115, column: 7, scope: !3052)
!3071 = !DILocation(line: 120, column: 16, scope: !3052)
!3072 = !DILocation(line: 120, column: 24, scope: !3052)
!3073 = !DILocation(line: 121, column: 16, scope: !3052)
!3074 = !DILocation(line: 121, column: 28, scope: !3052)
!3075 = !DILocation(line: 121, column: 40, scope: !3052)
!3076 = !DILocation(line: 121, column: 52, scope: !3052)
!3077 = !DILocation(line: 120, column: 7, scope: !3052)
!3078 = !DILocation(line: 122, column: 7, scope: !3052)
!3079 = !DILocation(line: 127, column: 16, scope: !3052)
!3080 = !DILocation(line: 127, column: 24, scope: !3052)
!3081 = !DILocation(line: 128, column: 16, scope: !3052)
!3082 = !DILocation(line: 128, column: 28, scope: !3052)
!3083 = !DILocation(line: 128, column: 40, scope: !3052)
!3084 = !DILocation(line: 128, column: 52, scope: !3052)
!3085 = !DILocation(line: 128, column: 64, scope: !3052)
!3086 = !DILocation(line: 127, column: 7, scope: !3052)
!3087 = !DILocation(line: 129, column: 7, scope: !3052)
!3088 = !DILocation(line: 134, column: 16, scope: !3052)
!3089 = !DILocation(line: 134, column: 24, scope: !3052)
!3090 = !DILocation(line: 135, column: 16, scope: !3052)
!3091 = !DILocation(line: 135, column: 28, scope: !3052)
!3092 = !DILocation(line: 135, column: 40, scope: !3052)
!3093 = !DILocation(line: 135, column: 52, scope: !3052)
!3094 = !DILocation(line: 135, column: 64, scope: !3052)
!3095 = !DILocation(line: 136, column: 16, scope: !3052)
!3096 = !DILocation(line: 134, column: 7, scope: !3052)
!3097 = !DILocation(line: 137, column: 7, scope: !3052)
!3098 = !DILocation(line: 142, column: 16, scope: !3052)
!3099 = !DILocation(line: 142, column: 24, scope: !3052)
!3100 = !DILocation(line: 143, column: 16, scope: !3052)
!3101 = !DILocation(line: 143, column: 28, scope: !3052)
!3102 = !DILocation(line: 143, column: 40, scope: !3052)
!3103 = !DILocation(line: 143, column: 52, scope: !3052)
!3104 = !DILocation(line: 143, column: 64, scope: !3052)
!3105 = !DILocation(line: 144, column: 16, scope: !3052)
!3106 = !DILocation(line: 144, column: 28, scope: !3052)
!3107 = !DILocation(line: 142, column: 7, scope: !3052)
!3108 = !DILocation(line: 145, column: 7, scope: !3052)
!3109 = !DILocation(line: 150, column: 16, scope: !3052)
!3110 = !DILocation(line: 150, column: 24, scope: !3052)
!3111 = !DILocation(line: 152, column: 17, scope: !3052)
!3112 = !DILocation(line: 152, column: 29, scope: !3052)
!3113 = !DILocation(line: 152, column: 41, scope: !3052)
!3114 = !DILocation(line: 152, column: 53, scope: !3052)
!3115 = !DILocation(line: 152, column: 65, scope: !3052)
!3116 = !DILocation(line: 153, column: 17, scope: !3052)
!3117 = !DILocation(line: 153, column: 29, scope: !3052)
!3118 = !DILocation(line: 153, column: 41, scope: !3052)
!3119 = !DILocation(line: 150, column: 7, scope: !3052)
!3120 = !DILocation(line: 154, column: 7, scope: !3052)
!3121 = !DILocation(line: 159, column: 16, scope: !3052)
!3122 = !DILocation(line: 159, column: 24, scope: !3052)
!3123 = !DILocation(line: 161, column: 16, scope: !3052)
!3124 = !DILocation(line: 161, column: 28, scope: !3052)
!3125 = !DILocation(line: 161, column: 40, scope: !3052)
!3126 = !DILocation(line: 161, column: 52, scope: !3052)
!3127 = !DILocation(line: 161, column: 64, scope: !3052)
!3128 = !DILocation(line: 162, column: 16, scope: !3052)
!3129 = !DILocation(line: 162, column: 28, scope: !3052)
!3130 = !DILocation(line: 162, column: 40, scope: !3052)
!3131 = !DILocation(line: 162, column: 52, scope: !3052)
!3132 = !DILocation(line: 159, column: 7, scope: !3052)
!3133 = !DILocation(line: 163, column: 7, scope: !3052)
!3134 = !DILocation(line: 170, column: 16, scope: !3052)
!3135 = !DILocation(line: 170, column: 24, scope: !3052)
!3136 = !DILocation(line: 172, column: 17, scope: !3052)
!3137 = !DILocation(line: 172, column: 29, scope: !3052)
!3138 = !DILocation(line: 172, column: 41, scope: !3052)
!3139 = !DILocation(line: 172, column: 53, scope: !3052)
!3140 = !DILocation(line: 172, column: 65, scope: !3052)
!3141 = !DILocation(line: 173, column: 17, scope: !3052)
!3142 = !DILocation(line: 173, column: 29, scope: !3052)
!3143 = !DILocation(line: 173, column: 41, scope: !3052)
!3144 = !DILocation(line: 173, column: 53, scope: !3052)
!3145 = !DILocation(line: 170, column: 7, scope: !3052)
!3146 = !DILocation(line: 174, column: 7, scope: !3052)
!3147 = !DILocation(line: 176, column: 1, scope: !2960)
!3148 = distinct !DISubprogram(name: "version_etc_ar", scope: !258, file: !258, line: 183, type: !3149, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !29)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !2963, !63, !63, !63, !3016}
!3151 = !DILocalVariable(name: "stream", arg: 1, scope: !3148, file: !258, line: 183, type: !2963)
!3152 = !DILocation(line: 183, column: 23, scope: !3148)
!3153 = !DILocalVariable(name: "command_name", arg: 2, scope: !3148, file: !258, line: 184, type: !63)
!3154 = !DILocation(line: 184, column: 29, scope: !3148)
!3155 = !DILocalVariable(name: "package", arg: 3, scope: !3148, file: !258, line: 184, type: !63)
!3156 = !DILocation(line: 184, column: 55, scope: !3148)
!3157 = !DILocalVariable(name: "version", arg: 4, scope: !3148, file: !258, line: 185, type: !63)
!3158 = !DILocation(line: 185, column: 29, scope: !3148)
!3159 = !DILocalVariable(name: "authors", arg: 5, scope: !3148, file: !258, line: 185, type: !3016)
!3160 = !DILocation(line: 185, column: 59, scope: !3148)
!3161 = !DILocalVariable(name: "n_authors", scope: !3148, file: !258, line: 187, type: !166)
!3162 = !DILocation(line: 187, column: 10, scope: !3148)
!3163 = !DILocation(line: 189, column: 18, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3148, file: !258, line: 189, column: 3)
!3165 = !DILocation(line: 189, column: 8, scope: !3164)
!3166 = !DILocation(line: 189, column: 23, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3164, file: !258, line: 189, column: 3)
!3168 = !DILocation(line: 189, column: 31, scope: !3167)
!3169 = !DILocation(line: 189, column: 3, scope: !3164)
!3170 = !DILocation(line: 189, column: 52, scope: !3167)
!3171 = !DILocation(line: 189, column: 3, scope: !3167)
!3172 = distinct !{!3172, !3169, !3173, !430}
!3173 = !DILocation(line: 190, column: 5, scope: !3164)
!3174 = !DILocation(line: 191, column: 20, scope: !3148)
!3175 = !DILocation(line: 191, column: 28, scope: !3148)
!3176 = !DILocation(line: 191, column: 42, scope: !3148)
!3177 = !DILocation(line: 191, column: 51, scope: !3148)
!3178 = !DILocation(line: 191, column: 60, scope: !3148)
!3179 = !DILocation(line: 191, column: 69, scope: !3148)
!3180 = !DILocation(line: 191, column: 3, scope: !3148)
!3181 = !DILocation(line: 192, column: 1, scope: !3148)
!3182 = distinct !DISubprogram(name: "version_etc_va", scope: !258, file: !258, line: 199, type: !3183, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !29)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !2963, !63, !63, !63, !3185}
!3185 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !102, line: 52, baseType: !3186)
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !104, line: 32, baseType: !3187)
!3187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3188, baseType: !3189)
!3188 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !108, size: 256, elements: !3190)
!3190 = !{!3191, !3192, !3193, !3194, !3195}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3189, file: !3188, line: 192, baseType: !55, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3189, file: !3188, line: 192, baseType: !55, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3189, file: !3188, line: 192, baseType: !55, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3189, file: !3188, line: 192, baseType: !25, size: 32, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3189, file: !3188, line: 192, baseType: !25, size: 32, offset: 224)
!3196 = !DILocalVariable(name: "stream", arg: 1, scope: !3182, file: !258, line: 199, type: !2963)
!3197 = !DILocation(line: 199, column: 23, scope: !3182)
!3198 = !DILocalVariable(name: "command_name", arg: 2, scope: !3182, file: !258, line: 200, type: !63)
!3199 = !DILocation(line: 200, column: 29, scope: !3182)
!3200 = !DILocalVariable(name: "package", arg: 3, scope: !3182, file: !258, line: 200, type: !63)
!3201 = !DILocation(line: 200, column: 55, scope: !3182)
!3202 = !DILocalVariable(name: "version", arg: 4, scope: !3182, file: !258, line: 201, type: !63)
!3203 = !DILocation(line: 201, column: 29, scope: !3182)
!3204 = !DILocalVariable(name: "authors", arg: 5, scope: !3182, file: !258, line: 201, type: !3185)
!3205 = !DILocation(line: 201, column: 46, scope: !3182)
!3206 = !DILocalVariable(name: "n_authors", scope: !3182, file: !258, line: 203, type: !166)
!3207 = !DILocation(line: 203, column: 10, scope: !3182)
!3208 = !DILocalVariable(name: "authtab", scope: !3182, file: !258, line: 204, type: !3209)
!3209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 640, elements: !174)
!3210 = !DILocation(line: 204, column: 15, scope: !3182)
!3211 = !DILocation(line: 206, column: 18, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3182, file: !258, line: 206, column: 3)
!3213 = !DILocation(line: 206, column: 8, scope: !3212)
!3214 = !DILocation(line: 207, column: 8, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3212, file: !258, line: 206, column: 3)
!3216 = !DILocation(line: 207, column: 18, scope: !3215)
!3217 = !DILocation(line: 208, column: 10, scope: !3215)
!3218 = !DILocation(line: 208, column: 35, scope: !3215)
!3219 = !DILocation(line: 208, column: 22, scope: !3215)
!3220 = !DILocation(line: 208, column: 14, scope: !3215)
!3221 = !DILocation(line: 208, column: 33, scope: !3215)
!3222 = !DILocation(line: 208, column: 67, scope: !3215)
!3223 = !DILocation(line: 0, scope: !3215)
!3224 = !DILocation(line: 206, column: 3, scope: !3212)
!3225 = !DILocation(line: 209, column: 17, scope: !3215)
!3226 = !DILocation(line: 206, column: 3, scope: !3215)
!3227 = distinct !{!3227, !3224, !3228, !430}
!3228 = !DILocation(line: 210, column: 5, scope: !3212)
!3229 = !DILocation(line: 211, column: 20, scope: !3182)
!3230 = !DILocation(line: 211, column: 28, scope: !3182)
!3231 = !DILocation(line: 211, column: 42, scope: !3182)
!3232 = !DILocation(line: 211, column: 51, scope: !3182)
!3233 = !DILocation(line: 212, column: 20, scope: !3182)
!3234 = !DILocation(line: 212, column: 29, scope: !3182)
!3235 = !DILocation(line: 211, column: 3, scope: !3182)
!3236 = !DILocation(line: 213, column: 1, scope: !3182)
!3237 = distinct !DISubprogram(name: "version_etc", scope: !258, file: !258, line: 230, type: !3238, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !29)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !2963, !63, !63, !63, null}
!3240 = !DILocalVariable(name: "stream", arg: 1, scope: !3237, file: !258, line: 230, type: !2963)
!3241 = !DILocation(line: 230, column: 20, scope: !3237)
!3242 = !DILocalVariable(name: "command_name", arg: 2, scope: !3237, file: !258, line: 231, type: !63)
!3243 = !DILocation(line: 231, column: 26, scope: !3237)
!3244 = !DILocalVariable(name: "package", arg: 3, scope: !3237, file: !258, line: 231, type: !63)
!3245 = !DILocation(line: 231, column: 52, scope: !3237)
!3246 = !DILocalVariable(name: "version", arg: 4, scope: !3237, file: !258, line: 232, type: !63)
!3247 = !DILocation(line: 232, column: 26, scope: !3237)
!3248 = !DILocalVariable(name: "authors", scope: !3237, file: !258, line: 234, type: !3185)
!3249 = !DILocation(line: 234, column: 11, scope: !3237)
!3250 = !DILocation(line: 235, column: 3, scope: !3237)
!3251 = !DILocation(line: 236, column: 19, scope: !3237)
!3252 = !DILocation(line: 236, column: 27, scope: !3237)
!3253 = !DILocation(line: 236, column: 41, scope: !3237)
!3254 = !DILocation(line: 236, column: 50, scope: !3237)
!3255 = !DILocation(line: 236, column: 3, scope: !3237)
!3256 = !DILocation(line: 237, column: 3, scope: !3237)
!3257 = !DILocation(line: 238, column: 1, scope: !3237)
!3258 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !258, file: !258, line: 241, type: !122, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !29)
!3259 = !DILocation(line: 243, column: 3, scope: !3258)
!3260 = !DILocation(line: 248, column: 11, scope: !3258)
!3261 = !DILocation(line: 248, column: 3, scope: !3258)
!3262 = !DILocation(line: 254, column: 11, scope: !3258)
!3263 = !DILocation(line: 254, column: 3, scope: !3258)
!3264 = !DILocation(line: 259, column: 11, scope: !3258)
!3265 = !DILocation(line: 259, column: 3, scope: !3258)
!3266 = !DILocation(line: 261, column: 1, scope: !3258)
!3267 = distinct !DISubprogram(name: "xnrealloc", scope: !3268, file: !3268, line: 147, type: !3269, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3268 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!55, !55, !166, !166}
!3271 = !DILocalVariable(name: "p", arg: 1, scope: !3267, file: !3268, line: 147, type: !55)
!3272 = !DILocation(line: 147, column: 18, scope: !3267)
!3273 = !DILocalVariable(name: "n", arg: 2, scope: !3267, file: !3268, line: 147, type: !166)
!3274 = !DILocation(line: 147, column: 28, scope: !3267)
!3275 = !DILocalVariable(name: "s", arg: 3, scope: !3267, file: !3268, line: 147, type: !166)
!3276 = !DILocation(line: 147, column: 38, scope: !3267)
!3277 = !DILocation(line: 149, column: 25, scope: !3267)
!3278 = !DILocation(line: 149, column: 28, scope: !3267)
!3279 = !DILocation(line: 149, column: 31, scope: !3267)
!3280 = !DILocation(line: 149, column: 10, scope: !3267)
!3281 = !DILocation(line: 149, column: 3, scope: !3267)
!3282 = distinct !DISubprogram(name: "xreallocarray", scope: !264, file: !264, line: 83, type: !3269, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3283 = !DILocalVariable(name: "p", arg: 1, scope: !3282, file: !264, line: 83, type: !55)
!3284 = !DILocation(line: 83, column: 22, scope: !3282)
!3285 = !DILocalVariable(name: "n", arg: 2, scope: !3282, file: !264, line: 83, type: !166)
!3286 = !DILocation(line: 83, column: 32, scope: !3282)
!3287 = !DILocalVariable(name: "s", arg: 3, scope: !3282, file: !264, line: 83, type: !166)
!3288 = !DILocation(line: 83, column: 42, scope: !3282)
!3289 = !DILocation(line: 85, column: 39, scope: !3282)
!3290 = !DILocation(line: 85, column: 42, scope: !3282)
!3291 = !DILocation(line: 85, column: 45, scope: !3282)
!3292 = !DILocation(line: 85, column: 25, scope: !3282)
!3293 = !DILocation(line: 85, column: 10, scope: !3282)
!3294 = !DILocation(line: 85, column: 3, scope: !3282)
!3295 = distinct !DISubprogram(name: "check_nonnull", scope: !264, file: !264, line: 37, type: !3296, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!55, !55}
!3298 = !DILocalVariable(name: "p", arg: 1, scope: !3295, file: !264, line: 37, type: !55)
!3299 = !DILocation(line: 37, column: 22, scope: !3295)
!3300 = !DILocation(line: 39, column: 8, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3295, file: !264, line: 39, column: 7)
!3302 = !DILocation(line: 39, column: 7, scope: !3295)
!3303 = !DILocation(line: 40, column: 5, scope: !3301)
!3304 = !DILocation(line: 41, column: 10, scope: !3295)
!3305 = !DILocation(line: 41, column: 3, scope: !3295)
!3306 = distinct !DISubprogram(name: "xmalloc", scope: !264, file: !264, line: 47, type: !3307, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!55, !166}
!3309 = !DILocalVariable(name: "s", arg: 1, scope: !3306, file: !264, line: 47, type: !166)
!3310 = !DILocation(line: 47, column: 17, scope: !3306)
!3311 = !DILocation(line: 49, column: 33, scope: !3306)
!3312 = !DILocation(line: 49, column: 25, scope: !3306)
!3313 = !DILocation(line: 49, column: 10, scope: !3306)
!3314 = !DILocation(line: 49, column: 3, scope: !3306)
!3315 = distinct !DISubprogram(name: "ximalloc", scope: !264, file: !264, line: 53, type: !3316, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!55, !278}
!3318 = !DILocalVariable(name: "s", arg: 1, scope: !3315, file: !264, line: 53, type: !278)
!3319 = !DILocation(line: 53, column: 17, scope: !3315)
!3320 = !DILocation(line: 55, column: 34, scope: !3315)
!3321 = !DILocation(line: 55, column: 25, scope: !3315)
!3322 = !DILocation(line: 55, column: 10, scope: !3315)
!3323 = !DILocation(line: 55, column: 3, scope: !3315)
!3324 = distinct !DISubprogram(name: "xcharalloc", scope: !264, file: !264, line: 59, type: !3325, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!27, !166}
!3327 = !DILocalVariable(name: "n", arg: 1, scope: !3324, file: !264, line: 59, type: !166)
!3328 = !DILocation(line: 59, column: 20, scope: !3324)
!3329 = !DILocation(line: 61, column: 10, scope: !3324)
!3330 = !DILocation(line: 61, column: 3, scope: !3324)
!3331 = distinct !DISubprogram(name: "xrealloc", scope: !264, file: !264, line: 68, type: !3332, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!55, !55, !166}
!3334 = !DILocalVariable(name: "p", arg: 1, scope: !3331, file: !264, line: 68, type: !55)
!3335 = !DILocation(line: 68, column: 17, scope: !3331)
!3336 = !DILocalVariable(name: "s", arg: 2, scope: !3331, file: !264, line: 68, type: !166)
!3337 = !DILocation(line: 68, column: 27, scope: !3331)
!3338 = !DILocation(line: 70, column: 34, scope: !3331)
!3339 = !DILocation(line: 70, column: 37, scope: !3331)
!3340 = !DILocation(line: 70, column: 25, scope: !3331)
!3341 = !DILocation(line: 70, column: 10, scope: !3331)
!3342 = !DILocation(line: 70, column: 3, scope: !3331)
!3343 = distinct !DISubprogram(name: "xirealloc", scope: !264, file: !264, line: 74, type: !3344, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!55, !55, !278}
!3346 = !DILocalVariable(name: "p", arg: 1, scope: !3343, file: !264, line: 74, type: !55)
!3347 = !DILocation(line: 74, column: 18, scope: !3343)
!3348 = !DILocalVariable(name: "s", arg: 2, scope: !3343, file: !264, line: 74, type: !278)
!3349 = !DILocation(line: 74, column: 27, scope: !3343)
!3350 = !DILocation(line: 76, column: 35, scope: !3343)
!3351 = !DILocation(line: 76, column: 38, scope: !3343)
!3352 = !DILocation(line: 76, column: 25, scope: !3343)
!3353 = !DILocation(line: 76, column: 10, scope: !3343)
!3354 = !DILocation(line: 76, column: 3, scope: !3343)
!3355 = distinct !DISubprogram(name: "xireallocarray", scope: !264, file: !264, line: 89, type: !3356, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!55, !55, !278, !278}
!3358 = !DILocalVariable(name: "p", arg: 1, scope: !3355, file: !264, line: 89, type: !55)
!3359 = !DILocation(line: 89, column: 23, scope: !3355)
!3360 = !DILocalVariable(name: "n", arg: 2, scope: !3355, file: !264, line: 89, type: !278)
!3361 = !DILocation(line: 89, column: 32, scope: !3355)
!3362 = !DILocalVariable(name: "s", arg: 3, scope: !3355, file: !264, line: 89, type: !278)
!3363 = !DILocation(line: 89, column: 41, scope: !3355)
!3364 = !DILocation(line: 91, column: 40, scope: !3355)
!3365 = !DILocation(line: 91, column: 43, scope: !3355)
!3366 = !DILocation(line: 91, column: 46, scope: !3355)
!3367 = !DILocation(line: 91, column: 25, scope: !3355)
!3368 = !DILocation(line: 91, column: 10, scope: !3355)
!3369 = !DILocation(line: 91, column: 3, scope: !3355)
!3370 = distinct !DISubprogram(name: "xnmalloc", scope: !264, file: !264, line: 98, type: !3371, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!55, !166, !166}
!3373 = !DILocalVariable(name: "n", arg: 1, scope: !3370, file: !264, line: 98, type: !166)
!3374 = !DILocation(line: 98, column: 18, scope: !3370)
!3375 = !DILocalVariable(name: "s", arg: 2, scope: !3370, file: !264, line: 98, type: !166)
!3376 = !DILocation(line: 98, column: 28, scope: !3370)
!3377 = !DILocation(line: 100, column: 31, scope: !3370)
!3378 = !DILocation(line: 100, column: 34, scope: !3370)
!3379 = !DILocation(line: 100, column: 10, scope: !3370)
!3380 = !DILocation(line: 100, column: 3, scope: !3370)
!3381 = distinct !DISubprogram(name: "xinmalloc", scope: !264, file: !264, line: 104, type: !3382, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!55, !278, !278}
!3384 = !DILocalVariable(name: "n", arg: 1, scope: !3381, file: !264, line: 104, type: !278)
!3385 = !DILocation(line: 104, column: 18, scope: !3381)
!3386 = !DILocalVariable(name: "s", arg: 2, scope: !3381, file: !264, line: 104, type: !278)
!3387 = !DILocation(line: 104, column: 27, scope: !3381)
!3388 = !DILocation(line: 106, column: 32, scope: !3381)
!3389 = !DILocation(line: 106, column: 35, scope: !3381)
!3390 = !DILocation(line: 106, column: 10, scope: !3381)
!3391 = !DILocation(line: 106, column: 3, scope: !3381)
!3392 = distinct !DISubprogram(name: "x2realloc", scope: !264, file: !264, line: 116, type: !3393, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!55, !55, !270}
!3395 = !DILocalVariable(name: "p", arg: 1, scope: !3392, file: !264, line: 116, type: !55)
!3396 = !DILocation(line: 116, column: 18, scope: !3392)
!3397 = !DILocalVariable(name: "ps", arg: 2, scope: !3392, file: !264, line: 116, type: !270)
!3398 = !DILocation(line: 116, column: 29, scope: !3392)
!3399 = !DILocation(line: 118, column: 22, scope: !3392)
!3400 = !DILocation(line: 118, column: 25, scope: !3392)
!3401 = !DILocation(line: 118, column: 10, scope: !3392)
!3402 = !DILocation(line: 118, column: 3, scope: !3392)
!3403 = !DILocalVariable(name: "p", arg: 1, scope: !267, file: !264, line: 176, type: !55)
!3404 = !DILocation(line: 176, column: 19, scope: !267)
!3405 = !DILocalVariable(name: "pn", arg: 2, scope: !267, file: !264, line: 176, type: !270)
!3406 = !DILocation(line: 176, column: 30, scope: !267)
!3407 = !DILocalVariable(name: "s", arg: 3, scope: !267, file: !264, line: 176, type: !166)
!3408 = !DILocation(line: 176, column: 41, scope: !267)
!3409 = !DILocalVariable(name: "n", scope: !267, file: !264, line: 178, type: !166)
!3410 = !DILocation(line: 178, column: 10, scope: !267)
!3411 = !DILocation(line: 178, column: 15, scope: !267)
!3412 = !DILocation(line: 178, column: 14, scope: !267)
!3413 = !DILocation(line: 180, column: 9, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !267, file: !264, line: 180, column: 7)
!3415 = !DILocation(line: 180, column: 7, scope: !267)
!3416 = !DILocation(line: 182, column: 13, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !264, line: 182, column: 11)
!3418 = distinct !DILexicalBlock(scope: !3414, file: !264, line: 181, column: 5)
!3419 = !DILocation(line: 182, column: 11, scope: !3418)
!3420 = !DILocation(line: 190, column: 32, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3417, file: !264, line: 183, column: 9)
!3422 = !DILocation(line: 190, column: 30, scope: !3421)
!3423 = !DILocation(line: 190, column: 13, scope: !3421)
!3424 = !DILocation(line: 191, column: 17, scope: !3421)
!3425 = !DILocation(line: 191, column: 16, scope: !3421)
!3426 = !DILocation(line: 191, column: 13, scope: !3421)
!3427 = !DILocation(line: 192, column: 9, scope: !3421)
!3428 = !DILocation(line: 193, column: 5, scope: !3418)
!3429 = !DILocation(line: 197, column: 11, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !264, line: 197, column: 11)
!3431 = distinct !DILexicalBlock(scope: !3414, file: !264, line: 195, column: 5)
!3432 = !DILocation(line: 197, column: 11, scope: !3431)
!3433 = !DILocation(line: 198, column: 9, scope: !3430)
!3434 = !DILocation(line: 201, column: 22, scope: !267)
!3435 = !DILocation(line: 201, column: 25, scope: !267)
!3436 = !DILocation(line: 201, column: 28, scope: !267)
!3437 = !DILocation(line: 201, column: 7, scope: !267)
!3438 = !DILocation(line: 201, column: 5, scope: !267)
!3439 = !DILocation(line: 202, column: 9, scope: !267)
!3440 = !DILocation(line: 202, column: 4, scope: !267)
!3441 = !DILocation(line: 202, column: 7, scope: !267)
!3442 = !DILocation(line: 203, column: 10, scope: !267)
!3443 = !DILocation(line: 203, column: 3, scope: !267)
!3444 = !DILocalVariable(name: "pa", arg: 1, scope: !274, file: !264, line: 223, type: !55)
!3445 = !DILocation(line: 223, column: 16, scope: !274)
!3446 = !DILocalVariable(name: "pn", arg: 2, scope: !274, file: !264, line: 223, type: !277)
!3447 = !DILocation(line: 223, column: 27, scope: !274)
!3448 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !274, file: !264, line: 223, type: !278)
!3449 = !DILocation(line: 223, column: 37, scope: !274)
!3450 = !DILocalVariable(name: "n_max", arg: 4, scope: !274, file: !264, line: 223, type: !280)
!3451 = !DILocation(line: 223, column: 59, scope: !274)
!3452 = !DILocalVariable(name: "s", arg: 5, scope: !274, file: !264, line: 223, type: !278)
!3453 = !DILocation(line: 223, column: 72, scope: !274)
!3454 = !DILocalVariable(name: "n0", scope: !274, file: !264, line: 230, type: !278)
!3455 = !DILocation(line: 230, column: 9, scope: !274)
!3456 = !DILocation(line: 230, column: 15, scope: !274)
!3457 = !DILocation(line: 230, column: 14, scope: !274)
!3458 = !DILocalVariable(name: "n", scope: !274, file: !264, line: 237, type: !278)
!3459 = !DILocation(line: 237, column: 9, scope: !274)
!3460 = !DILocation(line: 238, column: 7, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !274, file: !264, line: 238, column: 7)
!3462 = !DILocation(line: 238, column: 7, scope: !274)
!3463 = !DILocation(line: 239, column: 7, scope: !3461)
!3464 = !DILocation(line: 239, column: 5, scope: !3461)
!3465 = !DILocation(line: 240, column: 12, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !274, file: !264, line: 240, column: 7)
!3467 = !DILocation(line: 240, column: 9, scope: !3466)
!3468 = !DILocation(line: 240, column: 18, scope: !3466)
!3469 = !DILocation(line: 240, column: 21, scope: !3466)
!3470 = !DILocation(line: 240, column: 29, scope: !3466)
!3471 = !DILocation(line: 240, column: 27, scope: !3466)
!3472 = !DILocation(line: 240, column: 7, scope: !274)
!3473 = !DILocation(line: 241, column: 9, scope: !3466)
!3474 = !DILocation(line: 241, column: 7, scope: !3466)
!3475 = !DILocation(line: 241, column: 5, scope: !3466)
!3476 = !DILocalVariable(name: "nbytes", scope: !274, file: !264, line: 248, type: !278)
!3477 = !DILocation(line: 248, column: 9, scope: !274)
!3478 = !DILocalVariable(name: "adjusted_nbytes", scope: !274, file: !264, line: 252, type: !278)
!3479 = !DILocation(line: 252, column: 9, scope: !274)
!3480 = !DILocation(line: 253, column: 8, scope: !274)
!3481 = !DILocation(line: 255, column: 10, scope: !274)
!3482 = !DILocation(line: 255, column: 17, scope: !274)
!3483 = !DILocation(line: 256, column: 7, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !274, file: !264, line: 256, column: 7)
!3485 = !DILocation(line: 256, column: 7, scope: !274)
!3486 = !DILocation(line: 258, column: 11, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !264, line: 257, column: 5)
!3488 = !DILocation(line: 258, column: 29, scope: !3487)
!3489 = !DILocation(line: 258, column: 27, scope: !3487)
!3490 = !DILocation(line: 258, column: 9, scope: !3487)
!3491 = !DILocation(line: 259, column: 16, scope: !3487)
!3492 = !DILocation(line: 259, column: 34, scope: !3487)
!3493 = !DILocation(line: 259, column: 52, scope: !3487)
!3494 = !DILocation(line: 259, column: 50, scope: !3487)
!3495 = !DILocation(line: 259, column: 32, scope: !3487)
!3496 = !DILocation(line: 259, column: 14, scope: !3487)
!3497 = !DILocation(line: 260, column: 5, scope: !3487)
!3498 = !DILocation(line: 262, column: 9, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !274, file: !264, line: 262, column: 7)
!3500 = !DILocation(line: 262, column: 7, scope: !274)
!3501 = !DILocation(line: 263, column: 6, scope: !3499)
!3502 = !DILocation(line: 263, column: 9, scope: !3499)
!3503 = !DILocation(line: 263, column: 5, scope: !3499)
!3504 = !DILocation(line: 264, column: 7, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !274, file: !264, line: 264, column: 7)
!3506 = !DILocation(line: 264, column: 11, scope: !3505)
!3507 = !DILocation(line: 264, column: 9, scope: !3505)
!3508 = !DILocation(line: 264, column: 16, scope: !3505)
!3509 = !DILocation(line: 264, column: 14, scope: !3505)
!3510 = !DILocation(line: 265, column: 7, scope: !3505)
!3511 = !DILocation(line: 265, column: 11, scope: !3505)
!3512 = !DILocation(line: 266, column: 11, scope: !3505)
!3513 = !DILocation(line: 266, column: 20, scope: !3505)
!3514 = !DILocation(line: 266, column: 17, scope: !3505)
!3515 = !DILocation(line: 266, column: 26, scope: !3505)
!3516 = !DILocation(line: 266, column: 29, scope: !3505)
!3517 = !DILocation(line: 266, column: 37, scope: !3505)
!3518 = !DILocation(line: 266, column: 35, scope: !3505)
!3519 = !DILocation(line: 267, column: 11, scope: !3505)
!3520 = !DILocation(line: 267, column: 14, scope: !3505)
!3521 = !DILocation(line: 264, column: 7, scope: !274)
!3522 = !DILocation(line: 268, column: 5, scope: !3505)
!3523 = !DILocation(line: 269, column: 18, scope: !274)
!3524 = !DILocation(line: 269, column: 22, scope: !274)
!3525 = !DILocation(line: 269, column: 8, scope: !274)
!3526 = !DILocation(line: 269, column: 6, scope: !274)
!3527 = !DILocation(line: 270, column: 9, scope: !274)
!3528 = !DILocation(line: 270, column: 4, scope: !274)
!3529 = !DILocation(line: 270, column: 7, scope: !274)
!3530 = !DILocation(line: 271, column: 10, scope: !274)
!3531 = !DILocation(line: 271, column: 3, scope: !274)
!3532 = distinct !DISubprogram(name: "xzalloc", scope: !264, file: !264, line: 279, type: !3307, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3533 = !DILocalVariable(name: "s", arg: 1, scope: !3532, file: !264, line: 279, type: !166)
!3534 = !DILocation(line: 279, column: 17, scope: !3532)
!3535 = !DILocation(line: 281, column: 19, scope: !3532)
!3536 = !DILocation(line: 281, column: 10, scope: !3532)
!3537 = !DILocation(line: 281, column: 3, scope: !3532)
!3538 = distinct !DISubprogram(name: "xcalloc", scope: !264, file: !264, line: 294, type: !3371, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3539 = !DILocalVariable(name: "n", arg: 1, scope: !3538, file: !264, line: 294, type: !166)
!3540 = !DILocation(line: 294, column: 17, scope: !3538)
!3541 = !DILocalVariable(name: "s", arg: 2, scope: !3538, file: !264, line: 294, type: !166)
!3542 = !DILocation(line: 294, column: 27, scope: !3538)
!3543 = !DILocation(line: 296, column: 33, scope: !3538)
!3544 = !DILocation(line: 296, column: 36, scope: !3538)
!3545 = !DILocation(line: 296, column: 25, scope: !3538)
!3546 = !DILocation(line: 296, column: 10, scope: !3538)
!3547 = !DILocation(line: 296, column: 3, scope: !3538)
!3548 = distinct !DISubprogram(name: "xizalloc", scope: !264, file: !264, line: 285, type: !3316, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3549 = !DILocalVariable(name: "s", arg: 1, scope: !3548, file: !264, line: 285, type: !278)
!3550 = !DILocation(line: 285, column: 17, scope: !3548)
!3551 = !DILocation(line: 287, column: 20, scope: !3548)
!3552 = !DILocation(line: 287, column: 10, scope: !3548)
!3553 = !DILocation(line: 287, column: 3, scope: !3548)
!3554 = distinct !DISubprogram(name: "xicalloc", scope: !264, file: !264, line: 300, type: !3382, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3555 = !DILocalVariable(name: "n", arg: 1, scope: !3554, file: !264, line: 300, type: !278)
!3556 = !DILocation(line: 300, column: 17, scope: !3554)
!3557 = !DILocalVariable(name: "s", arg: 2, scope: !3554, file: !264, line: 300, type: !278)
!3558 = !DILocation(line: 300, column: 26, scope: !3554)
!3559 = !DILocation(line: 302, column: 34, scope: !3554)
!3560 = !DILocation(line: 302, column: 37, scope: !3554)
!3561 = !DILocation(line: 302, column: 25, scope: !3554)
!3562 = !DILocation(line: 302, column: 10, scope: !3554)
!3563 = !DILocation(line: 302, column: 3, scope: !3554)
!3564 = distinct !DISubprogram(name: "xmemdup", scope: !264, file: !264, line: 310, type: !3565, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!55, !3567, !166}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3569 = !DILocalVariable(name: "p", arg: 1, scope: !3564, file: !264, line: 310, type: !3567)
!3570 = !DILocation(line: 310, column: 22, scope: !3564)
!3571 = !DILocalVariable(name: "s", arg: 2, scope: !3564, file: !264, line: 310, type: !166)
!3572 = !DILocation(line: 310, column: 32, scope: !3564)
!3573 = !DILocation(line: 312, column: 27, scope: !3564)
!3574 = !DILocation(line: 312, column: 18, scope: !3564)
!3575 = !DILocation(line: 312, column: 31, scope: !3564)
!3576 = !DILocation(line: 312, column: 34, scope: !3564)
!3577 = !DILocation(line: 312, column: 10, scope: !3564)
!3578 = !DILocation(line: 312, column: 3, scope: !3564)
!3579 = distinct !DISubprogram(name: "ximemdup", scope: !264, file: !264, line: 316, type: !3580, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!55, !3567, !278}
!3582 = !DILocalVariable(name: "p", arg: 1, scope: !3579, file: !264, line: 316, type: !3567)
!3583 = !DILocation(line: 316, column: 23, scope: !3579)
!3584 = !DILocalVariable(name: "s", arg: 2, scope: !3579, file: !264, line: 316, type: !278)
!3585 = !DILocation(line: 316, column: 32, scope: !3579)
!3586 = !DILocation(line: 318, column: 28, scope: !3579)
!3587 = !DILocation(line: 318, column: 18, scope: !3579)
!3588 = !DILocation(line: 318, column: 32, scope: !3579)
!3589 = !DILocation(line: 318, column: 35, scope: !3579)
!3590 = !DILocation(line: 318, column: 10, scope: !3579)
!3591 = !DILocation(line: 318, column: 3, scope: !3579)
!3592 = distinct !DISubprogram(name: "ximemdup0", scope: !264, file: !264, line: 325, type: !3593, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!27, !3567, !278}
!3595 = !DILocalVariable(name: "p", arg: 1, scope: !3592, file: !264, line: 325, type: !3567)
!3596 = !DILocation(line: 325, column: 24, scope: !3592)
!3597 = !DILocalVariable(name: "s", arg: 2, scope: !3592, file: !264, line: 325, type: !278)
!3598 = !DILocation(line: 325, column: 33, scope: !3592)
!3599 = !DILocalVariable(name: "result", scope: !3592, file: !264, line: 327, type: !27)
!3600 = !DILocation(line: 327, column: 9, scope: !3592)
!3601 = !DILocation(line: 327, column: 28, scope: !3592)
!3602 = !DILocation(line: 327, column: 30, scope: !3592)
!3603 = !DILocation(line: 327, column: 18, scope: !3592)
!3604 = !DILocation(line: 328, column: 3, scope: !3592)
!3605 = !DILocation(line: 328, column: 10, scope: !3592)
!3606 = !DILocation(line: 328, column: 13, scope: !3592)
!3607 = !DILocation(line: 329, column: 18, scope: !3592)
!3608 = !DILocation(line: 329, column: 26, scope: !3592)
!3609 = !DILocation(line: 329, column: 29, scope: !3592)
!3610 = !DILocation(line: 329, column: 10, scope: !3592)
!3611 = !DILocation(line: 329, column: 3, scope: !3592)
!3612 = distinct !DISubprogram(name: "xstrdup", scope: !264, file: !264, line: 335, type: !2675, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !29)
!3613 = !DILocalVariable(name: "string", arg: 1, scope: !3612, file: !264, line: 335, type: !63)
!3614 = !DILocation(line: 335, column: 22, scope: !3612)
!3615 = !DILocation(line: 337, column: 19, scope: !3612)
!3616 = !DILocation(line: 337, column: 35, scope: !3612)
!3617 = !DILocation(line: 337, column: 27, scope: !3612)
!3618 = !DILocation(line: 337, column: 43, scope: !3612)
!3619 = !DILocation(line: 337, column: 10, scope: !3612)
!3620 = !DILocation(line: 337, column: 3, scope: !3612)
!3621 = distinct !DISubprogram(name: "xalloc_die", scope: !284, file: !284, line: 32, type: !122, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !29)
!3622 = !DILocalVariable(name: "__errstatus", scope: !3623, file: !284, line: 34, type: !785)
!3623 = distinct !DILexicalBlock(scope: !3621, file: !284, line: 34, column: 3)
!3624 = !DILocation(line: 34, column: 3, scope: !3623)
!3625 = !DILocation(line: 40, column: 3, scope: !3621)
!3626 = distinct !DISubprogram(name: "xstrtol", scope: !286, file: !286, line: 71, type: !3627, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !29)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!3629, !63, !26, !25, !3630, !63}
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !14, line: 43, baseType: !13)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!3631 = !DILocalVariable(name: "nptr", arg: 1, scope: !3626, file: !286, line: 71, type: !63)
!3632 = !DILocation(line: 71, column: 24, scope: !3626)
!3633 = !DILocalVariable(name: "endptr", arg: 2, scope: !3626, file: !286, line: 71, type: !26)
!3634 = !DILocation(line: 71, column: 37, scope: !3626)
!3635 = !DILocalVariable(name: "base", arg: 3, scope: !3626, file: !286, line: 71, type: !25)
!3636 = !DILocation(line: 71, column: 49, scope: !3626)
!3637 = !DILocalVariable(name: "val", arg: 4, scope: !3626, file: !286, line: 72, type: !3630)
!3638 = !DILocation(line: 72, column: 24, scope: !3626)
!3639 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3626, file: !286, line: 72, type: !63)
!3640 = !DILocation(line: 72, column: 41, scope: !3626)
!3641 = !DILocalVariable(name: "t_ptr", scope: !3626, file: !286, line: 74, type: !27)
!3642 = !DILocation(line: 74, column: 9, scope: !3626)
!3643 = !DILocalVariable(name: "p", scope: !3626, file: !286, line: 75, type: !26)
!3644 = !DILocation(line: 75, column: 10, scope: !3626)
!3645 = !DILocation(line: 75, column: 14, scope: !3626)
!3646 = !DILocation(line: 75, column: 23, scope: !3626)
!3647 = !DILocation(line: 90, column: 3, scope: !3626)
!3648 = !DILocation(line: 90, column: 9, scope: !3626)
!3649 = !DILocalVariable(name: "tmp", scope: !3626, file: !286, line: 91, type: !281)
!3650 = !DILocation(line: 91, column: 14, scope: !3626)
!3651 = !DILocation(line: 91, column: 30, scope: !3626)
!3652 = !DILocation(line: 91, column: 36, scope: !3626)
!3653 = !DILocation(line: 91, column: 39, scope: !3626)
!3654 = !DILocation(line: 91, column: 20, scope: !3626)
!3655 = !DILocalVariable(name: "err", scope: !3626, file: !286, line: 92, type: !3629)
!3656 = !DILocation(line: 92, column: 16, scope: !3626)
!3657 = !DILocation(line: 94, column: 8, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3626, file: !286, line: 94, column: 7)
!3659 = !DILocation(line: 94, column: 7, scope: !3658)
!3660 = !DILocation(line: 94, column: 13, scope: !3658)
!3661 = !DILocation(line: 94, column: 10, scope: !3658)
!3662 = !DILocation(line: 94, column: 7, scope: !3626)
!3663 = !DILocation(line: 98, column: 14, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !286, line: 98, column: 11)
!3665 = distinct !DILexicalBlock(scope: !3658, file: !286, line: 95, column: 5)
!3666 = !DILocation(line: 98, column: 29, scope: !3664)
!3667 = !DILocation(line: 98, column: 33, scope: !3664)
!3668 = !DILocation(line: 98, column: 32, scope: !3664)
!3669 = !DILocation(line: 98, column: 38, scope: !3664)
!3670 = !DILocation(line: 98, column: 49, scope: !3664)
!3671 = !DILocation(line: 98, column: 66, scope: !3664)
!3672 = !DILocation(line: 98, column: 65, scope: !3664)
!3673 = !DILocation(line: 98, column: 41, scope: !3664)
!3674 = !DILocation(line: 98, column: 11, scope: !3665)
!3675 = !DILocation(line: 99, column: 9, scope: !3664)
!3676 = !DILocation(line: 100, column: 11, scope: !3665)
!3677 = !DILocation(line: 101, column: 5, scope: !3665)
!3678 = !DILocation(line: 102, column: 12, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3658, file: !286, line: 102, column: 12)
!3680 = !DILocation(line: 102, column: 18, scope: !3679)
!3681 = !DILocation(line: 102, column: 12, scope: !3658)
!3682 = !DILocation(line: 104, column: 11, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !286, line: 104, column: 11)
!3684 = distinct !DILexicalBlock(scope: !3679, file: !286, line: 103, column: 5)
!3685 = !DILocation(line: 104, column: 17, scope: !3683)
!3686 = !DILocation(line: 104, column: 11, scope: !3684)
!3687 = !DILocation(line: 105, column: 9, scope: !3683)
!3688 = !DILocation(line: 106, column: 11, scope: !3684)
!3689 = !DILocation(line: 107, column: 5, scope: !3684)
!3690 = !DILocation(line: 112, column: 8, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3626, file: !286, line: 112, column: 7)
!3692 = !DILocation(line: 112, column: 7, scope: !3626)
!3693 = !DILocation(line: 114, column: 14, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3691, file: !286, line: 113, column: 5)
!3695 = !DILocation(line: 114, column: 8, scope: !3694)
!3696 = !DILocation(line: 114, column: 12, scope: !3694)
!3697 = !DILocation(line: 115, column: 14, scope: !3694)
!3698 = !DILocation(line: 115, column: 7, scope: !3694)
!3699 = !DILocation(line: 118, column: 9, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3626, file: !286, line: 118, column: 7)
!3701 = !DILocation(line: 118, column: 8, scope: !3700)
!3702 = !DILocation(line: 118, column: 7, scope: !3700)
!3703 = !DILocation(line: 118, column: 11, scope: !3700)
!3704 = !DILocation(line: 118, column: 7, scope: !3626)
!3705 = !DILocation(line: 120, column: 20, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3707, file: !286, line: 120, column: 11)
!3707 = distinct !DILexicalBlock(scope: !3700, file: !286, line: 119, column: 5)
!3708 = !DILocation(line: 120, column: 38, scope: !3706)
!3709 = !DILocation(line: 120, column: 37, scope: !3706)
!3710 = !DILocation(line: 120, column: 36, scope: !3706)
!3711 = !DILocation(line: 120, column: 12, scope: !3706)
!3712 = !DILocation(line: 120, column: 11, scope: !3707)
!3713 = !DILocation(line: 122, column: 18, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3706, file: !286, line: 121, column: 9)
!3715 = !DILocation(line: 122, column: 12, scope: !3714)
!3716 = !DILocation(line: 122, column: 16, scope: !3714)
!3717 = !DILocation(line: 123, column: 18, scope: !3714)
!3718 = !DILocation(line: 123, column: 22, scope: !3714)
!3719 = !DILocation(line: 123, column: 11, scope: !3714)
!3720 = !DILocalVariable(name: "xbase", scope: !3707, file: !286, line: 126, type: !25)
!3721 = !DILocation(line: 126, column: 11, scope: !3707)
!3722 = !DILocalVariable(name: "suffixes", scope: !3707, file: !286, line: 127, type: !25)
!3723 = !DILocation(line: 127, column: 11, scope: !3707)
!3724 = !DILocation(line: 128, column: 17, scope: !3707)
!3725 = !DILocation(line: 128, column: 16, scope: !3707)
!3726 = !DILocation(line: 128, column: 15, scope: !3707)
!3727 = !DILocation(line: 128, column: 7, scope: !3707)
!3728 = !DILocation(line: 140, column: 23, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3730, file: !286, line: 140, column: 15)
!3730 = distinct !DILexicalBlock(scope: !3707, file: !286, line: 129, column: 9)
!3731 = !DILocation(line: 140, column: 15, scope: !3729)
!3732 = !DILocation(line: 140, column: 15, scope: !3730)
!3733 = !DILocation(line: 141, column: 21, scope: !3729)
!3734 = !DILocation(line: 141, column: 13, scope: !3729)
!3735 = !DILocation(line: 144, column: 21, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !286, line: 144, column: 21)
!3737 = distinct !DILexicalBlock(scope: !3729, file: !286, line: 142, column: 15)
!3738 = !DILocation(line: 144, column: 29, scope: !3736)
!3739 = !DILocation(line: 144, column: 21, scope: !3737)
!3740 = !DILocation(line: 145, column: 28, scope: !3736)
!3741 = !DILocation(line: 145, column: 19, scope: !3736)
!3742 = !DILocation(line: 146, column: 17, scope: !3737)
!3743 = !DILocation(line: 150, column: 23, scope: !3737)
!3744 = !DILocation(line: 151, column: 25, scope: !3737)
!3745 = !DILocation(line: 152, column: 17, scope: !3737)
!3746 = !DILocation(line: 153, column: 15, scope: !3737)
!3747 = !DILocation(line: 154, column: 9, scope: !3730)
!3748 = !DILocalVariable(name: "overflow", scope: !3707, file: !286, line: 156, type: !3629)
!3749 = !DILocation(line: 156, column: 20, scope: !3707)
!3750 = !DILocation(line: 157, column: 17, scope: !3707)
!3751 = !DILocation(line: 157, column: 16, scope: !3707)
!3752 = !DILocation(line: 157, column: 15, scope: !3707)
!3753 = !DILocation(line: 157, column: 7, scope: !3707)
!3754 = !DILocation(line: 160, column: 22, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3707, file: !286, line: 158, column: 9)
!3756 = !DILocation(line: 160, column: 20, scope: !3755)
!3757 = !DILocation(line: 161, column: 11, scope: !3755)
!3758 = !DILocation(line: 167, column: 22, scope: !3755)
!3759 = !DILocation(line: 167, column: 20, scope: !3755)
!3760 = !DILocation(line: 168, column: 11, scope: !3755)
!3761 = !DILocation(line: 171, column: 20, scope: !3755)
!3762 = !DILocation(line: 172, column: 11, scope: !3755)
!3763 = !DILocation(line: 175, column: 48, scope: !3755)
!3764 = !DILocation(line: 175, column: 22, scope: !3755)
!3765 = !DILocation(line: 175, column: 20, scope: !3755)
!3766 = !DILocation(line: 176, column: 11, scope: !3755)
!3767 = !DILocation(line: 180, column: 48, scope: !3755)
!3768 = !DILocation(line: 180, column: 22, scope: !3755)
!3769 = !DILocation(line: 180, column: 20, scope: !3755)
!3770 = !DILocation(line: 181, column: 11, scope: !3755)
!3771 = !DILocation(line: 185, column: 48, scope: !3755)
!3772 = !DILocation(line: 185, column: 22, scope: !3755)
!3773 = !DILocation(line: 185, column: 20, scope: !3755)
!3774 = !DILocation(line: 186, column: 11, scope: !3755)
!3775 = !DILocation(line: 190, column: 48, scope: !3755)
!3776 = !DILocation(line: 190, column: 22, scope: !3755)
!3777 = !DILocation(line: 190, column: 20, scope: !3755)
!3778 = !DILocation(line: 191, column: 11, scope: !3755)
!3779 = !DILocation(line: 194, column: 48, scope: !3755)
!3780 = !DILocation(line: 194, column: 22, scope: !3755)
!3781 = !DILocation(line: 194, column: 20, scope: !3755)
!3782 = !DILocation(line: 195, column: 11, scope: !3755)
!3783 = !DILocation(line: 198, column: 48, scope: !3755)
!3784 = !DILocation(line: 198, column: 22, scope: !3755)
!3785 = !DILocation(line: 198, column: 20, scope: !3755)
!3786 = !DILocation(line: 199, column: 11, scope: !3755)
!3787 = !DILocation(line: 202, column: 48, scope: !3755)
!3788 = !DILocation(line: 202, column: 22, scope: !3755)
!3789 = !DILocation(line: 202, column: 20, scope: !3755)
!3790 = !DILocation(line: 203, column: 11, scope: !3755)
!3791 = !DILocation(line: 207, column: 48, scope: !3755)
!3792 = !DILocation(line: 207, column: 22, scope: !3755)
!3793 = !DILocation(line: 207, column: 20, scope: !3755)
!3794 = !DILocation(line: 208, column: 11, scope: !3755)
!3795 = !DILocation(line: 211, column: 22, scope: !3755)
!3796 = !DILocation(line: 211, column: 20, scope: !3755)
!3797 = !DILocation(line: 212, column: 11, scope: !3755)
!3798 = !DILocation(line: 215, column: 48, scope: !3755)
!3799 = !DILocation(line: 215, column: 22, scope: !3755)
!3800 = !DILocation(line: 215, column: 20, scope: !3755)
!3801 = !DILocation(line: 216, column: 11, scope: !3755)
!3802 = !DILocation(line: 219, column: 48, scope: !3755)
!3803 = !DILocation(line: 219, column: 22, scope: !3755)
!3804 = !DILocation(line: 219, column: 20, scope: !3755)
!3805 = !DILocation(line: 220, column: 11, scope: !3755)
!3806 = !DILocation(line: 223, column: 18, scope: !3755)
!3807 = !DILocation(line: 223, column: 12, scope: !3755)
!3808 = !DILocation(line: 223, column: 16, scope: !3755)
!3809 = !DILocation(line: 224, column: 18, scope: !3755)
!3810 = !DILocation(line: 224, column: 22, scope: !3755)
!3811 = !DILocation(line: 224, column: 11, scope: !3755)
!3812 = !DILocation(line: 227, column: 14, scope: !3707)
!3813 = !DILocation(line: 227, column: 11, scope: !3707)
!3814 = !DILocation(line: 228, column: 13, scope: !3707)
!3815 = !DILocation(line: 228, column: 8, scope: !3707)
!3816 = !DILocation(line: 228, column: 10, scope: !3707)
!3817 = !DILocation(line: 229, column: 13, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3707, file: !286, line: 229, column: 11)
!3819 = !DILocation(line: 229, column: 12, scope: !3818)
!3820 = !DILocation(line: 229, column: 11, scope: !3818)
!3821 = !DILocation(line: 229, column: 11, scope: !3707)
!3822 = !DILocation(line: 230, column: 13, scope: !3818)
!3823 = !DILocation(line: 230, column: 9, scope: !3818)
!3824 = !DILocation(line: 231, column: 5, scope: !3707)
!3825 = !DILocation(line: 233, column: 10, scope: !3626)
!3826 = !DILocation(line: 233, column: 4, scope: !3626)
!3827 = !DILocation(line: 233, column: 8, scope: !3626)
!3828 = !DILocation(line: 234, column: 10, scope: !3626)
!3829 = !DILocation(line: 234, column: 3, scope: !3626)
!3830 = !DILocation(line: 235, column: 1, scope: !3626)
!3831 = distinct !DISubprogram(name: "bkm_scale", scope: !286, file: !286, line: 47, type: !3832, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !285, retainedNodes: !29)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!3629, !3630, !25}
!3834 = !DILocalVariable(name: "x", arg: 1, scope: !3831, file: !286, line: 47, type: !3630)
!3835 = !DILocation(line: 47, column: 24, scope: !3831)
!3836 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3831, file: !286, line: 47, type: !25)
!3837 = !DILocation(line: 47, column: 31, scope: !3831)
!3838 = !DILocalVariable(name: "scaled", scope: !3831, file: !286, line: 49, type: !281)
!3839 = !DILocation(line: 49, column: 14, scope: !3831)
!3840 = !DILocation(line: 50, column: 7, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3831, file: !286, line: 50, column: 7)
!3842 = !DILocation(line: 50, column: 7, scope: !3831)
!3843 = !DILocation(line: 52, column: 13, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3841, file: !286, line: 51, column: 5)
!3845 = !DILocation(line: 52, column: 12, scope: !3844)
!3846 = !DILocation(line: 52, column: 15, scope: !3844)
!3847 = !DILocation(line: 52, column: 8, scope: !3844)
!3848 = !DILocation(line: 52, column: 10, scope: !3844)
!3849 = !DILocation(line: 53, column: 7, scope: !3844)
!3850 = !DILocation(line: 56, column: 8, scope: !3831)
!3851 = !DILocation(line: 56, column: 4, scope: !3831)
!3852 = !DILocation(line: 56, column: 6, scope: !3831)
!3853 = !DILocation(line: 58, column: 3, scope: !3831)
!3854 = !DILocation(line: 59, column: 1, scope: !3831)
!3855 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !286, file: !286, line: 62, type: !3856, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !285, retainedNodes: !29)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!3629, !3630, !25, !25}
!3858 = !DILocalVariable(name: "x", arg: 1, scope: !3855, file: !286, line: 62, type: !3630)
!3859 = !DILocation(line: 62, column: 33, scope: !3855)
!3860 = !DILocalVariable(name: "base", arg: 2, scope: !3855, file: !286, line: 62, type: !25)
!3861 = !DILocation(line: 62, column: 40, scope: !3855)
!3862 = !DILocalVariable(name: "power", arg: 3, scope: !3855, file: !286, line: 62, type: !25)
!3863 = !DILocation(line: 62, column: 50, scope: !3855)
!3864 = !DILocalVariable(name: "err", scope: !3855, file: !286, line: 64, type: !3629)
!3865 = !DILocation(line: 64, column: 16, scope: !3855)
!3866 = !DILocation(line: 65, column: 3, scope: !3855)
!3867 = !DILocation(line: 65, column: 15, scope: !3855)
!3868 = !DILocation(line: 66, column: 23, scope: !3855)
!3869 = !DILocation(line: 66, column: 26, scope: !3855)
!3870 = !DILocation(line: 66, column: 12, scope: !3855)
!3871 = !DILocation(line: 66, column: 9, scope: !3855)
!3872 = distinct !{!3872, !3866, !3873, !430}
!3873 = !DILocation(line: 66, column: 30, scope: !3855)
!3874 = !DILocation(line: 67, column: 10, scope: !3855)
!3875 = !DILocation(line: 67, column: 3, scope: !3855)
!3876 = distinct !DISubprogram(name: "c32isprint", scope: !3877, file: !3877, line: 41, type: !3878, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !29)
!3877 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!25, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3881, line: 20, baseType: !7)
!3881 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3882 = !DILocalVariable(name: "wc", arg: 1, scope: !3876, file: !3877, line: 41, type: !3880)
!3883 = !DILocation(line: 41, column: 14, scope: !3876)
!3884 = !DILocation(line: 66, column: 22, scope: !3876)
!3885 = !DILocation(line: 66, column: 10, scope: !3876)
!3886 = !DILocation(line: 66, column: 3, scope: !3876)
!3887 = distinct !DISubprogram(name: "close_stream", scope: !292, file: !292, line: 55, type: !3888, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !291, retainedNodes: !29)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!25, !3890}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2965, line: 7, baseType: !3892)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2967, line: 49, size: 1728, elements: !3893)
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3892, file: !2967, line: 51, baseType: !25, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3892, file: !2967, line: 54, baseType: !27, size: 64, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3892, file: !2967, line: 55, baseType: !27, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3892, file: !2967, line: 56, baseType: !27, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3892, file: !2967, line: 57, baseType: !27, size: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3892, file: !2967, line: 58, baseType: !27, size: 64, offset: 320)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3892, file: !2967, line: 59, baseType: !27, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3892, file: !2967, line: 60, baseType: !27, size: 64, offset: 448)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3892, file: !2967, line: 61, baseType: !27, size: 64, offset: 512)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3892, file: !2967, line: 64, baseType: !27, size: 64, offset: 576)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3892, file: !2967, line: 65, baseType: !27, size: 64, offset: 640)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3892, file: !2967, line: 66, baseType: !27, size: 64, offset: 704)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3892, file: !2967, line: 68, baseType: !2982, size: 64, offset: 768)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3892, file: !2967, line: 70, baseType: !3908, size: 64, offset: 832)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3892, file: !2967, line: 72, baseType: !25, size: 32, offset: 896)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3892, file: !2967, line: 73, baseType: !25, size: 32, offset: 928)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3892, file: !2967, line: 74, baseType: !2989, size: 64, offset: 960)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3892, file: !2967, line: 77, baseType: !56, size: 16, offset: 1024)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3892, file: !2967, line: 78, baseType: !2992, size: 8, offset: 1040)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3892, file: !2967, line: 79, baseType: !2994, size: 8, offset: 1048)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3892, file: !2967, line: 81, baseType: !2998, size: 64, offset: 1088)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3892, file: !2967, line: 89, baseType: !3001, size: 64, offset: 1152)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3892, file: !2967, line: 91, baseType: !3003, size: 64, offset: 1216)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3892, file: !2967, line: 92, baseType: !3006, size: 64, offset: 1280)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3892, file: !2967, line: 93, baseType: !3908, size: 64, offset: 1344)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3892, file: !2967, line: 94, baseType: !55, size: 64, offset: 1408)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3892, file: !2967, line: 95, baseType: !166, size: 64, offset: 1472)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3892, file: !2967, line: 96, baseType: !25, size: 32, offset: 1536)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3892, file: !2967, line: 98, baseType: !3013, size: 160, offset: 1568)
!3924 = !DILocalVariable(name: "stream", arg: 1, scope: !3887, file: !292, line: 55, type: !3890)
!3925 = !DILocation(line: 55, column: 21, scope: !3887)
!3926 = !DILocalVariable(name: "some_pending", scope: !3887, file: !292, line: 57, type: !3927)
!3927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!3928 = !DILocation(line: 57, column: 14, scope: !3887)
!3929 = !DILocation(line: 57, column: 42, scope: !3887)
!3930 = !DILocation(line: 57, column: 30, scope: !3887)
!3931 = !DILocation(line: 57, column: 50, scope: !3887)
!3932 = !DILocalVariable(name: "prev_fail", scope: !3887, file: !292, line: 58, type: !3927)
!3933 = !DILocation(line: 58, column: 14, scope: !3887)
!3934 = !DILocation(line: 58, column: 27, scope: !3887)
!3935 = !DILocation(line: 58, column: 43, scope: !3887)
!3936 = !DILocalVariable(name: "fclose_fail", scope: !3887, file: !292, line: 59, type: !3927)
!3937 = !DILocation(line: 59, column: 14, scope: !3887)
!3938 = !DILocation(line: 59, column: 37, scope: !3887)
!3939 = !DILocation(line: 59, column: 29, scope: !3887)
!3940 = !DILocation(line: 59, column: 45, scope: !3887)
!3941 = !DILocation(line: 69, column: 7, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3887, file: !292, line: 69, column: 7)
!3943 = !DILocation(line: 69, column: 17, scope: !3942)
!3944 = !DILocation(line: 69, column: 21, scope: !3942)
!3945 = !DILocation(line: 69, column: 33, scope: !3942)
!3946 = !DILocation(line: 69, column: 37, scope: !3942)
!3947 = !DILocation(line: 69, column: 50, scope: !3942)
!3948 = !DILocation(line: 69, column: 53, scope: !3942)
!3949 = !DILocation(line: 69, column: 59, scope: !3942)
!3950 = !DILocation(line: 69, column: 7, scope: !3887)
!3951 = !DILocation(line: 71, column: 13, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !292, line: 71, column: 11)
!3953 = distinct !DILexicalBlock(scope: !3942, file: !292, line: 70, column: 5)
!3954 = !DILocation(line: 71, column: 11, scope: !3953)
!3955 = !DILocation(line: 72, column: 9, scope: !3952)
!3956 = !DILocation(line: 72, column: 15, scope: !3952)
!3957 = !DILocation(line: 73, column: 7, scope: !3953)
!3958 = !DILocation(line: 76, column: 3, scope: !3887)
!3959 = !DILocation(line: 77, column: 1, scope: !3887)
!3960 = distinct !DISubprogram(name: "rpl_fclose", scope: !294, file: !294, line: 58, type: !3961, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !29)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!25, !3963}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2965, line: 7, baseType: !3965)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2967, line: 49, size: 1728, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3965, file: !2967, line: 51, baseType: !25, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3965, file: !2967, line: 54, baseType: !27, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3965, file: !2967, line: 55, baseType: !27, size: 64, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3965, file: !2967, line: 56, baseType: !27, size: 64, offset: 192)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3965, file: !2967, line: 57, baseType: !27, size: 64, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3965, file: !2967, line: 58, baseType: !27, size: 64, offset: 320)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3965, file: !2967, line: 59, baseType: !27, size: 64, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3965, file: !2967, line: 60, baseType: !27, size: 64, offset: 448)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3965, file: !2967, line: 61, baseType: !27, size: 64, offset: 512)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3965, file: !2967, line: 64, baseType: !27, size: 64, offset: 576)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3965, file: !2967, line: 65, baseType: !27, size: 64, offset: 640)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3965, file: !2967, line: 66, baseType: !27, size: 64, offset: 704)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3965, file: !2967, line: 68, baseType: !2982, size: 64, offset: 768)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3965, file: !2967, line: 70, baseType: !3981, size: 64, offset: 832)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3965, file: !2967, line: 72, baseType: !25, size: 32, offset: 896)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3965, file: !2967, line: 73, baseType: !25, size: 32, offset: 928)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3965, file: !2967, line: 74, baseType: !2989, size: 64, offset: 960)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3965, file: !2967, line: 77, baseType: !56, size: 16, offset: 1024)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3965, file: !2967, line: 78, baseType: !2992, size: 8, offset: 1040)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3965, file: !2967, line: 79, baseType: !2994, size: 8, offset: 1048)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3965, file: !2967, line: 81, baseType: !2998, size: 64, offset: 1088)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3965, file: !2967, line: 89, baseType: !3001, size: 64, offset: 1152)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3965, file: !2967, line: 91, baseType: !3003, size: 64, offset: 1216)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3965, file: !2967, line: 92, baseType: !3006, size: 64, offset: 1280)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3965, file: !2967, line: 93, baseType: !3981, size: 64, offset: 1344)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3965, file: !2967, line: 94, baseType: !55, size: 64, offset: 1408)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3965, file: !2967, line: 95, baseType: !166, size: 64, offset: 1472)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3965, file: !2967, line: 96, baseType: !25, size: 32, offset: 1536)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3965, file: !2967, line: 98, baseType: !3013, size: 160, offset: 1568)
!3997 = !DILocalVariable(name: "fp", arg: 1, scope: !3960, file: !294, line: 58, type: !3963)
!3998 = !DILocation(line: 58, column: 19, scope: !3960)
!3999 = !DILocalVariable(name: "saved_errno", scope: !3960, file: !294, line: 60, type: !25)
!4000 = !DILocation(line: 60, column: 7, scope: !3960)
!4001 = !DILocalVariable(name: "fd", scope: !3960, file: !294, line: 63, type: !25)
!4002 = !DILocation(line: 63, column: 7, scope: !3960)
!4003 = !DILocation(line: 63, column: 20, scope: !3960)
!4004 = !DILocation(line: 63, column: 12, scope: !3960)
!4005 = !DILocation(line: 64, column: 7, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3960, file: !294, line: 64, column: 7)
!4007 = !DILocation(line: 64, column: 10, scope: !4006)
!4008 = !DILocation(line: 64, column: 7, scope: !3960)
!4009 = !DILocation(line: 65, column: 28, scope: !4006)
!4010 = !DILocation(line: 65, column: 12, scope: !4006)
!4011 = !DILocation(line: 65, column: 5, scope: !4006)
!4012 = !DILocation(line: 70, column: 9, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3960, file: !294, line: 70, column: 7)
!4014 = !DILocation(line: 70, column: 23, scope: !4013)
!4015 = !DILocation(line: 70, column: 41, scope: !4013)
!4016 = !DILocation(line: 70, column: 33, scope: !4013)
!4017 = !DILocation(line: 70, column: 26, scope: !4013)
!4018 = !DILocation(line: 70, column: 59, scope: !4013)
!4019 = !DILocation(line: 71, column: 7, scope: !4013)
!4020 = !DILocation(line: 71, column: 18, scope: !4013)
!4021 = !DILocation(line: 71, column: 10, scope: !4013)
!4022 = !DILocation(line: 70, column: 7, scope: !3960)
!4023 = !DILocation(line: 72, column: 19, scope: !4013)
!4024 = !DILocation(line: 72, column: 17, scope: !4013)
!4025 = !DILocation(line: 72, column: 5, scope: !4013)
!4026 = !DILocalVariable(name: "result", scope: !3960, file: !294, line: 74, type: !25)
!4027 = !DILocation(line: 74, column: 7, scope: !3960)
!4028 = !DILocation(line: 100, column: 28, scope: !3960)
!4029 = !DILocation(line: 100, column: 12, scope: !3960)
!4030 = !DILocation(line: 100, column: 10, scope: !3960)
!4031 = !DILocation(line: 105, column: 7, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3960, file: !294, line: 105, column: 7)
!4033 = !DILocation(line: 105, column: 19, scope: !4032)
!4034 = !DILocation(line: 105, column: 7, scope: !3960)
!4035 = !DILocation(line: 107, column: 15, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4032, file: !294, line: 106, column: 5)
!4037 = !DILocation(line: 107, column: 7, scope: !4036)
!4038 = !DILocation(line: 107, column: 13, scope: !4036)
!4039 = !DILocation(line: 108, column: 14, scope: !4036)
!4040 = !DILocation(line: 109, column: 5, scope: !4036)
!4041 = !DILocation(line: 111, column: 10, scope: !3960)
!4042 = !DILocation(line: 111, column: 3, scope: !3960)
!4043 = !DILocation(line: 112, column: 1, scope: !3960)
!4044 = distinct !DISubprogram(name: "rpl_fflush", scope: !296, file: !296, line: 130, type: !4045, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !29)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!25, !4047}
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2965, line: 7, baseType: !4049)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2967, line: 49, size: 1728, elements: !4050)
!4050 = !{!4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4049, file: !2967, line: 51, baseType: !25, size: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4049, file: !2967, line: 54, baseType: !27, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4049, file: !2967, line: 55, baseType: !27, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4049, file: !2967, line: 56, baseType: !27, size: 64, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4049, file: !2967, line: 57, baseType: !27, size: 64, offset: 256)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4049, file: !2967, line: 58, baseType: !27, size: 64, offset: 320)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4049, file: !2967, line: 59, baseType: !27, size: 64, offset: 384)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4049, file: !2967, line: 60, baseType: !27, size: 64, offset: 448)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4049, file: !2967, line: 61, baseType: !27, size: 64, offset: 512)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4049, file: !2967, line: 64, baseType: !27, size: 64, offset: 576)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4049, file: !2967, line: 65, baseType: !27, size: 64, offset: 640)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4049, file: !2967, line: 66, baseType: !27, size: 64, offset: 704)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4049, file: !2967, line: 68, baseType: !2982, size: 64, offset: 768)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4049, file: !2967, line: 70, baseType: !4065, size: 64, offset: 832)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4049, file: !2967, line: 72, baseType: !25, size: 32, offset: 896)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4049, file: !2967, line: 73, baseType: !25, size: 32, offset: 928)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4049, file: !2967, line: 74, baseType: !2989, size: 64, offset: 960)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4049, file: !2967, line: 77, baseType: !56, size: 16, offset: 1024)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4049, file: !2967, line: 78, baseType: !2992, size: 8, offset: 1040)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4049, file: !2967, line: 79, baseType: !2994, size: 8, offset: 1048)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4049, file: !2967, line: 81, baseType: !2998, size: 64, offset: 1088)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4049, file: !2967, line: 89, baseType: !3001, size: 64, offset: 1152)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4049, file: !2967, line: 91, baseType: !3003, size: 64, offset: 1216)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4049, file: !2967, line: 92, baseType: !3006, size: 64, offset: 1280)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4049, file: !2967, line: 93, baseType: !4065, size: 64, offset: 1344)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4049, file: !2967, line: 94, baseType: !55, size: 64, offset: 1408)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4049, file: !2967, line: 95, baseType: !166, size: 64, offset: 1472)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4049, file: !2967, line: 96, baseType: !25, size: 32, offset: 1536)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4049, file: !2967, line: 98, baseType: !3013, size: 160, offset: 1568)
!4081 = !DILocalVariable(name: "stream", arg: 1, scope: !4044, file: !296, line: 130, type: !4047)
!4082 = !DILocation(line: 130, column: 19, scope: !4044)
!4083 = !DILocation(line: 151, column: 7, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4044, file: !296, line: 151, column: 7)
!4085 = !DILocation(line: 151, column: 14, scope: !4084)
!4086 = !DILocation(line: 151, column: 22, scope: !4084)
!4087 = !DILocation(line: 151, column: 27, scope: !4084)
!4088 = !DILocation(line: 151, column: 7, scope: !4044)
!4089 = !DILocation(line: 152, column: 20, scope: !4084)
!4090 = !DILocation(line: 152, column: 12, scope: !4084)
!4091 = !DILocation(line: 152, column: 5, scope: !4084)
!4092 = !DILocation(line: 157, column: 44, scope: !4044)
!4093 = !DILocation(line: 157, column: 3, scope: !4044)
!4094 = !DILocation(line: 159, column: 18, scope: !4044)
!4095 = !DILocation(line: 159, column: 10, scope: !4044)
!4096 = !DILocation(line: 159, column: 3, scope: !4044)
!4097 = !DILocation(line: 236, column: 1, scope: !4044)
!4098 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !296, file: !296, line: 42, type: !4099, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !295, retainedNodes: !29)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !4047}
!4101 = !DILocalVariable(name: "fp", arg: 1, scope: !4098, file: !296, line: 42, type: !4047)
!4102 = !DILocation(line: 42, column: 48, scope: !4098)
!4103 = !DILocation(line: 44, column: 7, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4098, file: !296, line: 44, column: 7)
!4105 = !DILocation(line: 44, column: 12, scope: !4104)
!4106 = !DILocation(line: 44, column: 19, scope: !4104)
!4107 = !DILocation(line: 44, column: 7, scope: !4098)
!4108 = !DILocation(line: 46, column: 13, scope: !4104)
!4109 = !DILocation(line: 46, column: 5, scope: !4104)
!4110 = !DILocation(line: 47, column: 1, scope: !4098)
!4111 = distinct !DISubprogram(name: "rpl_fseeko", scope: !298, file: !298, line: 28, type: !4112, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !29)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!25, !4114, !4148, !25}
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2965, line: 7, baseType: !4116)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2967, line: 49, size: 1728, elements: !4117)
!4117 = !{!4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4116, file: !2967, line: 51, baseType: !25, size: 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4116, file: !2967, line: 54, baseType: !27, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4116, file: !2967, line: 55, baseType: !27, size: 64, offset: 128)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4116, file: !2967, line: 56, baseType: !27, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4116, file: !2967, line: 57, baseType: !27, size: 64, offset: 256)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4116, file: !2967, line: 58, baseType: !27, size: 64, offset: 320)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4116, file: !2967, line: 59, baseType: !27, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4116, file: !2967, line: 60, baseType: !27, size: 64, offset: 448)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4116, file: !2967, line: 61, baseType: !27, size: 64, offset: 512)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4116, file: !2967, line: 64, baseType: !27, size: 64, offset: 576)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4116, file: !2967, line: 65, baseType: !27, size: 64, offset: 640)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4116, file: !2967, line: 66, baseType: !27, size: 64, offset: 704)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4116, file: !2967, line: 68, baseType: !2982, size: 64, offset: 768)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4116, file: !2967, line: 70, baseType: !4132, size: 64, offset: 832)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4116, file: !2967, line: 72, baseType: !25, size: 32, offset: 896)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4116, file: !2967, line: 73, baseType: !25, size: 32, offset: 928)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4116, file: !2967, line: 74, baseType: !2989, size: 64, offset: 960)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4116, file: !2967, line: 77, baseType: !56, size: 16, offset: 1024)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4116, file: !2967, line: 78, baseType: !2992, size: 8, offset: 1040)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4116, file: !2967, line: 79, baseType: !2994, size: 8, offset: 1048)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4116, file: !2967, line: 81, baseType: !2998, size: 64, offset: 1088)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4116, file: !2967, line: 89, baseType: !3001, size: 64, offset: 1152)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4116, file: !2967, line: 91, baseType: !3003, size: 64, offset: 1216)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4116, file: !2967, line: 92, baseType: !3006, size: 64, offset: 1280)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4116, file: !2967, line: 93, baseType: !4132, size: 64, offset: 1344)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4116, file: !2967, line: 94, baseType: !55, size: 64, offset: 1408)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4116, file: !2967, line: 95, baseType: !166, size: 64, offset: 1472)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4116, file: !2967, line: 96, baseType: !25, size: 32, offset: 1536)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4116, file: !2967, line: 98, baseType: !3013, size: 160, offset: 1568)
!4148 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !102, line: 63, baseType: !2989)
!4149 = !DILocalVariable(name: "fp", arg: 1, scope: !4111, file: !298, line: 28, type: !4114)
!4150 = !DILocation(line: 28, column: 15, scope: !4111)
!4151 = !DILocalVariable(name: "offset", arg: 2, scope: !4111, file: !298, line: 28, type: !4148)
!4152 = !DILocation(line: 28, column: 25, scope: !4111)
!4153 = !DILocalVariable(name: "whence", arg: 3, scope: !4111, file: !298, line: 28, type: !25)
!4154 = !DILocation(line: 28, column: 37, scope: !4111)
!4155 = !DILocation(line: 55, column: 7, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4111, file: !298, line: 55, column: 7)
!4157 = !DILocation(line: 55, column: 12, scope: !4156)
!4158 = !DILocation(line: 55, column: 28, scope: !4156)
!4159 = !DILocation(line: 55, column: 33, scope: !4156)
!4160 = !DILocation(line: 55, column: 25, scope: !4156)
!4161 = !DILocation(line: 56, column: 7, scope: !4156)
!4162 = !DILocation(line: 56, column: 10, scope: !4156)
!4163 = !DILocation(line: 56, column: 15, scope: !4156)
!4164 = !DILocation(line: 56, column: 32, scope: !4156)
!4165 = !DILocation(line: 56, column: 37, scope: !4156)
!4166 = !DILocation(line: 56, column: 29, scope: !4156)
!4167 = !DILocation(line: 57, column: 7, scope: !4156)
!4168 = !DILocation(line: 57, column: 10, scope: !4156)
!4169 = !DILocation(line: 57, column: 15, scope: !4156)
!4170 = !DILocation(line: 57, column: 29, scope: !4156)
!4171 = !DILocation(line: 55, column: 7, scope: !4111)
!4172 = !DILocalVariable(name: "pos", scope: !4173, file: !298, line: 123, type: !4148)
!4173 = distinct !DILexicalBlock(scope: !4156, file: !298, line: 119, column: 5)
!4174 = !DILocation(line: 123, column: 13, scope: !4173)
!4175 = !DILocation(line: 123, column: 34, scope: !4173)
!4176 = !DILocation(line: 123, column: 26, scope: !4173)
!4177 = !DILocation(line: 123, column: 39, scope: !4173)
!4178 = !DILocation(line: 123, column: 47, scope: !4173)
!4179 = !DILocation(line: 123, column: 19, scope: !4173)
!4180 = !DILocation(line: 124, column: 11, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4173, file: !298, line: 124, column: 11)
!4182 = !DILocation(line: 124, column: 15, scope: !4181)
!4183 = !DILocation(line: 124, column: 11, scope: !4173)
!4184 = !DILocation(line: 130, column: 11, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4181, file: !298, line: 125, column: 9)
!4186 = !DILocation(line: 135, column: 7, scope: !4173)
!4187 = !DILocation(line: 135, column: 12, scope: !4173)
!4188 = !DILocation(line: 135, column: 19, scope: !4173)
!4189 = !DILocation(line: 136, column: 22, scope: !4173)
!4190 = !DILocation(line: 136, column: 7, scope: !4173)
!4191 = !DILocation(line: 136, column: 12, scope: !4173)
!4192 = !DILocation(line: 136, column: 20, scope: !4173)
!4193 = !DILocation(line: 167, column: 7, scope: !4173)
!4194 = !DILocation(line: 169, column: 18, scope: !4111)
!4195 = !DILocation(line: 169, column: 22, scope: !4111)
!4196 = !DILocation(line: 169, column: 30, scope: !4111)
!4197 = !DILocation(line: 169, column: 10, scope: !4111)
!4198 = !DILocation(line: 169, column: 3, scope: !4111)
!4199 = !DILocation(line: 170, column: 1, scope: !4111)
!4200 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4201, file: !4201, line: 43, type: !4202, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !29)
!4201 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4202 = !DISubroutineType(types: !94)
!4203 = !DILocation(line: 45, column: 3, scope: !4200)
!4204 = !DILocation(line: 45, column: 9, scope: !4200)
!4205 = !DILocation(line: 46, column: 3, scope: !4200)
!4206 = distinct !DISubprogram(name: "imalloc", scope: !4201, file: !4201, line: 55, type: !3316, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !29)
!4207 = !DILocalVariable(name: "s", arg: 1, scope: !4206, file: !4201, line: 55, type: !278)
!4208 = !DILocation(line: 55, column: 16, scope: !4206)
!4209 = !DILocation(line: 57, column: 10, scope: !4206)
!4210 = !DILocation(line: 57, column: 12, scope: !4206)
!4211 = !DILocation(line: 57, column: 34, scope: !4206)
!4212 = !DILocation(line: 57, column: 26, scope: !4206)
!4213 = !DILocation(line: 57, column: 39, scope: !4206)
!4214 = !DILocation(line: 57, column: 3, scope: !4206)
!4215 = distinct !DISubprogram(name: "irealloc", scope: !4201, file: !4201, line: 66, type: !3344, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !29)
!4216 = !DILocalVariable(name: "p", arg: 1, scope: !4215, file: !4201, line: 66, type: !55)
!4217 = !DILocation(line: 66, column: 17, scope: !4215)
!4218 = !DILocalVariable(name: "s", arg: 2, scope: !4215, file: !4201, line: 66, type: !278)
!4219 = !DILocation(line: 66, column: 26, scope: !4215)
!4220 = !DILocation(line: 68, column: 10, scope: !4215)
!4221 = !DILocation(line: 68, column: 12, scope: !4215)
!4222 = !DILocation(line: 68, column: 35, scope: !4215)
!4223 = !DILocation(line: 68, column: 38, scope: !4215)
!4224 = !DILocation(line: 68, column: 26, scope: !4215)
!4225 = !DILocation(line: 68, column: 43, scope: !4215)
!4226 = !DILocation(line: 68, column: 3, scope: !4215)
!4227 = distinct !DISubprogram(name: "icalloc", scope: !4201, file: !4201, line: 77, type: !3382, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !29)
!4228 = !DILocalVariable(name: "n", arg: 1, scope: !4227, file: !4201, line: 77, type: !278)
!4229 = !DILocation(line: 77, column: 16, scope: !4227)
!4230 = !DILocalVariable(name: "s", arg: 2, scope: !4227, file: !4201, line: 77, type: !278)
!4231 = !DILocation(line: 77, column: 25, scope: !4227)
!4232 = !DILocation(line: 79, column: 18, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4227, file: !4201, line: 79, column: 7)
!4234 = !DILocation(line: 79, column: 16, scope: !4233)
!4235 = !DILocation(line: 79, column: 7, scope: !4227)
!4236 = !DILocation(line: 81, column: 11, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !4201, line: 81, column: 11)
!4238 = distinct !DILexicalBlock(scope: !4233, file: !4201, line: 80, column: 5)
!4239 = !DILocation(line: 81, column: 13, scope: !4237)
!4240 = !DILocation(line: 81, column: 11, scope: !4238)
!4241 = !DILocation(line: 82, column: 16, scope: !4237)
!4242 = !DILocation(line: 82, column: 9, scope: !4237)
!4243 = !DILocation(line: 83, column: 9, scope: !4238)
!4244 = !DILocation(line: 84, column: 5, scope: !4238)
!4245 = !DILocation(line: 85, column: 18, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4227, file: !4201, line: 85, column: 7)
!4247 = !DILocation(line: 85, column: 16, scope: !4246)
!4248 = !DILocation(line: 85, column: 7, scope: !4227)
!4249 = !DILocation(line: 87, column: 11, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4251, file: !4201, line: 87, column: 11)
!4251 = distinct !DILexicalBlock(scope: !4246, file: !4201, line: 86, column: 5)
!4252 = !DILocation(line: 87, column: 13, scope: !4250)
!4253 = !DILocation(line: 87, column: 11, scope: !4251)
!4254 = !DILocation(line: 88, column: 16, scope: !4250)
!4255 = !DILocation(line: 88, column: 9, scope: !4250)
!4256 = !DILocation(line: 89, column: 9, scope: !4251)
!4257 = !DILocation(line: 90, column: 5, scope: !4251)
!4258 = !DILocation(line: 91, column: 18, scope: !4227)
!4259 = !DILocation(line: 91, column: 21, scope: !4227)
!4260 = !DILocation(line: 91, column: 10, scope: !4227)
!4261 = !DILocation(line: 91, column: 3, scope: !4227)
!4262 = !DILocation(line: 92, column: 1, scope: !4227)
!4263 = distinct !DISubprogram(name: "ireallocarray", scope: !4201, file: !4201, line: 98, type: !3356, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !29)
!4264 = !DILocalVariable(name: "p", arg: 1, scope: !4263, file: !4201, line: 98, type: !55)
!4265 = !DILocation(line: 98, column: 22, scope: !4263)
!4266 = !DILocalVariable(name: "n", arg: 2, scope: !4263, file: !4201, line: 98, type: !278)
!4267 = !DILocation(line: 98, column: 31, scope: !4263)
!4268 = !DILocalVariable(name: "s", arg: 3, scope: !4263, file: !4201, line: 98, type: !278)
!4269 = !DILocation(line: 98, column: 40, scope: !4263)
!4270 = !DILocation(line: 100, column: 11, scope: !4263)
!4271 = !DILocation(line: 100, column: 13, scope: !4263)
!4272 = !DILocation(line: 100, column: 25, scope: !4263)
!4273 = !DILocation(line: 100, column: 28, scope: !4263)
!4274 = !DILocation(line: 100, column: 30, scope: !4263)
!4275 = !DILocation(line: 101, column: 27, scope: !4263)
!4276 = !DILocation(line: 101, column: 30, scope: !4263)
!4277 = !DILocation(line: 101, column: 33, scope: !4263)
!4278 = !DILocation(line: 101, column: 13, scope: !4263)
!4279 = !DILocation(line: 102, column: 13, scope: !4263)
!4280 = !DILocation(line: 100, column: 3, scope: !4263)
!4281 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !234, file: !234, line: 100, type: !4282, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !233, retainedNodes: !29)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!166, !4284, !63, !166, !4285}
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!4286 = !DILocalVariable(name: "pwc", arg: 1, scope: !4281, file: !234, line: 100, type: !4284)
!4287 = !DILocation(line: 100, column: 21, scope: !4281)
!4288 = !DILocalVariable(name: "s", arg: 2, scope: !4281, file: !234, line: 100, type: !63)
!4289 = !DILocation(line: 100, column: 38, scope: !4281)
!4290 = !DILocalVariable(name: "n", arg: 3, scope: !4281, file: !234, line: 100, type: !166)
!4291 = !DILocation(line: 100, column: 48, scope: !4281)
!4292 = !DILocalVariable(name: "ps", arg: 4, scope: !4281, file: !234, line: 100, type: !4285)
!4293 = !DILocation(line: 100, column: 62, scope: !4281)
!4294 = !DILocation(line: 105, column: 7, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4281, file: !234, line: 105, column: 7)
!4296 = !DILocation(line: 105, column: 9, scope: !4295)
!4297 = !DILocation(line: 105, column: 7, scope: !4281)
!4298 = !DILocation(line: 107, column: 11, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4295, file: !234, line: 106, column: 5)
!4300 = !DILocation(line: 108, column: 9, scope: !4299)
!4301 = !DILocation(line: 109, column: 9, scope: !4299)
!4302 = !DILocation(line: 110, column: 5, scope: !4299)
!4303 = !DILocation(line: 117, column: 7, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4281, file: !234, line: 117, column: 7)
!4305 = !DILocation(line: 117, column: 10, scope: !4304)
!4306 = !DILocation(line: 117, column: 7, scope: !4281)
!4307 = !DILocation(line: 118, column: 8, scope: !4304)
!4308 = !DILocation(line: 118, column: 5, scope: !4304)
!4309 = !DILocalVariable(name: "ret", scope: !4281, file: !234, line: 130, type: !166)
!4310 = !DILocation(line: 130, column: 10, scope: !4281)
!4311 = !DILocation(line: 130, column: 26, scope: !4281)
!4312 = !DILocation(line: 130, column: 31, scope: !4281)
!4313 = !DILocation(line: 130, column: 34, scope: !4281)
!4314 = !DILocation(line: 130, column: 37, scope: !4281)
!4315 = !DILocation(line: 130, column: 16, scope: !4281)
!4316 = !DILocation(line: 135, column: 7, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4281, file: !234, line: 135, column: 7)
!4318 = !DILocation(line: 135, column: 11, scope: !4317)
!4319 = !DILocation(line: 135, column: 25, scope: !4317)
!4320 = !DILocation(line: 135, column: 39, scope: !4317)
!4321 = !DILocation(line: 135, column: 30, scope: !4317)
!4322 = !DILocation(line: 135, column: 7, scope: !4281)
!4323 = !DILocation(line: 137, column: 14, scope: !4317)
!4324 = !DILocation(line: 137, column: 5, scope: !4317)
!4325 = !DILocation(line: 138, column: 7, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4281, file: !234, line: 138, column: 7)
!4327 = !DILocation(line: 138, column: 11, scope: !4326)
!4328 = !DILocation(line: 138, column: 7, scope: !4281)
!4329 = !DILocation(line: 139, column: 5, scope: !4326)
!4330 = !DILocation(line: 143, column: 22, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4281, file: !234, line: 143, column: 7)
!4332 = !DILocation(line: 143, column: 19, scope: !4331)
!4333 = !DILocation(line: 143, column: 26, scope: !4331)
!4334 = !DILocation(line: 143, column: 29, scope: !4331)
!4335 = !DILocation(line: 143, column: 31, scope: !4331)
!4336 = !DILocation(line: 143, column: 36, scope: !4331)
!4337 = !DILocation(line: 143, column: 41, scope: !4331)
!4338 = !DILocation(line: 143, column: 7, scope: !4281)
!4339 = !DILocation(line: 145, column: 11, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !234, line: 145, column: 11)
!4341 = distinct !DILexicalBlock(scope: !4331, file: !234, line: 144, column: 5)
!4342 = !DILocation(line: 145, column: 15, scope: !4340)
!4343 = !DILocation(line: 145, column: 11, scope: !4341)
!4344 = !DILocation(line: 146, column: 33, scope: !4340)
!4345 = !DILocation(line: 146, column: 32, scope: !4340)
!4346 = !DILocation(line: 146, column: 16, scope: !4340)
!4347 = !DILocation(line: 146, column: 10, scope: !4340)
!4348 = !DILocation(line: 146, column: 14, scope: !4340)
!4349 = !DILocation(line: 146, column: 9, scope: !4340)
!4350 = !DILocation(line: 147, column: 7, scope: !4341)
!4351 = !DILocation(line: 151, column: 10, scope: !4281)
!4352 = !DILocation(line: 151, column: 3, scope: !4281)
!4353 = !DILocation(line: 286, column: 1, scope: !4281)
!4354 = distinct !DISubprogram(name: "mbszero", scope: !4355, file: !4355, line: 1135, type: !4356, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !29)
!4355 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4356 = !DISubroutineType(types: !4357)
!4357 = !{null, !4358}
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !239, line: 6, baseType: !4360)
!4360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !241, line: 21, baseType: !4361)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 13, size: 64, elements: !4362)
!4362 = !{!4363, !4364}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4361, file: !241, line: 15, baseType: !25, size: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4361, file: !241, line: 20, baseType: !4365, size: 32, offset: 32)
!4365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4361, file: !241, line: 16, size: 32, elements: !4366)
!4366 = !{!4367, !4368}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4365, file: !241, line: 18, baseType: !7, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4365, file: !241, line: 19, baseType: !250, size: 32)
!4369 = !DILocalVariable(name: "ps", arg: 1, scope: !4354, file: !4355, line: 1135, type: !4358)
!4370 = !DILocation(line: 1135, column: 21, scope: !4354)
!4371 = !DILocation(line: 1137, column: 11, scope: !4354)
!4372 = !DILocation(line: 1137, column: 3, scope: !4354)
!4373 = !DILocation(line: 1138, column: 1, scope: !4354)
!4374 = distinct !DISubprogram(name: "memeq", scope: !2948, file: !2948, line: 974, type: !4375, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !29)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!89, !3567, !3567, !166}
!4377 = !DILocalVariable(name: "__s1", arg: 1, scope: !4374, file: !2948, line: 974, type: !3567)
!4378 = !DILocation(line: 974, column: 20, scope: !4374)
!4379 = !DILocalVariable(name: "__s2", arg: 2, scope: !4374, file: !2948, line: 974, type: !3567)
!4380 = !DILocation(line: 974, column: 38, scope: !4374)
!4381 = !DILocalVariable(name: "__n", arg: 3, scope: !4374, file: !2948, line: 974, type: !166)
!4382 = !DILocation(line: 974, column: 51, scope: !4374)
!4383 = !DILocation(line: 976, column: 19, scope: !4374)
!4384 = !DILocation(line: 976, column: 25, scope: !4374)
!4385 = !DILocation(line: 976, column: 31, scope: !4374)
!4386 = !DILocation(line: 976, column: 11, scope: !4374)
!4387 = !DILocation(line: 976, column: 10, scope: !4374)
!4388 = !DILocation(line: 976, column: 3, scope: !4374)
!4389 = distinct !DISubprogram(name: "rpl_realloc", scope: !4390, file: !4390, line: 2057, type: !3332, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !305, retainedNodes: !29)
!4390 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4391 = !DILocalVariable(name: "ptr", arg: 1, scope: !4389, file: !4390, line: 2057, type: !55)
!4392 = !DILocation(line: 2057, column: 20, scope: !4389)
!4393 = !DILocalVariable(name: "size", arg: 2, scope: !4389, file: !4390, line: 2057, type: !166)
!4394 = !DILocation(line: 2057, column: 32, scope: !4389)
!4395 = !DILocation(line: 2059, column: 19, scope: !4389)
!4396 = !DILocation(line: 2059, column: 24, scope: !4389)
!4397 = !DILocation(line: 2059, column: 31, scope: !4389)
!4398 = !DILocation(line: 2059, column: 10, scope: !4389)
!4399 = !DILocation(line: 2059, column: 3, scope: !4389)
!4400 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !308, file: !308, line: 27, type: !3269, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !307, retainedNodes: !29)
!4401 = !DILocalVariable(name: "ptr", arg: 1, scope: !4400, file: !308, line: 27, type: !55)
!4402 = !DILocation(line: 27, column: 21, scope: !4400)
!4403 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4400, file: !308, line: 27, type: !166)
!4404 = !DILocation(line: 27, column: 33, scope: !4400)
!4405 = !DILocalVariable(name: "size", arg: 3, scope: !4400, file: !308, line: 27, type: !166)
!4406 = !DILocation(line: 27, column: 47, scope: !4400)
!4407 = !DILocalVariable(name: "nbytes", scope: !4400, file: !308, line: 29, type: !166)
!4408 = !DILocation(line: 29, column: 10, scope: !4400)
!4409 = !DILocation(line: 30, column: 7, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4400, file: !308, line: 30, column: 7)
!4411 = !DILocation(line: 30, column: 7, scope: !4400)
!4412 = !DILocation(line: 32, column: 7, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4410, file: !308, line: 31, column: 5)
!4414 = !DILocation(line: 32, column: 13, scope: !4413)
!4415 = !DILocation(line: 33, column: 7, scope: !4413)
!4416 = !DILocation(line: 37, column: 19, scope: !4400)
!4417 = !DILocation(line: 37, column: 24, scope: !4400)
!4418 = !DILocation(line: 37, column: 10, scope: !4400)
!4419 = !DILocation(line: 37, column: 3, scope: !4400)
!4420 = !DILocation(line: 38, column: 1, scope: !4400)
!4421 = distinct !DISubprogram(name: "hard_locale", scope: !311, file: !311, line: 28, type: !817, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !29)
!4422 = !DILocalVariable(name: "category", arg: 1, scope: !4421, file: !311, line: 28, type: !25)
!4423 = !DILocation(line: 28, column: 18, scope: !4421)
!4424 = !DILocalVariable(name: "locale", scope: !4421, file: !311, line: 30, type: !4425)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2056, elements: !4426)
!4426 = !{!4427}
!4427 = !DISubrange(count: 257)
!4428 = !DILocation(line: 30, column: 8, scope: !4421)
!4429 = !DILocation(line: 32, column: 25, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4421, file: !311, line: 32, column: 7)
!4431 = !DILocation(line: 32, column: 35, scope: !4430)
!4432 = !DILocation(line: 32, column: 7, scope: !4430)
!4433 = !DILocation(line: 32, column: 7, scope: !4421)
!4434 = !DILocation(line: 33, column: 5, scope: !4430)
!4435 = !DILocation(line: 35, column: 16, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4421, file: !311, line: 35, column: 7)
!4437 = !DILocation(line: 35, column: 9, scope: !4436)
!4438 = !DILocation(line: 35, column: 29, scope: !4436)
!4439 = !DILocation(line: 35, column: 39, scope: !4436)
!4440 = !DILocation(line: 35, column: 32, scope: !4436)
!4441 = !DILocation(line: 35, column: 7, scope: !4421)
!4442 = !DILocation(line: 36, column: 5, scope: !4436)
!4443 = !DILocation(line: 46, column: 3, scope: !4421)
!4444 = !DILocation(line: 47, column: 1, scope: !4421)
!4445 = distinct !DISubprogram(name: "setlocale_null_r", scope: !313, file: !313, line: 154, type: !4446, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !312, retainedNodes: !29)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!25, !25, !27, !166}
!4448 = !DILocalVariable(name: "category", arg: 1, scope: !4445, file: !313, line: 154, type: !25)
!4449 = !DILocation(line: 154, column: 23, scope: !4445)
!4450 = !DILocalVariable(name: "buf", arg: 2, scope: !4445, file: !313, line: 154, type: !27)
!4451 = !DILocation(line: 154, column: 39, scope: !4445)
!4452 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4445, file: !313, line: 154, type: !166)
!4453 = !DILocation(line: 154, column: 51, scope: !4445)
!4454 = !DILocation(line: 159, column: 37, scope: !4445)
!4455 = !DILocation(line: 159, column: 47, scope: !4445)
!4456 = !DILocation(line: 159, column: 52, scope: !4445)
!4457 = !DILocation(line: 159, column: 10, scope: !4445)
!4458 = !DILocation(line: 159, column: 3, scope: !4445)
!4459 = distinct !DISubprogram(name: "setlocale_null", scope: !313, file: !313, line: 186, type: !4460, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !312, retainedNodes: !29)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!63, !25}
!4462 = !DILocalVariable(name: "category", arg: 1, scope: !4459, file: !313, line: 186, type: !25)
!4463 = !DILocation(line: 186, column: 21, scope: !4459)
!4464 = !DILocation(line: 189, column: 35, scope: !4459)
!4465 = !DILocation(line: 189, column: 10, scope: !4459)
!4466 = !DILocation(line: 189, column: 3, scope: !4459)
!4467 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !315, file: !315, line: 35, type: !4460, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !314, retainedNodes: !29)
!4468 = !DILocalVariable(name: "category", arg: 1, scope: !4467, file: !315, line: 35, type: !25)
!4469 = !DILocation(line: 35, column: 30, scope: !4467)
!4470 = !DILocalVariable(name: "result", scope: !4467, file: !315, line: 37, type: !63)
!4471 = !DILocation(line: 37, column: 15, scope: !4467)
!4472 = !DILocation(line: 37, column: 35, scope: !4467)
!4473 = !DILocation(line: 37, column: 24, scope: !4467)
!4474 = !DILocation(line: 62, column: 10, scope: !4467)
!4475 = !DILocation(line: 62, column: 3, scope: !4467)
!4476 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !315, file: !315, line: 66, type: !4446, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !314, retainedNodes: !29)
!4477 = !DILocalVariable(name: "category", arg: 1, scope: !4476, file: !315, line: 66, type: !25)
!4478 = !DILocation(line: 66, column: 32, scope: !4476)
!4479 = !DILocalVariable(name: "buf", arg: 2, scope: !4476, file: !315, line: 66, type: !27)
!4480 = !DILocation(line: 66, column: 48, scope: !4476)
!4481 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4476, file: !315, line: 66, type: !166)
!4482 = !DILocation(line: 66, column: 60, scope: !4476)
!4483 = !DILocalVariable(name: "result", scope: !4476, file: !315, line: 111, type: !63)
!4484 = !DILocation(line: 111, column: 15, scope: !4476)
!4485 = !DILocation(line: 111, column: 49, scope: !4476)
!4486 = !DILocation(line: 111, column: 24, scope: !4476)
!4487 = !DILocation(line: 113, column: 7, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4476, file: !315, line: 113, column: 7)
!4489 = !DILocation(line: 113, column: 14, scope: !4488)
!4490 = !DILocation(line: 113, column: 7, scope: !4476)
!4491 = !DILocation(line: 116, column: 11, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !315, line: 116, column: 11)
!4493 = distinct !DILexicalBlock(scope: !4488, file: !315, line: 114, column: 5)
!4494 = !DILocation(line: 116, column: 19, scope: !4492)
!4495 = !DILocation(line: 116, column: 11, scope: !4493)
!4496 = !DILocation(line: 120, column: 9, scope: !4492)
!4497 = !DILocation(line: 120, column: 16, scope: !4492)
!4498 = !DILocation(line: 121, column: 7, scope: !4493)
!4499 = !DILocalVariable(name: "length", scope: !4500, file: !315, line: 125, type: !166)
!4500 = distinct !DILexicalBlock(scope: !4488, file: !315, line: 124, column: 5)
!4501 = !DILocation(line: 125, column: 14, scope: !4500)
!4502 = !DILocation(line: 125, column: 31, scope: !4500)
!4503 = !DILocation(line: 125, column: 23, scope: !4500)
!4504 = !DILocation(line: 126, column: 11, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4500, file: !315, line: 126, column: 11)
!4506 = !DILocation(line: 126, column: 20, scope: !4505)
!4507 = !DILocation(line: 126, column: 18, scope: !4505)
!4508 = !DILocation(line: 126, column: 11, scope: !4500)
!4509 = !DILocation(line: 128, column: 19, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4505, file: !315, line: 127, column: 9)
!4511 = !DILocation(line: 128, column: 24, scope: !4510)
!4512 = !DILocation(line: 128, column: 32, scope: !4510)
!4513 = !DILocation(line: 128, column: 39, scope: !4510)
!4514 = !DILocation(line: 128, column: 11, scope: !4510)
!4515 = !DILocation(line: 129, column: 11, scope: !4510)
!4516 = !DILocation(line: 133, column: 15, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !315, line: 133, column: 15)
!4518 = distinct !DILexicalBlock(scope: !4505, file: !315, line: 132, column: 9)
!4519 = !DILocation(line: 133, column: 23, scope: !4517)
!4520 = !DILocation(line: 133, column: 15, scope: !4518)
!4521 = !DILocation(line: 138, column: 23, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4517, file: !315, line: 134, column: 13)
!4523 = !DILocation(line: 138, column: 28, scope: !4522)
!4524 = !DILocation(line: 138, column: 36, scope: !4522)
!4525 = !DILocation(line: 138, column: 44, scope: !4522)
!4526 = !DILocation(line: 138, column: 15, scope: !4522)
!4527 = !DILocation(line: 139, column: 15, scope: !4522)
!4528 = !DILocation(line: 139, column: 19, scope: !4522)
!4529 = !DILocation(line: 139, column: 27, scope: !4522)
!4530 = !DILocation(line: 139, column: 32, scope: !4522)
!4531 = !DILocation(line: 140, column: 13, scope: !4522)
!4532 = !DILocation(line: 141, column: 11, scope: !4518)
!4533 = !DILocation(line: 145, column: 1, scope: !4476)
