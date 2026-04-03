; ModuleID = 'src/sleep.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [249 x i8] c"Usage: %s NUMBER[SUFFIX]...\0A  or:  %s OPTION\0APause for NUMBER seconds, where NUMBER is an integer or floating-point.\0ASUFFIX may be 's','m','h', or 'd', for seconds, minutes, hours, days.\0AWith multiple arguments, pause for the sum of their values.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot read realtime clock\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !0
@.str.14 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.36 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), align 8, !dbg !34
@file_name = internal global i8* null, align 8, !dbg !39
@ignore_EPIPE = internal global i8 0, align 1, !dbg !44
@.str.54 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.55 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.56 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !47
@stderr = external global %struct._IO_FILE*, align 8
@.str.60 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !76
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !53
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !72
@.str.1.66 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.67 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.68 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !74
@.str.4.61 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.62 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.63 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external global i32, align 4
@.str.73 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.74, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.75, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !81
@optind = external global i32, align 4
@.str.1.78 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.74 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.75 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !98
@.str.83 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.84 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !105
@.str.87 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.88 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.89 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.90 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.91 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.92 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.93 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.94 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.95 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.96 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.88, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.89, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.90, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.93, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.94, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.95, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.96, i32 0, i32 0), i8* null], align 8, !dbg !116
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !145
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !163
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !178
@nslots = internal global i32 1, align 4, !dbg !185
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !165
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !187
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !151
@.str.10.97 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.98 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.99 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.100 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !170
@.str.107 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.108 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.110 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.111 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.112 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.113 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.114 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.115 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.116 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.117 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.118 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.119 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.120 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.121 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.122 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.123 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.128 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.129 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.130 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.131 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.132 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.133 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.134 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !193
@exit_failure = dso_local global i32 1, align 4, !dbg !201
@.str.147 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.145 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.146 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !207
@.str.152 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.175 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !236
@.str.190 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.191 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !354 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !357, metadata !DIExpression()), !dbg !358
  %3 = load i32, i32* %2, align 4, !dbg !359
  %4 = icmp ne i32 %3, 0, !dbg !361
  br i1 %4, label %5, label %12, !dbg !362

5:                                                ; preds = %1
  br label %6, !dbg !363

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !364
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #19, !dbg !364
  %9 = load i8*, i8** @program_name, align 8, !dbg !364
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !364
  br label %11, !dbg !364

11:                                               ; preds = %6
  br label %19, !dbg !364

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([249 x i8], [249 x i8]* @.str.1, i64 0, i64 0)) #19, !dbg !366
  %14 = load i8*, i8** @program_name, align 8, !dbg !368
  %15 = load i8*, i8** @program_name, align 8, !dbg !369
  %16 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14, i8* noundef %15), !dbg !370
  %17 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0)) #19, !dbg !371
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef %17), !dbg !371
  %18 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0)) #19, !dbg !372
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef %18), !dbg !372
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !373
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %2, align 4, !dbg !374
  call void @exit(i32 noundef %20) #20, !dbg !375
  unreachable, !dbg !375
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !2 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !376, metadata !DIExpression()), !dbg !377
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !378, metadata !DIExpression()), !dbg !379
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !380
  %15 = icmp eq i32 %14, -1, !dbg !382
  br i1 %15, label %16, label %30, !dbg !383

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !384, metadata !DIExpression()), !dbg !386
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !387
  store i8* %17, i8** %5, align 8, !dbg !386
  %18 = load i8*, i8** %5, align 8, !dbg !388
  %19 = icmp ne i8* %18, null, !dbg !388
  br i1 %19, label %20, label %27, !dbg !389

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !390
  %22 = load i8, i8* %21, align 1, !dbg !391
  %23 = icmp ne i8 %22, 0, !dbg !391
  br i1 %23, label %24, label %27, !dbg !392

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !393
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)), !dbg !394
  br label %27, !dbg !392

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !392
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !395
  br label %30, !dbg !396

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !397
  %32 = icmp ne i32 %31, 0, !dbg !397
  br i1 %32, label %33, label %37, !dbg !399

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !400
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !400
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !400
  br label %274, !dbg !402

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !403, metadata !DIExpression()), !dbg !404
  store i8 1, i8* %6, align 1, !dbg !404
  call void @llvm.dbg.declare(metadata i8** %7, metadata !405, metadata !DIExpression()), !dbg !406
  %38 = load i8*, i8** %4, align 8, !dbg !407
  %39 = load i8*, i8** %4, align 8, !dbg !408
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #21, !dbg !409
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !410
  store i8* %41, i8** %7, align 8, !dbg !406
  call void @llvm.dbg.declare(metadata i8** %8, metadata !411, metadata !DIExpression()), !dbg !412
  %42 = load i8*, i8** %4, align 8, !dbg !413
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #21, !dbg !414
  store i8* %43, i8** %8, align 8, !dbg !412
  %44 = load i8*, i8** %8, align 8, !dbg !415
  %45 = icmp ne i8* %44, null, !dbg !415
  br i1 %45, label %48, label %46, !dbg !417

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !418
  store i8* %47, i8** %8, align 8, !dbg !420
  store i8 0, i8* %6, align 1, !dbg !421
  br label %89, !dbg !422

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !423
  %50 = load i8*, i8** %7, align 8, !dbg !425
  %51 = icmp ne i8* %49, %50, !dbg !426
  br i1 %51, label %52, label %88, !dbg !427

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !428, metadata !DIExpression()), !dbg !430
  %53 = load i8*, i8** %7, align 8, !dbg !431
  store i8* %53, i8** %9, align 8, !dbg !430
  call void @llvm.dbg.declare(metadata i64* %10, metadata !432, metadata !DIExpression()), !dbg !433
  store i64 0, i64* %10, align 8, !dbg !433
  br label %54, !dbg !434

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !435
  %56 = load i8*, i8** %8, align 8, !dbg !436
  %57 = icmp ult i8* %55, %56, !dbg !437
  br i1 %57, label %58, label %61, !dbg !438

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !439
  %60 = icmp ult i64 %59, 2, !dbg !440
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !441
  br i1 %62, label %63, label %82, !dbg !434

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #22, !dbg !442
  %65 = load i16*, i16** %64, align 8, !dbg !442
  %66 = load i8*, i8** %9, align 8, !dbg !442
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !442
  store i8* %67, i8** %9, align 8, !dbg !442
  %68 = load i8, i8* %66, align 1, !dbg !442
  %69 = zext i8 %68 to i32, !dbg !442
  %70 = sext i32 %69 to i64, !dbg !442
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !442
  %72 = load i16, i16* %71, align 2, !dbg !442
  %73 = zext i16 %72 to i32, !dbg !442
  %74 = and i32 %73, 8192, !dbg !442
  %75 = icmp ne i32 %74, 0, !dbg !443
  %76 = xor i1 %75, true, !dbg !443
  %77 = xor i1 %76, true, !dbg !444
  %78 = zext i1 %77 to i32, !dbg !444
  %79 = sext i32 %78 to i64, !dbg !444
  %80 = load i64, i64* %10, align 8, !dbg !445
  %81 = add i64 %80, %79, !dbg !445
  store i64 %81, i64* %10, align 8, !dbg !445
  br label %54, !dbg !434, !llvm.loop !446

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !448
  %84 = icmp eq i64 %83, 2, !dbg !450
  br i1 %84, label %85, label %87, !dbg !451

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !452
  store i8* %86, i8** %8, align 8, !dbg !454
  store i8 0, i8* %6, align 1, !dbg !455
  br label %87, !dbg !456

87:                                               ; preds = %85, %82
  br label %88, !dbg !457

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !458, metadata !DIExpression()), !dbg !459
  %90 = load i8*, i8** %8, align 8, !dbg !460
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #21, !dbg !461
  store i64 %91, i64* %11, align 8, !dbg !459
  call void @llvm.dbg.declare(metadata i8** %12, metadata !462, metadata !DIExpression()), !dbg !463
  %92 = load i8*, i8** %8, align 8, !dbg !464
  %93 = load i64, i64* %11, align 8, !dbg !465
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !466
  store i8* %94, i8** %12, align 8, !dbg !463
  br label %95, !dbg !467

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !468
  %97 = load i8, i8* %96, align 1, !dbg !469
  %98 = zext i8 %97 to i32, !dbg !469
  %99 = icmp ne i32 %98, 0, !dbg !469
  br i1 %99, label %100, label %105, !dbg !470

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !471
  %102 = load i8, i8* %101, align 1, !dbg !472
  %103 = zext i8 %102 to i32, !dbg !472
  %104 = icmp ne i32 %103, 10, !dbg !473
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !474
  br i1 %106, label %107, label %164, !dbg !467

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !475
  %109 = load i8, i8* %108, align 1, !dbg !478
  %110 = zext i8 %109 to i32, !dbg !478
  %111 = icmp eq i32 %110, 45, !dbg !479
  br i1 %111, label %112, label %119, !dbg !480

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !481
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !482
  %115 = load i8, i8* %114, align 1, !dbg !483
  %116 = zext i8 %115 to i32, !dbg !483
  %117 = icmp eq i32 %116, 45, !dbg !484
  br i1 %117, label %118, label %119, !dbg !485

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !486
  br label %119, !dbg !487

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #22, !dbg !488
  %121 = load i16*, i16** %120, align 8, !dbg !488
  %122 = load i8*, i8** %12, align 8, !dbg !488
  %123 = load i8, i8* %122, align 1, !dbg !488
  %124 = zext i8 %123 to i32, !dbg !488
  %125 = sext i32 %124 to i64, !dbg !488
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !488
  %127 = load i16, i16* %126, align 2, !dbg !488
  %128 = zext i16 %127 to i32, !dbg !488
  %129 = and i32 %128, 8192, !dbg !488
  %130 = icmp ne i32 %129, 0, !dbg !488
  br i1 %130, label %131, label %161, !dbg !490

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !491
  %133 = load i8, i8* %132, align 1, !dbg !494
  %134 = zext i8 %133 to i32, !dbg !494
  %135 = icmp eq i32 %134, 9, !dbg !495
  br i1 %135, label %149, label %136, !dbg !496

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #22, !dbg !497
  %138 = load i16*, i16** %137, align 8, !dbg !497
  %139 = load i8*, i8** %12, align 8, !dbg !497
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !497
  %141 = load i8, i8* %140, align 1, !dbg !497
  %142 = zext i8 %141 to i32, !dbg !497
  %143 = sext i32 %142 to i64, !dbg !497
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !497
  %145 = load i16, i16* %144, align 2, !dbg !497
  %146 = zext i16 %145 to i32, !dbg !497
  %147 = and i32 %146, 8192, !dbg !497
  %148 = icmp ne i32 %147, 0, !dbg !497
  br i1 %148, label %149, label %150, !dbg !498

149:                                              ; preds = %136, %131
  br label %164, !dbg !499

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !500
  %152 = trunc i8 %151 to i1, !dbg !500
  br i1 %152, label %160, label %153, !dbg !502

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !503
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !504
  %156 = load i8, i8* %155, align 1, !dbg !505
  %157 = zext i8 %156 to i32, !dbg !505
  %158 = icmp ne i32 %157, 45, !dbg !506
  br i1 %158, label %159, label %160, !dbg !507

159:                                              ; preds = %153
  br label %164, !dbg !508

160:                                              ; preds = %153, %150
  br label %161, !dbg !509

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !510
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !510
  store i8* %163, i8** %12, align 8, !dbg !510
  br label %95, !dbg !467, !llvm.loop !511

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !513
  %166 = load i8*, i8** %7, align 8, !dbg !513
  %167 = load i8*, i8** %4, align 8, !dbg !513
  %168 = ptrtoint i8* %166 to i64, !dbg !513
  %169 = ptrtoint i8* %167 to i64, !dbg !513
  %170 = sub i64 %168, %169, !dbg !513
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !513
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !513
  call void @llvm.dbg.declare(metadata i8** %13, metadata !514, metadata !DIExpression()), !dbg !515
  %173 = load i8*, i8** %3, align 8, !dbg !516
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)), !dbg !517
  br i1 %174, label %175, label %176, !dbg !517

175:                                              ; preds = %164
  br label %232, !dbg !517

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !518
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)), !dbg !519
  br i1 %178, label %179, label %180, !dbg !519

179:                                              ; preds = %176
  br label %230, !dbg !519

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !520
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)), !dbg !521
  br i1 %182, label %183, label %184, !dbg !521

183:                                              ; preds = %180
  br label %228, !dbg !521

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !522
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)), !dbg !523
  br i1 %186, label %187, label %188, !dbg !523

187:                                              ; preds = %184
  br label %226, !dbg !523

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !524
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)), !dbg !525
  br i1 %190, label %191, label %192, !dbg !525

191:                                              ; preds = %188
  br label %224, !dbg !525

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !526
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)), !dbg !527
  br i1 %194, label %195, label %196, !dbg !527

195:                                              ; preds = %192
  br label %222, !dbg !527

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !528
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)), !dbg !529
  br i1 %198, label %199, label %200, !dbg !529

199:                                              ; preds = %196
  br label %220, !dbg !529

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !530
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)), !dbg !531
  br i1 %202, label %203, label %204, !dbg !531

203:                                              ; preds = %200
  br label %218, !dbg !531

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !532
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !533
  br i1 %206, label %207, label %208, !dbg !533

207:                                              ; preds = %204
  br label %216, !dbg !533

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !534
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !535
  br i1 %210, label %211, label %212, !dbg !535

211:                                              ; preds = %208
  br label %214, !dbg !535

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !536
  br label %214, !dbg !535

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !535
  br label %216, !dbg !533

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !533
  br label %218, !dbg !531

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !531
  br label %220, !dbg !529

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !529
  br label %222, !dbg !527

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !527
  br label %224, !dbg !525

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !525
  br label %226, !dbg !523

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !523
  br label %228, !dbg !521

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !521
  br label %230, !dbg !519

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !519
  br label %232, !dbg !517

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !517
  store i8* %233, i8** %13, align 8, !dbg !515
  %234 = load i8*, i8** %8, align 8, !dbg !537
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i64 noundef 6) #21, !dbg !537
  %236 = icmp eq i32 %235, 0, !dbg !537
  br i1 %236, label %241, label %237, !dbg !539

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !540
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i64 noundef 9) #21, !dbg !540
  %240 = icmp eq i32 %239, 0, !dbg !540
  br i1 %240, label %241, label %248, !dbg !541

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !542
  %243 = load i8*, i8** %13, align 8, !dbg !544
  %244 = load i64, i64* %11, align 8, !dbg !545
  %245 = trunc i64 %244 to i32, !dbg !546
  %246 = load i8*, i8** %8, align 8, !dbg !547
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !548
  br label %254, !dbg !549

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !550
  %250 = load i64, i64* %11, align 8, !dbg !552
  %251 = trunc i64 %250 to i32, !dbg !553
  %252 = load i8*, i8** %8, align 8, !dbg !554
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.36, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !555
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !556
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !556
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !557
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !557
  %259 = load i8*, i8** %7, align 8, !dbg !558
  %260 = load i8*, i8** %12, align 8, !dbg !558
  %261 = load i8*, i8** %7, align 8, !dbg !558
  %262 = ptrtoint i8* %260 to i64, !dbg !558
  %263 = ptrtoint i8* %261 to i64, !dbg !558
  %264 = sub i64 %262, %263, !dbg !558
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !558
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !558
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !559
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !559
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !560
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !560
  %271 = load i8*, i8** %12, align 8, !dbg !561
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !561
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !561
  br label %274, !dbg !562

274:                                              ; preds = %254, %33
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !563 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !566, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !568, metadata !DIExpression()), !dbg !577
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !577
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !577
  call void @llvm.dbg.declare(metadata i8** %4, metadata !578, metadata !DIExpression()), !dbg !579
  %9 = load i8*, i8** %2, align 8, !dbg !580
  store i8* %9, i8** %4, align 8, !dbg !579
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !581, metadata !DIExpression()), !dbg !583
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !584
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !583
  br label %11, !dbg !585

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !586
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !587
  %14 = load i8*, i8** %13, align 8, !dbg !587
  %15 = icmp ne i8* %14, null, !dbg !586
  br i1 %15, label %16, label %23, !dbg !588

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !589
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !590
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !591
  %20 = load i8*, i8** %19, align 8, !dbg !591
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !592
  %22 = xor i1 %21, true, !dbg !593
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !594
  br i1 %24, label %25, label %28, !dbg !585

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !595
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !595
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !595
  br label %11, !dbg !585, !llvm.loop !596

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !597
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !599
  %31 = load i8*, i8** %30, align 8, !dbg !599
  %32 = icmp ne i8* %31, null, !dbg !597
  br i1 %32, label %33, label %37, !dbg !600

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !601
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !602
  %36 = load i8*, i8** %35, align 8, !dbg !602
  store i8* %36, i8** %4, align 8, !dbg !603
  br label %37, !dbg !604

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !605
  call void @llvm.dbg.declare(metadata i8** %6, metadata !606, metadata !DIExpression()), !dbg !607
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #19, !dbg !608
  store i8* %38, i8** %6, align 8, !dbg !607
  %39 = load i8*, i8** %6, align 8, !dbg !609
  %40 = icmp ne i8* %39, null, !dbg !609
  br i1 %40, label %41, label %49, !dbg !611

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !612
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 noundef 3) #21, !dbg !612
  %44 = icmp ne i32 %43, 0, !dbg !612
  br i1 %44, label %45, label %49, !dbg !613

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.45, i64 0, i64 0)) #19, !dbg !614
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !614
  br label %49, !dbg !616

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !617, metadata !DIExpression()), !dbg !618
  %50 = load i8*, i8** %2, align 8, !dbg !619
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)), !dbg !620
  br i1 %51, label %52, label %53, !dbg !620

52:                                               ; preds = %49
  br label %55, !dbg !620

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !621
  br label %55, !dbg !620

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !620
  store i8* %56, i8** %7, align 8, !dbg !618
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0)) #19, !dbg !622
  %58 = load i8*, i8** %7, align 8, !dbg !623
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* noundef %58), !dbg !624
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0)) #19, !dbg !625
  %61 = load i8*, i8** %4, align 8, !dbg !626
  %62 = load i8*, i8** %4, align 8, !dbg !627
  %63 = load i8*, i8** %2, align 8, !dbg !628
  %64 = icmp eq i8* %62, %63, !dbg !629
  %65 = zext i1 %64 to i64, !dbg !627
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !627
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !630
  ret void, !dbg !631
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !632 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !636, metadata !DIExpression()), !dbg !637
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata double* %6, metadata !640, metadata !DIExpression()), !dbg !642
  store double 0.000000e+00, double* %6, align 8, !dbg !642
  call void @llvm.dbg.declare(metadata i8* %7, metadata !643, metadata !DIExpression()), !dbg !644
  store i8 1, i8* %7, align 1, !dbg !644
  %12 = load i8**, i8*** %5, align 8, !dbg !645
  %13 = getelementptr inbounds i8*, i8** %12, i64 0, !dbg !645
  %14 = load i8*, i8** %13, align 8, !dbg !645
  call void @set_program_name(i8* noundef %14), !dbg !646
  %15 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #19, !dbg !647
  %16 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !648
  %17 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !649
  %18 = call i32 @atexit(void ()* noundef @close_stdout) #19, !dbg !650
  %19 = load i32, i32* %4, align 4, !dbg !651
  %20 = load i8**, i8*** %5, align 8, !dbg !652
  %21 = load i8*, i8** @Version, align 8, !dbg !653
  %22 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)), !dbg !654
  %23 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)), !dbg !654
  call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %19, i8** noundef %20, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* noundef %21, i1 noundef true, void (i32)* noundef @usage, i8* noundef %22, i8* noundef %23, i8* noundef null), !dbg !655
  %24 = load i32, i32* %4, align 4, !dbg !656
  %25 = icmp eq i32 %24, 1, !dbg !658
  br i1 %25, label %26, label %28, !dbg !659

26:                                               ; preds = %2
  %27 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !660
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %27), !dbg !660
  call void @usage(i32 noundef 1) #23, !dbg !662
  unreachable, !dbg !662

28:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %8, metadata !663, metadata !DIExpression()), !dbg !665
  %29 = load i32, i32* @optind, align 4, !dbg !666
  store i32 %29, i32* %8, align 4, !dbg !665
  br label %30, !dbg !667

30:                                               ; preds = %84, %28
  %31 = load i32, i32* %8, align 4, !dbg !668
  %32 = load i32, i32* %4, align 4, !dbg !670
  %33 = icmp slt i32 %31, %32, !dbg !671
  br i1 %33, label %34, label %87, !dbg !672

34:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8** %9, metadata !673, metadata !DIExpression()), !dbg !675
  %35 = call i32* @__errno_location() #22, !dbg !676
  store i32 0, i32* %35, align 4, !dbg !677
  call void @llvm.dbg.declare(metadata double* %10, metadata !678, metadata !DIExpression()), !dbg !679
  %36 = load i8**, i8*** %5, align 8, !dbg !680
  %37 = load i32, i32* %8, align 4, !dbg !681
  %38 = sext i32 %37 to i64, !dbg !680
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38, !dbg !680
  %40 = load i8*, i8** %39, align 8, !dbg !680
  %41 = call double @cl_strtod(i8* noundef %40, i8** noundef %9), !dbg !682
  store double %41, double* %10, align 8, !dbg !679
  call void @llvm.dbg.declare(metadata double* %11, metadata !683, metadata !DIExpression()), !dbg !684
  %42 = load double, double* %10, align 8, !dbg !685
  %43 = call i32* @__errno_location() #22, !dbg !686
  %44 = load i32, i32* %43, align 4, !dbg !686
  %45 = call double @dtimespec_bound(double noundef %42, i32 noundef %44), !dbg !687
  store double %45, double* %11, align 8, !dbg !684
  %46 = load i8**, i8*** %5, align 8, !dbg !688
  %47 = load i32, i32* %8, align 4, !dbg !690
  %48 = sext i32 %47 to i64, !dbg !688
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48, !dbg !688
  %50 = load i8*, i8** %49, align 8, !dbg !688
  %51 = load i8*, i8** %9, align 8, !dbg !691
  %52 = icmp eq i8* %50, %51, !dbg !692
  br i1 %52, label %71, label %53, !dbg !693

53:                                               ; preds = %34
  %54 = load double, double* %11, align 8, !dbg !694
  %55 = fcmp ole double 0.000000e+00, %54, !dbg !695
  br i1 %55, label %56, label %71, !dbg !696

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !697
  %58 = load i8, i8* %57, align 1, !dbg !698
  %59 = zext i8 %58 to i32, !dbg !698
  %60 = icmp ne i32 %59, 0, !dbg !698
  br i1 %60, label %61, label %67, !dbg !699

61:                                               ; preds = %56
  %62 = load i8*, i8** %9, align 8, !dbg !700
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !701
  %64 = load i8, i8* %63, align 1, !dbg !702
  %65 = zext i8 %64 to i32, !dbg !702
  %66 = icmp ne i32 %65, 0, !dbg !702
  br i1 %66, label %71, label %67, !dbg !703

67:                                               ; preds = %61, %56
  %68 = load i8*, i8** %9, align 8, !dbg !704
  %69 = load i8, i8* %68, align 1, !dbg !705
  %70 = call i1 @apply_suffix(double* noundef %11, i8 noundef %69), !dbg !706
  br i1 %70, label %79, label %71, !dbg !707

71:                                               ; preds = %67, %61, %53, %34
  %72 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0)) #19, !dbg !708
  %73 = load i8**, i8*** %5, align 8, !dbg !708
  %74 = load i32, i32* %8, align 4, !dbg !708
  %75 = sext i32 %74 to i64, !dbg !708
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75, !dbg !708
  %77 = load i8*, i8** %76, align 8, !dbg !708
  %78 = call i8* @quote(i8* noundef %77), !dbg !708
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %72, i8* noundef %78), !dbg !708
  store i8 0, i8* %7, align 1, !dbg !710
  br label %79, !dbg !711

79:                                               ; preds = %71, %67
  %80 = load double, double* %6, align 8, !dbg !712
  %81 = load double, double* %11, align 8, !dbg !713
  %82 = fadd double %80, %81, !dbg !714
  %83 = call double @dtimespec_bound(double noundef %82, i32 noundef 0), !dbg !715
  store double %83, double* %6, align 8, !dbg !716
  br label %84, !dbg !717

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4, !dbg !718
  %86 = add nsw i32 %85, 1, !dbg !718
  store i32 %86, i32* %8, align 4, !dbg !718
  br label %30, !dbg !719, !llvm.loop !720

87:                                               ; preds = %30
  %88 = load i8, i8* %7, align 1, !dbg !722
  %89 = trunc i8 %88 to i1, !dbg !722
  br i1 %89, label %91, label %90, !dbg !724

90:                                               ; preds = %87
  call void @usage(i32 noundef 1) #23, !dbg !725
  unreachable, !dbg !725

91:                                               ; preds = %87
  %92 = load double, double* %6, align 8, !dbg !726
  %93 = call i32 @xnanosleep(double noundef %92), !dbg !728
  %94 = icmp ne i32 %93, 0, !dbg !728
  br i1 %94, label %95, label %99, !dbg !729

95:                                               ; preds = %91
  %96 = call i32* @__errno_location() #22, !dbg !730
  %97 = load i32, i32* %96, align 4, !dbg !730
  %98 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #19, !dbg !730
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %97, i8* noundef %98), !dbg !730
  unreachable, !dbg !730

99:                                               ; preds = %91
  ret i32 0, !dbg !731
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @apply_suffix(double* noundef %0, i8 noundef %1) #4 !dbg !732 {
  %3 = alloca i1, align 1
  %4 = alloca double*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store double* %0, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !736, metadata !DIExpression()), !dbg !737
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !738, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata i32* %6, metadata !740, metadata !DIExpression()), !dbg !741
  %7 = load i8, i8* %5, align 1, !dbg !742
  %8 = zext i8 %7 to i32, !dbg !742
  switch i32 %8, label %13 [
    i32 0, label %9
    i32 115, label %9
    i32 109, label %10
    i32 104, label %11
    i32 100, label %12
  ], !dbg !743

9:                                                ; preds = %2, %2
  store i32 1, i32* %6, align 4, !dbg !744
  br label %14, !dbg !746

10:                                               ; preds = %2
  store i32 60, i32* %6, align 4, !dbg !747
  br label %14, !dbg !748

11:                                               ; preds = %2
  store i32 3600, i32* %6, align 4, !dbg !749
  br label %14, !dbg !750

12:                                               ; preds = %2
  store i32 86400, i32* %6, align 4, !dbg !751
  br label %14, !dbg !752

13:                                               ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !753
  br label %22, !dbg !753

14:                                               ; preds = %12, %11, %10, %9
  %15 = load double*, double** %4, align 8, !dbg !754
  %16 = load double, double* %15, align 8, !dbg !755
  %17 = load i32, i32* %6, align 4, !dbg !756
  %18 = sitofp i32 %17 to double, !dbg !756
  %19 = fmul double %16, %18, !dbg !757
  %20 = call double @dtimespec_bound(double noundef %19, i32 noundef 0), !dbg !758
  %21 = load double*, double** %4, align 8, !dbg !759
  store double %20, double* %21, align 8, !dbg !760
  store i1 true, i1* %3, align 1, !dbg !761
  br label %22, !dbg !761

22:                                               ; preds = %14, %13
  %23 = load i1, i1* %3, align 1, !dbg !762
  ret i1 %23, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cl_strtod(i8* noundef nonnull %0, i8** noalias noundef %1) #4 !dbg !763 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !767, metadata !DIExpression()), !dbg !768
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !769, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.declare(metadata i8** %5, metadata !771, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.declare(metadata double* %6, metadata !773, metadata !DIExpression()), !dbg !774
  %10 = load i8*, i8** %3, align 8, !dbg !775
  %11 = call double @strtod(i8* noundef %10, i8** noundef %5) #19, !dbg !776
  store double %11, double* %6, align 8, !dbg !774
  %12 = load i8*, i8** %5, align 8, !dbg !777
  %13 = load i8, i8* %12, align 1, !dbg !779
  %14 = icmp ne i8 %13, 0, !dbg !779
  br i1 %14, label %15, label %30, !dbg !780

15:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !781, metadata !DIExpression()), !dbg !783
  %16 = call i32* @__errno_location() #22, !dbg !784
  %17 = load i32, i32* %16, align 4, !dbg !784
  store i32 %17, i32* %7, align 4, !dbg !783
  call void @llvm.dbg.declare(metadata i8** %8, metadata !785, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.declare(metadata double* %9, metadata !787, metadata !DIExpression()), !dbg !788
  %18 = load i8*, i8** %3, align 8, !dbg !789
  %19 = call double @c_strtod(i8* noundef %18, i8** noundef %8), !dbg !790
  store double %19, double* %9, align 8, !dbg !788
  %20 = load i8*, i8** %5, align 8, !dbg !791
  %21 = load i8*, i8** %8, align 8, !dbg !793
  %22 = icmp ult i8* %20, %21, !dbg !794
  br i1 %22, label %23, label %26, !dbg !795

23:                                               ; preds = %15
  %24 = load double, double* %9, align 8, !dbg !796
  store double %24, double* %6, align 8, !dbg !797
  %25 = load i8*, i8** %8, align 8, !dbg !798
  store i8* %25, i8** %5, align 8, !dbg !799
  br label %29, !dbg !800

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4, !dbg !801
  %28 = call i32* @__errno_location() #22, !dbg !802
  store i32 %27, i32* %28, align 4, !dbg !803
  br label %29

29:                                               ; preds = %26, %23
  br label %30, !dbg !804

30:                                               ; preds = %29, %2
  %31 = load i8**, i8*** %4, align 8, !dbg !805
  %32 = icmp ne i8** %31, null, !dbg !805
  br i1 %32, label %33, label %36, !dbg !807

33:                                               ; preds = %30
  %34 = load i8*, i8** %5, align 8, !dbg !808
  %35 = load i8**, i8*** %4, align 8, !dbg !809
  store i8* %34, i8** %35, align 8, !dbg !810
  br label %36, !dbg !811

36:                                               ; preds = %33, %30
  %37 = load double, double* %6, align 8, !dbg !812
  ret double %37, !dbg !813
}

; Function Attrs: nounwind
declare double @strtod(i8* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !814 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !815, metadata !DIExpression()), !dbg !816
  %3 = load i8*, i8** %2, align 8, !dbg !817
  store i8* %3, i8** @file_name, align 8, !dbg !818
  ret void, !dbg !819
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !820 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !823, metadata !DIExpression()), !dbg !824
  %4 = load i8, i8* %2, align 1, !dbg !825
  %5 = trunc i8 %4 to i1, !dbg !825
  %6 = zext i1 %5 to i8, !dbg !826
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !826
  ret void, !dbg !827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !828 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !829
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !831
  %4 = icmp ne i32 %3, 0, !dbg !832
  br i1 %4, label %5, label %28, !dbg !833

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !834
  %7 = trunc i8 %6 to i1, !dbg !834
  br i1 %7, label %8, label %12, !dbg !835

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #22, !dbg !836
  %10 = load i32, i32* %9, align 4, !dbg !836
  %11 = icmp eq i32 %10, 32, !dbg !837
  br i1 %11, label %28, label %12, !dbg !838

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !839, metadata !DIExpression()), !dbg !841
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.55, i64 0, i64 0)) #19, !dbg !842
  store i8* %13, i8** %1, align 8, !dbg !841
  %14 = load i8*, i8** @file_name, align 8, !dbg !843
  %15 = icmp ne i8* %14, null, !dbg !843
  br i1 %15, label %16, label %22, !dbg !845

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #22, !dbg !846
  %18 = load i32, i32* %17, align 4, !dbg !846
  %19 = load i8*, i8** @file_name, align 8, !dbg !846
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !846
  %21 = load i8*, i8** %1, align 8, !dbg !846
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.56, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !846
  br label %26, !dbg !846

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #22, !dbg !847
  %24 = load i32, i32* %23, align 4, !dbg !847
  %25 = load i8*, i8** %1, align 8, !dbg !847
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.57, i64 0, i64 0), i8* noundef %25), !dbg !847
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !848
  call void @_exit(i32 noundef %27) #23, !dbg !849
  unreachable, !dbg !849

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !850
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !852
  %31 = icmp ne i32 %30, 0, !dbg !853
  br i1 %31, label %32, label %34, !dbg !854

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !855
  call void @_exit(i32 noundef %33) #23, !dbg !856
  unreachable, !dbg !856

34:                                               ; preds = %28
  ret void, !dbg !857
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @dtimespec_bound(double noundef %0, i32 noundef %1) #4 !dbg !858 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !862, metadata !DIExpression()), !dbg !863
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !864, metadata !DIExpression()), !dbg !865
  %7 = load i32, i32* %5, align 4, !dbg !866
  %8 = icmp eq i32 %7, 34, !dbg !868
  br i1 %8, label %9, label %18, !dbg !869

9:                                                ; preds = %2
  %10 = load double, double* %4, align 8, !dbg !870
  %11 = fcmp oeq double %10, 0.000000e+00, !dbg !871
  br i1 %11, label %12, label %18, !dbg !872

12:                                               ; preds = %9
  %13 = load double, double* %4, align 8, !dbg !873
  %14 = bitcast double %13 to i64, !dbg !873
  %15 = icmp slt i64 %14, 0, !dbg !873
  %16 = zext i1 %15 to i64, !dbg !873
  %17 = select i1 %15, double -4.940660e-324, double 4.940660e-324, !dbg !873
  store double %17, double* %3, align 8, !dbg !874
  br label %23, !dbg !874

18:                                               ; preds = %9, %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !875, metadata !DIExpression()), !dbg !876
  store double 0x3CA0000000000001, double* %6, align 8, !dbg !876
  %19 = load double, double* %4, align 8, !dbg !877
  %20 = load double, double* %6, align 8, !dbg !878
  %21 = load double, double* %4, align 8, !dbg !879
  %22 = call double @llvm.fmuladd.f64(double %20, double %21, double %19), !dbg !880
  store double %22, double* %3, align 8, !dbg !881
  br label %23, !dbg !881

23:                                               ; preds = %18, %12
  %24 = load double, double* %3, align 8, !dbg !882
  ret double %24, !dbg !882
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !883 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !886, metadata !DIExpression()), !dbg !887
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !888, metadata !DIExpression()), !dbg !887
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !889, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !890, metadata !DIExpression()), !dbg !887
  call void @flush_stdout(), !dbg !891
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !892
  %10 = icmp ne void ()* %9, null, !dbg !892
  br i1 %10, label %11, label %13, !dbg !894

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !895
  call void %12(), !dbg !896
  br label %17, !dbg !896

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !897
  %15 = call i8* @getprogname() #21, !dbg !899
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i8* noundef %15), !dbg !900
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !901
  %19 = load i32, i32* %6, align 4, !dbg !901
  %20 = load i8*, i8** %7, align 8, !dbg !901
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !901
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !901
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !901
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !901
  ret void, !dbg !902
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !903 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !904, metadata !DIExpression()), !dbg !905
  store i32 1, i32* %1, align 4, !dbg !906
  %2 = load i32, i32* %1, align 4, !dbg !907
  %3 = icmp sle i32 0, %2, !dbg !909
  br i1 %3, label %4, label %11, !dbg !910

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !911
  %6 = call i32 @is_open(i32 noundef %5), !dbg !912
  %7 = icmp ne i32 %6, 0, !dbg !912
  br i1 %7, label %8, label %11, !dbg !913

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !914
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !914
  br label %11, !dbg !914

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !915
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !916 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !917, metadata !DIExpression()), !dbg !918
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !919, metadata !DIExpression()), !dbg !918
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !920, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !921, metadata !DIExpression()), !dbg !918
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !922
  %10 = load i8*, i8** %7, align 8, !dbg !923
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !924
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !924
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !924
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !924
  %14 = load i32, i32* @error_message_count, align 4, !dbg !925
  %15 = add i32 %14, 1, !dbg !925
  store i32 %15, i32* @error_message_count, align 4, !dbg !925
  %16 = load i32, i32* %6, align 4, !dbg !926
  %17 = icmp ne i32 %16, 0, !dbg !926
  br i1 %17, label %18, label %20, !dbg !928

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !929
  call void @print_errno_message(i32 noundef %19), !dbg !930
  br label %20, !dbg !930

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !931
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !931
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !932
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !932
  %25 = load i32, i32* %5, align 4, !dbg !933
  %26 = icmp ne i32 %25, 0, !dbg !933
  br i1 %26, label %27, label %29, !dbg !935

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !936
  call void @exit(i32 noundef %28) #20, !dbg !937
  unreachable, !dbg !937

29:                                               ; preds = %20
  ret void, !dbg !938
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !939 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata i8** %3, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !944, metadata !DIExpression()), !dbg !948
  %5 = load i32, i32* %2, align 4, !dbg !949
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !950
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #19, !dbg !951
  store i8* %7, i8** %3, align 8, !dbg !952
  %8 = load i8*, i8** %3, align 8, !dbg !953
  %9 = icmp ne i8* %8, null, !dbg !953
  br i1 %9, label %12, label %10, !dbg !955

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.62, i64 0, i64 0)) #19, !dbg !956
  store i8* %11, i8** %3, align 8, !dbg !957
  br label %12, !dbg !958

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !959
  %14 = load i8*, i8** %3, align 8, !dbg !960
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.63, i64 0, i64 0), i8* noundef %14), !dbg !961
  ret void, !dbg !962
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !963 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !966, metadata !DIExpression()), !dbg !967
  %3 = load i32, i32* %2, align 4, !dbg !968
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !969
  %5 = icmp sle i32 0, %4, !dbg !970
  %6 = zext i1 %5 to i32, !dbg !970
  ret i32 %6, !dbg !971
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !972 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !975, metadata !DIExpression()), !dbg !976
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !977, metadata !DIExpression()), !dbg !978
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !979, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !981, metadata !DIExpression()), !dbg !982
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !983
  call void @llvm.va_start(i8* %9), !dbg !983
  %10 = load i32, i32* %4, align 4, !dbg !984
  %11 = load i32, i32* %5, align 4, !dbg !984
  %12 = load i8*, i8** %6, align 8, !dbg !984
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !984
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !984
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #24, !dbg !984
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !985
  call void @llvm.va_end(i8* %15), !dbg !985
  ret void, !dbg !986
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !55 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !987, metadata !DIExpression()), !dbg !988
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !989, metadata !DIExpression()), !dbg !988
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !990, metadata !DIExpression()), !dbg !988
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !991, metadata !DIExpression()), !dbg !988
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !992, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !993, metadata !DIExpression()), !dbg !988
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !994
  %14 = icmp ne i32 %13, 0, !dbg !994
  br i1 %14, label %15, label %38, !dbg !996

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !997
  %17 = load i32, i32* %10, align 4, !dbg !1000
  %18 = icmp eq i32 %16, %17, !dbg !1001
  br i1 %18, label %19, label %35, !dbg !1002

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1003
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1004
  %22 = icmp eq i8* %20, %21, !dbg !1005
  br i1 %22, label %34, label %23, !dbg !1006

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1007
  %25 = icmp ne i8* %24, null, !dbg !1008
  br i1 %25, label %26, label %35, !dbg !1009

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1010
  %28 = icmp ne i8* %27, null, !dbg !1011
  br i1 %28, label %29, label %35, !dbg !1012

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1013
  %31 = load i8*, i8** %9, align 8, !dbg !1014
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #21, !dbg !1015
  %33 = icmp eq i32 %32, 0, !dbg !1016
  br i1 %33, label %34, label %35, !dbg !1017

34:                                               ; preds = %29, %19
  br label %61, !dbg !1018

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1019
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1020
  %37 = load i32, i32* %10, align 4, !dbg !1021
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1022
  br label %38, !dbg !1023

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1024
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1025
  %40 = icmp ne void ()* %39, null, !dbg !1025
  br i1 %40, label %41, label %43, !dbg !1027

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1028
  call void %42(), !dbg !1029
  br label %47, !dbg !1029

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1030
  %45 = call i8* @getprogname() #21, !dbg !1032
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.66, i64 0, i64 0), i8* noundef %45), !dbg !1033
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1034
  %49 = load i8*, i8** %9, align 8, !dbg !1035
  %50 = icmp ne i8* %49, null, !dbg !1036
  %51 = zext i1 %50 to i64, !dbg !1035
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.68, i64 0, i64 0), !dbg !1035
  %53 = load i8*, i8** %9, align 8, !dbg !1037
  %54 = load i32, i32* %10, align 4, !dbg !1038
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1039
  %56 = load i32, i32* %7, align 4, !dbg !1040
  %57 = load i32, i32* %8, align 4, !dbg !1040
  %58 = load i8*, i8** %11, align 8, !dbg !1040
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1040
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1040
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1040
  br label %61, !dbg !1041

61:                                               ; preds = %47, %34
  ret void, !dbg !1041
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1042 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1045, metadata !DIExpression()), !dbg !1046
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1047, metadata !DIExpression()), !dbg !1048
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1049, metadata !DIExpression()), !dbg !1050
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1051, metadata !DIExpression()), !dbg !1052
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1053, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1055, metadata !DIExpression()), !dbg !1056
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1057
  call void @llvm.va_start(i8* %13), !dbg !1057
  %14 = load i32, i32* %6, align 4, !dbg !1058
  %15 = load i32, i32* %7, align 4, !dbg !1058
  %16 = load i8*, i8** %8, align 8, !dbg !1058
  %17 = load i32, i32* %9, align 4, !dbg !1058
  %18 = load i8*, i8** %10, align 8, !dbg !1058
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1058
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1058
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1058
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #24, !dbg !1058
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1059
  call void @llvm.va_end(i8* %21), !dbg !1059
  ret void, !dbg !1060
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1061 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1064
  ret i8* %1, !dbg !1065
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* noundef %5, ...) #4 !dbg !1066 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca void (i32)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %"struct.std::__va_list", align 8
  %16 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1070, metadata !DIExpression()), !dbg !1071
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1072, metadata !DIExpression()), !dbg !1073
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1074, metadata !DIExpression()), !dbg !1075
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1076, metadata !DIExpression()), !dbg !1077
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1078, metadata !DIExpression()), !dbg !1079
  store void (i32)* %5, void (i32)** %12, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %12, metadata !1080, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1082, metadata !DIExpression()), !dbg !1083
  %17 = load i32, i32* @opterr, align 4, !dbg !1084
  store i32 %17, i32* %13, align 4, !dbg !1083
  store i32 0, i32* @opterr, align 4, !dbg !1085
  %18 = load i32, i32* %7, align 4, !dbg !1086
  %19 = icmp eq i32 %18, 2, !dbg !1088
  br i1 %19, label %20, label %41, !dbg !1089

20:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1090, metadata !DIExpression()), !dbg !1092
  %21 = load i32, i32* %7, align 4, !dbg !1093
  %22 = load i8**, i8*** %8, align 8, !dbg !1094
  %23 = call i32 @getopt_long(i32 noundef %21, i8** noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #19, !dbg !1095
  store i32 %23, i32* %14, align 4, !dbg !1092
  %24 = load i32, i32* %14, align 4, !dbg !1096
  %25 = icmp ne i32 %24, -1, !dbg !1098
  br i1 %25, label %26, label %40, !dbg !1099

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4, !dbg !1100
  switch i32 %27, label %38 [
    i32 104, label %28
    i32 118, label %30
  ], !dbg !1102

28:                                               ; preds = %26
  %29 = load void (i32)*, void (i32)** %12, align 8, !dbg !1103
  call void %29(i32 noundef 0), !dbg !1105
  br label %39, !dbg !1106

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %15, metadata !1107, metadata !DIExpression()), !dbg !1120
  %31 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !1121
  call void @llvm.va_start(i8* %31), !dbg !1121
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1122
  %33 = load i8*, i8** %9, align 8, !dbg !1123
  %34 = load i8*, i8** %10, align 8, !dbg !1124
  %35 = load i8*, i8** %11, align 8, !dbg !1125
  %36 = bitcast %"struct.std::__va_list"* %16 to i8*, !dbg !1126
  %37 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !1126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false), !dbg !1126
  call void @version_etc_va(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35, %"struct.std::__va_list"* noundef %16), !dbg !1126
  call void @exit(i32 noundef 0) #20, !dbg !1127
  unreachable, !dbg !1127

38:                                               ; preds = %26
  br label %39, !dbg !1128

39:                                               ; preds = %38, %28
  br label %40, !dbg !1129

40:                                               ; preds = %39, %20
  br label %41, !dbg !1130

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %13, align 4, !dbg !1131
  store i32 %42, i32* @opterr, align 4, !dbg !1132
  store i32 0, i32* @optind, align 4, !dbg !1133
  ret void, !dbg !1134
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* noundef %6, ...) #4 !dbg !1135 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca void (i32)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %"struct.std::__va_list", align 8
  %19 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1138, metadata !DIExpression()), !dbg !1139
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1140, metadata !DIExpression()), !dbg !1141
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1142, metadata !DIExpression()), !dbg !1143
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1144, metadata !DIExpression()), !dbg !1145
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1146, metadata !DIExpression()), !dbg !1147
  %20 = zext i1 %5 to i8
  store i8 %20, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1148, metadata !DIExpression()), !dbg !1149
  store void (i32)* %6, void (i32)** %14, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %14, metadata !1150, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1152, metadata !DIExpression()), !dbg !1153
  %21 = load i32, i32* @opterr, align 4, !dbg !1154
  store i32 %21, i32* %15, align 4, !dbg !1153
  store i32 1, i32* @opterr, align 4, !dbg !1155
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1156, metadata !DIExpression()), !dbg !1157
  %22 = load i8, i8* %13, align 1, !dbg !1158
  %23 = trunc i8 %22 to i1, !dbg !1158
  %24 = zext i1 %23 to i64, !dbg !1158
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.78, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0), !dbg !1158
  store i8* %25, i8** %16, align 8, !dbg !1157
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1159, metadata !DIExpression()), !dbg !1160
  %26 = load i32, i32* %8, align 4, !dbg !1161
  %27 = load i8**, i8*** %9, align 8, !dbg !1162
  %28 = load i8*, i8** %16, align 8, !dbg !1163
  %29 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef %28, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #19, !dbg !1164
  store i32 %29, i32* %17, align 4, !dbg !1160
  %30 = load i32, i32* %17, align 4, !dbg !1165
  %31 = icmp ne i32 %30, -1, !dbg !1167
  br i1 %31, label %32, label %48, !dbg !1168

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4, !dbg !1169
  switch i32 %33, label %44 [
    i32 104, label %34
    i32 118, label %36
  ], !dbg !1171

34:                                               ; preds = %32
  %35 = load void (i32)*, void (i32)** %14, align 8, !dbg !1172
  call void %35(i32 noundef 0), !dbg !1174
  br label %47, !dbg !1175

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %18, metadata !1176, metadata !DIExpression()), !dbg !1178
  %37 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !1179
  call void @llvm.va_start(i8* %37), !dbg !1179
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1180
  %39 = load i8*, i8** %10, align 8, !dbg !1181
  %40 = load i8*, i8** %11, align 8, !dbg !1182
  %41 = load i8*, i8** %12, align 8, !dbg !1183
  %42 = bitcast %"struct.std::__va_list"* %19 to i8*, !dbg !1184
  %43 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !1184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false), !dbg !1184
  call void @version_etc_va(%struct._IO_FILE* noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, %"struct.std::__va_list"* noundef %19), !dbg !1184
  call void @exit(i32 noundef 0) #20, !dbg !1185
  unreachable, !dbg !1185

44:                                               ; preds = %32
  %45 = load void (i32)*, void (i32)** %14, align 8, !dbg !1186
  %46 = load volatile i32, i32* @exit_failure, align 4, !dbg !1187
  call void %45(i32 noundef %46), !dbg !1188
  br label %47, !dbg !1189

47:                                               ; preds = %44, %34
  br label %48, !dbg !1190

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %15, align 4, !dbg !1191
  store i32 %49, i32* @opterr, align 4, !dbg !1192
  ret void, !dbg !1193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1194 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1195, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1197, metadata !DIExpression()), !dbg !1198
  %5 = load i8*, i8** %2, align 8, !dbg !1199
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #21, !dbg !1200
  store i8* %6, i8** %3, align 8, !dbg !1198
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1201, metadata !DIExpression()), !dbg !1202
  %7 = load i8*, i8** %3, align 8, !dbg !1203
  %8 = icmp ne i8* %7, null, !dbg !1203
  br i1 %8, label %9, label %12, !dbg !1203

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1204
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1205
  br label %14, !dbg !1203

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1206
  br label %14, !dbg !1203

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1203
  store i8* %15, i8** %4, align 8, !dbg !1202
  %16 = load i8*, i8** %4, align 8, !dbg !1207
  %17 = load i8*, i8** %2, align 8, !dbg !1209
  %18 = ptrtoint i8* %16 to i64, !dbg !1210
  %19 = ptrtoint i8* %17 to i64, !dbg !1210
  %20 = sub i64 %18, %19, !dbg !1210
  %21 = icmp sle i64 7, %20, !dbg !1211
  br i1 %21, label %22, label %36, !dbg !1212

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1213
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1214
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i64 0, i64 0), i64 noundef 7), !dbg !1215
  br i1 %25, label %26, label %36, !dbg !1216

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1217
  store i8* %27, i8** %2, align 8, !dbg !1219
  %28 = load i8*, i8** %4, align 8, !dbg !1220
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i64 noundef 3) #21, !dbg !1222
  %30 = icmp eq i32 %29, 0, !dbg !1223
  br i1 %30, label %31, label %35, !dbg !1224

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1225
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1225
  store i8* %33, i8** %4, align 8, !dbg !1225
  %34 = load i8*, i8** %4, align 8, !dbg !1227
  store i8* %34, i8** %2, align 8, !dbg !1228
  br label %35, !dbg !1229

35:                                               ; preds = %31, %26
  br label %36, !dbg !1230

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1231
  store i8* %37, i8** @program_name, align 8, !dbg !1232
  %38 = load i8*, i8** %2, align 8, !dbg !1233
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1234
  %39 = load i8*, i8** %4, align 8, !dbg !1235
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1236
  ret void, !dbg !1237
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !107 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1238, metadata !DIExpression()), !dbg !1239
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1240, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1242, metadata !DIExpression()), !dbg !1243
  %9 = load i8*, i8** %4, align 8, !dbg !1244
  %10 = call i8* @gettext(i8* noundef %9) #19, !dbg !1245
  store i8* %10, i8** %6, align 8, !dbg !1243
  %11 = load i8*, i8** %6, align 8, !dbg !1246
  %12 = load i8*, i8** %4, align 8, !dbg !1248
  %13 = icmp ne i8* %11, %12, !dbg !1249
  br i1 %13, label %14, label %16, !dbg !1250

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1251
  store i8* %15, i8** %3, align 8, !dbg !1252
  br label %26, !dbg !1252

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1253, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1259, metadata !DIExpression()), !dbg !1270
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1271
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #19, !dbg !1272
  %18 = icmp eq i64 %17, 2, !dbg !1274
  br i1 %18, label %19, label %24, !dbg !1275

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1276
  %21 = icmp eq i32 %20, 2047, !dbg !1277
  br i1 %21, label %22, label %24, !dbg !1278

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1279
  store i8* %23, i8** %3, align 8, !dbg !1280
  br label %26, !dbg !1280

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1281
  store i8* %25, i8** %3, align 8, !dbg !1282
  br label %26, !dbg !1282

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1283
  ret i8* %27, !dbg !1283
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1284 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1288, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1290, metadata !DIExpression()), !dbg !1291
  %5 = call i32* @__errno_location() #22, !dbg !1292
  %6 = load i32, i32* %5, align 4, !dbg !1292
  store i32 %6, i32* %3, align 4, !dbg !1291
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1293, metadata !DIExpression()), !dbg !1294
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1295
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1295
  br i1 %8, label %9, label %11, !dbg !1295

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1296
  br label %12, !dbg !1295

11:                                               ; preds = %1
  br label %12, !dbg !1295

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1295
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1295
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #25, !dbg !1297
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1297
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1294
  %17 = load i32, i32* %3, align 4, !dbg !1298
  %18 = call i32* @__errno_location() #22, !dbg !1299
  store i32 %17, i32* %18, align 4, !dbg !1300
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1301
  ret %struct.quoting_options* %19, !dbg !1302
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1303 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1308, metadata !DIExpression()), !dbg !1309
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1310
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1310
  br i1 %4, label %5, label %7, !dbg !1310

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1311
  br label %8, !dbg !1310

7:                                                ; preds = %1
  br label %8, !dbg !1310

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1310
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1312
  %11 = load i32, i32* %10, align 8, !dbg !1312
  ret i32 %11, !dbg !1313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1314 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1317, metadata !DIExpression()), !dbg !1318
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1319, metadata !DIExpression()), !dbg !1320
  %5 = load i32, i32* %4, align 4, !dbg !1321
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1322
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1322
  br i1 %7, label %8, label %10, !dbg !1322

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1323
  br label %11, !dbg !1322

10:                                               ; preds = %2
  br label %11, !dbg !1322

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1322
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1324
  store i32 %5, i32* %13, align 8, !dbg !1325
  ret void, !dbg !1326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1327 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1330, metadata !DIExpression()), !dbg !1331
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1332, metadata !DIExpression()), !dbg !1333
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1334, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1336, metadata !DIExpression()), !dbg !1337
  %11 = load i8, i8* %5, align 1, !dbg !1338
  store i8 %11, i8* %7, align 1, !dbg !1337
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1339, metadata !DIExpression()), !dbg !1341
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1342
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1342
  br i1 %13, label %14, label %16, !dbg !1342

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1343
  br label %17, !dbg !1342

16:                                               ; preds = %3
  br label %17, !dbg !1342

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1342
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1344
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1345
  %21 = load i8, i8* %7, align 1, !dbg !1346
  %22 = zext i8 %21 to i64, !dbg !1346
  %23 = udiv i64 %22, 32, !dbg !1347
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1348
  store i32* %24, i32** %8, align 8, !dbg !1341
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1349, metadata !DIExpression()), !dbg !1350
  %25 = load i8, i8* %7, align 1, !dbg !1351
  %26 = zext i8 %25 to i64, !dbg !1351
  %27 = urem i64 %26, 32, !dbg !1352
  %28 = trunc i64 %27 to i32, !dbg !1351
  store i32 %28, i32* %9, align 4, !dbg !1350
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1353, metadata !DIExpression()), !dbg !1354
  %29 = load i32*, i32** %8, align 8, !dbg !1355
  %30 = load i32, i32* %29, align 4, !dbg !1356
  %31 = load i32, i32* %9, align 4, !dbg !1357
  %32 = lshr i32 %30, %31, !dbg !1358
  %33 = and i32 %32, 1, !dbg !1359
  store i32 %33, i32* %10, align 4, !dbg !1354
  %34 = load i32, i32* %6, align 4, !dbg !1360
  %35 = and i32 %34, 1, !dbg !1361
  %36 = load i32, i32* %10, align 4, !dbg !1362
  %37 = xor i32 %35, %36, !dbg !1363
  %38 = load i32, i32* %9, align 4, !dbg !1364
  %39 = shl i32 %37, %38, !dbg !1365
  %40 = load i32*, i32** %8, align 8, !dbg !1366
  %41 = load i32, i32* %40, align 4, !dbg !1367
  %42 = xor i32 %41, %39, !dbg !1367
  store i32 %42, i32* %40, align 4, !dbg !1367
  %43 = load i32, i32* %10, align 4, !dbg !1368
  ret i32 %43, !dbg !1369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1370 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1373, metadata !DIExpression()), !dbg !1374
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1375, metadata !DIExpression()), !dbg !1376
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1377
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1377
  br i1 %7, label %9, label %8, !dbg !1379

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1380
  br label %9, !dbg !1381

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1382, metadata !DIExpression()), !dbg !1383
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1384
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1385
  %12 = load i32, i32* %11, align 4, !dbg !1385
  store i32 %12, i32* %5, align 4, !dbg !1383
  %13 = load i32, i32* %4, align 4, !dbg !1386
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1387
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1388
  store i32 %13, i32* %15, align 4, !dbg !1389
  %16 = load i32, i32* %5, align 4, !dbg !1390
  ret i32 %16, !dbg !1391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1392 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1395, metadata !DIExpression()), !dbg !1396
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1399, metadata !DIExpression()), !dbg !1400
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1401
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1401
  br i1 %8, label %10, label %9, !dbg !1403

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1404
  br label %10, !dbg !1405

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1406
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1407
  store i32 10, i32* %12, align 8, !dbg !1408
  %13 = load i8*, i8** %5, align 8, !dbg !1409
  %14 = icmp ne i8* %13, null, !dbg !1409
  br i1 %14, label %15, label %18, !dbg !1411

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1412
  %17 = icmp ne i8* %16, null, !dbg !1412
  br i1 %17, label %19, label %18, !dbg !1413

18:                                               ; preds = %15, %10
  call void @abort() #20, !dbg !1414
  unreachable, !dbg !1414

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1415
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1416
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1417
  store i8* %20, i8** %22, align 8, !dbg !1418
  %23 = load i8*, i8** %6, align 8, !dbg !1419
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1420
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1421
  store i8* %23, i8** %25, align 8, !dbg !1422
  ret void, !dbg !1423
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1424 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1427, metadata !DIExpression()), !dbg !1428
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1429, metadata !DIExpression()), !dbg !1430
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1431, metadata !DIExpression()), !dbg !1432
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1433, metadata !DIExpression()), !dbg !1434
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1435, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1437, metadata !DIExpression()), !dbg !1438
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1439
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1439
  br i1 %15, label %16, label %18, !dbg !1439

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1440
  br label %19, !dbg !1439

18:                                               ; preds = %5
  br label %19, !dbg !1439

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1439
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1438
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1441, metadata !DIExpression()), !dbg !1442
  %21 = call i32* @__errno_location() #22, !dbg !1443
  %22 = load i32, i32* %21, align 4, !dbg !1443
  store i32 %22, i32* %12, align 4, !dbg !1442
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1444, metadata !DIExpression()), !dbg !1445
  %23 = load i8*, i8** %6, align 8, !dbg !1446
  %24 = load i64, i64* %7, align 8, !dbg !1447
  %25 = load i8*, i8** %8, align 8, !dbg !1448
  %26 = load i64, i64* %9, align 8, !dbg !1449
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1450
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1451
  %29 = load i32, i32* %28, align 8, !dbg !1451
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1452
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1453
  %32 = load i32, i32* %31, align 4, !dbg !1453
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1454
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1455
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1454
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1456
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1457
  %38 = load i8*, i8** %37, align 8, !dbg !1457
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1458
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1459
  %41 = load i8*, i8** %40, align 8, !dbg !1459
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1460
  store i64 %42, i64* %13, align 8, !dbg !1445
  %43 = load i32, i32* %12, align 4, !dbg !1461
  %44 = call i32* @__errno_location() #22, !dbg !1462
  store i32 %43, i32* %44, align 4, !dbg !1463
  %45 = load i64, i64* %13, align 8, !dbg !1464
  ret i64 %45, !dbg !1465
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1466 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1471, metadata !DIExpression()), !dbg !1472
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1473, metadata !DIExpression()), !dbg !1474
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1475, metadata !DIExpression()), !dbg !1476
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1477, metadata !DIExpression()), !dbg !1478
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1479, metadata !DIExpression()), !dbg !1480
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1481, metadata !DIExpression()), !dbg !1482
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1483, metadata !DIExpression()), !dbg !1484
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1485, metadata !DIExpression()), !dbg !1486
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1487, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1489, metadata !DIExpression()), !dbg !1490
  %44 = call i64 @__ctype_get_mb_cur_max() #19, !dbg !1491
  %45 = icmp eq i64 %44, 1, !dbg !1492
  %46 = zext i1 %45 to i8, !dbg !1490
  store i8 %46, i8* %20, align 1, !dbg !1490
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1493, metadata !DIExpression()), !dbg !1494
  store i64 0, i64* %21, align 8, !dbg !1494
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1495, metadata !DIExpression()), !dbg !1496
  store i64 0, i64* %22, align 8, !dbg !1496
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1497, metadata !DIExpression()), !dbg !1498
  store i8* null, i8** %23, align 8, !dbg !1498
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1499, metadata !DIExpression()), !dbg !1500
  store i64 0, i64* %24, align 8, !dbg !1500
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1501, metadata !DIExpression()), !dbg !1502
  store i8 0, i8* %25, align 1, !dbg !1502
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1503, metadata !DIExpression()), !dbg !1504
  %47 = load i32, i32* %16, align 4, !dbg !1505
  %48 = and i32 %47, 2, !dbg !1506
  %49 = icmp ne i32 %48, 0, !dbg !1507
  %50 = zext i1 %49 to i8, !dbg !1504
  store i8 %50, i8* %26, align 1, !dbg !1504
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1508, metadata !DIExpression()), !dbg !1509
  store i8 0, i8* %27, align 1, !dbg !1509
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1510, metadata !DIExpression()), !dbg !1511
  store i8 1, i8* %28, align 1, !dbg !1511
  br label %51, !dbg !1512

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1513), !dbg !1514
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1515, metadata !DIExpression()), !dbg !1516
  store i8 0, i8* %29, align 1, !dbg !1516
  %52 = load i32, i32* %15, align 4, !dbg !1517
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
  ], !dbg !1518

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1519
  store i8 1, i8* %26, align 1, !dbg !1521
  br label %54, !dbg !1522

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1523
  %56 = trunc i8 %55 to i1, !dbg !1523
  br i1 %56, label %70, label %57, !dbg !1525

57:                                               ; preds = %54
  br label %58, !dbg !1526

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1527
  %60 = load i64, i64* %12, align 8, !dbg !1527
  %61 = icmp ult i64 %59, %60, !dbg !1527
  br i1 %61, label %62, label %66, !dbg !1530

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1527
  %64 = load i64, i64* %21, align 8, !dbg !1527
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1527
  store i8 34, i8* %65, align 1, !dbg !1527
  br label %66, !dbg !1527

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1530
  %68 = add i64 %67, 1, !dbg !1530
  store i64 %68, i64* %21, align 8, !dbg !1530
  br label %69, !dbg !1530

69:                                               ; preds = %66
  br label %70, !dbg !1530

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1531
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), i8** %23, align 8, !dbg !1532
  store i64 1, i64* %24, align 8, !dbg !1533
  br label %138, !dbg !1534

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1535
  store i8 0, i8* %26, align 1, !dbg !1536
  br label %138, !dbg !1537

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1538
  %74 = icmp ne i32 %73, 10, !dbg !1541
  br i1 %74, label %75, label %80, !dbg !1542

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1543
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.98, i64 0, i64 0), i32 noundef %76), !dbg !1545
  store i8* %77, i8** %18, align 8, !dbg !1546
  %78 = load i32, i32* %15, align 4, !dbg !1547
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.99, i64 0, i64 0), i32 noundef %78), !dbg !1548
  store i8* %79, i8** %19, align 8, !dbg !1549
  br label %80, !dbg !1550

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1551
  %82 = trunc i8 %81 to i1, !dbg !1551
  br i1 %82, label %108, label %83, !dbg !1553

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1554, metadata !DIExpression()), !dbg !1556
  %84 = load i8*, i8** %18, align 8, !dbg !1557
  store i8* %84, i8** %30, align 8, !dbg !1556
  br label %85, !dbg !1558

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1559
  %87 = load i8, i8* %86, align 1, !dbg !1561
  %88 = icmp ne i8 %87, 0, !dbg !1562
  br i1 %88, label %89, label %107, !dbg !1562

89:                                               ; preds = %85
  br label %90, !dbg !1563

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1564
  %92 = load i64, i64* %12, align 8, !dbg !1564
  %93 = icmp ult i64 %91, %92, !dbg !1564
  br i1 %93, label %94, label %100, !dbg !1567

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1564
  %96 = load i8, i8* %95, align 1, !dbg !1564
  %97 = load i8*, i8** %11, align 8, !dbg !1564
  %98 = load i64, i64* %21, align 8, !dbg !1564
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1564
  store i8 %96, i8* %99, align 1, !dbg !1564
  br label %100, !dbg !1564

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1567
  %102 = add i64 %101, 1, !dbg !1567
  store i64 %102, i64* %21, align 8, !dbg !1567
  br label %103, !dbg !1567

103:                                              ; preds = %100
  br label %104, !dbg !1567

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1568
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1568
  store i8* %106, i8** %30, align 8, !dbg !1568
  br label %85, !dbg !1569, !llvm.loop !1570

107:                                              ; preds = %85
  br label %108, !dbg !1571

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1572
  %109 = load i8*, i8** %19, align 8, !dbg !1573
  store i8* %109, i8** %23, align 8, !dbg !1574
  %110 = load i8*, i8** %23, align 8, !dbg !1575
  %111 = call i64 @strlen(i8* noundef %110) #21, !dbg !1576
  store i64 %111, i64* %24, align 8, !dbg !1577
  br label %138, !dbg !1578

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1579
  br label %113, !dbg !1580

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1581
  br label %114, !dbg !1582

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1583
  %116 = trunc i8 %115 to i1, !dbg !1583
  br i1 %116, label %118, label %117, !dbg !1585

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1586
  br label %118, !dbg !1587

118:                                              ; preds = %117, %114
  br label %119, !dbg !1583

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1588
  %120 = load i8, i8* %26, align 1, !dbg !1589
  %121 = trunc i8 %120 to i1, !dbg !1589
  br i1 %121, label %135, label %122, !dbg !1591

122:                                              ; preds = %119
  br label %123, !dbg !1592

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1593
  %125 = load i64, i64* %12, align 8, !dbg !1593
  %126 = icmp ult i64 %124, %125, !dbg !1593
  br i1 %126, label %127, label %131, !dbg !1596

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1593
  %129 = load i64, i64* %21, align 8, !dbg !1593
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1593
  store i8 39, i8* %130, align 1, !dbg !1593
  br label %131, !dbg !1593

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1596
  %133 = add i64 %132, 1, !dbg !1596
  store i64 %133, i64* %21, align 8, !dbg !1596
  br label %134, !dbg !1596

134:                                              ; preds = %131
  br label %135, !dbg !1596

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.99, i64 0, i64 0), i8** %23, align 8, !dbg !1597
  store i64 1, i64* %24, align 8, !dbg !1598
  br label %138, !dbg !1599

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1600
  br label %138, !dbg !1601

137:                                              ; preds = %51
  call void @abort() #20, !dbg !1602
  unreachable, !dbg !1602

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1603, metadata !DIExpression()), !dbg !1605
  store i64 0, i64* %31, align 8, !dbg !1605
  br label %139, !dbg !1606

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1607
  %141 = icmp eq i64 %140, -1, !dbg !1609
  br i1 %141, label %142, label %150, !dbg !1607

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1610
  %144 = load i64, i64* %31, align 8, !dbg !1611
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1610
  %146 = load i8, i8* %145, align 1, !dbg !1610
  %147 = zext i8 %146 to i32, !dbg !1610
  %148 = icmp eq i32 %147, 0, !dbg !1612
  %149 = zext i1 %148 to i32, !dbg !1612
  br label %155, !dbg !1607

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1613
  %152 = load i64, i64* %14, align 8, !dbg !1614
  %153 = icmp eq i64 %151, %152, !dbg !1615
  %154 = zext i1 %153 to i32, !dbg !1615
  br label %155, !dbg !1607

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1607
  %157 = icmp ne i32 %156, 0, !dbg !1616
  %158 = xor i1 %157, true, !dbg !1616
  br i1 %158, label %159, label %996, !dbg !1617

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1618, metadata !DIExpression()), !dbg !1620
  store i8 0, i8* %32, align 1, !dbg !1620
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1621, metadata !DIExpression()), !dbg !1622
  store i8 0, i8* %33, align 1, !dbg !1622
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1623, metadata !DIExpression()), !dbg !1624
  store i8 0, i8* %34, align 1, !dbg !1624
  %160 = load i8, i8* %25, align 1, !dbg !1625
  %161 = trunc i8 %160 to i1, !dbg !1625
  br i1 %161, label %162, label %197, !dbg !1627

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1628
  %164 = icmp ne i32 %163, 2, !dbg !1629
  br i1 %164, label %165, label %197, !dbg !1630

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1631
  %167 = icmp ne i64 %166, 0, !dbg !1631
  br i1 %167, label %168, label %197, !dbg !1632

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1633
  %170 = load i64, i64* %24, align 8, !dbg !1634
  %171 = add i64 %169, %170, !dbg !1635
  %172 = load i64, i64* %14, align 8, !dbg !1636
  %173 = icmp eq i64 %172, -1, !dbg !1637
  br i1 %173, label %174, label %180, !dbg !1638

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1639
  %176 = icmp ult i64 1, %175, !dbg !1640
  br i1 %176, label %177, label %180, !dbg !1636

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1641
  %179 = call i64 @strlen(i8* noundef %178) #21, !dbg !1642
  store i64 %179, i64* %14, align 8, !dbg !1643
  br label %182, !dbg !1636

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1644
  br label %182, !dbg !1636

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1636
  %184 = icmp ule i64 %171, %183, !dbg !1645
  br i1 %184, label %185, label %197, !dbg !1646

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1647
  %187 = load i64, i64* %31, align 8, !dbg !1648
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1649
  %189 = load i8*, i8** %23, align 8, !dbg !1650
  %190 = load i64, i64* %24, align 8, !dbg !1651
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1652
  br i1 %191, label %192, label %197, !dbg !1653

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1654
  %194 = trunc i8 %193 to i1, !dbg !1654
  br i1 %194, label %195, label %196, !dbg !1657

195:                                              ; preds = %192
  br label %1078, !dbg !1658

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1659
  br label %197, !dbg !1660

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1661, metadata !DIExpression()), !dbg !1662
  %198 = load i8*, i8** %13, align 8, !dbg !1663
  %199 = load i64, i64* %31, align 8, !dbg !1664
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1663
  %201 = load i8, i8* %200, align 1, !dbg !1663
  store i8 %201, i8* %35, align 1, !dbg !1662
  %202 = load i8, i8* %35, align 1, !dbg !1665
  %203 = zext i8 %202 to i32, !dbg !1665
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
  ], !dbg !1666

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1667
  %206 = trunc i8 %205 to i1, !dbg !1667
  br i1 %206, label %207, label %318, !dbg !1670

207:                                              ; preds = %204
  br label %208, !dbg !1671

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1673
  %210 = trunc i8 %209 to i1, !dbg !1673
  br i1 %210, label %211, label %212, !dbg !1676

211:                                              ; preds = %208
  br label %1078, !dbg !1673

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1676
  %213 = load i32, i32* %15, align 4, !dbg !1677
  %214 = icmp eq i32 %213, 2, !dbg !1677
  br i1 %214, label %215, label %255, !dbg !1677

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1677
  %217 = trunc i8 %216 to i1, !dbg !1677
  br i1 %217, label %255, label %218, !dbg !1676

218:                                              ; preds = %215
  br label %219, !dbg !1679

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1681
  %221 = load i64, i64* %12, align 8, !dbg !1681
  %222 = icmp ult i64 %220, %221, !dbg !1681
  br i1 %222, label %223, label %227, !dbg !1684

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1681
  %225 = load i64, i64* %21, align 8, !dbg !1681
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1681
  store i8 39, i8* %226, align 1, !dbg !1681
  br label %227, !dbg !1681

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1684
  %229 = add i64 %228, 1, !dbg !1684
  store i64 %229, i64* %21, align 8, !dbg !1684
  br label %230, !dbg !1684

230:                                              ; preds = %227
  br label %231, !dbg !1679

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1685
  %233 = load i64, i64* %12, align 8, !dbg !1685
  %234 = icmp ult i64 %232, %233, !dbg !1685
  br i1 %234, label %235, label %239, !dbg !1688

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1685
  %237 = load i64, i64* %21, align 8, !dbg !1685
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1685
  store i8 36, i8* %238, align 1, !dbg !1685
  br label %239, !dbg !1685

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1688
  %241 = add i64 %240, 1, !dbg !1688
  store i64 %241, i64* %21, align 8, !dbg !1688
  br label %242, !dbg !1688

242:                                              ; preds = %239
  br label %243, !dbg !1679

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1689
  %245 = load i64, i64* %12, align 8, !dbg !1689
  %246 = icmp ult i64 %244, %245, !dbg !1689
  br i1 %246, label %247, label %251, !dbg !1692

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1689
  %249 = load i64, i64* %21, align 8, !dbg !1689
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1689
  store i8 39, i8* %250, align 1, !dbg !1689
  br label %251, !dbg !1689

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1692
  %253 = add i64 %252, 1, !dbg !1692
  store i64 %253, i64* %21, align 8, !dbg !1692
  br label %254, !dbg !1692

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1679
  br label %255, !dbg !1679

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1676

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1693
  %258 = load i64, i64* %12, align 8, !dbg !1693
  %259 = icmp ult i64 %257, %258, !dbg !1693
  br i1 %259, label %260, label %264, !dbg !1696

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1693
  %262 = load i64, i64* %21, align 8, !dbg !1693
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1693
  store i8 92, i8* %263, align 1, !dbg !1693
  br label %264, !dbg !1693

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1696
  %266 = add i64 %265, 1, !dbg !1696
  store i64 %266, i64* %21, align 8, !dbg !1696
  br label %267, !dbg !1696

267:                                              ; preds = %264
  br label %268, !dbg !1676

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1697
  %270 = icmp ne i32 %269, 2, !dbg !1699
  br i1 %270, label %271, label %317, !dbg !1700

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1701
  %273 = add i64 %272, 1, !dbg !1702
  %274 = load i64, i64* %14, align 8, !dbg !1703
  %275 = icmp ult i64 %273, %274, !dbg !1704
  br i1 %275, label %276, label %317, !dbg !1705

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1706
  %278 = load i64, i64* %31, align 8, !dbg !1707
  %279 = add i64 %278, 1, !dbg !1708
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1706
  %281 = load i8, i8* %280, align 1, !dbg !1706
  %282 = zext i8 %281 to i32, !dbg !1706
  %283 = icmp sle i32 48, %282, !dbg !1709
  br i1 %283, label %284, label %317, !dbg !1710

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1711
  %286 = load i64, i64* %31, align 8, !dbg !1712
  %287 = add i64 %286, 1, !dbg !1713
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1711
  %289 = load i8, i8* %288, align 1, !dbg !1711
  %290 = zext i8 %289 to i32, !dbg !1711
  %291 = icmp sle i32 %290, 57, !dbg !1714
  br i1 %291, label %292, label %317, !dbg !1715

292:                                              ; preds = %284
  br label %293, !dbg !1716

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1718
  %295 = load i64, i64* %12, align 8, !dbg !1718
  %296 = icmp ult i64 %294, %295, !dbg !1718
  br i1 %296, label %297, label %301, !dbg !1721

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1718
  %299 = load i64, i64* %21, align 8, !dbg !1718
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1718
  store i8 48, i8* %300, align 1, !dbg !1718
  br label %301, !dbg !1718

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1721
  %303 = add i64 %302, 1, !dbg !1721
  store i64 %303, i64* %21, align 8, !dbg !1721
  br label %304, !dbg !1721

304:                                              ; preds = %301
  br label %305, !dbg !1722

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1723
  %307 = load i64, i64* %12, align 8, !dbg !1723
  %308 = icmp ult i64 %306, %307, !dbg !1723
  br i1 %308, label %309, label %313, !dbg !1726

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1723
  %311 = load i64, i64* %21, align 8, !dbg !1723
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1723
  store i8 48, i8* %312, align 1, !dbg !1723
  br label %313, !dbg !1723

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1726
  %315 = add i64 %314, 1, !dbg !1726
  store i64 %315, i64* %21, align 8, !dbg !1726
  br label %316, !dbg !1726

316:                                              ; preds = %313
  br label %317, !dbg !1727

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1728
  br label %324, !dbg !1729

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1730
  %320 = and i32 %319, 1, !dbg !1732
  %321 = icmp ne i32 %320, 0, !dbg !1732
  br i1 %321, label %322, label %323, !dbg !1733

322:                                              ; preds = %318
  br label %993, !dbg !1734

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1735

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1736
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1737

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1738
  %329 = trunc i8 %328 to i1, !dbg !1738
  br i1 %329, label %330, label %331, !dbg !1741

330:                                              ; preds = %327
  br label %1078, !dbg !1742

331:                                              ; preds = %327
  br label %418, !dbg !1743

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1744
  %334 = and i32 %333, 4, !dbg !1746
  %335 = icmp ne i32 %334, 0, !dbg !1746
  br i1 %335, label %336, label %417, !dbg !1747

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1748
  %338 = add i64 %337, 2, !dbg !1749
  %339 = load i64, i64* %14, align 8, !dbg !1750
  %340 = icmp ult i64 %338, %339, !dbg !1751
  br i1 %340, label %341, label %417, !dbg !1752

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1753
  %343 = load i64, i64* %31, align 8, !dbg !1754
  %344 = add i64 %343, 1, !dbg !1755
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1753
  %346 = load i8, i8* %345, align 1, !dbg !1753
  %347 = zext i8 %346 to i32, !dbg !1753
  %348 = icmp eq i32 %347, 63, !dbg !1756
  br i1 %348, label %349, label %417, !dbg !1757

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1758
  %351 = load i64, i64* %31, align 8, !dbg !1759
  %352 = add i64 %351, 2, !dbg !1760
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1758
  %354 = load i8, i8* %353, align 1, !dbg !1758
  %355 = zext i8 %354 to i32, !dbg !1758
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
  ], !dbg !1761

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1762
  %358 = trunc i8 %357 to i1, !dbg !1762
  br i1 %358, label %359, label %360, !dbg !1765

359:                                              ; preds = %356
  br label %1078, !dbg !1766

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1767
  %362 = load i64, i64* %31, align 8, !dbg !1768
  %363 = add i64 %362, 2, !dbg !1769
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1767
  %365 = load i8, i8* %364, align 1, !dbg !1767
  store i8 %365, i8* %35, align 1, !dbg !1770
  %366 = load i64, i64* %31, align 8, !dbg !1771
  %367 = add i64 %366, 2, !dbg !1771
  store i64 %367, i64* %31, align 8, !dbg !1771
  br label %368, !dbg !1772

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1773
  %370 = load i64, i64* %12, align 8, !dbg !1773
  %371 = icmp ult i64 %369, %370, !dbg !1773
  br i1 %371, label %372, label %376, !dbg !1776

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1773
  %374 = load i64, i64* %21, align 8, !dbg !1773
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1773
  store i8 63, i8* %375, align 1, !dbg !1773
  br label %376, !dbg !1773

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1776
  %378 = add i64 %377, 1, !dbg !1776
  store i64 %378, i64* %21, align 8, !dbg !1776
  br label %379, !dbg !1776

379:                                              ; preds = %376
  br label %380, !dbg !1777

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1778
  %382 = load i64, i64* %12, align 8, !dbg !1778
  %383 = icmp ult i64 %381, %382, !dbg !1778
  br i1 %383, label %384, label %388, !dbg !1781

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1778
  %386 = load i64, i64* %21, align 8, !dbg !1778
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1778
  store i8 34, i8* %387, align 1, !dbg !1778
  br label %388, !dbg !1778

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1781
  %390 = add i64 %389, 1, !dbg !1781
  store i64 %390, i64* %21, align 8, !dbg !1781
  br label %391, !dbg !1781

391:                                              ; preds = %388
  br label %392, !dbg !1782

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1783
  %394 = load i64, i64* %12, align 8, !dbg !1783
  %395 = icmp ult i64 %393, %394, !dbg !1783
  br i1 %395, label %396, label %400, !dbg !1786

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1783
  %398 = load i64, i64* %21, align 8, !dbg !1783
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1783
  store i8 34, i8* %399, align 1, !dbg !1783
  br label %400, !dbg !1783

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1786
  %402 = add i64 %401, 1, !dbg !1786
  store i64 %402, i64* %21, align 8, !dbg !1786
  br label %403, !dbg !1786

403:                                              ; preds = %400
  br label %404, !dbg !1787

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1788
  %406 = load i64, i64* %12, align 8, !dbg !1788
  %407 = icmp ult i64 %405, %406, !dbg !1788
  br i1 %407, label %408, label %412, !dbg !1791

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1788
  %410 = load i64, i64* %21, align 8, !dbg !1788
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1788
  store i8 63, i8* %411, align 1, !dbg !1788
  br label %412, !dbg !1788

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1791
  %414 = add i64 %413, 1, !dbg !1791
  store i64 %414, i64* %21, align 8, !dbg !1791
  br label %415, !dbg !1791

415:                                              ; preds = %412
  br label %416, !dbg !1792

416:                                              ; preds = %349, %415
  br label %417, !dbg !1793

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1794

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1795

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1796
  br label %454, !dbg !1798

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1799
  br label %454, !dbg !1800

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1801
  br label %454, !dbg !1802

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1803
  br label %446, !dbg !1804

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1805
  br label %446, !dbg !1806

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1807
  br label %446, !dbg !1808

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1809
  br label %454, !dbg !1810

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1811
  store i8 %427, i8* %36, align 1, !dbg !1812
  %428 = load i32, i32* %15, align 4, !dbg !1813
  %429 = icmp eq i32 %428, 2, !dbg !1815
  br i1 %429, label %430, label %435, !dbg !1816

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1817
  %432 = trunc i8 %431 to i1, !dbg !1817
  br i1 %432, label %433, label %434, !dbg !1820

433:                                              ; preds = %430
  br label %1078, !dbg !1821

434:                                              ; preds = %430
  br label %942, !dbg !1822

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1823
  %437 = trunc i8 %436 to i1, !dbg !1823
  br i1 %437, label %438, label %445, !dbg !1825

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1826
  %440 = trunc i8 %439 to i1, !dbg !1826
  br i1 %440, label %441, label %445, !dbg !1827

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1828
  %443 = icmp ne i64 %442, 0, !dbg !1828
  br i1 %443, label %444, label %445, !dbg !1829

444:                                              ; preds = %441
  br label %942, !dbg !1830

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1828

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1831), !dbg !1832
  %447 = load i32, i32* %15, align 4, !dbg !1833
  %448 = icmp eq i32 %447, 2, !dbg !1835
  br i1 %448, label %449, label %453, !dbg !1836

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1837
  %451 = trunc i8 %450 to i1, !dbg !1837
  br i1 %451, label %452, label %453, !dbg !1838

452:                                              ; preds = %449
  br label %1078, !dbg !1839

453:                                              ; preds = %449, %446
  br label %454, !dbg !1837

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1840), !dbg !1841
  %455 = load i8, i8* %25, align 1, !dbg !1842
  %456 = trunc i8 %455 to i1, !dbg !1842
  br i1 %456, label %457, label %459, !dbg !1844

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1845
  store i8 %458, i8* %35, align 1, !dbg !1847
  br label %880, !dbg !1848

459:                                              ; preds = %454
  br label %849, !dbg !1849

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1850
  %462 = icmp eq i64 %461, -1, !dbg !1852
  br i1 %462, label %463, label %469, !dbg !1853

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1854
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1854
  %466 = load i8, i8* %465, align 1, !dbg !1854
  %467 = zext i8 %466 to i32, !dbg !1854
  %468 = icmp eq i32 %467, 0, !dbg !1855
  br i1 %468, label %473, label %472, !dbg !1850

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1856
  %471 = icmp eq i64 %470, 1, !dbg !1857
  br i1 %471, label %473, label %472, !dbg !1853

472:                                              ; preds = %469, %463
  br label %849, !dbg !1858

473:                                              ; preds = %469, %463
  br label %474, !dbg !1859

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1860
  %476 = icmp ne i64 %475, 0, !dbg !1862
  br i1 %476, label %477, label %478, !dbg !1863

477:                                              ; preds = %474
  br label %849, !dbg !1864

478:                                              ; preds = %474
  br label %479, !dbg !1865

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1866
  br label %480, !dbg !1867

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1868
  %482 = icmp eq i32 %481, 2, !dbg !1870
  br i1 %482, label %483, label %487, !dbg !1871

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1872
  %485 = trunc i8 %484 to i1, !dbg !1872
  br i1 %485, label %486, label %487, !dbg !1873

486:                                              ; preds = %483
  br label %1078, !dbg !1874

487:                                              ; preds = %483, %480
  br label %849, !dbg !1875

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1876
  store i8 1, i8* %34, align 1, !dbg !1877
  %489 = load i32, i32* %15, align 4, !dbg !1878
  %490 = icmp eq i32 %489, 2, !dbg !1880
  br i1 %490, label %491, label %540, !dbg !1881

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1882
  %493 = trunc i8 %492 to i1, !dbg !1882
  br i1 %493, label %494, label %495, !dbg !1885

494:                                              ; preds = %491
  br label %1078, !dbg !1886

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1887
  %497 = icmp ne i64 %496, 0, !dbg !1887
  br i1 %497, label %498, label %503, !dbg !1889

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1890
  %500 = icmp ne i64 %499, 0, !dbg !1890
  br i1 %500, label %503, label %501, !dbg !1891

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1892
  store i64 %502, i64* %22, align 8, !dbg !1894
  store i64 0, i64* %12, align 8, !dbg !1895
  br label %503, !dbg !1896

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1897

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1898
  %506 = load i64, i64* %12, align 8, !dbg !1898
  %507 = icmp ult i64 %505, %506, !dbg !1898
  br i1 %507, label %508, label %512, !dbg !1901

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1898
  %510 = load i64, i64* %21, align 8, !dbg !1898
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1898
  store i8 39, i8* %511, align 1, !dbg !1898
  br label %512, !dbg !1898

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1901
  %514 = add i64 %513, 1, !dbg !1901
  store i64 %514, i64* %21, align 8, !dbg !1901
  br label %515, !dbg !1901

515:                                              ; preds = %512
  br label %516, !dbg !1902

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1903
  %518 = load i64, i64* %12, align 8, !dbg !1903
  %519 = icmp ult i64 %517, %518, !dbg !1903
  br i1 %519, label %520, label %524, !dbg !1906

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1903
  %522 = load i64, i64* %21, align 8, !dbg !1903
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1903
  store i8 92, i8* %523, align 1, !dbg !1903
  br label %524, !dbg !1903

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1906
  %526 = add i64 %525, 1, !dbg !1906
  store i64 %526, i64* %21, align 8, !dbg !1906
  br label %527, !dbg !1906

527:                                              ; preds = %524
  br label %528, !dbg !1907

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1908
  %530 = load i64, i64* %12, align 8, !dbg !1908
  %531 = icmp ult i64 %529, %530, !dbg !1908
  br i1 %531, label %532, label %536, !dbg !1911

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1908
  %534 = load i64, i64* %21, align 8, !dbg !1908
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1908
  store i8 39, i8* %535, align 1, !dbg !1908
  br label %536, !dbg !1908

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1911
  %538 = add i64 %537, 1, !dbg !1911
  store i64 %538, i64* %21, align 8, !dbg !1911
  br label %539, !dbg !1911

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1912
  br label %540, !dbg !1913

540:                                              ; preds = %539, %488
  br label %849, !dbg !1914

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1915
  br label %849, !dbg !1916

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1917, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1920, metadata !DIExpression()), !dbg !1921
  %543 = load i8, i8* %20, align 1, !dbg !1922
  %544 = trunc i8 %543 to i1, !dbg !1922
  br i1 %544, label %545, label %557, !dbg !1924

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1925
  %546 = call i16** @__ctype_b_loc() #22, !dbg !1927
  %547 = load i16*, i16** %546, align 8, !dbg !1927
  %548 = load i8, i8* %35, align 1, !dbg !1927
  %549 = zext i8 %548 to i32, !dbg !1927
  %550 = sext i32 %549 to i64, !dbg !1927
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1927
  %552 = load i16, i16* %551, align 2, !dbg !1927
  %553 = zext i16 %552 to i32, !dbg !1927
  %554 = and i32 %553, 16384, !dbg !1927
  %555 = icmp ne i32 %554, 0, !dbg !1928
  %556 = zext i1 %555 to i8, !dbg !1929
  store i8 %556, i8* %38, align 1, !dbg !1929
  br label %648, !dbg !1930

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1931, metadata !DIExpression()), !dbg !1943
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1944
  store i64 0, i64* %37, align 8, !dbg !1945
  store i8 1, i8* %38, align 1, !dbg !1946
  %558 = load i64, i64* %14, align 8, !dbg !1947
  %559 = icmp eq i64 %558, -1, !dbg !1949
  br i1 %559, label %560, label %563, !dbg !1950

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1951
  %562 = call i64 @strlen(i8* noundef %561) #21, !dbg !1952
  store i64 %562, i64* %14, align 8, !dbg !1953
  br label %563, !dbg !1954

563:                                              ; preds = %560, %557
  br label %564, !dbg !1955

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1956, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1961, metadata !DIExpression()), !dbg !1962
  %565 = load i8*, i8** %13, align 8, !dbg !1963
  %566 = load i64, i64* %31, align 8, !dbg !1964
  %567 = load i64, i64* %37, align 8, !dbg !1965
  %568 = add i64 %566, %567, !dbg !1966
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1963
  %570 = load i64, i64* %14, align 8, !dbg !1967
  %571 = load i64, i64* %31, align 8, !dbg !1968
  %572 = load i64, i64* %37, align 8, !dbg !1969
  %573 = add i64 %571, %572, !dbg !1970
  %574 = sub i64 %570, %573, !dbg !1971
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1972
  store i64 %575, i64* %41, align 8, !dbg !1962
  %576 = load i64, i64* %41, align 8, !dbg !1973
  %577 = icmp eq i64 %576, 0, !dbg !1975
  br i1 %577, label %578, label %579, !dbg !1976

578:                                              ; preds = %564
  br label %647, !dbg !1977

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1978
  %581 = icmp eq i64 %580, -1, !dbg !1980
  br i1 %581, label %582, label %583, !dbg !1981

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1982
  br label %647, !dbg !1984

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1985
  %585 = icmp eq i64 %584, -2, !dbg !1987
  br i1 %585, label %586, label %608, !dbg !1988

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1989
  br label %587, !dbg !1991

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1992
  %589 = load i64, i64* %37, align 8, !dbg !1993
  %590 = add i64 %588, %589, !dbg !1994
  %591 = load i64, i64* %14, align 8, !dbg !1995
  %592 = icmp ult i64 %590, %591, !dbg !1996
  br i1 %592, label %593, label %602, !dbg !1997

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1998
  %595 = load i64, i64* %31, align 8, !dbg !1999
  %596 = load i64, i64* %37, align 8, !dbg !2000
  %597 = add i64 %595, %596, !dbg !2001
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1998
  %599 = load i8, i8* %598, align 1, !dbg !1998
  %600 = zext i8 %599 to i32, !dbg !1998
  %601 = icmp ne i32 %600, 0, !dbg !1997
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2002
  br i1 %603, label %604, label %607, !dbg !1991

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2003
  %606 = add i64 %605, 1, !dbg !2003
  store i64 %606, i64* %37, align 8, !dbg !2003
  br label %587, !dbg !1991, !llvm.loop !2004

607:                                              ; preds = %602
  br label %647, !dbg !2005

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2006
  %610 = trunc i8 %609 to i1, !dbg !2006
  br i1 %610, label %611, label %635, !dbg !2009

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2010
  %613 = icmp eq i32 %612, 2, !dbg !2011
  br i1 %613, label %614, label %635, !dbg !2012

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2013, metadata !DIExpression()), !dbg !2016
  store i64 1, i64* %42, align 8, !dbg !2016
  br label %615, !dbg !2017

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2018
  %617 = load i64, i64* %41, align 8, !dbg !2020
  %618 = icmp ult i64 %616, %617, !dbg !2021
  br i1 %618, label %619, label %634, !dbg !2022

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2023
  %621 = load i64, i64* %31, align 8, !dbg !2024
  %622 = load i64, i64* %37, align 8, !dbg !2025
  %623 = add i64 %621, %622, !dbg !2026
  %624 = load i64, i64* %42, align 8, !dbg !2027
  %625 = add i64 %623, %624, !dbg !2028
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2023
  %627 = load i8, i8* %626, align 1, !dbg !2023
  %628 = zext i8 %627 to i32, !dbg !2023
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2029

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2030

630:                                              ; preds = %619
  br label %631, !dbg !2032

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2033
  %633 = add i64 %632, 1, !dbg !2033
  store i64 %633, i64* %42, align 8, !dbg !2033
  br label %615, !dbg !2034, !llvm.loop !2035

634:                                              ; preds = %615
  br label %635, !dbg !2037

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2038
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2040
  %638 = icmp ne i32 %637, 0, !dbg !2040
  br i1 %638, label %640, label %639, !dbg !2041

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2042
  br label %640, !dbg !2043

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2044
  %642 = load i64, i64* %37, align 8, !dbg !2045
  %643 = add i64 %642, %641, !dbg !2045
  store i64 %643, i64* %37, align 8, !dbg !2045
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2046

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2047
  %650 = trunc i8 %649 to i1, !dbg !2047
  %651 = zext i1 %650 to i8, !dbg !2048
  store i8 %651, i8* %34, align 1, !dbg !2048
  %652 = load i64, i64* %37, align 8, !dbg !2049
  %653 = icmp ult i64 1, %652, !dbg !2051
  br i1 %653, label %660, label %654, !dbg !2052

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2053
  %656 = trunc i8 %655 to i1, !dbg !2053
  br i1 %656, label %657, label %848, !dbg !2054

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2055
  %659 = trunc i8 %658 to i1, !dbg !2055
  br i1 %659, label %848, label %660, !dbg !2056

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2057, metadata !DIExpression()), !dbg !2059
  %661 = load i64, i64* %31, align 8, !dbg !2060
  %662 = load i64, i64* %37, align 8, !dbg !2061
  %663 = add i64 %661, %662, !dbg !2062
  store i64 %663, i64* %43, align 8, !dbg !2059
  br label %664, !dbg !2063

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2064
  %666 = trunc i8 %665 to i1, !dbg !2064
  br i1 %666, label %667, label %772, !dbg !2069

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2070
  %669 = trunc i8 %668 to i1, !dbg !2070
  br i1 %669, label %772, label %670, !dbg !2071

670:                                              ; preds = %667
  br label %671, !dbg !2072

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2074
  %673 = trunc i8 %672 to i1, !dbg !2074
  br i1 %673, label %674, label %675, !dbg !2077

674:                                              ; preds = %671
  br label %1078, !dbg !2074

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2077
  %676 = load i32, i32* %15, align 4, !dbg !2078
  %677 = icmp eq i32 %676, 2, !dbg !2078
  br i1 %677, label %678, label %718, !dbg !2078

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2078
  %680 = trunc i8 %679 to i1, !dbg !2078
  br i1 %680, label %718, label %681, !dbg !2077

681:                                              ; preds = %678
  br label %682, !dbg !2080

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2082
  %684 = load i64, i64* %12, align 8, !dbg !2082
  %685 = icmp ult i64 %683, %684, !dbg !2082
  br i1 %685, label %686, label %690, !dbg !2085

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2082
  %688 = load i64, i64* %21, align 8, !dbg !2082
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2082
  store i8 39, i8* %689, align 1, !dbg !2082
  br label %690, !dbg !2082

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2085
  %692 = add i64 %691, 1, !dbg !2085
  store i64 %692, i64* %21, align 8, !dbg !2085
  br label %693, !dbg !2085

693:                                              ; preds = %690
  br label %694, !dbg !2080

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2086
  %696 = load i64, i64* %12, align 8, !dbg !2086
  %697 = icmp ult i64 %695, %696, !dbg !2086
  br i1 %697, label %698, label %702, !dbg !2089

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2086
  %700 = load i64, i64* %21, align 8, !dbg !2086
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2086
  store i8 36, i8* %701, align 1, !dbg !2086
  br label %702, !dbg !2086

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2089
  %704 = add i64 %703, 1, !dbg !2089
  store i64 %704, i64* %21, align 8, !dbg !2089
  br label %705, !dbg !2089

705:                                              ; preds = %702
  br label %706, !dbg !2080

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2090
  %708 = load i64, i64* %12, align 8, !dbg !2090
  %709 = icmp ult i64 %707, %708, !dbg !2090
  br i1 %709, label %710, label %714, !dbg !2093

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2090
  %712 = load i64, i64* %21, align 8, !dbg !2090
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2090
  store i8 39, i8* %713, align 1, !dbg !2090
  br label %714, !dbg !2090

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2093
  %716 = add i64 %715, 1, !dbg !2093
  store i64 %716, i64* %21, align 8, !dbg !2093
  br label %717, !dbg !2093

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2080
  br label %718, !dbg !2080

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2077

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2094
  %721 = load i64, i64* %12, align 8, !dbg !2094
  %722 = icmp ult i64 %720, %721, !dbg !2094
  br i1 %722, label %723, label %727, !dbg !2097

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2094
  %725 = load i64, i64* %21, align 8, !dbg !2094
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2094
  store i8 92, i8* %726, align 1, !dbg !2094
  br label %727, !dbg !2094

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2097
  %729 = add i64 %728, 1, !dbg !2097
  store i64 %729, i64* %21, align 8, !dbg !2097
  br label %730, !dbg !2097

730:                                              ; preds = %727
  br label %731, !dbg !2077

731:                                              ; preds = %730
  br label %732, !dbg !2098

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2099
  %734 = load i64, i64* %12, align 8, !dbg !2099
  %735 = icmp ult i64 %733, %734, !dbg !2099
  br i1 %735, label %736, label %745, !dbg !2102

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2099
  %738 = zext i8 %737 to i32, !dbg !2099
  %739 = ashr i32 %738, 6, !dbg !2099
  %740 = add nsw i32 48, %739, !dbg !2099
  %741 = trunc i32 %740 to i8, !dbg !2099
  %742 = load i8*, i8** %11, align 8, !dbg !2099
  %743 = load i64, i64* %21, align 8, !dbg !2099
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2099
  store i8 %741, i8* %744, align 1, !dbg !2099
  br label %745, !dbg !2099

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2102
  %747 = add i64 %746, 1, !dbg !2102
  store i64 %747, i64* %21, align 8, !dbg !2102
  br label %748, !dbg !2102

748:                                              ; preds = %745
  br label %749, !dbg !2103

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2104
  %751 = load i64, i64* %12, align 8, !dbg !2104
  %752 = icmp ult i64 %750, %751, !dbg !2104
  br i1 %752, label %753, label %763, !dbg !2107

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2104
  %755 = zext i8 %754 to i32, !dbg !2104
  %756 = ashr i32 %755, 3, !dbg !2104
  %757 = and i32 %756, 7, !dbg !2104
  %758 = add nsw i32 48, %757, !dbg !2104
  %759 = trunc i32 %758 to i8, !dbg !2104
  %760 = load i8*, i8** %11, align 8, !dbg !2104
  %761 = load i64, i64* %21, align 8, !dbg !2104
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2104
  store i8 %759, i8* %762, align 1, !dbg !2104
  br label %763, !dbg !2104

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2107
  %765 = add i64 %764, 1, !dbg !2107
  store i64 %765, i64* %21, align 8, !dbg !2107
  br label %766, !dbg !2107

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2108
  %768 = zext i8 %767 to i32, !dbg !2108
  %769 = and i32 %768, 7, !dbg !2109
  %770 = add nsw i32 48, %769, !dbg !2110
  %771 = trunc i32 %770 to i8, !dbg !2111
  store i8 %771, i8* %35, align 1, !dbg !2112
  br label %789, !dbg !2113

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2114
  %774 = trunc i8 %773 to i1, !dbg !2114
  br i1 %774, label %775, label %788, !dbg !2116

775:                                              ; preds = %772
  br label %776, !dbg !2117

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2119
  %778 = load i64, i64* %12, align 8, !dbg !2119
  %779 = icmp ult i64 %777, %778, !dbg !2119
  br i1 %779, label %780, label %784, !dbg !2122

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2119
  %782 = load i64, i64* %21, align 8, !dbg !2119
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2119
  store i8 92, i8* %783, align 1, !dbg !2119
  br label %784, !dbg !2119

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2122
  %786 = add i64 %785, 1, !dbg !2122
  store i64 %786, i64* %21, align 8, !dbg !2122
  br label %787, !dbg !2122

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2123
  br label %788, !dbg !2124

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2125
  %791 = load i64, i64* %31, align 8, !dbg !2127
  %792 = add i64 %791, 1, !dbg !2128
  %793 = icmp ule i64 %790, %792, !dbg !2129
  br i1 %793, label %794, label %795, !dbg !2130

794:                                              ; preds = %789
  br label %847, !dbg !2131

795:                                              ; preds = %789
  br label %796, !dbg !2132

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2133
  %798 = trunc i8 %797 to i1, !dbg !2133
  br i1 %798, label %799, label %827, !dbg !2133

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2133
  %801 = trunc i8 %800 to i1, !dbg !2133
  br i1 %801, label %827, label %802, !dbg !2136

802:                                              ; preds = %799
  br label %803, !dbg !2137

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2139
  %805 = load i64, i64* %12, align 8, !dbg !2139
  %806 = icmp ult i64 %804, %805, !dbg !2139
  br i1 %806, label %807, label %811, !dbg !2142

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2139
  %809 = load i64, i64* %21, align 8, !dbg !2139
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2139
  store i8 39, i8* %810, align 1, !dbg !2139
  br label %811, !dbg !2139

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2142
  %813 = add i64 %812, 1, !dbg !2142
  store i64 %813, i64* %21, align 8, !dbg !2142
  br label %814, !dbg !2142

814:                                              ; preds = %811
  br label %815, !dbg !2137

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2143
  %817 = load i64, i64* %12, align 8, !dbg !2143
  %818 = icmp ult i64 %816, %817, !dbg !2143
  br i1 %818, label %819, label %823, !dbg !2146

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2143
  %821 = load i64, i64* %21, align 8, !dbg !2143
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2143
  store i8 39, i8* %822, align 1, !dbg !2143
  br label %823, !dbg !2143

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2146
  %825 = add i64 %824, 1, !dbg !2146
  store i64 %825, i64* %21, align 8, !dbg !2146
  br label %826, !dbg !2146

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2137
  br label %827, !dbg !2137

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2136

828:                                              ; preds = %827
  br label %829, !dbg !2147

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2148
  %831 = load i64, i64* %12, align 8, !dbg !2148
  %832 = icmp ult i64 %830, %831, !dbg !2148
  br i1 %832, label %833, label %838, !dbg !2151

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2148
  %835 = load i8*, i8** %11, align 8, !dbg !2148
  %836 = load i64, i64* %21, align 8, !dbg !2148
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2148
  store i8 %834, i8* %837, align 1, !dbg !2148
  br label %838, !dbg !2148

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2151
  %840 = add i64 %839, 1, !dbg !2151
  store i64 %840, i64* %21, align 8, !dbg !2151
  br label %841, !dbg !2151

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2152
  %843 = load i64, i64* %31, align 8, !dbg !2153
  %844 = add i64 %843, 1, !dbg !2153
  store i64 %844, i64* %31, align 8, !dbg !2153
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2152
  %846 = load i8, i8* %845, align 1, !dbg !2152
  store i8 %846, i8* %35, align 1, !dbg !2154
  br label %664, !dbg !2155, !llvm.loop !2156

847:                                              ; preds = %794
  br label %942, !dbg !2159

848:                                              ; preds = %657, %654
  br label %849, !dbg !2160

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2161
  %851 = trunc i8 %850 to i1, !dbg !2161
  br i1 %851, label %852, label %855, !dbg !2163

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2164
  %854 = icmp ne i32 %853, 2, !dbg !2165
  br i1 %854, label %858, label %855, !dbg !2166

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2167
  %857 = trunc i8 %856 to i1, !dbg !2167
  br i1 %857, label %858, label %875, !dbg !2168

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2169
  %860 = icmp ne i32* %859, null, !dbg !2169
  br i1 %860, label %861, label %875, !dbg !2170

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2171
  %863 = load i8, i8* %35, align 1, !dbg !2172
  %864 = zext i8 %863 to i64, !dbg !2172
  %865 = udiv i64 %864, 32, !dbg !2173
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2171
  %867 = load i32, i32* %866, align 4, !dbg !2171
  %868 = load i8, i8* %35, align 1, !dbg !2174
  %869 = zext i8 %868 to i64, !dbg !2174
  %870 = urem i64 %869, 32, !dbg !2175
  %871 = trunc i64 %870 to i32, !dbg !2176
  %872 = lshr i32 %867, %871, !dbg !2176
  %873 = and i32 %872, 1, !dbg !2177
  %874 = icmp ne i32 %873, 0, !dbg !2177
  br i1 %874, label %879, label %875, !dbg !2178

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2179
  %877 = trunc i8 %876 to i1, !dbg !2179
  br i1 %877, label %879, label %878, !dbg !2180

878:                                              ; preds = %875
  br label %942, !dbg !2181

879:                                              ; preds = %875, %861
  br label %880, !dbg !2179

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2182), !dbg !2183
  br label %881, !dbg !2184

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2185
  %883 = trunc i8 %882 to i1, !dbg !2185
  br i1 %883, label %884, label %885, !dbg !2188

884:                                              ; preds = %881
  br label %1078, !dbg !2185

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2188
  %886 = load i32, i32* %15, align 4, !dbg !2189
  %887 = icmp eq i32 %886, 2, !dbg !2189
  br i1 %887, label %888, label %928, !dbg !2189

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2189
  %890 = trunc i8 %889 to i1, !dbg !2189
  br i1 %890, label %928, label %891, !dbg !2188

891:                                              ; preds = %888
  br label %892, !dbg !2191

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2193
  %894 = load i64, i64* %12, align 8, !dbg !2193
  %895 = icmp ult i64 %893, %894, !dbg !2193
  br i1 %895, label %896, label %900, !dbg !2196

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2193
  %898 = load i64, i64* %21, align 8, !dbg !2193
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2193
  store i8 39, i8* %899, align 1, !dbg !2193
  br label %900, !dbg !2193

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2196
  %902 = add i64 %901, 1, !dbg !2196
  store i64 %902, i64* %21, align 8, !dbg !2196
  br label %903, !dbg !2196

903:                                              ; preds = %900
  br label %904, !dbg !2191

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2197
  %906 = load i64, i64* %12, align 8, !dbg !2197
  %907 = icmp ult i64 %905, %906, !dbg !2197
  br i1 %907, label %908, label %912, !dbg !2200

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2197
  %910 = load i64, i64* %21, align 8, !dbg !2197
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2197
  store i8 36, i8* %911, align 1, !dbg !2197
  br label %912, !dbg !2197

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2200
  %914 = add i64 %913, 1, !dbg !2200
  store i64 %914, i64* %21, align 8, !dbg !2200
  br label %915, !dbg !2200

915:                                              ; preds = %912
  br label %916, !dbg !2191

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2201
  %918 = load i64, i64* %12, align 8, !dbg !2201
  %919 = icmp ult i64 %917, %918, !dbg !2201
  br i1 %919, label %920, label %924, !dbg !2204

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2201
  %922 = load i64, i64* %21, align 8, !dbg !2201
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2201
  store i8 39, i8* %923, align 1, !dbg !2201
  br label %924, !dbg !2201

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2204
  %926 = add i64 %925, 1, !dbg !2204
  store i64 %926, i64* %21, align 8, !dbg !2204
  br label %927, !dbg !2204

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2191
  br label %928, !dbg !2191

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2188

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2205
  %931 = load i64, i64* %12, align 8, !dbg !2205
  %932 = icmp ult i64 %930, %931, !dbg !2205
  br i1 %932, label %933, label %937, !dbg !2208

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2205
  %935 = load i64, i64* %21, align 8, !dbg !2205
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2205
  store i8 92, i8* %936, align 1, !dbg !2205
  br label %937, !dbg !2205

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2208
  %939 = add i64 %938, 1, !dbg !2208
  store i64 %939, i64* %21, align 8, !dbg !2208
  br label %940, !dbg !2208

940:                                              ; preds = %937
  br label %941, !dbg !2188

941:                                              ; preds = %940
  br label %942, !dbg !2188

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2209), !dbg !2210
  br label %943, !dbg !2211

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2212
  %945 = trunc i8 %944 to i1, !dbg !2212
  br i1 %945, label %946, label %974, !dbg !2212

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2212
  %948 = trunc i8 %947 to i1, !dbg !2212
  br i1 %948, label %974, label %949, !dbg !2215

949:                                              ; preds = %946
  br label %950, !dbg !2216

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2218
  %952 = load i64, i64* %12, align 8, !dbg !2218
  %953 = icmp ult i64 %951, %952, !dbg !2218
  br i1 %953, label %954, label %958, !dbg !2221

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2218
  %956 = load i64, i64* %21, align 8, !dbg !2218
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2218
  store i8 39, i8* %957, align 1, !dbg !2218
  br label %958, !dbg !2218

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2221
  %960 = add i64 %959, 1, !dbg !2221
  store i64 %960, i64* %21, align 8, !dbg !2221
  br label %961, !dbg !2221

961:                                              ; preds = %958
  br label %962, !dbg !2216

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2222
  %964 = load i64, i64* %12, align 8, !dbg !2222
  %965 = icmp ult i64 %963, %964, !dbg !2222
  br i1 %965, label %966, label %970, !dbg !2225

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2222
  %968 = load i64, i64* %21, align 8, !dbg !2222
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2222
  store i8 39, i8* %969, align 1, !dbg !2222
  br label %970, !dbg !2222

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2225
  %972 = add i64 %971, 1, !dbg !2225
  store i64 %972, i64* %21, align 8, !dbg !2225
  br label %973, !dbg !2225

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2216
  br label %974, !dbg !2216

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2215

975:                                              ; preds = %974
  br label %976, !dbg !2226

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2227
  %978 = load i64, i64* %12, align 8, !dbg !2227
  %979 = icmp ult i64 %977, %978, !dbg !2227
  br i1 %979, label %980, label %985, !dbg !2230

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2227
  %982 = load i8*, i8** %11, align 8, !dbg !2227
  %983 = load i64, i64* %21, align 8, !dbg !2227
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2227
  store i8 %981, i8* %984, align 1, !dbg !2227
  br label %985, !dbg !2227

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2230
  %987 = add i64 %986, 1, !dbg !2230
  store i64 %987, i64* %21, align 8, !dbg !2230
  br label %988, !dbg !2230

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2231
  %990 = trunc i8 %989 to i1, !dbg !2231
  br i1 %990, label %992, label %991, !dbg !2233

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2234
  br label %992, !dbg !2235

992:                                              ; preds = %991, %988
  br label %993, !dbg !2236

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2237
  %995 = add i64 %994, 1, !dbg !2237
  store i64 %995, i64* %31, align 8, !dbg !2237
  br label %139, !dbg !2238, !llvm.loop !2239

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2241
  %998 = icmp eq i64 %997, 0, !dbg !2243
  br i1 %998, label %999, label %1006, !dbg !2244

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2245
  %1001 = icmp eq i32 %1000, 2, !dbg !2246
  br i1 %1001, label %1002, label %1006, !dbg !2247

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2248
  %1004 = trunc i8 %1003 to i1, !dbg !2248
  br i1 %1004, label %1005, label %1006, !dbg !2249

1005:                                             ; preds = %1002
  br label %1078, !dbg !2250

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2251
  %1008 = icmp eq i32 %1007, 2, !dbg !2253
  br i1 %1008, label %1009, label %1038, !dbg !2254

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2255
  %1011 = trunc i8 %1010 to i1, !dbg !2255
  br i1 %1011, label %1038, label %1012, !dbg !2256

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2257
  %1014 = trunc i8 %1013 to i1, !dbg !2257
  br i1 %1014, label %1015, label %1038, !dbg !2258

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2259
  %1017 = trunc i8 %1016 to i1, !dbg !2259
  br i1 %1017, label %1018, label %1028, !dbg !2262

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2263
  %1020 = load i64, i64* %22, align 8, !dbg !2264
  %1021 = load i8*, i8** %13, align 8, !dbg !2265
  %1022 = load i64, i64* %14, align 8, !dbg !2266
  %1023 = load i32, i32* %16, align 4, !dbg !2267
  %1024 = load i32*, i32** %17, align 8, !dbg !2268
  %1025 = load i8*, i8** %18, align 8, !dbg !2269
  %1026 = load i8*, i8** %19, align 8, !dbg !2270
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2271
  store i64 %1027, i64* %10, align 8, !dbg !2272
  br label %1096, !dbg !2272

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2273
  %1030 = icmp ne i64 %1029, 0, !dbg !2273
  br i1 %1030, label %1036, label %1031, !dbg !2275

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2276
  %1033 = icmp ne i64 %1032, 0, !dbg !2276
  br i1 %1033, label %1034, label %1036, !dbg !2277

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2278
  store i64 %1035, i64* %12, align 8, !dbg !2280
  store i64 0, i64* %21, align 8, !dbg !2281
  br label %51, !dbg !2282

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2283

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2284
  %1040 = icmp ne i8* %1039, null, !dbg !2284
  br i1 %1040, label %1041, label %1068, !dbg !2286

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2287
  %1043 = trunc i8 %1042 to i1, !dbg !2287
  br i1 %1043, label %1068, label %1044, !dbg !2288

1044:                                             ; preds = %1041
  br label %1045, !dbg !2289

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2290
  %1047 = load i8, i8* %1046, align 1, !dbg !2293
  %1048 = icmp ne i8 %1047, 0, !dbg !2294
  br i1 %1048, label %1049, label %1067, !dbg !2294

1049:                                             ; preds = %1045
  br label %1050, !dbg !2295

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2296
  %1052 = load i64, i64* %12, align 8, !dbg !2296
  %1053 = icmp ult i64 %1051, %1052, !dbg !2296
  br i1 %1053, label %1054, label %1060, !dbg !2299

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2296
  %1056 = load i8, i8* %1055, align 1, !dbg !2296
  %1057 = load i8*, i8** %11, align 8, !dbg !2296
  %1058 = load i64, i64* %21, align 8, !dbg !2296
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2296
  store i8 %1056, i8* %1059, align 1, !dbg !2296
  br label %1060, !dbg !2296

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2299
  %1062 = add i64 %1061, 1, !dbg !2299
  store i64 %1062, i64* %21, align 8, !dbg !2299
  br label %1063, !dbg !2299

1063:                                             ; preds = %1060
  br label %1064, !dbg !2299

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2300
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2300
  store i8* %1066, i8** %23, align 8, !dbg !2300
  br label %1045, !dbg !2301, !llvm.loop !2302

1067:                                             ; preds = %1045
  br label %1068, !dbg !2303

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2304
  %1070 = load i64, i64* %12, align 8, !dbg !2306
  %1071 = icmp ult i64 %1069, %1070, !dbg !2307
  br i1 %1071, label %1072, label %1076, !dbg !2308

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2309
  %1074 = load i64, i64* %21, align 8, !dbg !2310
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2309
  store i8 0, i8* %1075, align 1, !dbg !2311
  br label %1076, !dbg !2309

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2312
  store i64 %1077, i64* %10, align 8, !dbg !2313
  br label %1096, !dbg !2313

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2314), !dbg !2315
  %1079 = load i32, i32* %15, align 4, !dbg !2316
  %1080 = icmp eq i32 %1079, 2, !dbg !2318
  br i1 %1080, label %1081, label %1085, !dbg !2319

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2320
  %1083 = trunc i8 %1082 to i1, !dbg !2320
  br i1 %1083, label %1084, label %1085, !dbg !2321

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2322
  br label %1085, !dbg !2323

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2324
  %1087 = load i64, i64* %12, align 8, !dbg !2325
  %1088 = load i8*, i8** %13, align 8, !dbg !2326
  %1089 = load i64, i64* %14, align 8, !dbg !2327
  %1090 = load i32, i32* %15, align 4, !dbg !2328
  %1091 = load i32, i32* %16, align 4, !dbg !2329
  %1092 = and i32 %1091, -3, !dbg !2330
  %1093 = load i8*, i8** %18, align 8, !dbg !2331
  %1094 = load i8*, i8** %19, align 8, !dbg !2332
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2333
  store i64 %1095, i64* %10, align 8, !dbg !2334
  br label %1096, !dbg !2334

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2335
  ret i64 %1097, !dbg !2335
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !172 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2336, metadata !DIExpression()), !dbg !2337
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2338, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2340, metadata !DIExpression()), !dbg !2341
  %9 = load i8*, i8** %4, align 8, !dbg !2342
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.100, i64 0, i64 0), i8* noundef %9) #19, !dbg !2342
  store i8* %10, i8** %6, align 8, !dbg !2341
  %11 = load i8*, i8** %6, align 8, !dbg !2343
  %12 = load i8*, i8** %4, align 8, !dbg !2345
  %13 = icmp ne i8* %11, %12, !dbg !2346
  br i1 %13, label %14, label %16, !dbg !2347

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2348
  store i8* %15, i8** %3, align 8, !dbg !2349
  br label %37, !dbg !2349

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2350, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2352, metadata !DIExpression()), !dbg !2353
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2354
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2355
  %18 = icmp eq i64 %17, 3, !dbg !2357
  br i1 %18, label %19, label %32, !dbg !2358

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2359
  %21 = icmp eq i32 %20, 8216, !dbg !2360
  br i1 %21, label %22, label %32, !dbg !2361

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2362
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2362
  %25 = load i8, i8* %24, align 1, !dbg !2362
  %26 = zext i8 %25 to i32, !dbg !2362
  %27 = icmp eq i32 %26, 39, !dbg !2363
  %28 = zext i1 %27 to i32, !dbg !2363
  %29 = sext i32 %28 to i64, !dbg !2364
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2364
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2364
  store i8* %31, i8** %3, align 8, !dbg !2365
  br label %37, !dbg !2365

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2366
  %34 = icmp eq i32 %33, 9, !dbg !2367
  %35 = zext i1 %34 to i64, !dbg !2366
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.99, i64 0, i64 0), !dbg !2366
  store i8* %36, i8** %3, align 8, !dbg !2368
  br label %37, !dbg !2368

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2369
  ret i8* %38, !dbg !2369
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2370 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2373, metadata !DIExpression()), !dbg !2374
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2375, metadata !DIExpression()), !dbg !2376
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2377, metadata !DIExpression()), !dbg !2378
  %7 = load i8*, i8** %4, align 8, !dbg !2379
  %8 = load i64, i64* %5, align 8, !dbg !2380
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2381
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2382
  ret i8* %10, !dbg !2383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2384 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2387, metadata !DIExpression()), !dbg !2388
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2389, metadata !DIExpression()), !dbg !2390
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2391, metadata !DIExpression()), !dbg !2392
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2393, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2395, metadata !DIExpression()), !dbg !2396
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2397
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2397
  br i1 %15, label %16, label %18, !dbg !2397

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2398
  br label %19, !dbg !2397

18:                                               ; preds = %4
  br label %19, !dbg !2397

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2397
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2396
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2399, metadata !DIExpression()), !dbg !2400
  %21 = call i32* @__errno_location() #22, !dbg !2401
  %22 = load i32, i32* %21, align 4, !dbg !2401
  store i32 %22, i32* %10, align 4, !dbg !2400
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2402, metadata !DIExpression()), !dbg !2403
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2404
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2405
  %25 = load i32, i32* %24, align 4, !dbg !2405
  %26 = load i64*, i64** %7, align 8, !dbg !2406
  %27 = icmp ne i64* %26, null, !dbg !2406
  %28 = zext i1 %27 to i64, !dbg !2406
  %29 = select i1 %27, i32 0, i32 1, !dbg !2406
  %30 = or i32 %25, %29, !dbg !2407
  store i32 %30, i32* %11, align 4, !dbg !2403
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2408, metadata !DIExpression()), !dbg !2409
  %31 = load i8*, i8** %5, align 8, !dbg !2410
  %32 = load i64, i64* %6, align 8, !dbg !2411
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2412
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2413
  %35 = load i32, i32* %34, align 8, !dbg !2413
  %36 = load i32, i32* %11, align 4, !dbg !2414
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2415
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2416
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2415
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2417
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2418
  %42 = load i8*, i8** %41, align 8, !dbg !2418
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2419
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2420
  %45 = load i8*, i8** %44, align 8, !dbg !2420
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2421
  %47 = add i64 %46, 1, !dbg !2422
  store i64 %47, i64* %12, align 8, !dbg !2409
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2423, metadata !DIExpression()), !dbg !2424
  %48 = load i64, i64* %12, align 8, !dbg !2425
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #26, !dbg !2426
  store i8* %49, i8** %13, align 8, !dbg !2424
  %50 = load i8*, i8** %13, align 8, !dbg !2427
  %51 = load i64, i64* %12, align 8, !dbg !2428
  %52 = load i8*, i8** %5, align 8, !dbg !2429
  %53 = load i64, i64* %6, align 8, !dbg !2430
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2431
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2432
  %56 = load i32, i32* %55, align 8, !dbg !2432
  %57 = load i32, i32* %11, align 4, !dbg !2433
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2434
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2435
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2434
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2436
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2437
  %63 = load i8*, i8** %62, align 8, !dbg !2437
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2438
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2439
  %66 = load i8*, i8** %65, align 8, !dbg !2439
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2440
  %68 = load i32, i32* %10, align 4, !dbg !2441
  %69 = call i32* @__errno_location() #22, !dbg !2442
  store i32 %68, i32* %69, align 4, !dbg !2443
  %70 = load i64*, i64** %7, align 8, !dbg !2444
  %71 = icmp ne i64* %70, null, !dbg !2444
  br i1 %71, label %72, label %76, !dbg !2446

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2447
  %74 = sub i64 %73, 1, !dbg !2448
  %75 = load i64*, i64** %7, align 8, !dbg !2449
  store i64 %74, i64* %75, align 8, !dbg !2450
  br label %76, !dbg !2451

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2452
  ret i8* %77, !dbg !2453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2454 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2455, metadata !DIExpression()), !dbg !2456
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2457
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2456
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2458, metadata !DIExpression()), !dbg !2460
  store i32 1, i32* %2, align 4, !dbg !2460
  br label %4, !dbg !2461

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2462
  %6 = load i32, i32* @nslots, align 4, !dbg !2464
  %7 = icmp slt i32 %5, %6, !dbg !2465
  br i1 %7, label %8, label %18, !dbg !2466

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2467
  %10 = load i32, i32* %2, align 4, !dbg !2468
  %11 = sext i32 %10 to i64, !dbg !2467
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2467
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2469
  %14 = load i8*, i8** %13, align 8, !dbg !2469
  call void @free(i8* noundef %14) #19, !dbg !2470
  br label %15, !dbg !2470

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2471
  %17 = add nsw i32 %16, 1, !dbg !2471
  store i32 %17, i32* %2, align 4, !dbg !2471
  br label %4, !dbg !2472, !llvm.loop !2473

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2475
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2475
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2477
  %22 = load i8*, i8** %21, align 8, !dbg !2477
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2478
  br i1 %23, label %24, label %29, !dbg !2479

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2480
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2480
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2482
  %28 = load i8*, i8** %27, align 8, !dbg !2482
  call void @free(i8* noundef %28) #19, !dbg !2483
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2484
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2485
  br label %29, !dbg !2486

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2487
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2489
  br i1 %31, label %32, label %35, !dbg !2490

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2491
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2491
  call void @free(i8* noundef %34) #19, !dbg !2493
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2494
  br label %35, !dbg !2495

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2496
  ret void, !dbg !2497
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2498 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2501, metadata !DIExpression()), !dbg !2502
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2503, metadata !DIExpression()), !dbg !2504
  %5 = load i32, i32* %3, align 4, !dbg !2505
  %6 = load i8*, i8** %4, align 8, !dbg !2506
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2507
  ret i8* %7, !dbg !2508
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2509 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2512, metadata !DIExpression()), !dbg !2513
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2514, metadata !DIExpression()), !dbg !2515
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2516, metadata !DIExpression()), !dbg !2517
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2518, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2520, metadata !DIExpression()), !dbg !2521
  %18 = call i32* @__errno_location() #22, !dbg !2522
  %19 = load i32, i32* %18, align 4, !dbg !2522
  store i32 %19, i32* %9, align 4, !dbg !2521
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2523, metadata !DIExpression()), !dbg !2524
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2525
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2524
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2526, metadata !DIExpression()), !dbg !2527
  store i32 2147483647, i32* %11, align 4, !dbg !2527
  %21 = load i32, i32* %5, align 4, !dbg !2528
  %22 = icmp sle i32 0, %21, !dbg !2530
  br i1 %22, label %23, label %27, !dbg !2531

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2532
  %25 = load i32, i32* %11, align 4, !dbg !2533
  %26 = icmp slt i32 %24, %25, !dbg !2534
  br i1 %26, label %28, label %27, !dbg !2535

27:                                               ; preds = %23, %4
  call void @abort() #20, !dbg !2536
  unreachable, !dbg !2536

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2537
  %30 = load i32, i32* %5, align 4, !dbg !2539
  %31 = icmp sle i32 %29, %30, !dbg !2540
  br i1 %31, label %32, label %73, !dbg !2541

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2542, metadata !DIExpression()), !dbg !2544
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2545
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2546
  %35 = zext i1 %34 to i8, !dbg !2544
  store i8 %35, i8* %12, align 1, !dbg !2544
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2547, metadata !DIExpression()), !dbg !2548
  %36 = load i32, i32* @nslots, align 4, !dbg !2549
  %37 = sext i32 %36 to i64, !dbg !2549
  store i64 %37, i64* %13, align 8, !dbg !2548
  %38 = load i8, i8* %12, align 1, !dbg !2550
  %39 = trunc i8 %38 to i1, !dbg !2550
  br i1 %39, label %40, label %41, !dbg !2550

40:                                               ; preds = %32
  br label %43, !dbg !2550

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2551
  br label %43, !dbg !2550

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2550
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2550
  %46 = load i32, i32* %5, align 4, !dbg !2552
  %47 = load i32, i32* @nslots, align 4, !dbg !2553
  %48 = sub nsw i32 %46, %47, !dbg !2554
  %49 = add nsw i32 %48, 1, !dbg !2555
  %50 = sext i32 %49 to i64, !dbg !2552
  %51 = load i32, i32* %11, align 4, !dbg !2556
  %52 = sext i32 %51 to i64, !dbg !2556
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2557
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2557
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2558
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2559
  %55 = load i8, i8* %12, align 1, !dbg !2560
  %56 = trunc i8 %55 to i1, !dbg !2560
  br i1 %56, label %57, label %60, !dbg !2562

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2563
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2564
  br label %60, !dbg !2565

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2566
  %62 = load i32, i32* @nslots, align 4, !dbg !2567
  %63 = sext i32 %62 to i64, !dbg !2568
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2568
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2569
  %66 = load i64, i64* %13, align 8, !dbg !2570
  %67 = load i32, i32* @nslots, align 4, !dbg !2571
  %68 = sext i32 %67 to i64, !dbg !2571
  %69 = sub nsw i64 %66, %68, !dbg !2572
  %70 = mul i64 %69, 16, !dbg !2573
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2569
  %71 = load i64, i64* %13, align 8, !dbg !2574
  %72 = trunc i64 %71 to i32, !dbg !2574
  store i32 %72, i32* @nslots, align 4, !dbg !2575
  br label %73, !dbg !2576

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2577, metadata !DIExpression()), !dbg !2579
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2580
  %75 = load i32, i32* %5, align 4, !dbg !2581
  %76 = sext i32 %75 to i64, !dbg !2580
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2580
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2582
  %79 = load i64, i64* %78, align 8, !dbg !2582
  store i64 %79, i64* %14, align 8, !dbg !2579
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2583, metadata !DIExpression()), !dbg !2584
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2585
  %81 = load i32, i32* %5, align 4, !dbg !2586
  %82 = sext i32 %81 to i64, !dbg !2585
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2585
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2587
  %85 = load i8*, i8** %84, align 8, !dbg !2587
  store i8* %85, i8** %15, align 8, !dbg !2584
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2588, metadata !DIExpression()), !dbg !2589
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2590
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2591
  %88 = load i32, i32* %87, align 4, !dbg !2591
  %89 = or i32 %88, 1, !dbg !2592
  store i32 %89, i32* %16, align 4, !dbg !2589
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2593, metadata !DIExpression()), !dbg !2594
  %90 = load i8*, i8** %15, align 8, !dbg !2595
  %91 = load i64, i64* %14, align 8, !dbg !2596
  %92 = load i8*, i8** %6, align 8, !dbg !2597
  %93 = load i64, i64* %7, align 8, !dbg !2598
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2599
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2600
  %96 = load i32, i32* %95, align 8, !dbg !2600
  %97 = load i32, i32* %16, align 4, !dbg !2601
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2602
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2603
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2602
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2604
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2605
  %103 = load i8*, i8** %102, align 8, !dbg !2605
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2606
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2607
  %106 = load i8*, i8** %105, align 8, !dbg !2607
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2608
  store i64 %107, i64* %17, align 8, !dbg !2594
  %108 = load i64, i64* %14, align 8, !dbg !2609
  %109 = load i64, i64* %17, align 8, !dbg !2611
  %110 = icmp ule i64 %108, %109, !dbg !2612
  br i1 %110, label %111, label %149, !dbg !2613

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2614
  %113 = add i64 %112, 1, !dbg !2616
  store i64 %113, i64* %14, align 8, !dbg !2617
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2618
  %115 = load i32, i32* %5, align 4, !dbg !2619
  %116 = sext i32 %115 to i64, !dbg !2618
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2618
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2620
  store i64 %113, i64* %118, align 8, !dbg !2621
  %119 = load i8*, i8** %15, align 8, !dbg !2622
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2624
  br i1 %120, label %121, label %123, !dbg !2625

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2626
  call void @free(i8* noundef %122) #19, !dbg !2627
  br label %123, !dbg !2627

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2628
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #26, !dbg !2629
  store i8* %125, i8** %15, align 8, !dbg !2630
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2631
  %127 = load i32, i32* %5, align 4, !dbg !2632
  %128 = sext i32 %127 to i64, !dbg !2631
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2631
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2633
  store i8* %125, i8** %130, align 8, !dbg !2634
  %131 = load i8*, i8** %15, align 8, !dbg !2635
  %132 = load i64, i64* %14, align 8, !dbg !2636
  %133 = load i8*, i8** %6, align 8, !dbg !2637
  %134 = load i64, i64* %7, align 8, !dbg !2638
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2639
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2640
  %137 = load i32, i32* %136, align 8, !dbg !2640
  %138 = load i32, i32* %16, align 4, !dbg !2641
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2642
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2643
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2642
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2644
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2645
  %144 = load i8*, i8** %143, align 8, !dbg !2645
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2646
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2647
  %147 = load i8*, i8** %146, align 8, !dbg !2647
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2648
  br label %149, !dbg !2649

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2650
  %151 = call i32* @__errno_location() #22, !dbg !2651
  store i32 %150, i32* %151, align 4, !dbg !2652
  %152 = load i8*, i8** %15, align 8, !dbg !2653
  ret i8* %152, !dbg !2654
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2655 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2658, metadata !DIExpression()), !dbg !2659
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2660, metadata !DIExpression()), !dbg !2661
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2662, metadata !DIExpression()), !dbg !2663
  %7 = load i32, i32* %4, align 4, !dbg !2664
  %8 = load i8*, i8** %5, align 8, !dbg !2665
  %9 = load i64, i64* %6, align 8, !dbg !2666
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2667
  ret i8* %10, !dbg !2668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2669 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2672, metadata !DIExpression()), !dbg !2673
  %3 = load i8*, i8** %2, align 8, !dbg !2674
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2675
  ret i8* %4, !dbg !2676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2677 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2680, metadata !DIExpression()), !dbg !2681
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2682, metadata !DIExpression()), !dbg !2683
  %5 = load i8*, i8** %3, align 8, !dbg !2684
  %6 = load i64, i64* %4, align 8, !dbg !2685
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2686
  ret i8* %7, !dbg !2687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2688 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2691, metadata !DIExpression()), !dbg !2692
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2693, metadata !DIExpression()), !dbg !2694
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2695, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2697, metadata !DIExpression()), !dbg !2698
  %8 = load i32, i32* %5, align 4, !dbg !2699
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2700
  %9 = load i32, i32* %4, align 4, !dbg !2701
  %10 = load i8*, i8** %6, align 8, !dbg !2702
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2703
  ret i8* %11, !dbg !2704
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2705 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2708, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2710, metadata !DIExpression()), !dbg !2711
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2711
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2711
  %5 = load i32, i32* %3, align 4, !dbg !2712
  %6 = icmp eq i32 %5, 10, !dbg !2714
  br i1 %6, label %7, label %8, !dbg !2715

7:                                                ; preds = %2
  call void @abort() #20, !dbg !2716
  unreachable, !dbg !2716

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2717
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2718
  store i32 %9, i32* %10, align 8, !dbg !2719
  ret void, !dbg !2720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2721 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2724, metadata !DIExpression()), !dbg !2725
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2726, metadata !DIExpression()), !dbg !2727
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2728, metadata !DIExpression()), !dbg !2729
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2730, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2732, metadata !DIExpression()), !dbg !2733
  %10 = load i32, i32* %6, align 4, !dbg !2734
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2735
  %11 = load i32, i32* %5, align 4, !dbg !2736
  %12 = load i8*, i8** %7, align 8, !dbg !2737
  %13 = load i64, i64* %8, align 8, !dbg !2738
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2739
  ret i8* %14, !dbg !2740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2741 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2744, metadata !DIExpression()), !dbg !2745
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2746, metadata !DIExpression()), !dbg !2747
  %5 = load i32, i32* %3, align 4, !dbg !2748
  %6 = load i8*, i8** %4, align 8, !dbg !2749
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2750
  ret i8* %7, !dbg !2751
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2752 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2755, metadata !DIExpression()), !dbg !2756
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2757, metadata !DIExpression()), !dbg !2758
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2759, metadata !DIExpression()), !dbg !2760
  %7 = load i32, i32* %4, align 4, !dbg !2761
  %8 = load i8*, i8** %5, align 8, !dbg !2762
  %9 = load i64, i64* %6, align 8, !dbg !2763
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2764
  ret i8* %10, !dbg !2765
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2766 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2769, metadata !DIExpression()), !dbg !2770
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2771, metadata !DIExpression()), !dbg !2772
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2773, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2775, metadata !DIExpression()), !dbg !2776
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2777
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2777
  %9 = load i8, i8* %6, align 1, !dbg !2778
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2779
  %11 = load i8*, i8** %4, align 8, !dbg !2780
  %12 = load i64, i64* %5, align 8, !dbg !2781
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2782
  ret i8* %13, !dbg !2783
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2784 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2787, metadata !DIExpression()), !dbg !2788
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2789, metadata !DIExpression()), !dbg !2790
  %5 = load i8*, i8** %3, align 8, !dbg !2791
  %6 = load i8, i8* %4, align 1, !dbg !2792
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2793
  ret i8* %7, !dbg !2794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2795 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2796, metadata !DIExpression()), !dbg !2797
  %3 = load i8*, i8** %2, align 8, !dbg !2798
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2799
  ret i8* %4, !dbg !2800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2801 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2802, metadata !DIExpression()), !dbg !2803
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2804, metadata !DIExpression()), !dbg !2805
  %5 = load i8*, i8** %3, align 8, !dbg !2806
  %6 = load i64, i64* %4, align 8, !dbg !2807
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2808
  ret i8* %7, !dbg !2809
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2810 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2811, metadata !DIExpression()), !dbg !2812
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2813, metadata !DIExpression()), !dbg !2814
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2817, metadata !DIExpression()), !dbg !2818
  %9 = load i32, i32* %5, align 4, !dbg !2819
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2820
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2820
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2820
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2821
  %13 = load i32, i32* %4, align 4, !dbg !2822
  %14 = load i8*, i8** %6, align 8, !dbg !2823
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2824
  ret i8* %15, !dbg !2825
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2826 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2829, metadata !DIExpression()), !dbg !2830
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2831, metadata !DIExpression()), !dbg !2832
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2833, metadata !DIExpression()), !dbg !2834
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2835, metadata !DIExpression()), !dbg !2836
  %9 = load i32, i32* %5, align 4, !dbg !2837
  %10 = load i8*, i8** %6, align 8, !dbg !2838
  %11 = load i8*, i8** %7, align 8, !dbg !2839
  %12 = load i8*, i8** %8, align 8, !dbg !2840
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2841
  ret i8* %13, !dbg !2842
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2843 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2846, metadata !DIExpression()), !dbg !2847
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2848, metadata !DIExpression()), !dbg !2849
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2850, metadata !DIExpression()), !dbg !2851
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2852, metadata !DIExpression()), !dbg !2853
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2854, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2856, metadata !DIExpression()), !dbg !2857
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2858
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2858
  %13 = load i8*, i8** %7, align 8, !dbg !2859
  %14 = load i8*, i8** %8, align 8, !dbg !2860
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2861
  %15 = load i32, i32* %6, align 4, !dbg !2862
  %16 = load i8*, i8** %9, align 8, !dbg !2863
  %17 = load i64, i64* %10, align 8, !dbg !2864
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2865
  ret i8* %18, !dbg !2866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2867 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2870, metadata !DIExpression()), !dbg !2871
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2872, metadata !DIExpression()), !dbg !2873
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2874, metadata !DIExpression()), !dbg !2875
  %7 = load i8*, i8** %4, align 8, !dbg !2876
  %8 = load i8*, i8** %5, align 8, !dbg !2877
  %9 = load i8*, i8** %6, align 8, !dbg !2878
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2879
  ret i8* %10, !dbg !2880
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2881 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2884, metadata !DIExpression()), !dbg !2885
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2886, metadata !DIExpression()), !dbg !2887
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2888, metadata !DIExpression()), !dbg !2889
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2890, metadata !DIExpression()), !dbg !2891
  %9 = load i8*, i8** %5, align 8, !dbg !2892
  %10 = load i8*, i8** %6, align 8, !dbg !2893
  %11 = load i8*, i8** %7, align 8, !dbg !2894
  %12 = load i64, i64* %8, align 8, !dbg !2895
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2896
  ret i8* %13, !dbg !2897
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2898 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2901, metadata !DIExpression()), !dbg !2902
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2903, metadata !DIExpression()), !dbg !2904
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2905, metadata !DIExpression()), !dbg !2906
  %7 = load i32, i32* %4, align 4, !dbg !2907
  %8 = load i8*, i8** %5, align 8, !dbg !2908
  %9 = load i64, i64* %6, align 8, !dbg !2909
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2910
  ret i8* %10, !dbg !2911
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2912 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2915, metadata !DIExpression()), !dbg !2916
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2917, metadata !DIExpression()), !dbg !2918
  %5 = load i8*, i8** %3, align 8, !dbg !2919
  %6 = load i64, i64* %4, align 8, !dbg !2920
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2921
  ret i8* %7, !dbg !2922
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2923 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2926, metadata !DIExpression()), !dbg !2927
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2928, metadata !DIExpression()), !dbg !2929
  %5 = load i32, i32* %3, align 4, !dbg !2930
  %6 = load i8*, i8** %4, align 8, !dbg !2931
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2932
  ret i8* %7, !dbg !2933
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2934 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2937, metadata !DIExpression()), !dbg !2938
  %3 = load i8*, i8** %2, align 8, !dbg !2939
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2940
  ret i8* %4, !dbg !2941
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2942 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2946, metadata !DIExpression()), !dbg !2947
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2948, metadata !DIExpression()), !dbg !2949
  %5 = load i8*, i8** %3, align 8, !dbg !2950
  %6 = load i8*, i8** %4, align 8, !dbg !2951
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #21, !dbg !2952
  %8 = icmp ne i32 %7, 0, !dbg !2953
  %9 = xor i1 %8, true, !dbg !2953
  ret i1 %9, !dbg !2954
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2955 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3012, metadata !DIExpression()), !dbg !3013
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3014, metadata !DIExpression()), !dbg !3015
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3016, metadata !DIExpression()), !dbg !3017
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3018, metadata !DIExpression()), !dbg !3019
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3020, metadata !DIExpression()), !dbg !3021
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3022, metadata !DIExpression()), !dbg !3023
  %13 = load i8*, i8** %8, align 8, !dbg !3024
  %14 = icmp ne i8* %13, null, !dbg !3024
  br i1 %14, label %15, label %21, !dbg !3026

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3027
  %17 = load i8*, i8** %8, align 8, !dbg !3028
  %18 = load i8*, i8** %9, align 8, !dbg !3029
  %19 = load i8*, i8** %10, align 8, !dbg !3030
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3031
  br label %26, !dbg !3031

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3032
  %23 = load i8*, i8** %9, align 8, !dbg !3033
  %24 = load i8*, i8** %10, align 8, !dbg !3034
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.108, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3035
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3036
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.110, i64 0, i64 0)) #19, !dbg !3037
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3038
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3039
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.111, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3039
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3040
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.112, i64 0, i64 0)) #19, !dbg !3041
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.113, i64 0, i64 0)), !dbg !3042
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3043
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.111, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3043
  %37 = load i64, i64* %12, align 8, !dbg !3044
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
  ], !dbg !3045

38:                                               ; preds = %26
  br label %241, !dbg !3046

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3048
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.114, i64 0, i64 0)) #19, !dbg !3049
  %42 = load i8**, i8*** %11, align 8, !dbg !3050
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3050
  %44 = load i8*, i8** %43, align 8, !dbg !3050
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3051
  br label %241, !dbg !3052

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3053
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.115, i64 0, i64 0)) #19, !dbg !3054
  %49 = load i8**, i8*** %11, align 8, !dbg !3055
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3055
  %51 = load i8*, i8** %50, align 8, !dbg !3055
  %52 = load i8**, i8*** %11, align 8, !dbg !3056
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3056
  %54 = load i8*, i8** %53, align 8, !dbg !3056
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3057
  br label %241, !dbg !3058

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3059
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.116, i64 0, i64 0)) #19, !dbg !3060
  %59 = load i8**, i8*** %11, align 8, !dbg !3061
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3061
  %61 = load i8*, i8** %60, align 8, !dbg !3061
  %62 = load i8**, i8*** %11, align 8, !dbg !3062
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3062
  %64 = load i8*, i8** %63, align 8, !dbg !3062
  %65 = load i8**, i8*** %11, align 8, !dbg !3063
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3063
  %67 = load i8*, i8** %66, align 8, !dbg !3063
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3064
  br label %241, !dbg !3065

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3066
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.117, i64 0, i64 0)) #19, !dbg !3067
  %72 = load i8**, i8*** %11, align 8, !dbg !3068
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3068
  %74 = load i8*, i8** %73, align 8, !dbg !3068
  %75 = load i8**, i8*** %11, align 8, !dbg !3069
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3069
  %77 = load i8*, i8** %76, align 8, !dbg !3069
  %78 = load i8**, i8*** %11, align 8, !dbg !3070
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3070
  %80 = load i8*, i8** %79, align 8, !dbg !3070
  %81 = load i8**, i8*** %11, align 8, !dbg !3071
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3071
  %83 = load i8*, i8** %82, align 8, !dbg !3071
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3072
  br label %241, !dbg !3073

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3074
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.118, i64 0, i64 0)) #19, !dbg !3075
  %88 = load i8**, i8*** %11, align 8, !dbg !3076
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3076
  %90 = load i8*, i8** %89, align 8, !dbg !3076
  %91 = load i8**, i8*** %11, align 8, !dbg !3077
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3077
  %93 = load i8*, i8** %92, align 8, !dbg !3077
  %94 = load i8**, i8*** %11, align 8, !dbg !3078
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3078
  %96 = load i8*, i8** %95, align 8, !dbg !3078
  %97 = load i8**, i8*** %11, align 8, !dbg !3079
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3079
  %99 = load i8*, i8** %98, align 8, !dbg !3079
  %100 = load i8**, i8*** %11, align 8, !dbg !3080
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3080
  %102 = load i8*, i8** %101, align 8, !dbg !3080
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3081
  br label %241, !dbg !3082

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3083
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.119, i64 0, i64 0)) #19, !dbg !3084
  %107 = load i8**, i8*** %11, align 8, !dbg !3085
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3085
  %109 = load i8*, i8** %108, align 8, !dbg !3085
  %110 = load i8**, i8*** %11, align 8, !dbg !3086
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3086
  %112 = load i8*, i8** %111, align 8, !dbg !3086
  %113 = load i8**, i8*** %11, align 8, !dbg !3087
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3087
  %115 = load i8*, i8** %114, align 8, !dbg !3087
  %116 = load i8**, i8*** %11, align 8, !dbg !3088
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3088
  %118 = load i8*, i8** %117, align 8, !dbg !3088
  %119 = load i8**, i8*** %11, align 8, !dbg !3089
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3089
  %121 = load i8*, i8** %120, align 8, !dbg !3089
  %122 = load i8**, i8*** %11, align 8, !dbg !3090
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3090
  %124 = load i8*, i8** %123, align 8, !dbg !3090
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3091
  br label %241, !dbg !3092

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3093
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.120, i64 0, i64 0)) #19, !dbg !3094
  %129 = load i8**, i8*** %11, align 8, !dbg !3095
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3095
  %131 = load i8*, i8** %130, align 8, !dbg !3095
  %132 = load i8**, i8*** %11, align 8, !dbg !3096
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3096
  %134 = load i8*, i8** %133, align 8, !dbg !3096
  %135 = load i8**, i8*** %11, align 8, !dbg !3097
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3097
  %137 = load i8*, i8** %136, align 8, !dbg !3097
  %138 = load i8**, i8*** %11, align 8, !dbg !3098
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3098
  %140 = load i8*, i8** %139, align 8, !dbg !3098
  %141 = load i8**, i8*** %11, align 8, !dbg !3099
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3099
  %143 = load i8*, i8** %142, align 8, !dbg !3099
  %144 = load i8**, i8*** %11, align 8, !dbg !3100
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3100
  %146 = load i8*, i8** %145, align 8, !dbg !3100
  %147 = load i8**, i8*** %11, align 8, !dbg !3101
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3101
  %149 = load i8*, i8** %148, align 8, !dbg !3101
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3102
  br label %241, !dbg !3103

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3104
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.121, i64 0, i64 0)) #19, !dbg !3105
  %154 = load i8**, i8*** %11, align 8, !dbg !3106
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3106
  %156 = load i8*, i8** %155, align 8, !dbg !3106
  %157 = load i8**, i8*** %11, align 8, !dbg !3107
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3107
  %159 = load i8*, i8** %158, align 8, !dbg !3107
  %160 = load i8**, i8*** %11, align 8, !dbg !3108
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3108
  %162 = load i8*, i8** %161, align 8, !dbg !3108
  %163 = load i8**, i8*** %11, align 8, !dbg !3109
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3109
  %165 = load i8*, i8** %164, align 8, !dbg !3109
  %166 = load i8**, i8*** %11, align 8, !dbg !3110
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3110
  %168 = load i8*, i8** %167, align 8, !dbg !3110
  %169 = load i8**, i8*** %11, align 8, !dbg !3111
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3111
  %171 = load i8*, i8** %170, align 8, !dbg !3111
  %172 = load i8**, i8*** %11, align 8, !dbg !3112
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3112
  %174 = load i8*, i8** %173, align 8, !dbg !3112
  %175 = load i8**, i8*** %11, align 8, !dbg !3113
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3113
  %177 = load i8*, i8** %176, align 8, !dbg !3113
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3114
  br label %241, !dbg !3115

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3116
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.122, i64 0, i64 0)) #19, !dbg !3117
  %182 = load i8**, i8*** %11, align 8, !dbg !3118
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3118
  %184 = load i8*, i8** %183, align 8, !dbg !3118
  %185 = load i8**, i8*** %11, align 8, !dbg !3119
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3119
  %187 = load i8*, i8** %186, align 8, !dbg !3119
  %188 = load i8**, i8*** %11, align 8, !dbg !3120
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3120
  %190 = load i8*, i8** %189, align 8, !dbg !3120
  %191 = load i8**, i8*** %11, align 8, !dbg !3121
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3121
  %193 = load i8*, i8** %192, align 8, !dbg !3121
  %194 = load i8**, i8*** %11, align 8, !dbg !3122
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3122
  %196 = load i8*, i8** %195, align 8, !dbg !3122
  %197 = load i8**, i8*** %11, align 8, !dbg !3123
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3123
  %199 = load i8*, i8** %198, align 8, !dbg !3123
  %200 = load i8**, i8*** %11, align 8, !dbg !3124
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3124
  %202 = load i8*, i8** %201, align 8, !dbg !3124
  %203 = load i8**, i8*** %11, align 8, !dbg !3125
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3125
  %205 = load i8*, i8** %204, align 8, !dbg !3125
  %206 = load i8**, i8*** %11, align 8, !dbg !3126
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3126
  %208 = load i8*, i8** %207, align 8, !dbg !3126
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3127
  br label %241, !dbg !3128

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3129
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.123, i64 0, i64 0)) #19, !dbg !3130
  %213 = load i8**, i8*** %11, align 8, !dbg !3131
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3131
  %215 = load i8*, i8** %214, align 8, !dbg !3131
  %216 = load i8**, i8*** %11, align 8, !dbg !3132
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3132
  %218 = load i8*, i8** %217, align 8, !dbg !3132
  %219 = load i8**, i8*** %11, align 8, !dbg !3133
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3133
  %221 = load i8*, i8** %220, align 8, !dbg !3133
  %222 = load i8**, i8*** %11, align 8, !dbg !3134
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3134
  %224 = load i8*, i8** %223, align 8, !dbg !3134
  %225 = load i8**, i8*** %11, align 8, !dbg !3135
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3135
  %227 = load i8*, i8** %226, align 8, !dbg !3135
  %228 = load i8**, i8*** %11, align 8, !dbg !3136
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3136
  %230 = load i8*, i8** %229, align 8, !dbg !3136
  %231 = load i8**, i8*** %11, align 8, !dbg !3137
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3137
  %233 = load i8*, i8** %232, align 8, !dbg !3137
  %234 = load i8**, i8*** %11, align 8, !dbg !3138
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3138
  %236 = load i8*, i8** %235, align 8, !dbg !3138
  %237 = load i8**, i8*** %11, align 8, !dbg !3139
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3139
  %239 = load i8*, i8** %238, align 8, !dbg !3139
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3140
  br label %241, !dbg !3141

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3143 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3146, metadata !DIExpression()), !dbg !3147
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3148, metadata !DIExpression()), !dbg !3149
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3150, metadata !DIExpression()), !dbg !3151
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3152, metadata !DIExpression()), !dbg !3153
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3154, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3156, metadata !DIExpression()), !dbg !3157
  store i64 0, i64* %11, align 8, !dbg !3158
  br label %12, !dbg !3160

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3161
  %14 = load i64, i64* %11, align 8, !dbg !3163
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3161
  %16 = load i8*, i8** %15, align 8, !dbg !3161
  %17 = icmp ne i8* %16, null, !dbg !3164
  br i1 %17, label %18, label %22, !dbg !3164

18:                                               ; preds = %12
  br label %19, !dbg !3164

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3165
  %21 = add i64 %20, 1, !dbg !3165
  store i64 %21, i64* %11, align 8, !dbg !3165
  br label %12, !dbg !3166, !llvm.loop !3167

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3169
  %24 = load i8*, i8** %7, align 8, !dbg !3170
  %25 = load i8*, i8** %8, align 8, !dbg !3171
  %26 = load i8*, i8** %9, align 8, !dbg !3172
  %27 = load i8**, i8*** %10, align 8, !dbg !3173
  %28 = load i64, i64* %11, align 8, !dbg !3174
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3175
  ret void, !dbg !3176
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3177 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3191, metadata !DIExpression()), !dbg !3192
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3193, metadata !DIExpression()), !dbg !3194
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3195, metadata !DIExpression()), !dbg !3196
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3201, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3203, metadata !DIExpression()), !dbg !3205
  store i64 0, i64* %10, align 8, !dbg !3206
  br label %12, !dbg !3208

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3209
  %14 = icmp ult i64 %13, 10, !dbg !3211
  br i1 %14, label %15, label %38, !dbg !3212

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3213
  %17 = load i32, i32* %16, align 8, !dbg !3213
  %18 = icmp sge i32 %17, 0, !dbg !3213
  br i1 %18, label %27, label %19, !dbg !3213

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3213
  store i32 %20, i32* %16, align 8, !dbg !3213
  %21 = icmp sle i32 %20, 0, !dbg !3213
  br i1 %21, label %22, label %27, !dbg !3213

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3213
  %24 = load i8*, i8** %23, align 8, !dbg !3213
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3213
  %26 = bitcast i8* %25 to i8**, !dbg !3213
  br label %32, !dbg !3213

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3213
  %29 = load i8*, i8** %28, align 8, !dbg !3213
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3213
  store i8* %30, i8** %28, align 8, !dbg !3213
  %31 = bitcast i8* %29 to i8**, !dbg !3213
  br label %32, !dbg !3213

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3213
  %34 = load i8*, i8** %33, align 8, !dbg !3213
  %35 = load i64, i64* %10, align 8, !dbg !3214
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3215
  store i8* %34, i8** %36, align 8, !dbg !3216
  %37 = icmp ne i8* %34, null, !dbg !3217
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3218
  br i1 %39, label %40, label %44, !dbg !3219

40:                                               ; preds = %38
  br label %41, !dbg !3219

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3220
  %43 = add i64 %42, 1, !dbg !3220
  store i64 %43, i64* %10, align 8, !dbg !3220
  br label %12, !dbg !3221, !llvm.loop !3222

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3224
  %46 = load i8*, i8** %7, align 8, !dbg !3225
  %47 = load i8*, i8** %8, align 8, !dbg !3226
  %48 = load i8*, i8** %9, align 8, !dbg !3227
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3228
  %50 = load i64, i64* %10, align 8, !dbg !3229
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3230
  ret void, !dbg !3231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3232 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3235, metadata !DIExpression()), !dbg !3236
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3237, metadata !DIExpression()), !dbg !3238
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3239, metadata !DIExpression()), !dbg !3240
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3241, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3243, metadata !DIExpression()), !dbg !3244
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3245
  call void @llvm.va_start(i8* %11), !dbg !3245
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3246
  %13 = load i8*, i8** %6, align 8, !dbg !3247
  %14 = load i8*, i8** %7, align 8, !dbg !3248
  %15 = load i8*, i8** %8, align 8, !dbg !3249
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3250
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3250
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3250
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3251
  call void @llvm.va_end(i8* %18), !dbg !3251
  ret void, !dbg !3252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3253 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3254
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.111, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3254
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.128, i64 0, i64 0)) #19, !dbg !3255
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.129, i64 0, i64 0)), !dbg !3256
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.130, i64 0, i64 0)) #19, !dbg !3257
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.132, i64 0, i64 0)), !dbg !3258
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.133, i64 0, i64 0)) #19, !dbg !3259
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.134, i64 0, i64 0)), !dbg !3260
  ret void, !dbg !3261
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3262 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3266, metadata !DIExpression()), !dbg !3267
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3268, metadata !DIExpression()), !dbg !3269
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3270, metadata !DIExpression()), !dbg !3271
  %7 = load i8*, i8** %4, align 8, !dbg !3272
  %8 = load i64, i64* %5, align 8, !dbg !3273
  %9 = load i64, i64* %6, align 8, !dbg !3274
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #27, !dbg !3275
  ret i8* %10, !dbg !3276
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3277 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3278, metadata !DIExpression()), !dbg !3279
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3280, metadata !DIExpression()), !dbg !3281
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3282, metadata !DIExpression()), !dbg !3283
  %7 = load i8*, i8** %4, align 8, !dbg !3284
  %8 = load i64, i64* %5, align 8, !dbg !3285
  %9 = load i64, i64* %6, align 8, !dbg !3286
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3287
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3288
  ret i8* %11, !dbg !3289
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3290 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3293, metadata !DIExpression()), !dbg !3294
  %3 = load i8*, i8** %2, align 8, !dbg !3295
  %4 = icmp ne i8* %3, null, !dbg !3295
  br i1 %4, label %6, label %5, !dbg !3297

5:                                                ; preds = %1
  call void @xalloc_die() #23, !dbg !3298
  unreachable, !dbg !3298

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3299
  ret i8* %7, !dbg !3300
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3301 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3304, metadata !DIExpression()), !dbg !3305
  %3 = load i64, i64* %2, align 8, !dbg !3306
  %4 = call noalias i8* @malloc(i64 noundef %3) #19, !dbg !3307
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3308
  ret i8* %5, !dbg !3309
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3310 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3313, metadata !DIExpression()), !dbg !3314
  %3 = load i64, i64* %2, align 8, !dbg !3315
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3316
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3317
  ret i8* %5, !dbg !3318
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3319 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3322, metadata !DIExpression()), !dbg !3323
  %3 = load i64, i64* %2, align 8, !dbg !3324
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #26, !dbg !3324
  ret i8* %4, !dbg !3325
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3326 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3329, metadata !DIExpression()), !dbg !3330
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3331, metadata !DIExpression()), !dbg !3332
  %5 = load i8*, i8** %3, align 8, !dbg !3333
  %6 = load i64, i64* %4, align 8, !dbg !3334
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3335
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3336
  ret i8* %8, !dbg !3337
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3338 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3341, metadata !DIExpression()), !dbg !3342
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3343, metadata !DIExpression()), !dbg !3344
  %5 = load i8*, i8** %3, align 8, !dbg !3345
  %6 = load i64, i64* %4, align 8, !dbg !3346
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3347
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3348
  ret i8* %8, !dbg !3349
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3350 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3353, metadata !DIExpression()), !dbg !3354
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3355, metadata !DIExpression()), !dbg !3356
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3357, metadata !DIExpression()), !dbg !3358
  %7 = load i8*, i8** %4, align 8, !dbg !3359
  %8 = load i64, i64* %5, align 8, !dbg !3360
  %9 = load i64, i64* %6, align 8, !dbg !3361
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3362
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3363
  ret i8* %11, !dbg !3364
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3365 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3368, metadata !DIExpression()), !dbg !3369
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3370, metadata !DIExpression()), !dbg !3371
  %5 = load i64, i64* %3, align 8, !dbg !3372
  %6 = load i64, i64* %4, align 8, !dbg !3373
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3374
  ret i8* %7, !dbg !3375
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3376 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3379, metadata !DIExpression()), !dbg !3380
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3381, metadata !DIExpression()), !dbg !3382
  %5 = load i64, i64* %3, align 8, !dbg !3383
  %6 = load i64, i64* %4, align 8, !dbg !3384
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3385
  ret i8* %7, !dbg !3386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3387 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3390, metadata !DIExpression()), !dbg !3391
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3392, metadata !DIExpression()), !dbg !3393
  %5 = load i8*, i8** %3, align 8, !dbg !3394
  %6 = load i64*, i64** %4, align 8, !dbg !3395
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3396
  ret i8* %7, !dbg !3397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !275 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3398, metadata !DIExpression()), !dbg !3399
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3400, metadata !DIExpression()), !dbg !3401
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3402, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3404, metadata !DIExpression()), !dbg !3405
  %8 = load i64*, i64** %5, align 8, !dbg !3406
  %9 = load i64, i64* %8, align 8, !dbg !3407
  store i64 %9, i64* %7, align 8, !dbg !3405
  %10 = load i8*, i8** %4, align 8, !dbg !3408
  %11 = icmp ne i8* %10, null, !dbg !3408
  br i1 %11, label %26, label %12, !dbg !3410

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3411
  %14 = icmp ne i64 %13, 0, !dbg !3411
  br i1 %14, label %25, label %15, !dbg !3414

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3415
  %17 = udiv i64 128, %16, !dbg !3417
  store i64 %17, i64* %7, align 8, !dbg !3418
  %18 = load i64, i64* %7, align 8, !dbg !3419
  %19 = icmp ne i64 %18, 0, !dbg !3420
  %20 = xor i1 %19, true, !dbg !3420
  %21 = zext i1 %20 to i32, !dbg !3420
  %22 = sext i32 %21 to i64, !dbg !3420
  %23 = load i64, i64* %7, align 8, !dbg !3421
  %24 = add i64 %23, %22, !dbg !3421
  store i64 %24, i64* %7, align 8, !dbg !3421
  br label %25, !dbg !3422

25:                                               ; preds = %15, %12
  br label %36, !dbg !3423

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3424
  %28 = load i64, i64* %7, align 8, !dbg !3424
  %29 = lshr i64 %28, 1, !dbg !3424
  %30 = add i64 %29, 1, !dbg !3424
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3424
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3424
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3424
  store i64 %33, i64* %7, align 8, !dbg !3424
  br i1 %32, label %34, label %35, !dbg !3427

34:                                               ; preds = %26
  call void @xalloc_die() #23, !dbg !3428
  unreachable, !dbg !3428

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3429
  %38 = load i64, i64* %7, align 8, !dbg !3430
  %39 = load i64, i64* %6, align 8, !dbg !3431
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #27, !dbg !3432
  store i8* %40, i8** %4, align 8, !dbg !3433
  %41 = load i64, i64* %7, align 8, !dbg !3434
  %42 = load i64*, i64** %5, align 8, !dbg !3435
  store i64 %41, i64* %42, align 8, !dbg !3436
  %43 = load i8*, i8** %4, align 8, !dbg !3437
  ret i8* %43, !dbg !3438
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !282 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3441, metadata !DIExpression()), !dbg !3442
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3443, metadata !DIExpression()), !dbg !3444
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3445, metadata !DIExpression()), !dbg !3446
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3447, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3449, metadata !DIExpression()), !dbg !3450
  %15 = load i64*, i64** %7, align 8, !dbg !3451
  %16 = load i64, i64* %15, align 8, !dbg !3452
  store i64 %16, i64* %11, align 8, !dbg !3450
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3453, metadata !DIExpression()), !dbg !3454
  %17 = load i64, i64* %11, align 8, !dbg !3455
  %18 = load i64, i64* %11, align 8, !dbg !3455
  %19 = ashr i64 %18, 1, !dbg !3455
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3455
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3455
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3455
  store i64 %22, i64* %12, align 8, !dbg !3455
  br i1 %21, label %23, label %24, !dbg !3457

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3458
  br label %24, !dbg !3459

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3460
  %26 = icmp sle i64 0, %25, !dbg !3462
  br i1 %26, label %27, label %33, !dbg !3463

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3464
  %29 = load i64, i64* %12, align 8, !dbg !3465
  %30 = icmp slt i64 %28, %29, !dbg !3466
  br i1 %30, label %31, label %33, !dbg !3467

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3468
  store i64 %32, i64* %12, align 8, !dbg !3469
  br label %33, !dbg !3470

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3471, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3473, metadata !DIExpression()), !dbg !3474
  %34 = load i64, i64* %10, align 8, !dbg !3475
  %35 = icmp slt i64 %34, 0, !dbg !3475
  br i1 %35, label %36, label %82, !dbg !3475

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3475
  %38 = icmp slt i64 %37, 0, !dbg !3475
  br i1 %38, label %39, label %62, !dbg !3475

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3475

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3475
  %42 = load i64, i64* %10, align 8, !dbg !3475
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3475
  %44 = icmp slt i64 %41, %43, !dbg !3475
  br i1 %44, label %111, label %115, !dbg !3475

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3475

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3475
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3475
  br i1 %48, label %52, label %53, !dbg !3475

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3475
  %51 = icmp slt i64 0, %50, !dbg !3475
  br i1 %51, label %52, label %53, !dbg !3475

52:                                               ; preds = %49, %46
  br label %57, !dbg !3475

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3475
  %55 = sub nsw i64 0, %54, !dbg !3475
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3475
  br label %57, !dbg !3475

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3475
  %59 = load i64, i64* %12, align 8, !dbg !3475
  %60 = sub nsw i64 -1, %59, !dbg !3475
  %61 = icmp sle i64 %58, %60, !dbg !3475
  br i1 %61, label %111, label %115, !dbg !3475

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3475
  %64 = icmp eq i64 %63, -1, !dbg !3475
  br i1 %64, label %65, label %77, !dbg !3475

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3475

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3475
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3475
  %69 = icmp slt i64 0, %68, !dbg !3475
  br i1 %69, label %111, label %115, !dbg !3475

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3475
  %72 = icmp slt i64 0, %71, !dbg !3475
  br i1 %72, label %73, label %115, !dbg !3475

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3475
  %75 = sub nsw i64 %74, 1, !dbg !3475
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3475
  br i1 %76, label %111, label %115, !dbg !3475

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3475
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3475
  %80 = load i64, i64* %12, align 8, !dbg !3475
  %81 = icmp slt i64 %79, %80, !dbg !3475
  br i1 %81, label %111, label %115, !dbg !3475

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3475
  %84 = icmp eq i64 %83, 0, !dbg !3475
  br i1 %84, label %85, label %86, !dbg !3475

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3475

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3475
  %88 = icmp slt i64 %87, 0, !dbg !3475
  br i1 %88, label %89, label %106, !dbg !3475

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3475
  %91 = icmp eq i64 %90, -1, !dbg !3475
  br i1 %91, label %92, label %101, !dbg !3475

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3475

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3475
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3475
  %96 = icmp slt i64 0, %95, !dbg !3475
  br i1 %96, label %111, label %115, !dbg !3475

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3475
  %99 = sub nsw i64 %98, 1, !dbg !3475
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3475
  br i1 %100, label %111, label %115, !dbg !3475

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3475
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3475
  %104 = load i64, i64* %10, align 8, !dbg !3475
  %105 = icmp slt i64 %103, %104, !dbg !3475
  br i1 %105, label %111, label %115, !dbg !3475

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3475
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3475
  %109 = load i64, i64* %12, align 8, !dbg !3475
  %110 = icmp slt i64 %108, %109, !dbg !3475
  br i1 %110, label %111, label %115, !dbg !3475

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3475
  %113 = load i64, i64* %10, align 8, !dbg !3475
  %114 = mul i64 %112, %113, !dbg !3475
  store i64 %114, i64* %13, align 8, !dbg !3475
  br label %119, !dbg !3475

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3475
  %117 = load i64, i64* %10, align 8, !dbg !3475
  %118 = mul i64 %116, %117, !dbg !3475
  store i64 %118, i64* %13, align 8, !dbg !3475
  br label %119, !dbg !3475

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3475
  %121 = icmp ne i32 %120, 0, !dbg !3475
  br i1 %121, label %122, label %123, !dbg !3475

122:                                              ; preds = %119
  br label %129, !dbg !3475

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3476
  %125 = icmp slt i64 %124, 128, !dbg !3477
  %126 = zext i1 %125 to i64, !dbg !3476
  %127 = select i1 %125, i32 128, i32 0, !dbg !3476
  %128 = sext i32 %127 to i64, !dbg !3476
  br label %129, !dbg !3475

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3475
  store i64 %130, i64* %14, align 8, !dbg !3474
  %131 = load i64, i64* %14, align 8, !dbg !3478
  %132 = icmp ne i64 %131, 0, !dbg !3478
  br i1 %132, label %133, label %142, !dbg !3480

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3481
  %135 = load i64, i64* %10, align 8, !dbg !3483
  %136 = sdiv i64 %134, %135, !dbg !3484
  store i64 %136, i64* %12, align 8, !dbg !3485
  %137 = load i64, i64* %14, align 8, !dbg !3486
  %138 = load i64, i64* %14, align 8, !dbg !3487
  %139 = load i64, i64* %10, align 8, !dbg !3488
  %140 = srem i64 %138, %139, !dbg !3489
  %141 = sub nsw i64 %137, %140, !dbg !3490
  store i64 %141, i64* %13, align 8, !dbg !3491
  br label %142, !dbg !3492

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3493
  %144 = icmp ne i8* %143, null, !dbg !3493
  br i1 %144, label %147, label %145, !dbg !3495

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3496
  store i64 0, i64* %146, align 8, !dbg !3497
  br label %147, !dbg !3498

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3499
  %149 = load i64, i64* %11, align 8, !dbg !3501
  %150 = sub nsw i64 %148, %149, !dbg !3502
  %151 = load i64, i64* %8, align 8, !dbg !3503
  %152 = icmp slt i64 %150, %151, !dbg !3504
  br i1 %152, label %153, label %256, !dbg !3505

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3506
  %155 = load i64, i64* %8, align 8, !dbg !3506
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3506
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3506
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3506
  store i64 %158, i64* %12, align 8, !dbg !3506
  br i1 %157, label %255, label %159, !dbg !3507

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3508
  %161 = icmp sle i64 0, %160, !dbg !3509
  br i1 %161, label %162, label %166, !dbg !3510

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3511
  %164 = load i64, i64* %12, align 8, !dbg !3512
  %165 = icmp slt i64 %163, %164, !dbg !3513
  br i1 %165, label %255, label %166, !dbg !3514

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3515
  %168 = icmp slt i64 %167, 0, !dbg !3515
  br i1 %168, label %169, label %215, !dbg !3515

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3515
  %171 = icmp slt i64 %170, 0, !dbg !3515
  br i1 %171, label %172, label %195, !dbg !3515

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3515

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3515
  %175 = load i64, i64* %10, align 8, !dbg !3515
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3515
  %177 = icmp slt i64 %174, %176, !dbg !3515
  br i1 %177, label %244, label %248, !dbg !3515

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3515

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3515
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3515
  br i1 %181, label %185, label %186, !dbg !3515

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3515
  %184 = icmp slt i64 0, %183, !dbg !3515
  br i1 %184, label %185, label %186, !dbg !3515

185:                                              ; preds = %182, %179
  br label %190, !dbg !3515

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3515
  %188 = sub nsw i64 0, %187, !dbg !3515
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3515
  br label %190, !dbg !3515

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3515
  %192 = load i64, i64* %12, align 8, !dbg !3515
  %193 = sub nsw i64 -1, %192, !dbg !3515
  %194 = icmp sle i64 %191, %193, !dbg !3515
  br i1 %194, label %244, label %248, !dbg !3515

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3515
  %197 = icmp eq i64 %196, -1, !dbg !3515
  br i1 %197, label %198, label %210, !dbg !3515

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3515

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3515
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3515
  %202 = icmp slt i64 0, %201, !dbg !3515
  br i1 %202, label %244, label %248, !dbg !3515

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3515
  %205 = icmp slt i64 0, %204, !dbg !3515
  br i1 %205, label %206, label %248, !dbg !3515

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3515
  %208 = sub nsw i64 %207, 1, !dbg !3515
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3515
  br i1 %209, label %244, label %248, !dbg !3515

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3515
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3515
  %213 = load i64, i64* %12, align 8, !dbg !3515
  %214 = icmp slt i64 %212, %213, !dbg !3515
  br i1 %214, label %244, label %248, !dbg !3515

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3515
  %217 = icmp eq i64 %216, 0, !dbg !3515
  br i1 %217, label %218, label %219, !dbg !3515

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3515

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3515
  %221 = icmp slt i64 %220, 0, !dbg !3515
  br i1 %221, label %222, label %239, !dbg !3515

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3515
  %224 = icmp eq i64 %223, -1, !dbg !3515
  br i1 %224, label %225, label %234, !dbg !3515

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3515

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3515
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3515
  %229 = icmp slt i64 0, %228, !dbg !3515
  br i1 %229, label %244, label %248, !dbg !3515

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3515
  %232 = sub nsw i64 %231, 1, !dbg !3515
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3515
  br i1 %233, label %244, label %248, !dbg !3515

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3515
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3515
  %237 = load i64, i64* %10, align 8, !dbg !3515
  %238 = icmp slt i64 %236, %237, !dbg !3515
  br i1 %238, label %244, label %248, !dbg !3515

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3515
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3515
  %242 = load i64, i64* %12, align 8, !dbg !3515
  %243 = icmp slt i64 %241, %242, !dbg !3515
  br i1 %243, label %244, label %248, !dbg !3515

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3515
  %246 = load i64, i64* %10, align 8, !dbg !3515
  %247 = mul i64 %245, %246, !dbg !3515
  store i64 %247, i64* %13, align 8, !dbg !3515
  br label %252, !dbg !3515

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3515
  %250 = load i64, i64* %10, align 8, !dbg !3515
  %251 = mul i64 %249, %250, !dbg !3515
  store i64 %251, i64* %13, align 8, !dbg !3515
  br label %252, !dbg !3515

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3515
  %254 = icmp ne i32 %253, 0, !dbg !3515
  br i1 %254, label %255, label %256, !dbg !3516

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #23, !dbg !3517
  unreachable, !dbg !3517

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3518
  %258 = load i64, i64* %13, align 8, !dbg !3519
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #25, !dbg !3520
  store i8* %259, i8** %6, align 8, !dbg !3521
  %260 = load i64, i64* %12, align 8, !dbg !3522
  %261 = load i64*, i64** %7, align 8, !dbg !3523
  store i64 %260, i64* %261, align 8, !dbg !3524
  %262 = load i8*, i8** %6, align 8, !dbg !3525
  ret i8* %262, !dbg !3526
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3527 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3528, metadata !DIExpression()), !dbg !3529
  %3 = load i64, i64* %2, align 8, !dbg !3530
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !3531
  ret i8* %4, !dbg !3532
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3533 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3534, metadata !DIExpression()), !dbg !3535
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3536, metadata !DIExpression()), !dbg !3537
  %5 = load i64, i64* %3, align 8, !dbg !3538
  %6 = load i64, i64* %4, align 8, !dbg !3539
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #19, !dbg !3540
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3541
  ret i8* %8, !dbg !3542
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3543 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3544, metadata !DIExpression()), !dbg !3545
  %3 = load i64, i64* %2, align 8, !dbg !3546
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !3547
  ret i8* %4, !dbg !3548
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3549 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3550, metadata !DIExpression()), !dbg !3551
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3552, metadata !DIExpression()), !dbg !3553
  %5 = load i64, i64* %3, align 8, !dbg !3554
  %6 = load i64, i64* %4, align 8, !dbg !3555
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3556
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3557
  ret i8* %8, !dbg !3558
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3559 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3564, metadata !DIExpression()), !dbg !3565
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3566, metadata !DIExpression()), !dbg !3567
  %5 = load i64, i64* %4, align 8, !dbg !3568
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #26, !dbg !3569
  %7 = load i8*, i8** %3, align 8, !dbg !3570
  %8 = load i64, i64* %4, align 8, !dbg !3571
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3572
  ret i8* %6, !dbg !3573
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3574 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3577, metadata !DIExpression()), !dbg !3578
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3579, metadata !DIExpression()), !dbg !3580
  %5 = load i64, i64* %4, align 8, !dbg !3581
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #26, !dbg !3582
  %7 = load i8*, i8** %3, align 8, !dbg !3583
  %8 = load i64, i64* %4, align 8, !dbg !3584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3585
  ret i8* %6, !dbg !3586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3587 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3590, metadata !DIExpression()), !dbg !3591
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3592, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3594, metadata !DIExpression()), !dbg !3595
  %6 = load i64, i64* %4, align 8, !dbg !3596
  %7 = add nsw i64 %6, 1, !dbg !3597
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #26, !dbg !3598
  store i8* %8, i8** %5, align 8, !dbg !3595
  %9 = load i8*, i8** %5, align 8, !dbg !3599
  %10 = load i64, i64* %4, align 8, !dbg !3600
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3599
  store i8 0, i8* %11, align 1, !dbg !3601
  %12 = load i8*, i8** %5, align 8, !dbg !3602
  %13 = load i8*, i8** %3, align 8, !dbg !3603
  %14 = load i64, i64* %4, align 8, !dbg !3604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3605
  ret i8* %12, !dbg !3606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3607 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3608, metadata !DIExpression()), !dbg !3609
  %3 = load i8*, i8** %2, align 8, !dbg !3610
  %4 = load i8*, i8** %2, align 8, !dbg !3611
  %5 = call i64 @strlen(i8* noundef %4) #21, !dbg !3612
  %6 = add i64 %5, 1, !dbg !3613
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #25, !dbg !3614
  ret i8* %7, !dbg !3615
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3616 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3617, metadata !DIExpression()), !dbg !3619
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3619
  store i32 %2, i32* %1, align 4, !dbg !3619
  %3 = load i32, i32* %1, align 4, !dbg !3619
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.145, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.146, i64 0, i64 0)) #19, !dbg !3619
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0), i8* noundef %4), !dbg !3619
  %5 = load i32, i32* %1, align 4, !dbg !3619
  %6 = icmp ne i32 %5, 0, !dbg !3619
  br i1 %6, label %7, label %9, !dbg !3619

7:                                                ; preds = %0
  unreachable, !dbg !3619

8:                                                ; No predecessors!
  br label %10, !dbg !3619

9:                                                ; preds = %0
  br label %10, !dbg !3619

10:                                               ; preds = %9, %8
  call void @abort() #20, !dbg !3620
  unreachable, !dbg !3620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xnanosleep(double noundef %0) #4 !dbg !3621 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca %struct.timespec, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !3624, metadata !DIExpression()), !dbg !3625
  %5 = load double, double* %3, align 8, !dbg !3626
  %6 = fcmp ole double 0x43E0000000000000, %5, !dbg !3628
  br i1 %6, label %7, label %15, !dbg !3629

7:                                                ; preds = %1
  br label %8, !dbg !3630

8:                                                ; preds = %10, %7
  %9 = call i32 @pause(), !dbg !3632
  br label %10, !dbg !3632

10:                                               ; preds = %8
  %11 = call i32* @__errno_location() #22, !dbg !3633
  %12 = load i32, i32* %11, align 4, !dbg !3633
  %13 = icmp eq i32 %12, 4, !dbg !3634
  br i1 %13, label %8, label %14, !dbg !3632, !llvm.loop !3635

14:                                               ; preds = %10
  br label %15, !dbg !3637

15:                                               ; preds = %14, %1
  call void @llvm.dbg.declare(metadata %struct.timespec* %4, metadata !3638, metadata !DIExpression()), !dbg !3645
  %16 = load double, double* %3, align 8, !dbg !3646
  %17 = call [2 x i64] @dtotimespec(double noundef %16) #22, !dbg !3647
  %18 = bitcast %struct.timespec* %4 to [2 x i64]*, !dbg !3647
  store [2 x i64] %17, [2 x i64]* %18, align 8, !dbg !3647
  br label %19, !dbg !3648

19:                                               ; preds = %33, %15
  %20 = call i32* @__errno_location() #22, !dbg !3649
  store i32 0, i32* %20, align 4, !dbg !3653
  %21 = call i32 @rpl_nanosleep(%struct.timespec* noundef %4, %struct.timespec* noundef %4), !dbg !3654
  %22 = icmp eq i32 %21, 0, !dbg !3656
  br i1 %22, label %23, label %24, !dbg !3657

23:                                               ; preds = %19
  br label %34, !dbg !3658

24:                                               ; preds = %19
  %25 = call i32* @__errno_location() #22, !dbg !3659
  %26 = load i32, i32* %25, align 4, !dbg !3659
  %27 = icmp ne i32 %26, 4, !dbg !3661
  br i1 %27, label %28, label %33, !dbg !3662

28:                                               ; preds = %24
  %29 = call i32* @__errno_location() #22, !dbg !3663
  %30 = load i32, i32* %29, align 4, !dbg !3663
  %31 = icmp ne i32 %30, 0, !dbg !3664
  br i1 %31, label %32, label %33, !dbg !3665

32:                                               ; preds = %28
  store i32 -1, i32* %2, align 4, !dbg !3666
  br label %35, !dbg !3666

33:                                               ; preds = %28, %24
  br label %19, !dbg !3667, !llvm.loop !3668

34:                                               ; preds = %23
  store i32 0, i32* %2, align 4, !dbg !3671
  br label %35, !dbg !3671

35:                                               ; preds = %34, %32
  %36 = load i32, i32* %2, align 4, !dbg !3672
  ret i32 %36, !dbg !3672
}

declare i32 @pause() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @c_strtod(i8* noundef %0, i8** noundef %1) #4 !dbg !3673 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.__locale_struct*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3676, metadata !DIExpression()), !dbg !3677
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !3678, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.declare(metadata double* %6, metadata !3680, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.declare(metadata %struct.__locale_struct** %7, metadata !3682, metadata !DIExpression()), !dbg !3683
  %8 = call %struct.__locale_struct* @c_locale(), !dbg !3684
  store %struct.__locale_struct* %8, %struct.__locale_struct** %7, align 8, !dbg !3683
  %9 = load %struct.__locale_struct*, %struct.__locale_struct** %7, align 8, !dbg !3685
  %10 = icmp ne %struct.__locale_struct* %9, null, !dbg !3685
  br i1 %10, label %18, label %11, !dbg !3687

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8, !dbg !3688
  %13 = icmp ne i8** %12, null, !dbg !3688
  br i1 %13, label %14, label %17, !dbg !3691

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8, !dbg !3692
  %16 = load i8**, i8*** %5, align 8, !dbg !3693
  store i8* %15, i8** %16, align 8, !dbg !3694
  br label %17, !dbg !3695

17:                                               ; preds = %14, %11
  store double 0.000000e+00, double* %3, align 8, !dbg !3696
  br label %24, !dbg !3696

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8, !dbg !3697
  %20 = load i8**, i8*** %5, align 8, !dbg !3698
  %21 = load %struct.__locale_struct*, %struct.__locale_struct** %7, align 8, !dbg !3699
  %22 = call double @strtod_l(i8* noundef %19, i8** noundef %20, %struct.__locale_struct* noundef %21) #19, !dbg !3700
  store double %22, double* %6, align 8, !dbg !3701
  %23 = load double, double* %6, align 8, !dbg !3702
  store double %23, double* %3, align 8, !dbg !3703
  br label %24, !dbg !3703

24:                                               ; preds = %18, %17
  %25 = load double, double* %3, align 8, !dbg !3704
  ret double %25, !dbg !3704
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.__locale_struct* @c_locale() #4 !dbg !3705 {
  %1 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3708
  %2 = icmp ne %struct.__locale_struct* %1, null, !dbg !3708
  br i1 %2, label %5, label %3, !dbg !3710

3:                                                ; preds = %0
  %4 = call %struct.__locale_struct* @newlocale(i32 noundef 8127, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i64 0, i64 0), %struct.__locale_struct* noundef null) #19, !dbg !3711
  store volatile %struct.__locale_struct* %4, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3712
  br label %5, !dbg !3713

5:                                                ; preds = %3, %0
  %6 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3714
  ret %struct.__locale_struct* %6, !dbg !3715
}

; Function Attrs: nounwind
declare double @strtod_l(i8* noundef, i8** noundef, %struct.__locale_struct* noundef) #2

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32 noundef, i8* noundef, %struct.__locale_struct* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3716 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3722, metadata !DIExpression()), !dbg !3723
  %3 = load i32, i32* %2, align 4, !dbg !3724
  %4 = call i32 @iswprint(i32 noundef %3) #19, !dbg !3725
  ret i32 %4, !dbg !3726
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3727 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3764, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3766, metadata !DIExpression()), !dbg !3768
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3769
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #19, !dbg !3770
  %9 = icmp ne i64 %8, 0, !dbg !3771
  %10 = zext i1 %9 to i8, !dbg !3768
  store i8 %10, i8* %4, align 1, !dbg !3768
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3772, metadata !DIExpression()), !dbg !3773
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3774
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #19, !dbg !3774
  %13 = icmp ne i32 %12, 0, !dbg !3775
  %14 = zext i1 %13 to i8, !dbg !3773
  store i8 %14, i8* %5, align 1, !dbg !3773
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3776, metadata !DIExpression()), !dbg !3777
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3778
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3779
  %17 = icmp ne i32 %16, 0, !dbg !3780
  %18 = zext i1 %17 to i8, !dbg !3777
  store i8 %18, i8* %6, align 1, !dbg !3777
  %19 = load i8, i8* %5, align 1, !dbg !3781
  %20 = trunc i8 %19 to i1, !dbg !3781
  br i1 %20, label %31, label %21, !dbg !3783

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3784
  %23 = trunc i8 %22 to i1, !dbg !3784
  br i1 %23, label %24, label %37, !dbg !3785

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3786
  %26 = trunc i8 %25 to i1, !dbg !3786
  br i1 %26, label %31, label %27, !dbg !3787

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #22, !dbg !3788
  %29 = load i32, i32* %28, align 4, !dbg !3788
  %30 = icmp ne i32 %29, 9, !dbg !3789
  br i1 %30, label %31, label %37, !dbg !3790

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3791
  %33 = trunc i8 %32 to i1, !dbg !3791
  br i1 %33, label %36, label %34, !dbg !3794

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #22, !dbg !3795
  store i32 0, i32* %35, align 4, !dbg !3796
  br label %36, !dbg !3795

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3797
  br label %38, !dbg !3797

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3798
  br label %38, !dbg !3798

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3799
  ret i32 %39, !dbg !3799
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local [2 x i64] @dtotimespec(double noundef %0) #18 !dbg !3800 {
  %2 = alloca %struct.timespec, align 8
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !3807, metadata !DIExpression()), !dbg !3808
  %7 = load double, double* %3, align 8, !dbg !3809
  %8 = fcmp olt double 0xC3E0000000000000, %7, !dbg !3811
  br i1 %8, label %12, label %9, !dbg !3812

9:                                                ; preds = %1
  %10 = call [2 x i64] @make_timespec(i64 noundef -9223372036854775808, i64 noundef 0), !dbg !3813
  %11 = bitcast %struct.timespec* %2 to [2 x i64]*, !dbg !3813
  store [2 x i64] %10, [2 x i64]* %11, align 8, !dbg !3813
  br label %54, !dbg !3814

12:                                               ; preds = %1
  %13 = load double, double* %3, align 8, !dbg !3815
  %14 = fcmp olt double %13, 0x43E0000000000000, !dbg !3817
  br i1 %14, label %18, label %15, !dbg !3818

15:                                               ; preds = %12
  %16 = call [2 x i64] @make_timespec(i64 noundef 9223372036854775807, i64 noundef 999999999), !dbg !3819
  %17 = bitcast %struct.timespec* %2 to [2 x i64]*, !dbg !3819
  store [2 x i64] %16, [2 x i64]* %17, align 8, !dbg !3819
  br label %54, !dbg !3820

18:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3821, metadata !DIExpression()), !dbg !3823
  %19 = load double, double* %3, align 8, !dbg !3824
  %20 = fptosi double %19 to i64, !dbg !3824
  store i64 %20, i64* %4, align 8, !dbg !3823
  call void @llvm.dbg.declare(metadata double* %5, metadata !3825, metadata !DIExpression()), !dbg !3826
  %21 = load double, double* %3, align 8, !dbg !3827
  %22 = load i64, i64* %4, align 8, !dbg !3828
  %23 = sitofp i64 %22 to double, !dbg !3828
  %24 = fsub double %21, %23, !dbg !3829
  %25 = fmul double 1.000000e+09, %24, !dbg !3830
  store double %25, double* %5, align 8, !dbg !3826
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3831, metadata !DIExpression()), !dbg !3832
  %26 = load double, double* %5, align 8, !dbg !3833
  %27 = fptosi double %26 to i64, !dbg !3833
  store i64 %27, i64* %6, align 8, !dbg !3832
  %28 = load i64, i64* %6, align 8, !dbg !3834
  %29 = sitofp i64 %28 to double, !dbg !3834
  %30 = load double, double* %5, align 8, !dbg !3835
  %31 = fcmp olt double %29, %30, !dbg !3836
  %32 = zext i1 %31 to i32, !dbg !3836
  %33 = sext i32 %32 to i64, !dbg !3834
  %34 = load i64, i64* %6, align 8, !dbg !3837
  %35 = add nsw i64 %34, %33, !dbg !3837
  store i64 %35, i64* %6, align 8, !dbg !3837
  %36 = load i64, i64* %6, align 8, !dbg !3838
  %37 = sdiv i64 %36, 1000000000, !dbg !3839
  %38 = load i64, i64* %4, align 8, !dbg !3840
  %39 = add nsw i64 %38, %37, !dbg !3840
  store i64 %39, i64* %4, align 8, !dbg !3840
  %40 = load i64, i64* %6, align 8, !dbg !3841
  %41 = srem i64 %40, 1000000000, !dbg !3841
  store i64 %41, i64* %6, align 8, !dbg !3841
  %42 = load i64, i64* %6, align 8, !dbg !3842
  %43 = icmp slt i64 %42, 0, !dbg !3844
  br i1 %43, label %44, label %49, !dbg !3845

44:                                               ; preds = %18
  %45 = load i64, i64* %4, align 8, !dbg !3846
  %46 = add nsw i64 %45, -1, !dbg !3846
  store i64 %46, i64* %4, align 8, !dbg !3846
  %47 = load i64, i64* %6, align 8, !dbg !3848
  %48 = add nsw i64 %47, 1000000000, !dbg !3848
  store i64 %48, i64* %6, align 8, !dbg !3848
  br label %49, !dbg !3849

49:                                               ; preds = %44, %18
  %50 = load i64, i64* %4, align 8, !dbg !3850
  %51 = load i64, i64* %6, align 8, !dbg !3851
  %52 = call [2 x i64] @make_timespec(i64 noundef %50, i64 noundef %51), !dbg !3852
  %53 = bitcast %struct.timespec* %2 to [2 x i64]*, !dbg !3852
  store [2 x i64] %52, [2 x i64]* %53, align 8, !dbg !3852
  br label %54, !dbg !3853

54:                                               ; preds = %49, %15, %9
  %55 = bitcast %struct.timespec* %2 to [2 x i64]*, !dbg !3854
  %56 = load [2 x i64], [2 x i64]* %55, align 8, !dbg !3854
  ret [2 x i64] %56, !dbg !3854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3855 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3892, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3894, metadata !DIExpression()), !dbg !3895
  store i32 0, i32* %4, align 4, !dbg !3895
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3896, metadata !DIExpression()), !dbg !3897
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3898
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #19, !dbg !3899
  store i32 %8, i32* %5, align 4, !dbg !3897
  %9 = load i32, i32* %5, align 4, !dbg !3900
  %10 = icmp slt i32 %9, 0, !dbg !3902
  br i1 %10, label %11, label %14, !dbg !3903

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3904
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3905
  store i32 %13, i32* %2, align 4, !dbg !3906
  br label %40, !dbg !3906

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3907
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #19, !dbg !3907
  %17 = icmp ne i32 %16, 0, !dbg !3907
  br i1 %17, label %18, label %23, !dbg !3909

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3910
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #19, !dbg !3911
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #19, !dbg !3912
  %22 = icmp ne i64 %21, -1, !dbg !3913
  br i1 %22, label %23, label %30, !dbg !3914

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3915
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3916
  %26 = icmp ne i32 %25, 0, !dbg !3916
  br i1 %26, label %27, label %30, !dbg !3917

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #22, !dbg !3918
  %29 = load i32, i32* %28, align 4, !dbg !3918
  store i32 %29, i32* %4, align 4, !dbg !3919
  br label %30, !dbg !3920

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3921, metadata !DIExpression()), !dbg !3922
  store i32 0, i32* %6, align 4, !dbg !3922
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3923
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3924
  store i32 %32, i32* %6, align 4, !dbg !3925
  %33 = load i32, i32* %4, align 4, !dbg !3926
  %34 = icmp ne i32 %33, 0, !dbg !3928
  br i1 %34, label %35, label %38, !dbg !3929

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3930
  %37 = call i32* @__errno_location() #22, !dbg !3932
  store i32 %36, i32* %37, align 4, !dbg !3933
  store i32 -1, i32* %6, align 4, !dbg !3934
  br label %38, !dbg !3935

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3936
  store i32 %39, i32* %2, align 4, !dbg !3937
  br label %40, !dbg !3937

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3938
  ret i32 %41, !dbg !3938
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3939 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3976, metadata !DIExpression()), !dbg !3977
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3978
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3980
  br i1 %5, label %10, label %6, !dbg !3981

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3982
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #19, !dbg !3982
  %9 = icmp ne i32 %8, 0, !dbg !3982
  br i1 %9, label %13, label %10, !dbg !3983

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3984
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3985
  store i32 %12, i32* %2, align 4, !dbg !3986
  br label %17, !dbg !3986

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3987
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3988
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3989
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3990
  store i32 %16, i32* %2, align 4, !dbg !3991
  br label %17, !dbg !3991

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3992
  ret i32 %18, !dbg !3992
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3993 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3996, metadata !DIExpression()), !dbg !3997
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3998
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4000
  %5 = load i32, i32* %4, align 8, !dbg !4000
  %6 = and i32 %5, 256, !dbg !4001
  %7 = icmp ne i32 %6, 0, !dbg !4001
  br i1 %7, label %8, label %11, !dbg !4002

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4003
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4004
  br label %11, !dbg !4004

11:                                               ; preds = %8, %1
  ret void, !dbg !4005
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4006 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4044, metadata !DIExpression()), !dbg !4045
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4046, metadata !DIExpression()), !dbg !4047
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4048, metadata !DIExpression()), !dbg !4049
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4050
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4052
  %11 = load i8*, i8** %10, align 8, !dbg !4052
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4053
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4054
  %14 = load i8*, i8** %13, align 8, !dbg !4054
  %15 = icmp eq i8* %11, %14, !dbg !4055
  br i1 %15, label %16, label %46, !dbg !4056

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4057
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4058
  %19 = load i8*, i8** %18, align 8, !dbg !4058
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4059
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4060
  %22 = load i8*, i8** %21, align 8, !dbg !4060
  %23 = icmp eq i8* %19, %22, !dbg !4061
  br i1 %23, label %24, label %46, !dbg !4062

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4063
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4064
  %27 = load i8*, i8** %26, align 8, !dbg !4064
  %28 = icmp eq i8* %27, null, !dbg !4065
  br i1 %28, label %29, label %46, !dbg !4066

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4067, metadata !DIExpression()), !dbg !4069
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4070
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #19, !dbg !4071
  %32 = load i64, i64* %6, align 8, !dbg !4072
  %33 = load i32, i32* %7, align 4, !dbg !4073
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #19, !dbg !4074
  store i64 %34, i64* %8, align 8, !dbg !4069
  %35 = load i64, i64* %8, align 8, !dbg !4075
  %36 = icmp eq i64 %35, -1, !dbg !4077
  br i1 %36, label %37, label %38, !dbg !4078

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4079
  br label %51, !dbg !4079

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4081
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4082
  %41 = load i32, i32* %40, align 8, !dbg !4083
  %42 = and i32 %41, -17, !dbg !4083
  store i32 %42, i32* %40, align 8, !dbg !4083
  %43 = load i64, i64* %8, align 8, !dbg !4084
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4085
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4086
  store i64 %43, i64* %45, align 8, !dbg !4087
  store i32 0, i32* %4, align 4, !dbg !4088
  br label %51, !dbg !4088

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4089
  %48 = load i64, i64* %6, align 8, !dbg !4090
  %49 = load i32, i32* %7, align 4, !dbg !4091
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4092
  store i32 %50, i32* %4, align 4, !dbg !4093
  br label %51, !dbg !4093

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4094
  ret i32 %52, !dbg !4094
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !4095 {
  %1 = call i32* @__errno_location() #22, !dbg !4098
  store i32 12, i32* %1, align 4, !dbg !4099
  ret i8* null, !dbg !4100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4101 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4102, metadata !DIExpression()), !dbg !4103
  %3 = load i64, i64* %2, align 8, !dbg !4104
  %4 = icmp ule i64 %3, -1, !dbg !4105
  br i1 %4, label %5, label %8, !dbg !4104

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4106
  %7 = call noalias i8* @malloc(i64 noundef %6) #19, !dbg !4107
  br label %10, !dbg !4104

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #24, !dbg !4108
  br label %10, !dbg !4104

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4104
  ret i8* %11, !dbg !4109
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4110 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4111, metadata !DIExpression()), !dbg !4112
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4113, metadata !DIExpression()), !dbg !4114
  %5 = load i64, i64* %4, align 8, !dbg !4115
  %6 = icmp ule i64 %5, -1, !dbg !4116
  br i1 %6, label %7, label %11, !dbg !4115

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4117
  %9 = load i64, i64* %4, align 8, !dbg !4118
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4119
  br label %13, !dbg !4115

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !4120
  br label %13, !dbg !4115

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4115
  ret i8* %14, !dbg !4121
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4122 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4123, metadata !DIExpression()), !dbg !4124
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4125, metadata !DIExpression()), !dbg !4126
  %6 = load i64, i64* %4, align 8, !dbg !4127
  %7 = icmp ult i64 -1, %6, !dbg !4129
  br i1 %7, label %8, label %14, !dbg !4130

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4131
  %10 = icmp ne i64 %9, 0, !dbg !4134
  br i1 %10, label %11, label %13, !dbg !4135

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !4136
  store i8* %12, i8** %3, align 8, !dbg !4137
  br label %27, !dbg !4137

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4138
  br label %14, !dbg !4139

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4140
  %16 = icmp ult i64 -1, %15, !dbg !4142
  br i1 %16, label %17, label %23, !dbg !4143

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4144
  %19 = icmp ne i64 %18, 0, !dbg !4147
  br i1 %19, label %20, label %22, !dbg !4148

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #24, !dbg !4149
  store i8* %21, i8** %3, align 8, !dbg !4150
  br label %27, !dbg !4150

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4151
  br label %23, !dbg !4152

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4153
  %25 = load i64, i64* %5, align 8, !dbg !4154
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #19, !dbg !4155
  store i8* %26, i8** %3, align 8, !dbg !4156
  br label %27, !dbg !4156

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4157
  ret i8* %28, !dbg !4157
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4158 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4159, metadata !DIExpression()), !dbg !4160
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4161, metadata !DIExpression()), !dbg !4162
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4163, metadata !DIExpression()), !dbg !4164
  %7 = load i64, i64* %5, align 8, !dbg !4165
  %8 = icmp ule i64 %7, -1, !dbg !4166
  br i1 %8, label %9, label %17, !dbg !4167

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4168
  %11 = icmp ule i64 %10, -1, !dbg !4169
  br i1 %11, label %12, label %17, !dbg !4165

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4170
  %14 = load i64, i64* %5, align 8, !dbg !4171
  %15 = load i64, i64* %6, align 8, !dbg !4172
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4173
  br label %19, !dbg !4165

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #24, !dbg !4174
  br label %19, !dbg !4165

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4165
  ret i8* %20, !dbg !4175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4176 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4181, metadata !DIExpression()), !dbg !4182
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4183, metadata !DIExpression()), !dbg !4184
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4185, metadata !DIExpression()), !dbg !4186
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4187, metadata !DIExpression()), !dbg !4188
  %11 = load i8*, i8** %7, align 8, !dbg !4189
  %12 = icmp eq i8* %11, null, !dbg !4191
  br i1 %12, label %13, label %14, !dbg !4192

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4193
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.175, i64 0, i64 0), i8** %7, align 8, !dbg !4195
  store i64 1, i64* %8, align 8, !dbg !4196
  br label %14, !dbg !4197

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4198
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4200
  br i1 %16, label %17, label %18, !dbg !4201

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4202
  br label %18, !dbg !4203

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4204, metadata !DIExpression()), !dbg !4205
  %19 = load i32*, i32** %6, align 8, !dbg !4206
  %20 = load i8*, i8** %7, align 8, !dbg !4207
  %21 = load i64, i64* %8, align 8, !dbg !4208
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4209
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #19, !dbg !4210
  store i64 %23, i64* %10, align 8, !dbg !4205
  %24 = load i64, i64* %10, align 8, !dbg !4211
  %25 = icmp ult i64 %24, -3, !dbg !4213
  br i1 %25, label %26, label %32, !dbg !4214

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4215
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #21, !dbg !4216
  %29 = icmp ne i32 %28, 0, !dbg !4216
  br i1 %29, label %32, label %30, !dbg !4217

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4218
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4219
  br label %32, !dbg !4219

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4220
  %34 = icmp eq i64 %33, -3, !dbg !4222
  br i1 %34, label %35, label %36, !dbg !4223

35:                                               ; preds = %32
  call void @abort() #20, !dbg !4224
  unreachable, !dbg !4224

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4225
  %38 = icmp ule i64 -2, %37, !dbg !4227
  br i1 %38, label %39, label %53, !dbg !4228

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4229
  %41 = icmp ne i64 %40, 0, !dbg !4230
  br i1 %41, label %42, label %53, !dbg !4231

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4232
  br i1 %43, label %53, label %44, !dbg !4233

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4234
  %46 = icmp ne i32* %45, null, !dbg !4237
  br i1 %46, label %47, label %52, !dbg !4238

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4239
  %49 = load i8, i8* %48, align 1, !dbg !4240
  %50 = zext i8 %49 to i32, !dbg !4241
  %51 = load i32*, i32** %6, align 8, !dbg !4242
  store i32 %50, i32* %51, align 4, !dbg !4243
  br label %52, !dbg !4244

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4245
  br label %55, !dbg !4245

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4246
  store i64 %54, i64* %5, align 8, !dbg !4247
  br label %55, !dbg !4247

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4248
  ret i64 %56, !dbg !4248
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4249 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4264, metadata !DIExpression()), !dbg !4265
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4266
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4267
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4267
  ret void, !dbg !4268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4269 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4272, metadata !DIExpression()), !dbg !4273
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4274, metadata !DIExpression()), !dbg !4275
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4276, metadata !DIExpression()), !dbg !4277
  %7 = load i8*, i8** %4, align 8, !dbg !4278
  %8 = load i8*, i8** %5, align 8, !dbg !4279
  %9 = load i64, i64* %6, align 8, !dbg !4280
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #21, !dbg !4281
  %11 = icmp ne i32 %10, 0, !dbg !4282
  %12 = xor i1 %11, true, !dbg !4282
  ret i1 %12, !dbg !4283
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_nanosleep(%struct.timespec* noundef nonnull %0, %struct.timespec* noundef %1) #4 !dbg !4284 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %4, metadata !4294, metadata !DIExpression()), !dbg !4295
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %5, metadata !4296, metadata !DIExpression()), !dbg !4297
  %10 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !4298
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1, !dbg !4300
  %12 = load i64, i64* %11, align 8, !dbg !4300
  %13 = icmp slt i64 %12, 0, !dbg !4301
  br i1 %13, label %19, label %14, !dbg !4302

14:                                               ; preds = %2
  %15 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !4303
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1, !dbg !4304
  %17 = load i64, i64* %16, align 8, !dbg !4304
  %18 = icmp sle i64 1000000000, %17, !dbg !4305
  br i1 %18, label %19, label %21, !dbg !4306

19:                                               ; preds = %14, %2
  %20 = call i32* @__errno_location() #22, !dbg !4307
  store i32 22, i32* %20, align 4, !dbg !4309
  store i32 -1, i32* %3, align 4, !dbg !4310
  br label %57, !dbg !4310

21:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4311, metadata !DIExpression()), !dbg !4314
  store i64 2073600, i64* %6, align 8, !dbg !4314
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4315, metadata !DIExpression()), !dbg !4316
  %22 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !4317
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 0, !dbg !4318
  %24 = load i64, i64* %23, align 8, !dbg !4318
  store i64 %24, i64* %7, align 8, !dbg !4316
  call void @llvm.dbg.declare(metadata %struct.timespec* %8, metadata !4319, metadata !DIExpression()), !dbg !4320
  %25 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !4321
  %26 = bitcast %struct.timespec* %8 to i8*, !dbg !4322
  %27 = bitcast %struct.timespec* %25 to i8*, !dbg !4322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false), !dbg !4322
  br label %28, !dbg !4323

28:                                               ; preds = %50, %21
  %29 = load i64, i64* %7, align 8, !dbg !4324
  %30 = icmp slt i64 2073600, %29, !dbg !4325
  br i1 %30, label %31, label %52, !dbg !4323

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0, !dbg !4326
  store i64 2073600, i64* %32, align 8, !dbg !4328
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4329, metadata !DIExpression()), !dbg !4330
  %33 = load %struct.timespec*, %struct.timespec** %5, align 8, !dbg !4331
  %34 = call i32 @nanosleep(%struct.timespec* noundef %8, %struct.timespec* noundef %33), !dbg !4332
  store i32 %34, i32* %9, align 4, !dbg !4330
  %35 = load i64, i64* %7, align 8, !dbg !4333
  %36 = sub nsw i64 %35, 2073600, !dbg !4333
  store i64 %36, i64* %7, align 8, !dbg !4333
  %37 = load i32, i32* %9, align 4, !dbg !4334
  %38 = icmp ne i32 %37, 0, !dbg !4334
  br i1 %38, label %39, label %50, !dbg !4336

39:                                               ; preds = %31
  %40 = load %struct.timespec*, %struct.timespec** %5, align 8, !dbg !4337
  %41 = icmp ne %struct.timespec* %40, null, !dbg !4337
  br i1 %41, label %42, label %48, !dbg !4340

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8, !dbg !4341
  %44 = load %struct.timespec*, %struct.timespec** %5, align 8, !dbg !4342
  %45 = getelementptr inbounds %struct.timespec, %struct.timespec* %44, i32 0, i32 0, !dbg !4343
  %46 = load i64, i64* %45, align 8, !dbg !4344
  %47 = add nsw i64 %46, %43, !dbg !4344
  store i64 %47, i64* %45, align 8, !dbg !4344
  br label %48, !dbg !4342

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %9, align 4, !dbg !4345
  store i32 %49, i32* %3, align 4, !dbg !4346
  br label %57, !dbg !4346

50:                                               ; preds = %31
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1, !dbg !4347
  store i64 0, i64* %51, align 8, !dbg !4348
  br label %28, !dbg !4323, !llvm.loop !4349

52:                                               ; preds = %28
  %53 = load i64, i64* %7, align 8, !dbg !4351
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0, !dbg !4352
  store i64 %53, i64* %54, align 8, !dbg !4353
  %55 = load %struct.timespec*, %struct.timespec** %5, align 8, !dbg !4354
  %56 = call i32 @nanosleep(%struct.timespec* noundef %8, %struct.timespec* noundef %55), !dbg !4355
  store i32 %56, i32* %3, align 4, !dbg !4356
  br label %57, !dbg !4356

57:                                               ; preds = %52, %48, %19
  %58 = load i32, i32* %3, align 4, !dbg !4357
  ret i32 %58, !dbg !4357
}

declare i32 @nanosleep(%struct.timespec* noundef, %struct.timespec* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4358 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4360, metadata !DIExpression()), !dbg !4361
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4362, metadata !DIExpression()), !dbg !4363
  %5 = load i8*, i8** %3, align 8, !dbg !4364
  %6 = load i64, i64* %4, align 8, !dbg !4365
  %7 = icmp ne i64 %6, 0, !dbg !4365
  br i1 %7, label %8, label %10, !dbg !4365

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4366
  br label %11, !dbg !4365

10:                                               ; preds = %2
  br label %11, !dbg !4365

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4365
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #19, !dbg !4367
  ret i8* %13, !dbg !4368
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4369 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4370, metadata !DIExpression()), !dbg !4371
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4372, metadata !DIExpression()), !dbg !4373
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4374, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4376, metadata !DIExpression()), !dbg !4377
  %9 = load i64, i64* %7, align 8, !dbg !4378
  %10 = icmp ult i64 %9, 0, !dbg !4378
  br i1 %10, label %11, label %60, !dbg !4378

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4378
  %13 = icmp ult i64 %12, 0, !dbg !4378
  br i1 %13, label %14, label %37, !dbg !4378

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4378

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4378
  %17 = load i64, i64* %7, align 8, !dbg !4378
  %18 = udiv i64 -1, %17, !dbg !4378
  %19 = icmp ult i64 %16, %18, !dbg !4378
  br i1 %19, label %92, label %96, !dbg !4378

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4378

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4378
  %23 = icmp ult i64 %22, 1, !dbg !4378
  br i1 %23, label %27, label %28, !dbg !4378

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4378
  %26 = icmp ult i64 0, %25, !dbg !4378
  br i1 %26, label %27, label %28, !dbg !4378

27:                                               ; preds = %24, %21
  br label %32, !dbg !4378

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4378
  %30 = sub i64 0, %29, !dbg !4378
  %31 = udiv i64 -1, %30, !dbg !4378
  br label %32, !dbg !4378

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4378
  %34 = load i64, i64* %6, align 8, !dbg !4378
  %35 = sub i64 -1, %34, !dbg !4378
  %36 = icmp ule i64 %33, %35, !dbg !4378
  br i1 %36, label %92, label %96, !dbg !4378

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4378

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4378

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4378

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4378
  %42 = icmp eq i64 %41, -1, !dbg !4378
  br i1 %42, label %43, label %55, !dbg !4378

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4378

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4378
  %46 = add i64 %45, 0, !dbg !4378
  %47 = icmp ult i64 0, %46, !dbg !4378
  br i1 %47, label %92, label %96, !dbg !4378

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4378
  %50 = icmp ult i64 0, %49, !dbg !4378
  br i1 %50, label %51, label %96, !dbg !4378

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4378
  %53 = sub i64 %52, 1, !dbg !4378
  %54 = icmp ult i64 -1, %53, !dbg !4378
  br i1 %54, label %92, label %96, !dbg !4378

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4378
  %57 = udiv i64 0, %56, !dbg !4378
  %58 = load i64, i64* %6, align 8, !dbg !4378
  %59 = icmp ult i64 %57, %58, !dbg !4378
  br i1 %59, label %92, label %96, !dbg !4378

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4378
  %62 = icmp eq i64 %61, 0, !dbg !4378
  br i1 %62, label %63, label %64, !dbg !4378

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4378

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4378
  %66 = icmp ult i64 %65, 0, !dbg !4378
  br i1 %66, label %67, label %87, !dbg !4378

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4378

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4378

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4378

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4378
  %72 = icmp eq i64 %71, -1, !dbg !4378
  br i1 %72, label %73, label %82, !dbg !4378

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4378

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4378
  %76 = add i64 %75, 0, !dbg !4378
  %77 = icmp ult i64 0, %76, !dbg !4378
  br i1 %77, label %92, label %96, !dbg !4378

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4378
  %80 = sub i64 %79, 1, !dbg !4378
  %81 = icmp ult i64 -1, %80, !dbg !4378
  br i1 %81, label %92, label %96, !dbg !4378

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4378
  %84 = udiv i64 0, %83, !dbg !4378
  %85 = load i64, i64* %7, align 8, !dbg !4378
  %86 = icmp ult i64 %84, %85, !dbg !4378
  br i1 %86, label %92, label %96, !dbg !4378

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4378
  %89 = udiv i64 -1, %88, !dbg !4378
  %90 = load i64, i64* %6, align 8, !dbg !4378
  %91 = icmp ult i64 %89, %90, !dbg !4378
  br i1 %91, label %92, label %96, !dbg !4378

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4378
  %94 = load i64, i64* %7, align 8, !dbg !4378
  %95 = mul i64 %93, %94, !dbg !4378
  store i64 %95, i64* %8, align 8, !dbg !4378
  br label %100, !dbg !4378

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4378
  %98 = load i64, i64* %7, align 8, !dbg !4378
  %99 = mul i64 %97, %98, !dbg !4378
  store i64 %99, i64* %8, align 8, !dbg !4378
  br label %100, !dbg !4378

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4378
  %102 = icmp ne i32 %101, 0, !dbg !4378
  br i1 %102, label %103, label %105, !dbg !4380

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #22, !dbg !4381
  store i32 12, i32* %104, align 4, !dbg !4383
  store i8* null, i8** %4, align 8, !dbg !4384
  br label %109, !dbg !4384

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4385
  %107 = load i64, i64* %8, align 8, !dbg !4386
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4387
  store i8* %108, i8** %4, align 8, !dbg !4388
  br label %109, !dbg !4388

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4389
  ret i8* %110, !dbg !4389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local [2 x i64] @make_timespec(i64 noundef %0, i64 noundef %1) #4 !dbg !4390 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4397, metadata !DIExpression()), !dbg !4398
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4399, metadata !DIExpression()), !dbg !4400
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0, !dbg !4401
  %7 = load i64, i64* %4, align 8, !dbg !4402
  store i64 %7, i64* %6, align 8, !dbg !4401
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1, !dbg !4401
  %9 = load i64, i64* %5, align 8, !dbg !4403
  store i64 %9, i64* %8, align 8, !dbg !4401
  %10 = bitcast %struct.timespec* %3 to [2 x i64]*, !dbg !4404
  %11 = load [2 x i64], [2 x i64]* %10, align 8, !dbg !4404
  ret [2 x i64] %11, !dbg !4404
}

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local i32 @timespec_cmp([2 x i64] %0, [2 x i64] %1) #18 !dbg !4405 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = bitcast %struct.timespec* %3 to [2 x i64]*
  store [2 x i64] %0, [2 x i64]* %5, align 8
  %6 = bitcast %struct.timespec* %4 to [2 x i64]*
  store [2 x i64] %1, [2 x i64]* %6, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec* %3, metadata !4408, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.declare(metadata %struct.timespec* %4, metadata !4410, metadata !DIExpression()), !dbg !4411
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0, !dbg !4412
  %8 = load i64, i64* %7, align 8, !dbg !4412
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0, !dbg !4412
  %10 = load i64, i64* %9, align 8, !dbg !4412
  %11 = icmp sgt i64 %8, %10, !dbg !4412
  %12 = zext i1 %11 to i32, !dbg !4412
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0, !dbg !4412
  %14 = load i64, i64* %13, align 8, !dbg !4412
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0, !dbg !4412
  %16 = load i64, i64* %15, align 8, !dbg !4412
  %17 = icmp slt i64 %14, %16, !dbg !4412
  %18 = zext i1 %17 to i32, !dbg !4412
  %19 = sub nsw i32 %12, %18, !dbg !4412
  %20 = mul nsw i32 2, %19, !dbg !4413
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1, !dbg !4414
  %22 = load i64, i64* %21, align 8, !dbg !4414
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !4414
  %24 = load i64, i64* %23, align 8, !dbg !4414
  %25 = icmp sgt i64 %22, %24, !dbg !4414
  %26 = zext i1 %25 to i32, !dbg !4414
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1, !dbg !4414
  %28 = load i64, i64* %27, align 8, !dbg !4414
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1, !dbg !4414
  %30 = load i64, i64* %29, align 8, !dbg !4414
  %31 = icmp slt i64 %28, %30, !dbg !4414
  %32 = zext i1 %31 to i32, !dbg !4414
  %33 = sub nsw i32 %26, %32, !dbg !4414
  %34 = add nsw i32 %20, %33, !dbg !4415
  ret i32 %34, !dbg !4416
}

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local i32 @timespec_sign([2 x i64] %0) #18 !dbg !4417 {
  %2 = alloca %struct.timespec, align 8
  %3 = bitcast %struct.timespec* %2 to [2 x i64]*
  store [2 x i64] %0, [2 x i64]* %3, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec* %2, metadata !4420, metadata !DIExpression()), !dbg !4421
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0, !dbg !4422
  %5 = load i64, i64* %4, align 8, !dbg !4422
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1, !dbg !4422
  %7 = load i64, i64* %6, align 8, !dbg !4422
  %8 = or i64 %5, %7, !dbg !4422
  %9 = icmp sgt i64 %8, 0, !dbg !4422
  %10 = zext i1 %9 to i32, !dbg !4422
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0, !dbg !4422
  %12 = load i64, i64* %11, align 8, !dbg !4422
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1, !dbg !4422
  %14 = load i64, i64* %13, align 8, !dbg !4422
  %15 = or i64 %12, %14, !dbg !4422
  %16 = icmp slt i64 %15, 0, !dbg !4422
  %17 = zext i1 %16 to i32, !dbg !4422
  %18 = sub nsw i32 %10, %17, !dbg !4422
  ret i32 %18, !dbg !4423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @timespectod([2 x i64] %0) #4 !dbg !4424 {
  %2 = alloca %struct.timespec, align 8
  %3 = bitcast %struct.timespec* %2 to [2 x i64]*
  store [2 x i64] %0, [2 x i64]* %3, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec* %2, metadata !4427, metadata !DIExpression()), !dbg !4428
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0, !dbg !4429
  %5 = load i64, i64* %4, align 8, !dbg !4429
  %6 = sitofp i64 %5 to double, !dbg !4430
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1, !dbg !4431
  %8 = load i64, i64* %7, align 8, !dbg !4431
  %9 = sitofp i64 %8 to double, !dbg !4432
  %10 = fdiv double %9, 1.000000e+09, !dbg !4433
  %11 = fadd double %6, %10, !dbg !4434
  ret double %11, !dbg !4435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4436 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4439, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4441, metadata !DIExpression()), !dbg !4445
  %5 = load i32, i32* %3, align 4, !dbg !4446
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4448
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4449
  %8 = icmp ne i32 %7, 0, !dbg !4449
  br i1 %8, label %9, label %10, !dbg !4450

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4451
  br label %18, !dbg !4451

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4452
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.190, i64 0, i64 0)), !dbg !4454
  br i1 %12, label %17, label %13, !dbg !4455

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4456
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.191, i64 0, i64 0)), !dbg !4457
  br i1 %15, label %17, label %16, !dbg !4458

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4459
  br label %18, !dbg !4459

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4460
  br label %18, !dbg !4460

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4461
  ret i1 %19, !dbg !4461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4462 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4465, metadata !DIExpression()), !dbg !4466
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4467, metadata !DIExpression()), !dbg !4468
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4469, metadata !DIExpression()), !dbg !4470
  %7 = load i32, i32* %4, align 4, !dbg !4471
  %8 = load i8*, i8** %5, align 8, !dbg !4472
  %9 = load i64, i64* %6, align 8, !dbg !4473
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4474
  ret i32 %10, !dbg !4475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4476 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4479, metadata !DIExpression()), !dbg !4480
  %3 = load i32, i32* %2, align 4, !dbg !4481
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4482
  ret i8* %4, !dbg !4483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4484 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4485, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4487, metadata !DIExpression()), !dbg !4488
  %4 = load i32, i32* %2, align 4, !dbg !4489
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #19, !dbg !4490
  store i8* %5, i8** %3, align 8, !dbg !4488
  %6 = load i8*, i8** %3, align 8, !dbg !4491
  ret i8* %6, !dbg !4492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4493 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4494, metadata !DIExpression()), !dbg !4495
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4496, metadata !DIExpression()), !dbg !4497
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4498, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4500, metadata !DIExpression()), !dbg !4501
  %10 = load i32, i32* %5, align 4, !dbg !4502
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4503
  store i8* %11, i8** %8, align 8, !dbg !4501
  %12 = load i8*, i8** %8, align 8, !dbg !4504
  %13 = icmp eq i8* %12, null, !dbg !4506
  br i1 %13, label %14, label %21, !dbg !4507

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4508
  %16 = icmp ugt i64 %15, 0, !dbg !4511
  br i1 %16, label %17, label %20, !dbg !4512

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4513
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4513
  store i8 0, i8* %19, align 1, !dbg !4514
  br label %20, !dbg !4513

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4515
  br label %45, !dbg !4515

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4516, metadata !DIExpression()), !dbg !4518
  %22 = load i8*, i8** %8, align 8, !dbg !4519
  %23 = call i64 @strlen(i8* noundef %22) #21, !dbg !4520
  store i64 %23, i64* %9, align 8, !dbg !4518
  %24 = load i64, i64* %9, align 8, !dbg !4521
  %25 = load i64, i64* %7, align 8, !dbg !4523
  %26 = icmp ult i64 %24, %25, !dbg !4524
  br i1 %26, label %27, label %32, !dbg !4525

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4526
  %29 = load i8*, i8** %8, align 8, !dbg !4528
  %30 = load i64, i64* %9, align 8, !dbg !4529
  %31 = add i64 %30, 1, !dbg !4530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4531
  store i32 0, i32* %4, align 4, !dbg !4532
  br label %45, !dbg !4532

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4533
  %34 = icmp ugt i64 %33, 0, !dbg !4536
  br i1 %34, label %35, label %44, !dbg !4537

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4538
  %37 = load i8*, i8** %8, align 8, !dbg !4540
  %38 = load i64, i64* %7, align 8, !dbg !4541
  %39 = sub i64 %38, 1, !dbg !4542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4543
  %40 = load i8*, i8** %6, align 8, !dbg !4544
  %41 = load i64, i64* %7, align 8, !dbg !4545
  %42 = sub i64 %41, 1, !dbg !4546
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4544
  store i8 0, i8* %43, align 1, !dbg !4547
  br label %44, !dbg !4548

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4549
  br label %45, !dbg !4549

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4550
  ret i32 %46, !dbg !4550
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
attributes #18 = { noinline nounwind optnone readnone uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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

!llvm.dbg.cu = !{!9, !36, !257, !41, !259, !49, !203, !261, !83, !100, !111, !118, !263, !265, !195, !271, !291, !293, !209, !300, !302, !304, !311, !313, !315, !317, !238, !319, !321, !323, !329, !331, !334, !336, !338, !340}
!llvm.ident = !{!342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342, !342}
!llvm.module.flags = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !30, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !33)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !28, globals: !32, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/sleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "382b2cab9ca796c7040797f94b92cf12")
!11 = !{!12}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 46, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!16 = !DIEnumerator(name: "_ISupper", value: 256)
!17 = !DIEnumerator(name: "_ISlower", value: 512)
!18 = !DIEnumerator(name: "_ISalpha", value: 1024)
!19 = !DIEnumerator(name: "_ISdigit", value: 2048)
!20 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!21 = !DIEnumerator(name: "_ISspace", value: 8192)
!22 = !DIEnumerator(name: "_ISprint", value: 16384)
!23 = !DIEnumerator(name: "_ISgraph", value: 32768)
!24 = !DIEnumerator(name: "_ISblank", value: 1)
!25 = !DIEnumerator(name: "_IScntrl", value: 2)
!26 = !DIEnumerator(name: "_ISpunct", value: 4)
!27 = !DIEnumerator(name: "_ISalnum", value: 8)
!28 = !{!6, !29, !30, !31}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !{!0}
!33 = !{}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "Version", scope: !36, file: !37, line: 3, type: !6, isLocal: false, isDefinition: true)
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !38, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!38 = !{!34}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "file_name", scope: !41, file: !42, line: 45, type: !6, isLocal: true, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !43, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!43 = !{!39, !44}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !41, file: !42, line: 55, type: !46, isLocal: true, isDefinition: true)
!46 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !49, file: !50, line: 66, type: !78, isLocal: false, isDefinition: true)
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !51, globals: !52, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!51 = !{!29}
!52 = !{!53, !72, !47, !74, !76}
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "old_file_name", scope: !55, file: !50, line: 304, type: !6, isLocal: true, isDefinition: true)
!55 = distinct !DISubprogram(name: "verror_at_line", scope: !50, file: !50, line: 298, type: !56, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !33)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !30, !30, !6, !14, !6, !58}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !59, line: 52, baseType: !60)
!59 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !61, line: 32, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !63, baseType: !64)
!63 = !DIFile(filename: "lib/error.c", directory: "/src")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !65, size: 256, elements: !66)
!65 = !DINamespace(name: "std", scope: null)
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !64, file: !63, baseType: !29, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !64, file: !63, baseType: !29, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !64, file: !63, baseType: !29, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !64, file: !63, baseType: !30, size: 32, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !64, file: !63, baseType: !30, size: 32, offset: 224)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "old_line_number", scope: !55, file: !50, line: 305, type: !14, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "error_message_count", scope: !49, file: !50, line: 69, type: !14, isLocal: false, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !49, file: !50, line: 295, type: !30, isLocal: false, isDefinition: true)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "long_options", scope: !83, file: !84, line: 34, type: !86, isLocal: true, isDefinition: true)
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !85, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!85 = !{!81}
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 768, elements: !96)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !89, line: 50, size: 256, elements: !90)
!89 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!90 = !{!91, !92, !93, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !89, line: 52, baseType: !6, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !88, file: !89, line: 55, baseType: !30, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !88, file: !89, line: 56, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !89, line: 57, baseType: !30, size: 32, offset: 192)
!96 = !{!97}
!97 = !DISubrange(count: 3)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "program_name", scope: !100, file: !101, line: 31, type: !6, isLocal: false, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !102, globals: !104, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!104 = !{!98}
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "utf07FF", scope: !107, file: !108, line: 46, type: !113, isLocal: true, isDefinition: true)
!107 = distinct !DISubprogram(name: "proper_name_lite", scope: !108, file: !108, line: 38, type: !109, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !33)
!108 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!109 = !DISubroutineType(types: !110)
!110 = !{!6, !6, !6}
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !112, splitDebugInlining: false, nameTableKind: None)
!112 = !{!105}
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 2)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !118, file: !119, line: 76, type: !189, isLocal: false, isDefinition: true)
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !140, globals: !144, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!120 = !{!121, !135, !12}
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !122, line: 42, baseType: !14, size: 32, elements: !123)
!122 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!124 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!125 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!126 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!127 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!128 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!129 = !DIEnumerator(name: "c_quoting_style", value: 5)
!130 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!131 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!132 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!133 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!134 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !122, line: 254, baseType: !14, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!138 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!139 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!140 = !{!30, !31, !141}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 46, baseType: !143)
!142 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!143 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!144 = !{!116, !145, !151, !163, !165, !170, !178, !185, !187}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !118, file: !119, line: 92, type: !147, isLocal: false, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 320, elements: !149)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!149 = !{!150}
!150 = !DISubrange(count: 10)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !118, file: !119, line: 1040, type: !153, isLocal: false, isDefinition: true)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !119, line: 56, size: 448, elements: !154)
!154 = !{!155, !156, !157, !161, !162}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !153, file: !119, line: 59, baseType: !121, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !119, line: 62, baseType: !30, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !153, file: !119, line: 66, baseType: !158, size: 256, offset: 64)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !153, file: !119, line: 69, baseType: !6, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !153, file: !119, line: 72, baseType: !6, size: 64, offset: 384)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !118, file: !119, line: 107, type: !153, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "slot0", scope: !118, file: !119, line: 831, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 256)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "quote", scope: !172, file: !119, line: 228, type: !175, isLocal: true, isDefinition: true)
!172 = distinct !DISubprogram(name: "gettext_quote", scope: !119, file: !119, line: 197, type: !173, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !33)
!173 = !DISubroutineType(types: !174)
!174 = !{!6, !6, !121}
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !176)
!176 = !{!115, !177}
!177 = !DISubrange(count: 4)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "slotvec", scope: !118, file: !119, line: 834, type: !180, isLocal: true, isDefinition: true)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !119, line: 823, size: 128, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !181, file: !119, line: 825, baseType: !141, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !181, file: !119, line: 826, baseType: !103, size: 64, offset: 64)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "nslots", scope: !118, file: !119, line: 832, type: !30, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "slotvec0", scope: !118, file: !119, line: 833, type: !181, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 704, elements: !191)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!191 = !{!192}
!192 = !DISubrange(count: 11)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !195, file: !196, line: 26, type: !198, isLocal: false, isDefinition: true)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !197, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!197 = !{!193}
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 47)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "exit_failure", scope: !203, file: !204, line: 24, type: !206, isLocal: false, isDefinition: true)
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !205, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!205 = !{!201}
!206 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !209, file: !210, line: 58, type: !235, isLocal: true, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !211, globals: !234, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "lib/c-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5149e55c3d66a821d48006aa16ce6f10")
!211 = !{!103, !212}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !213, line: 24, baseType: !214)
!213 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "4752f26e930c42056083e96227ff0057")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !215, line: 41, baseType: !216)
!215 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "79eea70c97dfcbc51f94cdf9446ea8a8")
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !215, line: 27, size: 1856, elements: !218)
!218 = !{!219, !225, !228, !231, !232}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !217, file: !215, line: 30, baseType: !220, size: 832)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 832, elements: !223)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !215, line: 30, flags: DIFlagFwdDecl)
!223 = !{!224}
!224 = !DISubrange(count: 13)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !217, file: !215, line: 33, baseType: !226, size: 64, offset: 832)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !217, file: !215, line: 34, baseType: !229, size: 64, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !217, file: !215, line: 35, baseType: !229, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !217, file: !215, line: 38, baseType: !233, size: 832, offset: 1024)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 832, elements: !223)
!234 = !{!207}
!235 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !212)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "internal_state", scope: !238, file: !239, line: 97, type: !243, isLocal: true, isDefinition: true)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !240, globals: !242, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!240 = !{!29, !141, !241}
!241 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!242 = !{!236}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !244, line: 6, baseType: !245)
!244 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !246, line: 21, baseType: !247)
!246 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 13, size: 64, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !247, file: !246, line: 15, baseType: !30, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !247, file: !246, line: 20, baseType: !251, size: 32, offset: 32)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !246, line: 16, size: 32, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !251, file: !246, line: 18, baseType: !14, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !251, file: !246, line: 19, baseType: !255, size: 32)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !256)
!256 = !{!177}
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/cl-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a67239aa557b1854772fcd1589240f00")
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/dtimespec-bound.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0d0967378d1bba0e25ccc4362284ebf4")
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !267, retainedTypes: !51, splitDebugInlining: false, nameTableKind: None)
!266 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!267 = !{!268}
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !266, line: 40, baseType: !14, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !273, retainedTypes: !290, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!273 = !{!274, !281}
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !275, file: !272, line: 188, baseType: !14, size: 32, elements: !279)
!275 = distinct !DISubprogram(name: "x2nrealloc", scope: !272, file: !272, line: 176, type: !276, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!276 = !DISubroutineType(types: !277)
!277 = !{!29, !29, !278, !141}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!279 = !{!280}
!280 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !282, file: !272, line: 228, baseType: !14, size: 32, elements: !279)
!282 = distinct !DISubprogram(name: "xpalloc", scope: !272, file: !272, line: 223, type: !283, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!283 = !DISubroutineType(types: !284)
!284 = !{!29, !29, !285, !286, !288, !286}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !287, line: 130, baseType: !288)
!287 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !142, line: 35, baseType: !289)
!289 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!290 = !{!103, !29, !46, !289, !143}
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !295, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/xnanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b6a69034949aee1e9f05553e779b94d2")
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !297, line: 10, baseType: !298)
!297 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !299, line: 160, baseType: !289)
!299 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !301, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!301 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!303 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !306, retainedTypes: !295, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "lib/dtotimespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "863541a7a9cbed8b745823733251add6")
!306 = !{!307}
!307 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !308, line: 44, baseType: !14, size: 32, elements: !309)
!308 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!309 = !{!310}
!310 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000)
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !51, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!315 = distinct !DICompileUnit(language: DW_LANG_C99, file: !316, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !51, splitDebugInlining: false, nameTableKind: None)
!316 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !51, splitDebugInlining: false, nameTableKind: None)
!318 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!321 = distinct !DICompileUnit(language: DW_LANG_C99, file: !322, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!322 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!323 = distinct !DICompileUnit(language: DW_LANG_C99, file: !324, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !325, splitDebugInlining: false, nameTableKind: None)
!324 = !DIFile(filename: "lib/nanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ea6d8d4443a961090653c9a262702e98")
!325 = !{!326}
!326 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !324, line: 37, baseType: !14, size: 32, elements: !327)
!327 = !{!328}
!328 = !DIEnumerator(name: "BILLION", value: 1000000000)
!329 = distinct !DICompileUnit(language: DW_LANG_C99, file: !330, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!330 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!331 = distinct !DICompileUnit(language: DW_LANG_C99, file: !332, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !333, splitDebugInlining: false, nameTableKind: None)
!332 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!333 = !{!46, !143, !29}
!334 = distinct !DICompileUnit(language: DW_LANG_C99, file: !335, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!335 = !DIFile(filename: "lib/timespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5a5dc74a2a0e32dcbfddb542c35410be")
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!338 = distinct !DICompileUnit(language: DW_LANG_C99, file: !339, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!339 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!340 = distinct !DICompileUnit(language: DW_LANG_C99, file: !341, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !51, splitDebugInlining: false, nameTableKind: None)
!341 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!342 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!343 = !{i32 7, !"Dwarf Version", i32 5}
!344 = !{i32 2, !"Debug Info Version", i32 3}
!345 = !{i32 1, !"wchar_size", i32 4}
!346 = !{i32 1, !"branch-target-enforcement", i32 0}
!347 = !{i32 1, !"sign-return-address", i32 0}
!348 = !{i32 1, !"sign-return-address-all", i32 0}
!349 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!350 = !{i32 7, !"PIC Level", i32 2}
!351 = !{i32 7, !"PIE Level", i32 2}
!352 = !{i32 7, !"uwtable", i32 1}
!353 = !{i32 7, !"frame-pointer", i32 1}
!354 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 36, type: !355, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !33)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !30}
!357 = !DILocalVariable(name: "status", arg: 1, scope: !354, file: !10, line: 36, type: !30)
!358 = !DILocation(line: 36, column: 12, scope: !354)
!359 = !DILocation(line: 38, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !354, file: !10, line: 38, column: 7)
!361 = !DILocation(line: 38, column: 14, scope: !360)
!362 = !DILocation(line: 38, column: 7, scope: !354)
!363 = !DILocation(line: 39, column: 5, scope: !360)
!364 = !DILocation(line: 39, column: 5, scope: !365)
!365 = distinct !DILexicalBlock(scope: !360, file: !10, line: 39, column: 5)
!366 = !DILocation(line: 42, column: 15, scope: !367)
!367 = distinct !DILexicalBlock(scope: !360, file: !10, line: 41, column: 5)
!368 = !DILocation(line: 50, column: 15, scope: !367)
!369 = !DILocation(line: 50, column: 29, scope: !367)
!370 = !DILocation(line: 42, column: 7, scope: !367)
!371 = !DILocation(line: 51, column: 7, scope: !367)
!372 = !DILocation(line: 52, column: 7, scope: !367)
!373 = !DILocation(line: 53, column: 7, scope: !367)
!374 = !DILocation(line: 55, column: 9, scope: !354)
!375 = !DILocation(line: 55, column: 3, scope: !354)
!376 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!377 = !DILocation(line: 573, column: 34, scope: !2)
!378 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!379 = !DILocation(line: 573, column: 55, scope: !2)
!380 = !DILocation(line: 581, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!382 = !DILocation(line: 581, column: 19, scope: !381)
!383 = !DILocation(line: 581, column: 7, scope: !2)
!384 = !DILocalVariable(name: "term", scope: !385, file: !3, line: 585, type: !6)
!385 = distinct !DILexicalBlock(scope: !381, file: !3, line: 582, column: 5)
!386 = !DILocation(line: 585, column: 19, scope: !385)
!387 = !DILocation(line: 585, column: 26, scope: !385)
!388 = !DILocation(line: 586, column: 23, scope: !385)
!389 = !DILocation(line: 586, column: 28, scope: !385)
!390 = !DILocation(line: 586, column: 33, scope: !385)
!391 = !DILocation(line: 586, column: 32, scope: !385)
!392 = !DILocation(line: 586, column: 38, scope: !385)
!393 = !DILocation(line: 586, column: 48, scope: !385)
!394 = !DILocation(line: 586, column: 41, scope: !385)
!395 = !DILocation(line: 586, column: 19, scope: !385)
!396 = !DILocation(line: 587, column: 5, scope: !385)
!397 = !DILocation(line: 588, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!399 = !DILocation(line: 588, column: 7, scope: !2)
!400 = !DILocation(line: 590, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !3, line: 589, column: 5)
!402 = !DILocation(line: 591, column: 7, scope: !401)
!403 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !46)
!404 = !DILocation(line: 594, column: 8, scope: !2)
!405 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!406 = !DILocation(line: 595, column: 15, scope: !2)
!407 = !DILocation(line: 595, column: 28, scope: !2)
!408 = !DILocation(line: 595, column: 45, scope: !2)
!409 = !DILocation(line: 595, column: 37, scope: !2)
!410 = !DILocation(line: 595, column: 35, scope: !2)
!411 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!412 = !DILocation(line: 596, column: 15, scope: !2)
!413 = !DILocation(line: 596, column: 37, scope: !2)
!414 = !DILocation(line: 596, column: 29, scope: !2)
!415 = !DILocation(line: 597, column: 8, scope: !416)
!416 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!417 = !DILocation(line: 597, column: 7, scope: !2)
!418 = !DILocation(line: 599, column: 21, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !3, line: 598, column: 5)
!420 = !DILocation(line: 599, column: 19, scope: !419)
!421 = !DILocation(line: 602, column: 20, scope: !419)
!422 = !DILocation(line: 603, column: 5, scope: !419)
!423 = !DILocation(line: 604, column: 12, scope: !424)
!424 = distinct !DILexicalBlock(scope: !416, file: !3, line: 604, column: 12)
!425 = !DILocation(line: 604, column: 27, scope: !424)
!426 = !DILocation(line: 604, column: 24, scope: !424)
!427 = !DILocation(line: 604, column: 12, scope: !416)
!428 = !DILocalVariable(name: "s", scope: !429, file: !3, line: 608, type: !6)
!429 = distinct !DILexicalBlock(scope: !424, file: !3, line: 605, column: 5)
!430 = !DILocation(line: 608, column: 19, scope: !429)
!431 = !DILocation(line: 608, column: 23, scope: !429)
!432 = !DILocalVariable(name: "spaces", scope: !429, file: !3, line: 609, type: !141)
!433 = !DILocation(line: 609, column: 14, scope: !429)
!434 = !DILocation(line: 610, column: 7, scope: !429)
!435 = !DILocation(line: 610, column: 14, scope: !429)
!436 = !DILocation(line: 610, column: 18, scope: !429)
!437 = !DILocation(line: 610, column: 16, scope: !429)
!438 = !DILocation(line: 610, column: 30, scope: !429)
!439 = !DILocation(line: 610, column: 33, scope: !429)
!440 = !DILocation(line: 610, column: 40, scope: !429)
!441 = !DILocation(line: 0, scope: !429)
!442 = !DILocation(line: 611, column: 21, scope: !429)
!443 = !DILocation(line: 611, column: 20, scope: !429)
!444 = !DILocation(line: 611, column: 19, scope: !429)
!445 = !DILocation(line: 611, column: 16, scope: !429)
!446 = distinct !{!446, !434, !442, !447}
!447 = !{!"llvm.loop.mustprogress"}
!448 = !DILocation(line: 612, column: 11, scope: !449)
!449 = distinct !DILexicalBlock(scope: !429, file: !3, line: 612, column: 11)
!450 = !DILocation(line: 612, column: 18, scope: !449)
!451 = !DILocation(line: 612, column: 11, scope: !429)
!452 = !DILocation(line: 615, column: 25, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !3, line: 613, column: 9)
!454 = !DILocation(line: 615, column: 23, scope: !453)
!455 = !DILocation(line: 616, column: 24, scope: !453)
!456 = !DILocation(line: 617, column: 9, scope: !453)
!457 = !DILocation(line: 618, column: 5, scope: !429)
!458 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !141)
!459 = !DILocation(line: 620, column: 10, scope: !2)
!460 = !DILocation(line: 620, column: 32, scope: !2)
!461 = !DILocation(line: 620, column: 23, scope: !2)
!462 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!463 = !DILocation(line: 625, column: 15, scope: !2)
!464 = !DILocation(line: 625, column: 27, scope: !2)
!465 = !DILocation(line: 625, column: 41, scope: !2)
!466 = !DILocation(line: 625, column: 39, scope: !2)
!467 = !DILocation(line: 626, column: 3, scope: !2)
!468 = !DILocation(line: 626, column: 11, scope: !2)
!469 = !DILocation(line: 626, column: 10, scope: !2)
!470 = !DILocation(line: 626, column: 21, scope: !2)
!471 = !DILocation(line: 626, column: 25, scope: !2)
!472 = !DILocation(line: 626, column: 24, scope: !2)
!473 = !DILocation(line: 626, column: 35, scope: !2)
!474 = !DILocation(line: 0, scope: !2)
!475 = !DILocation(line: 628, column: 12, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 628, column: 11)
!477 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!478 = !DILocation(line: 628, column: 11, scope: !476)
!479 = !DILocation(line: 628, column: 22, scope: !476)
!480 = !DILocation(line: 628, column: 29, scope: !476)
!481 = !DILocation(line: 628, column: 34, scope: !476)
!482 = !DILocation(line: 628, column: 44, scope: !476)
!483 = !DILocation(line: 628, column: 32, scope: !476)
!484 = !DILocation(line: 628, column: 49, scope: !476)
!485 = !DILocation(line: 628, column: 11, scope: !477)
!486 = !DILocation(line: 629, column: 22, scope: !476)
!487 = !DILocation(line: 629, column: 9, scope: !476)
!488 = !DILocation(line: 630, column: 11, scope: !489)
!489 = distinct !DILexicalBlock(scope: !477, file: !3, line: 630, column: 11)
!490 = !DILocation(line: 630, column: 11, scope: !477)
!491 = !DILocation(line: 632, column: 16, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 632, column: 15)
!493 = distinct !DILexicalBlock(scope: !489, file: !3, line: 631, column: 9)
!494 = !DILocation(line: 632, column: 15, scope: !492)
!495 = !DILocation(line: 632, column: 26, scope: !492)
!496 = !DILocation(line: 632, column: 34, scope: !492)
!497 = !DILocation(line: 632, column: 37, scope: !492)
!498 = !DILocation(line: 632, column: 15, scope: !493)
!499 = !DILocation(line: 633, column: 13, scope: !492)
!500 = !DILocation(line: 636, column: 16, scope: !501)
!501 = distinct !DILexicalBlock(scope: !493, file: !3, line: 636, column: 15)
!502 = !DILocation(line: 636, column: 29, scope: !501)
!503 = !DILocation(line: 636, column: 34, scope: !501)
!504 = !DILocation(line: 636, column: 44, scope: !501)
!505 = !DILocation(line: 636, column: 32, scope: !501)
!506 = !DILocation(line: 636, column: 49, scope: !501)
!507 = !DILocation(line: 636, column: 15, scope: !493)
!508 = !DILocation(line: 637, column: 13, scope: !501)
!509 = !DILocation(line: 638, column: 9, scope: !493)
!510 = !DILocation(line: 640, column: 16, scope: !477)
!511 = distinct !{!511, !467, !512, !447}
!512 = !DILocation(line: 641, column: 5, scope: !2)
!513 = !DILocation(line: 644, column: 3, scope: !2)
!514 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!515 = !DILocation(line: 648, column: 15, scope: !2)
!516 = !DILocation(line: 648, column: 38, scope: !2)
!517 = !DILocation(line: 648, column: 31, scope: !2)
!518 = !DILocation(line: 649, column: 38, scope: !2)
!519 = !DILocation(line: 649, column: 31, scope: !2)
!520 = !DILocation(line: 650, column: 38, scope: !2)
!521 = !DILocation(line: 650, column: 31, scope: !2)
!522 = !DILocation(line: 651, column: 38, scope: !2)
!523 = !DILocation(line: 651, column: 31, scope: !2)
!524 = !DILocation(line: 652, column: 38, scope: !2)
!525 = !DILocation(line: 652, column: 31, scope: !2)
!526 = !DILocation(line: 653, column: 38, scope: !2)
!527 = !DILocation(line: 653, column: 31, scope: !2)
!528 = !DILocation(line: 654, column: 38, scope: !2)
!529 = !DILocation(line: 654, column: 31, scope: !2)
!530 = !DILocation(line: 655, column: 38, scope: !2)
!531 = !DILocation(line: 655, column: 31, scope: !2)
!532 = !DILocation(line: 656, column: 38, scope: !2)
!533 = !DILocation(line: 656, column: 31, scope: !2)
!534 = !DILocation(line: 657, column: 38, scope: !2)
!535 = !DILocation(line: 657, column: 31, scope: !2)
!536 = !DILocation(line: 658, column: 31, scope: !2)
!537 = !DILocation(line: 663, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!539 = !DILocation(line: 664, column: 7, scope: !538)
!540 = !DILocation(line: 664, column: 10, scope: !538)
!541 = !DILocation(line: 663, column: 7, scope: !2)
!542 = !DILocation(line: 670, column: 15, scope: !543)
!543 = distinct !DILexicalBlock(scope: !538, file: !3, line: 665, column: 5)
!544 = !DILocation(line: 670, column: 28, scope: !543)
!545 = !DILocation(line: 670, column: 47, scope: !543)
!546 = !DILocation(line: 670, column: 41, scope: !543)
!547 = !DILocation(line: 670, column: 59, scope: !543)
!548 = !DILocation(line: 669, column: 7, scope: !543)
!549 = !DILocation(line: 671, column: 5, scope: !543)
!550 = !DILocation(line: 676, column: 48, scope: !551)
!551 = distinct !DILexicalBlock(scope: !538, file: !3, line: 673, column: 5)
!552 = !DILocation(line: 677, column: 21, scope: !551)
!553 = !DILocation(line: 677, column: 15, scope: !551)
!554 = !DILocation(line: 677, column: 33, scope: !551)
!555 = !DILocation(line: 676, column: 7, scope: !551)
!556 = !DILocation(line: 679, column: 3, scope: !2)
!557 = !DILocation(line: 683, column: 3, scope: !2)
!558 = !DILocation(line: 686, column: 3, scope: !2)
!559 = !DILocation(line: 688, column: 3, scope: !2)
!560 = !DILocation(line: 691, column: 3, scope: !2)
!561 = !DILocation(line: 695, column: 3, scope: !2)
!562 = !DILocation(line: 696, column: 1, scope: !2)
!563 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !564, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !33)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !6}
!566 = !DILocalVariable(name: "program", arg: 1, scope: !563, file: !3, line: 836, type: !6)
!567 = !DILocation(line: 836, column: 34, scope: !563)
!568 = !DILocalVariable(name: "infomap", scope: !563, file: !3, line: 838, type: !569)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 896, elements: !575)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !563, file: !3, line: 838, size: 128, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !571, file: !3, line: 838, baseType: !6, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !571, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!575 = !{!576}
!576 = !DISubrange(count: 7)
!577 = !DILocation(line: 838, column: 67, scope: !563)
!578 = !DILocalVariable(name: "node", scope: !563, file: !3, line: 848, type: !6)
!579 = !DILocation(line: 848, column: 15, scope: !563)
!580 = !DILocation(line: 848, column: 22, scope: !563)
!581 = !DILocalVariable(name: "map_prog", scope: !563, file: !3, line: 849, type: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!583 = !DILocation(line: 849, column: 25, scope: !563)
!584 = !DILocation(line: 849, column: 36, scope: !563)
!585 = !DILocation(line: 851, column: 3, scope: !563)
!586 = !DILocation(line: 851, column: 10, scope: !563)
!587 = !DILocation(line: 851, column: 20, scope: !563)
!588 = !DILocation(line: 851, column: 28, scope: !563)
!589 = !DILocation(line: 851, column: 40, scope: !563)
!590 = !DILocation(line: 851, column: 49, scope: !563)
!591 = !DILocation(line: 851, column: 59, scope: !563)
!592 = !DILocation(line: 851, column: 33, scope: !563)
!593 = !DILocation(line: 851, column: 31, scope: !563)
!594 = !DILocation(line: 0, scope: !563)
!595 = !DILocation(line: 852, column: 13, scope: !563)
!596 = distinct !{!596, !585, !595, !447}
!597 = !DILocation(line: 854, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !563, file: !3, line: 854, column: 7)
!599 = !DILocation(line: 854, column: 17, scope: !598)
!600 = !DILocation(line: 854, column: 7, scope: !563)
!601 = !DILocation(line: 855, column: 12, scope: !598)
!602 = !DILocation(line: 855, column: 22, scope: !598)
!603 = !DILocation(line: 855, column: 10, scope: !598)
!604 = !DILocation(line: 855, column: 5, scope: !598)
!605 = !DILocation(line: 857, column: 3, scope: !563)
!606 = !DILocalVariable(name: "lc_messages", scope: !563, file: !3, line: 861, type: !6)
!607 = !DILocation(line: 861, column: 15, scope: !563)
!608 = !DILocation(line: 861, column: 29, scope: !563)
!609 = !DILocation(line: 862, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !563, file: !3, line: 862, column: 7)
!611 = !DILocation(line: 862, column: 19, scope: !610)
!612 = !DILocation(line: 862, column: 22, scope: !610)
!613 = !DILocation(line: 862, column: 7, scope: !563)
!614 = !DILocation(line: 868, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !610, file: !3, line: 863, column: 5)
!616 = !DILocation(line: 870, column: 5, scope: !615)
!617 = !DILocalVariable(name: "url_program", scope: !563, file: !3, line: 874, type: !6)
!618 = !DILocation(line: 874, column: 15, scope: !563)
!619 = !DILocation(line: 874, column: 36, scope: !563)
!620 = !DILocation(line: 874, column: 29, scope: !563)
!621 = !DILocation(line: 874, column: 61, scope: !563)
!622 = !DILocation(line: 875, column: 11, scope: !563)
!623 = !DILocation(line: 876, column: 24, scope: !563)
!624 = !DILocation(line: 875, column: 3, scope: !563)
!625 = !DILocation(line: 877, column: 11, scope: !563)
!626 = !DILocation(line: 878, column: 11, scope: !563)
!627 = !DILocation(line: 878, column: 17, scope: !563)
!628 = !DILocation(line: 878, column: 25, scope: !563)
!629 = !DILocation(line: 878, column: 22, scope: !563)
!630 = !DILocation(line: 877, column: 3, scope: !563)
!631 = !DILocation(line: 879, column: 1, scope: !563)
!632 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 94, type: !633, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !33)
!633 = !DISubroutineType(types: !634)
!634 = !{!30, !30, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!636 = !DILocalVariable(name: "argc", arg: 1, scope: !632, file: !10, line: 94, type: !30)
!637 = !DILocation(line: 94, column: 11, scope: !632)
!638 = !DILocalVariable(name: "argv", arg: 2, scope: !632, file: !10, line: 94, type: !635)
!639 = !DILocation(line: 94, column: 24, scope: !632)
!640 = !DILocalVariable(name: "seconds", scope: !632, file: !10, line: 96, type: !641)
!641 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!642 = !DILocation(line: 96, column: 10, scope: !632)
!643 = !DILocalVariable(name: "ok", scope: !632, file: !10, line: 97, type: !46)
!644 = !DILocation(line: 97, column: 8, scope: !632)
!645 = !DILocation(line: 100, column: 21, scope: !632)
!646 = !DILocation(line: 100, column: 3, scope: !632)
!647 = !DILocation(line: 101, column: 3, scope: !632)
!648 = !DILocation(line: 102, column: 3, scope: !632)
!649 = !DILocation(line: 103, column: 3, scope: !632)
!650 = !DILocation(line: 105, column: 3, scope: !632)
!651 = !DILocation(line: 107, column: 36, scope: !632)
!652 = !DILocation(line: 107, column: 42, scope: !632)
!653 = !DILocation(line: 108, column: 36, scope: !632)
!654 = !DILocation(line: 108, column: 58, scope: !632)
!655 = !DILocation(line: 107, column: 3, scope: !632)
!656 = !DILocation(line: 111, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !632, file: !10, line: 111, column: 7)
!658 = !DILocation(line: 111, column: 12, scope: !657)
!659 = !DILocation(line: 111, column: 7, scope: !632)
!660 = !DILocation(line: 113, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !657, file: !10, line: 112, column: 5)
!662 = !DILocation(line: 114, column: 7, scope: !661)
!663 = !DILocalVariable(name: "i", scope: !664, file: !10, line: 117, type: !30)
!664 = distinct !DILexicalBlock(scope: !632, file: !10, line: 117, column: 3)
!665 = !DILocation(line: 117, column: 12, scope: !664)
!666 = !DILocation(line: 117, column: 16, scope: !664)
!667 = !DILocation(line: 117, column: 8, scope: !664)
!668 = !DILocation(line: 117, column: 24, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !10, line: 117, column: 3)
!670 = !DILocation(line: 117, column: 28, scope: !669)
!671 = !DILocation(line: 117, column: 26, scope: !669)
!672 = !DILocation(line: 117, column: 3, scope: !664)
!673 = !DILocalVariable(name: "p", scope: !674, file: !10, line: 119, type: !103)
!674 = distinct !DILexicalBlock(scope: !669, file: !10, line: 118, column: 5)
!675 = !DILocation(line: 119, column: 13, scope: !674)
!676 = !DILocation(line: 120, column: 7, scope: !674)
!677 = !DILocation(line: 120, column: 13, scope: !674)
!678 = !DILocalVariable(name: "duration", scope: !674, file: !10, line: 121, type: !641)
!679 = !DILocation(line: 121, column: 14, scope: !674)
!680 = !DILocation(line: 121, column: 36, scope: !674)
!681 = !DILocation(line: 121, column: 41, scope: !674)
!682 = !DILocation(line: 121, column: 25, scope: !674)
!683 = !DILocalVariable(name: "s", scope: !674, file: !10, line: 122, type: !641)
!684 = !DILocation(line: 122, column: 14, scope: !674)
!685 = !DILocation(line: 122, column: 35, scope: !674)
!686 = !DILocation(line: 122, column: 45, scope: !674)
!687 = !DILocation(line: 122, column: 18, scope: !674)
!688 = !DILocation(line: 123, column: 11, scope: !689)
!689 = distinct !DILexicalBlock(scope: !674, file: !10, line: 123, column: 11)
!690 = !DILocation(line: 123, column: 16, scope: !689)
!691 = !DILocation(line: 123, column: 22, scope: !689)
!692 = !DILocation(line: 123, column: 19, scope: !689)
!693 = !DILocation(line: 125, column: 11, scope: !689)
!694 = !DILocation(line: 125, column: 22, scope: !689)
!695 = !DILocation(line: 125, column: 19, scope: !689)
!696 = !DILocation(line: 127, column: 11, scope: !689)
!697 = !DILocation(line: 127, column: 16, scope: !689)
!698 = !DILocation(line: 127, column: 15, scope: !689)
!699 = !DILocation(line: 127, column: 18, scope: !689)
!700 = !DILocation(line: 127, column: 23, scope: !689)
!701 = !DILocation(line: 127, column: 25, scope: !689)
!702 = !DILocation(line: 127, column: 21, scope: !689)
!703 = !DILocation(line: 129, column: 11, scope: !689)
!704 = !DILocation(line: 129, column: 35, scope: !689)
!705 = !DILocation(line: 129, column: 34, scope: !689)
!706 = !DILocation(line: 129, column: 16, scope: !689)
!707 = !DILocation(line: 123, column: 11, scope: !674)
!708 = !DILocation(line: 131, column: 11, scope: !709)
!709 = distinct !DILexicalBlock(scope: !689, file: !10, line: 130, column: 9)
!710 = !DILocation(line: 132, column: 14, scope: !709)
!711 = !DILocation(line: 133, column: 9, scope: !709)
!712 = !DILocation(line: 135, column: 34, scope: !674)
!713 = !DILocation(line: 135, column: 44, scope: !674)
!714 = !DILocation(line: 135, column: 42, scope: !674)
!715 = !DILocation(line: 135, column: 17, scope: !674)
!716 = !DILocation(line: 135, column: 15, scope: !674)
!717 = !DILocation(line: 136, column: 5, scope: !674)
!718 = !DILocation(line: 117, column: 35, scope: !669)
!719 = !DILocation(line: 117, column: 3, scope: !669)
!720 = distinct !{!720, !672, !721, !447}
!721 = !DILocation(line: 136, column: 5, scope: !664)
!722 = !DILocation(line: 138, column: 8, scope: !723)
!723 = distinct !DILexicalBlock(scope: !632, file: !10, line: 138, column: 7)
!724 = !DILocation(line: 138, column: 7, scope: !632)
!725 = !DILocation(line: 139, column: 5, scope: !723)
!726 = !DILocation(line: 141, column: 19, scope: !727)
!727 = distinct !DILexicalBlock(scope: !632, file: !10, line: 141, column: 7)
!728 = !DILocation(line: 141, column: 7, scope: !727)
!729 = !DILocation(line: 141, column: 7, scope: !632)
!730 = !DILocation(line: 142, column: 5, scope: !727)
!731 = !DILocation(line: 144, column: 3, scope: !632)
!732 = distinct !DISubprogram(name: "apply_suffix", scope: !10, file: !10, line: 65, type: !733, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !33)
!733 = !DISubroutineType(types: !734)
!734 = !{!46, !735, !8}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!736 = !DILocalVariable(name: "x", arg: 1, scope: !732, file: !10, line: 65, type: !735)
!737 = !DILocation(line: 65, column: 23, scope: !732)
!738 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !732, file: !10, line: 65, type: !8)
!739 = !DILocation(line: 65, column: 31, scope: !732)
!740 = !DILocalVariable(name: "multiplier", scope: !732, file: !10, line: 67, type: !30)
!741 = !DILocation(line: 67, column: 7, scope: !732)
!742 = !DILocation(line: 69, column: 11, scope: !732)
!743 = !DILocation(line: 69, column: 3, scope: !732)
!744 = !DILocation(line: 73, column: 18, scope: !745)
!745 = distinct !DILexicalBlock(scope: !732, file: !10, line: 70, column: 5)
!746 = !DILocation(line: 74, column: 7, scope: !745)
!747 = !DILocation(line: 76, column: 18, scope: !745)
!748 = !DILocation(line: 77, column: 7, scope: !745)
!749 = !DILocation(line: 79, column: 18, scope: !745)
!750 = !DILocation(line: 80, column: 7, scope: !745)
!751 = !DILocation(line: 82, column: 18, scope: !745)
!752 = !DILocation(line: 83, column: 7, scope: !745)
!753 = !DILocation(line: 85, column: 7, scope: !745)
!754 = !DILocation(line: 88, column: 26, scope: !732)
!755 = !DILocation(line: 88, column: 25, scope: !732)
!756 = !DILocation(line: 88, column: 30, scope: !732)
!757 = !DILocation(line: 88, column: 28, scope: !732)
!758 = !DILocation(line: 88, column: 8, scope: !732)
!759 = !DILocation(line: 88, column: 4, scope: !732)
!760 = !DILocation(line: 88, column: 6, scope: !732)
!761 = !DILocation(line: 90, column: 3, scope: !732)
!762 = !DILocation(line: 91, column: 1, scope: !732)
!763 = distinct !DISubprogram(name: "cl_strtod", scope: !258, file: !258, line: 59, type: !764, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !33)
!764 = !DISubroutineType(types: !765)
!765 = !{!641, !6, !766}
!766 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !635)
!767 = !DILocalVariable(name: "nptr", arg: 1, scope: !763, file: !258, line: 59, type: !6)
!768 = !DILocation(line: 59, column: 24, scope: !763)
!769 = !DILocalVariable(name: "endptr", arg: 2, scope: !763, file: !258, line: 59, type: !766)
!770 = !DILocation(line: 59, column: 46, scope: !763)
!771 = !DILocalVariable(name: "end", scope: !763, file: !258, line: 61, type: !103)
!772 = !DILocation(line: 61, column: 9, scope: !763)
!773 = !DILocalVariable(name: "d", scope: !763, file: !258, line: 62, type: !641)
!774 = !DILocation(line: 62, column: 10, scope: !763)
!775 = !DILocation(line: 62, column: 22, scope: !763)
!776 = !DILocation(line: 62, column: 14, scope: !763)
!777 = !DILocation(line: 63, column: 8, scope: !778)
!778 = distinct !DILexicalBlock(scope: !763, file: !258, line: 63, column: 7)
!779 = !DILocation(line: 63, column: 7, scope: !778)
!780 = !DILocation(line: 63, column: 7, scope: !763)
!781 = !DILocalVariable(name: "strtod_errno", scope: !782, file: !258, line: 65, type: !30)
!782 = distinct !DILexicalBlock(scope: !778, file: !258, line: 64, column: 5)
!783 = !DILocation(line: 65, column: 11, scope: !782)
!784 = !DILocation(line: 65, column: 26, scope: !782)
!785 = !DILocalVariable(name: "c_end", scope: !782, file: !258, line: 66, type: !103)
!786 = !DILocation(line: 66, column: 13, scope: !782)
!787 = !DILocalVariable(name: "c", scope: !782, file: !258, line: 67, type: !641)
!788 = !DILocation(line: 67, column: 14, scope: !782)
!789 = !DILocation(line: 67, column: 28, scope: !782)
!790 = !DILocation(line: 67, column: 18, scope: !782)
!791 = !DILocation(line: 68, column: 11, scope: !792)
!792 = distinct !DILexicalBlock(scope: !782, file: !258, line: 68, column: 11)
!793 = !DILocation(line: 68, column: 17, scope: !792)
!794 = !DILocation(line: 68, column: 15, scope: !792)
!795 = !DILocation(line: 68, column: 11, scope: !782)
!796 = !DILocation(line: 69, column: 13, scope: !792)
!797 = !DILocation(line: 69, column: 11, scope: !792)
!798 = !DILocation(line: 69, column: 22, scope: !792)
!799 = !DILocation(line: 69, column: 20, scope: !792)
!800 = !DILocation(line: 69, column: 9, scope: !792)
!801 = !DILocation(line: 71, column: 17, scope: !792)
!802 = !DILocation(line: 71, column: 9, scope: !792)
!803 = !DILocation(line: 71, column: 15, scope: !792)
!804 = !DILocation(line: 72, column: 5, scope: !782)
!805 = !DILocation(line: 73, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !763, file: !258, line: 73, column: 7)
!807 = !DILocation(line: 73, column: 7, scope: !763)
!808 = !DILocation(line: 74, column: 15, scope: !806)
!809 = !DILocation(line: 74, column: 6, scope: !806)
!810 = !DILocation(line: 74, column: 13, scope: !806)
!811 = !DILocation(line: 74, column: 5, scope: !806)
!812 = !DILocation(line: 75, column: 10, scope: !763)
!813 = !DILocation(line: 75, column: 3, scope: !763)
!814 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !42, file: !42, line: 50, type: !564, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !33)
!815 = !DILocalVariable(name: "file", arg: 1, scope: !814, file: !42, line: 50, type: !6)
!816 = !DILocation(line: 50, column: 41, scope: !814)
!817 = !DILocation(line: 52, column: 15, scope: !814)
!818 = !DILocation(line: 52, column: 13, scope: !814)
!819 = !DILocation(line: 53, column: 1, scope: !814)
!820 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !42, file: !42, line: 87, type: !821, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !33)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !46}
!823 = !DILocalVariable(name: "ignore", arg: 1, scope: !820, file: !42, line: 87, type: !46)
!824 = !DILocation(line: 87, column: 37, scope: !820)
!825 = !DILocation(line: 89, column: 18, scope: !820)
!826 = !DILocation(line: 89, column: 16, scope: !820)
!827 = !DILocation(line: 90, column: 1, scope: !820)
!828 = distinct !DISubprogram(name: "close_stdout", scope: !42, file: !42, line: 116, type: !79, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !33)
!829 = !DILocation(line: 118, column: 21, scope: !830)
!830 = distinct !DILexicalBlock(scope: !828, file: !42, line: 118, column: 7)
!831 = !DILocation(line: 118, column: 7, scope: !830)
!832 = !DILocation(line: 118, column: 29, scope: !830)
!833 = !DILocation(line: 119, column: 7, scope: !830)
!834 = !DILocation(line: 119, column: 12, scope: !830)
!835 = !DILocation(line: 119, column: 25, scope: !830)
!836 = !DILocation(line: 119, column: 28, scope: !830)
!837 = !DILocation(line: 119, column: 34, scope: !830)
!838 = !DILocation(line: 118, column: 7, scope: !828)
!839 = !DILocalVariable(name: "write_error", scope: !840, file: !42, line: 121, type: !6)
!840 = distinct !DILexicalBlock(scope: !830, file: !42, line: 120, column: 5)
!841 = !DILocation(line: 121, column: 19, scope: !840)
!842 = !DILocation(line: 121, column: 33, scope: !840)
!843 = !DILocation(line: 122, column: 11, scope: !844)
!844 = distinct !DILexicalBlock(scope: !840, file: !42, line: 122, column: 11)
!845 = !DILocation(line: 122, column: 11, scope: !840)
!846 = !DILocation(line: 123, column: 9, scope: !844)
!847 = !DILocation(line: 126, column: 9, scope: !844)
!848 = !DILocation(line: 128, column: 14, scope: !840)
!849 = !DILocation(line: 128, column: 7, scope: !840)
!850 = !DILocation(line: 133, column: 42, scope: !851)
!851 = distinct !DILexicalBlock(scope: !828, file: !42, line: 133, column: 7)
!852 = !DILocation(line: 133, column: 28, scope: !851)
!853 = !DILocation(line: 133, column: 50, scope: !851)
!854 = !DILocation(line: 133, column: 7, scope: !828)
!855 = !DILocation(line: 134, column: 12, scope: !851)
!856 = !DILocation(line: 134, column: 5, scope: !851)
!857 = !DILocation(line: 135, column: 1, scope: !828)
!858 = distinct !DISubprogram(name: "dtimespec_bound", scope: !859, file: !859, line: 54, type: !860, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !259, retainedNodes: !33)
!859 = !DIFile(filename: "./lib/dtimespec-bound.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1c1d0447ed5234421679b9baaf454c86")
!860 = !DISubroutineType(types: !861)
!861 = !{!641, !641, !30}
!862 = !DILocalVariable(name: "c", arg: 1, scope: !858, file: !859, line: 54, type: !641)
!863 = !DILocation(line: 54, column: 25, scope: !858)
!864 = !DILocalVariable(name: "err", arg: 2, scope: !858, file: !859, line: 54, type: !30)
!865 = !DILocation(line: 54, column: 32, scope: !858)
!866 = !DILocation(line: 60, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !858, file: !859, line: 60, column: 7)
!868 = !DILocation(line: 60, column: 11, scope: !867)
!869 = !DILocation(line: 60, column: 21, scope: !867)
!870 = !DILocation(line: 60, column: 24, scope: !867)
!871 = !DILocation(line: 60, column: 26, scope: !867)
!872 = !DILocation(line: 60, column: 7, scope: !858)
!873 = !DILocation(line: 61, column: 12, scope: !867)
!874 = !DILocation(line: 61, column: 5, scope: !867)
!875 = !DILocalVariable(name: "phi", scope: !858, file: !859, line: 70, type: !641)
!876 = !DILocation(line: 70, column: 10, scope: !858)
!877 = !DILocation(line: 71, column: 10, scope: !858)
!878 = !DILocation(line: 71, column: 14, scope: !858)
!879 = !DILocation(line: 71, column: 20, scope: !858)
!880 = !DILocation(line: 71, column: 12, scope: !858)
!881 = !DILocation(line: 71, column: 3, scope: !858)
!882 = !DILocation(line: 72, column: 1, scope: !858)
!883 = distinct !DISubprogram(name: "verror", scope: !50, file: !50, line: 251, type: !884, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !33)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !30, !30, !6, !58}
!886 = !DILocalVariable(name: "status", arg: 1, scope: !883, file: !50, line: 251, type: !30)
!887 = !DILocation(line: 251, column: 1, scope: !883)
!888 = !DILocalVariable(name: "errnum", arg: 2, scope: !883, file: !50, line: 251, type: !30)
!889 = !DILocalVariable(name: "message", arg: 3, scope: !883, file: !50, line: 251, type: !6)
!890 = !DILocalVariable(name: "args", arg: 4, scope: !883, file: !50, line: 251, type: !58)
!891 = !DILocation(line: 261, column: 3, scope: !883)
!892 = !DILocation(line: 265, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !883, file: !50, line: 265, column: 7)
!894 = !DILocation(line: 265, column: 7, scope: !883)
!895 = !DILocation(line: 266, column: 7, scope: !893)
!896 = !DILocation(line: 266, column: 5, scope: !893)
!897 = !DILocation(line: 272, column: 16, scope: !898)
!898 = distinct !DILexicalBlock(scope: !893, file: !50, line: 268, column: 5)
!899 = !DILocation(line: 272, column: 32, scope: !898)
!900 = !DILocation(line: 272, column: 7, scope: !898)
!901 = !DILocation(line: 276, column: 3, scope: !883)
!902 = !DILocation(line: 282, column: 1, scope: !883)
!903 = distinct !DISubprogram(name: "flush_stdout", scope: !50, file: !50, line: 163, type: !79, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!904 = !DILocalVariable(name: "stdout_fd", scope: !903, file: !50, line: 166, type: !30)
!905 = !DILocation(line: 166, column: 7, scope: !903)
!906 = !DILocation(line: 172, column: 13, scope: !903)
!907 = !DILocation(line: 182, column: 12, scope: !908)
!908 = distinct !DILexicalBlock(scope: !903, file: !50, line: 182, column: 7)
!909 = !DILocation(line: 182, column: 9, scope: !908)
!910 = !DILocation(line: 182, column: 22, scope: !908)
!911 = !DILocation(line: 182, column: 34, scope: !908)
!912 = !DILocation(line: 182, column: 25, scope: !908)
!913 = !DILocation(line: 182, column: 7, scope: !903)
!914 = !DILocation(line: 184, column: 5, scope: !908)
!915 = !DILocation(line: 185, column: 1, scope: !903)
!916 = distinct !DISubprogram(name: "error_tail", scope: !50, file: !50, line: 219, type: !884, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!917 = !DILocalVariable(name: "status", arg: 1, scope: !916, file: !50, line: 219, type: !30)
!918 = !DILocation(line: 219, column: 1, scope: !916)
!919 = !DILocalVariable(name: "errnum", arg: 2, scope: !916, file: !50, line: 219, type: !30)
!920 = !DILocalVariable(name: "message", arg: 3, scope: !916, file: !50, line: 219, type: !6)
!921 = !DILocalVariable(name: "args", arg: 4, scope: !916, file: !50, line: 219, type: !58)
!922 = !DILocation(line: 229, column: 13, scope: !916)
!923 = !DILocation(line: 229, column: 21, scope: !916)
!924 = !DILocation(line: 229, column: 3, scope: !916)
!925 = !DILocation(line: 232, column: 3, scope: !916)
!926 = !DILocation(line: 233, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !916, file: !50, line: 233, column: 7)
!928 = !DILocation(line: 233, column: 7, scope: !916)
!929 = !DILocation(line: 234, column: 26, scope: !927)
!930 = !DILocation(line: 234, column: 5, scope: !927)
!931 = !DILocation(line: 238, column: 3, scope: !916)
!932 = !DILocation(line: 240, column: 3, scope: !916)
!933 = !DILocation(line: 241, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !916, file: !50, line: 241, column: 7)
!935 = !DILocation(line: 241, column: 7, scope: !916)
!936 = !DILocation(line: 242, column: 11, scope: !934)
!937 = !DILocation(line: 242, column: 5, scope: !934)
!938 = !DILocation(line: 243, column: 1, scope: !916)
!939 = distinct !DISubprogram(name: "print_errno_message", scope: !50, file: !50, line: 188, type: !355, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!940 = !DILocalVariable(name: "errnum", arg: 1, scope: !939, file: !50, line: 188, type: !30)
!941 = !DILocation(line: 188, column: 26, scope: !939)
!942 = !DILocalVariable(name: "s", scope: !939, file: !50, line: 190, type: !6)
!943 = !DILocation(line: 190, column: 15, scope: !939)
!944 = !DILocalVariable(name: "errbuf", scope: !939, file: !50, line: 193, type: !945)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !946)
!946 = !{!947}
!947 = !DISubrange(count: 1024)
!948 = !DILocation(line: 193, column: 8, scope: !939)
!949 = !DILocation(line: 195, column: 21, scope: !939)
!950 = !DILocation(line: 195, column: 29, scope: !939)
!951 = !DILocation(line: 195, column: 7, scope: !939)
!952 = !DILocation(line: 195, column: 5, scope: !939)
!953 = !DILocation(line: 207, column: 9, scope: !954)
!954 = distinct !DILexicalBlock(scope: !939, file: !50, line: 207, column: 7)
!955 = !DILocation(line: 207, column: 7, scope: !939)
!956 = !DILocation(line: 208, column: 9, scope: !954)
!957 = !DILocation(line: 208, column: 7, scope: !954)
!958 = !DILocation(line: 208, column: 5, scope: !954)
!959 = !DILocation(line: 214, column: 12, scope: !939)
!960 = !DILocation(line: 214, column: 28, scope: !939)
!961 = !DILocation(line: 214, column: 3, scope: !939)
!962 = !DILocation(line: 216, column: 1, scope: !939)
!963 = distinct !DISubprogram(name: "is_open", scope: !50, file: !50, line: 145, type: !964, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!964 = !DISubroutineType(types: !965)
!965 = !{!30, !30}
!966 = !DILocalVariable(name: "fd", arg: 1, scope: !963, file: !50, line: 145, type: !30)
!967 = !DILocation(line: 145, column: 14, scope: !963)
!968 = !DILocation(line: 157, column: 22, scope: !963)
!969 = !DILocation(line: 157, column: 15, scope: !963)
!970 = !DILocation(line: 157, column: 12, scope: !963)
!971 = !DILocation(line: 157, column: 3, scope: !963)
!972 = distinct !DISubprogram(name: "error", scope: !50, file: !50, line: 285, type: !973, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !33)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !30, !30, !6, null}
!975 = !DILocalVariable(name: "status", arg: 1, scope: !972, file: !50, line: 285, type: !30)
!976 = !DILocation(line: 285, column: 12, scope: !972)
!977 = !DILocalVariable(name: "errnum", arg: 2, scope: !972, file: !50, line: 285, type: !30)
!978 = !DILocation(line: 285, column: 24, scope: !972)
!979 = !DILocalVariable(name: "message", arg: 3, scope: !972, file: !50, line: 285, type: !6)
!980 = !DILocation(line: 285, column: 44, scope: !972)
!981 = !DILocalVariable(name: "ap", scope: !972, file: !50, line: 287, type: !58)
!982 = !DILocation(line: 287, column: 11, scope: !972)
!983 = !DILocation(line: 288, column: 3, scope: !972)
!984 = !DILocation(line: 289, column: 3, scope: !972)
!985 = !DILocation(line: 290, column: 3, scope: !972)
!986 = !DILocation(line: 291, column: 1, scope: !972)
!987 = !DILocalVariable(name: "status", arg: 1, scope: !55, file: !50, line: 298, type: !30)
!988 = !DILocation(line: 298, column: 1, scope: !55)
!989 = !DILocalVariable(name: "errnum", arg: 2, scope: !55, file: !50, line: 298, type: !30)
!990 = !DILocalVariable(name: "file_name", arg: 3, scope: !55, file: !50, line: 298, type: !6)
!991 = !DILocalVariable(name: "line_number", arg: 4, scope: !55, file: !50, line: 298, type: !14)
!992 = !DILocalVariable(name: "message", arg: 5, scope: !55, file: !50, line: 298, type: !6)
!993 = !DILocalVariable(name: "args", arg: 6, scope: !55, file: !50, line: 298, type: !58)
!994 = !DILocation(line: 302, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !55, file: !50, line: 302, column: 7)
!996 = !DILocation(line: 302, column: 7, scope: !55)
!997 = !DILocation(line: 307, column: 11, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !50, line: 307, column: 11)
!999 = distinct !DILexicalBlock(scope: !995, file: !50, line: 303, column: 5)
!1000 = !DILocation(line: 307, column: 30, scope: !998)
!1001 = !DILocation(line: 307, column: 27, scope: !998)
!1002 = !DILocation(line: 308, column: 11, scope: !998)
!1003 = !DILocation(line: 308, column: 15, scope: !998)
!1004 = !DILocation(line: 308, column: 28, scope: !998)
!1005 = !DILocation(line: 308, column: 25, scope: !998)
!1006 = !DILocation(line: 309, column: 15, scope: !998)
!1007 = !DILocation(line: 309, column: 19, scope: !998)
!1008 = !DILocation(line: 309, column: 33, scope: !998)
!1009 = !DILocation(line: 310, column: 19, scope: !998)
!1010 = !DILocation(line: 310, column: 22, scope: !998)
!1011 = !DILocation(line: 310, column: 32, scope: !998)
!1012 = !DILocation(line: 311, column: 19, scope: !998)
!1013 = !DILocation(line: 311, column: 30, scope: !998)
!1014 = !DILocation(line: 311, column: 45, scope: !998)
!1015 = !DILocation(line: 311, column: 22, scope: !998)
!1016 = !DILocation(line: 311, column: 56, scope: !998)
!1017 = !DILocation(line: 307, column: 11, scope: !999)
!1018 = !DILocation(line: 314, column: 9, scope: !998)
!1019 = !DILocation(line: 316, column: 23, scope: !999)
!1020 = !DILocation(line: 316, column: 21, scope: !999)
!1021 = !DILocation(line: 317, column: 25, scope: !999)
!1022 = !DILocation(line: 317, column: 23, scope: !999)
!1023 = !DILocation(line: 318, column: 5, scope: !999)
!1024 = !DILocation(line: 327, column: 3, scope: !55)
!1025 = !DILocation(line: 331, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !55, file: !50, line: 331, column: 7)
!1027 = !DILocation(line: 331, column: 7, scope: !55)
!1028 = !DILocation(line: 332, column: 7, scope: !1026)
!1029 = !DILocation(line: 332, column: 5, scope: !1026)
!1030 = !DILocation(line: 338, column: 16, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !50, line: 334, column: 5)
!1032 = !DILocation(line: 338, column: 31, scope: !1031)
!1033 = !DILocation(line: 338, column: 7, scope: !1031)
!1034 = !DILocation(line: 346, column: 12, scope: !55)
!1035 = !DILocation(line: 346, column: 20, scope: !55)
!1036 = !DILocation(line: 346, column: 30, scope: !55)
!1037 = !DILocation(line: 347, column: 12, scope: !55)
!1038 = !DILocation(line: 347, column: 23, scope: !55)
!1039 = !DILocation(line: 346, column: 3, scope: !55)
!1040 = !DILocation(line: 350, column: 3, scope: !55)
!1041 = !DILocation(line: 356, column: 1, scope: !55)
!1042 = distinct !DISubprogram(name: "error_at_line", scope: !50, file: !50, line: 359, type: !1043, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !33)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !30, !30, !6, !14, !6, null}
!1045 = !DILocalVariable(name: "status", arg: 1, scope: !1042, file: !50, line: 359, type: !30)
!1046 = !DILocation(line: 359, column: 20, scope: !1042)
!1047 = !DILocalVariable(name: "errnum", arg: 2, scope: !1042, file: !50, line: 359, type: !30)
!1048 = !DILocation(line: 359, column: 32, scope: !1042)
!1049 = !DILocalVariable(name: "file_name", arg: 3, scope: !1042, file: !50, line: 359, type: !6)
!1050 = !DILocation(line: 359, column: 52, scope: !1042)
!1051 = !DILocalVariable(name: "line_number", arg: 4, scope: !1042, file: !50, line: 360, type: !14)
!1052 = !DILocation(line: 360, column: 29, scope: !1042)
!1053 = !DILocalVariable(name: "message", arg: 5, scope: !1042, file: !50, line: 360, type: !6)
!1054 = !DILocation(line: 360, column: 54, scope: !1042)
!1055 = !DILocalVariable(name: "ap", scope: !1042, file: !50, line: 362, type: !58)
!1056 = !DILocation(line: 362, column: 11, scope: !1042)
!1057 = !DILocation(line: 363, column: 3, scope: !1042)
!1058 = !DILocation(line: 364, column: 3, scope: !1042)
!1059 = !DILocation(line: 366, column: 3, scope: !1042)
!1060 = !DILocation(line: 367, column: 1, scope: !1042)
!1061 = distinct !DISubprogram(name: "getprogname", scope: !262, file: !262, line: 54, type: !1062, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !261, retainedNodes: !33)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!6}
!1064 = !DILocation(line: 58, column: 10, scope: !1061)
!1065 = !DILocation(line: 58, column: 3, scope: !1061)
!1066 = distinct !DISubprogram(name: "parse_long_options", scope: !84, file: !84, line: 45, type: !1067, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !33)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !30, !635, !6, !6, !6, !1069, null}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!1070 = !DILocalVariable(name: "argc", arg: 1, scope: !1066, file: !84, line: 45, type: !30)
!1071 = !DILocation(line: 45, column: 25, scope: !1066)
!1072 = !DILocalVariable(name: "argv", arg: 2, scope: !1066, file: !84, line: 46, type: !635)
!1073 = !DILocation(line: 46, column: 28, scope: !1066)
!1074 = !DILocalVariable(name: "command_name", arg: 3, scope: !1066, file: !84, line: 47, type: !6)
!1075 = !DILocation(line: 47, column: 33, scope: !1066)
!1076 = !DILocalVariable(name: "package", arg: 4, scope: !1066, file: !84, line: 48, type: !6)
!1077 = !DILocation(line: 48, column: 33, scope: !1066)
!1078 = !DILocalVariable(name: "version", arg: 5, scope: !1066, file: !84, line: 49, type: !6)
!1079 = !DILocation(line: 49, column: 33, scope: !1066)
!1080 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1066, file: !84, line: 50, type: !1069)
!1081 = !DILocation(line: 50, column: 28, scope: !1066)
!1082 = !DILocalVariable(name: "saved_opterr", scope: !1066, file: !84, line: 53, type: !30)
!1083 = !DILocation(line: 53, column: 7, scope: !1066)
!1084 = !DILocation(line: 53, column: 22, scope: !1066)
!1085 = !DILocation(line: 56, column: 10, scope: !1066)
!1086 = !DILocation(line: 58, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1066, file: !84, line: 58, column: 7)
!1088 = !DILocation(line: 58, column: 12, scope: !1087)
!1089 = !DILocation(line: 58, column: 7, scope: !1066)
!1090 = !DILocalVariable(name: "c", scope: !1091, file: !84, line: 60, type: !30)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !84, line: 59, column: 5)
!1092 = !DILocation(line: 60, column: 11, scope: !1091)
!1093 = !DILocation(line: 60, column: 28, scope: !1091)
!1094 = !DILocation(line: 60, column: 34, scope: !1091)
!1095 = !DILocation(line: 60, column: 15, scope: !1091)
!1096 = !DILocation(line: 61, column: 11, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1091, file: !84, line: 61, column: 11)
!1098 = !DILocation(line: 61, column: 13, scope: !1097)
!1099 = !DILocation(line: 61, column: 11, scope: !1091)
!1100 = !DILocation(line: 63, column: 19, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !84, line: 62, column: 9)
!1102 = !DILocation(line: 63, column: 11, scope: !1101)
!1103 = !DILocation(line: 66, column: 17, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !84, line: 64, column: 13)
!1105 = !DILocation(line: 66, column: 15, scope: !1104)
!1106 = !DILocation(line: 67, column: 15, scope: !1104)
!1107 = !DILocalVariable(name: "authors", scope: !1108, file: !84, line: 71, type: !1109)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !84, line: 70, column: 15)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !59, line: 52, baseType: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !61, line: 32, baseType: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1112, baseType: !1113)
!1112 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !65, size: 256, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1113, file: !1112, line: 71, baseType: !29, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1113, file: !1112, line: 71, baseType: !29, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1113, file: !1112, line: 71, baseType: !29, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1113, file: !1112, line: 71, baseType: !30, size: 32, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1113, file: !1112, line: 71, baseType: !30, size: 32, offset: 224)
!1120 = !DILocation(line: 71, column: 25, scope: !1108)
!1121 = !DILocation(line: 72, column: 17, scope: !1108)
!1122 = !DILocation(line: 73, column: 33, scope: !1108)
!1123 = !DILocation(line: 73, column: 41, scope: !1108)
!1124 = !DILocation(line: 73, column: 55, scope: !1108)
!1125 = !DILocation(line: 73, column: 64, scope: !1108)
!1126 = !DILocation(line: 73, column: 17, scope: !1108)
!1127 = !DILocation(line: 74, column: 17, scope: !1108)
!1128 = !DILocation(line: 79, column: 15, scope: !1104)
!1129 = !DILocation(line: 81, column: 9, scope: !1101)
!1130 = !DILocation(line: 82, column: 5, scope: !1091)
!1131 = !DILocation(line: 85, column: 12, scope: !1066)
!1132 = !DILocation(line: 85, column: 10, scope: !1066)
!1133 = !DILocation(line: 89, column: 10, scope: !1066)
!1134 = !DILocation(line: 90, column: 1, scope: !1066)
!1135 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !84, file: !84, line: 98, type: !1136, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !33)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !30, !635, !6, !6, !6, !46, !1069, null}
!1138 = !DILocalVariable(name: "argc", arg: 1, scope: !1135, file: !84, line: 98, type: !30)
!1139 = !DILocation(line: 98, column: 38, scope: !1135)
!1140 = !DILocalVariable(name: "argv", arg: 2, scope: !1135, file: !84, line: 99, type: !635)
!1141 = !DILocation(line: 99, column: 41, scope: !1135)
!1142 = !DILocalVariable(name: "command_name", arg: 3, scope: !1135, file: !84, line: 100, type: !6)
!1143 = !DILocation(line: 100, column: 46, scope: !1135)
!1144 = !DILocalVariable(name: "package", arg: 4, scope: !1135, file: !84, line: 101, type: !6)
!1145 = !DILocation(line: 101, column: 46, scope: !1135)
!1146 = !DILocalVariable(name: "version", arg: 5, scope: !1135, file: !84, line: 102, type: !6)
!1147 = !DILocation(line: 102, column: 46, scope: !1135)
!1148 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1135, file: !84, line: 103, type: !46)
!1149 = !DILocation(line: 103, column: 39, scope: !1135)
!1150 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1135, file: !84, line: 104, type: !1069)
!1151 = !DILocation(line: 104, column: 41, scope: !1135)
!1152 = !DILocalVariable(name: "saved_opterr", scope: !1135, file: !84, line: 107, type: !30)
!1153 = !DILocation(line: 107, column: 7, scope: !1135)
!1154 = !DILocation(line: 107, column: 22, scope: !1135)
!1155 = !DILocation(line: 110, column: 10, scope: !1135)
!1156 = !DILocalVariable(name: "optstring", scope: !1135, file: !84, line: 112, type: !6)
!1157 = !DILocation(line: 112, column: 15, scope: !1135)
!1158 = !DILocation(line: 112, column: 27, scope: !1135)
!1159 = !DILocalVariable(name: "c", scope: !1135, file: !84, line: 114, type: !30)
!1160 = !DILocation(line: 114, column: 7, scope: !1135)
!1161 = !DILocation(line: 114, column: 24, scope: !1135)
!1162 = !DILocation(line: 114, column: 30, scope: !1135)
!1163 = !DILocation(line: 114, column: 36, scope: !1135)
!1164 = !DILocation(line: 114, column: 11, scope: !1135)
!1165 = !DILocation(line: 115, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1135, file: !84, line: 115, column: 7)
!1167 = !DILocation(line: 115, column: 9, scope: !1166)
!1168 = !DILocation(line: 115, column: 7, scope: !1135)
!1169 = !DILocation(line: 117, column: 15, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !84, line: 116, column: 5)
!1171 = !DILocation(line: 117, column: 7, scope: !1170)
!1172 = !DILocation(line: 120, column: 13, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !84, line: 118, column: 9)
!1174 = !DILocation(line: 120, column: 11, scope: !1173)
!1175 = !DILocation(line: 121, column: 11, scope: !1173)
!1176 = !DILocalVariable(name: "authors", scope: !1177, file: !84, line: 125, type: !1109)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !84, line: 124, column: 11)
!1178 = !DILocation(line: 125, column: 21, scope: !1177)
!1179 = !DILocation(line: 126, column: 13, scope: !1177)
!1180 = !DILocation(line: 127, column: 29, scope: !1177)
!1181 = !DILocation(line: 127, column: 37, scope: !1177)
!1182 = !DILocation(line: 127, column: 51, scope: !1177)
!1183 = !DILocation(line: 127, column: 60, scope: !1177)
!1184 = !DILocation(line: 127, column: 13, scope: !1177)
!1185 = !DILocation(line: 128, column: 13, scope: !1177)
!1186 = !DILocation(line: 132, column: 13, scope: !1173)
!1187 = !DILocation(line: 132, column: 26, scope: !1173)
!1188 = !DILocation(line: 132, column: 11, scope: !1173)
!1189 = !DILocation(line: 133, column: 11, scope: !1173)
!1190 = !DILocation(line: 135, column: 5, scope: !1170)
!1191 = !DILocation(line: 138, column: 12, scope: !1135)
!1192 = !DILocation(line: 138, column: 10, scope: !1135)
!1193 = !DILocation(line: 139, column: 1, scope: !1135)
!1194 = distinct !DISubprogram(name: "set_program_name", scope: !101, file: !101, line: 37, type: !564, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !33)
!1195 = !DILocalVariable(name: "argv0", arg: 1, scope: !1194, file: !101, line: 37, type: !6)
!1196 = !DILocation(line: 37, column: 31, scope: !1194)
!1197 = !DILocalVariable(name: "slash", scope: !1194, file: !101, line: 44, type: !6)
!1198 = !DILocation(line: 44, column: 15, scope: !1194)
!1199 = !DILocation(line: 44, column: 32, scope: !1194)
!1200 = !DILocation(line: 44, column: 23, scope: !1194)
!1201 = !DILocalVariable(name: "base", scope: !1194, file: !101, line: 45, type: !6)
!1202 = !DILocation(line: 45, column: 15, scope: !1194)
!1203 = !DILocation(line: 45, column: 22, scope: !1194)
!1204 = !DILocation(line: 45, column: 30, scope: !1194)
!1205 = !DILocation(line: 45, column: 36, scope: !1194)
!1206 = !DILocation(line: 45, column: 42, scope: !1194)
!1207 = !DILocation(line: 46, column: 12, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1194, file: !101, line: 46, column: 7)
!1209 = !DILocation(line: 46, column: 19, scope: !1208)
!1210 = !DILocation(line: 46, column: 17, scope: !1208)
!1211 = !DILocation(line: 46, column: 9, scope: !1208)
!1212 = !DILocation(line: 46, column: 25, scope: !1208)
!1213 = !DILocation(line: 46, column: 35, scope: !1208)
!1214 = !DILocation(line: 46, column: 40, scope: !1208)
!1215 = !DILocation(line: 46, column: 28, scope: !1208)
!1216 = !DILocation(line: 46, column: 7, scope: !1194)
!1217 = !DILocation(line: 48, column: 15, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1208, file: !101, line: 47, column: 5)
!1219 = !DILocation(line: 48, column: 13, scope: !1218)
!1220 = !DILocation(line: 49, column: 20, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !101, line: 49, column: 11)
!1222 = !DILocation(line: 49, column: 11, scope: !1221)
!1223 = !DILocation(line: 49, column: 36, scope: !1221)
!1224 = !DILocation(line: 49, column: 11, scope: !1218)
!1225 = !DILocation(line: 51, column: 16, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !101, line: 50, column: 9)
!1227 = !DILocation(line: 52, column: 19, scope: !1226)
!1228 = !DILocation(line: 52, column: 17, scope: !1226)
!1229 = !DILocation(line: 53, column: 9, scope: !1226)
!1230 = !DILocation(line: 54, column: 5, scope: !1218)
!1231 = !DILocation(line: 65, column: 18, scope: !1194)
!1232 = !DILocation(line: 65, column: 16, scope: !1194)
!1233 = !DILocation(line: 71, column: 38, scope: !1194)
!1234 = !DILocation(line: 71, column: 27, scope: !1194)
!1235 = !DILocation(line: 74, column: 44, scope: !1194)
!1236 = !DILocation(line: 74, column: 33, scope: !1194)
!1237 = !DILocation(line: 76, column: 1, scope: !1194)
!1238 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !107, file: !108, line: 38, type: !6)
!1239 = !DILocation(line: 38, column: 31, scope: !107)
!1240 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !107, file: !108, line: 38, type: !6)
!1241 = !DILocation(line: 38, column: 66, scope: !107)
!1242 = !DILocalVariable(name: "translation", scope: !107, file: !108, line: 40, type: !6)
!1243 = !DILocation(line: 40, column: 15, scope: !107)
!1244 = !DILocation(line: 40, column: 38, scope: !107)
!1245 = !DILocation(line: 40, column: 29, scope: !107)
!1246 = !DILocation(line: 41, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !107, file: !108, line: 41, column: 7)
!1248 = !DILocation(line: 41, column: 22, scope: !1247)
!1249 = !DILocation(line: 41, column: 19, scope: !1247)
!1250 = !DILocation(line: 41, column: 7, scope: !107)
!1251 = !DILocation(line: 42, column: 12, scope: !1247)
!1252 = !DILocation(line: 42, column: 5, scope: !1247)
!1253 = !DILocalVariable(name: "w", scope: !107, file: !108, line: 47, type: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1255, line: 37, baseType: !1256)
!1255 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !299, line: 57, baseType: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !299, line: 42, baseType: !14)
!1258 = !DILocation(line: 47, column: 12, scope: !107)
!1259 = !DILocalVariable(name: "mbs", scope: !107, file: !108, line: 48, type: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !244, line: 6, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !246, line: 21, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 13, size: 64, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1262, file: !246, line: 15, baseType: !30, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1262, file: !246, line: 20, baseType: !1266, size: 32, offset: 32)
!1266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1262, file: !246, line: 16, size: 32, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1266, file: !246, line: 18, baseType: !14, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1266, file: !246, line: 19, baseType: !255, size: 32)
!1270 = !DILocation(line: 48, column: 13, scope: !107)
!1271 = !DILocation(line: 48, column: 18, scope: !107)
!1272 = !DILocation(line: 49, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !107, file: !108, line: 49, column: 7)
!1274 = !DILocation(line: 49, column: 39, scope: !1273)
!1275 = !DILocation(line: 49, column: 44, scope: !1273)
!1276 = !DILocation(line: 49, column: 47, scope: !1273)
!1277 = !DILocation(line: 49, column: 49, scope: !1273)
!1278 = !DILocation(line: 49, column: 7, scope: !107)
!1279 = !DILocation(line: 50, column: 12, scope: !1273)
!1280 = !DILocation(line: 50, column: 5, scope: !1273)
!1281 = !DILocation(line: 53, column: 10, scope: !107)
!1282 = !DILocation(line: 53, column: 3, scope: !107)
!1283 = !DILocation(line: 54, column: 1, scope: !107)
!1284 = distinct !DISubprogram(name: "clone_quoting_options", scope: !119, file: !119, line: 113, type: !1285, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!1287, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1288 = !DILocalVariable(name: "o", arg: 1, scope: !1284, file: !119, line: 113, type: !1287)
!1289 = !DILocation(line: 113, column: 48, scope: !1284)
!1290 = !DILocalVariable(name: "saved_errno", scope: !1284, file: !119, line: 115, type: !30)
!1291 = !DILocation(line: 115, column: 7, scope: !1284)
!1292 = !DILocation(line: 115, column: 21, scope: !1284)
!1293 = !DILocalVariable(name: "p", scope: !1284, file: !119, line: 116, type: !1287)
!1294 = !DILocation(line: 116, column: 27, scope: !1284)
!1295 = !DILocation(line: 116, column: 40, scope: !1284)
!1296 = !DILocation(line: 116, column: 44, scope: !1284)
!1297 = !DILocation(line: 116, column: 31, scope: !1284)
!1298 = !DILocation(line: 118, column: 11, scope: !1284)
!1299 = !DILocation(line: 118, column: 3, scope: !1284)
!1300 = !DILocation(line: 118, column: 9, scope: !1284)
!1301 = !DILocation(line: 119, column: 10, scope: !1284)
!1302 = !DILocation(line: 119, column: 3, scope: !1284)
!1303 = distinct !DISubprogram(name: "get_quoting_style", scope: !119, file: !119, line: 124, type: !1304, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!121, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1308 = !DILocalVariable(name: "o", arg: 1, scope: !1303, file: !119, line: 124, type: !1306)
!1309 = !DILocation(line: 124, column: 50, scope: !1303)
!1310 = !DILocation(line: 126, column: 11, scope: !1303)
!1311 = !DILocation(line: 126, column: 15, scope: !1303)
!1312 = !DILocation(line: 126, column: 46, scope: !1303)
!1313 = !DILocation(line: 126, column: 3, scope: !1303)
!1314 = distinct !DISubprogram(name: "set_quoting_style", scope: !119, file: !119, line: 132, type: !1315, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !1287, !121}
!1317 = !DILocalVariable(name: "o", arg: 1, scope: !1314, file: !119, line: 132, type: !1287)
!1318 = !DILocation(line: 132, column: 44, scope: !1314)
!1319 = !DILocalVariable(name: "s", arg: 2, scope: !1314, file: !119, line: 132, type: !121)
!1320 = !DILocation(line: 132, column: 66, scope: !1314)
!1321 = !DILocation(line: 134, column: 47, scope: !1314)
!1322 = !DILocation(line: 134, column: 4, scope: !1314)
!1323 = !DILocation(line: 134, column: 8, scope: !1314)
!1324 = !DILocation(line: 134, column: 39, scope: !1314)
!1325 = !DILocation(line: 134, column: 45, scope: !1314)
!1326 = !DILocation(line: 135, column: 1, scope: !1314)
!1327 = distinct !DISubprogram(name: "set_char_quoting", scope: !119, file: !119, line: 143, type: !1328, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!30, !1287, !8, !30}
!1330 = !DILocalVariable(name: "o", arg: 1, scope: !1327, file: !119, line: 143, type: !1287)
!1331 = !DILocation(line: 143, column: 43, scope: !1327)
!1332 = !DILocalVariable(name: "c", arg: 2, scope: !1327, file: !119, line: 143, type: !8)
!1333 = !DILocation(line: 143, column: 51, scope: !1327)
!1334 = !DILocalVariable(name: "i", arg: 3, scope: !1327, file: !119, line: 143, type: !30)
!1335 = !DILocation(line: 143, column: 58, scope: !1327)
!1336 = !DILocalVariable(name: "uc", scope: !1327, file: !119, line: 145, type: !241)
!1337 = !DILocation(line: 145, column: 17, scope: !1327)
!1338 = !DILocation(line: 145, column: 22, scope: !1327)
!1339 = !DILocalVariable(name: "p", scope: !1327, file: !119, line: 146, type: !1340)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1341 = !DILocation(line: 146, column: 17, scope: !1327)
!1342 = !DILocation(line: 147, column: 6, scope: !1327)
!1343 = !DILocation(line: 147, column: 10, scope: !1327)
!1344 = !DILocation(line: 147, column: 41, scope: !1327)
!1345 = !DILocation(line: 147, column: 5, scope: !1327)
!1346 = !DILocation(line: 147, column: 59, scope: !1327)
!1347 = !DILocation(line: 147, column: 62, scope: !1327)
!1348 = !DILocation(line: 147, column: 57, scope: !1327)
!1349 = !DILocalVariable(name: "shift", scope: !1327, file: !119, line: 148, type: !30)
!1350 = !DILocation(line: 148, column: 7, scope: !1327)
!1351 = !DILocation(line: 148, column: 15, scope: !1327)
!1352 = !DILocation(line: 148, column: 18, scope: !1327)
!1353 = !DILocalVariable(name: "r", scope: !1327, file: !119, line: 149, type: !14)
!1354 = !DILocation(line: 149, column: 16, scope: !1327)
!1355 = !DILocation(line: 149, column: 22, scope: !1327)
!1356 = !DILocation(line: 149, column: 21, scope: !1327)
!1357 = !DILocation(line: 149, column: 27, scope: !1327)
!1358 = !DILocation(line: 149, column: 24, scope: !1327)
!1359 = !DILocation(line: 149, column: 34, scope: !1327)
!1360 = !DILocation(line: 150, column: 11, scope: !1327)
!1361 = !DILocation(line: 150, column: 13, scope: !1327)
!1362 = !DILocation(line: 150, column: 21, scope: !1327)
!1363 = !DILocation(line: 150, column: 19, scope: !1327)
!1364 = !DILocation(line: 150, column: 27, scope: !1327)
!1365 = !DILocation(line: 150, column: 24, scope: !1327)
!1366 = !DILocation(line: 150, column: 4, scope: !1327)
!1367 = !DILocation(line: 150, column: 6, scope: !1327)
!1368 = !DILocation(line: 151, column: 10, scope: !1327)
!1369 = !DILocation(line: 151, column: 3, scope: !1327)
!1370 = distinct !DISubprogram(name: "set_quoting_flags", scope: !119, file: !119, line: 159, type: !1371, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!30, !1287, !30}
!1373 = !DILocalVariable(name: "o", arg: 1, scope: !1370, file: !119, line: 159, type: !1287)
!1374 = !DILocation(line: 159, column: 44, scope: !1370)
!1375 = !DILocalVariable(name: "i", arg: 2, scope: !1370, file: !119, line: 159, type: !30)
!1376 = !DILocation(line: 159, column: 51, scope: !1370)
!1377 = !DILocation(line: 161, column: 8, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1370, file: !119, line: 161, column: 7)
!1379 = !DILocation(line: 161, column: 7, scope: !1370)
!1380 = !DILocation(line: 162, column: 7, scope: !1378)
!1381 = !DILocation(line: 162, column: 5, scope: !1378)
!1382 = !DILocalVariable(name: "r", scope: !1370, file: !119, line: 163, type: !30)
!1383 = !DILocation(line: 163, column: 7, scope: !1370)
!1384 = !DILocation(line: 163, column: 11, scope: !1370)
!1385 = !DILocation(line: 163, column: 14, scope: !1370)
!1386 = !DILocation(line: 164, column: 14, scope: !1370)
!1387 = !DILocation(line: 164, column: 3, scope: !1370)
!1388 = !DILocation(line: 164, column: 6, scope: !1370)
!1389 = !DILocation(line: 164, column: 12, scope: !1370)
!1390 = !DILocation(line: 165, column: 10, scope: !1370)
!1391 = !DILocation(line: 165, column: 3, scope: !1370)
!1392 = distinct !DISubprogram(name: "set_custom_quoting", scope: !119, file: !119, line: 169, type: !1393, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !1287, !6, !6}
!1395 = !DILocalVariable(name: "o", arg: 1, scope: !1392, file: !119, line: 169, type: !1287)
!1396 = !DILocation(line: 169, column: 45, scope: !1392)
!1397 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1392, file: !119, line: 170, type: !6)
!1398 = !DILocation(line: 170, column: 33, scope: !1392)
!1399 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1392, file: !119, line: 170, type: !6)
!1400 = !DILocation(line: 170, column: 57, scope: !1392)
!1401 = !DILocation(line: 172, column: 8, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1392, file: !119, line: 172, column: 7)
!1403 = !DILocation(line: 172, column: 7, scope: !1392)
!1404 = !DILocation(line: 173, column: 7, scope: !1402)
!1405 = !DILocation(line: 173, column: 5, scope: !1402)
!1406 = !DILocation(line: 174, column: 3, scope: !1392)
!1407 = !DILocation(line: 174, column: 6, scope: !1392)
!1408 = !DILocation(line: 174, column: 12, scope: !1392)
!1409 = !DILocation(line: 175, column: 8, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1392, file: !119, line: 175, column: 7)
!1411 = !DILocation(line: 175, column: 19, scope: !1410)
!1412 = !DILocation(line: 175, column: 23, scope: !1410)
!1413 = !DILocation(line: 175, column: 7, scope: !1392)
!1414 = !DILocation(line: 176, column: 5, scope: !1410)
!1415 = !DILocation(line: 177, column: 19, scope: !1392)
!1416 = !DILocation(line: 177, column: 3, scope: !1392)
!1417 = !DILocation(line: 177, column: 6, scope: !1392)
!1418 = !DILocation(line: 177, column: 17, scope: !1392)
!1419 = !DILocation(line: 178, column: 20, scope: !1392)
!1420 = !DILocation(line: 178, column: 3, scope: !1392)
!1421 = !DILocation(line: 178, column: 6, scope: !1392)
!1422 = !DILocation(line: 178, column: 18, scope: !1392)
!1423 = !DILocation(line: 179, column: 1, scope: !1392)
!1424 = distinct !DISubprogram(name: "quotearg_buffer", scope: !119, file: !119, line: 774, type: !1425, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!141, !103, !141, !6, !141, !1306}
!1427 = !DILocalVariable(name: "buffer", arg: 1, scope: !1424, file: !119, line: 774, type: !103)
!1428 = !DILocation(line: 774, column: 24, scope: !1424)
!1429 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1424, file: !119, line: 774, type: !141)
!1430 = !DILocation(line: 774, column: 39, scope: !1424)
!1431 = !DILocalVariable(name: "arg", arg: 3, scope: !1424, file: !119, line: 775, type: !6)
!1432 = !DILocation(line: 775, column: 30, scope: !1424)
!1433 = !DILocalVariable(name: "argsize", arg: 4, scope: !1424, file: !119, line: 775, type: !141)
!1434 = !DILocation(line: 775, column: 42, scope: !1424)
!1435 = !DILocalVariable(name: "o", arg: 5, scope: !1424, file: !119, line: 776, type: !1306)
!1436 = !DILocation(line: 776, column: 48, scope: !1424)
!1437 = !DILocalVariable(name: "p", scope: !1424, file: !119, line: 778, type: !1306)
!1438 = !DILocation(line: 778, column: 33, scope: !1424)
!1439 = !DILocation(line: 778, column: 37, scope: !1424)
!1440 = !DILocation(line: 778, column: 41, scope: !1424)
!1441 = !DILocalVariable(name: "saved_errno", scope: !1424, file: !119, line: 779, type: !30)
!1442 = !DILocation(line: 779, column: 7, scope: !1424)
!1443 = !DILocation(line: 779, column: 21, scope: !1424)
!1444 = !DILocalVariable(name: "r", scope: !1424, file: !119, line: 780, type: !141)
!1445 = !DILocation(line: 780, column: 10, scope: !1424)
!1446 = !DILocation(line: 780, column: 40, scope: !1424)
!1447 = !DILocation(line: 780, column: 48, scope: !1424)
!1448 = !DILocation(line: 780, column: 60, scope: !1424)
!1449 = !DILocation(line: 780, column: 65, scope: !1424)
!1450 = !DILocation(line: 781, column: 40, scope: !1424)
!1451 = !DILocation(line: 781, column: 43, scope: !1424)
!1452 = !DILocation(line: 781, column: 50, scope: !1424)
!1453 = !DILocation(line: 781, column: 53, scope: !1424)
!1454 = !DILocation(line: 781, column: 60, scope: !1424)
!1455 = !DILocation(line: 781, column: 63, scope: !1424)
!1456 = !DILocation(line: 782, column: 40, scope: !1424)
!1457 = !DILocation(line: 782, column: 43, scope: !1424)
!1458 = !DILocation(line: 782, column: 55, scope: !1424)
!1459 = !DILocation(line: 782, column: 58, scope: !1424)
!1460 = !DILocation(line: 780, column: 14, scope: !1424)
!1461 = !DILocation(line: 783, column: 11, scope: !1424)
!1462 = !DILocation(line: 783, column: 3, scope: !1424)
!1463 = !DILocation(line: 783, column: 9, scope: !1424)
!1464 = !DILocation(line: 784, column: 10, scope: !1424)
!1465 = !DILocation(line: 784, column: 3, scope: !1424)
!1466 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !119, file: !119, line: 251, type: !1467, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!141, !103, !141, !6, !141, !121, !30, !1469, !6, !6}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1471 = !DILocalVariable(name: "buffer", arg: 1, scope: !1466, file: !119, line: 251, type: !103)
!1472 = !DILocation(line: 251, column: 33, scope: !1466)
!1473 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1466, file: !119, line: 251, type: !141)
!1474 = !DILocation(line: 251, column: 48, scope: !1466)
!1475 = !DILocalVariable(name: "arg", arg: 3, scope: !1466, file: !119, line: 252, type: !6)
!1476 = !DILocation(line: 252, column: 39, scope: !1466)
!1477 = !DILocalVariable(name: "argsize", arg: 4, scope: !1466, file: !119, line: 252, type: !141)
!1478 = !DILocation(line: 252, column: 51, scope: !1466)
!1479 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1466, file: !119, line: 253, type: !121)
!1480 = !DILocation(line: 253, column: 46, scope: !1466)
!1481 = !DILocalVariable(name: "flags", arg: 6, scope: !1466, file: !119, line: 253, type: !30)
!1482 = !DILocation(line: 253, column: 65, scope: !1466)
!1483 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1466, file: !119, line: 254, type: !1469)
!1484 = !DILocation(line: 254, column: 47, scope: !1466)
!1485 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1466, file: !119, line: 255, type: !6)
!1486 = !DILocation(line: 255, column: 39, scope: !1466)
!1487 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1466, file: !119, line: 256, type: !6)
!1488 = !DILocation(line: 256, column: 39, scope: !1466)
!1489 = !DILocalVariable(name: "unibyte_locale", scope: !1466, file: !119, line: 258, type: !46)
!1490 = !DILocation(line: 258, column: 8, scope: !1466)
!1491 = !DILocation(line: 258, column: 25, scope: !1466)
!1492 = !DILocation(line: 258, column: 36, scope: !1466)
!1493 = !DILocalVariable(name: "len", scope: !1466, file: !119, line: 260, type: !141)
!1494 = !DILocation(line: 260, column: 10, scope: !1466)
!1495 = !DILocalVariable(name: "orig_buffersize", scope: !1466, file: !119, line: 261, type: !141)
!1496 = !DILocation(line: 261, column: 10, scope: !1466)
!1497 = !DILocalVariable(name: "quote_string", scope: !1466, file: !119, line: 262, type: !6)
!1498 = !DILocation(line: 262, column: 15, scope: !1466)
!1499 = !DILocalVariable(name: "quote_string_len", scope: !1466, file: !119, line: 263, type: !141)
!1500 = !DILocation(line: 263, column: 10, scope: !1466)
!1501 = !DILocalVariable(name: "backslash_escapes", scope: !1466, file: !119, line: 264, type: !46)
!1502 = !DILocation(line: 264, column: 8, scope: !1466)
!1503 = !DILocalVariable(name: "elide_outer_quotes", scope: !1466, file: !119, line: 265, type: !46)
!1504 = !DILocation(line: 265, column: 8, scope: !1466)
!1505 = !DILocation(line: 265, column: 30, scope: !1466)
!1506 = !DILocation(line: 265, column: 36, scope: !1466)
!1507 = !DILocation(line: 265, column: 61, scope: !1466)
!1508 = !DILocalVariable(name: "encountered_single_quote", scope: !1466, file: !119, line: 266, type: !46)
!1509 = !DILocation(line: 266, column: 8, scope: !1466)
!1510 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1466, file: !119, line: 267, type: !46)
!1511 = !DILocation(line: 267, column: 8, scope: !1466)
!1512 = !DILocation(line: 267, column: 3, scope: !1466)
!1513 = !DILabel(scope: !1466, name: "process_input", file: !119, line: 308)
!1514 = !DILocation(line: 308, column: 2, scope: !1466)
!1515 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1466, file: !119, line: 309, type: !46)
!1516 = !DILocation(line: 309, column: 8, scope: !1466)
!1517 = !DILocation(line: 311, column: 11, scope: !1466)
!1518 = !DILocation(line: 311, column: 3, scope: !1466)
!1519 = !DILocation(line: 314, column: 21, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1466, file: !119, line: 312, column: 5)
!1521 = !DILocation(line: 315, column: 26, scope: !1520)
!1522 = !DILocation(line: 315, column: 7, scope: !1520)
!1523 = !DILocation(line: 318, column: 12, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !119, line: 318, column: 11)
!1525 = !DILocation(line: 318, column: 11, scope: !1520)
!1526 = !DILocation(line: 319, column: 9, scope: !1524)
!1527 = !DILocation(line: 319, column: 9, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !119, line: 319, column: 9)
!1529 = distinct !DILexicalBlock(scope: !1524, file: !119, line: 319, column: 9)
!1530 = !DILocation(line: 319, column: 9, scope: !1529)
!1531 = !DILocation(line: 320, column: 25, scope: !1520)
!1532 = !DILocation(line: 321, column: 20, scope: !1520)
!1533 = !DILocation(line: 322, column: 24, scope: !1520)
!1534 = !DILocation(line: 323, column: 7, scope: !1520)
!1535 = !DILocation(line: 326, column: 25, scope: !1520)
!1536 = !DILocation(line: 327, column: 26, scope: !1520)
!1537 = !DILocation(line: 328, column: 7, scope: !1520)
!1538 = !DILocation(line: 334, column: 13, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !119, line: 334, column: 13)
!1540 = distinct !DILexicalBlock(scope: !1520, file: !119, line: 333, column: 7)
!1541 = !DILocation(line: 334, column: 27, scope: !1539)
!1542 = !DILocation(line: 334, column: 13, scope: !1540)
!1543 = !DILocation(line: 357, column: 50, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1539, file: !119, line: 335, column: 11)
!1545 = !DILocation(line: 357, column: 26, scope: !1544)
!1546 = !DILocation(line: 357, column: 24, scope: !1544)
!1547 = !DILocation(line: 358, column: 51, scope: !1544)
!1548 = !DILocation(line: 358, column: 27, scope: !1544)
!1549 = !DILocation(line: 358, column: 25, scope: !1544)
!1550 = !DILocation(line: 359, column: 11, scope: !1544)
!1551 = !DILocation(line: 360, column: 14, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1540, file: !119, line: 360, column: 13)
!1553 = !DILocation(line: 360, column: 13, scope: !1540)
!1554 = !DILocalVariable(name: "lq", scope: !1555, file: !119, line: 361, type: !6)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !119, line: 361, column: 11)
!1556 = !DILocation(line: 361, column: 28, scope: !1555)
!1557 = !DILocation(line: 361, column: 33, scope: !1555)
!1558 = !DILocation(line: 361, column: 16, scope: !1555)
!1559 = !DILocation(line: 361, column: 46, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !119, line: 361, column: 11)
!1561 = !DILocation(line: 361, column: 45, scope: !1560)
!1562 = !DILocation(line: 361, column: 11, scope: !1555)
!1563 = !DILocation(line: 362, column: 13, scope: !1560)
!1564 = !DILocation(line: 362, column: 13, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !119, line: 362, column: 13)
!1566 = distinct !DILexicalBlock(scope: !1560, file: !119, line: 362, column: 13)
!1567 = !DILocation(line: 362, column: 13, scope: !1566)
!1568 = !DILocation(line: 361, column: 52, scope: !1560)
!1569 = !DILocation(line: 361, column: 11, scope: !1560)
!1570 = distinct !{!1570, !1562, !1571, !447}
!1571 = !DILocation(line: 362, column: 13, scope: !1555)
!1572 = !DILocation(line: 363, column: 27, scope: !1540)
!1573 = !DILocation(line: 364, column: 24, scope: !1540)
!1574 = !DILocation(line: 364, column: 22, scope: !1540)
!1575 = !DILocation(line: 365, column: 36, scope: !1540)
!1576 = !DILocation(line: 365, column: 28, scope: !1540)
!1577 = !DILocation(line: 365, column: 26, scope: !1540)
!1578 = !DILocation(line: 367, column: 7, scope: !1520)
!1579 = !DILocation(line: 370, column: 25, scope: !1520)
!1580 = !DILocation(line: 370, column: 7, scope: !1520)
!1581 = !DILocation(line: 373, column: 26, scope: !1520)
!1582 = !DILocation(line: 373, column: 7, scope: !1520)
!1583 = !DILocation(line: 376, column: 12, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1520, file: !119, line: 376, column: 11)
!1585 = !DILocation(line: 376, column: 11, scope: !1520)
!1586 = !DILocation(line: 377, column: 27, scope: !1584)
!1587 = !DILocation(line: 377, column: 9, scope: !1584)
!1588 = !DILocation(line: 380, column: 21, scope: !1520)
!1589 = !DILocation(line: 381, column: 12, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1520, file: !119, line: 381, column: 11)
!1591 = !DILocation(line: 381, column: 11, scope: !1520)
!1592 = !DILocation(line: 382, column: 9, scope: !1590)
!1593 = !DILocation(line: 382, column: 9, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !119, line: 382, column: 9)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !119, line: 382, column: 9)
!1596 = !DILocation(line: 382, column: 9, scope: !1595)
!1597 = !DILocation(line: 383, column: 20, scope: !1520)
!1598 = !DILocation(line: 384, column: 24, scope: !1520)
!1599 = !DILocation(line: 385, column: 7, scope: !1520)
!1600 = !DILocation(line: 388, column: 26, scope: !1520)
!1601 = !DILocation(line: 389, column: 7, scope: !1520)
!1602 = !DILocation(line: 392, column: 7, scope: !1520)
!1603 = !DILocalVariable(name: "i", scope: !1604, file: !119, line: 395, type: !141)
!1604 = distinct !DILexicalBlock(scope: !1466, file: !119, line: 395, column: 3)
!1605 = !DILocation(line: 395, column: 15, scope: !1604)
!1606 = !DILocation(line: 395, column: 8, scope: !1604)
!1607 = !DILocation(line: 395, column: 26, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !119, line: 395, column: 3)
!1609 = !DILocation(line: 395, column: 34, scope: !1608)
!1610 = !DILocation(line: 395, column: 48, scope: !1608)
!1611 = !DILocation(line: 395, column: 52, scope: !1608)
!1612 = !DILocation(line: 395, column: 55, scope: !1608)
!1613 = !DILocation(line: 395, column: 65, scope: !1608)
!1614 = !DILocation(line: 395, column: 70, scope: !1608)
!1615 = !DILocation(line: 395, column: 67, scope: !1608)
!1616 = !DILocation(line: 395, column: 23, scope: !1608)
!1617 = !DILocation(line: 395, column: 3, scope: !1604)
!1618 = !DILocalVariable(name: "is_right_quote", scope: !1619, file: !119, line: 397, type: !46)
!1619 = distinct !DILexicalBlock(scope: !1608, file: !119, line: 396, column: 5)
!1620 = !DILocation(line: 397, column: 12, scope: !1619)
!1621 = !DILocalVariable(name: "escaping", scope: !1619, file: !119, line: 398, type: !46)
!1622 = !DILocation(line: 398, column: 12, scope: !1619)
!1623 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1619, file: !119, line: 399, type: !46)
!1624 = !DILocation(line: 399, column: 12, scope: !1619)
!1625 = !DILocation(line: 401, column: 11, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1619, file: !119, line: 401, column: 11)
!1627 = !DILocation(line: 402, column: 11, scope: !1626)
!1628 = !DILocation(line: 402, column: 14, scope: !1626)
!1629 = !DILocation(line: 402, column: 28, scope: !1626)
!1630 = !DILocation(line: 403, column: 11, scope: !1626)
!1631 = !DILocation(line: 403, column: 14, scope: !1626)
!1632 = !DILocation(line: 404, column: 11, scope: !1626)
!1633 = !DILocation(line: 404, column: 15, scope: !1626)
!1634 = !DILocation(line: 404, column: 19, scope: !1626)
!1635 = !DILocation(line: 404, column: 17, scope: !1626)
!1636 = !DILocation(line: 405, column: 19, scope: !1626)
!1637 = !DILocation(line: 405, column: 27, scope: !1626)
!1638 = !DILocation(line: 405, column: 39, scope: !1626)
!1639 = !DILocation(line: 405, column: 46, scope: !1626)
!1640 = !DILocation(line: 405, column: 44, scope: !1626)
!1641 = !DILocation(line: 409, column: 40, scope: !1626)
!1642 = !DILocation(line: 409, column: 32, scope: !1626)
!1643 = !DILocation(line: 409, column: 30, scope: !1626)
!1644 = !DILocation(line: 409, column: 48, scope: !1626)
!1645 = !DILocation(line: 405, column: 15, scope: !1626)
!1646 = !DILocation(line: 410, column: 11, scope: !1626)
!1647 = !DILocation(line: 410, column: 21, scope: !1626)
!1648 = !DILocation(line: 410, column: 27, scope: !1626)
!1649 = !DILocation(line: 410, column: 25, scope: !1626)
!1650 = !DILocation(line: 410, column: 30, scope: !1626)
!1651 = !DILocation(line: 410, column: 44, scope: !1626)
!1652 = !DILocation(line: 410, column: 14, scope: !1626)
!1653 = !DILocation(line: 401, column: 11, scope: !1619)
!1654 = !DILocation(line: 412, column: 15, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !119, line: 412, column: 15)
!1656 = distinct !DILexicalBlock(scope: !1626, file: !119, line: 411, column: 9)
!1657 = !DILocation(line: 412, column: 15, scope: !1656)
!1658 = !DILocation(line: 413, column: 13, scope: !1655)
!1659 = !DILocation(line: 414, column: 26, scope: !1656)
!1660 = !DILocation(line: 415, column: 9, scope: !1656)
!1661 = !DILocalVariable(name: "c", scope: !1619, file: !119, line: 417, type: !241)
!1662 = !DILocation(line: 417, column: 21, scope: !1619)
!1663 = !DILocation(line: 417, column: 25, scope: !1619)
!1664 = !DILocation(line: 417, column: 29, scope: !1619)
!1665 = !DILocation(line: 418, column: 15, scope: !1619)
!1666 = !DILocation(line: 418, column: 7, scope: !1619)
!1667 = !DILocation(line: 421, column: 15, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !119, line: 421, column: 15)
!1669 = distinct !DILexicalBlock(scope: !1619, file: !119, line: 419, column: 9)
!1670 = !DILocation(line: 421, column: 15, scope: !1669)
!1671 = !DILocation(line: 423, column: 15, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !119, line: 422, column: 13)
!1673 = !DILocation(line: 423, column: 15, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !119, line: 423, column: 15)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !119, line: 423, column: 15)
!1676 = !DILocation(line: 423, column: 15, scope: !1675)
!1677 = !DILocation(line: 423, column: 15, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1675, file: !119, line: 423, column: 15)
!1679 = !DILocation(line: 423, column: 15, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1678, file: !119, line: 423, column: 15)
!1681 = !DILocation(line: 423, column: 15, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !119, line: 423, column: 15)
!1683 = distinct !DILexicalBlock(scope: !1680, file: !119, line: 423, column: 15)
!1684 = !DILocation(line: 423, column: 15, scope: !1683)
!1685 = !DILocation(line: 423, column: 15, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !119, line: 423, column: 15)
!1687 = distinct !DILexicalBlock(scope: !1680, file: !119, line: 423, column: 15)
!1688 = !DILocation(line: 423, column: 15, scope: !1687)
!1689 = !DILocation(line: 423, column: 15, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !119, line: 423, column: 15)
!1691 = distinct !DILexicalBlock(scope: !1680, file: !119, line: 423, column: 15)
!1692 = !DILocation(line: 423, column: 15, scope: !1691)
!1693 = !DILocation(line: 423, column: 15, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !119, line: 423, column: 15)
!1695 = distinct !DILexicalBlock(scope: !1675, file: !119, line: 423, column: 15)
!1696 = !DILocation(line: 423, column: 15, scope: !1695)
!1697 = !DILocation(line: 430, column: 19, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1672, file: !119, line: 430, column: 19)
!1699 = !DILocation(line: 430, column: 33, scope: !1698)
!1700 = !DILocation(line: 431, column: 19, scope: !1698)
!1701 = !DILocation(line: 431, column: 22, scope: !1698)
!1702 = !DILocation(line: 431, column: 24, scope: !1698)
!1703 = !DILocation(line: 431, column: 30, scope: !1698)
!1704 = !DILocation(line: 431, column: 28, scope: !1698)
!1705 = !DILocation(line: 431, column: 38, scope: !1698)
!1706 = !DILocation(line: 431, column: 48, scope: !1698)
!1707 = !DILocation(line: 431, column: 52, scope: !1698)
!1708 = !DILocation(line: 431, column: 54, scope: !1698)
!1709 = !DILocation(line: 431, column: 45, scope: !1698)
!1710 = !DILocation(line: 431, column: 59, scope: !1698)
!1711 = !DILocation(line: 431, column: 62, scope: !1698)
!1712 = !DILocation(line: 431, column: 66, scope: !1698)
!1713 = !DILocation(line: 431, column: 68, scope: !1698)
!1714 = !DILocation(line: 431, column: 73, scope: !1698)
!1715 = !DILocation(line: 430, column: 19, scope: !1672)
!1716 = !DILocation(line: 433, column: 19, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1698, file: !119, line: 432, column: 17)
!1718 = !DILocation(line: 433, column: 19, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !119, line: 433, column: 19)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !119, line: 433, column: 19)
!1721 = !DILocation(line: 433, column: 19, scope: !1720)
!1722 = !DILocation(line: 434, column: 19, scope: !1717)
!1723 = !DILocation(line: 434, column: 19, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !119, line: 434, column: 19)
!1725 = distinct !DILexicalBlock(scope: !1717, file: !119, line: 434, column: 19)
!1726 = !DILocation(line: 434, column: 19, scope: !1725)
!1727 = !DILocation(line: 435, column: 17, scope: !1717)
!1728 = !DILocation(line: 436, column: 17, scope: !1672)
!1729 = !DILocation(line: 441, column: 13, scope: !1672)
!1730 = !DILocation(line: 442, column: 20, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1668, file: !119, line: 442, column: 20)
!1732 = !DILocation(line: 442, column: 26, scope: !1731)
!1733 = !DILocation(line: 442, column: 20, scope: !1668)
!1734 = !DILocation(line: 443, column: 13, scope: !1731)
!1735 = !DILocation(line: 444, column: 11, scope: !1669)
!1736 = !DILocation(line: 447, column: 20, scope: !1669)
!1737 = !DILocation(line: 447, column: 11, scope: !1669)
!1738 = !DILocation(line: 450, column: 19, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !119, line: 450, column: 19)
!1740 = distinct !DILexicalBlock(scope: !1669, file: !119, line: 448, column: 13)
!1741 = !DILocation(line: 450, column: 19, scope: !1740)
!1742 = !DILocation(line: 451, column: 17, scope: !1739)
!1743 = !DILocation(line: 452, column: 15, scope: !1740)
!1744 = !DILocation(line: 455, column: 20, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !119, line: 455, column: 19)
!1746 = !DILocation(line: 455, column: 26, scope: !1745)
!1747 = !DILocation(line: 456, column: 19, scope: !1745)
!1748 = !DILocation(line: 456, column: 22, scope: !1745)
!1749 = !DILocation(line: 456, column: 24, scope: !1745)
!1750 = !DILocation(line: 456, column: 30, scope: !1745)
!1751 = !DILocation(line: 456, column: 28, scope: !1745)
!1752 = !DILocation(line: 456, column: 38, scope: !1745)
!1753 = !DILocation(line: 456, column: 41, scope: !1745)
!1754 = !DILocation(line: 456, column: 45, scope: !1745)
!1755 = !DILocation(line: 456, column: 47, scope: !1745)
!1756 = !DILocation(line: 456, column: 52, scope: !1745)
!1757 = !DILocation(line: 455, column: 19, scope: !1740)
!1758 = !DILocation(line: 457, column: 25, scope: !1745)
!1759 = !DILocation(line: 457, column: 29, scope: !1745)
!1760 = !DILocation(line: 457, column: 31, scope: !1745)
!1761 = !DILocation(line: 457, column: 17, scope: !1745)
!1762 = !DILocation(line: 464, column: 25, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !119, line: 464, column: 25)
!1764 = distinct !DILexicalBlock(scope: !1745, file: !119, line: 458, column: 19)
!1765 = !DILocation(line: 464, column: 25, scope: !1764)
!1766 = !DILocation(line: 465, column: 23, scope: !1763)
!1767 = !DILocation(line: 466, column: 25, scope: !1764)
!1768 = !DILocation(line: 466, column: 29, scope: !1764)
!1769 = !DILocation(line: 466, column: 31, scope: !1764)
!1770 = !DILocation(line: 466, column: 23, scope: !1764)
!1771 = !DILocation(line: 467, column: 23, scope: !1764)
!1772 = !DILocation(line: 468, column: 21, scope: !1764)
!1773 = !DILocation(line: 468, column: 21, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !119, line: 468, column: 21)
!1775 = distinct !DILexicalBlock(scope: !1764, file: !119, line: 468, column: 21)
!1776 = !DILocation(line: 468, column: 21, scope: !1775)
!1777 = !DILocation(line: 469, column: 21, scope: !1764)
!1778 = !DILocation(line: 469, column: 21, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !119, line: 469, column: 21)
!1780 = distinct !DILexicalBlock(scope: !1764, file: !119, line: 469, column: 21)
!1781 = !DILocation(line: 469, column: 21, scope: !1780)
!1782 = !DILocation(line: 470, column: 21, scope: !1764)
!1783 = !DILocation(line: 470, column: 21, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !119, line: 470, column: 21)
!1785 = distinct !DILexicalBlock(scope: !1764, file: !119, line: 470, column: 21)
!1786 = !DILocation(line: 470, column: 21, scope: !1785)
!1787 = !DILocation(line: 471, column: 21, scope: !1764)
!1788 = !DILocation(line: 471, column: 21, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !119, line: 471, column: 21)
!1790 = distinct !DILexicalBlock(scope: !1764, file: !119, line: 471, column: 21)
!1791 = !DILocation(line: 471, column: 21, scope: !1790)
!1792 = !DILocation(line: 472, column: 21, scope: !1764)
!1793 = !DILocation(line: 473, column: 19, scope: !1764)
!1794 = !DILocation(line: 474, column: 15, scope: !1740)
!1795 = !DILocation(line: 476, column: 11, scope: !1669)
!1796 = !DILocation(line: 481, column: 26, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1669, file: !119, line: 478, column: 9)
!1798 = !DILocation(line: 481, column: 33, scope: !1797)
!1799 = !DILocation(line: 482, column: 26, scope: !1797)
!1800 = !DILocation(line: 482, column: 33, scope: !1797)
!1801 = !DILocation(line: 483, column: 26, scope: !1797)
!1802 = !DILocation(line: 483, column: 33, scope: !1797)
!1803 = !DILocation(line: 484, column: 26, scope: !1797)
!1804 = !DILocation(line: 484, column: 33, scope: !1797)
!1805 = !DILocation(line: 485, column: 26, scope: !1797)
!1806 = !DILocation(line: 485, column: 33, scope: !1797)
!1807 = !DILocation(line: 486, column: 26, scope: !1797)
!1808 = !DILocation(line: 486, column: 33, scope: !1797)
!1809 = !DILocation(line: 487, column: 26, scope: !1797)
!1810 = !DILocation(line: 487, column: 33, scope: !1797)
!1811 = !DILocation(line: 488, column: 28, scope: !1797)
!1812 = !DILocation(line: 488, column: 26, scope: !1797)
!1813 = !DILocation(line: 490, column: 17, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1797, file: !119, line: 490, column: 17)
!1815 = !DILocation(line: 490, column: 31, scope: !1814)
!1816 = !DILocation(line: 490, column: 17, scope: !1797)
!1817 = !DILocation(line: 492, column: 21, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !119, line: 492, column: 21)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !119, line: 491, column: 15)
!1820 = !DILocation(line: 492, column: 21, scope: !1819)
!1821 = !DILocation(line: 493, column: 19, scope: !1818)
!1822 = !DILocation(line: 494, column: 17, scope: !1819)
!1823 = !DILocation(line: 499, column: 17, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1797, file: !119, line: 499, column: 17)
!1825 = !DILocation(line: 499, column: 35, scope: !1824)
!1826 = !DILocation(line: 499, column: 38, scope: !1824)
!1827 = !DILocation(line: 499, column: 57, scope: !1824)
!1828 = !DILocation(line: 499, column: 60, scope: !1824)
!1829 = !DILocation(line: 499, column: 17, scope: !1797)
!1830 = !DILocation(line: 500, column: 15, scope: !1824)
!1831 = !DILabel(scope: !1797, name: "c_and_shell_escape", file: !119, line: 502)
!1832 = !DILocation(line: 502, column: 11, scope: !1797)
!1833 = !DILocation(line: 503, column: 17, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1797, file: !119, line: 503, column: 17)
!1835 = !DILocation(line: 503, column: 31, scope: !1834)
!1836 = !DILocation(line: 504, column: 17, scope: !1834)
!1837 = !DILocation(line: 504, column: 20, scope: !1834)
!1838 = !DILocation(line: 503, column: 17, scope: !1797)
!1839 = !DILocation(line: 505, column: 15, scope: !1834)
!1840 = !DILabel(scope: !1797, name: "c_escape", file: !119, line: 507)
!1841 = !DILocation(line: 507, column: 11, scope: !1797)
!1842 = !DILocation(line: 508, column: 17, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1797, file: !119, line: 508, column: 17)
!1844 = !DILocation(line: 508, column: 17, scope: !1797)
!1845 = !DILocation(line: 510, column: 21, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !119, line: 509, column: 15)
!1847 = !DILocation(line: 510, column: 19, scope: !1846)
!1848 = !DILocation(line: 511, column: 17, scope: !1846)
!1849 = !DILocation(line: 513, column: 13, scope: !1797)
!1850 = !DILocation(line: 517, column: 18, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1669, file: !119, line: 517, column: 15)
!1852 = !DILocation(line: 517, column: 26, scope: !1851)
!1853 = !DILocation(line: 517, column: 15, scope: !1669)
!1854 = !DILocation(line: 517, column: 40, scope: !1851)
!1855 = !DILocation(line: 517, column: 47, scope: !1851)
!1856 = !DILocation(line: 517, column: 57, scope: !1851)
!1857 = !DILocation(line: 517, column: 65, scope: !1851)
!1858 = !DILocation(line: 518, column: 13, scope: !1851)
!1859 = !DILocation(line: 517, column: 69, scope: !1851)
!1860 = !DILocation(line: 521, column: 15, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1669, file: !119, line: 521, column: 15)
!1862 = !DILocation(line: 521, column: 17, scope: !1861)
!1863 = !DILocation(line: 521, column: 15, scope: !1669)
!1864 = !DILocation(line: 522, column: 13, scope: !1861)
!1865 = !DILocation(line: 521, column: 20, scope: !1861)
!1866 = !DILocation(line: 525, column: 36, scope: !1669)
!1867 = !DILocation(line: 525, column: 11, scope: !1669)
!1868 = !DILocation(line: 536, column: 15, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1669, file: !119, line: 536, column: 15)
!1870 = !DILocation(line: 536, column: 29, scope: !1869)
!1871 = !DILocation(line: 537, column: 15, scope: !1869)
!1872 = !DILocation(line: 537, column: 18, scope: !1869)
!1873 = !DILocation(line: 536, column: 15, scope: !1669)
!1874 = !DILocation(line: 538, column: 13, scope: !1869)
!1875 = !DILocation(line: 539, column: 11, scope: !1669)
!1876 = !DILocation(line: 542, column: 36, scope: !1669)
!1877 = !DILocation(line: 543, column: 36, scope: !1669)
!1878 = !DILocation(line: 544, column: 15, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1669, file: !119, line: 544, column: 15)
!1880 = !DILocation(line: 544, column: 29, scope: !1879)
!1881 = !DILocation(line: 544, column: 15, scope: !1669)
!1882 = !DILocation(line: 546, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !119, line: 546, column: 19)
!1884 = distinct !DILexicalBlock(scope: !1879, file: !119, line: 545, column: 13)
!1885 = !DILocation(line: 546, column: 19, scope: !1884)
!1886 = !DILocation(line: 547, column: 17, scope: !1883)
!1887 = !DILocation(line: 549, column: 19, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1884, file: !119, line: 549, column: 19)
!1889 = !DILocation(line: 549, column: 30, scope: !1888)
!1890 = !DILocation(line: 549, column: 35, scope: !1888)
!1891 = !DILocation(line: 549, column: 19, scope: !1884)
!1892 = !DILocation(line: 554, column: 37, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !119, line: 550, column: 17)
!1894 = !DILocation(line: 554, column: 35, scope: !1893)
!1895 = !DILocation(line: 555, column: 30, scope: !1893)
!1896 = !DILocation(line: 556, column: 17, scope: !1893)
!1897 = !DILocation(line: 558, column: 15, scope: !1884)
!1898 = !DILocation(line: 558, column: 15, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !119, line: 558, column: 15)
!1900 = distinct !DILexicalBlock(scope: !1884, file: !119, line: 558, column: 15)
!1901 = !DILocation(line: 558, column: 15, scope: !1900)
!1902 = !DILocation(line: 559, column: 15, scope: !1884)
!1903 = !DILocation(line: 559, column: 15, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !119, line: 559, column: 15)
!1905 = distinct !DILexicalBlock(scope: !1884, file: !119, line: 559, column: 15)
!1906 = !DILocation(line: 559, column: 15, scope: !1905)
!1907 = !DILocation(line: 560, column: 15, scope: !1884)
!1908 = !DILocation(line: 560, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !119, line: 560, column: 15)
!1910 = distinct !DILexicalBlock(scope: !1884, file: !119, line: 560, column: 15)
!1911 = !DILocation(line: 560, column: 15, scope: !1910)
!1912 = !DILocation(line: 561, column: 40, scope: !1884)
!1913 = !DILocation(line: 562, column: 13, scope: !1884)
!1914 = !DILocation(line: 563, column: 11, scope: !1669)
!1915 = !DILocation(line: 587, column: 36, scope: !1669)
!1916 = !DILocation(line: 588, column: 11, scope: !1669)
!1917 = !DILocalVariable(name: "m", scope: !1918, file: !119, line: 598, type: !141)
!1918 = distinct !DILexicalBlock(scope: !1669, file: !119, line: 596, column: 11)
!1919 = !DILocation(line: 598, column: 20, scope: !1918)
!1920 = !DILocalVariable(name: "printable", scope: !1918, file: !119, line: 600, type: !46)
!1921 = !DILocation(line: 600, column: 18, scope: !1918)
!1922 = !DILocation(line: 602, column: 17, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1918, file: !119, line: 602, column: 17)
!1924 = !DILocation(line: 602, column: 17, scope: !1918)
!1925 = !DILocation(line: 604, column: 19, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !119, line: 603, column: 15)
!1927 = !DILocation(line: 605, column: 29, scope: !1926)
!1928 = !DILocation(line: 605, column: 41, scope: !1926)
!1929 = !DILocation(line: 605, column: 27, scope: !1926)
!1930 = !DILocation(line: 606, column: 15, scope: !1926)
!1931 = !DILocalVariable(name: "mbs", scope: !1932, file: !119, line: 609, type: !1933)
!1932 = distinct !DILexicalBlock(scope: !1923, file: !119, line: 608, column: 15)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !244, line: 6, baseType: !1934)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !246, line: 21, baseType: !1935)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 13, size: 64, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1935, file: !246, line: 15, baseType: !30, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1935, file: !246, line: 20, baseType: !1939, size: 32, offset: 32)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !246, line: 16, size: 32, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1939, file: !246, line: 18, baseType: !14, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1939, file: !246, line: 19, baseType: !255, size: 32)
!1943 = !DILocation(line: 609, column: 27, scope: !1932)
!1944 = !DILocation(line: 609, column: 32, scope: !1932)
!1945 = !DILocation(line: 611, column: 19, scope: !1932)
!1946 = !DILocation(line: 612, column: 27, scope: !1932)
!1947 = !DILocation(line: 613, column: 21, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1932, file: !119, line: 613, column: 21)
!1949 = !DILocation(line: 613, column: 29, scope: !1948)
!1950 = !DILocation(line: 613, column: 21, scope: !1932)
!1951 = !DILocation(line: 614, column: 37, scope: !1948)
!1952 = !DILocation(line: 614, column: 29, scope: !1948)
!1953 = !DILocation(line: 614, column: 27, scope: !1948)
!1954 = !DILocation(line: 614, column: 19, scope: !1948)
!1955 = !DILocation(line: 616, column: 17, scope: !1932)
!1956 = !DILocalVariable(name: "w", scope: !1957, file: !119, line: 618, type: !1254)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !119, line: 617, column: 19)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !119, line: 616, column: 17)
!1959 = distinct !DILexicalBlock(scope: !1932, file: !119, line: 616, column: 17)
!1960 = !DILocation(line: 618, column: 30, scope: !1957)
!1961 = !DILocalVariable(name: "bytes", scope: !1957, file: !119, line: 619, type: !141)
!1962 = !DILocation(line: 619, column: 28, scope: !1957)
!1963 = !DILocation(line: 619, column: 51, scope: !1957)
!1964 = !DILocation(line: 619, column: 55, scope: !1957)
!1965 = !DILocation(line: 619, column: 59, scope: !1957)
!1966 = !DILocation(line: 619, column: 57, scope: !1957)
!1967 = !DILocation(line: 620, column: 46, scope: !1957)
!1968 = !DILocation(line: 620, column: 57, scope: !1957)
!1969 = !DILocation(line: 620, column: 61, scope: !1957)
!1970 = !DILocation(line: 620, column: 59, scope: !1957)
!1971 = !DILocation(line: 620, column: 54, scope: !1957)
!1972 = !DILocation(line: 619, column: 36, scope: !1957)
!1973 = !DILocation(line: 621, column: 25, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1957, file: !119, line: 621, column: 25)
!1975 = !DILocation(line: 621, column: 31, scope: !1974)
!1976 = !DILocation(line: 621, column: 25, scope: !1957)
!1977 = !DILocation(line: 622, column: 23, scope: !1974)
!1978 = !DILocation(line: 623, column: 30, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1974, file: !119, line: 623, column: 30)
!1980 = !DILocation(line: 623, column: 36, scope: !1979)
!1981 = !DILocation(line: 623, column: 30, scope: !1974)
!1982 = !DILocation(line: 625, column: 35, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !119, line: 624, column: 23)
!1984 = !DILocation(line: 626, column: 25, scope: !1983)
!1985 = !DILocation(line: 628, column: 30, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1979, file: !119, line: 628, column: 30)
!1987 = !DILocation(line: 628, column: 36, scope: !1986)
!1988 = !DILocation(line: 628, column: 30, scope: !1979)
!1989 = !DILocation(line: 630, column: 35, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1986, file: !119, line: 629, column: 23)
!1991 = !DILocation(line: 631, column: 25, scope: !1990)
!1992 = !DILocation(line: 631, column: 32, scope: !1990)
!1993 = !DILocation(line: 631, column: 36, scope: !1990)
!1994 = !DILocation(line: 631, column: 34, scope: !1990)
!1995 = !DILocation(line: 631, column: 40, scope: !1990)
!1996 = !DILocation(line: 631, column: 38, scope: !1990)
!1997 = !DILocation(line: 631, column: 48, scope: !1990)
!1998 = !DILocation(line: 631, column: 51, scope: !1990)
!1999 = !DILocation(line: 631, column: 55, scope: !1990)
!2000 = !DILocation(line: 631, column: 59, scope: !1990)
!2001 = !DILocation(line: 631, column: 57, scope: !1990)
!2002 = !DILocation(line: 0, scope: !1990)
!2003 = !DILocation(line: 632, column: 28, scope: !1990)
!2004 = distinct !{!2004, !1991, !2003, !447}
!2005 = !DILocation(line: 633, column: 25, scope: !1990)
!2006 = !DILocation(line: 645, column: 44, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !119, line: 645, column: 29)
!2008 = distinct !DILexicalBlock(scope: !1986, file: !119, line: 636, column: 23)
!2009 = !DILocation(line: 646, column: 29, scope: !2007)
!2010 = !DILocation(line: 646, column: 32, scope: !2007)
!2011 = !DILocation(line: 646, column: 46, scope: !2007)
!2012 = !DILocation(line: 645, column: 29, scope: !2008)
!2013 = !DILocalVariable(name: "j", scope: !2014, file: !119, line: 648, type: !141)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !119, line: 648, column: 29)
!2015 = distinct !DILexicalBlock(scope: !2007, file: !119, line: 647, column: 27)
!2016 = !DILocation(line: 648, column: 41, scope: !2014)
!2017 = !DILocation(line: 648, column: 34, scope: !2014)
!2018 = !DILocation(line: 648, column: 48, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2014, file: !119, line: 648, column: 29)
!2020 = !DILocation(line: 648, column: 52, scope: !2019)
!2021 = !DILocation(line: 648, column: 50, scope: !2019)
!2022 = !DILocation(line: 648, column: 29, scope: !2014)
!2023 = !DILocation(line: 649, column: 39, scope: !2019)
!2024 = !DILocation(line: 649, column: 43, scope: !2019)
!2025 = !DILocation(line: 649, column: 47, scope: !2019)
!2026 = !DILocation(line: 649, column: 45, scope: !2019)
!2027 = !DILocation(line: 649, column: 51, scope: !2019)
!2028 = !DILocation(line: 649, column: 49, scope: !2019)
!2029 = !DILocation(line: 649, column: 31, scope: !2019)
!2030 = !DILocation(line: 653, column: 35, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2019, file: !119, line: 650, column: 33)
!2032 = !DILocation(line: 654, column: 33, scope: !2031)
!2033 = !DILocation(line: 648, column: 60, scope: !2019)
!2034 = !DILocation(line: 648, column: 29, scope: !2019)
!2035 = distinct !{!2035, !2022, !2036, !447}
!2036 = !DILocation(line: 654, column: 33, scope: !2014)
!2037 = !DILocation(line: 655, column: 27, scope: !2015)
!2038 = !DILocation(line: 657, column: 43, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2008, file: !119, line: 657, column: 29)
!2040 = !DILocation(line: 657, column: 31, scope: !2039)
!2041 = !DILocation(line: 657, column: 29, scope: !2008)
!2042 = !DILocation(line: 658, column: 37, scope: !2039)
!2043 = !DILocation(line: 658, column: 27, scope: !2039)
!2044 = !DILocation(line: 659, column: 30, scope: !2008)
!2045 = !DILocation(line: 659, column: 27, scope: !2008)
!2046 = !DILocation(line: 664, column: 23, scope: !1957)
!2047 = !DILocation(line: 668, column: 40, scope: !1918)
!2048 = !DILocation(line: 668, column: 38, scope: !1918)
!2049 = !DILocation(line: 670, column: 21, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1918, file: !119, line: 670, column: 17)
!2051 = !DILocation(line: 670, column: 19, scope: !2050)
!2052 = !DILocation(line: 670, column: 23, scope: !2050)
!2053 = !DILocation(line: 670, column: 27, scope: !2050)
!2054 = !DILocation(line: 670, column: 45, scope: !2050)
!2055 = !DILocation(line: 670, column: 50, scope: !2050)
!2056 = !DILocation(line: 670, column: 17, scope: !1918)
!2057 = !DILocalVariable(name: "ilim", scope: !2058, file: !119, line: 674, type: !141)
!2058 = distinct !DILexicalBlock(scope: !2050, file: !119, line: 671, column: 15)
!2059 = !DILocation(line: 674, column: 24, scope: !2058)
!2060 = !DILocation(line: 674, column: 31, scope: !2058)
!2061 = !DILocation(line: 674, column: 35, scope: !2058)
!2062 = !DILocation(line: 674, column: 33, scope: !2058)
!2063 = !DILocation(line: 676, column: 17, scope: !2058)
!2064 = !DILocation(line: 678, column: 25, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !119, line: 678, column: 25)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !119, line: 677, column: 19)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !119, line: 676, column: 17)
!2068 = distinct !DILexicalBlock(scope: !2058, file: !119, line: 676, column: 17)
!2069 = !DILocation(line: 678, column: 43, scope: !2065)
!2070 = !DILocation(line: 678, column: 48, scope: !2065)
!2071 = !DILocation(line: 678, column: 25, scope: !2066)
!2072 = !DILocation(line: 680, column: 25, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2065, file: !119, line: 679, column: 23)
!2074 = !DILocation(line: 680, column: 25, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !119, line: 680, column: 25)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !119, line: 680, column: 25)
!2077 = !DILocation(line: 680, column: 25, scope: !2076)
!2078 = !DILocation(line: 680, column: 25, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2076, file: !119, line: 680, column: 25)
!2080 = !DILocation(line: 680, column: 25, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2079, file: !119, line: 680, column: 25)
!2082 = !DILocation(line: 680, column: 25, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !119, line: 680, column: 25)
!2084 = distinct !DILexicalBlock(scope: !2081, file: !119, line: 680, column: 25)
!2085 = !DILocation(line: 680, column: 25, scope: !2084)
!2086 = !DILocation(line: 680, column: 25, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !119, line: 680, column: 25)
!2088 = distinct !DILexicalBlock(scope: !2081, file: !119, line: 680, column: 25)
!2089 = !DILocation(line: 680, column: 25, scope: !2088)
!2090 = !DILocation(line: 680, column: 25, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !119, line: 680, column: 25)
!2092 = distinct !DILexicalBlock(scope: !2081, file: !119, line: 680, column: 25)
!2093 = !DILocation(line: 680, column: 25, scope: !2092)
!2094 = !DILocation(line: 680, column: 25, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !119, line: 680, column: 25)
!2096 = distinct !DILexicalBlock(scope: !2076, file: !119, line: 680, column: 25)
!2097 = !DILocation(line: 680, column: 25, scope: !2096)
!2098 = !DILocation(line: 681, column: 25, scope: !2073)
!2099 = !DILocation(line: 681, column: 25, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !119, line: 681, column: 25)
!2101 = distinct !DILexicalBlock(scope: !2073, file: !119, line: 681, column: 25)
!2102 = !DILocation(line: 681, column: 25, scope: !2101)
!2103 = !DILocation(line: 682, column: 25, scope: !2073)
!2104 = !DILocation(line: 682, column: 25, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !119, line: 682, column: 25)
!2106 = distinct !DILexicalBlock(scope: !2073, file: !119, line: 682, column: 25)
!2107 = !DILocation(line: 682, column: 25, scope: !2106)
!2108 = !DILocation(line: 683, column: 36, scope: !2073)
!2109 = !DILocation(line: 683, column: 38, scope: !2073)
!2110 = !DILocation(line: 683, column: 33, scope: !2073)
!2111 = !DILocation(line: 683, column: 29, scope: !2073)
!2112 = !DILocation(line: 683, column: 27, scope: !2073)
!2113 = !DILocation(line: 684, column: 23, scope: !2073)
!2114 = !DILocation(line: 685, column: 30, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2065, file: !119, line: 685, column: 30)
!2116 = !DILocation(line: 685, column: 30, scope: !2065)
!2117 = !DILocation(line: 687, column: 25, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !119, line: 686, column: 23)
!2119 = !DILocation(line: 687, column: 25, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !119, line: 687, column: 25)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !119, line: 687, column: 25)
!2122 = !DILocation(line: 687, column: 25, scope: !2121)
!2123 = !DILocation(line: 688, column: 40, scope: !2118)
!2124 = !DILocation(line: 689, column: 23, scope: !2118)
!2125 = !DILocation(line: 690, column: 25, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2066, file: !119, line: 690, column: 25)
!2127 = !DILocation(line: 690, column: 33, scope: !2126)
!2128 = !DILocation(line: 690, column: 35, scope: !2126)
!2129 = !DILocation(line: 690, column: 30, scope: !2126)
!2130 = !DILocation(line: 690, column: 25, scope: !2066)
!2131 = !DILocation(line: 691, column: 23, scope: !2126)
!2132 = !DILocation(line: 692, column: 21, scope: !2066)
!2133 = !DILocation(line: 692, column: 21, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !119, line: 692, column: 21)
!2135 = distinct !DILexicalBlock(scope: !2066, file: !119, line: 692, column: 21)
!2136 = !DILocation(line: 692, column: 21, scope: !2135)
!2137 = !DILocation(line: 692, column: 21, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2134, file: !119, line: 692, column: 21)
!2139 = !DILocation(line: 692, column: 21, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !119, line: 692, column: 21)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !119, line: 692, column: 21)
!2142 = !DILocation(line: 692, column: 21, scope: !2141)
!2143 = !DILocation(line: 692, column: 21, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !119, line: 692, column: 21)
!2145 = distinct !DILexicalBlock(scope: !2138, file: !119, line: 692, column: 21)
!2146 = !DILocation(line: 692, column: 21, scope: !2145)
!2147 = !DILocation(line: 693, column: 21, scope: !2066)
!2148 = !DILocation(line: 693, column: 21, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !119, line: 693, column: 21)
!2150 = distinct !DILexicalBlock(scope: !2066, file: !119, line: 693, column: 21)
!2151 = !DILocation(line: 693, column: 21, scope: !2150)
!2152 = !DILocation(line: 694, column: 25, scope: !2066)
!2153 = !DILocation(line: 694, column: 29, scope: !2066)
!2154 = !DILocation(line: 694, column: 23, scope: !2066)
!2155 = !DILocation(line: 676, column: 17, scope: !2067)
!2156 = distinct !{!2156, !2157, !2158}
!2157 = !DILocation(line: 676, column: 17, scope: !2068)
!2158 = !DILocation(line: 695, column: 19, scope: !2068)
!2159 = !DILocation(line: 697, column: 17, scope: !2058)
!2160 = !DILocation(line: 700, column: 9, scope: !1669)
!2161 = !DILocation(line: 702, column: 16, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !1619, file: !119, line: 702, column: 11)
!2163 = !DILocation(line: 702, column: 34, scope: !2162)
!2164 = !DILocation(line: 702, column: 37, scope: !2162)
!2165 = !DILocation(line: 702, column: 51, scope: !2162)
!2166 = !DILocation(line: 703, column: 15, scope: !2162)
!2167 = !DILocation(line: 703, column: 18, scope: !2162)
!2168 = !DILocation(line: 704, column: 14, scope: !2162)
!2169 = !DILocation(line: 704, column: 17, scope: !2162)
!2170 = !DILocation(line: 705, column: 14, scope: !2162)
!2171 = !DILocation(line: 705, column: 17, scope: !2162)
!2172 = !DILocation(line: 705, column: 33, scope: !2162)
!2173 = !DILocation(line: 705, column: 35, scope: !2162)
!2174 = !DILocation(line: 705, column: 51, scope: !2162)
!2175 = !DILocation(line: 705, column: 53, scope: !2162)
!2176 = !DILocation(line: 705, column: 47, scope: !2162)
!2177 = !DILocation(line: 705, column: 65, scope: !2162)
!2178 = !DILocation(line: 706, column: 11, scope: !2162)
!2179 = !DILocation(line: 706, column: 15, scope: !2162)
!2180 = !DILocation(line: 702, column: 11, scope: !1619)
!2181 = !DILocation(line: 707, column: 9, scope: !2162)
!2182 = !DILabel(scope: !1619, name: "store_escape", file: !119, line: 709)
!2183 = !DILocation(line: 709, column: 5, scope: !1619)
!2184 = !DILocation(line: 710, column: 7, scope: !1619)
!2185 = !DILocation(line: 710, column: 7, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !119, line: 710, column: 7)
!2187 = distinct !DILexicalBlock(scope: !1619, file: !119, line: 710, column: 7)
!2188 = !DILocation(line: 710, column: 7, scope: !2187)
!2189 = !DILocation(line: 710, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2187, file: !119, line: 710, column: 7)
!2191 = !DILocation(line: 710, column: 7, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2190, file: !119, line: 710, column: 7)
!2193 = !DILocation(line: 710, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !119, line: 710, column: 7)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !119, line: 710, column: 7)
!2196 = !DILocation(line: 710, column: 7, scope: !2195)
!2197 = !DILocation(line: 710, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !119, line: 710, column: 7)
!2199 = distinct !DILexicalBlock(scope: !2192, file: !119, line: 710, column: 7)
!2200 = !DILocation(line: 710, column: 7, scope: !2199)
!2201 = !DILocation(line: 710, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !119, line: 710, column: 7)
!2203 = distinct !DILexicalBlock(scope: !2192, file: !119, line: 710, column: 7)
!2204 = !DILocation(line: 710, column: 7, scope: !2203)
!2205 = !DILocation(line: 710, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !119, line: 710, column: 7)
!2207 = distinct !DILexicalBlock(scope: !2187, file: !119, line: 710, column: 7)
!2208 = !DILocation(line: 710, column: 7, scope: !2207)
!2209 = !DILabel(scope: !1619, name: "store_c", file: !119, line: 712)
!2210 = !DILocation(line: 712, column: 5, scope: !1619)
!2211 = !DILocation(line: 713, column: 7, scope: !1619)
!2212 = !DILocation(line: 713, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !119, line: 713, column: 7)
!2214 = distinct !DILexicalBlock(scope: !1619, file: !119, line: 713, column: 7)
!2215 = !DILocation(line: 713, column: 7, scope: !2214)
!2216 = !DILocation(line: 713, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !119, line: 713, column: 7)
!2218 = !DILocation(line: 713, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !119, line: 713, column: 7)
!2220 = distinct !DILexicalBlock(scope: !2217, file: !119, line: 713, column: 7)
!2221 = !DILocation(line: 713, column: 7, scope: !2220)
!2222 = !DILocation(line: 713, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !119, line: 713, column: 7)
!2224 = distinct !DILexicalBlock(scope: !2217, file: !119, line: 713, column: 7)
!2225 = !DILocation(line: 713, column: 7, scope: !2224)
!2226 = !DILocation(line: 714, column: 7, scope: !1619)
!2227 = !DILocation(line: 714, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !119, line: 714, column: 7)
!2229 = distinct !DILexicalBlock(scope: !1619, file: !119, line: 714, column: 7)
!2230 = !DILocation(line: 714, column: 7, scope: !2229)
!2231 = !DILocation(line: 716, column: 13, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !1619, file: !119, line: 716, column: 11)
!2233 = !DILocation(line: 716, column: 11, scope: !1619)
!2234 = !DILocation(line: 717, column: 38, scope: !2232)
!2235 = !DILocation(line: 717, column: 9, scope: !2232)
!2236 = !DILocation(line: 718, column: 5, scope: !1619)
!2237 = !DILocation(line: 395, column: 82, scope: !1608)
!2238 = !DILocation(line: 395, column: 3, scope: !1608)
!2239 = distinct !{!2239, !1617, !2240, !447}
!2240 = !DILocation(line: 718, column: 5, scope: !1604)
!2241 = !DILocation(line: 720, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !1466, file: !119, line: 720, column: 7)
!2243 = !DILocation(line: 720, column: 11, scope: !2242)
!2244 = !DILocation(line: 720, column: 16, scope: !2242)
!2245 = !DILocation(line: 720, column: 19, scope: !2242)
!2246 = !DILocation(line: 720, column: 33, scope: !2242)
!2247 = !DILocation(line: 721, column: 7, scope: !2242)
!2248 = !DILocation(line: 721, column: 10, scope: !2242)
!2249 = !DILocation(line: 720, column: 7, scope: !1466)
!2250 = !DILocation(line: 722, column: 5, scope: !2242)
!2251 = !DILocation(line: 728, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !1466, file: !119, line: 728, column: 7)
!2253 = !DILocation(line: 728, column: 21, scope: !2252)
!2254 = !DILocation(line: 728, column: 51, scope: !2252)
!2255 = !DILocation(line: 728, column: 56, scope: !2252)
!2256 = !DILocation(line: 729, column: 7, scope: !2252)
!2257 = !DILocation(line: 729, column: 10, scope: !2252)
!2258 = !DILocation(line: 728, column: 7, scope: !1466)
!2259 = !DILocation(line: 731, column: 11, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !119, line: 731, column: 11)
!2261 = distinct !DILexicalBlock(scope: !2252, file: !119, line: 730, column: 5)
!2262 = !DILocation(line: 731, column: 11, scope: !2261)
!2263 = !DILocation(line: 732, column: 42, scope: !2260)
!2264 = !DILocation(line: 732, column: 50, scope: !2260)
!2265 = !DILocation(line: 732, column: 67, scope: !2260)
!2266 = !DILocation(line: 732, column: 72, scope: !2260)
!2267 = !DILocation(line: 734, column: 42, scope: !2260)
!2268 = !DILocation(line: 734, column: 49, scope: !2260)
!2269 = !DILocation(line: 735, column: 42, scope: !2260)
!2270 = !DILocation(line: 735, column: 54, scope: !2260)
!2271 = !DILocation(line: 732, column: 16, scope: !2260)
!2272 = !DILocation(line: 732, column: 9, scope: !2260)
!2273 = !DILocation(line: 736, column: 18, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2260, file: !119, line: 736, column: 16)
!2275 = !DILocation(line: 736, column: 29, scope: !2274)
!2276 = !DILocation(line: 736, column: 32, scope: !2274)
!2277 = !DILocation(line: 736, column: 16, scope: !2260)
!2278 = !DILocation(line: 739, column: 24, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !119, line: 737, column: 9)
!2280 = !DILocation(line: 739, column: 22, scope: !2279)
!2281 = !DILocation(line: 740, column: 15, scope: !2279)
!2282 = !DILocation(line: 741, column: 11, scope: !2279)
!2283 = !DILocation(line: 743, column: 5, scope: !2261)
!2284 = !DILocation(line: 745, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !1466, file: !119, line: 745, column: 7)
!2286 = !DILocation(line: 745, column: 20, scope: !2285)
!2287 = !DILocation(line: 745, column: 24, scope: !2285)
!2288 = !DILocation(line: 745, column: 7, scope: !1466)
!2289 = !DILocation(line: 746, column: 5, scope: !2285)
!2290 = !DILocation(line: 746, column: 13, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !119, line: 746, column: 5)
!2292 = distinct !DILexicalBlock(scope: !2285, file: !119, line: 746, column: 5)
!2293 = !DILocation(line: 746, column: 12, scope: !2291)
!2294 = !DILocation(line: 746, column: 5, scope: !2292)
!2295 = !DILocation(line: 747, column: 7, scope: !2291)
!2296 = !DILocation(line: 747, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !119, line: 747, column: 7)
!2298 = distinct !DILexicalBlock(scope: !2291, file: !119, line: 747, column: 7)
!2299 = !DILocation(line: 747, column: 7, scope: !2298)
!2300 = !DILocation(line: 746, column: 39, scope: !2291)
!2301 = !DILocation(line: 746, column: 5, scope: !2291)
!2302 = distinct !{!2302, !2294, !2303, !447}
!2303 = !DILocation(line: 747, column: 7, scope: !2292)
!2304 = !DILocation(line: 749, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !1466, file: !119, line: 749, column: 7)
!2306 = !DILocation(line: 749, column: 13, scope: !2305)
!2307 = !DILocation(line: 749, column: 11, scope: !2305)
!2308 = !DILocation(line: 749, column: 7, scope: !1466)
!2309 = !DILocation(line: 750, column: 5, scope: !2305)
!2310 = !DILocation(line: 750, column: 12, scope: !2305)
!2311 = !DILocation(line: 750, column: 17, scope: !2305)
!2312 = !DILocation(line: 751, column: 10, scope: !1466)
!2313 = !DILocation(line: 751, column: 3, scope: !1466)
!2314 = !DILabel(scope: !1466, name: "force_outer_quoting_style", file: !119, line: 753)
!2315 = !DILocation(line: 753, column: 2, scope: !1466)
!2316 = !DILocation(line: 756, column: 7, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !1466, file: !119, line: 756, column: 7)
!2318 = !DILocation(line: 756, column: 21, scope: !2317)
!2319 = !DILocation(line: 756, column: 51, scope: !2317)
!2320 = !DILocation(line: 756, column: 54, scope: !2317)
!2321 = !DILocation(line: 756, column: 7, scope: !1466)
!2322 = !DILocation(line: 757, column: 19, scope: !2317)
!2323 = !DILocation(line: 757, column: 5, scope: !2317)
!2324 = !DILocation(line: 758, column: 36, scope: !1466)
!2325 = !DILocation(line: 758, column: 44, scope: !1466)
!2326 = !DILocation(line: 758, column: 56, scope: !1466)
!2327 = !DILocation(line: 758, column: 61, scope: !1466)
!2328 = !DILocation(line: 759, column: 36, scope: !1466)
!2329 = !DILocation(line: 760, column: 36, scope: !1466)
!2330 = !DILocation(line: 760, column: 42, scope: !1466)
!2331 = !DILocation(line: 761, column: 36, scope: !1466)
!2332 = !DILocation(line: 761, column: 48, scope: !1466)
!2333 = !DILocation(line: 758, column: 10, scope: !1466)
!2334 = !DILocation(line: 758, column: 3, scope: !1466)
!2335 = !DILocation(line: 762, column: 1, scope: !1466)
!2336 = !DILocalVariable(name: "msgid", arg: 1, scope: !172, file: !119, line: 197, type: !6)
!2337 = !DILocation(line: 197, column: 28, scope: !172)
!2338 = !DILocalVariable(name: "s", arg: 2, scope: !172, file: !119, line: 197, type: !121)
!2339 = !DILocation(line: 197, column: 54, scope: !172)
!2340 = !DILocalVariable(name: "translation", scope: !172, file: !119, line: 199, type: !6)
!2341 = !DILocation(line: 199, column: 15, scope: !172)
!2342 = !DILocation(line: 199, column: 29, scope: !172)
!2343 = !DILocation(line: 201, column: 7, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !172, file: !119, line: 201, column: 7)
!2345 = !DILocation(line: 201, column: 22, scope: !2344)
!2346 = !DILocation(line: 201, column: 19, scope: !2344)
!2347 = !DILocation(line: 201, column: 7, scope: !172)
!2348 = !DILocation(line: 202, column: 12, scope: !2344)
!2349 = !DILocation(line: 202, column: 5, scope: !2344)
!2350 = !DILocalVariable(name: "w", scope: !172, file: !119, line: 229, type: !1254)
!2351 = !DILocation(line: 229, column: 12, scope: !172)
!2352 = !DILocalVariable(name: "mbs", scope: !172, file: !119, line: 230, type: !1933)
!2353 = !DILocation(line: 230, column: 13, scope: !172)
!2354 = !DILocation(line: 230, column: 18, scope: !172)
!2355 = !DILocation(line: 231, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !172, file: !119, line: 231, column: 7)
!2357 = !DILocation(line: 231, column: 40, scope: !2356)
!2358 = !DILocation(line: 231, column: 45, scope: !2356)
!2359 = !DILocation(line: 231, column: 48, scope: !2356)
!2360 = !DILocation(line: 231, column: 50, scope: !2356)
!2361 = !DILocation(line: 231, column: 7, scope: !172)
!2362 = !DILocation(line: 232, column: 18, scope: !2356)
!2363 = !DILocation(line: 232, column: 27, scope: !2356)
!2364 = !DILocation(line: 232, column: 12, scope: !2356)
!2365 = !DILocation(line: 232, column: 5, scope: !2356)
!2366 = !DILocation(line: 234, column: 11, scope: !172)
!2367 = !DILocation(line: 234, column: 13, scope: !172)
!2368 = !DILocation(line: 234, column: 3, scope: !172)
!2369 = !DILocation(line: 235, column: 1, scope: !172)
!2370 = distinct !DISubprogram(name: "quotearg_alloc", scope: !119, file: !119, line: 788, type: !2371, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!103, !6, !141, !1306}
!2373 = !DILocalVariable(name: "arg", arg: 1, scope: !2370, file: !119, line: 788, type: !6)
!2374 = !DILocation(line: 788, column: 29, scope: !2370)
!2375 = !DILocalVariable(name: "argsize", arg: 2, scope: !2370, file: !119, line: 788, type: !141)
!2376 = !DILocation(line: 788, column: 41, scope: !2370)
!2377 = !DILocalVariable(name: "o", arg: 3, scope: !2370, file: !119, line: 789, type: !1306)
!2378 = !DILocation(line: 789, column: 47, scope: !2370)
!2379 = !DILocation(line: 791, column: 30, scope: !2370)
!2380 = !DILocation(line: 791, column: 35, scope: !2370)
!2381 = !DILocation(line: 791, column: 50, scope: !2370)
!2382 = !DILocation(line: 791, column: 10, scope: !2370)
!2383 = !DILocation(line: 791, column: 3, scope: !2370)
!2384 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !119, file: !119, line: 801, type: !2385, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!103, !6, !141, !278, !1306}
!2387 = !DILocalVariable(name: "arg", arg: 1, scope: !2384, file: !119, line: 801, type: !6)
!2388 = !DILocation(line: 801, column: 33, scope: !2384)
!2389 = !DILocalVariable(name: "argsize", arg: 2, scope: !2384, file: !119, line: 801, type: !141)
!2390 = !DILocation(line: 801, column: 45, scope: !2384)
!2391 = !DILocalVariable(name: "size", arg: 3, scope: !2384, file: !119, line: 801, type: !278)
!2392 = !DILocation(line: 801, column: 62, scope: !2384)
!2393 = !DILocalVariable(name: "o", arg: 4, scope: !2384, file: !119, line: 802, type: !1306)
!2394 = !DILocation(line: 802, column: 51, scope: !2384)
!2395 = !DILocalVariable(name: "p", scope: !2384, file: !119, line: 804, type: !1306)
!2396 = !DILocation(line: 804, column: 33, scope: !2384)
!2397 = !DILocation(line: 804, column: 37, scope: !2384)
!2398 = !DILocation(line: 804, column: 41, scope: !2384)
!2399 = !DILocalVariable(name: "saved_errno", scope: !2384, file: !119, line: 805, type: !30)
!2400 = !DILocation(line: 805, column: 7, scope: !2384)
!2401 = !DILocation(line: 805, column: 21, scope: !2384)
!2402 = !DILocalVariable(name: "flags", scope: !2384, file: !119, line: 807, type: !30)
!2403 = !DILocation(line: 807, column: 7, scope: !2384)
!2404 = !DILocation(line: 807, column: 15, scope: !2384)
!2405 = !DILocation(line: 807, column: 18, scope: !2384)
!2406 = !DILocation(line: 807, column: 27, scope: !2384)
!2407 = !DILocation(line: 807, column: 24, scope: !2384)
!2408 = !DILocalVariable(name: "bufsize", scope: !2384, file: !119, line: 808, type: !141)
!2409 = !DILocation(line: 808, column: 10, scope: !2384)
!2410 = !DILocation(line: 808, column: 55, scope: !2384)
!2411 = !DILocation(line: 808, column: 60, scope: !2384)
!2412 = !DILocation(line: 808, column: 69, scope: !2384)
!2413 = !DILocation(line: 808, column: 72, scope: !2384)
!2414 = !DILocation(line: 809, column: 46, scope: !2384)
!2415 = !DILocation(line: 809, column: 53, scope: !2384)
!2416 = !DILocation(line: 809, column: 56, scope: !2384)
!2417 = !DILocation(line: 810, column: 46, scope: !2384)
!2418 = !DILocation(line: 810, column: 49, scope: !2384)
!2419 = !DILocation(line: 811, column: 46, scope: !2384)
!2420 = !DILocation(line: 811, column: 49, scope: !2384)
!2421 = !DILocation(line: 808, column: 20, scope: !2384)
!2422 = !DILocation(line: 811, column: 62, scope: !2384)
!2423 = !DILocalVariable(name: "buf", scope: !2384, file: !119, line: 812, type: !103)
!2424 = !DILocation(line: 812, column: 9, scope: !2384)
!2425 = !DILocation(line: 812, column: 27, scope: !2384)
!2426 = !DILocation(line: 812, column: 15, scope: !2384)
!2427 = !DILocation(line: 813, column: 29, scope: !2384)
!2428 = !DILocation(line: 813, column: 34, scope: !2384)
!2429 = !DILocation(line: 813, column: 43, scope: !2384)
!2430 = !DILocation(line: 813, column: 48, scope: !2384)
!2431 = !DILocation(line: 813, column: 57, scope: !2384)
!2432 = !DILocation(line: 813, column: 60, scope: !2384)
!2433 = !DILocation(line: 813, column: 67, scope: !2384)
!2434 = !DILocation(line: 814, column: 29, scope: !2384)
!2435 = !DILocation(line: 814, column: 32, scope: !2384)
!2436 = !DILocation(line: 815, column: 29, scope: !2384)
!2437 = !DILocation(line: 815, column: 32, scope: !2384)
!2438 = !DILocation(line: 815, column: 44, scope: !2384)
!2439 = !DILocation(line: 815, column: 47, scope: !2384)
!2440 = !DILocation(line: 813, column: 3, scope: !2384)
!2441 = !DILocation(line: 816, column: 11, scope: !2384)
!2442 = !DILocation(line: 816, column: 3, scope: !2384)
!2443 = !DILocation(line: 816, column: 9, scope: !2384)
!2444 = !DILocation(line: 817, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2384, file: !119, line: 817, column: 7)
!2446 = !DILocation(line: 817, column: 7, scope: !2384)
!2447 = !DILocation(line: 818, column: 13, scope: !2445)
!2448 = !DILocation(line: 818, column: 21, scope: !2445)
!2449 = !DILocation(line: 818, column: 6, scope: !2445)
!2450 = !DILocation(line: 818, column: 11, scope: !2445)
!2451 = !DILocation(line: 818, column: 5, scope: !2445)
!2452 = !DILocation(line: 819, column: 10, scope: !2384)
!2453 = !DILocation(line: 819, column: 3, scope: !2384)
!2454 = distinct !DISubprogram(name: "quotearg_free", scope: !119, file: !119, line: 837, type: !79, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2455 = !DILocalVariable(name: "sv", scope: !2454, file: !119, line: 839, type: !180)
!2456 = !DILocation(line: 839, column: 19, scope: !2454)
!2457 = !DILocation(line: 839, column: 24, scope: !2454)
!2458 = !DILocalVariable(name: "i", scope: !2459, file: !119, line: 840, type: !30)
!2459 = distinct !DILexicalBlock(scope: !2454, file: !119, line: 840, column: 3)
!2460 = !DILocation(line: 840, column: 12, scope: !2459)
!2461 = !DILocation(line: 840, column: 8, scope: !2459)
!2462 = !DILocation(line: 840, column: 19, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !119, line: 840, column: 3)
!2464 = !DILocation(line: 840, column: 23, scope: !2463)
!2465 = !DILocation(line: 840, column: 21, scope: !2463)
!2466 = !DILocation(line: 840, column: 3, scope: !2459)
!2467 = !DILocation(line: 841, column: 11, scope: !2463)
!2468 = !DILocation(line: 841, column: 14, scope: !2463)
!2469 = !DILocation(line: 841, column: 17, scope: !2463)
!2470 = !DILocation(line: 841, column: 5, scope: !2463)
!2471 = !DILocation(line: 840, column: 32, scope: !2463)
!2472 = !DILocation(line: 840, column: 3, scope: !2463)
!2473 = distinct !{!2473, !2466, !2474, !447}
!2474 = !DILocation(line: 841, column: 20, scope: !2459)
!2475 = !DILocation(line: 842, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2454, file: !119, line: 842, column: 7)
!2477 = !DILocation(line: 842, column: 13, scope: !2476)
!2478 = !DILocation(line: 842, column: 17, scope: !2476)
!2479 = !DILocation(line: 842, column: 7, scope: !2454)
!2480 = !DILocation(line: 844, column: 13, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !119, line: 843, column: 5)
!2482 = !DILocation(line: 844, column: 19, scope: !2481)
!2483 = !DILocation(line: 844, column: 7, scope: !2481)
!2484 = !DILocation(line: 845, column: 21, scope: !2481)
!2485 = !DILocation(line: 846, column: 20, scope: !2481)
!2486 = !DILocation(line: 847, column: 5, scope: !2481)
!2487 = !DILocation(line: 848, column: 7, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2454, file: !119, line: 848, column: 7)
!2489 = !DILocation(line: 848, column: 10, scope: !2488)
!2490 = !DILocation(line: 848, column: 7, scope: !2454)
!2491 = !DILocation(line: 850, column: 13, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !119, line: 849, column: 5)
!2493 = !DILocation(line: 850, column: 7, scope: !2492)
!2494 = !DILocation(line: 851, column: 15, scope: !2492)
!2495 = !DILocation(line: 852, column: 5, scope: !2492)
!2496 = !DILocation(line: 853, column: 10, scope: !2454)
!2497 = !DILocation(line: 854, column: 1, scope: !2454)
!2498 = distinct !DISubprogram(name: "quotearg_n", scope: !119, file: !119, line: 919, type: !2499, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!103, !30, !6}
!2501 = !DILocalVariable(name: "n", arg: 1, scope: !2498, file: !119, line: 919, type: !30)
!2502 = !DILocation(line: 919, column: 17, scope: !2498)
!2503 = !DILocalVariable(name: "arg", arg: 2, scope: !2498, file: !119, line: 919, type: !6)
!2504 = !DILocation(line: 919, column: 32, scope: !2498)
!2505 = !DILocation(line: 921, column: 30, scope: !2498)
!2506 = !DILocation(line: 921, column: 33, scope: !2498)
!2507 = !DILocation(line: 921, column: 10, scope: !2498)
!2508 = !DILocation(line: 921, column: 3, scope: !2498)
!2509 = distinct !DISubprogram(name: "quotearg_n_options", scope: !119, file: !119, line: 866, type: !2510, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!103, !30, !6, !141, !1306}
!2512 = !DILocalVariable(name: "n", arg: 1, scope: !2509, file: !119, line: 866, type: !30)
!2513 = !DILocation(line: 866, column: 25, scope: !2509)
!2514 = !DILocalVariable(name: "arg", arg: 2, scope: !2509, file: !119, line: 866, type: !6)
!2515 = !DILocation(line: 866, column: 40, scope: !2509)
!2516 = !DILocalVariable(name: "argsize", arg: 3, scope: !2509, file: !119, line: 866, type: !141)
!2517 = !DILocation(line: 866, column: 52, scope: !2509)
!2518 = !DILocalVariable(name: "options", arg: 4, scope: !2509, file: !119, line: 867, type: !1306)
!2519 = !DILocation(line: 867, column: 51, scope: !2509)
!2520 = !DILocalVariable(name: "saved_errno", scope: !2509, file: !119, line: 869, type: !30)
!2521 = !DILocation(line: 869, column: 7, scope: !2509)
!2522 = !DILocation(line: 869, column: 21, scope: !2509)
!2523 = !DILocalVariable(name: "sv", scope: !2509, file: !119, line: 871, type: !180)
!2524 = !DILocation(line: 871, column: 19, scope: !2509)
!2525 = !DILocation(line: 871, column: 24, scope: !2509)
!2526 = !DILocalVariable(name: "nslots_max", scope: !2509, file: !119, line: 873, type: !30)
!2527 = !DILocation(line: 873, column: 7, scope: !2509)
!2528 = !DILocation(line: 874, column: 15, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2509, file: !119, line: 874, column: 7)
!2530 = !DILocation(line: 874, column: 12, scope: !2529)
!2531 = !DILocation(line: 874, column: 17, scope: !2529)
!2532 = !DILocation(line: 874, column: 20, scope: !2529)
!2533 = !DILocation(line: 874, column: 24, scope: !2529)
!2534 = !DILocation(line: 874, column: 22, scope: !2529)
!2535 = !DILocation(line: 874, column: 7, scope: !2509)
!2536 = !DILocation(line: 875, column: 5, scope: !2529)
!2537 = !DILocation(line: 877, column: 7, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2509, file: !119, line: 877, column: 7)
!2539 = !DILocation(line: 877, column: 17, scope: !2538)
!2540 = !DILocation(line: 877, column: 14, scope: !2538)
!2541 = !DILocation(line: 877, column: 7, scope: !2509)
!2542 = !DILocalVariable(name: "preallocated", scope: !2543, file: !119, line: 879, type: !46)
!2543 = distinct !DILexicalBlock(scope: !2538, file: !119, line: 878, column: 5)
!2544 = !DILocation(line: 879, column: 12, scope: !2543)
!2545 = !DILocation(line: 879, column: 28, scope: !2543)
!2546 = !DILocation(line: 879, column: 31, scope: !2543)
!2547 = !DILocalVariable(name: "new_nslots", scope: !2543, file: !119, line: 880, type: !286)
!2548 = !DILocation(line: 880, column: 13, scope: !2543)
!2549 = !DILocation(line: 880, column: 26, scope: !2543)
!2550 = !DILocation(line: 882, column: 31, scope: !2543)
!2551 = !DILocation(line: 882, column: 53, scope: !2543)
!2552 = !DILocation(line: 883, column: 31, scope: !2543)
!2553 = !DILocation(line: 883, column: 35, scope: !2543)
!2554 = !DILocation(line: 883, column: 33, scope: !2543)
!2555 = !DILocation(line: 883, column: 42, scope: !2543)
!2556 = !DILocation(line: 883, column: 47, scope: !2543)
!2557 = !DILocation(line: 882, column: 22, scope: !2543)
!2558 = !DILocation(line: 882, column: 20, scope: !2543)
!2559 = !DILocation(line: 882, column: 15, scope: !2543)
!2560 = !DILocation(line: 884, column: 11, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2543, file: !119, line: 884, column: 11)
!2562 = !DILocation(line: 884, column: 11, scope: !2543)
!2563 = !DILocation(line: 885, column: 10, scope: !2561)
!2564 = !DILocation(line: 885, column: 15, scope: !2561)
!2565 = !DILocation(line: 885, column: 9, scope: !2561)
!2566 = !DILocation(line: 886, column: 15, scope: !2543)
!2567 = !DILocation(line: 886, column: 20, scope: !2543)
!2568 = !DILocation(line: 886, column: 18, scope: !2543)
!2569 = !DILocation(line: 886, column: 7, scope: !2543)
!2570 = !DILocation(line: 886, column: 32, scope: !2543)
!2571 = !DILocation(line: 886, column: 45, scope: !2543)
!2572 = !DILocation(line: 886, column: 43, scope: !2543)
!2573 = !DILocation(line: 886, column: 53, scope: !2543)
!2574 = !DILocation(line: 887, column: 16, scope: !2543)
!2575 = !DILocation(line: 887, column: 14, scope: !2543)
!2576 = !DILocation(line: 888, column: 5, scope: !2543)
!2577 = !DILocalVariable(name: "size", scope: !2578, file: !119, line: 891, type: !141)
!2578 = distinct !DILexicalBlock(scope: !2509, file: !119, line: 890, column: 3)
!2579 = !DILocation(line: 891, column: 12, scope: !2578)
!2580 = !DILocation(line: 891, column: 19, scope: !2578)
!2581 = !DILocation(line: 891, column: 22, scope: !2578)
!2582 = !DILocation(line: 891, column: 25, scope: !2578)
!2583 = !DILocalVariable(name: "val", scope: !2578, file: !119, line: 892, type: !103)
!2584 = !DILocation(line: 892, column: 11, scope: !2578)
!2585 = !DILocation(line: 892, column: 17, scope: !2578)
!2586 = !DILocation(line: 892, column: 20, scope: !2578)
!2587 = !DILocation(line: 892, column: 23, scope: !2578)
!2588 = !DILocalVariable(name: "flags", scope: !2578, file: !119, line: 894, type: !30)
!2589 = !DILocation(line: 894, column: 9, scope: !2578)
!2590 = !DILocation(line: 894, column: 17, scope: !2578)
!2591 = !DILocation(line: 894, column: 26, scope: !2578)
!2592 = !DILocation(line: 894, column: 32, scope: !2578)
!2593 = !DILocalVariable(name: "qsize", scope: !2578, file: !119, line: 895, type: !141)
!2594 = !DILocation(line: 895, column: 12, scope: !2578)
!2595 = !DILocation(line: 895, column: 46, scope: !2578)
!2596 = !DILocation(line: 895, column: 51, scope: !2578)
!2597 = !DILocation(line: 895, column: 57, scope: !2578)
!2598 = !DILocation(line: 895, column: 62, scope: !2578)
!2599 = !DILocation(line: 896, column: 46, scope: !2578)
!2600 = !DILocation(line: 896, column: 55, scope: !2578)
!2601 = !DILocation(line: 896, column: 62, scope: !2578)
!2602 = !DILocation(line: 897, column: 46, scope: !2578)
!2603 = !DILocation(line: 897, column: 55, scope: !2578)
!2604 = !DILocation(line: 898, column: 46, scope: !2578)
!2605 = !DILocation(line: 898, column: 55, scope: !2578)
!2606 = !DILocation(line: 899, column: 46, scope: !2578)
!2607 = !DILocation(line: 899, column: 55, scope: !2578)
!2608 = !DILocation(line: 895, column: 20, scope: !2578)
!2609 = !DILocation(line: 901, column: 9, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2578, file: !119, line: 901, column: 9)
!2611 = !DILocation(line: 901, column: 17, scope: !2610)
!2612 = !DILocation(line: 901, column: 14, scope: !2610)
!2613 = !DILocation(line: 901, column: 9, scope: !2578)
!2614 = !DILocation(line: 903, column: 29, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2610, file: !119, line: 902, column: 7)
!2616 = !DILocation(line: 903, column: 35, scope: !2615)
!2617 = !DILocation(line: 903, column: 27, scope: !2615)
!2618 = !DILocation(line: 903, column: 9, scope: !2615)
!2619 = !DILocation(line: 903, column: 12, scope: !2615)
!2620 = !DILocation(line: 903, column: 15, scope: !2615)
!2621 = !DILocation(line: 903, column: 20, scope: !2615)
!2622 = !DILocation(line: 904, column: 13, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2615, file: !119, line: 904, column: 13)
!2624 = !DILocation(line: 904, column: 17, scope: !2623)
!2625 = !DILocation(line: 904, column: 13, scope: !2615)
!2626 = !DILocation(line: 905, column: 17, scope: !2623)
!2627 = !DILocation(line: 905, column: 11, scope: !2623)
!2628 = !DILocation(line: 906, column: 39, scope: !2615)
!2629 = !DILocation(line: 906, column: 27, scope: !2615)
!2630 = !DILocation(line: 906, column: 25, scope: !2615)
!2631 = !DILocation(line: 906, column: 9, scope: !2615)
!2632 = !DILocation(line: 906, column: 12, scope: !2615)
!2633 = !DILocation(line: 906, column: 15, scope: !2615)
!2634 = !DILocation(line: 906, column: 19, scope: !2615)
!2635 = !DILocation(line: 907, column: 35, scope: !2615)
!2636 = !DILocation(line: 907, column: 40, scope: !2615)
!2637 = !DILocation(line: 907, column: 46, scope: !2615)
!2638 = !DILocation(line: 907, column: 51, scope: !2615)
!2639 = !DILocation(line: 907, column: 60, scope: !2615)
!2640 = !DILocation(line: 907, column: 69, scope: !2615)
!2641 = !DILocation(line: 908, column: 35, scope: !2615)
!2642 = !DILocation(line: 908, column: 42, scope: !2615)
!2643 = !DILocation(line: 908, column: 51, scope: !2615)
!2644 = !DILocation(line: 909, column: 35, scope: !2615)
!2645 = !DILocation(line: 909, column: 44, scope: !2615)
!2646 = !DILocation(line: 910, column: 35, scope: !2615)
!2647 = !DILocation(line: 910, column: 44, scope: !2615)
!2648 = !DILocation(line: 907, column: 9, scope: !2615)
!2649 = !DILocation(line: 911, column: 7, scope: !2615)
!2650 = !DILocation(line: 913, column: 13, scope: !2578)
!2651 = !DILocation(line: 913, column: 5, scope: !2578)
!2652 = !DILocation(line: 913, column: 11, scope: !2578)
!2653 = !DILocation(line: 914, column: 12, scope: !2578)
!2654 = !DILocation(line: 914, column: 5, scope: !2578)
!2655 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !119, file: !119, line: 925, type: !2656, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!103, !30, !6, !141}
!2658 = !DILocalVariable(name: "n", arg: 1, scope: !2655, file: !119, line: 925, type: !30)
!2659 = !DILocation(line: 925, column: 21, scope: !2655)
!2660 = !DILocalVariable(name: "arg", arg: 2, scope: !2655, file: !119, line: 925, type: !6)
!2661 = !DILocation(line: 925, column: 36, scope: !2655)
!2662 = !DILocalVariable(name: "argsize", arg: 3, scope: !2655, file: !119, line: 925, type: !141)
!2663 = !DILocation(line: 925, column: 48, scope: !2655)
!2664 = !DILocation(line: 927, column: 30, scope: !2655)
!2665 = !DILocation(line: 927, column: 33, scope: !2655)
!2666 = !DILocation(line: 927, column: 38, scope: !2655)
!2667 = !DILocation(line: 927, column: 10, scope: !2655)
!2668 = !DILocation(line: 927, column: 3, scope: !2655)
!2669 = distinct !DISubprogram(name: "quotearg", scope: !119, file: !119, line: 931, type: !2670, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!103, !6}
!2672 = !DILocalVariable(name: "arg", arg: 1, scope: !2669, file: !119, line: 931, type: !6)
!2673 = !DILocation(line: 931, column: 23, scope: !2669)
!2674 = !DILocation(line: 933, column: 25, scope: !2669)
!2675 = !DILocation(line: 933, column: 10, scope: !2669)
!2676 = !DILocation(line: 933, column: 3, scope: !2669)
!2677 = distinct !DISubprogram(name: "quotearg_mem", scope: !119, file: !119, line: 937, type: !2678, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!103, !6, !141}
!2680 = !DILocalVariable(name: "arg", arg: 1, scope: !2677, file: !119, line: 937, type: !6)
!2681 = !DILocation(line: 937, column: 27, scope: !2677)
!2682 = !DILocalVariable(name: "argsize", arg: 2, scope: !2677, file: !119, line: 937, type: !141)
!2683 = !DILocation(line: 937, column: 39, scope: !2677)
!2684 = !DILocation(line: 939, column: 29, scope: !2677)
!2685 = !DILocation(line: 939, column: 34, scope: !2677)
!2686 = !DILocation(line: 939, column: 10, scope: !2677)
!2687 = !DILocation(line: 939, column: 3, scope: !2677)
!2688 = distinct !DISubprogram(name: "quotearg_n_style", scope: !119, file: !119, line: 943, type: !2689, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!103, !30, !121, !6}
!2691 = !DILocalVariable(name: "n", arg: 1, scope: !2688, file: !119, line: 943, type: !30)
!2692 = !DILocation(line: 943, column: 23, scope: !2688)
!2693 = !DILocalVariable(name: "s", arg: 2, scope: !2688, file: !119, line: 943, type: !121)
!2694 = !DILocation(line: 943, column: 45, scope: !2688)
!2695 = !DILocalVariable(name: "arg", arg: 3, scope: !2688, file: !119, line: 943, type: !6)
!2696 = !DILocation(line: 943, column: 60, scope: !2688)
!2697 = !DILocalVariable(name: "o", scope: !2688, file: !119, line: 945, type: !1307)
!2698 = !DILocation(line: 945, column: 32, scope: !2688)
!2699 = !DILocation(line: 945, column: 64, scope: !2688)
!2700 = !DILocation(line: 945, column: 36, scope: !2688)
!2701 = !DILocation(line: 946, column: 30, scope: !2688)
!2702 = !DILocation(line: 946, column: 33, scope: !2688)
!2703 = !DILocation(line: 946, column: 10, scope: !2688)
!2704 = !DILocation(line: 946, column: 3, scope: !2688)
!2705 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !119, file: !119, line: 183, type: !2706, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!153, !121}
!2708 = !DILocalVariable(name: "style", arg: 1, scope: !2705, file: !119, line: 183, type: !121)
!2709 = !DILocation(line: 183, column: 48, scope: !2705)
!2710 = !DILocalVariable(name: "o", scope: !2705, file: !119, line: 185, type: !153)
!2711 = !DILocation(line: 185, column: 26, scope: !2705)
!2712 = !DILocation(line: 186, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2705, file: !119, line: 186, column: 7)
!2714 = !DILocation(line: 186, column: 13, scope: !2713)
!2715 = !DILocation(line: 186, column: 7, scope: !2705)
!2716 = !DILocation(line: 187, column: 5, scope: !2713)
!2717 = !DILocation(line: 188, column: 13, scope: !2705)
!2718 = !DILocation(line: 188, column: 5, scope: !2705)
!2719 = !DILocation(line: 188, column: 11, scope: !2705)
!2720 = !DILocation(line: 189, column: 3, scope: !2705)
!2721 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !119, file: !119, line: 950, type: !2722, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!103, !30, !121, !6, !141}
!2724 = !DILocalVariable(name: "n", arg: 1, scope: !2721, file: !119, line: 950, type: !30)
!2725 = !DILocation(line: 950, column: 27, scope: !2721)
!2726 = !DILocalVariable(name: "s", arg: 2, scope: !2721, file: !119, line: 950, type: !121)
!2727 = !DILocation(line: 950, column: 49, scope: !2721)
!2728 = !DILocalVariable(name: "arg", arg: 3, scope: !2721, file: !119, line: 951, type: !6)
!2729 = !DILocation(line: 951, column: 35, scope: !2721)
!2730 = !DILocalVariable(name: "argsize", arg: 4, scope: !2721, file: !119, line: 951, type: !141)
!2731 = !DILocation(line: 951, column: 47, scope: !2721)
!2732 = !DILocalVariable(name: "o", scope: !2721, file: !119, line: 953, type: !1307)
!2733 = !DILocation(line: 953, column: 32, scope: !2721)
!2734 = !DILocation(line: 953, column: 64, scope: !2721)
!2735 = !DILocation(line: 953, column: 36, scope: !2721)
!2736 = !DILocation(line: 954, column: 30, scope: !2721)
!2737 = !DILocation(line: 954, column: 33, scope: !2721)
!2738 = !DILocation(line: 954, column: 38, scope: !2721)
!2739 = !DILocation(line: 954, column: 10, scope: !2721)
!2740 = !DILocation(line: 954, column: 3, scope: !2721)
!2741 = distinct !DISubprogram(name: "quotearg_style", scope: !119, file: !119, line: 958, type: !2742, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!103, !121, !6}
!2744 = !DILocalVariable(name: "s", arg: 1, scope: !2741, file: !119, line: 958, type: !121)
!2745 = !DILocation(line: 958, column: 36, scope: !2741)
!2746 = !DILocalVariable(name: "arg", arg: 2, scope: !2741, file: !119, line: 958, type: !6)
!2747 = !DILocation(line: 958, column: 51, scope: !2741)
!2748 = !DILocation(line: 960, column: 31, scope: !2741)
!2749 = !DILocation(line: 960, column: 34, scope: !2741)
!2750 = !DILocation(line: 960, column: 10, scope: !2741)
!2751 = !DILocation(line: 960, column: 3, scope: !2741)
!2752 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !119, file: !119, line: 964, type: !2753, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!103, !121, !6, !141}
!2755 = !DILocalVariable(name: "s", arg: 1, scope: !2752, file: !119, line: 964, type: !121)
!2756 = !DILocation(line: 964, column: 40, scope: !2752)
!2757 = !DILocalVariable(name: "arg", arg: 2, scope: !2752, file: !119, line: 964, type: !6)
!2758 = !DILocation(line: 964, column: 55, scope: !2752)
!2759 = !DILocalVariable(name: "argsize", arg: 3, scope: !2752, file: !119, line: 964, type: !141)
!2760 = !DILocation(line: 964, column: 67, scope: !2752)
!2761 = !DILocation(line: 966, column: 35, scope: !2752)
!2762 = !DILocation(line: 966, column: 38, scope: !2752)
!2763 = !DILocation(line: 966, column: 43, scope: !2752)
!2764 = !DILocation(line: 966, column: 10, scope: !2752)
!2765 = !DILocation(line: 966, column: 3, scope: !2752)
!2766 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !119, file: !119, line: 970, type: !2767, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!103, !6, !141, !8}
!2769 = !DILocalVariable(name: "arg", arg: 1, scope: !2766, file: !119, line: 970, type: !6)
!2770 = !DILocation(line: 970, column: 32, scope: !2766)
!2771 = !DILocalVariable(name: "argsize", arg: 2, scope: !2766, file: !119, line: 970, type: !141)
!2772 = !DILocation(line: 970, column: 44, scope: !2766)
!2773 = !DILocalVariable(name: "ch", arg: 3, scope: !2766, file: !119, line: 970, type: !8)
!2774 = !DILocation(line: 970, column: 58, scope: !2766)
!2775 = !DILocalVariable(name: "options", scope: !2766, file: !119, line: 972, type: !153)
!2776 = !DILocation(line: 972, column: 26, scope: !2766)
!2777 = !DILocation(line: 973, column: 13, scope: !2766)
!2778 = !DILocation(line: 974, column: 31, scope: !2766)
!2779 = !DILocation(line: 974, column: 3, scope: !2766)
!2780 = !DILocation(line: 975, column: 33, scope: !2766)
!2781 = !DILocation(line: 975, column: 38, scope: !2766)
!2782 = !DILocation(line: 975, column: 10, scope: !2766)
!2783 = !DILocation(line: 975, column: 3, scope: !2766)
!2784 = distinct !DISubprogram(name: "quotearg_char", scope: !119, file: !119, line: 979, type: !2785, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!103, !6, !8}
!2787 = !DILocalVariable(name: "arg", arg: 1, scope: !2784, file: !119, line: 979, type: !6)
!2788 = !DILocation(line: 979, column: 28, scope: !2784)
!2789 = !DILocalVariable(name: "ch", arg: 2, scope: !2784, file: !119, line: 979, type: !8)
!2790 = !DILocation(line: 979, column: 38, scope: !2784)
!2791 = !DILocation(line: 981, column: 29, scope: !2784)
!2792 = !DILocation(line: 981, column: 44, scope: !2784)
!2793 = !DILocation(line: 981, column: 10, scope: !2784)
!2794 = !DILocation(line: 981, column: 3, scope: !2784)
!2795 = distinct !DISubprogram(name: "quotearg_colon", scope: !119, file: !119, line: 985, type: !2670, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2796 = !DILocalVariable(name: "arg", arg: 1, scope: !2795, file: !119, line: 985, type: !6)
!2797 = !DILocation(line: 985, column: 29, scope: !2795)
!2798 = !DILocation(line: 987, column: 25, scope: !2795)
!2799 = !DILocation(line: 987, column: 10, scope: !2795)
!2800 = !DILocation(line: 987, column: 3, scope: !2795)
!2801 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !119, file: !119, line: 991, type: !2678, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2802 = !DILocalVariable(name: "arg", arg: 1, scope: !2801, file: !119, line: 991, type: !6)
!2803 = !DILocation(line: 991, column: 33, scope: !2801)
!2804 = !DILocalVariable(name: "argsize", arg: 2, scope: !2801, file: !119, line: 991, type: !141)
!2805 = !DILocation(line: 991, column: 45, scope: !2801)
!2806 = !DILocation(line: 993, column: 29, scope: !2801)
!2807 = !DILocation(line: 993, column: 34, scope: !2801)
!2808 = !DILocation(line: 993, column: 10, scope: !2801)
!2809 = !DILocation(line: 993, column: 3, scope: !2801)
!2810 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !119, file: !119, line: 997, type: !2689, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2811 = !DILocalVariable(name: "n", arg: 1, scope: !2810, file: !119, line: 997, type: !30)
!2812 = !DILocation(line: 997, column: 29, scope: !2810)
!2813 = !DILocalVariable(name: "s", arg: 2, scope: !2810, file: !119, line: 997, type: !121)
!2814 = !DILocation(line: 997, column: 51, scope: !2810)
!2815 = !DILocalVariable(name: "arg", arg: 3, scope: !2810, file: !119, line: 997, type: !6)
!2816 = !DILocation(line: 997, column: 66, scope: !2810)
!2817 = !DILocalVariable(name: "options", scope: !2810, file: !119, line: 999, type: !153)
!2818 = !DILocation(line: 999, column: 26, scope: !2810)
!2819 = !DILocation(line: 1000, column: 41, scope: !2810)
!2820 = !DILocation(line: 1000, column: 13, scope: !2810)
!2821 = !DILocation(line: 1001, column: 3, scope: !2810)
!2822 = !DILocation(line: 1002, column: 30, scope: !2810)
!2823 = !DILocation(line: 1002, column: 33, scope: !2810)
!2824 = !DILocation(line: 1002, column: 10, scope: !2810)
!2825 = !DILocation(line: 1002, column: 3, scope: !2810)
!2826 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !119, file: !119, line: 1006, type: !2827, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!103, !30, !6, !6, !6}
!2829 = !DILocalVariable(name: "n", arg: 1, scope: !2826, file: !119, line: 1006, type: !30)
!2830 = !DILocation(line: 1006, column: 24, scope: !2826)
!2831 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2826, file: !119, line: 1006, type: !6)
!2832 = !DILocation(line: 1006, column: 39, scope: !2826)
!2833 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2826, file: !119, line: 1007, type: !6)
!2834 = !DILocation(line: 1007, column: 32, scope: !2826)
!2835 = !DILocalVariable(name: "arg", arg: 4, scope: !2826, file: !119, line: 1007, type: !6)
!2836 = !DILocation(line: 1007, column: 57, scope: !2826)
!2837 = !DILocation(line: 1009, column: 33, scope: !2826)
!2838 = !DILocation(line: 1009, column: 36, scope: !2826)
!2839 = !DILocation(line: 1009, column: 48, scope: !2826)
!2840 = !DILocation(line: 1009, column: 61, scope: !2826)
!2841 = !DILocation(line: 1009, column: 10, scope: !2826)
!2842 = !DILocation(line: 1009, column: 3, scope: !2826)
!2843 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !119, file: !119, line: 1014, type: !2844, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!103, !30, !6, !6, !6, !141}
!2846 = !DILocalVariable(name: "n", arg: 1, scope: !2843, file: !119, line: 1014, type: !30)
!2847 = !DILocation(line: 1014, column: 28, scope: !2843)
!2848 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2843, file: !119, line: 1014, type: !6)
!2849 = !DILocation(line: 1014, column: 43, scope: !2843)
!2850 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2843, file: !119, line: 1015, type: !6)
!2851 = !DILocation(line: 1015, column: 36, scope: !2843)
!2852 = !DILocalVariable(name: "arg", arg: 4, scope: !2843, file: !119, line: 1016, type: !6)
!2853 = !DILocation(line: 1016, column: 36, scope: !2843)
!2854 = !DILocalVariable(name: "argsize", arg: 5, scope: !2843, file: !119, line: 1016, type: !141)
!2855 = !DILocation(line: 1016, column: 48, scope: !2843)
!2856 = !DILocalVariable(name: "o", scope: !2843, file: !119, line: 1018, type: !153)
!2857 = !DILocation(line: 1018, column: 26, scope: !2843)
!2858 = !DILocation(line: 1018, column: 30, scope: !2843)
!2859 = !DILocation(line: 1019, column: 27, scope: !2843)
!2860 = !DILocation(line: 1019, column: 39, scope: !2843)
!2861 = !DILocation(line: 1019, column: 3, scope: !2843)
!2862 = !DILocation(line: 1020, column: 30, scope: !2843)
!2863 = !DILocation(line: 1020, column: 33, scope: !2843)
!2864 = !DILocation(line: 1020, column: 38, scope: !2843)
!2865 = !DILocation(line: 1020, column: 10, scope: !2843)
!2866 = !DILocation(line: 1020, column: 3, scope: !2843)
!2867 = distinct !DISubprogram(name: "quotearg_custom", scope: !119, file: !119, line: 1024, type: !2868, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!103, !6, !6, !6}
!2870 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2867, file: !119, line: 1024, type: !6)
!2871 = !DILocation(line: 1024, column: 30, scope: !2867)
!2872 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2867, file: !119, line: 1024, type: !6)
!2873 = !DILocation(line: 1024, column: 54, scope: !2867)
!2874 = !DILocalVariable(name: "arg", arg: 3, scope: !2867, file: !119, line: 1025, type: !6)
!2875 = !DILocation(line: 1025, column: 30, scope: !2867)
!2876 = !DILocation(line: 1027, column: 32, scope: !2867)
!2877 = !DILocation(line: 1027, column: 44, scope: !2867)
!2878 = !DILocation(line: 1027, column: 57, scope: !2867)
!2879 = !DILocation(line: 1027, column: 10, scope: !2867)
!2880 = !DILocation(line: 1027, column: 3, scope: !2867)
!2881 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !119, file: !119, line: 1031, type: !2882, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!103, !6, !6, !6, !141}
!2884 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2881, file: !119, line: 1031, type: !6)
!2885 = !DILocation(line: 1031, column: 34, scope: !2881)
!2886 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2881, file: !119, line: 1031, type: !6)
!2887 = !DILocation(line: 1031, column: 58, scope: !2881)
!2888 = !DILocalVariable(name: "arg", arg: 3, scope: !2881, file: !119, line: 1032, type: !6)
!2889 = !DILocation(line: 1032, column: 34, scope: !2881)
!2890 = !DILocalVariable(name: "argsize", arg: 4, scope: !2881, file: !119, line: 1032, type: !141)
!2891 = !DILocation(line: 1032, column: 46, scope: !2881)
!2892 = !DILocation(line: 1034, column: 36, scope: !2881)
!2893 = !DILocation(line: 1034, column: 48, scope: !2881)
!2894 = !DILocation(line: 1034, column: 61, scope: !2881)
!2895 = !DILocation(line: 1035, column: 33, scope: !2881)
!2896 = !DILocation(line: 1034, column: 10, scope: !2881)
!2897 = !DILocation(line: 1034, column: 3, scope: !2881)
!2898 = distinct !DISubprogram(name: "quote_n_mem", scope: !119, file: !119, line: 1049, type: !2899, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!6, !30, !6, !141}
!2901 = !DILocalVariable(name: "n", arg: 1, scope: !2898, file: !119, line: 1049, type: !30)
!2902 = !DILocation(line: 1049, column: 18, scope: !2898)
!2903 = !DILocalVariable(name: "arg", arg: 2, scope: !2898, file: !119, line: 1049, type: !6)
!2904 = !DILocation(line: 1049, column: 33, scope: !2898)
!2905 = !DILocalVariable(name: "argsize", arg: 3, scope: !2898, file: !119, line: 1049, type: !141)
!2906 = !DILocation(line: 1049, column: 45, scope: !2898)
!2907 = !DILocation(line: 1051, column: 30, scope: !2898)
!2908 = !DILocation(line: 1051, column: 33, scope: !2898)
!2909 = !DILocation(line: 1051, column: 38, scope: !2898)
!2910 = !DILocation(line: 1051, column: 10, scope: !2898)
!2911 = !DILocation(line: 1051, column: 3, scope: !2898)
!2912 = distinct !DISubprogram(name: "quote_mem", scope: !119, file: !119, line: 1055, type: !2913, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!6, !6, !141}
!2915 = !DILocalVariable(name: "arg", arg: 1, scope: !2912, file: !119, line: 1055, type: !6)
!2916 = !DILocation(line: 1055, column: 24, scope: !2912)
!2917 = !DILocalVariable(name: "argsize", arg: 2, scope: !2912, file: !119, line: 1055, type: !141)
!2918 = !DILocation(line: 1055, column: 36, scope: !2912)
!2919 = !DILocation(line: 1057, column: 26, scope: !2912)
!2920 = !DILocation(line: 1057, column: 31, scope: !2912)
!2921 = !DILocation(line: 1057, column: 10, scope: !2912)
!2922 = !DILocation(line: 1057, column: 3, scope: !2912)
!2923 = distinct !DISubprogram(name: "quote_n", scope: !119, file: !119, line: 1061, type: !2924, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!6, !30, !6}
!2926 = !DILocalVariable(name: "n", arg: 1, scope: !2923, file: !119, line: 1061, type: !30)
!2927 = !DILocation(line: 1061, column: 14, scope: !2923)
!2928 = !DILocalVariable(name: "arg", arg: 2, scope: !2923, file: !119, line: 1061, type: !6)
!2929 = !DILocation(line: 1061, column: 29, scope: !2923)
!2930 = !DILocation(line: 1063, column: 23, scope: !2923)
!2931 = !DILocation(line: 1063, column: 26, scope: !2923)
!2932 = !DILocation(line: 1063, column: 10, scope: !2923)
!2933 = !DILocation(line: 1063, column: 3, scope: !2923)
!2934 = distinct !DISubprogram(name: "quote", scope: !119, file: !119, line: 1067, type: !2935, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!6, !6}
!2937 = !DILocalVariable(name: "arg", arg: 1, scope: !2934, file: !119, line: 1067, type: !6)
!2938 = !DILocation(line: 1067, column: 20, scope: !2934)
!2939 = !DILocation(line: 1069, column: 22, scope: !2934)
!2940 = !DILocation(line: 1069, column: 10, scope: !2934)
!2941 = !DILocation(line: 1069, column: 3, scope: !2934)
!2942 = distinct !DISubprogram(name: "streq", scope: !2943, file: !2943, line: 1359, type: !2944, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !33)
!2943 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!46, !6, !6}
!2946 = !DILocalVariable(name: "__s1", arg: 1, scope: !2942, file: !2943, line: 1359, type: !6)
!2947 = !DILocation(line: 1359, column: 20, scope: !2942)
!2948 = !DILocalVariable(name: "__s2", arg: 2, scope: !2942, file: !2943, line: 1359, type: !6)
!2949 = !DILocation(line: 1359, column: 38, scope: !2942)
!2950 = !DILocation(line: 1361, column: 19, scope: !2942)
!2951 = !DILocation(line: 1361, column: 25, scope: !2942)
!2952 = !DILocation(line: 1361, column: 11, scope: !2942)
!2953 = !DILocation(line: 1361, column: 10, scope: !2942)
!2954 = !DILocation(line: 1361, column: 3, scope: !2942)
!2955 = distinct !DISubprogram(name: "version_etc_arn", scope: !266, file: !266, line: 61, type: !2956, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !33)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null, !2958, !6, !6, !6, !3011, !141}
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2960, line: 7, baseType: !2961)
!2960 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2962, line: 49, size: 1728, elements: !2963)
!2962 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2979, !2981, !2982, !2983, !2985, !2986, !2988, !2992, !2995, !2997, !3000, !3003, !3004, !3005, !3006, !3007}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2961, file: !2962, line: 51, baseType: !30, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2961, file: !2962, line: 54, baseType: !103, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2961, file: !2962, line: 55, baseType: !103, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2961, file: !2962, line: 56, baseType: !103, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2961, file: !2962, line: 57, baseType: !103, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2961, file: !2962, line: 58, baseType: !103, size: 64, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2961, file: !2962, line: 59, baseType: !103, size: 64, offset: 384)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2961, file: !2962, line: 60, baseType: !103, size: 64, offset: 448)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2961, file: !2962, line: 61, baseType: !103, size: 64, offset: 512)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2961, file: !2962, line: 64, baseType: !103, size: 64, offset: 576)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2961, file: !2962, line: 65, baseType: !103, size: 64, offset: 640)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2961, file: !2962, line: 66, baseType: !103, size: 64, offset: 704)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2961, file: !2962, line: 68, baseType: !2977, size: 64, offset: 768)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2962, line: 36, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2961, file: !2962, line: 70, baseType: !2980, size: 64, offset: 832)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2961, file: !2962, line: 72, baseType: !30, size: 32, offset: 896)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2961, file: !2962, line: 73, baseType: !30, size: 32, offset: 928)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2961, file: !2962, line: 74, baseType: !2984, size: 64, offset: 960)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !299, line: 152, baseType: !289)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2961, file: !2962, line: 77, baseType: !31, size: 16, offset: 1024)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2961, file: !2962, line: 78, baseType: !2987, size: 8, offset: 1040)
!2987 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2961, file: !2962, line: 79, baseType: !2989, size: 8, offset: 1048)
!2989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2990)
!2990 = !{!2991}
!2991 = !DISubrange(count: 1)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2961, file: !2962, line: 81, baseType: !2993, size: 64, offset: 1088)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2962, line: 43, baseType: null)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2961, file: !2962, line: 89, baseType: !2996, size: 64, offset: 1152)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !299, line: 153, baseType: !289)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2961, file: !2962, line: 91, baseType: !2998, size: 64, offset: 1216)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2962, line: 37, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2961, file: !2962, line: 92, baseType: !3001, size: 64, offset: 1280)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2962, line: 38, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2961, file: !2962, line: 93, baseType: !2980, size: 64, offset: 1344)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2961, file: !2962, line: 94, baseType: !29, size: 64, offset: 1408)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2961, file: !2962, line: 95, baseType: !141, size: 64, offset: 1472)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2961, file: !2962, line: 96, baseType: !30, size: 32, offset: 1536)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2961, file: !2962, line: 98, baseType: !3008, size: 160, offset: 1568)
!3008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !3009)
!3009 = !{!3010}
!3010 = !DISubrange(count: 20)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!3012 = !DILocalVariable(name: "stream", arg: 1, scope: !2955, file: !266, line: 61, type: !2958)
!3013 = !DILocation(line: 61, column: 24, scope: !2955)
!3014 = !DILocalVariable(name: "command_name", arg: 2, scope: !2955, file: !266, line: 62, type: !6)
!3015 = !DILocation(line: 62, column: 30, scope: !2955)
!3016 = !DILocalVariable(name: "package", arg: 3, scope: !2955, file: !266, line: 62, type: !6)
!3017 = !DILocation(line: 62, column: 56, scope: !2955)
!3018 = !DILocalVariable(name: "version", arg: 4, scope: !2955, file: !266, line: 63, type: !6)
!3019 = !DILocation(line: 63, column: 30, scope: !2955)
!3020 = !DILocalVariable(name: "authors", arg: 5, scope: !2955, file: !266, line: 64, type: !3011)
!3021 = !DILocation(line: 64, column: 39, scope: !2955)
!3022 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2955, file: !266, line: 64, type: !141)
!3023 = !DILocation(line: 64, column: 55, scope: !2955)
!3024 = !DILocation(line: 66, column: 7, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2955, file: !266, line: 66, column: 7)
!3026 = !DILocation(line: 66, column: 7, scope: !2955)
!3027 = !DILocation(line: 67, column: 14, scope: !3025)
!3028 = !DILocation(line: 67, column: 38, scope: !3025)
!3029 = !DILocation(line: 67, column: 52, scope: !3025)
!3030 = !DILocation(line: 67, column: 61, scope: !3025)
!3031 = !DILocation(line: 67, column: 5, scope: !3025)
!3032 = !DILocation(line: 69, column: 14, scope: !3025)
!3033 = !DILocation(line: 69, column: 33, scope: !3025)
!3034 = !DILocation(line: 69, column: 42, scope: !3025)
!3035 = !DILocation(line: 69, column: 5, scope: !3025)
!3036 = !DILocation(line: 83, column: 12, scope: !2955)
!3037 = !DILocation(line: 83, column: 43, scope: !2955)
!3038 = !DILocation(line: 83, column: 3, scope: !2955)
!3039 = !DILocation(line: 85, column: 3, scope: !2955)
!3040 = !DILocation(line: 88, column: 12, scope: !2955)
!3041 = !DILocation(line: 88, column: 20, scope: !2955)
!3042 = !DILocation(line: 88, column: 3, scope: !2955)
!3043 = !DILocation(line: 95, column: 3, scope: !2955)
!3044 = !DILocation(line: 97, column: 11, scope: !2955)
!3045 = !DILocation(line: 97, column: 3, scope: !2955)
!3046 = !DILocation(line: 102, column: 7, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2955, file: !266, line: 98, column: 5)
!3048 = !DILocation(line: 105, column: 16, scope: !3047)
!3049 = !DILocation(line: 105, column: 24, scope: !3047)
!3050 = !DILocation(line: 105, column: 47, scope: !3047)
!3051 = !DILocation(line: 105, column: 7, scope: !3047)
!3052 = !DILocation(line: 106, column: 7, scope: !3047)
!3053 = !DILocation(line: 109, column: 16, scope: !3047)
!3054 = !DILocation(line: 109, column: 24, scope: !3047)
!3055 = !DILocation(line: 109, column: 54, scope: !3047)
!3056 = !DILocation(line: 109, column: 66, scope: !3047)
!3057 = !DILocation(line: 109, column: 7, scope: !3047)
!3058 = !DILocation(line: 110, column: 7, scope: !3047)
!3059 = !DILocation(line: 113, column: 16, scope: !3047)
!3060 = !DILocation(line: 113, column: 24, scope: !3047)
!3061 = !DILocation(line: 114, column: 16, scope: !3047)
!3062 = !DILocation(line: 114, column: 28, scope: !3047)
!3063 = !DILocation(line: 114, column: 40, scope: !3047)
!3064 = !DILocation(line: 113, column: 7, scope: !3047)
!3065 = !DILocation(line: 115, column: 7, scope: !3047)
!3066 = !DILocation(line: 120, column: 16, scope: !3047)
!3067 = !DILocation(line: 120, column: 24, scope: !3047)
!3068 = !DILocation(line: 121, column: 16, scope: !3047)
!3069 = !DILocation(line: 121, column: 28, scope: !3047)
!3070 = !DILocation(line: 121, column: 40, scope: !3047)
!3071 = !DILocation(line: 121, column: 52, scope: !3047)
!3072 = !DILocation(line: 120, column: 7, scope: !3047)
!3073 = !DILocation(line: 122, column: 7, scope: !3047)
!3074 = !DILocation(line: 127, column: 16, scope: !3047)
!3075 = !DILocation(line: 127, column: 24, scope: !3047)
!3076 = !DILocation(line: 128, column: 16, scope: !3047)
!3077 = !DILocation(line: 128, column: 28, scope: !3047)
!3078 = !DILocation(line: 128, column: 40, scope: !3047)
!3079 = !DILocation(line: 128, column: 52, scope: !3047)
!3080 = !DILocation(line: 128, column: 64, scope: !3047)
!3081 = !DILocation(line: 127, column: 7, scope: !3047)
!3082 = !DILocation(line: 129, column: 7, scope: !3047)
!3083 = !DILocation(line: 134, column: 16, scope: !3047)
!3084 = !DILocation(line: 134, column: 24, scope: !3047)
!3085 = !DILocation(line: 135, column: 16, scope: !3047)
!3086 = !DILocation(line: 135, column: 28, scope: !3047)
!3087 = !DILocation(line: 135, column: 40, scope: !3047)
!3088 = !DILocation(line: 135, column: 52, scope: !3047)
!3089 = !DILocation(line: 135, column: 64, scope: !3047)
!3090 = !DILocation(line: 136, column: 16, scope: !3047)
!3091 = !DILocation(line: 134, column: 7, scope: !3047)
!3092 = !DILocation(line: 137, column: 7, scope: !3047)
!3093 = !DILocation(line: 142, column: 16, scope: !3047)
!3094 = !DILocation(line: 142, column: 24, scope: !3047)
!3095 = !DILocation(line: 143, column: 16, scope: !3047)
!3096 = !DILocation(line: 143, column: 28, scope: !3047)
!3097 = !DILocation(line: 143, column: 40, scope: !3047)
!3098 = !DILocation(line: 143, column: 52, scope: !3047)
!3099 = !DILocation(line: 143, column: 64, scope: !3047)
!3100 = !DILocation(line: 144, column: 16, scope: !3047)
!3101 = !DILocation(line: 144, column: 28, scope: !3047)
!3102 = !DILocation(line: 142, column: 7, scope: !3047)
!3103 = !DILocation(line: 145, column: 7, scope: !3047)
!3104 = !DILocation(line: 150, column: 16, scope: !3047)
!3105 = !DILocation(line: 150, column: 24, scope: !3047)
!3106 = !DILocation(line: 152, column: 17, scope: !3047)
!3107 = !DILocation(line: 152, column: 29, scope: !3047)
!3108 = !DILocation(line: 152, column: 41, scope: !3047)
!3109 = !DILocation(line: 152, column: 53, scope: !3047)
!3110 = !DILocation(line: 152, column: 65, scope: !3047)
!3111 = !DILocation(line: 153, column: 17, scope: !3047)
!3112 = !DILocation(line: 153, column: 29, scope: !3047)
!3113 = !DILocation(line: 153, column: 41, scope: !3047)
!3114 = !DILocation(line: 150, column: 7, scope: !3047)
!3115 = !DILocation(line: 154, column: 7, scope: !3047)
!3116 = !DILocation(line: 159, column: 16, scope: !3047)
!3117 = !DILocation(line: 159, column: 24, scope: !3047)
!3118 = !DILocation(line: 161, column: 16, scope: !3047)
!3119 = !DILocation(line: 161, column: 28, scope: !3047)
!3120 = !DILocation(line: 161, column: 40, scope: !3047)
!3121 = !DILocation(line: 161, column: 52, scope: !3047)
!3122 = !DILocation(line: 161, column: 64, scope: !3047)
!3123 = !DILocation(line: 162, column: 16, scope: !3047)
!3124 = !DILocation(line: 162, column: 28, scope: !3047)
!3125 = !DILocation(line: 162, column: 40, scope: !3047)
!3126 = !DILocation(line: 162, column: 52, scope: !3047)
!3127 = !DILocation(line: 159, column: 7, scope: !3047)
!3128 = !DILocation(line: 163, column: 7, scope: !3047)
!3129 = !DILocation(line: 170, column: 16, scope: !3047)
!3130 = !DILocation(line: 170, column: 24, scope: !3047)
!3131 = !DILocation(line: 172, column: 17, scope: !3047)
!3132 = !DILocation(line: 172, column: 29, scope: !3047)
!3133 = !DILocation(line: 172, column: 41, scope: !3047)
!3134 = !DILocation(line: 172, column: 53, scope: !3047)
!3135 = !DILocation(line: 172, column: 65, scope: !3047)
!3136 = !DILocation(line: 173, column: 17, scope: !3047)
!3137 = !DILocation(line: 173, column: 29, scope: !3047)
!3138 = !DILocation(line: 173, column: 41, scope: !3047)
!3139 = !DILocation(line: 173, column: 53, scope: !3047)
!3140 = !DILocation(line: 170, column: 7, scope: !3047)
!3141 = !DILocation(line: 174, column: 7, scope: !3047)
!3142 = !DILocation(line: 176, column: 1, scope: !2955)
!3143 = distinct !DISubprogram(name: "version_etc_ar", scope: !266, file: !266, line: 183, type: !3144, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !33)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{null, !2958, !6, !6, !6, !3011}
!3146 = !DILocalVariable(name: "stream", arg: 1, scope: !3143, file: !266, line: 183, type: !2958)
!3147 = !DILocation(line: 183, column: 23, scope: !3143)
!3148 = !DILocalVariable(name: "command_name", arg: 2, scope: !3143, file: !266, line: 184, type: !6)
!3149 = !DILocation(line: 184, column: 29, scope: !3143)
!3150 = !DILocalVariable(name: "package", arg: 3, scope: !3143, file: !266, line: 184, type: !6)
!3151 = !DILocation(line: 184, column: 55, scope: !3143)
!3152 = !DILocalVariable(name: "version", arg: 4, scope: !3143, file: !266, line: 185, type: !6)
!3153 = !DILocation(line: 185, column: 29, scope: !3143)
!3154 = !DILocalVariable(name: "authors", arg: 5, scope: !3143, file: !266, line: 185, type: !3011)
!3155 = !DILocation(line: 185, column: 59, scope: !3143)
!3156 = !DILocalVariable(name: "n_authors", scope: !3143, file: !266, line: 187, type: !141)
!3157 = !DILocation(line: 187, column: 10, scope: !3143)
!3158 = !DILocation(line: 189, column: 18, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3143, file: !266, line: 189, column: 3)
!3160 = !DILocation(line: 189, column: 8, scope: !3159)
!3161 = !DILocation(line: 189, column: 23, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3159, file: !266, line: 189, column: 3)
!3163 = !DILocation(line: 189, column: 31, scope: !3162)
!3164 = !DILocation(line: 189, column: 3, scope: !3159)
!3165 = !DILocation(line: 189, column: 52, scope: !3162)
!3166 = !DILocation(line: 189, column: 3, scope: !3162)
!3167 = distinct !{!3167, !3164, !3168, !447}
!3168 = !DILocation(line: 190, column: 5, scope: !3159)
!3169 = !DILocation(line: 191, column: 20, scope: !3143)
!3170 = !DILocation(line: 191, column: 28, scope: !3143)
!3171 = !DILocation(line: 191, column: 42, scope: !3143)
!3172 = !DILocation(line: 191, column: 51, scope: !3143)
!3173 = !DILocation(line: 191, column: 60, scope: !3143)
!3174 = !DILocation(line: 191, column: 69, scope: !3143)
!3175 = !DILocation(line: 191, column: 3, scope: !3143)
!3176 = !DILocation(line: 192, column: 1, scope: !3143)
!3177 = distinct !DISubprogram(name: "version_etc_va", scope: !266, file: !266, line: 199, type: !3178, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !33)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !2958, !6, !6, !6, !3180}
!3180 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !59, line: 52, baseType: !3181)
!3181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !61, line: 32, baseType: !3182)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3183, baseType: !3184)
!3183 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !65, size: 256, elements: !3185)
!3185 = !{!3186, !3187, !3188, !3189, !3190}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3184, file: !3183, line: 192, baseType: !29, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3184, file: !3183, line: 192, baseType: !29, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3184, file: !3183, line: 192, baseType: !29, size: 64, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3184, file: !3183, line: 192, baseType: !30, size: 32, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3184, file: !3183, line: 192, baseType: !30, size: 32, offset: 224)
!3191 = !DILocalVariable(name: "stream", arg: 1, scope: !3177, file: !266, line: 199, type: !2958)
!3192 = !DILocation(line: 199, column: 23, scope: !3177)
!3193 = !DILocalVariable(name: "command_name", arg: 2, scope: !3177, file: !266, line: 200, type: !6)
!3194 = !DILocation(line: 200, column: 29, scope: !3177)
!3195 = !DILocalVariable(name: "package", arg: 3, scope: !3177, file: !266, line: 200, type: !6)
!3196 = !DILocation(line: 200, column: 55, scope: !3177)
!3197 = !DILocalVariable(name: "version", arg: 4, scope: !3177, file: !266, line: 201, type: !6)
!3198 = !DILocation(line: 201, column: 29, scope: !3177)
!3199 = !DILocalVariable(name: "authors", arg: 5, scope: !3177, file: !266, line: 201, type: !3180)
!3200 = !DILocation(line: 201, column: 46, scope: !3177)
!3201 = !DILocalVariable(name: "n_authors", scope: !3177, file: !266, line: 203, type: !141)
!3202 = !DILocation(line: 203, column: 10, scope: !3177)
!3203 = !DILocalVariable(name: "authtab", scope: !3177, file: !266, line: 204, type: !3204)
!3204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !149)
!3205 = !DILocation(line: 204, column: 15, scope: !3177)
!3206 = !DILocation(line: 206, column: 18, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3177, file: !266, line: 206, column: 3)
!3208 = !DILocation(line: 206, column: 8, scope: !3207)
!3209 = !DILocation(line: 207, column: 8, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3207, file: !266, line: 206, column: 3)
!3211 = !DILocation(line: 207, column: 18, scope: !3210)
!3212 = !DILocation(line: 208, column: 10, scope: !3210)
!3213 = !DILocation(line: 208, column: 35, scope: !3210)
!3214 = !DILocation(line: 208, column: 22, scope: !3210)
!3215 = !DILocation(line: 208, column: 14, scope: !3210)
!3216 = !DILocation(line: 208, column: 33, scope: !3210)
!3217 = !DILocation(line: 208, column: 67, scope: !3210)
!3218 = !DILocation(line: 0, scope: !3210)
!3219 = !DILocation(line: 206, column: 3, scope: !3207)
!3220 = !DILocation(line: 209, column: 17, scope: !3210)
!3221 = !DILocation(line: 206, column: 3, scope: !3210)
!3222 = distinct !{!3222, !3219, !3223, !447}
!3223 = !DILocation(line: 210, column: 5, scope: !3207)
!3224 = !DILocation(line: 211, column: 20, scope: !3177)
!3225 = !DILocation(line: 211, column: 28, scope: !3177)
!3226 = !DILocation(line: 211, column: 42, scope: !3177)
!3227 = !DILocation(line: 211, column: 51, scope: !3177)
!3228 = !DILocation(line: 212, column: 20, scope: !3177)
!3229 = !DILocation(line: 212, column: 29, scope: !3177)
!3230 = !DILocation(line: 211, column: 3, scope: !3177)
!3231 = !DILocation(line: 213, column: 1, scope: !3177)
!3232 = distinct !DISubprogram(name: "version_etc", scope: !266, file: !266, line: 230, type: !3233, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !33)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{null, !2958, !6, !6, !6, null}
!3235 = !DILocalVariable(name: "stream", arg: 1, scope: !3232, file: !266, line: 230, type: !2958)
!3236 = !DILocation(line: 230, column: 20, scope: !3232)
!3237 = !DILocalVariable(name: "command_name", arg: 2, scope: !3232, file: !266, line: 231, type: !6)
!3238 = !DILocation(line: 231, column: 26, scope: !3232)
!3239 = !DILocalVariable(name: "package", arg: 3, scope: !3232, file: !266, line: 231, type: !6)
!3240 = !DILocation(line: 231, column: 52, scope: !3232)
!3241 = !DILocalVariable(name: "version", arg: 4, scope: !3232, file: !266, line: 232, type: !6)
!3242 = !DILocation(line: 232, column: 26, scope: !3232)
!3243 = !DILocalVariable(name: "authors", scope: !3232, file: !266, line: 234, type: !3180)
!3244 = !DILocation(line: 234, column: 11, scope: !3232)
!3245 = !DILocation(line: 235, column: 3, scope: !3232)
!3246 = !DILocation(line: 236, column: 19, scope: !3232)
!3247 = !DILocation(line: 236, column: 27, scope: !3232)
!3248 = !DILocation(line: 236, column: 41, scope: !3232)
!3249 = !DILocation(line: 236, column: 50, scope: !3232)
!3250 = !DILocation(line: 236, column: 3, scope: !3232)
!3251 = !DILocation(line: 237, column: 3, scope: !3232)
!3252 = !DILocation(line: 238, column: 1, scope: !3232)
!3253 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !266, file: !266, line: 241, type: !79, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !33)
!3254 = !DILocation(line: 243, column: 3, scope: !3253)
!3255 = !DILocation(line: 248, column: 11, scope: !3253)
!3256 = !DILocation(line: 248, column: 3, scope: !3253)
!3257 = !DILocation(line: 254, column: 11, scope: !3253)
!3258 = !DILocation(line: 254, column: 3, scope: !3253)
!3259 = !DILocation(line: 259, column: 11, scope: !3253)
!3260 = !DILocation(line: 259, column: 3, scope: !3253)
!3261 = !DILocation(line: 261, column: 1, scope: !3253)
!3262 = distinct !DISubprogram(name: "xnrealloc", scope: !3263, file: !3263, line: 147, type: !3264, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3263 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!29, !29, !141, !141}
!3266 = !DILocalVariable(name: "p", arg: 1, scope: !3262, file: !3263, line: 147, type: !29)
!3267 = !DILocation(line: 147, column: 18, scope: !3262)
!3268 = !DILocalVariable(name: "n", arg: 2, scope: !3262, file: !3263, line: 147, type: !141)
!3269 = !DILocation(line: 147, column: 28, scope: !3262)
!3270 = !DILocalVariable(name: "s", arg: 3, scope: !3262, file: !3263, line: 147, type: !141)
!3271 = !DILocation(line: 147, column: 38, scope: !3262)
!3272 = !DILocation(line: 149, column: 25, scope: !3262)
!3273 = !DILocation(line: 149, column: 28, scope: !3262)
!3274 = !DILocation(line: 149, column: 31, scope: !3262)
!3275 = !DILocation(line: 149, column: 10, scope: !3262)
!3276 = !DILocation(line: 149, column: 3, scope: !3262)
!3277 = distinct !DISubprogram(name: "xreallocarray", scope: !272, file: !272, line: 83, type: !3264, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3278 = !DILocalVariable(name: "p", arg: 1, scope: !3277, file: !272, line: 83, type: !29)
!3279 = !DILocation(line: 83, column: 22, scope: !3277)
!3280 = !DILocalVariable(name: "n", arg: 2, scope: !3277, file: !272, line: 83, type: !141)
!3281 = !DILocation(line: 83, column: 32, scope: !3277)
!3282 = !DILocalVariable(name: "s", arg: 3, scope: !3277, file: !272, line: 83, type: !141)
!3283 = !DILocation(line: 83, column: 42, scope: !3277)
!3284 = !DILocation(line: 85, column: 39, scope: !3277)
!3285 = !DILocation(line: 85, column: 42, scope: !3277)
!3286 = !DILocation(line: 85, column: 45, scope: !3277)
!3287 = !DILocation(line: 85, column: 25, scope: !3277)
!3288 = !DILocation(line: 85, column: 10, scope: !3277)
!3289 = !DILocation(line: 85, column: 3, scope: !3277)
!3290 = distinct !DISubprogram(name: "check_nonnull", scope: !272, file: !272, line: 37, type: !3291, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!29, !29}
!3293 = !DILocalVariable(name: "p", arg: 1, scope: !3290, file: !272, line: 37, type: !29)
!3294 = !DILocation(line: 37, column: 22, scope: !3290)
!3295 = !DILocation(line: 39, column: 8, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3290, file: !272, line: 39, column: 7)
!3297 = !DILocation(line: 39, column: 7, scope: !3290)
!3298 = !DILocation(line: 40, column: 5, scope: !3296)
!3299 = !DILocation(line: 41, column: 10, scope: !3290)
!3300 = !DILocation(line: 41, column: 3, scope: !3290)
!3301 = distinct !DISubprogram(name: "xmalloc", scope: !272, file: !272, line: 47, type: !3302, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!29, !141}
!3304 = !DILocalVariable(name: "s", arg: 1, scope: !3301, file: !272, line: 47, type: !141)
!3305 = !DILocation(line: 47, column: 17, scope: !3301)
!3306 = !DILocation(line: 49, column: 33, scope: !3301)
!3307 = !DILocation(line: 49, column: 25, scope: !3301)
!3308 = !DILocation(line: 49, column: 10, scope: !3301)
!3309 = !DILocation(line: 49, column: 3, scope: !3301)
!3310 = distinct !DISubprogram(name: "ximalloc", scope: !272, file: !272, line: 53, type: !3311, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!29, !286}
!3313 = !DILocalVariable(name: "s", arg: 1, scope: !3310, file: !272, line: 53, type: !286)
!3314 = !DILocation(line: 53, column: 17, scope: !3310)
!3315 = !DILocation(line: 55, column: 34, scope: !3310)
!3316 = !DILocation(line: 55, column: 25, scope: !3310)
!3317 = !DILocation(line: 55, column: 10, scope: !3310)
!3318 = !DILocation(line: 55, column: 3, scope: !3310)
!3319 = distinct !DISubprogram(name: "xcharalloc", scope: !272, file: !272, line: 59, type: !3320, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!103, !141}
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3319, file: !272, line: 59, type: !141)
!3323 = !DILocation(line: 59, column: 20, scope: !3319)
!3324 = !DILocation(line: 61, column: 10, scope: !3319)
!3325 = !DILocation(line: 61, column: 3, scope: !3319)
!3326 = distinct !DISubprogram(name: "xrealloc", scope: !272, file: !272, line: 68, type: !3327, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!29, !29, !141}
!3329 = !DILocalVariable(name: "p", arg: 1, scope: !3326, file: !272, line: 68, type: !29)
!3330 = !DILocation(line: 68, column: 17, scope: !3326)
!3331 = !DILocalVariable(name: "s", arg: 2, scope: !3326, file: !272, line: 68, type: !141)
!3332 = !DILocation(line: 68, column: 27, scope: !3326)
!3333 = !DILocation(line: 70, column: 34, scope: !3326)
!3334 = !DILocation(line: 70, column: 37, scope: !3326)
!3335 = !DILocation(line: 70, column: 25, scope: !3326)
!3336 = !DILocation(line: 70, column: 10, scope: !3326)
!3337 = !DILocation(line: 70, column: 3, scope: !3326)
!3338 = distinct !DISubprogram(name: "xirealloc", scope: !272, file: !272, line: 74, type: !3339, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!29, !29, !286}
!3341 = !DILocalVariable(name: "p", arg: 1, scope: !3338, file: !272, line: 74, type: !29)
!3342 = !DILocation(line: 74, column: 18, scope: !3338)
!3343 = !DILocalVariable(name: "s", arg: 2, scope: !3338, file: !272, line: 74, type: !286)
!3344 = !DILocation(line: 74, column: 27, scope: !3338)
!3345 = !DILocation(line: 76, column: 35, scope: !3338)
!3346 = !DILocation(line: 76, column: 38, scope: !3338)
!3347 = !DILocation(line: 76, column: 25, scope: !3338)
!3348 = !DILocation(line: 76, column: 10, scope: !3338)
!3349 = !DILocation(line: 76, column: 3, scope: !3338)
!3350 = distinct !DISubprogram(name: "xireallocarray", scope: !272, file: !272, line: 89, type: !3351, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!29, !29, !286, !286}
!3353 = !DILocalVariable(name: "p", arg: 1, scope: !3350, file: !272, line: 89, type: !29)
!3354 = !DILocation(line: 89, column: 23, scope: !3350)
!3355 = !DILocalVariable(name: "n", arg: 2, scope: !3350, file: !272, line: 89, type: !286)
!3356 = !DILocation(line: 89, column: 32, scope: !3350)
!3357 = !DILocalVariable(name: "s", arg: 3, scope: !3350, file: !272, line: 89, type: !286)
!3358 = !DILocation(line: 89, column: 41, scope: !3350)
!3359 = !DILocation(line: 91, column: 40, scope: !3350)
!3360 = !DILocation(line: 91, column: 43, scope: !3350)
!3361 = !DILocation(line: 91, column: 46, scope: !3350)
!3362 = !DILocation(line: 91, column: 25, scope: !3350)
!3363 = !DILocation(line: 91, column: 10, scope: !3350)
!3364 = !DILocation(line: 91, column: 3, scope: !3350)
!3365 = distinct !DISubprogram(name: "xnmalloc", scope: !272, file: !272, line: 98, type: !3366, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!29, !141, !141}
!3368 = !DILocalVariable(name: "n", arg: 1, scope: !3365, file: !272, line: 98, type: !141)
!3369 = !DILocation(line: 98, column: 18, scope: !3365)
!3370 = !DILocalVariable(name: "s", arg: 2, scope: !3365, file: !272, line: 98, type: !141)
!3371 = !DILocation(line: 98, column: 28, scope: !3365)
!3372 = !DILocation(line: 100, column: 31, scope: !3365)
!3373 = !DILocation(line: 100, column: 34, scope: !3365)
!3374 = !DILocation(line: 100, column: 10, scope: !3365)
!3375 = !DILocation(line: 100, column: 3, scope: !3365)
!3376 = distinct !DISubprogram(name: "xinmalloc", scope: !272, file: !272, line: 104, type: !3377, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!29, !286, !286}
!3379 = !DILocalVariable(name: "n", arg: 1, scope: !3376, file: !272, line: 104, type: !286)
!3380 = !DILocation(line: 104, column: 18, scope: !3376)
!3381 = !DILocalVariable(name: "s", arg: 2, scope: !3376, file: !272, line: 104, type: !286)
!3382 = !DILocation(line: 104, column: 27, scope: !3376)
!3383 = !DILocation(line: 106, column: 32, scope: !3376)
!3384 = !DILocation(line: 106, column: 35, scope: !3376)
!3385 = !DILocation(line: 106, column: 10, scope: !3376)
!3386 = !DILocation(line: 106, column: 3, scope: !3376)
!3387 = distinct !DISubprogram(name: "x2realloc", scope: !272, file: !272, line: 116, type: !3388, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!29, !29, !278}
!3390 = !DILocalVariable(name: "p", arg: 1, scope: !3387, file: !272, line: 116, type: !29)
!3391 = !DILocation(line: 116, column: 18, scope: !3387)
!3392 = !DILocalVariable(name: "ps", arg: 2, scope: !3387, file: !272, line: 116, type: !278)
!3393 = !DILocation(line: 116, column: 29, scope: !3387)
!3394 = !DILocation(line: 118, column: 22, scope: !3387)
!3395 = !DILocation(line: 118, column: 25, scope: !3387)
!3396 = !DILocation(line: 118, column: 10, scope: !3387)
!3397 = !DILocation(line: 118, column: 3, scope: !3387)
!3398 = !DILocalVariable(name: "p", arg: 1, scope: !275, file: !272, line: 176, type: !29)
!3399 = !DILocation(line: 176, column: 19, scope: !275)
!3400 = !DILocalVariable(name: "pn", arg: 2, scope: !275, file: !272, line: 176, type: !278)
!3401 = !DILocation(line: 176, column: 30, scope: !275)
!3402 = !DILocalVariable(name: "s", arg: 3, scope: !275, file: !272, line: 176, type: !141)
!3403 = !DILocation(line: 176, column: 41, scope: !275)
!3404 = !DILocalVariable(name: "n", scope: !275, file: !272, line: 178, type: !141)
!3405 = !DILocation(line: 178, column: 10, scope: !275)
!3406 = !DILocation(line: 178, column: 15, scope: !275)
!3407 = !DILocation(line: 178, column: 14, scope: !275)
!3408 = !DILocation(line: 180, column: 9, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !275, file: !272, line: 180, column: 7)
!3410 = !DILocation(line: 180, column: 7, scope: !275)
!3411 = !DILocation(line: 182, column: 13, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !272, line: 182, column: 11)
!3413 = distinct !DILexicalBlock(scope: !3409, file: !272, line: 181, column: 5)
!3414 = !DILocation(line: 182, column: 11, scope: !3413)
!3415 = !DILocation(line: 190, column: 32, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3412, file: !272, line: 183, column: 9)
!3417 = !DILocation(line: 190, column: 30, scope: !3416)
!3418 = !DILocation(line: 190, column: 13, scope: !3416)
!3419 = !DILocation(line: 191, column: 17, scope: !3416)
!3420 = !DILocation(line: 191, column: 16, scope: !3416)
!3421 = !DILocation(line: 191, column: 13, scope: !3416)
!3422 = !DILocation(line: 192, column: 9, scope: !3416)
!3423 = !DILocation(line: 193, column: 5, scope: !3413)
!3424 = !DILocation(line: 197, column: 11, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !272, line: 197, column: 11)
!3426 = distinct !DILexicalBlock(scope: !3409, file: !272, line: 195, column: 5)
!3427 = !DILocation(line: 197, column: 11, scope: !3426)
!3428 = !DILocation(line: 198, column: 9, scope: !3425)
!3429 = !DILocation(line: 201, column: 22, scope: !275)
!3430 = !DILocation(line: 201, column: 25, scope: !275)
!3431 = !DILocation(line: 201, column: 28, scope: !275)
!3432 = !DILocation(line: 201, column: 7, scope: !275)
!3433 = !DILocation(line: 201, column: 5, scope: !275)
!3434 = !DILocation(line: 202, column: 9, scope: !275)
!3435 = !DILocation(line: 202, column: 4, scope: !275)
!3436 = !DILocation(line: 202, column: 7, scope: !275)
!3437 = !DILocation(line: 203, column: 10, scope: !275)
!3438 = !DILocation(line: 203, column: 3, scope: !275)
!3439 = !DILocalVariable(name: "pa", arg: 1, scope: !282, file: !272, line: 223, type: !29)
!3440 = !DILocation(line: 223, column: 16, scope: !282)
!3441 = !DILocalVariable(name: "pn", arg: 2, scope: !282, file: !272, line: 223, type: !285)
!3442 = !DILocation(line: 223, column: 27, scope: !282)
!3443 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !282, file: !272, line: 223, type: !286)
!3444 = !DILocation(line: 223, column: 37, scope: !282)
!3445 = !DILocalVariable(name: "n_max", arg: 4, scope: !282, file: !272, line: 223, type: !288)
!3446 = !DILocation(line: 223, column: 59, scope: !282)
!3447 = !DILocalVariable(name: "s", arg: 5, scope: !282, file: !272, line: 223, type: !286)
!3448 = !DILocation(line: 223, column: 72, scope: !282)
!3449 = !DILocalVariable(name: "n0", scope: !282, file: !272, line: 230, type: !286)
!3450 = !DILocation(line: 230, column: 9, scope: !282)
!3451 = !DILocation(line: 230, column: 15, scope: !282)
!3452 = !DILocation(line: 230, column: 14, scope: !282)
!3453 = !DILocalVariable(name: "n", scope: !282, file: !272, line: 237, type: !286)
!3454 = !DILocation(line: 237, column: 9, scope: !282)
!3455 = !DILocation(line: 238, column: 7, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !282, file: !272, line: 238, column: 7)
!3457 = !DILocation(line: 238, column: 7, scope: !282)
!3458 = !DILocation(line: 239, column: 7, scope: !3456)
!3459 = !DILocation(line: 239, column: 5, scope: !3456)
!3460 = !DILocation(line: 240, column: 12, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !282, file: !272, line: 240, column: 7)
!3462 = !DILocation(line: 240, column: 9, scope: !3461)
!3463 = !DILocation(line: 240, column: 18, scope: !3461)
!3464 = !DILocation(line: 240, column: 21, scope: !3461)
!3465 = !DILocation(line: 240, column: 29, scope: !3461)
!3466 = !DILocation(line: 240, column: 27, scope: !3461)
!3467 = !DILocation(line: 240, column: 7, scope: !282)
!3468 = !DILocation(line: 241, column: 9, scope: !3461)
!3469 = !DILocation(line: 241, column: 7, scope: !3461)
!3470 = !DILocation(line: 241, column: 5, scope: !3461)
!3471 = !DILocalVariable(name: "nbytes", scope: !282, file: !272, line: 248, type: !286)
!3472 = !DILocation(line: 248, column: 9, scope: !282)
!3473 = !DILocalVariable(name: "adjusted_nbytes", scope: !282, file: !272, line: 252, type: !286)
!3474 = !DILocation(line: 252, column: 9, scope: !282)
!3475 = !DILocation(line: 253, column: 8, scope: !282)
!3476 = !DILocation(line: 255, column: 10, scope: !282)
!3477 = !DILocation(line: 255, column: 17, scope: !282)
!3478 = !DILocation(line: 256, column: 7, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !282, file: !272, line: 256, column: 7)
!3480 = !DILocation(line: 256, column: 7, scope: !282)
!3481 = !DILocation(line: 258, column: 11, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3479, file: !272, line: 257, column: 5)
!3483 = !DILocation(line: 258, column: 29, scope: !3482)
!3484 = !DILocation(line: 258, column: 27, scope: !3482)
!3485 = !DILocation(line: 258, column: 9, scope: !3482)
!3486 = !DILocation(line: 259, column: 16, scope: !3482)
!3487 = !DILocation(line: 259, column: 34, scope: !3482)
!3488 = !DILocation(line: 259, column: 52, scope: !3482)
!3489 = !DILocation(line: 259, column: 50, scope: !3482)
!3490 = !DILocation(line: 259, column: 32, scope: !3482)
!3491 = !DILocation(line: 259, column: 14, scope: !3482)
!3492 = !DILocation(line: 260, column: 5, scope: !3482)
!3493 = !DILocation(line: 262, column: 9, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !282, file: !272, line: 262, column: 7)
!3495 = !DILocation(line: 262, column: 7, scope: !282)
!3496 = !DILocation(line: 263, column: 6, scope: !3494)
!3497 = !DILocation(line: 263, column: 9, scope: !3494)
!3498 = !DILocation(line: 263, column: 5, scope: !3494)
!3499 = !DILocation(line: 264, column: 7, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !282, file: !272, line: 264, column: 7)
!3501 = !DILocation(line: 264, column: 11, scope: !3500)
!3502 = !DILocation(line: 264, column: 9, scope: !3500)
!3503 = !DILocation(line: 264, column: 16, scope: !3500)
!3504 = !DILocation(line: 264, column: 14, scope: !3500)
!3505 = !DILocation(line: 265, column: 7, scope: !3500)
!3506 = !DILocation(line: 265, column: 11, scope: !3500)
!3507 = !DILocation(line: 266, column: 11, scope: !3500)
!3508 = !DILocation(line: 266, column: 20, scope: !3500)
!3509 = !DILocation(line: 266, column: 17, scope: !3500)
!3510 = !DILocation(line: 266, column: 26, scope: !3500)
!3511 = !DILocation(line: 266, column: 29, scope: !3500)
!3512 = !DILocation(line: 266, column: 37, scope: !3500)
!3513 = !DILocation(line: 266, column: 35, scope: !3500)
!3514 = !DILocation(line: 267, column: 11, scope: !3500)
!3515 = !DILocation(line: 267, column: 14, scope: !3500)
!3516 = !DILocation(line: 264, column: 7, scope: !282)
!3517 = !DILocation(line: 268, column: 5, scope: !3500)
!3518 = !DILocation(line: 269, column: 18, scope: !282)
!3519 = !DILocation(line: 269, column: 22, scope: !282)
!3520 = !DILocation(line: 269, column: 8, scope: !282)
!3521 = !DILocation(line: 269, column: 6, scope: !282)
!3522 = !DILocation(line: 270, column: 9, scope: !282)
!3523 = !DILocation(line: 270, column: 4, scope: !282)
!3524 = !DILocation(line: 270, column: 7, scope: !282)
!3525 = !DILocation(line: 271, column: 10, scope: !282)
!3526 = !DILocation(line: 271, column: 3, scope: !282)
!3527 = distinct !DISubprogram(name: "xzalloc", scope: !272, file: !272, line: 279, type: !3302, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3528 = !DILocalVariable(name: "s", arg: 1, scope: !3527, file: !272, line: 279, type: !141)
!3529 = !DILocation(line: 279, column: 17, scope: !3527)
!3530 = !DILocation(line: 281, column: 19, scope: !3527)
!3531 = !DILocation(line: 281, column: 10, scope: !3527)
!3532 = !DILocation(line: 281, column: 3, scope: !3527)
!3533 = distinct !DISubprogram(name: "xcalloc", scope: !272, file: !272, line: 294, type: !3366, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3534 = !DILocalVariable(name: "n", arg: 1, scope: !3533, file: !272, line: 294, type: !141)
!3535 = !DILocation(line: 294, column: 17, scope: !3533)
!3536 = !DILocalVariable(name: "s", arg: 2, scope: !3533, file: !272, line: 294, type: !141)
!3537 = !DILocation(line: 294, column: 27, scope: !3533)
!3538 = !DILocation(line: 296, column: 33, scope: !3533)
!3539 = !DILocation(line: 296, column: 36, scope: !3533)
!3540 = !DILocation(line: 296, column: 25, scope: !3533)
!3541 = !DILocation(line: 296, column: 10, scope: !3533)
!3542 = !DILocation(line: 296, column: 3, scope: !3533)
!3543 = distinct !DISubprogram(name: "xizalloc", scope: !272, file: !272, line: 285, type: !3311, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3544 = !DILocalVariable(name: "s", arg: 1, scope: !3543, file: !272, line: 285, type: !286)
!3545 = !DILocation(line: 285, column: 17, scope: !3543)
!3546 = !DILocation(line: 287, column: 20, scope: !3543)
!3547 = !DILocation(line: 287, column: 10, scope: !3543)
!3548 = !DILocation(line: 287, column: 3, scope: !3543)
!3549 = distinct !DISubprogram(name: "xicalloc", scope: !272, file: !272, line: 300, type: !3377, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3550 = !DILocalVariable(name: "n", arg: 1, scope: !3549, file: !272, line: 300, type: !286)
!3551 = !DILocation(line: 300, column: 17, scope: !3549)
!3552 = !DILocalVariable(name: "s", arg: 2, scope: !3549, file: !272, line: 300, type: !286)
!3553 = !DILocation(line: 300, column: 26, scope: !3549)
!3554 = !DILocation(line: 302, column: 34, scope: !3549)
!3555 = !DILocation(line: 302, column: 37, scope: !3549)
!3556 = !DILocation(line: 302, column: 25, scope: !3549)
!3557 = !DILocation(line: 302, column: 10, scope: !3549)
!3558 = !DILocation(line: 302, column: 3, scope: !3549)
!3559 = distinct !DISubprogram(name: "xmemdup", scope: !272, file: !272, line: 310, type: !3560, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!29, !3562, !141}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3564 = !DILocalVariable(name: "p", arg: 1, scope: !3559, file: !272, line: 310, type: !3562)
!3565 = !DILocation(line: 310, column: 22, scope: !3559)
!3566 = !DILocalVariable(name: "s", arg: 2, scope: !3559, file: !272, line: 310, type: !141)
!3567 = !DILocation(line: 310, column: 32, scope: !3559)
!3568 = !DILocation(line: 312, column: 27, scope: !3559)
!3569 = !DILocation(line: 312, column: 18, scope: !3559)
!3570 = !DILocation(line: 312, column: 31, scope: !3559)
!3571 = !DILocation(line: 312, column: 34, scope: !3559)
!3572 = !DILocation(line: 312, column: 10, scope: !3559)
!3573 = !DILocation(line: 312, column: 3, scope: !3559)
!3574 = distinct !DISubprogram(name: "ximemdup", scope: !272, file: !272, line: 316, type: !3575, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!29, !3562, !286}
!3577 = !DILocalVariable(name: "p", arg: 1, scope: !3574, file: !272, line: 316, type: !3562)
!3578 = !DILocation(line: 316, column: 23, scope: !3574)
!3579 = !DILocalVariable(name: "s", arg: 2, scope: !3574, file: !272, line: 316, type: !286)
!3580 = !DILocation(line: 316, column: 32, scope: !3574)
!3581 = !DILocation(line: 318, column: 28, scope: !3574)
!3582 = !DILocation(line: 318, column: 18, scope: !3574)
!3583 = !DILocation(line: 318, column: 32, scope: !3574)
!3584 = !DILocation(line: 318, column: 35, scope: !3574)
!3585 = !DILocation(line: 318, column: 10, scope: !3574)
!3586 = !DILocation(line: 318, column: 3, scope: !3574)
!3587 = distinct !DISubprogram(name: "ximemdup0", scope: !272, file: !272, line: 325, type: !3588, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!103, !3562, !286}
!3590 = !DILocalVariable(name: "p", arg: 1, scope: !3587, file: !272, line: 325, type: !3562)
!3591 = !DILocation(line: 325, column: 24, scope: !3587)
!3592 = !DILocalVariable(name: "s", arg: 2, scope: !3587, file: !272, line: 325, type: !286)
!3593 = !DILocation(line: 325, column: 33, scope: !3587)
!3594 = !DILocalVariable(name: "result", scope: !3587, file: !272, line: 327, type: !103)
!3595 = !DILocation(line: 327, column: 9, scope: !3587)
!3596 = !DILocation(line: 327, column: 28, scope: !3587)
!3597 = !DILocation(line: 327, column: 30, scope: !3587)
!3598 = !DILocation(line: 327, column: 18, scope: !3587)
!3599 = !DILocation(line: 328, column: 3, scope: !3587)
!3600 = !DILocation(line: 328, column: 10, scope: !3587)
!3601 = !DILocation(line: 328, column: 13, scope: !3587)
!3602 = !DILocation(line: 329, column: 18, scope: !3587)
!3603 = !DILocation(line: 329, column: 26, scope: !3587)
!3604 = !DILocation(line: 329, column: 29, scope: !3587)
!3605 = !DILocation(line: 329, column: 10, scope: !3587)
!3606 = !DILocation(line: 329, column: 3, scope: !3587)
!3607 = distinct !DISubprogram(name: "xstrdup", scope: !272, file: !272, line: 335, type: !2670, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !33)
!3608 = !DILocalVariable(name: "string", arg: 1, scope: !3607, file: !272, line: 335, type: !6)
!3609 = !DILocation(line: 335, column: 22, scope: !3607)
!3610 = !DILocation(line: 337, column: 19, scope: !3607)
!3611 = !DILocation(line: 337, column: 35, scope: !3607)
!3612 = !DILocation(line: 337, column: 27, scope: !3607)
!3613 = !DILocation(line: 337, column: 43, scope: !3607)
!3614 = !DILocation(line: 337, column: 10, scope: !3607)
!3615 = !DILocation(line: 337, column: 3, scope: !3607)
!3616 = distinct !DISubprogram(name: "xalloc_die", scope: !292, file: !292, line: 32, type: !79, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !291, retainedNodes: !33)
!3617 = !DILocalVariable(name: "__errstatus", scope: !3618, file: !292, line: 34, type: !230)
!3618 = distinct !DILexicalBlock(scope: !3616, file: !292, line: 34, column: 3)
!3619 = !DILocation(line: 34, column: 3, scope: !3618)
!3620 = !DILocation(line: 40, column: 3, scope: !3616)
!3621 = distinct !DISubprogram(name: "xnanosleep", scope: !294, file: !294, line: 40, type: !3622, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !33)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!30, !641}
!3624 = !DILocalVariable(name: "seconds", arg: 1, scope: !3621, file: !294, line: 40, type: !641)
!3625 = !DILocation(line: 40, column: 20, scope: !3621)
!3626 = !DILocation(line: 43, column: 38, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3621, file: !294, line: 43, column: 7)
!3628 = !DILocation(line: 43, column: 35, scope: !3627)
!3629 = !DILocation(line: 43, column: 7, scope: !3621)
!3630 = !DILocation(line: 45, column: 7, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !294, line: 44, column: 5)
!3632 = !DILocation(line: 46, column: 9, scope: !3631)
!3633 = !DILocation(line: 47, column: 14, scope: !3631)
!3634 = !DILocation(line: 47, column: 20, scope: !3631)
!3635 = distinct !{!3635, !3630, !3636, !447}
!3636 = !DILocation(line: 47, column: 28, scope: !3631)
!3637 = !DILocation(line: 50, column: 5, scope: !3631)
!3638 = !DILocalVariable(name: "ts_sleep", scope: !3621, file: !294, line: 53, type: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3640, line: 11, size: 128, elements: !3641)
!3640 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3641 = !{!3642, !3643}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3639, file: !3640, line: 16, baseType: !298, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3639, file: !3640, line: 21, baseType: !3644, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !299, line: 197, baseType: !289)
!3645 = !DILocation(line: 53, column: 19, scope: !3621)
!3646 = !DILocation(line: 53, column: 43, scope: !3621)
!3647 = !DILocation(line: 53, column: 30, scope: !3621)
!3648 = !DILocation(line: 55, column: 3, scope: !3621)
!3649 = !DILocation(line: 68, column: 7, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !294, line: 56, column: 5)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !294, line: 55, column: 3)
!3652 = distinct !DILexicalBlock(scope: !3621, file: !294, line: 55, column: 3)
!3653 = !DILocation(line: 68, column: 13, scope: !3650)
!3654 = !DILocation(line: 69, column: 11, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3650, file: !294, line: 69, column: 11)
!3656 = !DILocation(line: 69, column: 44, scope: !3655)
!3657 = !DILocation(line: 69, column: 11, scope: !3650)
!3658 = !DILocation(line: 70, column: 9, scope: !3655)
!3659 = !DILocation(line: 71, column: 11, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3650, file: !294, line: 71, column: 11)
!3661 = !DILocation(line: 71, column: 17, scope: !3660)
!3662 = !DILocation(line: 71, column: 26, scope: !3660)
!3663 = !DILocation(line: 71, column: 29, scope: !3660)
!3664 = !DILocation(line: 71, column: 35, scope: !3660)
!3665 = !DILocation(line: 71, column: 11, scope: !3650)
!3666 = !DILocation(line: 72, column: 9, scope: !3660)
!3667 = !DILocation(line: 55, column: 3, scope: !3651)
!3668 = distinct !{!3668, !3669, !3670}
!3669 = !DILocation(line: 55, column: 3, scope: !3652)
!3670 = !DILocation(line: 73, column: 5, scope: !3652)
!3671 = !DILocation(line: 75, column: 3, scope: !3621)
!3672 = !DILocation(line: 76, column: 1, scope: !3621)
!3673 = distinct !DISubprogram(name: "c_strtod", scope: !210, file: !210, line: 102, type: !3674, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !33)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!641, !6, !635}
!3676 = !DILocalVariable(name: "nptr", arg: 1, scope: !3673, file: !210, line: 102, type: !6)
!3677 = !DILocation(line: 102, column: 23, scope: !3673)
!3678 = !DILocalVariable(name: "endptr", arg: 2, scope: !3673, file: !210, line: 102, type: !635)
!3679 = !DILocation(line: 102, column: 36, scope: !3673)
!3680 = !DILocalVariable(name: "r", scope: !3673, file: !210, line: 104, type: !641)
!3681 = !DILocation(line: 104, column: 10, scope: !3673)
!3682 = !DILocalVariable(name: "locale", scope: !3673, file: !210, line: 108, type: !212)
!3683 = !DILocation(line: 108, column: 12, scope: !3673)
!3684 = !DILocation(line: 108, column: 21, scope: !3673)
!3685 = !DILocation(line: 109, column: 8, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3673, file: !210, line: 109, column: 7)
!3687 = !DILocation(line: 109, column: 7, scope: !3673)
!3688 = !DILocation(line: 111, column: 11, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !210, line: 111, column: 11)
!3690 = distinct !DILexicalBlock(scope: !3686, file: !210, line: 110, column: 5)
!3691 = !DILocation(line: 111, column: 11, scope: !3690)
!3692 = !DILocation(line: 112, column: 28, scope: !3689)
!3693 = !DILocation(line: 112, column: 10, scope: !3689)
!3694 = !DILocation(line: 112, column: 17, scope: !3689)
!3695 = !DILocation(line: 112, column: 9, scope: !3689)
!3696 = !DILocation(line: 113, column: 7, scope: !3690)
!3697 = !DILocation(line: 118, column: 17, scope: !3673)
!3698 = !DILocation(line: 118, column: 23, scope: !3673)
!3699 = !DILocation(line: 118, column: 31, scope: !3673)
!3700 = !DILocation(line: 118, column: 7, scope: !3673)
!3701 = !DILocation(line: 118, column: 5, scope: !3673)
!3702 = !DILocation(line: 342, column: 10, scope: !3673)
!3703 = !DILocation(line: 342, column: 3, scope: !3673)
!3704 = !DILocation(line: 343, column: 1, scope: !3673)
!3705 = distinct !DISubprogram(name: "c_locale", scope: !210, file: !210, line: 63, type: !3706, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !209, retainedNodes: !33)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!212}
!3708 = !DILocation(line: 65, column: 8, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3705, file: !210, line: 65, column: 7)
!3710 = !DILocation(line: 65, column: 7, scope: !3705)
!3711 = !DILocation(line: 66, column: 22, scope: !3709)
!3712 = !DILocation(line: 66, column: 20, scope: !3709)
!3713 = !DILocation(line: 66, column: 5, scope: !3709)
!3714 = !DILocation(line: 67, column: 10, scope: !3705)
!3715 = !DILocation(line: 67, column: 3, scope: !3705)
!3716 = distinct !DISubprogram(name: "c32isprint", scope: !3717, file: !3717, line: 41, type: !3718, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !300, retainedNodes: !33)
!3717 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!30, !3720}
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3721, line: 20, baseType: !14)
!3721 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3722 = !DILocalVariable(name: "wc", arg: 1, scope: !3716, file: !3717, line: 41, type: !3720)
!3723 = !DILocation(line: 41, column: 14, scope: !3716)
!3724 = !DILocation(line: 66, column: 22, scope: !3716)
!3725 = !DILocation(line: 66, column: 10, scope: !3716)
!3726 = !DILocation(line: 66, column: 3, scope: !3716)
!3727 = distinct !DISubprogram(name: "close_stream", scope: !303, file: !303, line: 55, type: !3728, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !302, retainedNodes: !33)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!30, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2960, line: 7, baseType: !3732)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2962, line: 49, size: 1728, elements: !3733)
!3733 = !{!3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3732, file: !2962, line: 51, baseType: !30, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3732, file: !2962, line: 54, baseType: !103, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3732, file: !2962, line: 55, baseType: !103, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3732, file: !2962, line: 56, baseType: !103, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3732, file: !2962, line: 57, baseType: !103, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3732, file: !2962, line: 58, baseType: !103, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3732, file: !2962, line: 59, baseType: !103, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3732, file: !2962, line: 60, baseType: !103, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3732, file: !2962, line: 61, baseType: !103, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3732, file: !2962, line: 64, baseType: !103, size: 64, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3732, file: !2962, line: 65, baseType: !103, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3732, file: !2962, line: 66, baseType: !103, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3732, file: !2962, line: 68, baseType: !2977, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3732, file: !2962, line: 70, baseType: !3748, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3732, file: !2962, line: 72, baseType: !30, size: 32, offset: 896)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3732, file: !2962, line: 73, baseType: !30, size: 32, offset: 928)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3732, file: !2962, line: 74, baseType: !2984, size: 64, offset: 960)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3732, file: !2962, line: 77, baseType: !31, size: 16, offset: 1024)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3732, file: !2962, line: 78, baseType: !2987, size: 8, offset: 1040)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3732, file: !2962, line: 79, baseType: !2989, size: 8, offset: 1048)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3732, file: !2962, line: 81, baseType: !2993, size: 64, offset: 1088)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3732, file: !2962, line: 89, baseType: !2996, size: 64, offset: 1152)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3732, file: !2962, line: 91, baseType: !2998, size: 64, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3732, file: !2962, line: 92, baseType: !3001, size: 64, offset: 1280)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3732, file: !2962, line: 93, baseType: !3748, size: 64, offset: 1344)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3732, file: !2962, line: 94, baseType: !29, size: 64, offset: 1408)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3732, file: !2962, line: 95, baseType: !141, size: 64, offset: 1472)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3732, file: !2962, line: 96, baseType: !30, size: 32, offset: 1536)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3732, file: !2962, line: 98, baseType: !3008, size: 160, offset: 1568)
!3764 = !DILocalVariable(name: "stream", arg: 1, scope: !3727, file: !303, line: 55, type: !3730)
!3765 = !DILocation(line: 55, column: 21, scope: !3727)
!3766 = !DILocalVariable(name: "some_pending", scope: !3727, file: !303, line: 57, type: !3767)
!3767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!3768 = !DILocation(line: 57, column: 14, scope: !3727)
!3769 = !DILocation(line: 57, column: 42, scope: !3727)
!3770 = !DILocation(line: 57, column: 30, scope: !3727)
!3771 = !DILocation(line: 57, column: 50, scope: !3727)
!3772 = !DILocalVariable(name: "prev_fail", scope: !3727, file: !303, line: 58, type: !3767)
!3773 = !DILocation(line: 58, column: 14, scope: !3727)
!3774 = !DILocation(line: 58, column: 27, scope: !3727)
!3775 = !DILocation(line: 58, column: 43, scope: !3727)
!3776 = !DILocalVariable(name: "fclose_fail", scope: !3727, file: !303, line: 59, type: !3767)
!3777 = !DILocation(line: 59, column: 14, scope: !3727)
!3778 = !DILocation(line: 59, column: 37, scope: !3727)
!3779 = !DILocation(line: 59, column: 29, scope: !3727)
!3780 = !DILocation(line: 59, column: 45, scope: !3727)
!3781 = !DILocation(line: 69, column: 7, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3727, file: !303, line: 69, column: 7)
!3783 = !DILocation(line: 69, column: 17, scope: !3782)
!3784 = !DILocation(line: 69, column: 21, scope: !3782)
!3785 = !DILocation(line: 69, column: 33, scope: !3782)
!3786 = !DILocation(line: 69, column: 37, scope: !3782)
!3787 = !DILocation(line: 69, column: 50, scope: !3782)
!3788 = !DILocation(line: 69, column: 53, scope: !3782)
!3789 = !DILocation(line: 69, column: 59, scope: !3782)
!3790 = !DILocation(line: 69, column: 7, scope: !3727)
!3791 = !DILocation(line: 71, column: 13, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !303, line: 71, column: 11)
!3793 = distinct !DILexicalBlock(scope: !3782, file: !303, line: 70, column: 5)
!3794 = !DILocation(line: 71, column: 11, scope: !3793)
!3795 = !DILocation(line: 72, column: 9, scope: !3792)
!3796 = !DILocation(line: 72, column: 15, scope: !3792)
!3797 = !DILocation(line: 73, column: 7, scope: !3793)
!3798 = !DILocation(line: 76, column: 3, scope: !3727)
!3799 = !DILocation(line: 77, column: 1, scope: !3727)
!3800 = distinct !DISubprogram(name: "dtotimespec", scope: !305, file: !305, line: 30, type: !3801, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !304, retainedNodes: !33)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!3803, !641}
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3640, line: 11, size: 128, elements: !3804)
!3804 = !{!3805, !3806}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3803, file: !3640, line: 16, baseType: !298, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3803, file: !3640, line: 21, baseType: !3644, size: 64, offset: 64)
!3807 = !DILocalVariable(name: "sec", arg: 1, scope: !3800, file: !305, line: 30, type: !641)
!3808 = !DILocation(line: 30, column: 21, scope: !3800)
!3809 = !DILocation(line: 32, column: 34, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3800, file: !305, line: 32, column: 7)
!3811 = !DILocation(line: 32, column: 32, scope: !3810)
!3812 = !DILocation(line: 32, column: 7, scope: !3800)
!3813 = !DILocation(line: 33, column: 12, scope: !3810)
!3814 = !DILocation(line: 33, column: 5, scope: !3810)
!3815 = !DILocation(line: 34, column: 15, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3810, file: !305, line: 34, column: 12)
!3817 = !DILocation(line: 34, column: 19, scope: !3816)
!3818 = !DILocation(line: 34, column: 12, scope: !3810)
!3819 = !DILocation(line: 35, column: 12, scope: !3816)
!3820 = !DILocation(line: 35, column: 5, scope: !3816)
!3821 = !DILocalVariable(name: "s", scope: !3822, file: !305, line: 38, type: !296)
!3822 = distinct !DILexicalBlock(scope: !3816, file: !305, line: 37, column: 5)
!3823 = !DILocation(line: 38, column: 14, scope: !3822)
!3824 = !DILocation(line: 38, column: 18, scope: !3822)
!3825 = !DILocalVariable(name: "frac", scope: !3822, file: !305, line: 39, type: !641)
!3826 = !DILocation(line: 39, column: 14, scope: !3822)
!3827 = !DILocation(line: 39, column: 36, scope: !3822)
!3828 = !DILocation(line: 39, column: 42, scope: !3822)
!3829 = !DILocation(line: 39, column: 40, scope: !3822)
!3830 = !DILocation(line: 39, column: 33, scope: !3822)
!3831 = !DILocalVariable(name: "ns", scope: !3822, file: !305, line: 40, type: !289)
!3832 = !DILocation(line: 40, column: 12, scope: !3822)
!3833 = !DILocation(line: 40, column: 17, scope: !3822)
!3834 = !DILocation(line: 41, column: 13, scope: !3822)
!3835 = !DILocation(line: 41, column: 18, scope: !3822)
!3836 = !DILocation(line: 41, column: 16, scope: !3822)
!3837 = !DILocation(line: 41, column: 10, scope: !3822)
!3838 = !DILocation(line: 42, column: 12, scope: !3822)
!3839 = !DILocation(line: 42, column: 15, scope: !3822)
!3840 = !DILocation(line: 42, column: 9, scope: !3822)
!3841 = !DILocation(line: 43, column: 10, scope: !3822)
!3842 = !DILocation(line: 45, column: 11, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3822, file: !305, line: 45, column: 11)
!3844 = !DILocation(line: 45, column: 14, scope: !3843)
!3845 = !DILocation(line: 45, column: 11, scope: !3822)
!3846 = !DILocation(line: 47, column: 12, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3843, file: !305, line: 46, column: 9)
!3848 = !DILocation(line: 48, column: 14, scope: !3847)
!3849 = !DILocation(line: 49, column: 9, scope: !3847)
!3850 = !DILocation(line: 51, column: 29, scope: !3822)
!3851 = !DILocation(line: 51, column: 32, scope: !3822)
!3852 = !DILocation(line: 51, column: 14, scope: !3822)
!3853 = !DILocation(line: 51, column: 7, scope: !3822)
!3854 = !DILocation(line: 53, column: 1, scope: !3800)
!3855 = distinct !DISubprogram(name: "rpl_fclose", scope: !312, file: !312, line: 58, type: !3856, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !311, retainedNodes: !33)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!30, !3858}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2960, line: 7, baseType: !3860)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2962, line: 49, size: 1728, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3860, file: !2962, line: 51, baseType: !30, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3860, file: !2962, line: 54, baseType: !103, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3860, file: !2962, line: 55, baseType: !103, size: 64, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3860, file: !2962, line: 56, baseType: !103, size: 64, offset: 192)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3860, file: !2962, line: 57, baseType: !103, size: 64, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3860, file: !2962, line: 58, baseType: !103, size: 64, offset: 320)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3860, file: !2962, line: 59, baseType: !103, size: 64, offset: 384)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3860, file: !2962, line: 60, baseType: !103, size: 64, offset: 448)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3860, file: !2962, line: 61, baseType: !103, size: 64, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3860, file: !2962, line: 64, baseType: !103, size: 64, offset: 576)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3860, file: !2962, line: 65, baseType: !103, size: 64, offset: 640)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3860, file: !2962, line: 66, baseType: !103, size: 64, offset: 704)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3860, file: !2962, line: 68, baseType: !2977, size: 64, offset: 768)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3860, file: !2962, line: 70, baseType: !3876, size: 64, offset: 832)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3860, file: !2962, line: 72, baseType: !30, size: 32, offset: 896)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3860, file: !2962, line: 73, baseType: !30, size: 32, offset: 928)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3860, file: !2962, line: 74, baseType: !2984, size: 64, offset: 960)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3860, file: !2962, line: 77, baseType: !31, size: 16, offset: 1024)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3860, file: !2962, line: 78, baseType: !2987, size: 8, offset: 1040)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3860, file: !2962, line: 79, baseType: !2989, size: 8, offset: 1048)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3860, file: !2962, line: 81, baseType: !2993, size: 64, offset: 1088)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3860, file: !2962, line: 89, baseType: !2996, size: 64, offset: 1152)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3860, file: !2962, line: 91, baseType: !2998, size: 64, offset: 1216)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3860, file: !2962, line: 92, baseType: !3001, size: 64, offset: 1280)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3860, file: !2962, line: 93, baseType: !3876, size: 64, offset: 1344)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3860, file: !2962, line: 94, baseType: !29, size: 64, offset: 1408)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3860, file: !2962, line: 95, baseType: !141, size: 64, offset: 1472)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3860, file: !2962, line: 96, baseType: !30, size: 32, offset: 1536)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3860, file: !2962, line: 98, baseType: !3008, size: 160, offset: 1568)
!3892 = !DILocalVariable(name: "fp", arg: 1, scope: !3855, file: !312, line: 58, type: !3858)
!3893 = !DILocation(line: 58, column: 19, scope: !3855)
!3894 = !DILocalVariable(name: "saved_errno", scope: !3855, file: !312, line: 60, type: !30)
!3895 = !DILocation(line: 60, column: 7, scope: !3855)
!3896 = !DILocalVariable(name: "fd", scope: !3855, file: !312, line: 63, type: !30)
!3897 = !DILocation(line: 63, column: 7, scope: !3855)
!3898 = !DILocation(line: 63, column: 20, scope: !3855)
!3899 = !DILocation(line: 63, column: 12, scope: !3855)
!3900 = !DILocation(line: 64, column: 7, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3855, file: !312, line: 64, column: 7)
!3902 = !DILocation(line: 64, column: 10, scope: !3901)
!3903 = !DILocation(line: 64, column: 7, scope: !3855)
!3904 = !DILocation(line: 65, column: 28, scope: !3901)
!3905 = !DILocation(line: 65, column: 12, scope: !3901)
!3906 = !DILocation(line: 65, column: 5, scope: !3901)
!3907 = !DILocation(line: 70, column: 9, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3855, file: !312, line: 70, column: 7)
!3909 = !DILocation(line: 70, column: 23, scope: !3908)
!3910 = !DILocation(line: 70, column: 41, scope: !3908)
!3911 = !DILocation(line: 70, column: 33, scope: !3908)
!3912 = !DILocation(line: 70, column: 26, scope: !3908)
!3913 = !DILocation(line: 70, column: 59, scope: !3908)
!3914 = !DILocation(line: 71, column: 7, scope: !3908)
!3915 = !DILocation(line: 71, column: 18, scope: !3908)
!3916 = !DILocation(line: 71, column: 10, scope: !3908)
!3917 = !DILocation(line: 70, column: 7, scope: !3855)
!3918 = !DILocation(line: 72, column: 19, scope: !3908)
!3919 = !DILocation(line: 72, column: 17, scope: !3908)
!3920 = !DILocation(line: 72, column: 5, scope: !3908)
!3921 = !DILocalVariable(name: "result", scope: !3855, file: !312, line: 74, type: !30)
!3922 = !DILocation(line: 74, column: 7, scope: !3855)
!3923 = !DILocation(line: 100, column: 28, scope: !3855)
!3924 = !DILocation(line: 100, column: 12, scope: !3855)
!3925 = !DILocation(line: 100, column: 10, scope: !3855)
!3926 = !DILocation(line: 105, column: 7, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3855, file: !312, line: 105, column: 7)
!3928 = !DILocation(line: 105, column: 19, scope: !3927)
!3929 = !DILocation(line: 105, column: 7, scope: !3855)
!3930 = !DILocation(line: 107, column: 15, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3927, file: !312, line: 106, column: 5)
!3932 = !DILocation(line: 107, column: 7, scope: !3931)
!3933 = !DILocation(line: 107, column: 13, scope: !3931)
!3934 = !DILocation(line: 108, column: 14, scope: !3931)
!3935 = !DILocation(line: 109, column: 5, scope: !3931)
!3936 = !DILocation(line: 111, column: 10, scope: !3855)
!3937 = !DILocation(line: 111, column: 3, scope: !3855)
!3938 = !DILocation(line: 112, column: 1, scope: !3855)
!3939 = distinct !DISubprogram(name: "rpl_fflush", scope: !314, file: !314, line: 130, type: !3940, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !313, retainedNodes: !33)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!30, !3942}
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2960, line: 7, baseType: !3944)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2962, line: 49, size: 1728, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3944, file: !2962, line: 51, baseType: !30, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3944, file: !2962, line: 54, baseType: !103, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3944, file: !2962, line: 55, baseType: !103, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3944, file: !2962, line: 56, baseType: !103, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3944, file: !2962, line: 57, baseType: !103, size: 64, offset: 256)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3944, file: !2962, line: 58, baseType: !103, size: 64, offset: 320)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3944, file: !2962, line: 59, baseType: !103, size: 64, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3944, file: !2962, line: 60, baseType: !103, size: 64, offset: 448)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3944, file: !2962, line: 61, baseType: !103, size: 64, offset: 512)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3944, file: !2962, line: 64, baseType: !103, size: 64, offset: 576)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3944, file: !2962, line: 65, baseType: !103, size: 64, offset: 640)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3944, file: !2962, line: 66, baseType: !103, size: 64, offset: 704)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3944, file: !2962, line: 68, baseType: !2977, size: 64, offset: 768)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3944, file: !2962, line: 70, baseType: !3960, size: 64, offset: 832)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3944, file: !2962, line: 72, baseType: !30, size: 32, offset: 896)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3944, file: !2962, line: 73, baseType: !30, size: 32, offset: 928)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3944, file: !2962, line: 74, baseType: !2984, size: 64, offset: 960)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3944, file: !2962, line: 77, baseType: !31, size: 16, offset: 1024)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3944, file: !2962, line: 78, baseType: !2987, size: 8, offset: 1040)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3944, file: !2962, line: 79, baseType: !2989, size: 8, offset: 1048)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3944, file: !2962, line: 81, baseType: !2993, size: 64, offset: 1088)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3944, file: !2962, line: 89, baseType: !2996, size: 64, offset: 1152)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3944, file: !2962, line: 91, baseType: !2998, size: 64, offset: 1216)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3944, file: !2962, line: 92, baseType: !3001, size: 64, offset: 1280)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3944, file: !2962, line: 93, baseType: !3960, size: 64, offset: 1344)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3944, file: !2962, line: 94, baseType: !29, size: 64, offset: 1408)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3944, file: !2962, line: 95, baseType: !141, size: 64, offset: 1472)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3944, file: !2962, line: 96, baseType: !30, size: 32, offset: 1536)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3944, file: !2962, line: 98, baseType: !3008, size: 160, offset: 1568)
!3976 = !DILocalVariable(name: "stream", arg: 1, scope: !3939, file: !314, line: 130, type: !3942)
!3977 = !DILocation(line: 130, column: 19, scope: !3939)
!3978 = !DILocation(line: 151, column: 7, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3939, file: !314, line: 151, column: 7)
!3980 = !DILocation(line: 151, column: 14, scope: !3979)
!3981 = !DILocation(line: 151, column: 22, scope: !3979)
!3982 = !DILocation(line: 151, column: 27, scope: !3979)
!3983 = !DILocation(line: 151, column: 7, scope: !3939)
!3984 = !DILocation(line: 152, column: 20, scope: !3979)
!3985 = !DILocation(line: 152, column: 12, scope: !3979)
!3986 = !DILocation(line: 152, column: 5, scope: !3979)
!3987 = !DILocation(line: 157, column: 44, scope: !3939)
!3988 = !DILocation(line: 157, column: 3, scope: !3939)
!3989 = !DILocation(line: 159, column: 18, scope: !3939)
!3990 = !DILocation(line: 159, column: 10, scope: !3939)
!3991 = !DILocation(line: 159, column: 3, scope: !3939)
!3992 = !DILocation(line: 236, column: 1, scope: !3939)
!3993 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !314, file: !314, line: 42, type: !3994, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !313, retainedNodes: !33)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !3942}
!3996 = !DILocalVariable(name: "fp", arg: 1, scope: !3993, file: !314, line: 42, type: !3942)
!3997 = !DILocation(line: 42, column: 48, scope: !3993)
!3998 = !DILocation(line: 44, column: 7, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3993, file: !314, line: 44, column: 7)
!4000 = !DILocation(line: 44, column: 12, scope: !3999)
!4001 = !DILocation(line: 44, column: 19, scope: !3999)
!4002 = !DILocation(line: 44, column: 7, scope: !3993)
!4003 = !DILocation(line: 46, column: 13, scope: !3999)
!4004 = !DILocation(line: 46, column: 5, scope: !3999)
!4005 = !DILocation(line: 47, column: 1, scope: !3993)
!4006 = distinct !DISubprogram(name: "rpl_fseeko", scope: !316, file: !316, line: 28, type: !4007, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !33)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!30, !4009, !4043, !30}
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2960, line: 7, baseType: !4011)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2962, line: 49, size: 1728, elements: !4012)
!4012 = !{!4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4011, file: !2962, line: 51, baseType: !30, size: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4011, file: !2962, line: 54, baseType: !103, size: 64, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4011, file: !2962, line: 55, baseType: !103, size: 64, offset: 128)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4011, file: !2962, line: 56, baseType: !103, size: 64, offset: 192)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4011, file: !2962, line: 57, baseType: !103, size: 64, offset: 256)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4011, file: !2962, line: 58, baseType: !103, size: 64, offset: 320)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4011, file: !2962, line: 59, baseType: !103, size: 64, offset: 384)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4011, file: !2962, line: 60, baseType: !103, size: 64, offset: 448)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4011, file: !2962, line: 61, baseType: !103, size: 64, offset: 512)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4011, file: !2962, line: 64, baseType: !103, size: 64, offset: 576)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4011, file: !2962, line: 65, baseType: !103, size: 64, offset: 640)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4011, file: !2962, line: 66, baseType: !103, size: 64, offset: 704)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4011, file: !2962, line: 68, baseType: !2977, size: 64, offset: 768)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4011, file: !2962, line: 70, baseType: !4027, size: 64, offset: 832)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4011, file: !2962, line: 72, baseType: !30, size: 32, offset: 896)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4011, file: !2962, line: 73, baseType: !30, size: 32, offset: 928)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4011, file: !2962, line: 74, baseType: !2984, size: 64, offset: 960)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4011, file: !2962, line: 77, baseType: !31, size: 16, offset: 1024)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4011, file: !2962, line: 78, baseType: !2987, size: 8, offset: 1040)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4011, file: !2962, line: 79, baseType: !2989, size: 8, offset: 1048)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4011, file: !2962, line: 81, baseType: !2993, size: 64, offset: 1088)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4011, file: !2962, line: 89, baseType: !2996, size: 64, offset: 1152)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4011, file: !2962, line: 91, baseType: !2998, size: 64, offset: 1216)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4011, file: !2962, line: 92, baseType: !3001, size: 64, offset: 1280)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4011, file: !2962, line: 93, baseType: !4027, size: 64, offset: 1344)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4011, file: !2962, line: 94, baseType: !29, size: 64, offset: 1408)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4011, file: !2962, line: 95, baseType: !141, size: 64, offset: 1472)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4011, file: !2962, line: 96, baseType: !30, size: 32, offset: 1536)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4011, file: !2962, line: 98, baseType: !3008, size: 160, offset: 1568)
!4043 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !59, line: 63, baseType: !2984)
!4044 = !DILocalVariable(name: "fp", arg: 1, scope: !4006, file: !316, line: 28, type: !4009)
!4045 = !DILocation(line: 28, column: 15, scope: !4006)
!4046 = !DILocalVariable(name: "offset", arg: 2, scope: !4006, file: !316, line: 28, type: !4043)
!4047 = !DILocation(line: 28, column: 25, scope: !4006)
!4048 = !DILocalVariable(name: "whence", arg: 3, scope: !4006, file: !316, line: 28, type: !30)
!4049 = !DILocation(line: 28, column: 37, scope: !4006)
!4050 = !DILocation(line: 55, column: 7, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4006, file: !316, line: 55, column: 7)
!4052 = !DILocation(line: 55, column: 12, scope: !4051)
!4053 = !DILocation(line: 55, column: 28, scope: !4051)
!4054 = !DILocation(line: 55, column: 33, scope: !4051)
!4055 = !DILocation(line: 55, column: 25, scope: !4051)
!4056 = !DILocation(line: 56, column: 7, scope: !4051)
!4057 = !DILocation(line: 56, column: 10, scope: !4051)
!4058 = !DILocation(line: 56, column: 15, scope: !4051)
!4059 = !DILocation(line: 56, column: 32, scope: !4051)
!4060 = !DILocation(line: 56, column: 37, scope: !4051)
!4061 = !DILocation(line: 56, column: 29, scope: !4051)
!4062 = !DILocation(line: 57, column: 7, scope: !4051)
!4063 = !DILocation(line: 57, column: 10, scope: !4051)
!4064 = !DILocation(line: 57, column: 15, scope: !4051)
!4065 = !DILocation(line: 57, column: 29, scope: !4051)
!4066 = !DILocation(line: 55, column: 7, scope: !4006)
!4067 = !DILocalVariable(name: "pos", scope: !4068, file: !316, line: 123, type: !4043)
!4068 = distinct !DILexicalBlock(scope: !4051, file: !316, line: 119, column: 5)
!4069 = !DILocation(line: 123, column: 13, scope: !4068)
!4070 = !DILocation(line: 123, column: 34, scope: !4068)
!4071 = !DILocation(line: 123, column: 26, scope: !4068)
!4072 = !DILocation(line: 123, column: 39, scope: !4068)
!4073 = !DILocation(line: 123, column: 47, scope: !4068)
!4074 = !DILocation(line: 123, column: 19, scope: !4068)
!4075 = !DILocation(line: 124, column: 11, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4068, file: !316, line: 124, column: 11)
!4077 = !DILocation(line: 124, column: 15, scope: !4076)
!4078 = !DILocation(line: 124, column: 11, scope: !4068)
!4079 = !DILocation(line: 130, column: 11, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4076, file: !316, line: 125, column: 9)
!4081 = !DILocation(line: 135, column: 7, scope: !4068)
!4082 = !DILocation(line: 135, column: 12, scope: !4068)
!4083 = !DILocation(line: 135, column: 19, scope: !4068)
!4084 = !DILocation(line: 136, column: 22, scope: !4068)
!4085 = !DILocation(line: 136, column: 7, scope: !4068)
!4086 = !DILocation(line: 136, column: 12, scope: !4068)
!4087 = !DILocation(line: 136, column: 20, scope: !4068)
!4088 = !DILocation(line: 167, column: 7, scope: !4068)
!4089 = !DILocation(line: 169, column: 18, scope: !4006)
!4090 = !DILocation(line: 169, column: 22, scope: !4006)
!4091 = !DILocation(line: 169, column: 30, scope: !4006)
!4092 = !DILocation(line: 169, column: 10, scope: !4006)
!4093 = !DILocation(line: 169, column: 3, scope: !4006)
!4094 = !DILocation(line: 170, column: 1, scope: !4006)
!4095 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4096, file: !4096, line: 43, type: !4097, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !317, retainedNodes: !33)
!4096 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4097 = !DISubroutineType(types: !51)
!4098 = !DILocation(line: 45, column: 3, scope: !4095)
!4099 = !DILocation(line: 45, column: 9, scope: !4095)
!4100 = !DILocation(line: 46, column: 3, scope: !4095)
!4101 = distinct !DISubprogram(name: "imalloc", scope: !4096, file: !4096, line: 55, type: !3311, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !317, retainedNodes: !33)
!4102 = !DILocalVariable(name: "s", arg: 1, scope: !4101, file: !4096, line: 55, type: !286)
!4103 = !DILocation(line: 55, column: 16, scope: !4101)
!4104 = !DILocation(line: 57, column: 10, scope: !4101)
!4105 = !DILocation(line: 57, column: 12, scope: !4101)
!4106 = !DILocation(line: 57, column: 34, scope: !4101)
!4107 = !DILocation(line: 57, column: 26, scope: !4101)
!4108 = !DILocation(line: 57, column: 39, scope: !4101)
!4109 = !DILocation(line: 57, column: 3, scope: !4101)
!4110 = distinct !DISubprogram(name: "irealloc", scope: !4096, file: !4096, line: 66, type: !3339, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !317, retainedNodes: !33)
!4111 = !DILocalVariable(name: "p", arg: 1, scope: !4110, file: !4096, line: 66, type: !29)
!4112 = !DILocation(line: 66, column: 17, scope: !4110)
!4113 = !DILocalVariable(name: "s", arg: 2, scope: !4110, file: !4096, line: 66, type: !286)
!4114 = !DILocation(line: 66, column: 26, scope: !4110)
!4115 = !DILocation(line: 68, column: 10, scope: !4110)
!4116 = !DILocation(line: 68, column: 12, scope: !4110)
!4117 = !DILocation(line: 68, column: 35, scope: !4110)
!4118 = !DILocation(line: 68, column: 38, scope: !4110)
!4119 = !DILocation(line: 68, column: 26, scope: !4110)
!4120 = !DILocation(line: 68, column: 43, scope: !4110)
!4121 = !DILocation(line: 68, column: 3, scope: !4110)
!4122 = distinct !DISubprogram(name: "icalloc", scope: !4096, file: !4096, line: 77, type: !3377, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !317, retainedNodes: !33)
!4123 = !DILocalVariable(name: "n", arg: 1, scope: !4122, file: !4096, line: 77, type: !286)
!4124 = !DILocation(line: 77, column: 16, scope: !4122)
!4125 = !DILocalVariable(name: "s", arg: 2, scope: !4122, file: !4096, line: 77, type: !286)
!4126 = !DILocation(line: 77, column: 25, scope: !4122)
!4127 = !DILocation(line: 79, column: 18, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4122, file: !4096, line: 79, column: 7)
!4129 = !DILocation(line: 79, column: 16, scope: !4128)
!4130 = !DILocation(line: 79, column: 7, scope: !4122)
!4131 = !DILocation(line: 81, column: 11, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !4096, line: 81, column: 11)
!4133 = distinct !DILexicalBlock(scope: !4128, file: !4096, line: 80, column: 5)
!4134 = !DILocation(line: 81, column: 13, scope: !4132)
!4135 = !DILocation(line: 81, column: 11, scope: !4133)
!4136 = !DILocation(line: 82, column: 16, scope: !4132)
!4137 = !DILocation(line: 82, column: 9, scope: !4132)
!4138 = !DILocation(line: 83, column: 9, scope: !4133)
!4139 = !DILocation(line: 84, column: 5, scope: !4133)
!4140 = !DILocation(line: 85, column: 18, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4122, file: !4096, line: 85, column: 7)
!4142 = !DILocation(line: 85, column: 16, scope: !4141)
!4143 = !DILocation(line: 85, column: 7, scope: !4122)
!4144 = !DILocation(line: 87, column: 11, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4146, file: !4096, line: 87, column: 11)
!4146 = distinct !DILexicalBlock(scope: !4141, file: !4096, line: 86, column: 5)
!4147 = !DILocation(line: 87, column: 13, scope: !4145)
!4148 = !DILocation(line: 87, column: 11, scope: !4146)
!4149 = !DILocation(line: 88, column: 16, scope: !4145)
!4150 = !DILocation(line: 88, column: 9, scope: !4145)
!4151 = !DILocation(line: 89, column: 9, scope: !4146)
!4152 = !DILocation(line: 90, column: 5, scope: !4146)
!4153 = !DILocation(line: 91, column: 18, scope: !4122)
!4154 = !DILocation(line: 91, column: 21, scope: !4122)
!4155 = !DILocation(line: 91, column: 10, scope: !4122)
!4156 = !DILocation(line: 91, column: 3, scope: !4122)
!4157 = !DILocation(line: 92, column: 1, scope: !4122)
!4158 = distinct !DISubprogram(name: "ireallocarray", scope: !4096, file: !4096, line: 98, type: !3351, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !317, retainedNodes: !33)
!4159 = !DILocalVariable(name: "p", arg: 1, scope: !4158, file: !4096, line: 98, type: !29)
!4160 = !DILocation(line: 98, column: 22, scope: !4158)
!4161 = !DILocalVariable(name: "n", arg: 2, scope: !4158, file: !4096, line: 98, type: !286)
!4162 = !DILocation(line: 98, column: 31, scope: !4158)
!4163 = !DILocalVariable(name: "s", arg: 3, scope: !4158, file: !4096, line: 98, type: !286)
!4164 = !DILocation(line: 98, column: 40, scope: !4158)
!4165 = !DILocation(line: 100, column: 11, scope: !4158)
!4166 = !DILocation(line: 100, column: 13, scope: !4158)
!4167 = !DILocation(line: 100, column: 25, scope: !4158)
!4168 = !DILocation(line: 100, column: 28, scope: !4158)
!4169 = !DILocation(line: 100, column: 30, scope: !4158)
!4170 = !DILocation(line: 101, column: 27, scope: !4158)
!4171 = !DILocation(line: 101, column: 30, scope: !4158)
!4172 = !DILocation(line: 101, column: 33, scope: !4158)
!4173 = !DILocation(line: 101, column: 13, scope: !4158)
!4174 = !DILocation(line: 102, column: 13, scope: !4158)
!4175 = !DILocation(line: 100, column: 3, scope: !4158)
!4176 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !239, file: !239, line: 100, type: !4177, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!141, !4179, !6, !141, !4180}
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!4181 = !DILocalVariable(name: "pwc", arg: 1, scope: !4176, file: !239, line: 100, type: !4179)
!4182 = !DILocation(line: 100, column: 21, scope: !4176)
!4183 = !DILocalVariable(name: "s", arg: 2, scope: !4176, file: !239, line: 100, type: !6)
!4184 = !DILocation(line: 100, column: 38, scope: !4176)
!4185 = !DILocalVariable(name: "n", arg: 3, scope: !4176, file: !239, line: 100, type: !141)
!4186 = !DILocation(line: 100, column: 48, scope: !4176)
!4187 = !DILocalVariable(name: "ps", arg: 4, scope: !4176, file: !239, line: 100, type: !4180)
!4188 = !DILocation(line: 100, column: 62, scope: !4176)
!4189 = !DILocation(line: 105, column: 7, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4176, file: !239, line: 105, column: 7)
!4191 = !DILocation(line: 105, column: 9, scope: !4190)
!4192 = !DILocation(line: 105, column: 7, scope: !4176)
!4193 = !DILocation(line: 107, column: 11, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4190, file: !239, line: 106, column: 5)
!4195 = !DILocation(line: 108, column: 9, scope: !4194)
!4196 = !DILocation(line: 109, column: 9, scope: !4194)
!4197 = !DILocation(line: 110, column: 5, scope: !4194)
!4198 = !DILocation(line: 117, column: 7, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4176, file: !239, line: 117, column: 7)
!4200 = !DILocation(line: 117, column: 10, scope: !4199)
!4201 = !DILocation(line: 117, column: 7, scope: !4176)
!4202 = !DILocation(line: 118, column: 8, scope: !4199)
!4203 = !DILocation(line: 118, column: 5, scope: !4199)
!4204 = !DILocalVariable(name: "ret", scope: !4176, file: !239, line: 130, type: !141)
!4205 = !DILocation(line: 130, column: 10, scope: !4176)
!4206 = !DILocation(line: 130, column: 26, scope: !4176)
!4207 = !DILocation(line: 130, column: 31, scope: !4176)
!4208 = !DILocation(line: 130, column: 34, scope: !4176)
!4209 = !DILocation(line: 130, column: 37, scope: !4176)
!4210 = !DILocation(line: 130, column: 16, scope: !4176)
!4211 = !DILocation(line: 135, column: 7, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4176, file: !239, line: 135, column: 7)
!4213 = !DILocation(line: 135, column: 11, scope: !4212)
!4214 = !DILocation(line: 135, column: 25, scope: !4212)
!4215 = !DILocation(line: 135, column: 39, scope: !4212)
!4216 = !DILocation(line: 135, column: 30, scope: !4212)
!4217 = !DILocation(line: 135, column: 7, scope: !4176)
!4218 = !DILocation(line: 137, column: 14, scope: !4212)
!4219 = !DILocation(line: 137, column: 5, scope: !4212)
!4220 = !DILocation(line: 138, column: 7, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4176, file: !239, line: 138, column: 7)
!4222 = !DILocation(line: 138, column: 11, scope: !4221)
!4223 = !DILocation(line: 138, column: 7, scope: !4176)
!4224 = !DILocation(line: 139, column: 5, scope: !4221)
!4225 = !DILocation(line: 143, column: 22, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4176, file: !239, line: 143, column: 7)
!4227 = !DILocation(line: 143, column: 19, scope: !4226)
!4228 = !DILocation(line: 143, column: 26, scope: !4226)
!4229 = !DILocation(line: 143, column: 29, scope: !4226)
!4230 = !DILocation(line: 143, column: 31, scope: !4226)
!4231 = !DILocation(line: 143, column: 36, scope: !4226)
!4232 = !DILocation(line: 143, column: 41, scope: !4226)
!4233 = !DILocation(line: 143, column: 7, scope: !4176)
!4234 = !DILocation(line: 145, column: 11, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !239, line: 145, column: 11)
!4236 = distinct !DILexicalBlock(scope: !4226, file: !239, line: 144, column: 5)
!4237 = !DILocation(line: 145, column: 15, scope: !4235)
!4238 = !DILocation(line: 145, column: 11, scope: !4236)
!4239 = !DILocation(line: 146, column: 33, scope: !4235)
!4240 = !DILocation(line: 146, column: 32, scope: !4235)
!4241 = !DILocation(line: 146, column: 16, scope: !4235)
!4242 = !DILocation(line: 146, column: 10, scope: !4235)
!4243 = !DILocation(line: 146, column: 14, scope: !4235)
!4244 = !DILocation(line: 146, column: 9, scope: !4235)
!4245 = !DILocation(line: 147, column: 7, scope: !4236)
!4246 = !DILocation(line: 151, column: 10, scope: !4176)
!4247 = !DILocation(line: 151, column: 3, scope: !4176)
!4248 = !DILocation(line: 286, column: 1, scope: !4176)
!4249 = distinct !DISubprogram(name: "mbszero", scope: !4250, file: !4250, line: 1135, type: !4251, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !319, retainedNodes: !33)
!4250 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4251 = !DISubroutineType(types: !4252)
!4252 = !{null, !4253}
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !244, line: 6, baseType: !4255)
!4255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !246, line: 21, baseType: !4256)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 13, size: 64, elements: !4257)
!4257 = !{!4258, !4259}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4256, file: !246, line: 15, baseType: !30, size: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4256, file: !246, line: 20, baseType: !4260, size: 32, offset: 32)
!4260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4256, file: !246, line: 16, size: 32, elements: !4261)
!4261 = !{!4262, !4263}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4260, file: !246, line: 18, baseType: !14, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4260, file: !246, line: 19, baseType: !255, size: 32)
!4264 = !DILocalVariable(name: "ps", arg: 1, scope: !4249, file: !4250, line: 1135, type: !4253)
!4265 = !DILocation(line: 1135, column: 21, scope: !4249)
!4266 = !DILocation(line: 1137, column: 11, scope: !4249)
!4267 = !DILocation(line: 1137, column: 3, scope: !4249)
!4268 = !DILocation(line: 1138, column: 1, scope: !4249)
!4269 = distinct !DISubprogram(name: "memeq", scope: !2943, file: !2943, line: 974, type: !4270, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !321, retainedNodes: !33)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!46, !3562, !3562, !141}
!4272 = !DILocalVariable(name: "__s1", arg: 1, scope: !4269, file: !2943, line: 974, type: !3562)
!4273 = !DILocation(line: 974, column: 20, scope: !4269)
!4274 = !DILocalVariable(name: "__s2", arg: 2, scope: !4269, file: !2943, line: 974, type: !3562)
!4275 = !DILocation(line: 974, column: 38, scope: !4269)
!4276 = !DILocalVariable(name: "__n", arg: 3, scope: !4269, file: !2943, line: 974, type: !141)
!4277 = !DILocation(line: 974, column: 51, scope: !4269)
!4278 = !DILocation(line: 976, column: 19, scope: !4269)
!4279 = !DILocation(line: 976, column: 25, scope: !4269)
!4280 = !DILocation(line: 976, column: 31, scope: !4269)
!4281 = !DILocation(line: 976, column: 11, scope: !4269)
!4282 = !DILocation(line: 976, column: 10, scope: !4269)
!4283 = !DILocation(line: 976, column: 3, scope: !4269)
!4284 = distinct !DISubprogram(name: "rpl_nanosleep", scope: !324, file: !324, line: 42, type: !4285, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !323, retainedNodes: !33)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!30, !4287, !4293}
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4289)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3640, line: 11, size: 128, elements: !4290)
!4290 = !{!4291, !4292}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4289, file: !3640, line: 16, baseType: !298, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4289, file: !3640, line: 21, baseType: !3644, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4294 = !DILocalVariable(name: "requested_delay", arg: 1, scope: !4284, file: !324, line: 42, type: !4287)
!4295 = !DILocation(line: 42, column: 35, scope: !4284)
!4296 = !DILocalVariable(name: "remaining_delay", arg: 2, scope: !4284, file: !324, line: 43, type: !4293)
!4297 = !DILocation(line: 43, column: 29, scope: !4284)
!4298 = !DILocation(line: 52, column: 7, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4284, file: !324, line: 52, column: 7)
!4300 = !DILocation(line: 52, column: 24, scope: !4299)
!4301 = !DILocation(line: 52, column: 32, scope: !4299)
!4302 = !DILocation(line: 52, column: 36, scope: !4299)
!4303 = !DILocation(line: 52, column: 50, scope: !4299)
!4304 = !DILocation(line: 52, column: 67, scope: !4299)
!4305 = !DILocation(line: 52, column: 47, scope: !4299)
!4306 = !DILocation(line: 52, column: 7, scope: !4284)
!4307 = !DILocation(line: 54, column: 7, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4299, file: !324, line: 53, column: 5)
!4309 = !DILocation(line: 54, column: 13, scope: !4308)
!4310 = !DILocation(line: 55, column: 7, scope: !4308)
!4311 = !DILocalVariable(name: "limit", scope: !4312, file: !324, line: 61, type: !4313)
!4312 = distinct !DILexicalBlock(scope: !4284, file: !324, line: 58, column: 3)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!4314 = !DILocation(line: 61, column: 18, scope: !4312)
!4315 = !DILocalVariable(name: "seconds", scope: !4312, file: !324, line: 62, type: !296)
!4316 = !DILocation(line: 62, column: 12, scope: !4312)
!4317 = !DILocation(line: 62, column: 22, scope: !4312)
!4318 = !DILocation(line: 62, column: 39, scope: !4312)
!4319 = !DILocalVariable(name: "intermediate", scope: !4312, file: !324, line: 63, type: !4289)
!4320 = !DILocation(line: 63, column: 21, scope: !4312)
!4321 = !DILocation(line: 63, column: 37, scope: !4312)
!4322 = !DILocation(line: 63, column: 36, scope: !4312)
!4323 = !DILocation(line: 65, column: 5, scope: !4312)
!4324 = !DILocation(line: 65, column: 20, scope: !4312)
!4325 = !DILocation(line: 65, column: 18, scope: !4312)
!4326 = !DILocation(line: 67, column: 22, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4312, file: !324, line: 66, column: 7)
!4328 = !DILocation(line: 67, column: 29, scope: !4327)
!4329 = !DILocalVariable(name: "result", scope: !4327, file: !324, line: 68, type: !30)
!4330 = !DILocation(line: 68, column: 13, scope: !4327)
!4331 = !DILocation(line: 68, column: 48, scope: !4327)
!4332 = !DILocation(line: 68, column: 22, scope: !4327)
!4333 = !DILocation(line: 69, column: 17, scope: !4327)
!4334 = !DILocation(line: 70, column: 13, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4327, file: !324, line: 70, column: 13)
!4336 = !DILocation(line: 70, column: 13, scope: !4327)
!4337 = !DILocation(line: 72, column: 17, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4339, file: !324, line: 72, column: 17)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !324, line: 71, column: 11)
!4340 = !DILocation(line: 72, column: 17, scope: !4339)
!4341 = !DILocation(line: 73, column: 42, scope: !4338)
!4342 = !DILocation(line: 73, column: 15, scope: !4338)
!4343 = !DILocation(line: 73, column: 32, scope: !4338)
!4344 = !DILocation(line: 73, column: 39, scope: !4338)
!4345 = !DILocation(line: 74, column: 20, scope: !4339)
!4346 = !DILocation(line: 74, column: 13, scope: !4339)
!4347 = !DILocation(line: 76, column: 22, scope: !4327)
!4348 = !DILocation(line: 76, column: 30, scope: !4327)
!4349 = distinct !{!4349, !4323, !4350, !447}
!4350 = !DILocation(line: 77, column: 7, scope: !4312)
!4351 = !DILocation(line: 78, column: 27, scope: !4312)
!4352 = !DILocation(line: 78, column: 18, scope: !4312)
!4353 = !DILocation(line: 78, column: 25, scope: !4312)
!4354 = !DILocation(line: 79, column: 38, scope: !4312)
!4355 = !DILocation(line: 79, column: 12, scope: !4312)
!4356 = !DILocation(line: 79, column: 5, scope: !4312)
!4357 = !DILocation(line: 81, column: 1, scope: !4284)
!4358 = distinct !DISubprogram(name: "rpl_realloc", scope: !4359, file: !4359, line: 2057, type: !3327, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !329, retainedNodes: !33)
!4359 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4360 = !DILocalVariable(name: "ptr", arg: 1, scope: !4358, file: !4359, line: 2057, type: !29)
!4361 = !DILocation(line: 2057, column: 20, scope: !4358)
!4362 = !DILocalVariable(name: "size", arg: 2, scope: !4358, file: !4359, line: 2057, type: !141)
!4363 = !DILocation(line: 2057, column: 32, scope: !4358)
!4364 = !DILocation(line: 2059, column: 19, scope: !4358)
!4365 = !DILocation(line: 2059, column: 24, scope: !4358)
!4366 = !DILocation(line: 2059, column: 31, scope: !4358)
!4367 = !DILocation(line: 2059, column: 10, scope: !4358)
!4368 = !DILocation(line: 2059, column: 3, scope: !4358)
!4369 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !332, file: !332, line: 27, type: !3264, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !331, retainedNodes: !33)
!4370 = !DILocalVariable(name: "ptr", arg: 1, scope: !4369, file: !332, line: 27, type: !29)
!4371 = !DILocation(line: 27, column: 21, scope: !4369)
!4372 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4369, file: !332, line: 27, type: !141)
!4373 = !DILocation(line: 27, column: 33, scope: !4369)
!4374 = !DILocalVariable(name: "size", arg: 3, scope: !4369, file: !332, line: 27, type: !141)
!4375 = !DILocation(line: 27, column: 47, scope: !4369)
!4376 = !DILocalVariable(name: "nbytes", scope: !4369, file: !332, line: 29, type: !141)
!4377 = !DILocation(line: 29, column: 10, scope: !4369)
!4378 = !DILocation(line: 30, column: 7, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4369, file: !332, line: 30, column: 7)
!4380 = !DILocation(line: 30, column: 7, scope: !4369)
!4381 = !DILocation(line: 32, column: 7, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4379, file: !332, line: 31, column: 5)
!4383 = !DILocation(line: 32, column: 13, scope: !4382)
!4384 = !DILocation(line: 33, column: 7, scope: !4382)
!4385 = !DILocation(line: 37, column: 19, scope: !4369)
!4386 = !DILocation(line: 37, column: 24, scope: !4369)
!4387 = !DILocation(line: 37, column: 10, scope: !4369)
!4388 = !DILocation(line: 37, column: 3, scope: !4369)
!4389 = !DILocation(line: 38, column: 1, scope: !4369)
!4390 = distinct !DISubprogram(name: "make_timespec", scope: !308, file: !308, line: 56, type: !4391, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !334, retainedNodes: !33)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!4393, !296, !289}
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3640, line: 11, size: 128, elements: !4394)
!4394 = !{!4395, !4396}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4393, file: !3640, line: 16, baseType: !298, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4393, file: !3640, line: 21, baseType: !3644, size: 64, offset: 64)
!4397 = !DILocalVariable(name: "s", arg: 1, scope: !4390, file: !308, line: 56, type: !296)
!4398 = !DILocation(line: 56, column: 23, scope: !4390)
!4399 = !DILocalVariable(name: "ns", arg: 2, scope: !4390, file: !308, line: 56, type: !289)
!4400 = !DILocation(line: 56, column: 35, scope: !4390)
!4401 = !DILocation(line: 58, column: 28, scope: !4390)
!4402 = !DILocation(line: 58, column: 40, scope: !4390)
!4403 = !DILocation(line: 58, column: 54, scope: !4390)
!4404 = !DILocation(line: 58, column: 3, scope: !4390)
!4405 = distinct !DISubprogram(name: "timespec_cmp", scope: !308, file: !308, line: 64, type: !4406, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !334, retainedNodes: !33)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!30, !4393, !4393}
!4408 = !DILocalVariable(name: "a", arg: 1, scope: !4405, file: !308, line: 64, type: !4393)
!4409 = !DILocation(line: 64, column: 31, scope: !4405)
!4410 = !DILocalVariable(name: "b", arg: 2, scope: !4405, file: !308, line: 64, type: !4393)
!4411 = !DILocation(line: 64, column: 50, scope: !4405)
!4412 = !DILocation(line: 66, column: 14, scope: !4405)
!4413 = !DILocation(line: 66, column: 12, scope: !4405)
!4414 = !DILocation(line: 66, column: 45, scope: !4405)
!4415 = !DILocation(line: 66, column: 43, scope: !4405)
!4416 = !DILocation(line: 66, column: 3, scope: !4405)
!4417 = distinct !DISubprogram(name: "timespec_sign", scope: !308, file: !308, line: 72, type: !4418, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !334, retainedNodes: !33)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!30, !4393}
!4420 = !DILocalVariable(name: "a", arg: 1, scope: !4417, file: !308, line: 72, type: !4393)
!4421 = !DILocation(line: 72, column: 32, scope: !4417)
!4422 = !DILocation(line: 74, column: 10, scope: !4417)
!4423 = !DILocation(line: 74, column: 3, scope: !4417)
!4424 = distinct !DISubprogram(name: "timespectod", scope: !308, file: !308, line: 86, type: !4425, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !334, retainedNodes: !33)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!641, !4393}
!4427 = !DILocalVariable(name: "a", arg: 1, scope: !4424, file: !308, line: 86, type: !4393)
!4428 = !DILocation(line: 86, column: 30, scope: !4424)
!4429 = !DILocation(line: 88, column: 12, scope: !4424)
!4430 = !DILocation(line: 88, column: 10, scope: !4424)
!4431 = !DILocation(line: 88, column: 23, scope: !4424)
!4432 = !DILocation(line: 88, column: 21, scope: !4424)
!4433 = !DILocation(line: 88, column: 31, scope: !4424)
!4434 = !DILocation(line: 88, column: 19, scope: !4424)
!4435 = !DILocation(line: 88, column: 3, scope: !4424)
!4436 = distinct !DISubprogram(name: "hard_locale", scope: !337, file: !337, line: 28, type: !4437, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !336, retainedNodes: !33)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!46, !30}
!4439 = !DILocalVariable(name: "category", arg: 1, scope: !4436, file: !337, line: 28, type: !30)
!4440 = !DILocation(line: 28, column: 18, scope: !4436)
!4441 = !DILocalVariable(name: "locale", scope: !4436, file: !337, line: 30, type: !4442)
!4442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !4443)
!4443 = !{!4444}
!4444 = !DISubrange(count: 257)
!4445 = !DILocation(line: 30, column: 8, scope: !4436)
!4446 = !DILocation(line: 32, column: 25, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4436, file: !337, line: 32, column: 7)
!4448 = !DILocation(line: 32, column: 35, scope: !4447)
!4449 = !DILocation(line: 32, column: 7, scope: !4447)
!4450 = !DILocation(line: 32, column: 7, scope: !4436)
!4451 = !DILocation(line: 33, column: 5, scope: !4447)
!4452 = !DILocation(line: 35, column: 16, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4436, file: !337, line: 35, column: 7)
!4454 = !DILocation(line: 35, column: 9, scope: !4453)
!4455 = !DILocation(line: 35, column: 29, scope: !4453)
!4456 = !DILocation(line: 35, column: 39, scope: !4453)
!4457 = !DILocation(line: 35, column: 32, scope: !4453)
!4458 = !DILocation(line: 35, column: 7, scope: !4436)
!4459 = !DILocation(line: 36, column: 5, scope: !4453)
!4460 = !DILocation(line: 46, column: 3, scope: !4436)
!4461 = !DILocation(line: 47, column: 1, scope: !4436)
!4462 = distinct !DISubprogram(name: "setlocale_null_r", scope: !339, file: !339, line: 154, type: !4463, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !338, retainedNodes: !33)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!30, !30, !103, !141}
!4465 = !DILocalVariable(name: "category", arg: 1, scope: !4462, file: !339, line: 154, type: !30)
!4466 = !DILocation(line: 154, column: 23, scope: !4462)
!4467 = !DILocalVariable(name: "buf", arg: 2, scope: !4462, file: !339, line: 154, type: !103)
!4468 = !DILocation(line: 154, column: 39, scope: !4462)
!4469 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4462, file: !339, line: 154, type: !141)
!4470 = !DILocation(line: 154, column: 51, scope: !4462)
!4471 = !DILocation(line: 159, column: 37, scope: !4462)
!4472 = !DILocation(line: 159, column: 47, scope: !4462)
!4473 = !DILocation(line: 159, column: 52, scope: !4462)
!4474 = !DILocation(line: 159, column: 10, scope: !4462)
!4475 = !DILocation(line: 159, column: 3, scope: !4462)
!4476 = distinct !DISubprogram(name: "setlocale_null", scope: !339, file: !339, line: 186, type: !4477, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !338, retainedNodes: !33)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!6, !30}
!4479 = !DILocalVariable(name: "category", arg: 1, scope: !4476, file: !339, line: 186, type: !30)
!4480 = !DILocation(line: 186, column: 21, scope: !4476)
!4481 = !DILocation(line: 189, column: 35, scope: !4476)
!4482 = !DILocation(line: 189, column: 10, scope: !4476)
!4483 = !DILocation(line: 189, column: 3, scope: !4476)
!4484 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !341, file: !341, line: 35, type: !4477, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !340, retainedNodes: !33)
!4485 = !DILocalVariable(name: "category", arg: 1, scope: !4484, file: !341, line: 35, type: !30)
!4486 = !DILocation(line: 35, column: 30, scope: !4484)
!4487 = !DILocalVariable(name: "result", scope: !4484, file: !341, line: 37, type: !6)
!4488 = !DILocation(line: 37, column: 15, scope: !4484)
!4489 = !DILocation(line: 37, column: 35, scope: !4484)
!4490 = !DILocation(line: 37, column: 24, scope: !4484)
!4491 = !DILocation(line: 62, column: 10, scope: !4484)
!4492 = !DILocation(line: 62, column: 3, scope: !4484)
!4493 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !341, file: !341, line: 66, type: !4463, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !340, retainedNodes: !33)
!4494 = !DILocalVariable(name: "category", arg: 1, scope: !4493, file: !341, line: 66, type: !30)
!4495 = !DILocation(line: 66, column: 32, scope: !4493)
!4496 = !DILocalVariable(name: "buf", arg: 2, scope: !4493, file: !341, line: 66, type: !103)
!4497 = !DILocation(line: 66, column: 48, scope: !4493)
!4498 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4493, file: !341, line: 66, type: !141)
!4499 = !DILocation(line: 66, column: 60, scope: !4493)
!4500 = !DILocalVariable(name: "result", scope: !4493, file: !341, line: 111, type: !6)
!4501 = !DILocation(line: 111, column: 15, scope: !4493)
!4502 = !DILocation(line: 111, column: 49, scope: !4493)
!4503 = !DILocation(line: 111, column: 24, scope: !4493)
!4504 = !DILocation(line: 113, column: 7, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4493, file: !341, line: 113, column: 7)
!4506 = !DILocation(line: 113, column: 14, scope: !4505)
!4507 = !DILocation(line: 113, column: 7, scope: !4493)
!4508 = !DILocation(line: 116, column: 11, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !341, line: 116, column: 11)
!4510 = distinct !DILexicalBlock(scope: !4505, file: !341, line: 114, column: 5)
!4511 = !DILocation(line: 116, column: 19, scope: !4509)
!4512 = !DILocation(line: 116, column: 11, scope: !4510)
!4513 = !DILocation(line: 120, column: 9, scope: !4509)
!4514 = !DILocation(line: 120, column: 16, scope: !4509)
!4515 = !DILocation(line: 121, column: 7, scope: !4510)
!4516 = !DILocalVariable(name: "length", scope: !4517, file: !341, line: 125, type: !141)
!4517 = distinct !DILexicalBlock(scope: !4505, file: !341, line: 124, column: 5)
!4518 = !DILocation(line: 125, column: 14, scope: !4517)
!4519 = !DILocation(line: 125, column: 31, scope: !4517)
!4520 = !DILocation(line: 125, column: 23, scope: !4517)
!4521 = !DILocation(line: 126, column: 11, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4517, file: !341, line: 126, column: 11)
!4523 = !DILocation(line: 126, column: 20, scope: !4522)
!4524 = !DILocation(line: 126, column: 18, scope: !4522)
!4525 = !DILocation(line: 126, column: 11, scope: !4517)
!4526 = !DILocation(line: 128, column: 19, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4522, file: !341, line: 127, column: 9)
!4528 = !DILocation(line: 128, column: 24, scope: !4527)
!4529 = !DILocation(line: 128, column: 32, scope: !4527)
!4530 = !DILocation(line: 128, column: 39, scope: !4527)
!4531 = !DILocation(line: 128, column: 11, scope: !4527)
!4532 = !DILocation(line: 129, column: 11, scope: !4527)
!4533 = !DILocation(line: 133, column: 15, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !341, line: 133, column: 15)
!4535 = distinct !DILexicalBlock(scope: !4522, file: !341, line: 132, column: 9)
!4536 = !DILocation(line: 133, column: 23, scope: !4534)
!4537 = !DILocation(line: 133, column: 15, scope: !4535)
!4538 = !DILocation(line: 138, column: 23, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4534, file: !341, line: 134, column: 13)
!4540 = !DILocation(line: 138, column: 28, scope: !4539)
!4541 = !DILocation(line: 138, column: 36, scope: !4539)
!4542 = !DILocation(line: 138, column: 44, scope: !4539)
!4543 = !DILocation(line: 138, column: 15, scope: !4539)
!4544 = !DILocation(line: 139, column: 15, scope: !4539)
!4545 = !DILocation(line: 139, column: 19, scope: !4539)
!4546 = !DILocation(line: 139, column: 27, scope: !4539)
!4547 = !DILocation(line: 139, column: 32, scope: !4539)
!4548 = !DILocation(line: 140, column: 13, scope: !4539)
!4549 = !DILocation(line: 141, column: 11, scope: !4535)
!4550 = !DILocation(line: 145, column: 1, scope: !4493)
