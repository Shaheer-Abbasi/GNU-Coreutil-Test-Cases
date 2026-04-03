; ModuleID = 'src/hostid.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Usage: %s [OPTION]\0APrint the numeric identifier (in hexadecimal) for the current host.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hostid\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !0
@.str.12 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.34 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.43 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), align 8, !dbg !34
@file_name = internal global i8* null, align 8, !dbg !39
@ignore_EPIPE = internal global i8 0, align 1, !dbg !44
@.str.50 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.51 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.52 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !47
@stderr = external global %struct._IO_FILE*, align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !76
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !53
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !72
@.str.1.60 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.61 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.62 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !74
@.str.4.55 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.56 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.57 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external global i32, align 4
@.str.67 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.68, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.69, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !81
@optind = external global i32, align 4
@.str.1.72 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.68 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.69 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !98
@.str.77 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.78 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !105
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.82, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.84, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.85, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.90, i32 0, i32 0), i8* null], align 8, !dbg !116
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !145
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !163
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !178
@nslots = internal global i32 1, align 4, !dbg !185
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !165
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !187
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !151
@.str.10.91 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.93 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.94 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !170
@.str.101 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.103 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.104 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.105 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.106 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.107 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.108 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.109 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.110 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.111 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.112 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.113 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.114 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.115 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.116 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.117 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.122 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.123 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.124 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.125 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.126 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.127 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.128 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !193
@exit_failure = dso_local global i32 1, align 4, !dbg !201
@.str.141 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.139 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.140 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !207
@.str.173 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.174 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !299 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !302, metadata !DIExpression()), !dbg !303
  %3 = load i32, i32* %2, align 4, !dbg !304
  %4 = icmp ne i32 %3, 0, !dbg !306
  br i1 %4, label %5, label %12, !dbg !307

5:                                                ; preds = %1
  br label %6, !dbg !308

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !309
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !309
  %9 = load i8*, i8** @program_name, align 8, !dbg !309
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !309
  br label %11, !dbg !309

11:                                               ; preds = %6
  br label %18, !dbg !309

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !311
  %14 = load i8*, i8** @program_name, align 8, !dbg !313
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !314
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0)) #18, !dbg !315
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %16), !dbg !315
  %17 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !316
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %17), !dbg !316
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !317
  br label %18

18:                                               ; preds = %12, %11
  %19 = load i32, i32* %2, align 4, !dbg !318
  call void @exit(i32 noundef %19) #19, !dbg !319
  unreachable, !dbg !319
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !320, metadata !DIExpression()), !dbg !321
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !322, metadata !DIExpression()), !dbg !323
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !324
  %15 = icmp eq i32 %14, -1, !dbg !326
  br i1 %15, label %16, label %30, !dbg !327

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !328, metadata !DIExpression()), !dbg !330
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !331
  store i8* %17, i8** %5, align 8, !dbg !330
  %18 = load i8*, i8** %5, align 8, !dbg !332
  %19 = icmp ne i8* %18, null, !dbg !332
  br i1 %19, label %20, label %27, !dbg !333

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !334
  %22 = load i8, i8* %21, align 1, !dbg !335
  %23 = icmp ne i8 %22, 0, !dbg !335
  br i1 %23, label %24, label %27, !dbg !336

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !337
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)), !dbg !338
  br label %27, !dbg !336

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !336
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !339
  br label %30, !dbg !340

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !341
  %32 = icmp ne i32 %31, 0, !dbg !341
  br i1 %32, label %33, label %37, !dbg !343

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !344
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !344
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !344
  br label %274, !dbg !346

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !347, metadata !DIExpression()), !dbg !348
  store i8 1, i8* %6, align 1, !dbg !348
  call void @llvm.dbg.declare(metadata i8** %7, metadata !349, metadata !DIExpression()), !dbg !350
  %38 = load i8*, i8** %4, align 8, !dbg !351
  %39 = load i8*, i8** %4, align 8, !dbg !352
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #20, !dbg !353
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !354
  store i8* %41, i8** %7, align 8, !dbg !350
  call void @llvm.dbg.declare(metadata i8** %8, metadata !355, metadata !DIExpression()), !dbg !356
  %42 = load i8*, i8** %4, align 8, !dbg !357
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !358
  store i8* %43, i8** %8, align 8, !dbg !356
  %44 = load i8*, i8** %8, align 8, !dbg !359
  %45 = icmp ne i8* %44, null, !dbg !359
  br i1 %45, label %48, label %46, !dbg !361

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !362
  store i8* %47, i8** %8, align 8, !dbg !364
  store i8 0, i8* %6, align 1, !dbg !365
  br label %89, !dbg !366

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !367
  %50 = load i8*, i8** %7, align 8, !dbg !369
  %51 = icmp ne i8* %49, %50, !dbg !370
  br i1 %51, label %52, label %88, !dbg !371

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !372, metadata !DIExpression()), !dbg !374
  %53 = load i8*, i8** %7, align 8, !dbg !375
  store i8* %53, i8** %9, align 8, !dbg !374
  call void @llvm.dbg.declare(metadata i64* %10, metadata !376, metadata !DIExpression()), !dbg !377
  store i64 0, i64* %10, align 8, !dbg !377
  br label %54, !dbg !378

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !379
  %56 = load i8*, i8** %8, align 8, !dbg !380
  %57 = icmp ult i8* %55, %56, !dbg !381
  br i1 %57, label %58, label %61, !dbg !382

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !383
  %60 = icmp ult i64 %59, 2, !dbg !384
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !385
  br i1 %62, label %63, label %82, !dbg !378

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !386
  %65 = load i16*, i16** %64, align 8, !dbg !386
  %66 = load i8*, i8** %9, align 8, !dbg !386
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !386
  store i8* %67, i8** %9, align 8, !dbg !386
  %68 = load i8, i8* %66, align 1, !dbg !386
  %69 = zext i8 %68 to i32, !dbg !386
  %70 = sext i32 %69 to i64, !dbg !386
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !386
  %72 = load i16, i16* %71, align 2, !dbg !386
  %73 = zext i16 %72 to i32, !dbg !386
  %74 = and i32 %73, 8192, !dbg !386
  %75 = icmp ne i32 %74, 0, !dbg !387
  %76 = xor i1 %75, true, !dbg !387
  %77 = xor i1 %76, true, !dbg !388
  %78 = zext i1 %77 to i32, !dbg !388
  %79 = sext i32 %78 to i64, !dbg !388
  %80 = load i64, i64* %10, align 8, !dbg !389
  %81 = add i64 %80, %79, !dbg !389
  store i64 %81, i64* %10, align 8, !dbg !389
  br label %54, !dbg !378, !llvm.loop !390

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !392
  %84 = icmp eq i64 %83, 2, !dbg !394
  br i1 %84, label %85, label %87, !dbg !395

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !396
  store i8* %86, i8** %8, align 8, !dbg !398
  store i8 0, i8* %6, align 1, !dbg !399
  br label %87, !dbg !400

87:                                               ; preds = %85, %82
  br label %88, !dbg !401

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !402, metadata !DIExpression()), !dbg !403
  %90 = load i8*, i8** %8, align 8, !dbg !404
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #20, !dbg !405
  store i64 %91, i64* %11, align 8, !dbg !403
  call void @llvm.dbg.declare(metadata i8** %12, metadata !406, metadata !DIExpression()), !dbg !407
  %92 = load i8*, i8** %8, align 8, !dbg !408
  %93 = load i64, i64* %11, align 8, !dbg !409
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !410
  store i8* %94, i8** %12, align 8, !dbg !407
  br label %95, !dbg !411

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !412
  %97 = load i8, i8* %96, align 1, !dbg !413
  %98 = zext i8 %97 to i32, !dbg !413
  %99 = icmp ne i32 %98, 0, !dbg !413
  br i1 %99, label %100, label %105, !dbg !414

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !415
  %102 = load i8, i8* %101, align 1, !dbg !416
  %103 = zext i8 %102 to i32, !dbg !416
  %104 = icmp ne i32 %103, 10, !dbg !417
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !418
  br i1 %106, label %107, label %164, !dbg !411

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !419
  %109 = load i8, i8* %108, align 1, !dbg !422
  %110 = zext i8 %109 to i32, !dbg !422
  %111 = icmp eq i32 %110, 45, !dbg !423
  br i1 %111, label %112, label %119, !dbg !424

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !425
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !426
  %115 = load i8, i8* %114, align 1, !dbg !427
  %116 = zext i8 %115 to i32, !dbg !427
  %117 = icmp eq i32 %116, 45, !dbg !428
  br i1 %117, label %118, label %119, !dbg !429

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !430
  br label %119, !dbg !431

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !432
  %121 = load i16*, i16** %120, align 8, !dbg !432
  %122 = load i8*, i8** %12, align 8, !dbg !432
  %123 = load i8, i8* %122, align 1, !dbg !432
  %124 = zext i8 %123 to i32, !dbg !432
  %125 = sext i32 %124 to i64, !dbg !432
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !432
  %127 = load i16, i16* %126, align 2, !dbg !432
  %128 = zext i16 %127 to i32, !dbg !432
  %129 = and i32 %128, 8192, !dbg !432
  %130 = icmp ne i32 %129, 0, !dbg !432
  br i1 %130, label %131, label %161, !dbg !434

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !435
  %133 = load i8, i8* %132, align 1, !dbg !438
  %134 = zext i8 %133 to i32, !dbg !438
  %135 = icmp eq i32 %134, 9, !dbg !439
  br i1 %135, label %149, label %136, !dbg !440

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !441
  %138 = load i16*, i16** %137, align 8, !dbg !441
  %139 = load i8*, i8** %12, align 8, !dbg !441
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !441
  %141 = load i8, i8* %140, align 1, !dbg !441
  %142 = zext i8 %141 to i32, !dbg !441
  %143 = sext i32 %142 to i64, !dbg !441
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !441
  %145 = load i16, i16* %144, align 2, !dbg !441
  %146 = zext i16 %145 to i32, !dbg !441
  %147 = and i32 %146, 8192, !dbg !441
  %148 = icmp ne i32 %147, 0, !dbg !441
  br i1 %148, label %149, label %150, !dbg !442

149:                                              ; preds = %136, %131
  br label %164, !dbg !443

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !444
  %152 = trunc i8 %151 to i1, !dbg !444
  br i1 %152, label %160, label %153, !dbg !446

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !447
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !448
  %156 = load i8, i8* %155, align 1, !dbg !449
  %157 = zext i8 %156 to i32, !dbg !449
  %158 = icmp ne i32 %157, 45, !dbg !450
  br i1 %158, label %159, label %160, !dbg !451

159:                                              ; preds = %153
  br label %164, !dbg !452

160:                                              ; preds = %153, %150
  br label %161, !dbg !453

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !454
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !454
  store i8* %163, i8** %12, align 8, !dbg !454
  br label %95, !dbg !411, !llvm.loop !455

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !457
  %166 = load i8*, i8** %7, align 8, !dbg !457
  %167 = load i8*, i8** %4, align 8, !dbg !457
  %168 = ptrtoint i8* %166 to i64, !dbg !457
  %169 = ptrtoint i8* %167 to i64, !dbg !457
  %170 = sub i64 %168, %169, !dbg !457
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !457
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !457
  call void @llvm.dbg.declare(metadata i8** %13, metadata !458, metadata !DIExpression()), !dbg !459
  %173 = load i8*, i8** %3, align 8, !dbg !460
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !461
  br i1 %174, label %175, label %176, !dbg !461

175:                                              ; preds = %164
  br label %232, !dbg !461

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !462
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)), !dbg !463
  br i1 %178, label %179, label %180, !dbg !463

179:                                              ; preds = %176
  br label %230, !dbg !463

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !464
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)), !dbg !465
  br i1 %182, label %183, label %184, !dbg !465

183:                                              ; preds = %180
  br label %228, !dbg !465

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !466
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)), !dbg !467
  br i1 %186, label %187, label %188, !dbg !467

187:                                              ; preds = %184
  br label %226, !dbg !467

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !468
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)), !dbg !469
  br i1 %190, label %191, label %192, !dbg !469

191:                                              ; preds = %188
  br label %224, !dbg !469

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !470
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)), !dbg !471
  br i1 %194, label %195, label %196, !dbg !471

195:                                              ; preds = %192
  br label %222, !dbg !471

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !472
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)), !dbg !473
  br i1 %198, label %199, label %200, !dbg !473

199:                                              ; preds = %196
  br label %220, !dbg !473

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !474
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)), !dbg !475
  br i1 %202, label %203, label %204, !dbg !475

203:                                              ; preds = %200
  br label %218, !dbg !475

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !476
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)), !dbg !477
  br i1 %206, label %207, label %208, !dbg !477

207:                                              ; preds = %204
  br label %216, !dbg !477

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !478
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)), !dbg !479
  br i1 %210, label %211, label %212, !dbg !479

211:                                              ; preds = %208
  br label %214, !dbg !479

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !480
  br label %214, !dbg !479

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !479
  br label %216, !dbg !477

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !477
  br label %218, !dbg !475

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !475
  br label %220, !dbg !473

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !473
  br label %222, !dbg !471

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !471
  br label %224, !dbg !469

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !469
  br label %226, !dbg !467

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !467
  br label %228, !dbg !465

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !465
  br label %230, !dbg !463

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !463
  br label %232, !dbg !461

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !461
  store i8* %233, i8** %13, align 8, !dbg !459
  %234 = load i8*, i8** %8, align 8, !dbg !481
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i64 noundef 6) #20, !dbg !481
  %236 = icmp eq i32 %235, 0, !dbg !481
  br i1 %236, label %241, label %237, !dbg !483

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !484
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i64 noundef 9) #20, !dbg !484
  %240 = icmp eq i32 %239, 0, !dbg !484
  br i1 %240, label %241, label %248, !dbg !485

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !486
  %243 = load i8*, i8** %13, align 8, !dbg !488
  %244 = load i64, i64* %11, align 8, !dbg !489
  %245 = trunc i64 %244 to i32, !dbg !490
  %246 = load i8*, i8** %8, align 8, !dbg !491
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !492
  br label %254, !dbg !493

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !494
  %250 = load i64, i64* %11, align 8, !dbg !496
  %251 = trunc i64 %250 to i32, !dbg !497
  %252 = load i8*, i8** %8, align 8, !dbg !498
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.34, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !499
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !500
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !500
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !501
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !501
  %259 = load i8*, i8** %7, align 8, !dbg !502
  %260 = load i8*, i8** %12, align 8, !dbg !502
  %261 = load i8*, i8** %7, align 8, !dbg !502
  %262 = ptrtoint i8* %260 to i64, !dbg !502
  %263 = ptrtoint i8* %261 to i64, !dbg !502
  %264 = sub i64 %262, %263, !dbg !502
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !502
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !502
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !503
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !503
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !504
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !504
  %271 = load i8*, i8** %12, align 8, !dbg !505
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !505
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !505
  br label %274, !dbg !506

274:                                              ; preds = %254, %33
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !507 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !512, metadata !DIExpression()), !dbg !521
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !521
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !521
  call void @llvm.dbg.declare(metadata i8** %4, metadata !522, metadata !DIExpression()), !dbg !523
  %9 = load i8*, i8** %2, align 8, !dbg !524
  store i8* %9, i8** %4, align 8, !dbg !523
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !525, metadata !DIExpression()), !dbg !527
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !528
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !527
  br label %11, !dbg !529

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !530
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !531
  %14 = load i8*, i8** %13, align 8, !dbg !531
  %15 = icmp ne i8* %14, null, !dbg !530
  br i1 %15, label %16, label %23, !dbg !532

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !533
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !534
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !535
  %20 = load i8*, i8** %19, align 8, !dbg !535
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !536
  %22 = xor i1 %21, true, !dbg !537
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !538
  br i1 %24, label %25, label %28, !dbg !529

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !539
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !539
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !539
  br label %11, !dbg !529, !llvm.loop !540

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !541
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !543
  %31 = load i8*, i8** %30, align 8, !dbg !543
  %32 = icmp ne i8* %31, null, !dbg !541
  br i1 %32, label %33, label %37, !dbg !544

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !545
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !546
  %36 = load i8*, i8** %35, align 8, !dbg !546
  store i8* %36, i8** %4, align 8, !dbg !547
  br label %37, !dbg !548

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !549
  call void @llvm.dbg.declare(metadata i8** %6, metadata !550, metadata !DIExpression()), !dbg !551
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !552
  store i8* %38, i8** %6, align 8, !dbg !551
  %39 = load i8*, i8** %6, align 8, !dbg !553
  %40 = icmp ne i8* %39, null, !dbg !553
  br i1 %40, label %41, label %49, !dbg !555

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !556
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i64 noundef 3) #20, !dbg !556
  %44 = icmp ne i32 %43, 0, !dbg !556
  br i1 %44, label %45, label %49, !dbg !557

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.43, i64 0, i64 0)) #18, !dbg !558
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !558
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !558
  br label %49, !dbg !560

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !561, metadata !DIExpression()), !dbg !562
  %50 = load i8*, i8** %2, align 8, !dbg !563
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !564
  br i1 %51, label %52, label %53, !dbg !564

52:                                               ; preds = %49
  br label %55, !dbg !564

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !565
  br label %55, !dbg !564

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !564
  store i8* %56, i8** %7, align 8, !dbg !562
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0)) #18, !dbg !566
  %58 = load i8*, i8** %7, align 8, !dbg !567
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* noundef %58), !dbg !568
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0)) #18, !dbg !569
  %61 = load i8*, i8** %4, align 8, !dbg !570
  %62 = load i8*, i8** %4, align 8, !dbg !571
  %63 = load i8*, i8** %2, align 8, !dbg !572
  %64 = icmp eq i8* %62, %63, !dbg !573
  %65 = zext i1 %64 to i64, !dbg !571
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !571
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !574
  ret void, !dbg !575
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !576 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !580, metadata !DIExpression()), !dbg !581
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !582, metadata !DIExpression()), !dbg !583
  %7 = load i8**, i8*** %5, align 8, !dbg !584
  %8 = getelementptr inbounds i8*, i8** %7, i64 0, !dbg !584
  %9 = load i8*, i8** %8, align 8, !dbg !584
  call void @set_program_name(i8* noundef %9), !dbg !585
  %10 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !586
  %11 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !587
  %12 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !588
  %13 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !589
  %14 = load i32, i32* %4, align 4, !dbg !590
  %15 = load i8**, i8*** %5, align 8, !dbg !591
  %16 = load i8*, i8** @Version, align 8, !dbg !592
  %17 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)), !dbg !593
  call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %14, i8** noundef %15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* noundef %16, i1 noundef true, void (i32)* noundef @usage, i8* noundef %17, i8* noundef null), !dbg !594
  %18 = load i32, i32* @optind, align 4, !dbg !595
  %19 = load i32, i32* %4, align 4, !dbg !597
  %20 = icmp slt i32 %18, %19, !dbg !598
  br i1 %20, label %21, label %29, !dbg !599

21:                                               ; preds = %2
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !600
  %23 = load i8**, i8*** %5, align 8, !dbg !600
  %24 = load i32, i32* @optind, align 4, !dbg !600
  %25 = sext i32 %24 to i64, !dbg !600
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25, !dbg !600
  %27 = load i8*, i8** %26, align 8, !dbg !600
  %28 = call i8* @quote(i8* noundef %27), !dbg !600
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %22, i8* noundef %28), !dbg !600
  call void @usage(i32 noundef 1) #22, !dbg !602
  unreachable, !dbg !602

29:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !603, metadata !DIExpression()), !dbg !604
  %30 = call i64 @gethostid(), !dbg !605
  %31 = and i64 %30, 4294967295, !dbg !606
  %32 = trunc i64 %31 to i32, !dbg !605
  store i32 %32, i32* %6, align 4, !dbg !604
  %33 = load i32, i32* %6, align 4, !dbg !607
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 noundef %33), !dbg !608
  ret i32 0, !dbg !609
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

declare i64 @gethostid() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !610 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !611, metadata !DIExpression()), !dbg !612
  %3 = load i8*, i8** %2, align 8, !dbg !613
  store i8* %3, i8** @file_name, align 8, !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !616 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !619, metadata !DIExpression()), !dbg !620
  %4 = load i8, i8* %2, align 1, !dbg !621
  %5 = trunc i8 %4 to i1, !dbg !621
  %6 = zext i1 %5 to i8, !dbg !622
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !622
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !624 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !625
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !627
  %4 = icmp ne i32 %3, 0, !dbg !628
  br i1 %4, label %5, label %28, !dbg !629

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !630
  %7 = trunc i8 %6 to i1, !dbg !630
  br i1 %7, label %8, label %12, !dbg !631

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !632
  %10 = load i32, i32* %9, align 4, !dbg !632
  %11 = icmp eq i32 %10, 32, !dbg !633
  br i1 %11, label %28, label %12, !dbg !634

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !635, metadata !DIExpression()), !dbg !637
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.51, i64 0, i64 0)) #18, !dbg !638
  store i8* %13, i8** %1, align 8, !dbg !637
  %14 = load i8*, i8** @file_name, align 8, !dbg !639
  %15 = icmp ne i8* %14, null, !dbg !639
  br i1 %15, label %16, label %22, !dbg !641

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !642
  %18 = load i32, i32* %17, align 4, !dbg !642
  %19 = load i8*, i8** @file_name, align 8, !dbg !642
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !642
  %21 = load i8*, i8** %1, align 8, !dbg !642
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.52, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !642
  br label %26, !dbg !642

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !643
  %24 = load i32, i32* %23, align 4, !dbg !643
  %25 = load i8*, i8** %1, align 8, !dbg !643
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.53, i64 0, i64 0), i8* noundef %25), !dbg !643
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !644
  call void @_exit(i32 noundef %27) #22, !dbg !645
  unreachable, !dbg !645

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !646
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !648
  %31 = icmp ne i32 %30, 0, !dbg !649
  br i1 %31, label %32, label %34, !dbg !650

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !651
  call void @_exit(i32 noundef %33) #22, !dbg !652
  unreachable, !dbg !652

34:                                               ; preds = %28
  ret void, !dbg !653
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !654 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !657, metadata !DIExpression()), !dbg !658
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !659, metadata !DIExpression()), !dbg !658
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !660, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !661, metadata !DIExpression()), !dbg !658
  call void @flush_stdout(), !dbg !662
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !663
  %10 = icmp ne void ()* %9, null, !dbg !663
  br i1 %10, label %11, label %13, !dbg !665

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !666
  call void %12(), !dbg !667
  br label %17, !dbg !667

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !668
  %15 = call i8* @getprogname() #20, !dbg !670
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* noundef %15), !dbg !671
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !672
  %19 = load i32, i32* %6, align 4, !dbg !672
  %20 = load i8*, i8** %7, align 8, !dbg !672
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !672
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !672
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !672
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !672
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !674 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !675, metadata !DIExpression()), !dbg !676
  store i32 1, i32* %1, align 4, !dbg !677
  %2 = load i32, i32* %1, align 4, !dbg !678
  %3 = icmp sle i32 0, %2, !dbg !680
  br i1 %3, label %4, label %11, !dbg !681

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !682
  %6 = call i32 @is_open(i32 noundef %5), !dbg !683
  %7 = icmp ne i32 %6, 0, !dbg !683
  br i1 %7, label %8, label %11, !dbg !684

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !685
  br label %11, !dbg !685

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !687 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !688, metadata !DIExpression()), !dbg !689
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !690, metadata !DIExpression()), !dbg !689
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !691, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !692, metadata !DIExpression()), !dbg !689
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !693
  %10 = load i8*, i8** %7, align 8, !dbg !694
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !695
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !695
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !695
  %14 = load i32, i32* @error_message_count, align 4, !dbg !696
  %15 = add i32 %14, 1, !dbg !696
  store i32 %15, i32* @error_message_count, align 4, !dbg !696
  %16 = load i32, i32* %6, align 4, !dbg !697
  %17 = icmp ne i32 %16, 0, !dbg !697
  br i1 %17, label %18, label %20, !dbg !699

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !700
  call void @print_errno_message(i32 noundef %19), !dbg !701
  br label %20, !dbg !701

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !702
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !702
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !703
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !703
  %25 = load i32, i32* %5, align 4, !dbg !704
  %26 = icmp ne i32 %25, 0, !dbg !704
  br i1 %26, label %27, label %29, !dbg !706

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !707
  call void @exit(i32 noundef %28) #19, !dbg !708
  unreachable, !dbg !708

29:                                               ; preds = %20
  ret void, !dbg !709
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !710 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !711, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.declare(metadata i8** %3, metadata !713, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !715, metadata !DIExpression()), !dbg !719
  %5 = load i32, i32* %2, align 4, !dbg !720
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !721
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !722
  store i8* %7, i8** %3, align 8, !dbg !723
  %8 = load i8*, i8** %3, align 8, !dbg !724
  %9 = icmp ne i8* %8, null, !dbg !724
  br i1 %9, label %12, label %10, !dbg !726

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.56, i64 0, i64 0)) #18, !dbg !727
  store i8* %11, i8** %3, align 8, !dbg !728
  br label %12, !dbg !729

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !730
  %14 = load i8*, i8** %3, align 8, !dbg !731
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.57, i64 0, i64 0), i8* noundef %14), !dbg !732
  ret void, !dbg !733
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !734 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !737, metadata !DIExpression()), !dbg !738
  %3 = load i32, i32* %2, align 4, !dbg !739
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !740
  %5 = icmp sle i32 0, %4, !dbg !741
  %6 = zext i1 %5 to i32, !dbg !741
  ret i32 %6, !dbg !742
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !743 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !746, metadata !DIExpression()), !dbg !747
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !748, metadata !DIExpression()), !dbg !749
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !750, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !752, metadata !DIExpression()), !dbg !753
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !754
  call void @llvm.va_start(i8* %9), !dbg !754
  %10 = load i32, i32* %4, align 4, !dbg !755
  %11 = load i32, i32* %5, align 4, !dbg !755
  %12 = load i8*, i8** %6, align 8, !dbg !755
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !755
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !755
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !755
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !756
  call void @llvm.va_end(i8* %15), !dbg !756
  ret void, !dbg !757
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !758, metadata !DIExpression()), !dbg !759
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !760, metadata !DIExpression()), !dbg !759
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !761, metadata !DIExpression()), !dbg !759
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !762, metadata !DIExpression()), !dbg !759
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !763, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !764, metadata !DIExpression()), !dbg !759
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !765
  %14 = icmp ne i32 %13, 0, !dbg !765
  br i1 %14, label %15, label %38, !dbg !767

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !768
  %17 = load i32, i32* %10, align 4, !dbg !771
  %18 = icmp eq i32 %16, %17, !dbg !772
  br i1 %18, label %19, label %35, !dbg !773

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !774
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !775
  %22 = icmp eq i8* %20, %21, !dbg !776
  br i1 %22, label %34, label %23, !dbg !777

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !778
  %25 = icmp ne i8* %24, null, !dbg !779
  br i1 %25, label %26, label %35, !dbg !780

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !781
  %28 = icmp ne i8* %27, null, !dbg !782
  br i1 %28, label %29, label %35, !dbg !783

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !784
  %31 = load i8*, i8** %9, align 8, !dbg !785
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !786
  %33 = icmp eq i32 %32, 0, !dbg !787
  br i1 %33, label %34, label %35, !dbg !788

34:                                               ; preds = %29, %19
  br label %61, !dbg !789

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !790
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !791
  %37 = load i32, i32* %10, align 4, !dbg !792
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !793
  br label %38, !dbg !794

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !795
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !796
  %40 = icmp ne void ()* %39, null, !dbg !796
  br i1 %40, label %41, label %43, !dbg !798

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !799
  call void %42(), !dbg !800
  br label %47, !dbg !800

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !801
  %45 = call i8* @getprogname() #20, !dbg !803
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.60, i64 0, i64 0), i8* noundef %45), !dbg !804
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !805
  %49 = load i8*, i8** %9, align 8, !dbg !806
  %50 = icmp ne i8* %49, null, !dbg !807
  %51 = zext i1 %50 to i64, !dbg !806
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.62, i64 0, i64 0), !dbg !806
  %53 = load i8*, i8** %9, align 8, !dbg !808
  %54 = load i32, i32* %10, align 4, !dbg !809
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !810
  %56 = load i32, i32* %7, align 4, !dbg !811
  %57 = load i32, i32* %8, align 4, !dbg !811
  %58 = load i8*, i8** %11, align 8, !dbg !811
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !811
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !811
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !811
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !811
  br label %61, !dbg !812

61:                                               ; preds = %47, %34
  ret void, !dbg !812
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !813 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !816, metadata !DIExpression()), !dbg !817
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !818, metadata !DIExpression()), !dbg !819
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !820, metadata !DIExpression()), !dbg !821
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !822, metadata !DIExpression()), !dbg !823
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !824, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !826, metadata !DIExpression()), !dbg !827
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !828
  call void @llvm.va_start(i8* %13), !dbg !828
  %14 = load i32, i32* %6, align 4, !dbg !829
  %15 = load i32, i32* %7, align 4, !dbg !829
  %16 = load i8*, i8** %8, align 8, !dbg !829
  %17 = load i32, i32* %9, align 4, !dbg !829
  %18 = load i8*, i8** %10, align 8, !dbg !829
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !829
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !829
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !829
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !829
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !830
  call void @llvm.va_end(i8* %21), !dbg !830
  ret void, !dbg !831
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !832 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !835
  ret i8* %1, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* noundef %5, ...) #4 !dbg !837 {
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !841, metadata !DIExpression()), !dbg !842
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !843, metadata !DIExpression()), !dbg !844
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !845, metadata !DIExpression()), !dbg !846
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !847, metadata !DIExpression()), !dbg !848
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !849, metadata !DIExpression()), !dbg !850
  store void (i32)* %5, void (i32)** %12, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %12, metadata !851, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.declare(metadata i32* %13, metadata !853, metadata !DIExpression()), !dbg !854
  %17 = load i32, i32* @opterr, align 4, !dbg !855
  store i32 %17, i32* %13, align 4, !dbg !854
  store i32 0, i32* @opterr, align 4, !dbg !856
  %18 = load i32, i32* %7, align 4, !dbg !857
  %19 = icmp eq i32 %18, 2, !dbg !859
  br i1 %19, label %20, label %41, !dbg !860

20:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !861, metadata !DIExpression()), !dbg !863
  %21 = load i32, i32* %7, align 4, !dbg !864
  %22 = load i8**, i8*** %8, align 8, !dbg !865
  %23 = call i32 @getopt_long(i32 noundef %21, i8** noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !866
  store i32 %23, i32* %14, align 4, !dbg !863
  %24 = load i32, i32* %14, align 4, !dbg !867
  %25 = icmp ne i32 %24, -1, !dbg !869
  br i1 %25, label %26, label %40, !dbg !870

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4, !dbg !871
  switch i32 %27, label %38 [
    i32 104, label %28
    i32 118, label %30
  ], !dbg !873

28:                                               ; preds = %26
  %29 = load void (i32)*, void (i32)** %12, align 8, !dbg !874
  call void %29(i32 noundef 0), !dbg !876
  br label %39, !dbg !877

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %15, metadata !878, metadata !DIExpression()), !dbg !891
  %31 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !892
  call void @llvm.va_start(i8* %31), !dbg !892
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !893
  %33 = load i8*, i8** %9, align 8, !dbg !894
  %34 = load i8*, i8** %10, align 8, !dbg !895
  %35 = load i8*, i8** %11, align 8, !dbg !896
  %36 = bitcast %"struct.std::__va_list"* %16 to i8*, !dbg !897
  %37 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !897
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false), !dbg !897
  call void @version_etc_va(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35, %"struct.std::__va_list"* noundef %16), !dbg !897
  call void @exit(i32 noundef 0) #19, !dbg !898
  unreachable, !dbg !898

38:                                               ; preds = %26
  br label %39, !dbg !899

39:                                               ; preds = %38, %28
  br label %40, !dbg !900

40:                                               ; preds = %39, %20
  br label %41, !dbg !901

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %13, align 4, !dbg !902
  store i32 %42, i32* @opterr, align 4, !dbg !903
  store i32 0, i32* @optind, align 4, !dbg !904
  ret void, !dbg !905
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* noundef %6, ...) #4 !dbg !906 {
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
  call void @llvm.dbg.declare(metadata i32* %8, metadata !909, metadata !DIExpression()), !dbg !910
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !911, metadata !DIExpression()), !dbg !912
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !913, metadata !DIExpression()), !dbg !914
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !915, metadata !DIExpression()), !dbg !916
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !917, metadata !DIExpression()), !dbg !918
  %20 = zext i1 %5 to i8
  store i8 %20, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !919, metadata !DIExpression()), !dbg !920
  store void (i32)* %6, void (i32)** %14, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %14, metadata !921, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.declare(metadata i32* %15, metadata !923, metadata !DIExpression()), !dbg !924
  %21 = load i32, i32* @opterr, align 4, !dbg !925
  store i32 %21, i32* %15, align 4, !dbg !924
  store i32 1, i32* @opterr, align 4, !dbg !926
  call void @llvm.dbg.declare(metadata i8** %16, metadata !927, metadata !DIExpression()), !dbg !928
  %22 = load i8, i8* %13, align 1, !dbg !929
  %23 = trunc i8 %22 to i1, !dbg !929
  %24 = zext i1 %23 to i64, !dbg !929
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.72, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), !dbg !929
  store i8* %25, i8** %16, align 8, !dbg !928
  call void @llvm.dbg.declare(metadata i32* %17, metadata !930, metadata !DIExpression()), !dbg !931
  %26 = load i32, i32* %8, align 4, !dbg !932
  %27 = load i8**, i8*** %9, align 8, !dbg !933
  %28 = load i8*, i8** %16, align 8, !dbg !934
  %29 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef %28, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !935
  store i32 %29, i32* %17, align 4, !dbg !931
  %30 = load i32, i32* %17, align 4, !dbg !936
  %31 = icmp ne i32 %30, -1, !dbg !938
  br i1 %31, label %32, label %48, !dbg !939

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4, !dbg !940
  switch i32 %33, label %44 [
    i32 104, label %34
    i32 118, label %36
  ], !dbg !942

34:                                               ; preds = %32
  %35 = load void (i32)*, void (i32)** %14, align 8, !dbg !943
  call void %35(i32 noundef 0), !dbg !945
  br label %47, !dbg !946

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %18, metadata !947, metadata !DIExpression()), !dbg !949
  %37 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !950
  call void @llvm.va_start(i8* %37), !dbg !950
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !951
  %39 = load i8*, i8** %10, align 8, !dbg !952
  %40 = load i8*, i8** %11, align 8, !dbg !953
  %41 = load i8*, i8** %12, align 8, !dbg !954
  %42 = bitcast %"struct.std::__va_list"* %19 to i8*, !dbg !955
  %43 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !955
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false), !dbg !955
  call void @version_etc_va(%struct._IO_FILE* noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, %"struct.std::__va_list"* noundef %19), !dbg !955
  call void @exit(i32 noundef 0) #19, !dbg !956
  unreachable, !dbg !956

44:                                               ; preds = %32
  %45 = load void (i32)*, void (i32)** %14, align 8, !dbg !957
  %46 = load volatile i32, i32* @exit_failure, align 4, !dbg !958
  call void %45(i32 noundef %46), !dbg !959
  br label %47, !dbg !960

47:                                               ; preds = %44, %34
  br label %48, !dbg !961

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %15, align 4, !dbg !962
  store i32 %49, i32* @opterr, align 4, !dbg !963
  ret void, !dbg !964
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !965 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !966, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.declare(metadata i8** %3, metadata !968, metadata !DIExpression()), !dbg !969
  %5 = load i8*, i8** %2, align 8, !dbg !970
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !971
  store i8* %6, i8** %3, align 8, !dbg !969
  call void @llvm.dbg.declare(metadata i8** %4, metadata !972, metadata !DIExpression()), !dbg !973
  %7 = load i8*, i8** %3, align 8, !dbg !974
  %8 = icmp ne i8* %7, null, !dbg !974
  br i1 %8, label %9, label %12, !dbg !974

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !975
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !976
  br label %14, !dbg !974

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !977
  br label %14, !dbg !974

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !974
  store i8* %15, i8** %4, align 8, !dbg !973
  %16 = load i8*, i8** %4, align 8, !dbg !978
  %17 = load i8*, i8** %2, align 8, !dbg !980
  %18 = ptrtoint i8* %16 to i64, !dbg !981
  %19 = ptrtoint i8* %17 to i64, !dbg !981
  %20 = sub i64 %18, %19, !dbg !981
  %21 = icmp sle i64 7, %20, !dbg !982
  br i1 %21, label %22, label %36, !dbg !983

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !984
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !985
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i64 noundef 7), !dbg !986
  br i1 %25, label %26, label %36, !dbg !987

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !988
  store i8* %27, i8** %2, align 8, !dbg !990
  %28 = load i8*, i8** %4, align 8, !dbg !991
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.78, i64 0, i64 0), i64 noundef 3) #20, !dbg !993
  %30 = icmp eq i32 %29, 0, !dbg !994
  br i1 %30, label %31, label %35, !dbg !995

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !996
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !996
  store i8* %33, i8** %4, align 8, !dbg !996
  %34 = load i8*, i8** %4, align 8, !dbg !998
  store i8* %34, i8** %2, align 8, !dbg !999
  br label %35, !dbg !1000

35:                                               ; preds = %31, %26
  br label %36, !dbg !1001

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1002
  store i8* %37, i8** @program_name, align 8, !dbg !1003
  %38 = load i8*, i8** %2, align 8, !dbg !1004
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1005
  %39 = load i8*, i8** %4, align 8, !dbg !1006
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1007
  ret void, !dbg !1008
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1009, metadata !DIExpression()), !dbg !1010
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1011, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1013, metadata !DIExpression()), !dbg !1014
  %9 = load i8*, i8** %4, align 8, !dbg !1015
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1016
  store i8* %10, i8** %6, align 8, !dbg !1014
  %11 = load i8*, i8** %6, align 8, !dbg !1017
  %12 = load i8*, i8** %4, align 8, !dbg !1019
  %13 = icmp ne i8* %11, %12, !dbg !1020
  br i1 %13, label %14, label %16, !dbg !1021

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1022
  store i8* %15, i8** %3, align 8, !dbg !1023
  br label %26, !dbg !1023

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1024, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1031, metadata !DIExpression()), !dbg !1042
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1043
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1044
  %18 = icmp eq i64 %17, 2, !dbg !1046
  br i1 %18, label %19, label %24, !dbg !1047

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1048
  %21 = icmp eq i32 %20, 2047, !dbg !1049
  br i1 %21, label %22, label %24, !dbg !1050

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1051
  store i8* %23, i8** %3, align 8, !dbg !1052
  br label %26, !dbg !1052

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1053
  store i8* %25, i8** %3, align 8, !dbg !1054
  br label %26, !dbg !1054

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1055
  ret i8* %27, !dbg !1055
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1056 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1060, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1062, metadata !DIExpression()), !dbg !1063
  %5 = call i32* @__errno_location() #21, !dbg !1064
  %6 = load i32, i32* %5, align 4, !dbg !1064
  store i32 %6, i32* %3, align 4, !dbg !1063
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1065, metadata !DIExpression()), !dbg !1066
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1067
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1067
  br i1 %8, label %9, label %11, !dbg !1067

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1068
  br label %12, !dbg !1067

11:                                               ; preds = %1
  br label %12, !dbg !1067

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1067
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1067
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1069
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1069
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1066
  %17 = load i32, i32* %3, align 4, !dbg !1070
  %18 = call i32* @__errno_location() #21, !dbg !1071
  store i32 %17, i32* %18, align 4, !dbg !1072
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1073
  ret %struct.quoting_options* %19, !dbg !1074
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1075 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1080, metadata !DIExpression()), !dbg !1081
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1082
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1082
  br i1 %4, label %5, label %7, !dbg !1082

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1083
  br label %8, !dbg !1082

7:                                                ; preds = %1
  br label %8, !dbg !1082

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1082
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1084
  %11 = load i32, i32* %10, align 8, !dbg !1084
  ret i32 %11, !dbg !1085
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1086 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1089, metadata !DIExpression()), !dbg !1090
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1091, metadata !DIExpression()), !dbg !1092
  %5 = load i32, i32* %4, align 4, !dbg !1093
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1094
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1094
  br i1 %7, label %8, label %10, !dbg !1094

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1095
  br label %11, !dbg !1094

10:                                               ; preds = %2
  br label %11, !dbg !1094

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1094
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1096
  store i32 %5, i32* %13, align 8, !dbg !1097
  ret void, !dbg !1098
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1099 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1102, metadata !DIExpression()), !dbg !1103
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1104, metadata !DIExpression()), !dbg !1105
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1106, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1108, metadata !DIExpression()), !dbg !1109
  %11 = load i8, i8* %5, align 1, !dbg !1110
  store i8 %11, i8* %7, align 1, !dbg !1109
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1111, metadata !DIExpression()), !dbg !1113
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1114
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1114
  br i1 %13, label %14, label %16, !dbg !1114

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1115
  br label %17, !dbg !1114

16:                                               ; preds = %3
  br label %17, !dbg !1114

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1114
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1116
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1117
  %21 = load i8, i8* %7, align 1, !dbg !1118
  %22 = zext i8 %21 to i64, !dbg !1118
  %23 = udiv i64 %22, 32, !dbg !1119
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1120
  store i32* %24, i32** %8, align 8, !dbg !1113
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1121, metadata !DIExpression()), !dbg !1122
  %25 = load i8, i8* %7, align 1, !dbg !1123
  %26 = zext i8 %25 to i64, !dbg !1123
  %27 = urem i64 %26, 32, !dbg !1124
  %28 = trunc i64 %27 to i32, !dbg !1123
  store i32 %28, i32* %9, align 4, !dbg !1122
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1125, metadata !DIExpression()), !dbg !1126
  %29 = load i32*, i32** %8, align 8, !dbg !1127
  %30 = load i32, i32* %29, align 4, !dbg !1128
  %31 = load i32, i32* %9, align 4, !dbg !1129
  %32 = lshr i32 %30, %31, !dbg !1130
  %33 = and i32 %32, 1, !dbg !1131
  store i32 %33, i32* %10, align 4, !dbg !1126
  %34 = load i32, i32* %6, align 4, !dbg !1132
  %35 = and i32 %34, 1, !dbg !1133
  %36 = load i32, i32* %10, align 4, !dbg !1134
  %37 = xor i32 %35, %36, !dbg !1135
  %38 = load i32, i32* %9, align 4, !dbg !1136
  %39 = shl i32 %37, %38, !dbg !1137
  %40 = load i32*, i32** %8, align 8, !dbg !1138
  %41 = load i32, i32* %40, align 4, !dbg !1139
  %42 = xor i32 %41, %39, !dbg !1139
  store i32 %42, i32* %40, align 4, !dbg !1139
  %43 = load i32, i32* %10, align 4, !dbg !1140
  ret i32 %43, !dbg !1141
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1142 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1145, metadata !DIExpression()), !dbg !1146
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1147, metadata !DIExpression()), !dbg !1148
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1149
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1149
  br i1 %7, label %9, label %8, !dbg !1151

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1152
  br label %9, !dbg !1153

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1154, metadata !DIExpression()), !dbg !1155
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1156
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1157
  %12 = load i32, i32* %11, align 4, !dbg !1157
  store i32 %12, i32* %5, align 4, !dbg !1155
  %13 = load i32, i32* %4, align 4, !dbg !1158
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1159
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1160
  store i32 %13, i32* %15, align 4, !dbg !1161
  %16 = load i32, i32* %5, align 4, !dbg !1162
  ret i32 %16, !dbg !1163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1164 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1167, metadata !DIExpression()), !dbg !1168
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1169, metadata !DIExpression()), !dbg !1170
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1171, metadata !DIExpression()), !dbg !1172
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1173
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1173
  br i1 %8, label %10, label %9, !dbg !1175

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1176
  br label %10, !dbg !1177

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1178
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1179
  store i32 10, i32* %12, align 8, !dbg !1180
  %13 = load i8*, i8** %5, align 8, !dbg !1181
  %14 = icmp ne i8* %13, null, !dbg !1181
  br i1 %14, label %15, label %18, !dbg !1183

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1184
  %17 = icmp ne i8* %16, null, !dbg !1184
  br i1 %17, label %19, label %18, !dbg !1185

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1186
  unreachable, !dbg !1186

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1187
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1188
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1189
  store i8* %20, i8** %22, align 8, !dbg !1190
  %23 = load i8*, i8** %6, align 8, !dbg !1191
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1192
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1193
  store i8* %23, i8** %25, align 8, !dbg !1194
  ret void, !dbg !1195
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1196 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1199, metadata !DIExpression()), !dbg !1200
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1201, metadata !DIExpression()), !dbg !1202
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1203, metadata !DIExpression()), !dbg !1204
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1205, metadata !DIExpression()), !dbg !1206
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1207, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1209, metadata !DIExpression()), !dbg !1210
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1211
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1211
  br i1 %15, label %16, label %18, !dbg !1211

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1212
  br label %19, !dbg !1211

18:                                               ; preds = %5
  br label %19, !dbg !1211

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1211
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1210
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1213, metadata !DIExpression()), !dbg !1214
  %21 = call i32* @__errno_location() #21, !dbg !1215
  %22 = load i32, i32* %21, align 4, !dbg !1215
  store i32 %22, i32* %12, align 4, !dbg !1214
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1216, metadata !DIExpression()), !dbg !1217
  %23 = load i8*, i8** %6, align 8, !dbg !1218
  %24 = load i64, i64* %7, align 8, !dbg !1219
  %25 = load i8*, i8** %8, align 8, !dbg !1220
  %26 = load i64, i64* %9, align 8, !dbg !1221
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1222
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1223
  %29 = load i32, i32* %28, align 8, !dbg !1223
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1224
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1225
  %32 = load i32, i32* %31, align 4, !dbg !1225
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1226
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1227
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1226
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1228
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1229
  %38 = load i8*, i8** %37, align 8, !dbg !1229
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1230
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1231
  %41 = load i8*, i8** %40, align 8, !dbg !1231
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1232
  store i64 %42, i64* %13, align 8, !dbg !1217
  %43 = load i32, i32* %12, align 4, !dbg !1233
  %44 = call i32* @__errno_location() #21, !dbg !1234
  store i32 %43, i32* %44, align 4, !dbg !1235
  %45 = load i64, i64* %13, align 8, !dbg !1236
  ret i64 %45, !dbg !1237
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1238 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1243, metadata !DIExpression()), !dbg !1244
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1247, metadata !DIExpression()), !dbg !1248
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1249, metadata !DIExpression()), !dbg !1250
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1251, metadata !DIExpression()), !dbg !1252
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1253, metadata !DIExpression()), !dbg !1254
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1255, metadata !DIExpression()), !dbg !1256
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1257, metadata !DIExpression()), !dbg !1258
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1259, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1261, metadata !DIExpression()), !dbg !1262
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1263
  %45 = icmp eq i64 %44, 1, !dbg !1264
  %46 = zext i1 %45 to i8, !dbg !1262
  store i8 %46, i8* %20, align 1, !dbg !1262
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1265, metadata !DIExpression()), !dbg !1266
  store i64 0, i64* %21, align 8, !dbg !1266
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1267, metadata !DIExpression()), !dbg !1268
  store i64 0, i64* %22, align 8, !dbg !1268
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1269, metadata !DIExpression()), !dbg !1270
  store i8* null, i8** %23, align 8, !dbg !1270
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1271, metadata !DIExpression()), !dbg !1272
  store i64 0, i64* %24, align 8, !dbg !1272
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1273, metadata !DIExpression()), !dbg !1274
  store i8 0, i8* %25, align 1, !dbg !1274
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1275, metadata !DIExpression()), !dbg !1276
  %47 = load i32, i32* %16, align 4, !dbg !1277
  %48 = and i32 %47, 2, !dbg !1278
  %49 = icmp ne i32 %48, 0, !dbg !1279
  %50 = zext i1 %49 to i8, !dbg !1276
  store i8 %50, i8* %26, align 1, !dbg !1276
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1280, metadata !DIExpression()), !dbg !1281
  store i8 0, i8* %27, align 1, !dbg !1281
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1282, metadata !DIExpression()), !dbg !1283
  store i8 1, i8* %28, align 1, !dbg !1283
  br label %51, !dbg !1284

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1285), !dbg !1286
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1287, metadata !DIExpression()), !dbg !1288
  store i8 0, i8* %29, align 1, !dbg !1288
  %52 = load i32, i32* %15, align 4, !dbg !1289
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
  ], !dbg !1290

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1291
  store i8 1, i8* %26, align 1, !dbg !1293
  br label %54, !dbg !1294

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1295
  %56 = trunc i8 %55 to i1, !dbg !1295
  br i1 %56, label %70, label %57, !dbg !1297

57:                                               ; preds = %54
  br label %58, !dbg !1298

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1299
  %60 = load i64, i64* %12, align 8, !dbg !1299
  %61 = icmp ult i64 %59, %60, !dbg !1299
  br i1 %61, label %62, label %66, !dbg !1302

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1299
  %64 = load i64, i64* %21, align 8, !dbg !1299
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1299
  store i8 34, i8* %65, align 1, !dbg !1299
  br label %66, !dbg !1299

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1302
  %68 = add i64 %67, 1, !dbg !1302
  store i64 %68, i64* %21, align 8, !dbg !1302
  br label %69, !dbg !1302

69:                                               ; preds = %66
  br label %70, !dbg !1302

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1303
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), i8** %23, align 8, !dbg !1304
  store i64 1, i64* %24, align 8, !dbg !1305
  br label %138, !dbg !1306

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1307
  store i8 0, i8* %26, align 1, !dbg !1308
  br label %138, !dbg !1309

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1310
  %74 = icmp ne i32 %73, 10, !dbg !1313
  br i1 %74, label %75, label %80, !dbg !1314

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1315
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), i32 noundef %76), !dbg !1317
  store i8* %77, i8** %18, align 8, !dbg !1318
  %78 = load i32, i32* %15, align 4, !dbg !1319
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i32 noundef %78), !dbg !1320
  store i8* %79, i8** %19, align 8, !dbg !1321
  br label %80, !dbg !1322

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1323
  %82 = trunc i8 %81 to i1, !dbg !1323
  br i1 %82, label %108, label %83, !dbg !1325

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1326, metadata !DIExpression()), !dbg !1328
  %84 = load i8*, i8** %18, align 8, !dbg !1329
  store i8* %84, i8** %30, align 8, !dbg !1328
  br label %85, !dbg !1330

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1331
  %87 = load i8, i8* %86, align 1, !dbg !1333
  %88 = icmp ne i8 %87, 0, !dbg !1334
  br i1 %88, label %89, label %107, !dbg !1334

89:                                               ; preds = %85
  br label %90, !dbg !1335

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1336
  %92 = load i64, i64* %12, align 8, !dbg !1336
  %93 = icmp ult i64 %91, %92, !dbg !1336
  br i1 %93, label %94, label %100, !dbg !1339

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1336
  %96 = load i8, i8* %95, align 1, !dbg !1336
  %97 = load i8*, i8** %11, align 8, !dbg !1336
  %98 = load i64, i64* %21, align 8, !dbg !1336
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1336
  store i8 %96, i8* %99, align 1, !dbg !1336
  br label %100, !dbg !1336

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1339
  %102 = add i64 %101, 1, !dbg !1339
  store i64 %102, i64* %21, align 8, !dbg !1339
  br label %103, !dbg !1339

103:                                              ; preds = %100
  br label %104, !dbg !1339

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1340
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1340
  store i8* %106, i8** %30, align 8, !dbg !1340
  br label %85, !dbg !1341, !llvm.loop !1342

107:                                              ; preds = %85
  br label %108, !dbg !1343

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1344
  %109 = load i8*, i8** %19, align 8, !dbg !1345
  store i8* %109, i8** %23, align 8, !dbg !1346
  %110 = load i8*, i8** %23, align 8, !dbg !1347
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1348
  store i64 %111, i64* %24, align 8, !dbg !1349
  br label %138, !dbg !1350

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1351
  br label %113, !dbg !1352

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1353
  br label %114, !dbg !1354

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1355
  %116 = trunc i8 %115 to i1, !dbg !1355
  br i1 %116, label %118, label %117, !dbg !1357

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1358
  br label %118, !dbg !1359

118:                                              ; preds = %117, %114
  br label %119, !dbg !1355

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1360
  %120 = load i8, i8* %26, align 1, !dbg !1361
  %121 = trunc i8 %120 to i1, !dbg !1361
  br i1 %121, label %135, label %122, !dbg !1363

122:                                              ; preds = %119
  br label %123, !dbg !1364

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1365
  %125 = load i64, i64* %12, align 8, !dbg !1365
  %126 = icmp ult i64 %124, %125, !dbg !1365
  br i1 %126, label %127, label %131, !dbg !1368

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1365
  %129 = load i64, i64* %21, align 8, !dbg !1365
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1365
  store i8 39, i8* %130, align 1, !dbg !1365
  br label %131, !dbg !1365

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1368
  %133 = add i64 %132, 1, !dbg !1368
  store i64 %133, i64* %21, align 8, !dbg !1368
  br label %134, !dbg !1368

134:                                              ; preds = %131
  br label %135, !dbg !1368

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i8** %23, align 8, !dbg !1369
  store i64 1, i64* %24, align 8, !dbg !1370
  br label %138, !dbg !1371

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1372
  br label %138, !dbg !1373

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1374
  unreachable, !dbg !1374

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1375, metadata !DIExpression()), !dbg !1377
  store i64 0, i64* %31, align 8, !dbg !1377
  br label %139, !dbg !1378

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1379
  %141 = icmp eq i64 %140, -1, !dbg !1381
  br i1 %141, label %142, label %150, !dbg !1379

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1382
  %144 = load i64, i64* %31, align 8, !dbg !1383
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1382
  %146 = load i8, i8* %145, align 1, !dbg !1382
  %147 = zext i8 %146 to i32, !dbg !1382
  %148 = icmp eq i32 %147, 0, !dbg !1384
  %149 = zext i1 %148 to i32, !dbg !1384
  br label %155, !dbg !1379

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1385
  %152 = load i64, i64* %14, align 8, !dbg !1386
  %153 = icmp eq i64 %151, %152, !dbg !1387
  %154 = zext i1 %153 to i32, !dbg !1387
  br label %155, !dbg !1379

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1379
  %157 = icmp ne i32 %156, 0, !dbg !1388
  %158 = xor i1 %157, true, !dbg !1388
  br i1 %158, label %159, label %996, !dbg !1389

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1390, metadata !DIExpression()), !dbg !1392
  store i8 0, i8* %32, align 1, !dbg !1392
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1393, metadata !DIExpression()), !dbg !1394
  store i8 0, i8* %33, align 1, !dbg !1394
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1395, metadata !DIExpression()), !dbg !1396
  store i8 0, i8* %34, align 1, !dbg !1396
  %160 = load i8, i8* %25, align 1, !dbg !1397
  %161 = trunc i8 %160 to i1, !dbg !1397
  br i1 %161, label %162, label %197, !dbg !1399

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1400
  %164 = icmp ne i32 %163, 2, !dbg !1401
  br i1 %164, label %165, label %197, !dbg !1402

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1403
  %167 = icmp ne i64 %166, 0, !dbg !1403
  br i1 %167, label %168, label %197, !dbg !1404

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1405
  %170 = load i64, i64* %24, align 8, !dbg !1406
  %171 = add i64 %169, %170, !dbg !1407
  %172 = load i64, i64* %14, align 8, !dbg !1408
  %173 = icmp eq i64 %172, -1, !dbg !1409
  br i1 %173, label %174, label %180, !dbg !1410

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1411
  %176 = icmp ult i64 1, %175, !dbg !1412
  br i1 %176, label %177, label %180, !dbg !1408

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1413
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1414
  store i64 %179, i64* %14, align 8, !dbg !1415
  br label %182, !dbg !1408

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1416
  br label %182, !dbg !1408

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1408
  %184 = icmp ule i64 %171, %183, !dbg !1417
  br i1 %184, label %185, label %197, !dbg !1418

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1419
  %187 = load i64, i64* %31, align 8, !dbg !1420
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1421
  %189 = load i8*, i8** %23, align 8, !dbg !1422
  %190 = load i64, i64* %24, align 8, !dbg !1423
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1424
  br i1 %191, label %192, label %197, !dbg !1425

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1426
  %194 = trunc i8 %193 to i1, !dbg !1426
  br i1 %194, label %195, label %196, !dbg !1429

195:                                              ; preds = %192
  br label %1078, !dbg !1430

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1431
  br label %197, !dbg !1432

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1433, metadata !DIExpression()), !dbg !1434
  %198 = load i8*, i8** %13, align 8, !dbg !1435
  %199 = load i64, i64* %31, align 8, !dbg !1436
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1435
  %201 = load i8, i8* %200, align 1, !dbg !1435
  store i8 %201, i8* %35, align 1, !dbg !1434
  %202 = load i8, i8* %35, align 1, !dbg !1437
  %203 = zext i8 %202 to i32, !dbg !1437
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
  ], !dbg !1438

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1439
  %206 = trunc i8 %205 to i1, !dbg !1439
  br i1 %206, label %207, label %318, !dbg !1442

207:                                              ; preds = %204
  br label %208, !dbg !1443

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1445
  %210 = trunc i8 %209 to i1, !dbg !1445
  br i1 %210, label %211, label %212, !dbg !1448

211:                                              ; preds = %208
  br label %1078, !dbg !1445

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1448
  %213 = load i32, i32* %15, align 4, !dbg !1449
  %214 = icmp eq i32 %213, 2, !dbg !1449
  br i1 %214, label %215, label %255, !dbg !1449

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1449
  %217 = trunc i8 %216 to i1, !dbg !1449
  br i1 %217, label %255, label %218, !dbg !1448

218:                                              ; preds = %215
  br label %219, !dbg !1451

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1453
  %221 = load i64, i64* %12, align 8, !dbg !1453
  %222 = icmp ult i64 %220, %221, !dbg !1453
  br i1 %222, label %223, label %227, !dbg !1456

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1453
  %225 = load i64, i64* %21, align 8, !dbg !1453
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1453
  store i8 39, i8* %226, align 1, !dbg !1453
  br label %227, !dbg !1453

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1456
  %229 = add i64 %228, 1, !dbg !1456
  store i64 %229, i64* %21, align 8, !dbg !1456
  br label %230, !dbg !1456

230:                                              ; preds = %227
  br label %231, !dbg !1451

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1457
  %233 = load i64, i64* %12, align 8, !dbg !1457
  %234 = icmp ult i64 %232, %233, !dbg !1457
  br i1 %234, label %235, label %239, !dbg !1460

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1457
  %237 = load i64, i64* %21, align 8, !dbg !1457
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1457
  store i8 36, i8* %238, align 1, !dbg !1457
  br label %239, !dbg !1457

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1460
  %241 = add i64 %240, 1, !dbg !1460
  store i64 %241, i64* %21, align 8, !dbg !1460
  br label %242, !dbg !1460

242:                                              ; preds = %239
  br label %243, !dbg !1451

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1461
  %245 = load i64, i64* %12, align 8, !dbg !1461
  %246 = icmp ult i64 %244, %245, !dbg !1461
  br i1 %246, label %247, label %251, !dbg !1464

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1461
  %249 = load i64, i64* %21, align 8, !dbg !1461
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1461
  store i8 39, i8* %250, align 1, !dbg !1461
  br label %251, !dbg !1461

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1464
  %253 = add i64 %252, 1, !dbg !1464
  store i64 %253, i64* %21, align 8, !dbg !1464
  br label %254, !dbg !1464

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1451
  br label %255, !dbg !1451

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1448

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1465
  %258 = load i64, i64* %12, align 8, !dbg !1465
  %259 = icmp ult i64 %257, %258, !dbg !1465
  br i1 %259, label %260, label %264, !dbg !1468

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1465
  %262 = load i64, i64* %21, align 8, !dbg !1465
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1465
  store i8 92, i8* %263, align 1, !dbg !1465
  br label %264, !dbg !1465

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1468
  %266 = add i64 %265, 1, !dbg !1468
  store i64 %266, i64* %21, align 8, !dbg !1468
  br label %267, !dbg !1468

267:                                              ; preds = %264
  br label %268, !dbg !1448

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1469
  %270 = icmp ne i32 %269, 2, !dbg !1471
  br i1 %270, label %271, label %317, !dbg !1472

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1473
  %273 = add i64 %272, 1, !dbg !1474
  %274 = load i64, i64* %14, align 8, !dbg !1475
  %275 = icmp ult i64 %273, %274, !dbg !1476
  br i1 %275, label %276, label %317, !dbg !1477

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1478
  %278 = load i64, i64* %31, align 8, !dbg !1479
  %279 = add i64 %278, 1, !dbg !1480
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1478
  %281 = load i8, i8* %280, align 1, !dbg !1478
  %282 = zext i8 %281 to i32, !dbg !1478
  %283 = icmp sle i32 48, %282, !dbg !1481
  br i1 %283, label %284, label %317, !dbg !1482

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1483
  %286 = load i64, i64* %31, align 8, !dbg !1484
  %287 = add i64 %286, 1, !dbg !1485
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1483
  %289 = load i8, i8* %288, align 1, !dbg !1483
  %290 = zext i8 %289 to i32, !dbg !1483
  %291 = icmp sle i32 %290, 57, !dbg !1486
  br i1 %291, label %292, label %317, !dbg !1487

292:                                              ; preds = %284
  br label %293, !dbg !1488

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1490
  %295 = load i64, i64* %12, align 8, !dbg !1490
  %296 = icmp ult i64 %294, %295, !dbg !1490
  br i1 %296, label %297, label %301, !dbg !1493

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1490
  %299 = load i64, i64* %21, align 8, !dbg !1490
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1490
  store i8 48, i8* %300, align 1, !dbg !1490
  br label %301, !dbg !1490

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1493
  %303 = add i64 %302, 1, !dbg !1493
  store i64 %303, i64* %21, align 8, !dbg !1493
  br label %304, !dbg !1493

304:                                              ; preds = %301
  br label %305, !dbg !1494

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1495
  %307 = load i64, i64* %12, align 8, !dbg !1495
  %308 = icmp ult i64 %306, %307, !dbg !1495
  br i1 %308, label %309, label %313, !dbg !1498

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1495
  %311 = load i64, i64* %21, align 8, !dbg !1495
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1495
  store i8 48, i8* %312, align 1, !dbg !1495
  br label %313, !dbg !1495

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1498
  %315 = add i64 %314, 1, !dbg !1498
  store i64 %315, i64* %21, align 8, !dbg !1498
  br label %316, !dbg !1498

316:                                              ; preds = %313
  br label %317, !dbg !1499

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1500
  br label %324, !dbg !1501

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1502
  %320 = and i32 %319, 1, !dbg !1504
  %321 = icmp ne i32 %320, 0, !dbg !1504
  br i1 %321, label %322, label %323, !dbg !1505

322:                                              ; preds = %318
  br label %993, !dbg !1506

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1507

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1508
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1509

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1510
  %329 = trunc i8 %328 to i1, !dbg !1510
  br i1 %329, label %330, label %331, !dbg !1513

330:                                              ; preds = %327
  br label %1078, !dbg !1514

331:                                              ; preds = %327
  br label %418, !dbg !1515

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1516
  %334 = and i32 %333, 4, !dbg !1518
  %335 = icmp ne i32 %334, 0, !dbg !1518
  br i1 %335, label %336, label %417, !dbg !1519

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1520
  %338 = add i64 %337, 2, !dbg !1521
  %339 = load i64, i64* %14, align 8, !dbg !1522
  %340 = icmp ult i64 %338, %339, !dbg !1523
  br i1 %340, label %341, label %417, !dbg !1524

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1525
  %343 = load i64, i64* %31, align 8, !dbg !1526
  %344 = add i64 %343, 1, !dbg !1527
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1525
  %346 = load i8, i8* %345, align 1, !dbg !1525
  %347 = zext i8 %346 to i32, !dbg !1525
  %348 = icmp eq i32 %347, 63, !dbg !1528
  br i1 %348, label %349, label %417, !dbg !1529

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1530
  %351 = load i64, i64* %31, align 8, !dbg !1531
  %352 = add i64 %351, 2, !dbg !1532
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1530
  %354 = load i8, i8* %353, align 1, !dbg !1530
  %355 = zext i8 %354 to i32, !dbg !1530
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
  ], !dbg !1533

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1534
  %358 = trunc i8 %357 to i1, !dbg !1534
  br i1 %358, label %359, label %360, !dbg !1537

359:                                              ; preds = %356
  br label %1078, !dbg !1538

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1539
  %362 = load i64, i64* %31, align 8, !dbg !1540
  %363 = add i64 %362, 2, !dbg !1541
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1539
  %365 = load i8, i8* %364, align 1, !dbg !1539
  store i8 %365, i8* %35, align 1, !dbg !1542
  %366 = load i64, i64* %31, align 8, !dbg !1543
  %367 = add i64 %366, 2, !dbg !1543
  store i64 %367, i64* %31, align 8, !dbg !1543
  br label %368, !dbg !1544

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1545
  %370 = load i64, i64* %12, align 8, !dbg !1545
  %371 = icmp ult i64 %369, %370, !dbg !1545
  br i1 %371, label %372, label %376, !dbg !1548

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1545
  %374 = load i64, i64* %21, align 8, !dbg !1545
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1545
  store i8 63, i8* %375, align 1, !dbg !1545
  br label %376, !dbg !1545

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1548
  %378 = add i64 %377, 1, !dbg !1548
  store i64 %378, i64* %21, align 8, !dbg !1548
  br label %379, !dbg !1548

379:                                              ; preds = %376
  br label %380, !dbg !1549

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1550
  %382 = load i64, i64* %12, align 8, !dbg !1550
  %383 = icmp ult i64 %381, %382, !dbg !1550
  br i1 %383, label %384, label %388, !dbg !1553

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1550
  %386 = load i64, i64* %21, align 8, !dbg !1550
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1550
  store i8 34, i8* %387, align 1, !dbg !1550
  br label %388, !dbg !1550

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1553
  %390 = add i64 %389, 1, !dbg !1553
  store i64 %390, i64* %21, align 8, !dbg !1553
  br label %391, !dbg !1553

391:                                              ; preds = %388
  br label %392, !dbg !1554

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1555
  %394 = load i64, i64* %12, align 8, !dbg !1555
  %395 = icmp ult i64 %393, %394, !dbg !1555
  br i1 %395, label %396, label %400, !dbg !1558

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1555
  %398 = load i64, i64* %21, align 8, !dbg !1555
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1555
  store i8 34, i8* %399, align 1, !dbg !1555
  br label %400, !dbg !1555

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1558
  %402 = add i64 %401, 1, !dbg !1558
  store i64 %402, i64* %21, align 8, !dbg !1558
  br label %403, !dbg !1558

403:                                              ; preds = %400
  br label %404, !dbg !1559

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1560
  %406 = load i64, i64* %12, align 8, !dbg !1560
  %407 = icmp ult i64 %405, %406, !dbg !1560
  br i1 %407, label %408, label %412, !dbg !1563

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1560
  %410 = load i64, i64* %21, align 8, !dbg !1560
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1560
  store i8 63, i8* %411, align 1, !dbg !1560
  br label %412, !dbg !1560

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1563
  %414 = add i64 %413, 1, !dbg !1563
  store i64 %414, i64* %21, align 8, !dbg !1563
  br label %415, !dbg !1563

415:                                              ; preds = %412
  br label %416, !dbg !1564

416:                                              ; preds = %349, %415
  br label %417, !dbg !1565

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1566

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1567

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1568
  br label %454, !dbg !1570

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1571
  br label %454, !dbg !1572

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1573
  br label %454, !dbg !1574

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1575
  br label %446, !dbg !1576

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1577
  br label %446, !dbg !1578

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1579
  br label %446, !dbg !1580

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1581
  br label %454, !dbg !1582

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1583
  store i8 %427, i8* %36, align 1, !dbg !1584
  %428 = load i32, i32* %15, align 4, !dbg !1585
  %429 = icmp eq i32 %428, 2, !dbg !1587
  br i1 %429, label %430, label %435, !dbg !1588

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1589
  %432 = trunc i8 %431 to i1, !dbg !1589
  br i1 %432, label %433, label %434, !dbg !1592

433:                                              ; preds = %430
  br label %1078, !dbg !1593

434:                                              ; preds = %430
  br label %942, !dbg !1594

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1595
  %437 = trunc i8 %436 to i1, !dbg !1595
  br i1 %437, label %438, label %445, !dbg !1597

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1598
  %440 = trunc i8 %439 to i1, !dbg !1598
  br i1 %440, label %441, label %445, !dbg !1599

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1600
  %443 = icmp ne i64 %442, 0, !dbg !1600
  br i1 %443, label %444, label %445, !dbg !1601

444:                                              ; preds = %441
  br label %942, !dbg !1602

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1600

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1603), !dbg !1604
  %447 = load i32, i32* %15, align 4, !dbg !1605
  %448 = icmp eq i32 %447, 2, !dbg !1607
  br i1 %448, label %449, label %453, !dbg !1608

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1609
  %451 = trunc i8 %450 to i1, !dbg !1609
  br i1 %451, label %452, label %453, !dbg !1610

452:                                              ; preds = %449
  br label %1078, !dbg !1611

453:                                              ; preds = %449, %446
  br label %454, !dbg !1609

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1612), !dbg !1613
  %455 = load i8, i8* %25, align 1, !dbg !1614
  %456 = trunc i8 %455 to i1, !dbg !1614
  br i1 %456, label %457, label %459, !dbg !1616

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1617
  store i8 %458, i8* %35, align 1, !dbg !1619
  br label %880, !dbg !1620

459:                                              ; preds = %454
  br label %849, !dbg !1621

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1622
  %462 = icmp eq i64 %461, -1, !dbg !1624
  br i1 %462, label %463, label %469, !dbg !1625

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1626
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1626
  %466 = load i8, i8* %465, align 1, !dbg !1626
  %467 = zext i8 %466 to i32, !dbg !1626
  %468 = icmp eq i32 %467, 0, !dbg !1627
  br i1 %468, label %473, label %472, !dbg !1622

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1628
  %471 = icmp eq i64 %470, 1, !dbg !1629
  br i1 %471, label %473, label %472, !dbg !1625

472:                                              ; preds = %469, %463
  br label %849, !dbg !1630

473:                                              ; preds = %469, %463
  br label %474, !dbg !1631

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1632
  %476 = icmp ne i64 %475, 0, !dbg !1634
  br i1 %476, label %477, label %478, !dbg !1635

477:                                              ; preds = %474
  br label %849, !dbg !1636

478:                                              ; preds = %474
  br label %479, !dbg !1637

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1638
  br label %480, !dbg !1639

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1640
  %482 = icmp eq i32 %481, 2, !dbg !1642
  br i1 %482, label %483, label %487, !dbg !1643

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1644
  %485 = trunc i8 %484 to i1, !dbg !1644
  br i1 %485, label %486, label %487, !dbg !1645

486:                                              ; preds = %483
  br label %1078, !dbg !1646

487:                                              ; preds = %483, %480
  br label %849, !dbg !1647

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1648
  store i8 1, i8* %34, align 1, !dbg !1649
  %489 = load i32, i32* %15, align 4, !dbg !1650
  %490 = icmp eq i32 %489, 2, !dbg !1652
  br i1 %490, label %491, label %540, !dbg !1653

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1654
  %493 = trunc i8 %492 to i1, !dbg !1654
  br i1 %493, label %494, label %495, !dbg !1657

494:                                              ; preds = %491
  br label %1078, !dbg !1658

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1659
  %497 = icmp ne i64 %496, 0, !dbg !1659
  br i1 %497, label %498, label %503, !dbg !1661

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1662
  %500 = icmp ne i64 %499, 0, !dbg !1662
  br i1 %500, label %503, label %501, !dbg !1663

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1664
  store i64 %502, i64* %22, align 8, !dbg !1666
  store i64 0, i64* %12, align 8, !dbg !1667
  br label %503, !dbg !1668

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1669

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1670
  %506 = load i64, i64* %12, align 8, !dbg !1670
  %507 = icmp ult i64 %505, %506, !dbg !1670
  br i1 %507, label %508, label %512, !dbg !1673

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1670
  %510 = load i64, i64* %21, align 8, !dbg !1670
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1670
  store i8 39, i8* %511, align 1, !dbg !1670
  br label %512, !dbg !1670

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1673
  %514 = add i64 %513, 1, !dbg !1673
  store i64 %514, i64* %21, align 8, !dbg !1673
  br label %515, !dbg !1673

515:                                              ; preds = %512
  br label %516, !dbg !1674

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1675
  %518 = load i64, i64* %12, align 8, !dbg !1675
  %519 = icmp ult i64 %517, %518, !dbg !1675
  br i1 %519, label %520, label %524, !dbg !1678

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1675
  %522 = load i64, i64* %21, align 8, !dbg !1675
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1675
  store i8 92, i8* %523, align 1, !dbg !1675
  br label %524, !dbg !1675

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1678
  %526 = add i64 %525, 1, !dbg !1678
  store i64 %526, i64* %21, align 8, !dbg !1678
  br label %527, !dbg !1678

527:                                              ; preds = %524
  br label %528, !dbg !1679

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1680
  %530 = load i64, i64* %12, align 8, !dbg !1680
  %531 = icmp ult i64 %529, %530, !dbg !1680
  br i1 %531, label %532, label %536, !dbg !1683

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1680
  %534 = load i64, i64* %21, align 8, !dbg !1680
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1680
  store i8 39, i8* %535, align 1, !dbg !1680
  br label %536, !dbg !1680

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1683
  %538 = add i64 %537, 1, !dbg !1683
  store i64 %538, i64* %21, align 8, !dbg !1683
  br label %539, !dbg !1683

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1684
  br label %540, !dbg !1685

540:                                              ; preds = %539, %488
  br label %849, !dbg !1686

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1687
  br label %849, !dbg !1688

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1689, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1692, metadata !DIExpression()), !dbg !1693
  %543 = load i8, i8* %20, align 1, !dbg !1694
  %544 = trunc i8 %543 to i1, !dbg !1694
  br i1 %544, label %545, label %557, !dbg !1696

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1697
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1699
  %547 = load i16*, i16** %546, align 8, !dbg !1699
  %548 = load i8, i8* %35, align 1, !dbg !1699
  %549 = zext i8 %548 to i32, !dbg !1699
  %550 = sext i32 %549 to i64, !dbg !1699
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1699
  %552 = load i16, i16* %551, align 2, !dbg !1699
  %553 = zext i16 %552 to i32, !dbg !1699
  %554 = and i32 %553, 16384, !dbg !1699
  %555 = icmp ne i32 %554, 0, !dbg !1700
  %556 = zext i1 %555 to i8, !dbg !1701
  store i8 %556, i8* %38, align 1, !dbg !1701
  br label %648, !dbg !1702

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1703, metadata !DIExpression()), !dbg !1715
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1716
  store i64 0, i64* %37, align 8, !dbg !1717
  store i8 1, i8* %38, align 1, !dbg !1718
  %558 = load i64, i64* %14, align 8, !dbg !1719
  %559 = icmp eq i64 %558, -1, !dbg !1721
  br i1 %559, label %560, label %563, !dbg !1722

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1723
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1724
  store i64 %562, i64* %14, align 8, !dbg !1725
  br label %563, !dbg !1726

563:                                              ; preds = %560, %557
  br label %564, !dbg !1727

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1728, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1733, metadata !DIExpression()), !dbg !1734
  %565 = load i8*, i8** %13, align 8, !dbg !1735
  %566 = load i64, i64* %31, align 8, !dbg !1736
  %567 = load i64, i64* %37, align 8, !dbg !1737
  %568 = add i64 %566, %567, !dbg !1738
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1735
  %570 = load i64, i64* %14, align 8, !dbg !1739
  %571 = load i64, i64* %31, align 8, !dbg !1740
  %572 = load i64, i64* %37, align 8, !dbg !1741
  %573 = add i64 %571, %572, !dbg !1742
  %574 = sub i64 %570, %573, !dbg !1743
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1744
  store i64 %575, i64* %41, align 8, !dbg !1734
  %576 = load i64, i64* %41, align 8, !dbg !1745
  %577 = icmp eq i64 %576, 0, !dbg !1747
  br i1 %577, label %578, label %579, !dbg !1748

578:                                              ; preds = %564
  br label %647, !dbg !1749

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1750
  %581 = icmp eq i64 %580, -1, !dbg !1752
  br i1 %581, label %582, label %583, !dbg !1753

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1754
  br label %647, !dbg !1756

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1757
  %585 = icmp eq i64 %584, -2, !dbg !1759
  br i1 %585, label %586, label %608, !dbg !1760

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1761
  br label %587, !dbg !1763

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1764
  %589 = load i64, i64* %37, align 8, !dbg !1765
  %590 = add i64 %588, %589, !dbg !1766
  %591 = load i64, i64* %14, align 8, !dbg !1767
  %592 = icmp ult i64 %590, %591, !dbg !1768
  br i1 %592, label %593, label %602, !dbg !1769

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1770
  %595 = load i64, i64* %31, align 8, !dbg !1771
  %596 = load i64, i64* %37, align 8, !dbg !1772
  %597 = add i64 %595, %596, !dbg !1773
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1770
  %599 = load i8, i8* %598, align 1, !dbg !1770
  %600 = zext i8 %599 to i32, !dbg !1770
  %601 = icmp ne i32 %600, 0, !dbg !1769
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1774
  br i1 %603, label %604, label %607, !dbg !1763

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1775
  %606 = add i64 %605, 1, !dbg !1775
  store i64 %606, i64* %37, align 8, !dbg !1775
  br label %587, !dbg !1763, !llvm.loop !1776

607:                                              ; preds = %602
  br label %647, !dbg !1777

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1778
  %610 = trunc i8 %609 to i1, !dbg !1778
  br i1 %610, label %611, label %635, !dbg !1781

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1782
  %613 = icmp eq i32 %612, 2, !dbg !1783
  br i1 %613, label %614, label %635, !dbg !1784

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1785, metadata !DIExpression()), !dbg !1788
  store i64 1, i64* %42, align 8, !dbg !1788
  br label %615, !dbg !1789

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !1790
  %617 = load i64, i64* %41, align 8, !dbg !1792
  %618 = icmp ult i64 %616, %617, !dbg !1793
  br i1 %618, label %619, label %634, !dbg !1794

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !1795
  %621 = load i64, i64* %31, align 8, !dbg !1796
  %622 = load i64, i64* %37, align 8, !dbg !1797
  %623 = add i64 %621, %622, !dbg !1798
  %624 = load i64, i64* %42, align 8, !dbg !1799
  %625 = add i64 %623, %624, !dbg !1800
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !1795
  %627 = load i8, i8* %626, align 1, !dbg !1795
  %628 = zext i8 %627 to i32, !dbg !1795
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !1801

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !1802

630:                                              ; preds = %619
  br label %631, !dbg !1804

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !1805
  %633 = add i64 %632, 1, !dbg !1805
  store i64 %633, i64* %42, align 8, !dbg !1805
  br label %615, !dbg !1806, !llvm.loop !1807

634:                                              ; preds = %615
  br label %635, !dbg !1809

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !1810
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !1812
  %638 = icmp ne i32 %637, 0, !dbg !1812
  br i1 %638, label %640, label %639, !dbg !1813

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !1814
  br label %640, !dbg !1815

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !1816
  %642 = load i64, i64* %37, align 8, !dbg !1817
  %643 = add i64 %642, %641, !dbg !1817
  store i64 %643, i64* %37, align 8, !dbg !1817
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !1818

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !1819
  %650 = trunc i8 %649 to i1, !dbg !1819
  %651 = zext i1 %650 to i8, !dbg !1820
  store i8 %651, i8* %34, align 1, !dbg !1820
  %652 = load i64, i64* %37, align 8, !dbg !1821
  %653 = icmp ult i64 1, %652, !dbg !1823
  br i1 %653, label %660, label %654, !dbg !1824

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !1825
  %656 = trunc i8 %655 to i1, !dbg !1825
  br i1 %656, label %657, label %848, !dbg !1826

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !1827
  %659 = trunc i8 %658 to i1, !dbg !1827
  br i1 %659, label %848, label %660, !dbg !1828

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !1829, metadata !DIExpression()), !dbg !1831
  %661 = load i64, i64* %31, align 8, !dbg !1832
  %662 = load i64, i64* %37, align 8, !dbg !1833
  %663 = add i64 %661, %662, !dbg !1834
  store i64 %663, i64* %43, align 8, !dbg !1831
  br label %664, !dbg !1835

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !1836
  %666 = trunc i8 %665 to i1, !dbg !1836
  br i1 %666, label %667, label %772, !dbg !1841

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !1842
  %669 = trunc i8 %668 to i1, !dbg !1842
  br i1 %669, label %772, label %670, !dbg !1843

670:                                              ; preds = %667
  br label %671, !dbg !1844

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !1846
  %673 = trunc i8 %672 to i1, !dbg !1846
  br i1 %673, label %674, label %675, !dbg !1849

674:                                              ; preds = %671
  br label %1078, !dbg !1846

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !1849
  %676 = load i32, i32* %15, align 4, !dbg !1850
  %677 = icmp eq i32 %676, 2, !dbg !1850
  br i1 %677, label %678, label %718, !dbg !1850

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !1850
  %680 = trunc i8 %679 to i1, !dbg !1850
  br i1 %680, label %718, label %681, !dbg !1849

681:                                              ; preds = %678
  br label %682, !dbg !1852

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !1854
  %684 = load i64, i64* %12, align 8, !dbg !1854
  %685 = icmp ult i64 %683, %684, !dbg !1854
  br i1 %685, label %686, label %690, !dbg !1857

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !1854
  %688 = load i64, i64* %21, align 8, !dbg !1854
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !1854
  store i8 39, i8* %689, align 1, !dbg !1854
  br label %690, !dbg !1854

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !1857
  %692 = add i64 %691, 1, !dbg !1857
  store i64 %692, i64* %21, align 8, !dbg !1857
  br label %693, !dbg !1857

693:                                              ; preds = %690
  br label %694, !dbg !1852

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !1858
  %696 = load i64, i64* %12, align 8, !dbg !1858
  %697 = icmp ult i64 %695, %696, !dbg !1858
  br i1 %697, label %698, label %702, !dbg !1861

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !1858
  %700 = load i64, i64* %21, align 8, !dbg !1858
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !1858
  store i8 36, i8* %701, align 1, !dbg !1858
  br label %702, !dbg !1858

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !1861
  %704 = add i64 %703, 1, !dbg !1861
  store i64 %704, i64* %21, align 8, !dbg !1861
  br label %705, !dbg !1861

705:                                              ; preds = %702
  br label %706, !dbg !1852

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !1862
  %708 = load i64, i64* %12, align 8, !dbg !1862
  %709 = icmp ult i64 %707, %708, !dbg !1862
  br i1 %709, label %710, label %714, !dbg !1865

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !1862
  %712 = load i64, i64* %21, align 8, !dbg !1862
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !1862
  store i8 39, i8* %713, align 1, !dbg !1862
  br label %714, !dbg !1862

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !1865
  %716 = add i64 %715, 1, !dbg !1865
  store i64 %716, i64* %21, align 8, !dbg !1865
  br label %717, !dbg !1865

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !1852
  br label %718, !dbg !1852

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !1849

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !1866
  %721 = load i64, i64* %12, align 8, !dbg !1866
  %722 = icmp ult i64 %720, %721, !dbg !1866
  br i1 %722, label %723, label %727, !dbg !1869

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !1866
  %725 = load i64, i64* %21, align 8, !dbg !1866
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !1866
  store i8 92, i8* %726, align 1, !dbg !1866
  br label %727, !dbg !1866

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !1869
  %729 = add i64 %728, 1, !dbg !1869
  store i64 %729, i64* %21, align 8, !dbg !1869
  br label %730, !dbg !1869

730:                                              ; preds = %727
  br label %731, !dbg !1849

731:                                              ; preds = %730
  br label %732, !dbg !1870

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !1871
  %734 = load i64, i64* %12, align 8, !dbg !1871
  %735 = icmp ult i64 %733, %734, !dbg !1871
  br i1 %735, label %736, label %745, !dbg !1874

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !1871
  %738 = zext i8 %737 to i32, !dbg !1871
  %739 = ashr i32 %738, 6, !dbg !1871
  %740 = add nsw i32 48, %739, !dbg !1871
  %741 = trunc i32 %740 to i8, !dbg !1871
  %742 = load i8*, i8** %11, align 8, !dbg !1871
  %743 = load i64, i64* %21, align 8, !dbg !1871
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !1871
  store i8 %741, i8* %744, align 1, !dbg !1871
  br label %745, !dbg !1871

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !1874
  %747 = add i64 %746, 1, !dbg !1874
  store i64 %747, i64* %21, align 8, !dbg !1874
  br label %748, !dbg !1874

748:                                              ; preds = %745
  br label %749, !dbg !1875

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !1876
  %751 = load i64, i64* %12, align 8, !dbg !1876
  %752 = icmp ult i64 %750, %751, !dbg !1876
  br i1 %752, label %753, label %763, !dbg !1879

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !1876
  %755 = zext i8 %754 to i32, !dbg !1876
  %756 = ashr i32 %755, 3, !dbg !1876
  %757 = and i32 %756, 7, !dbg !1876
  %758 = add nsw i32 48, %757, !dbg !1876
  %759 = trunc i32 %758 to i8, !dbg !1876
  %760 = load i8*, i8** %11, align 8, !dbg !1876
  %761 = load i64, i64* %21, align 8, !dbg !1876
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !1876
  store i8 %759, i8* %762, align 1, !dbg !1876
  br label %763, !dbg !1876

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !1879
  %765 = add i64 %764, 1, !dbg !1879
  store i64 %765, i64* %21, align 8, !dbg !1879
  br label %766, !dbg !1879

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !1880
  %768 = zext i8 %767 to i32, !dbg !1880
  %769 = and i32 %768, 7, !dbg !1881
  %770 = add nsw i32 48, %769, !dbg !1882
  %771 = trunc i32 %770 to i8, !dbg !1883
  store i8 %771, i8* %35, align 1, !dbg !1884
  br label %789, !dbg !1885

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !1886
  %774 = trunc i8 %773 to i1, !dbg !1886
  br i1 %774, label %775, label %788, !dbg !1888

775:                                              ; preds = %772
  br label %776, !dbg !1889

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !1891
  %778 = load i64, i64* %12, align 8, !dbg !1891
  %779 = icmp ult i64 %777, %778, !dbg !1891
  br i1 %779, label %780, label %784, !dbg !1894

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !1891
  %782 = load i64, i64* %21, align 8, !dbg !1891
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !1891
  store i8 92, i8* %783, align 1, !dbg !1891
  br label %784, !dbg !1891

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !1894
  %786 = add i64 %785, 1, !dbg !1894
  store i64 %786, i64* %21, align 8, !dbg !1894
  br label %787, !dbg !1894

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !1895
  br label %788, !dbg !1896

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !1897
  %791 = load i64, i64* %31, align 8, !dbg !1899
  %792 = add i64 %791, 1, !dbg !1900
  %793 = icmp ule i64 %790, %792, !dbg !1901
  br i1 %793, label %794, label %795, !dbg !1902

794:                                              ; preds = %789
  br label %847, !dbg !1903

795:                                              ; preds = %789
  br label %796, !dbg !1904

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !1905
  %798 = trunc i8 %797 to i1, !dbg !1905
  br i1 %798, label %799, label %827, !dbg !1905

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !1905
  %801 = trunc i8 %800 to i1, !dbg !1905
  br i1 %801, label %827, label %802, !dbg !1908

802:                                              ; preds = %799
  br label %803, !dbg !1909

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !1911
  %805 = load i64, i64* %12, align 8, !dbg !1911
  %806 = icmp ult i64 %804, %805, !dbg !1911
  br i1 %806, label %807, label %811, !dbg !1914

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !1911
  %809 = load i64, i64* %21, align 8, !dbg !1911
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !1911
  store i8 39, i8* %810, align 1, !dbg !1911
  br label %811, !dbg !1911

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !1914
  %813 = add i64 %812, 1, !dbg !1914
  store i64 %813, i64* %21, align 8, !dbg !1914
  br label %814, !dbg !1914

814:                                              ; preds = %811
  br label %815, !dbg !1909

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !1915
  %817 = load i64, i64* %12, align 8, !dbg !1915
  %818 = icmp ult i64 %816, %817, !dbg !1915
  br i1 %818, label %819, label %823, !dbg !1918

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !1915
  %821 = load i64, i64* %21, align 8, !dbg !1915
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !1915
  store i8 39, i8* %822, align 1, !dbg !1915
  br label %823, !dbg !1915

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !1918
  %825 = add i64 %824, 1, !dbg !1918
  store i64 %825, i64* %21, align 8, !dbg !1918
  br label %826, !dbg !1918

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !1909
  br label %827, !dbg !1909

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !1908

828:                                              ; preds = %827
  br label %829, !dbg !1919

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !1920
  %831 = load i64, i64* %12, align 8, !dbg !1920
  %832 = icmp ult i64 %830, %831, !dbg !1920
  br i1 %832, label %833, label %838, !dbg !1923

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !1920
  %835 = load i8*, i8** %11, align 8, !dbg !1920
  %836 = load i64, i64* %21, align 8, !dbg !1920
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !1920
  store i8 %834, i8* %837, align 1, !dbg !1920
  br label %838, !dbg !1920

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !1923
  %840 = add i64 %839, 1, !dbg !1923
  store i64 %840, i64* %21, align 8, !dbg !1923
  br label %841, !dbg !1923

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !1924
  %843 = load i64, i64* %31, align 8, !dbg !1925
  %844 = add i64 %843, 1, !dbg !1925
  store i64 %844, i64* %31, align 8, !dbg !1925
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !1924
  %846 = load i8, i8* %845, align 1, !dbg !1924
  store i8 %846, i8* %35, align 1, !dbg !1926
  br label %664, !dbg !1927, !llvm.loop !1928

847:                                              ; preds = %794
  br label %942, !dbg !1931

848:                                              ; preds = %657, %654
  br label %849, !dbg !1932

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !1933
  %851 = trunc i8 %850 to i1, !dbg !1933
  br i1 %851, label %852, label %855, !dbg !1935

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !1936
  %854 = icmp ne i32 %853, 2, !dbg !1937
  br i1 %854, label %858, label %855, !dbg !1938

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !1939
  %857 = trunc i8 %856 to i1, !dbg !1939
  br i1 %857, label %858, label %875, !dbg !1940

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !1941
  %860 = icmp ne i32* %859, null, !dbg !1941
  br i1 %860, label %861, label %875, !dbg !1942

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !1943
  %863 = load i8, i8* %35, align 1, !dbg !1944
  %864 = zext i8 %863 to i64, !dbg !1944
  %865 = udiv i64 %864, 32, !dbg !1945
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !1943
  %867 = load i32, i32* %866, align 4, !dbg !1943
  %868 = load i8, i8* %35, align 1, !dbg !1946
  %869 = zext i8 %868 to i64, !dbg !1946
  %870 = urem i64 %869, 32, !dbg !1947
  %871 = trunc i64 %870 to i32, !dbg !1948
  %872 = lshr i32 %867, %871, !dbg !1948
  %873 = and i32 %872, 1, !dbg !1949
  %874 = icmp ne i32 %873, 0, !dbg !1949
  br i1 %874, label %879, label %875, !dbg !1950

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !1951
  %877 = trunc i8 %876 to i1, !dbg !1951
  br i1 %877, label %879, label %878, !dbg !1952

878:                                              ; preds = %875
  br label %942, !dbg !1953

879:                                              ; preds = %875, %861
  br label %880, !dbg !1951

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !1954), !dbg !1955
  br label %881, !dbg !1956

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !1957
  %883 = trunc i8 %882 to i1, !dbg !1957
  br i1 %883, label %884, label %885, !dbg !1960

884:                                              ; preds = %881
  br label %1078, !dbg !1957

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !1960
  %886 = load i32, i32* %15, align 4, !dbg !1961
  %887 = icmp eq i32 %886, 2, !dbg !1961
  br i1 %887, label %888, label %928, !dbg !1961

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !1961
  %890 = trunc i8 %889 to i1, !dbg !1961
  br i1 %890, label %928, label %891, !dbg !1960

891:                                              ; preds = %888
  br label %892, !dbg !1963

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !1965
  %894 = load i64, i64* %12, align 8, !dbg !1965
  %895 = icmp ult i64 %893, %894, !dbg !1965
  br i1 %895, label %896, label %900, !dbg !1968

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !1965
  %898 = load i64, i64* %21, align 8, !dbg !1965
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !1965
  store i8 39, i8* %899, align 1, !dbg !1965
  br label %900, !dbg !1965

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !1968
  %902 = add i64 %901, 1, !dbg !1968
  store i64 %902, i64* %21, align 8, !dbg !1968
  br label %903, !dbg !1968

903:                                              ; preds = %900
  br label %904, !dbg !1963

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !1969
  %906 = load i64, i64* %12, align 8, !dbg !1969
  %907 = icmp ult i64 %905, %906, !dbg !1969
  br i1 %907, label %908, label %912, !dbg !1972

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !1969
  %910 = load i64, i64* %21, align 8, !dbg !1969
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !1969
  store i8 36, i8* %911, align 1, !dbg !1969
  br label %912, !dbg !1969

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !1972
  %914 = add i64 %913, 1, !dbg !1972
  store i64 %914, i64* %21, align 8, !dbg !1972
  br label %915, !dbg !1972

915:                                              ; preds = %912
  br label %916, !dbg !1963

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !1973
  %918 = load i64, i64* %12, align 8, !dbg !1973
  %919 = icmp ult i64 %917, %918, !dbg !1973
  br i1 %919, label %920, label %924, !dbg !1976

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !1973
  %922 = load i64, i64* %21, align 8, !dbg !1973
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !1973
  store i8 39, i8* %923, align 1, !dbg !1973
  br label %924, !dbg !1973

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !1976
  %926 = add i64 %925, 1, !dbg !1976
  store i64 %926, i64* %21, align 8, !dbg !1976
  br label %927, !dbg !1976

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !1963
  br label %928, !dbg !1963

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !1960

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !1977
  %931 = load i64, i64* %12, align 8, !dbg !1977
  %932 = icmp ult i64 %930, %931, !dbg !1977
  br i1 %932, label %933, label %937, !dbg !1980

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !1977
  %935 = load i64, i64* %21, align 8, !dbg !1977
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !1977
  store i8 92, i8* %936, align 1, !dbg !1977
  br label %937, !dbg !1977

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !1980
  %939 = add i64 %938, 1, !dbg !1980
  store i64 %939, i64* %21, align 8, !dbg !1980
  br label %940, !dbg !1980

940:                                              ; preds = %937
  br label %941, !dbg !1960

941:                                              ; preds = %940
  br label %942, !dbg !1960

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !1981), !dbg !1982
  br label %943, !dbg !1983

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !1984
  %945 = trunc i8 %944 to i1, !dbg !1984
  br i1 %945, label %946, label %974, !dbg !1984

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !1984
  %948 = trunc i8 %947 to i1, !dbg !1984
  br i1 %948, label %974, label %949, !dbg !1987

949:                                              ; preds = %946
  br label %950, !dbg !1988

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !1990
  %952 = load i64, i64* %12, align 8, !dbg !1990
  %953 = icmp ult i64 %951, %952, !dbg !1990
  br i1 %953, label %954, label %958, !dbg !1993

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !1990
  %956 = load i64, i64* %21, align 8, !dbg !1990
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !1990
  store i8 39, i8* %957, align 1, !dbg !1990
  br label %958, !dbg !1990

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !1993
  %960 = add i64 %959, 1, !dbg !1993
  store i64 %960, i64* %21, align 8, !dbg !1993
  br label %961, !dbg !1993

961:                                              ; preds = %958
  br label %962, !dbg !1988

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !1994
  %964 = load i64, i64* %12, align 8, !dbg !1994
  %965 = icmp ult i64 %963, %964, !dbg !1994
  br i1 %965, label %966, label %970, !dbg !1997

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !1994
  %968 = load i64, i64* %21, align 8, !dbg !1994
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !1994
  store i8 39, i8* %969, align 1, !dbg !1994
  br label %970, !dbg !1994

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !1997
  %972 = add i64 %971, 1, !dbg !1997
  store i64 %972, i64* %21, align 8, !dbg !1997
  br label %973, !dbg !1997

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !1988
  br label %974, !dbg !1988

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !1987

975:                                              ; preds = %974
  br label %976, !dbg !1998

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !1999
  %978 = load i64, i64* %12, align 8, !dbg !1999
  %979 = icmp ult i64 %977, %978, !dbg !1999
  br i1 %979, label %980, label %985, !dbg !2002

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !1999
  %982 = load i8*, i8** %11, align 8, !dbg !1999
  %983 = load i64, i64* %21, align 8, !dbg !1999
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !1999
  store i8 %981, i8* %984, align 1, !dbg !1999
  br label %985, !dbg !1999

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2002
  %987 = add i64 %986, 1, !dbg !2002
  store i64 %987, i64* %21, align 8, !dbg !2002
  br label %988, !dbg !2002

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2003
  %990 = trunc i8 %989 to i1, !dbg !2003
  br i1 %990, label %992, label %991, !dbg !2005

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2006
  br label %992, !dbg !2007

992:                                              ; preds = %991, %988
  br label %993, !dbg !2008

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2009
  %995 = add i64 %994, 1, !dbg !2009
  store i64 %995, i64* %31, align 8, !dbg !2009
  br label %139, !dbg !2010, !llvm.loop !2011

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2013
  %998 = icmp eq i64 %997, 0, !dbg !2015
  br i1 %998, label %999, label %1006, !dbg !2016

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2017
  %1001 = icmp eq i32 %1000, 2, !dbg !2018
  br i1 %1001, label %1002, label %1006, !dbg !2019

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2020
  %1004 = trunc i8 %1003 to i1, !dbg !2020
  br i1 %1004, label %1005, label %1006, !dbg !2021

1005:                                             ; preds = %1002
  br label %1078, !dbg !2022

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2023
  %1008 = icmp eq i32 %1007, 2, !dbg !2025
  br i1 %1008, label %1009, label %1038, !dbg !2026

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2027
  %1011 = trunc i8 %1010 to i1, !dbg !2027
  br i1 %1011, label %1038, label %1012, !dbg !2028

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2029
  %1014 = trunc i8 %1013 to i1, !dbg !2029
  br i1 %1014, label %1015, label %1038, !dbg !2030

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2031
  %1017 = trunc i8 %1016 to i1, !dbg !2031
  br i1 %1017, label %1018, label %1028, !dbg !2034

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2035
  %1020 = load i64, i64* %22, align 8, !dbg !2036
  %1021 = load i8*, i8** %13, align 8, !dbg !2037
  %1022 = load i64, i64* %14, align 8, !dbg !2038
  %1023 = load i32, i32* %16, align 4, !dbg !2039
  %1024 = load i32*, i32** %17, align 8, !dbg !2040
  %1025 = load i8*, i8** %18, align 8, !dbg !2041
  %1026 = load i8*, i8** %19, align 8, !dbg !2042
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2043
  store i64 %1027, i64* %10, align 8, !dbg !2044
  br label %1096, !dbg !2044

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2045
  %1030 = icmp ne i64 %1029, 0, !dbg !2045
  br i1 %1030, label %1036, label %1031, !dbg !2047

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2048
  %1033 = icmp ne i64 %1032, 0, !dbg !2048
  br i1 %1033, label %1034, label %1036, !dbg !2049

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2050
  store i64 %1035, i64* %12, align 8, !dbg !2052
  store i64 0, i64* %21, align 8, !dbg !2053
  br label %51, !dbg !2054

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2055

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2056
  %1040 = icmp ne i8* %1039, null, !dbg !2056
  br i1 %1040, label %1041, label %1068, !dbg !2058

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2059
  %1043 = trunc i8 %1042 to i1, !dbg !2059
  br i1 %1043, label %1068, label %1044, !dbg !2060

1044:                                             ; preds = %1041
  br label %1045, !dbg !2061

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2062
  %1047 = load i8, i8* %1046, align 1, !dbg !2065
  %1048 = icmp ne i8 %1047, 0, !dbg !2066
  br i1 %1048, label %1049, label %1067, !dbg !2066

1049:                                             ; preds = %1045
  br label %1050, !dbg !2067

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2068
  %1052 = load i64, i64* %12, align 8, !dbg !2068
  %1053 = icmp ult i64 %1051, %1052, !dbg !2068
  br i1 %1053, label %1054, label %1060, !dbg !2071

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2068
  %1056 = load i8, i8* %1055, align 1, !dbg !2068
  %1057 = load i8*, i8** %11, align 8, !dbg !2068
  %1058 = load i64, i64* %21, align 8, !dbg !2068
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2068
  store i8 %1056, i8* %1059, align 1, !dbg !2068
  br label %1060, !dbg !2068

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2071
  %1062 = add i64 %1061, 1, !dbg !2071
  store i64 %1062, i64* %21, align 8, !dbg !2071
  br label %1063, !dbg !2071

1063:                                             ; preds = %1060
  br label %1064, !dbg !2071

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2072
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2072
  store i8* %1066, i8** %23, align 8, !dbg !2072
  br label %1045, !dbg !2073, !llvm.loop !2074

1067:                                             ; preds = %1045
  br label %1068, !dbg !2075

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2076
  %1070 = load i64, i64* %12, align 8, !dbg !2078
  %1071 = icmp ult i64 %1069, %1070, !dbg !2079
  br i1 %1071, label %1072, label %1076, !dbg !2080

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2081
  %1074 = load i64, i64* %21, align 8, !dbg !2082
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2081
  store i8 0, i8* %1075, align 1, !dbg !2083
  br label %1076, !dbg !2081

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2084
  store i64 %1077, i64* %10, align 8, !dbg !2085
  br label %1096, !dbg !2085

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2086), !dbg !2087
  %1079 = load i32, i32* %15, align 4, !dbg !2088
  %1080 = icmp eq i32 %1079, 2, !dbg !2090
  br i1 %1080, label %1081, label %1085, !dbg !2091

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2092
  %1083 = trunc i8 %1082 to i1, !dbg !2092
  br i1 %1083, label %1084, label %1085, !dbg !2093

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2094
  br label %1085, !dbg !2095

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2096
  %1087 = load i64, i64* %12, align 8, !dbg !2097
  %1088 = load i8*, i8** %13, align 8, !dbg !2098
  %1089 = load i64, i64* %14, align 8, !dbg !2099
  %1090 = load i32, i32* %15, align 4, !dbg !2100
  %1091 = load i32, i32* %16, align 4, !dbg !2101
  %1092 = and i32 %1091, -3, !dbg !2102
  %1093 = load i8*, i8** %18, align 8, !dbg !2103
  %1094 = load i8*, i8** %19, align 8, !dbg !2104
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2105
  store i64 %1095, i64* %10, align 8, !dbg !2106
  br label %1096, !dbg !2106

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2107
  ret i64 %1097, !dbg !2107
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2108, metadata !DIExpression()), !dbg !2109
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2110, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2112, metadata !DIExpression()), !dbg !2113
  %9 = load i8*, i8** %4, align 8, !dbg !2114
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.94, i64 0, i64 0), i8* noundef %9) #18, !dbg !2114
  store i8* %10, i8** %6, align 8, !dbg !2113
  %11 = load i8*, i8** %6, align 8, !dbg !2115
  %12 = load i8*, i8** %4, align 8, !dbg !2117
  %13 = icmp ne i8* %11, %12, !dbg !2118
  br i1 %13, label %14, label %16, !dbg !2119

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2120
  store i8* %15, i8** %3, align 8, !dbg !2121
  br label %37, !dbg !2121

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2122, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2124, metadata !DIExpression()), !dbg !2125
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2126
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2127
  %18 = icmp eq i64 %17, 3, !dbg !2129
  br i1 %18, label %19, label %32, !dbg !2130

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2131
  %21 = icmp eq i32 %20, 8216, !dbg !2132
  br i1 %21, label %22, label %32, !dbg !2133

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2134
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2134
  %25 = load i8, i8* %24, align 1, !dbg !2134
  %26 = zext i8 %25 to i32, !dbg !2134
  %27 = icmp eq i32 %26, 39, !dbg !2135
  %28 = zext i1 %27 to i32, !dbg !2135
  %29 = sext i32 %28 to i64, !dbg !2136
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2136
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2136
  store i8* %31, i8** %3, align 8, !dbg !2137
  br label %37, !dbg !2137

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2138
  %34 = icmp eq i32 %33, 9, !dbg !2139
  %35 = zext i1 %34 to i64, !dbg !2138
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.91, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), !dbg !2138
  store i8* %36, i8** %3, align 8, !dbg !2140
  br label %37, !dbg !2140

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2141
  ret i8* %38, !dbg !2141
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2142 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2145, metadata !DIExpression()), !dbg !2146
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2147, metadata !DIExpression()), !dbg !2148
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2149, metadata !DIExpression()), !dbg !2150
  %7 = load i8*, i8** %4, align 8, !dbg !2151
  %8 = load i64, i64* %5, align 8, !dbg !2152
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2153
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2154
  ret i8* %10, !dbg !2155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2156 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2159, metadata !DIExpression()), !dbg !2160
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2161, metadata !DIExpression()), !dbg !2162
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2163, metadata !DIExpression()), !dbg !2164
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2165, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2167, metadata !DIExpression()), !dbg !2168
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2169
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2169
  br i1 %15, label %16, label %18, !dbg !2169

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2170
  br label %19, !dbg !2169

18:                                               ; preds = %4
  br label %19, !dbg !2169

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2169
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2168
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2171, metadata !DIExpression()), !dbg !2172
  %21 = call i32* @__errno_location() #21, !dbg !2173
  %22 = load i32, i32* %21, align 4, !dbg !2173
  store i32 %22, i32* %10, align 4, !dbg !2172
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2174, metadata !DIExpression()), !dbg !2175
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2176
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2177
  %25 = load i32, i32* %24, align 4, !dbg !2177
  %26 = load i64*, i64** %7, align 8, !dbg !2178
  %27 = icmp ne i64* %26, null, !dbg !2178
  %28 = zext i1 %27 to i64, !dbg !2178
  %29 = select i1 %27, i32 0, i32 1, !dbg !2178
  %30 = or i32 %25, %29, !dbg !2179
  store i32 %30, i32* %11, align 4, !dbg !2175
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2180, metadata !DIExpression()), !dbg !2181
  %31 = load i8*, i8** %5, align 8, !dbg !2182
  %32 = load i64, i64* %6, align 8, !dbg !2183
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2184
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2185
  %35 = load i32, i32* %34, align 8, !dbg !2185
  %36 = load i32, i32* %11, align 4, !dbg !2186
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2187
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2188
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2187
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2189
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2190
  %42 = load i8*, i8** %41, align 8, !dbg !2190
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2191
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2192
  %45 = load i8*, i8** %44, align 8, !dbg !2192
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2193
  %47 = add i64 %46, 1, !dbg !2194
  store i64 %47, i64* %12, align 8, !dbg !2181
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2195, metadata !DIExpression()), !dbg !2196
  %48 = load i64, i64* %12, align 8, !dbg !2197
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2198
  store i8* %49, i8** %13, align 8, !dbg !2196
  %50 = load i8*, i8** %13, align 8, !dbg !2199
  %51 = load i64, i64* %12, align 8, !dbg !2200
  %52 = load i8*, i8** %5, align 8, !dbg !2201
  %53 = load i64, i64* %6, align 8, !dbg !2202
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2203
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2204
  %56 = load i32, i32* %55, align 8, !dbg !2204
  %57 = load i32, i32* %11, align 4, !dbg !2205
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2206
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2207
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2206
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2208
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2209
  %63 = load i8*, i8** %62, align 8, !dbg !2209
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2210
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2211
  %66 = load i8*, i8** %65, align 8, !dbg !2211
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2212
  %68 = load i32, i32* %10, align 4, !dbg !2213
  %69 = call i32* @__errno_location() #21, !dbg !2214
  store i32 %68, i32* %69, align 4, !dbg !2215
  %70 = load i64*, i64** %7, align 8, !dbg !2216
  %71 = icmp ne i64* %70, null, !dbg !2216
  br i1 %71, label %72, label %76, !dbg !2218

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2219
  %74 = sub i64 %73, 1, !dbg !2220
  %75 = load i64*, i64** %7, align 8, !dbg !2221
  store i64 %74, i64* %75, align 8, !dbg !2222
  br label %76, !dbg !2223

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2224
  ret i8* %77, !dbg !2225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2226 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2227, metadata !DIExpression()), !dbg !2228
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2229
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2228
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2230, metadata !DIExpression()), !dbg !2232
  store i32 1, i32* %2, align 4, !dbg !2232
  br label %4, !dbg !2233

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2234
  %6 = load i32, i32* @nslots, align 4, !dbg !2236
  %7 = icmp slt i32 %5, %6, !dbg !2237
  br i1 %7, label %8, label %18, !dbg !2238

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2239
  %10 = load i32, i32* %2, align 4, !dbg !2240
  %11 = sext i32 %10 to i64, !dbg !2239
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2239
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2241
  %14 = load i8*, i8** %13, align 8, !dbg !2241
  call void @free(i8* noundef %14) #18, !dbg !2242
  br label %15, !dbg !2242

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2243
  %17 = add nsw i32 %16, 1, !dbg !2243
  store i32 %17, i32* %2, align 4, !dbg !2243
  br label %4, !dbg !2244, !llvm.loop !2245

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2247
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2247
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2249
  %22 = load i8*, i8** %21, align 8, !dbg !2249
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2250
  br i1 %23, label %24, label %29, !dbg !2251

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2252
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2252
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2254
  %28 = load i8*, i8** %27, align 8, !dbg !2254
  call void @free(i8* noundef %28) #18, !dbg !2255
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2256
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2257
  br label %29, !dbg !2258

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2259
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2261
  br i1 %31, label %32, label %35, !dbg !2262

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2263
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2263
  call void @free(i8* noundef %34) #18, !dbg !2265
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2266
  br label %35, !dbg !2267

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2268
  ret void, !dbg !2269
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2270 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2273, metadata !DIExpression()), !dbg !2274
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2275, metadata !DIExpression()), !dbg !2276
  %5 = load i32, i32* %3, align 4, !dbg !2277
  %6 = load i8*, i8** %4, align 8, !dbg !2278
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2279
  ret i8* %7, !dbg !2280
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2281 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2284, metadata !DIExpression()), !dbg !2285
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2286, metadata !DIExpression()), !dbg !2287
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2288, metadata !DIExpression()), !dbg !2289
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2290, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2292, metadata !DIExpression()), !dbg !2293
  %18 = call i32* @__errno_location() #21, !dbg !2294
  %19 = load i32, i32* %18, align 4, !dbg !2294
  store i32 %19, i32* %9, align 4, !dbg !2293
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2295, metadata !DIExpression()), !dbg !2296
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2297
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2296
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2298, metadata !DIExpression()), !dbg !2299
  store i32 2147483647, i32* %11, align 4, !dbg !2299
  %21 = load i32, i32* %5, align 4, !dbg !2300
  %22 = icmp sle i32 0, %21, !dbg !2302
  br i1 %22, label %23, label %27, !dbg !2303

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2304
  %25 = load i32, i32* %11, align 4, !dbg !2305
  %26 = icmp slt i32 %24, %25, !dbg !2306
  br i1 %26, label %28, label %27, !dbg !2307

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2308
  unreachable, !dbg !2308

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2309
  %30 = load i32, i32* %5, align 4, !dbg !2311
  %31 = icmp sle i32 %29, %30, !dbg !2312
  br i1 %31, label %32, label %73, !dbg !2313

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2314, metadata !DIExpression()), !dbg !2316
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2317
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2318
  %35 = zext i1 %34 to i8, !dbg !2316
  store i8 %35, i8* %12, align 1, !dbg !2316
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2319, metadata !DIExpression()), !dbg !2320
  %36 = load i32, i32* @nslots, align 4, !dbg !2321
  %37 = sext i32 %36 to i64, !dbg !2321
  store i64 %37, i64* %13, align 8, !dbg !2320
  %38 = load i8, i8* %12, align 1, !dbg !2322
  %39 = trunc i8 %38 to i1, !dbg !2322
  br i1 %39, label %40, label %41, !dbg !2322

40:                                               ; preds = %32
  br label %43, !dbg !2322

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2323
  br label %43, !dbg !2322

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2322
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2322
  %46 = load i32, i32* %5, align 4, !dbg !2324
  %47 = load i32, i32* @nslots, align 4, !dbg !2325
  %48 = sub nsw i32 %46, %47, !dbg !2326
  %49 = add nsw i32 %48, 1, !dbg !2327
  %50 = sext i32 %49 to i64, !dbg !2324
  %51 = load i32, i32* %11, align 4, !dbg !2328
  %52 = sext i32 %51 to i64, !dbg !2328
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2329
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2329
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2330
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2331
  %55 = load i8, i8* %12, align 1, !dbg !2332
  %56 = trunc i8 %55 to i1, !dbg !2332
  br i1 %56, label %57, label %60, !dbg !2334

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2335
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2336
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2336
  br label %60, !dbg !2337

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2338
  %62 = load i32, i32* @nslots, align 4, !dbg !2339
  %63 = sext i32 %62 to i64, !dbg !2340
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2340
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2341
  %66 = load i64, i64* %13, align 8, !dbg !2342
  %67 = load i32, i32* @nslots, align 4, !dbg !2343
  %68 = sext i32 %67 to i64, !dbg !2343
  %69 = sub nsw i64 %66, %68, !dbg !2344
  %70 = mul i64 %69, 16, !dbg !2345
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2341
  %71 = load i64, i64* %13, align 8, !dbg !2346
  %72 = trunc i64 %71 to i32, !dbg !2346
  store i32 %72, i32* @nslots, align 4, !dbg !2347
  br label %73, !dbg !2348

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2349, metadata !DIExpression()), !dbg !2351
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2352
  %75 = load i32, i32* %5, align 4, !dbg !2353
  %76 = sext i32 %75 to i64, !dbg !2352
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2352
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2354
  %79 = load i64, i64* %78, align 8, !dbg !2354
  store i64 %79, i64* %14, align 8, !dbg !2351
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2355, metadata !DIExpression()), !dbg !2356
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2357
  %81 = load i32, i32* %5, align 4, !dbg !2358
  %82 = sext i32 %81 to i64, !dbg !2357
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2357
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2359
  %85 = load i8*, i8** %84, align 8, !dbg !2359
  store i8* %85, i8** %15, align 8, !dbg !2356
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2360, metadata !DIExpression()), !dbg !2361
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2362
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2363
  %88 = load i32, i32* %87, align 4, !dbg !2363
  %89 = or i32 %88, 1, !dbg !2364
  store i32 %89, i32* %16, align 4, !dbg !2361
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2365, metadata !DIExpression()), !dbg !2366
  %90 = load i8*, i8** %15, align 8, !dbg !2367
  %91 = load i64, i64* %14, align 8, !dbg !2368
  %92 = load i8*, i8** %6, align 8, !dbg !2369
  %93 = load i64, i64* %7, align 8, !dbg !2370
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2371
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2372
  %96 = load i32, i32* %95, align 8, !dbg !2372
  %97 = load i32, i32* %16, align 4, !dbg !2373
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2374
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2375
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2374
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2376
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2377
  %103 = load i8*, i8** %102, align 8, !dbg !2377
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2378
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2379
  %106 = load i8*, i8** %105, align 8, !dbg !2379
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2380
  store i64 %107, i64* %17, align 8, !dbg !2366
  %108 = load i64, i64* %14, align 8, !dbg !2381
  %109 = load i64, i64* %17, align 8, !dbg !2383
  %110 = icmp ule i64 %108, %109, !dbg !2384
  br i1 %110, label %111, label %149, !dbg !2385

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2386
  %113 = add i64 %112, 1, !dbg !2388
  store i64 %113, i64* %14, align 8, !dbg !2389
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2390
  %115 = load i32, i32* %5, align 4, !dbg !2391
  %116 = sext i32 %115 to i64, !dbg !2390
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2390
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2392
  store i64 %113, i64* %118, align 8, !dbg !2393
  %119 = load i8*, i8** %15, align 8, !dbg !2394
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2396
  br i1 %120, label %121, label %123, !dbg !2397

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2398
  call void @free(i8* noundef %122) #18, !dbg !2399
  br label %123, !dbg !2399

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2400
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2401
  store i8* %125, i8** %15, align 8, !dbg !2402
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2403
  %127 = load i32, i32* %5, align 4, !dbg !2404
  %128 = sext i32 %127 to i64, !dbg !2403
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2403
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2405
  store i8* %125, i8** %130, align 8, !dbg !2406
  %131 = load i8*, i8** %15, align 8, !dbg !2407
  %132 = load i64, i64* %14, align 8, !dbg !2408
  %133 = load i8*, i8** %6, align 8, !dbg !2409
  %134 = load i64, i64* %7, align 8, !dbg !2410
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2411
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2412
  %137 = load i32, i32* %136, align 8, !dbg !2412
  %138 = load i32, i32* %16, align 4, !dbg !2413
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2414
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2415
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2414
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2416
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2417
  %144 = load i8*, i8** %143, align 8, !dbg !2417
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2418
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2419
  %147 = load i8*, i8** %146, align 8, !dbg !2419
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2420
  br label %149, !dbg !2421

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2422
  %151 = call i32* @__errno_location() #21, !dbg !2423
  store i32 %150, i32* %151, align 4, !dbg !2424
  %152 = load i8*, i8** %15, align 8, !dbg !2425
  ret i8* %152, !dbg !2426
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2427 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2430, metadata !DIExpression()), !dbg !2431
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2432, metadata !DIExpression()), !dbg !2433
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2434, metadata !DIExpression()), !dbg !2435
  %7 = load i32, i32* %4, align 4, !dbg !2436
  %8 = load i8*, i8** %5, align 8, !dbg !2437
  %9 = load i64, i64* %6, align 8, !dbg !2438
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2439
  ret i8* %10, !dbg !2440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2441 {
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
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !2803
  br label %26, !dbg !2803

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2804
  %23 = load i8*, i8** %9, align 8, !dbg !2805
  %24 = load i8*, i8** %10, align 8, !dbg !2806
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.102, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !2807
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2808
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.104, i64 0, i64 0)) #18, !dbg !2809
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !2810
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2811
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.105, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !2811
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2812
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.106, i64 0, i64 0)) #18, !dbg !2813
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.107, i64 0, i64 0)), !dbg !2814
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2815
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.105, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !2815
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
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.108, i64 0, i64 0)) #18, !dbg !2821
  %42 = load i8**, i8*** %11, align 8, !dbg !2822
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !2822
  %44 = load i8*, i8** %43, align 8, !dbg !2822
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !2823
  br label %241, !dbg !2824

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2825
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.109, i64 0, i64 0)) #18, !dbg !2826
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
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.110, i64 0, i64 0)) #18, !dbg !2832
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
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.111, i64 0, i64 0)) #18, !dbg !2839
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
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.112, i64 0, i64 0)) #18, !dbg !2847
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
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.113, i64 0, i64 0)) #18, !dbg !2856
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
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.114, i64 0, i64 0)) #18, !dbg !2866
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
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.115, i64 0, i64 0)) #18, !dbg !2877
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
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.116, i64 0, i64 0)) #18, !dbg !2889
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
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.117, i64 0, i64 0)) #18, !dbg !2902
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
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.105, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3026
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.122, i64 0, i64 0)) #18, !dbg !3027
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.123, i64 0, i64 0)), !dbg !3028
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.124, i64 0, i64 0)) #18, !dbg !3029
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.126, i64 0, i64 0)), !dbg !3030
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.127, i64 0, i64 0)) #18, !dbg !3031
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.128, i64 0, i64 0)), !dbg !3032
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

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

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
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !242 {
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
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !249 {
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
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.139, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.140, i64 0, i64 0)) #18, !dbg !3392
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.141, i64 0, i64 0), i8* noundef %4), !dbg !3392
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3394 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3400, metadata !DIExpression()), !dbg !3401
  %3 = load i32, i32* %2, align 4, !dbg !3402
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3403
  ret i32 %4, !dbg !3404
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3405 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3442, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3444, metadata !DIExpression()), !dbg !3446
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3447
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3448
  %9 = icmp ne i64 %8, 0, !dbg !3449
  %10 = zext i1 %9 to i8, !dbg !3446
  store i8 %10, i8* %4, align 1, !dbg !3446
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3450, metadata !DIExpression()), !dbg !3451
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3452
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3452
  %13 = icmp ne i32 %12, 0, !dbg !3453
  %14 = zext i1 %13 to i8, !dbg !3451
  store i8 %14, i8* %5, align 1, !dbg !3451
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3454, metadata !DIExpression()), !dbg !3455
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3456
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3457
  %17 = icmp ne i32 %16, 0, !dbg !3458
  %18 = zext i1 %17 to i8, !dbg !3455
  store i8 %18, i8* %6, align 1, !dbg !3455
  %19 = load i8, i8* %5, align 1, !dbg !3459
  %20 = trunc i8 %19 to i1, !dbg !3459
  br i1 %20, label %31, label %21, !dbg !3461

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3462
  %23 = trunc i8 %22 to i1, !dbg !3462
  br i1 %23, label %24, label %37, !dbg !3463

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3464
  %26 = trunc i8 %25 to i1, !dbg !3464
  br i1 %26, label %31, label %27, !dbg !3465

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3466
  %29 = load i32, i32* %28, align 4, !dbg !3466
  %30 = icmp ne i32 %29, 9, !dbg !3467
  br i1 %30, label %31, label %37, !dbg !3468

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3469
  %33 = trunc i8 %32 to i1, !dbg !3469
  br i1 %33, label %36, label %34, !dbg !3472

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3473
  store i32 0, i32* %35, align 4, !dbg !3474
  br label %36, !dbg !3473

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3475
  br label %38, !dbg !3475

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3476
  br label %38, !dbg !3476

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3477
  ret i32 %39, !dbg !3477
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3478 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3515, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3517, metadata !DIExpression()), !dbg !3518
  store i32 0, i32* %4, align 4, !dbg !3518
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3519, metadata !DIExpression()), !dbg !3520
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3521
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3522
  store i32 %8, i32* %5, align 4, !dbg !3520
  %9 = load i32, i32* %5, align 4, !dbg !3523
  %10 = icmp slt i32 %9, 0, !dbg !3525
  br i1 %10, label %11, label %14, !dbg !3526

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3527
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3528
  store i32 %13, i32* %2, align 4, !dbg !3529
  br label %40, !dbg !3529

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3530
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3530
  %17 = icmp ne i32 %16, 0, !dbg !3530
  br i1 %17, label %18, label %23, !dbg !3532

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3533
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3534
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3535
  %22 = icmp ne i64 %21, -1, !dbg !3536
  br i1 %22, label %23, label %30, !dbg !3537

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3538
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3539
  %26 = icmp ne i32 %25, 0, !dbg !3539
  br i1 %26, label %27, label %30, !dbg !3540

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3541
  %29 = load i32, i32* %28, align 4, !dbg !3541
  store i32 %29, i32* %4, align 4, !dbg !3542
  br label %30, !dbg !3543

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3544, metadata !DIExpression()), !dbg !3545
  store i32 0, i32* %6, align 4, !dbg !3545
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3546
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3547
  store i32 %32, i32* %6, align 4, !dbg !3548
  %33 = load i32, i32* %4, align 4, !dbg !3549
  %34 = icmp ne i32 %33, 0, !dbg !3551
  br i1 %34, label %35, label %38, !dbg !3552

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3553
  %37 = call i32* @__errno_location() #21, !dbg !3555
  store i32 %36, i32* %37, align 4, !dbg !3556
  store i32 -1, i32* %6, align 4, !dbg !3557
  br label %38, !dbg !3558

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3559
  store i32 %39, i32* %2, align 4, !dbg !3560
  br label %40, !dbg !3560

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3561
  ret i32 %41, !dbg !3561
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3562 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3599, metadata !DIExpression()), !dbg !3600
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3601
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3603
  br i1 %5, label %10, label %6, !dbg !3604

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3605
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3605
  %9 = icmp ne i32 %8, 0, !dbg !3605
  br i1 %9, label %13, label %10, !dbg !3606

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3607
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3608
  store i32 %12, i32* %2, align 4, !dbg !3609
  br label %17, !dbg !3609

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3610
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3611
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3612
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3613
  store i32 %16, i32* %2, align 4, !dbg !3614
  br label %17, !dbg !3614

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3615
  ret i32 %18, !dbg !3615
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3616 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3619, metadata !DIExpression()), !dbg !3620
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3621
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3623
  %5 = load i32, i32* %4, align 8, !dbg !3623
  %6 = and i32 %5, 256, !dbg !3624
  %7 = icmp ne i32 %6, 0, !dbg !3624
  br i1 %7, label %8, label %11, !dbg !3625

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3626
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3627
  br label %11, !dbg !3627

11:                                               ; preds = %8, %1
  ret void, !dbg !3628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3629 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3667, metadata !DIExpression()), !dbg !3668
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3669, metadata !DIExpression()), !dbg !3670
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3671, metadata !DIExpression()), !dbg !3672
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3673
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3675
  %11 = load i8*, i8** %10, align 8, !dbg !3675
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3676
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3677
  %14 = load i8*, i8** %13, align 8, !dbg !3677
  %15 = icmp eq i8* %11, %14, !dbg !3678
  br i1 %15, label %16, label %46, !dbg !3679

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3680
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3681
  %19 = load i8*, i8** %18, align 8, !dbg !3681
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3682
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3683
  %22 = load i8*, i8** %21, align 8, !dbg !3683
  %23 = icmp eq i8* %19, %22, !dbg !3684
  br i1 %23, label %24, label %46, !dbg !3685

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3686
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3687
  %27 = load i8*, i8** %26, align 8, !dbg !3687
  %28 = icmp eq i8* %27, null, !dbg !3688
  br i1 %28, label %29, label %46, !dbg !3689

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3690, metadata !DIExpression()), !dbg !3692
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3693
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3694
  %32 = load i64, i64* %6, align 8, !dbg !3695
  %33 = load i32, i32* %7, align 4, !dbg !3696
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3697
  store i64 %34, i64* %8, align 8, !dbg !3692
  %35 = load i64, i64* %8, align 8, !dbg !3698
  %36 = icmp eq i64 %35, -1, !dbg !3700
  br i1 %36, label %37, label %38, !dbg !3701

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3702
  br label %51, !dbg !3702

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3704
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3705
  %41 = load i32, i32* %40, align 8, !dbg !3706
  %42 = and i32 %41, -17, !dbg !3706
  store i32 %42, i32* %40, align 8, !dbg !3706
  %43 = load i64, i64* %8, align 8, !dbg !3707
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3708
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3709
  store i64 %43, i64* %45, align 8, !dbg !3710
  store i32 0, i32* %4, align 4, !dbg !3711
  br label %51, !dbg !3711

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3712
  %48 = load i64, i64* %6, align 8, !dbg !3713
  %49 = load i32, i32* %7, align 4, !dbg !3714
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3715
  store i32 %50, i32* %4, align 4, !dbg !3716
  br label %51, !dbg !3716

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3717
  ret i32 %52, !dbg !3717
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3718 {
  %1 = call i32* @__errno_location() #21, !dbg !3721
  store i32 12, i32* %1, align 4, !dbg !3722
  ret i8* null, !dbg !3723
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3724 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3725, metadata !DIExpression()), !dbg !3726
  %3 = load i64, i64* %2, align 8, !dbg !3727
  %4 = icmp ule i64 %3, -1, !dbg !3728
  br i1 %4, label %5, label %8, !dbg !3727

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3729
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3730
  br label %10, !dbg !3727

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !3731
  br label %10, !dbg !3727

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3727
  ret i8* %11, !dbg !3732
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3733 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3734, metadata !DIExpression()), !dbg !3735
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3736, metadata !DIExpression()), !dbg !3737
  %5 = load i64, i64* %4, align 8, !dbg !3738
  %6 = icmp ule i64 %5, -1, !dbg !3739
  br i1 %6, label %7, label %11, !dbg !3738

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3740
  %9 = load i64, i64* %4, align 8, !dbg !3741
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3742
  br label %13, !dbg !3738

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3743
  br label %13, !dbg !3738

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3738
  ret i8* %14, !dbg !3744
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3745 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3746, metadata !DIExpression()), !dbg !3747
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3748, metadata !DIExpression()), !dbg !3749
  %6 = load i64, i64* %4, align 8, !dbg !3750
  %7 = icmp ult i64 -1, %6, !dbg !3752
  br i1 %7, label %8, label %14, !dbg !3753

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3754
  %10 = icmp ne i64 %9, 0, !dbg !3757
  br i1 %10, label %11, label %13, !dbg !3758

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3759
  store i8* %12, i8** %3, align 8, !dbg !3760
  br label %27, !dbg !3760

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3761
  br label %14, !dbg !3762

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3763
  %16 = icmp ult i64 -1, %15, !dbg !3765
  br i1 %16, label %17, label %23, !dbg !3766

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3767
  %19 = icmp ne i64 %18, 0, !dbg !3770
  br i1 %19, label %20, label %22, !dbg !3771

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !3772
  store i8* %21, i8** %3, align 8, !dbg !3773
  br label %27, !dbg !3773

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3774
  br label %23, !dbg !3775

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !3776
  %25 = load i64, i64* %5, align 8, !dbg !3777
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !3778
  store i8* %26, i8** %3, align 8, !dbg !3779
  br label %27, !dbg !3779

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !3780
  ret i8* %28, !dbg !3780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3781 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3782, metadata !DIExpression()), !dbg !3783
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3784, metadata !DIExpression()), !dbg !3785
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3786, metadata !DIExpression()), !dbg !3787
  %7 = load i64, i64* %5, align 8, !dbg !3788
  %8 = icmp ule i64 %7, -1, !dbg !3789
  br i1 %8, label %9, label %17, !dbg !3790

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !3791
  %11 = icmp ule i64 %10, -1, !dbg !3792
  br i1 %11, label %12, label %17, !dbg !3788

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !3793
  %14 = load i64, i64* %5, align 8, !dbg !3794
  %15 = load i64, i64* %6, align 8, !dbg !3795
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !3796
  br label %19, !dbg !3788

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !3797
  br label %19, !dbg !3788

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !3788
  ret i8* %20, !dbg !3798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !3799 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3804, metadata !DIExpression()), !dbg !3805
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3806, metadata !DIExpression()), !dbg !3807
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3808, metadata !DIExpression()), !dbg !3809
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !3810, metadata !DIExpression()), !dbg !3811
  %11 = load i8*, i8** %7, align 8, !dbg !3812
  %12 = icmp eq i8* %11, null, !dbg !3814
  br i1 %12, label %13, label %14, !dbg !3815

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !3816
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.162, i64 0, i64 0), i8** %7, align 8, !dbg !3818
  store i64 1, i64* %8, align 8, !dbg !3819
  br label %14, !dbg !3820

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3821
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !3823
  br i1 %16, label %17, label %18, !dbg !3824

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !3825
  br label %18, !dbg !3826

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3827, metadata !DIExpression()), !dbg !3828
  %19 = load i32*, i32** %6, align 8, !dbg !3829
  %20 = load i8*, i8** %7, align 8, !dbg !3830
  %21 = load i64, i64* %8, align 8, !dbg !3831
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3832
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !3833
  store i64 %23, i64* %10, align 8, !dbg !3828
  %24 = load i64, i64* %10, align 8, !dbg !3834
  %25 = icmp ult i64 %24, -3, !dbg !3836
  br i1 %25, label %26, label %32, !dbg !3837

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3838
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !3839
  %29 = icmp ne i32 %28, 0, !dbg !3839
  br i1 %29, label %32, label %30, !dbg !3840

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3841
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !3842
  br label %32, !dbg !3842

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !3843
  %34 = icmp eq i64 %33, -3, !dbg !3845
  br i1 %34, label %35, label %36, !dbg !3846

35:                                               ; preds = %32
  call void @abort() #19, !dbg !3847
  unreachable, !dbg !3847

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !3848
  %38 = icmp ule i64 -2, %37, !dbg !3850
  br i1 %38, label %39, label %53, !dbg !3851

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !3852
  %41 = icmp ne i64 %40, 0, !dbg !3853
  br i1 %41, label %42, label %53, !dbg !3854

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !3855
  br i1 %43, label %53, label %44, !dbg !3856

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !3857
  %46 = icmp ne i32* %45, null, !dbg !3860
  br i1 %46, label %47, label %52, !dbg !3861

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !3862
  %49 = load i8, i8* %48, align 1, !dbg !3863
  %50 = zext i8 %49 to i32, !dbg !3864
  %51 = load i32*, i32** %6, align 8, !dbg !3865
  store i32 %50, i32* %51, align 4, !dbg !3866
  br label %52, !dbg !3867

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !3868
  br label %55, !dbg !3868

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !3869
  store i64 %54, i64* %5, align 8, !dbg !3870
  br label %55, !dbg !3870

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !3871
  ret i64 %56, !dbg !3871
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !3872 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !3887, metadata !DIExpression()), !dbg !3888
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !3889
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !3890
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !3890
  ret void, !dbg !3891
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3892 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3895, metadata !DIExpression()), !dbg !3896
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3897, metadata !DIExpression()), !dbg !3898
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3899, metadata !DIExpression()), !dbg !3900
  %7 = load i8*, i8** %4, align 8, !dbg !3901
  %8 = load i8*, i8** %5, align 8, !dbg !3902
  %9 = load i64, i64* %6, align 8, !dbg !3903
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !3904
  %11 = icmp ne i32 %10, 0, !dbg !3905
  %12 = xor i1 %11, true, !dbg !3905
  ret i1 %12, !dbg !3906
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3907 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3909, metadata !DIExpression()), !dbg !3910
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3911, metadata !DIExpression()), !dbg !3912
  %5 = load i8*, i8** %3, align 8, !dbg !3913
  %6 = load i64, i64* %4, align 8, !dbg !3914
  %7 = icmp ne i64 %6, 0, !dbg !3914
  br i1 %7, label %8, label %10, !dbg !3914

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !3915
  br label %11, !dbg !3914

10:                                               ; preds = %2
  br label %11, !dbg !3914

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !3914
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !3916
  ret i8* %13, !dbg !3917
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3918 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3919, metadata !DIExpression()), !dbg !3920
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3921, metadata !DIExpression()), !dbg !3922
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3923, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3925, metadata !DIExpression()), !dbg !3926
  %9 = load i64, i64* %7, align 8, !dbg !3927
  %10 = icmp ult i64 %9, 0, !dbg !3927
  br i1 %10, label %11, label %60, !dbg !3927

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !3927
  %13 = icmp ult i64 %12, 0, !dbg !3927
  br i1 %13, label %14, label %37, !dbg !3927

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !3927

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !3927
  %17 = load i64, i64* %7, align 8, !dbg !3927
  %18 = udiv i64 -1, %17, !dbg !3927
  %19 = icmp ult i64 %16, %18, !dbg !3927
  br i1 %19, label %92, label %96, !dbg !3927

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !3927

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !3927
  %23 = icmp ult i64 %22, 1, !dbg !3927
  br i1 %23, label %27, label %28, !dbg !3927

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !3927
  %26 = icmp ult i64 0, %25, !dbg !3927
  br i1 %26, label %27, label %28, !dbg !3927

27:                                               ; preds = %24, %21
  br label %32, !dbg !3927

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !3927
  %30 = sub i64 0, %29, !dbg !3927
  %31 = udiv i64 -1, %30, !dbg !3927
  br label %32, !dbg !3927

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !3927
  %34 = load i64, i64* %6, align 8, !dbg !3927
  %35 = sub i64 -1, %34, !dbg !3927
  %36 = icmp ule i64 %33, %35, !dbg !3927
  br i1 %36, label %92, label %96, !dbg !3927

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !3927

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !3927

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !3927

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !3927
  %42 = icmp eq i64 %41, -1, !dbg !3927
  br i1 %42, label %43, label %55, !dbg !3927

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !3927

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !3927
  %46 = add i64 %45, 0, !dbg !3927
  %47 = icmp ult i64 0, %46, !dbg !3927
  br i1 %47, label %92, label %96, !dbg !3927

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !3927
  %50 = icmp ult i64 0, %49, !dbg !3927
  br i1 %50, label %51, label %96, !dbg !3927

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !3927
  %53 = sub i64 %52, 1, !dbg !3927
  %54 = icmp ult i64 -1, %53, !dbg !3927
  br i1 %54, label %92, label %96, !dbg !3927

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !3927
  %57 = udiv i64 0, %56, !dbg !3927
  %58 = load i64, i64* %6, align 8, !dbg !3927
  %59 = icmp ult i64 %57, %58, !dbg !3927
  br i1 %59, label %92, label %96, !dbg !3927

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !3927
  %62 = icmp eq i64 %61, 0, !dbg !3927
  br i1 %62, label %63, label %64, !dbg !3927

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !3927

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !3927
  %66 = icmp ult i64 %65, 0, !dbg !3927
  br i1 %66, label %67, label %87, !dbg !3927

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !3927

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !3927

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !3927

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !3927
  %72 = icmp eq i64 %71, -1, !dbg !3927
  br i1 %72, label %73, label %82, !dbg !3927

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !3927

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !3927
  %76 = add i64 %75, 0, !dbg !3927
  %77 = icmp ult i64 0, %76, !dbg !3927
  br i1 %77, label %92, label %96, !dbg !3927

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !3927
  %80 = sub i64 %79, 1, !dbg !3927
  %81 = icmp ult i64 -1, %80, !dbg !3927
  br i1 %81, label %92, label %96, !dbg !3927

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !3927
  %84 = udiv i64 0, %83, !dbg !3927
  %85 = load i64, i64* %7, align 8, !dbg !3927
  %86 = icmp ult i64 %84, %85, !dbg !3927
  br i1 %86, label %92, label %96, !dbg !3927

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !3927
  %89 = udiv i64 -1, %88, !dbg !3927
  %90 = load i64, i64* %6, align 8, !dbg !3927
  %91 = icmp ult i64 %89, %90, !dbg !3927
  br i1 %91, label %92, label %96, !dbg !3927

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !3927
  %94 = load i64, i64* %7, align 8, !dbg !3927
  %95 = mul i64 %93, %94, !dbg !3927
  store i64 %95, i64* %8, align 8, !dbg !3927
  br label %100, !dbg !3927

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !3927
  %98 = load i64, i64* %7, align 8, !dbg !3927
  %99 = mul i64 %97, %98, !dbg !3927
  store i64 %99, i64* %8, align 8, !dbg !3927
  br label %100, !dbg !3927

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !3927
  %102 = icmp ne i32 %101, 0, !dbg !3927
  br i1 %102, label %103, label %105, !dbg !3929

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !3930
  store i32 12, i32* %104, align 4, !dbg !3932
  store i8* null, i8** %4, align 8, !dbg !3933
  br label %109, !dbg !3933

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !3934
  %107 = load i64, i64* %8, align 8, !dbg !3935
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !3936
  store i8* %108, i8** %4, align 8, !dbg !3937
  br label %109, !dbg !3937

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !3938
  ret i8* %110, !dbg !3938
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !3939 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3942, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !3944, metadata !DIExpression()), !dbg !3948
  %5 = load i32, i32* %3, align 4, !dbg !3949
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3951
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !3952
  %8 = icmp ne i32 %7, 0, !dbg !3952
  br i1 %8, label %9, label %10, !dbg !3953

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3954
  br label %18, !dbg !3954

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3955
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i64 0, i64 0)), !dbg !3957
  br i1 %12, label %17, label %13, !dbg !3958

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3959
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.174, i64 0, i64 0)), !dbg !3960
  br i1 %15, label %17, label %16, !dbg !3961

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !3962
  br label %18, !dbg !3962

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !3963
  br label %18, !dbg !3963

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !3964
  ret i1 %19, !dbg !3964
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !3965 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3968, metadata !DIExpression()), !dbg !3969
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3970, metadata !DIExpression()), !dbg !3971
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3972, metadata !DIExpression()), !dbg !3973
  %7 = load i32, i32* %4, align 4, !dbg !3974
  %8 = load i8*, i8** %5, align 8, !dbg !3975
  %9 = load i64, i64* %6, align 8, !dbg !3976
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3977
  ret i32 %10, !dbg !3978
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !3979 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3982, metadata !DIExpression()), !dbg !3983
  %3 = load i32, i32* %2, align 4, !dbg !3984
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !3985
  ret i8* %4, !dbg !3986
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !3987 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3988, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3990, metadata !DIExpression()), !dbg !3991
  %4 = load i32, i32* %2, align 4, !dbg !3992
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !3993
  store i8* %5, i8** %3, align 8, !dbg !3991
  %6 = load i8*, i8** %3, align 8, !dbg !3994
  ret i8* %6, !dbg !3995
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !3996 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3997, metadata !DIExpression()), !dbg !3998
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3999, metadata !DIExpression()), !dbg !4000
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4001, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4003, metadata !DIExpression()), !dbg !4004
  %10 = load i32, i32* %5, align 4, !dbg !4005
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4006
  store i8* %11, i8** %8, align 8, !dbg !4004
  %12 = load i8*, i8** %8, align 8, !dbg !4007
  %13 = icmp eq i8* %12, null, !dbg !4009
  br i1 %13, label %14, label %21, !dbg !4010

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4011
  %16 = icmp ugt i64 %15, 0, !dbg !4014
  br i1 %16, label %17, label %20, !dbg !4015

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4016
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4016
  store i8 0, i8* %19, align 1, !dbg !4017
  br label %20, !dbg !4016

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4018
  br label %45, !dbg !4018

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4019, metadata !DIExpression()), !dbg !4021
  %22 = load i8*, i8** %8, align 8, !dbg !4022
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4023
  store i64 %23, i64* %9, align 8, !dbg !4021
  %24 = load i64, i64* %9, align 8, !dbg !4024
  %25 = load i64, i64* %7, align 8, !dbg !4026
  %26 = icmp ult i64 %24, %25, !dbg !4027
  br i1 %26, label %27, label %32, !dbg !4028

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4029
  %29 = load i8*, i8** %8, align 8, !dbg !4031
  %30 = load i64, i64* %9, align 8, !dbg !4032
  %31 = add i64 %30, 1, !dbg !4033
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4034
  store i32 0, i32* %4, align 4, !dbg !4035
  br label %45, !dbg !4035

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4036
  %34 = icmp ugt i64 %33, 0, !dbg !4039
  br i1 %34, label %35, label %44, !dbg !4040

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4041
  %37 = load i8*, i8** %8, align 8, !dbg !4043
  %38 = load i64, i64* %7, align 8, !dbg !4044
  %39 = sub i64 %38, 1, !dbg !4045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4046
  %40 = load i8*, i8** %6, align 8, !dbg !4047
  %41 = load i64, i64* %7, align 8, !dbg !4048
  %42 = sub i64 %41, 1, !dbg !4049
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4047
  store i8 0, i8* %43, align 1, !dbg !4050
  br label %44, !dbg !4051

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4052
  br label %45, !dbg !4052

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4053
  ret i32 %46, !dbg !4053
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

!llvm.dbg.cu = !{!9, !36, !41, !49, !203, !228, !83, !100, !111, !118, !230, !232, !195, !238, !258, !260, !262, !264, !266, !268, !270, !209, !272, !274, !276, !278, !281, !283, !285}
!llvm.ident = !{!287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287, !287}
!llvm.module.flags = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}

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
!10 = !DIFile(filename: "src/hostid.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7f0e5f3aa5d6f632ed5741d47ec6b339")
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
!208 = distinct !DIGlobalVariable(name: "internal_state", scope: !209, file: !210, line: 97, type: !214, isLocal: true, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !211, globals: !213, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!211 = !{!29, !141, !212}
!212 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!213 = !{!207}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !216)
!215 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !218)
!217 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !218, file: !217, line: 15, baseType: !30, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !218, file: !217, line: 20, baseType: !222, size: 32, offset: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !217, line: 16, size: 32, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !222, file: !217, line: 18, baseType: !14, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !222, file: !217, line: 19, baseType: !226, size: 32)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !227)
!227 = !{!177}
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!229 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !234, retainedTypes: !51, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!234 = !{!235}
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !233, line: 40, baseType: !14, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !240, retainedTypes: !257, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!240 = !{!241, !248}
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !242, file: !239, line: 188, baseType: !14, size: 32, elements: !246)
!242 = distinct !DISubprogram(name: "x2nrealloc", scope: !239, file: !239, line: 176, type: !243, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!243 = !DISubroutineType(types: !244)
!244 = !{!29, !29, !245, !141}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!246 = !{!247}
!247 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !249, file: !239, line: 228, baseType: !14, size: 32, elements: !246)
!249 = distinct !DISubprogram(name: "xpalloc", scope: !239, file: !239, line: 223, type: !250, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!250 = !DISubroutineType(types: !251)
!251 = !{!29, !29, !252, !253, !255, !253}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !254, line: 130, baseType: !255)
!254 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !142, line: 35, baseType: !256)
!256 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!257 = !{!103, !29, !46, !256, !143}
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !51, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !51, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !51, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !280, splitDebugInlining: false, nameTableKind: None)
!279 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!280 = !{!46, !143, !29}
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !51, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!287 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!288 = !{i32 7, !"Dwarf Version", i32 5}
!289 = !{i32 2, !"Debug Info Version", i32 3}
!290 = !{i32 1, !"wchar_size", i32 4}
!291 = !{i32 1, !"branch-target-enforcement", i32 0}
!292 = !{i32 1, !"sign-return-address", i32 0}
!293 = !{i32 1, !"sign-return-address-all", i32 0}
!294 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!295 = !{i32 7, !"PIC Level", i32 2}
!296 = !{i32 7, !"PIE Level", i32 2}
!297 = !{i32 7, !"uwtable", i32 1}
!298 = !{i32 7, !"frame-pointer", i32 1}
!299 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 34, type: !300, scopeLine: 35, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !33)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !30}
!302 = !DILocalVariable(name: "status", arg: 1, scope: !299, file: !10, line: 34, type: !30)
!303 = !DILocation(line: 34, column: 12, scope: !299)
!304 = !DILocation(line: 36, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !299, file: !10, line: 36, column: 7)
!306 = !DILocation(line: 36, column: 14, scope: !305)
!307 = !DILocation(line: 36, column: 7, scope: !299)
!308 = !DILocation(line: 37, column: 5, scope: !305)
!309 = !DILocation(line: 37, column: 5, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !10, line: 37, column: 5)
!311 = !DILocation(line: 40, column: 15, scope: !312)
!312 = distinct !DILexicalBlock(scope: !305, file: !10, line: 39, column: 5)
!313 = !DILocation(line: 44, column: 5, scope: !312)
!314 = !DILocation(line: 40, column: 7, scope: !312)
!315 = !DILocation(line: 45, column: 7, scope: !312)
!316 = !DILocation(line: 46, column: 7, scope: !312)
!317 = !DILocation(line: 47, column: 7, scope: !312)
!318 = !DILocation(line: 49, column: 9, scope: !299)
!319 = !DILocation(line: 49, column: 3, scope: !299)
!320 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!321 = !DILocation(line: 573, column: 34, scope: !2)
!322 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!323 = !DILocation(line: 573, column: 55, scope: !2)
!324 = !DILocation(line: 581, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!326 = !DILocation(line: 581, column: 19, scope: !325)
!327 = !DILocation(line: 581, column: 7, scope: !2)
!328 = !DILocalVariable(name: "term", scope: !329, file: !3, line: 585, type: !6)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 582, column: 5)
!330 = !DILocation(line: 585, column: 19, scope: !329)
!331 = !DILocation(line: 585, column: 26, scope: !329)
!332 = !DILocation(line: 586, column: 23, scope: !329)
!333 = !DILocation(line: 586, column: 28, scope: !329)
!334 = !DILocation(line: 586, column: 33, scope: !329)
!335 = !DILocation(line: 586, column: 32, scope: !329)
!336 = !DILocation(line: 586, column: 38, scope: !329)
!337 = !DILocation(line: 586, column: 48, scope: !329)
!338 = !DILocation(line: 586, column: 41, scope: !329)
!339 = !DILocation(line: 586, column: 19, scope: !329)
!340 = !DILocation(line: 587, column: 5, scope: !329)
!341 = !DILocation(line: 588, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!343 = !DILocation(line: 588, column: 7, scope: !2)
!344 = !DILocation(line: 590, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !3, line: 589, column: 5)
!346 = !DILocation(line: 591, column: 7, scope: !345)
!347 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !46)
!348 = !DILocation(line: 594, column: 8, scope: !2)
!349 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!350 = !DILocation(line: 595, column: 15, scope: !2)
!351 = !DILocation(line: 595, column: 28, scope: !2)
!352 = !DILocation(line: 595, column: 45, scope: !2)
!353 = !DILocation(line: 595, column: 37, scope: !2)
!354 = !DILocation(line: 595, column: 35, scope: !2)
!355 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!356 = !DILocation(line: 596, column: 15, scope: !2)
!357 = !DILocation(line: 596, column: 37, scope: !2)
!358 = !DILocation(line: 596, column: 29, scope: !2)
!359 = !DILocation(line: 597, column: 8, scope: !360)
!360 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!361 = !DILocation(line: 597, column: 7, scope: !2)
!362 = !DILocation(line: 599, column: 21, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !3, line: 598, column: 5)
!364 = !DILocation(line: 599, column: 19, scope: !363)
!365 = !DILocation(line: 602, column: 20, scope: !363)
!366 = !DILocation(line: 603, column: 5, scope: !363)
!367 = !DILocation(line: 604, column: 12, scope: !368)
!368 = distinct !DILexicalBlock(scope: !360, file: !3, line: 604, column: 12)
!369 = !DILocation(line: 604, column: 27, scope: !368)
!370 = !DILocation(line: 604, column: 24, scope: !368)
!371 = !DILocation(line: 604, column: 12, scope: !360)
!372 = !DILocalVariable(name: "s", scope: !373, file: !3, line: 608, type: !6)
!373 = distinct !DILexicalBlock(scope: !368, file: !3, line: 605, column: 5)
!374 = !DILocation(line: 608, column: 19, scope: !373)
!375 = !DILocation(line: 608, column: 23, scope: !373)
!376 = !DILocalVariable(name: "spaces", scope: !373, file: !3, line: 609, type: !141)
!377 = !DILocation(line: 609, column: 14, scope: !373)
!378 = !DILocation(line: 610, column: 7, scope: !373)
!379 = !DILocation(line: 610, column: 14, scope: !373)
!380 = !DILocation(line: 610, column: 18, scope: !373)
!381 = !DILocation(line: 610, column: 16, scope: !373)
!382 = !DILocation(line: 610, column: 30, scope: !373)
!383 = !DILocation(line: 610, column: 33, scope: !373)
!384 = !DILocation(line: 610, column: 40, scope: !373)
!385 = !DILocation(line: 0, scope: !373)
!386 = !DILocation(line: 611, column: 21, scope: !373)
!387 = !DILocation(line: 611, column: 20, scope: !373)
!388 = !DILocation(line: 611, column: 19, scope: !373)
!389 = !DILocation(line: 611, column: 16, scope: !373)
!390 = distinct !{!390, !378, !386, !391}
!391 = !{!"llvm.loop.mustprogress"}
!392 = !DILocation(line: 612, column: 11, scope: !393)
!393 = distinct !DILexicalBlock(scope: !373, file: !3, line: 612, column: 11)
!394 = !DILocation(line: 612, column: 18, scope: !393)
!395 = !DILocation(line: 612, column: 11, scope: !373)
!396 = !DILocation(line: 615, column: 25, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !3, line: 613, column: 9)
!398 = !DILocation(line: 615, column: 23, scope: !397)
!399 = !DILocation(line: 616, column: 24, scope: !397)
!400 = !DILocation(line: 617, column: 9, scope: !397)
!401 = !DILocation(line: 618, column: 5, scope: !373)
!402 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !141)
!403 = !DILocation(line: 620, column: 10, scope: !2)
!404 = !DILocation(line: 620, column: 32, scope: !2)
!405 = !DILocation(line: 620, column: 23, scope: !2)
!406 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!407 = !DILocation(line: 625, column: 15, scope: !2)
!408 = !DILocation(line: 625, column: 27, scope: !2)
!409 = !DILocation(line: 625, column: 41, scope: !2)
!410 = !DILocation(line: 625, column: 39, scope: !2)
!411 = !DILocation(line: 626, column: 3, scope: !2)
!412 = !DILocation(line: 626, column: 11, scope: !2)
!413 = !DILocation(line: 626, column: 10, scope: !2)
!414 = !DILocation(line: 626, column: 21, scope: !2)
!415 = !DILocation(line: 626, column: 25, scope: !2)
!416 = !DILocation(line: 626, column: 24, scope: !2)
!417 = !DILocation(line: 626, column: 35, scope: !2)
!418 = !DILocation(line: 0, scope: !2)
!419 = !DILocation(line: 628, column: 12, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 628, column: 11)
!421 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!422 = !DILocation(line: 628, column: 11, scope: !420)
!423 = !DILocation(line: 628, column: 22, scope: !420)
!424 = !DILocation(line: 628, column: 29, scope: !420)
!425 = !DILocation(line: 628, column: 34, scope: !420)
!426 = !DILocation(line: 628, column: 44, scope: !420)
!427 = !DILocation(line: 628, column: 32, scope: !420)
!428 = !DILocation(line: 628, column: 49, scope: !420)
!429 = !DILocation(line: 628, column: 11, scope: !421)
!430 = !DILocation(line: 629, column: 22, scope: !420)
!431 = !DILocation(line: 629, column: 9, scope: !420)
!432 = !DILocation(line: 630, column: 11, scope: !433)
!433 = distinct !DILexicalBlock(scope: !421, file: !3, line: 630, column: 11)
!434 = !DILocation(line: 630, column: 11, scope: !421)
!435 = !DILocation(line: 632, column: 16, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 632, column: 15)
!437 = distinct !DILexicalBlock(scope: !433, file: !3, line: 631, column: 9)
!438 = !DILocation(line: 632, column: 15, scope: !436)
!439 = !DILocation(line: 632, column: 26, scope: !436)
!440 = !DILocation(line: 632, column: 34, scope: !436)
!441 = !DILocation(line: 632, column: 37, scope: !436)
!442 = !DILocation(line: 632, column: 15, scope: !437)
!443 = !DILocation(line: 633, column: 13, scope: !436)
!444 = !DILocation(line: 636, column: 16, scope: !445)
!445 = distinct !DILexicalBlock(scope: !437, file: !3, line: 636, column: 15)
!446 = !DILocation(line: 636, column: 29, scope: !445)
!447 = !DILocation(line: 636, column: 34, scope: !445)
!448 = !DILocation(line: 636, column: 44, scope: !445)
!449 = !DILocation(line: 636, column: 32, scope: !445)
!450 = !DILocation(line: 636, column: 49, scope: !445)
!451 = !DILocation(line: 636, column: 15, scope: !437)
!452 = !DILocation(line: 637, column: 13, scope: !445)
!453 = !DILocation(line: 638, column: 9, scope: !437)
!454 = !DILocation(line: 640, column: 16, scope: !421)
!455 = distinct !{!455, !411, !456, !391}
!456 = !DILocation(line: 641, column: 5, scope: !2)
!457 = !DILocation(line: 644, column: 3, scope: !2)
!458 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!459 = !DILocation(line: 648, column: 15, scope: !2)
!460 = !DILocation(line: 648, column: 38, scope: !2)
!461 = !DILocation(line: 648, column: 31, scope: !2)
!462 = !DILocation(line: 649, column: 38, scope: !2)
!463 = !DILocation(line: 649, column: 31, scope: !2)
!464 = !DILocation(line: 650, column: 38, scope: !2)
!465 = !DILocation(line: 650, column: 31, scope: !2)
!466 = !DILocation(line: 651, column: 38, scope: !2)
!467 = !DILocation(line: 651, column: 31, scope: !2)
!468 = !DILocation(line: 652, column: 38, scope: !2)
!469 = !DILocation(line: 652, column: 31, scope: !2)
!470 = !DILocation(line: 653, column: 38, scope: !2)
!471 = !DILocation(line: 653, column: 31, scope: !2)
!472 = !DILocation(line: 654, column: 38, scope: !2)
!473 = !DILocation(line: 654, column: 31, scope: !2)
!474 = !DILocation(line: 655, column: 38, scope: !2)
!475 = !DILocation(line: 655, column: 31, scope: !2)
!476 = !DILocation(line: 656, column: 38, scope: !2)
!477 = !DILocation(line: 656, column: 31, scope: !2)
!478 = !DILocation(line: 657, column: 38, scope: !2)
!479 = !DILocation(line: 657, column: 31, scope: !2)
!480 = !DILocation(line: 658, column: 31, scope: !2)
!481 = !DILocation(line: 663, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!483 = !DILocation(line: 664, column: 7, scope: !482)
!484 = !DILocation(line: 664, column: 10, scope: !482)
!485 = !DILocation(line: 663, column: 7, scope: !2)
!486 = !DILocation(line: 670, column: 15, scope: !487)
!487 = distinct !DILexicalBlock(scope: !482, file: !3, line: 665, column: 5)
!488 = !DILocation(line: 670, column: 28, scope: !487)
!489 = !DILocation(line: 670, column: 47, scope: !487)
!490 = !DILocation(line: 670, column: 41, scope: !487)
!491 = !DILocation(line: 670, column: 59, scope: !487)
!492 = !DILocation(line: 669, column: 7, scope: !487)
!493 = !DILocation(line: 671, column: 5, scope: !487)
!494 = !DILocation(line: 676, column: 48, scope: !495)
!495 = distinct !DILexicalBlock(scope: !482, file: !3, line: 673, column: 5)
!496 = !DILocation(line: 677, column: 21, scope: !495)
!497 = !DILocation(line: 677, column: 15, scope: !495)
!498 = !DILocation(line: 677, column: 33, scope: !495)
!499 = !DILocation(line: 676, column: 7, scope: !495)
!500 = !DILocation(line: 679, column: 3, scope: !2)
!501 = !DILocation(line: 683, column: 3, scope: !2)
!502 = !DILocation(line: 686, column: 3, scope: !2)
!503 = !DILocation(line: 688, column: 3, scope: !2)
!504 = !DILocation(line: 691, column: 3, scope: !2)
!505 = !DILocation(line: 695, column: 3, scope: !2)
!506 = !DILocation(line: 696, column: 1, scope: !2)
!507 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !508, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !33)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !6}
!510 = !DILocalVariable(name: "program", arg: 1, scope: !507, file: !3, line: 836, type: !6)
!511 = !DILocation(line: 836, column: 34, scope: !507)
!512 = !DILocalVariable(name: "infomap", scope: !507, file: !3, line: 838, type: !513)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 896, elements: !519)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !507, file: !3, line: 838, size: 128, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !515, file: !3, line: 838, baseType: !6, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !515, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!519 = !{!520}
!520 = !DISubrange(count: 7)
!521 = !DILocation(line: 838, column: 67, scope: !507)
!522 = !DILocalVariable(name: "node", scope: !507, file: !3, line: 848, type: !6)
!523 = !DILocation(line: 848, column: 15, scope: !507)
!524 = !DILocation(line: 848, column: 22, scope: !507)
!525 = !DILocalVariable(name: "map_prog", scope: !507, file: !3, line: 849, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!527 = !DILocation(line: 849, column: 25, scope: !507)
!528 = !DILocation(line: 849, column: 36, scope: !507)
!529 = !DILocation(line: 851, column: 3, scope: !507)
!530 = !DILocation(line: 851, column: 10, scope: !507)
!531 = !DILocation(line: 851, column: 20, scope: !507)
!532 = !DILocation(line: 851, column: 28, scope: !507)
!533 = !DILocation(line: 851, column: 40, scope: !507)
!534 = !DILocation(line: 851, column: 49, scope: !507)
!535 = !DILocation(line: 851, column: 59, scope: !507)
!536 = !DILocation(line: 851, column: 33, scope: !507)
!537 = !DILocation(line: 851, column: 31, scope: !507)
!538 = !DILocation(line: 0, scope: !507)
!539 = !DILocation(line: 852, column: 13, scope: !507)
!540 = distinct !{!540, !529, !539, !391}
!541 = !DILocation(line: 854, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !507, file: !3, line: 854, column: 7)
!543 = !DILocation(line: 854, column: 17, scope: !542)
!544 = !DILocation(line: 854, column: 7, scope: !507)
!545 = !DILocation(line: 855, column: 12, scope: !542)
!546 = !DILocation(line: 855, column: 22, scope: !542)
!547 = !DILocation(line: 855, column: 10, scope: !542)
!548 = !DILocation(line: 855, column: 5, scope: !542)
!549 = !DILocation(line: 857, column: 3, scope: !507)
!550 = !DILocalVariable(name: "lc_messages", scope: !507, file: !3, line: 861, type: !6)
!551 = !DILocation(line: 861, column: 15, scope: !507)
!552 = !DILocation(line: 861, column: 29, scope: !507)
!553 = !DILocation(line: 862, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !507, file: !3, line: 862, column: 7)
!555 = !DILocation(line: 862, column: 19, scope: !554)
!556 = !DILocation(line: 862, column: 22, scope: !554)
!557 = !DILocation(line: 862, column: 7, scope: !507)
!558 = !DILocation(line: 868, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !554, file: !3, line: 863, column: 5)
!560 = !DILocation(line: 870, column: 5, scope: !559)
!561 = !DILocalVariable(name: "url_program", scope: !507, file: !3, line: 874, type: !6)
!562 = !DILocation(line: 874, column: 15, scope: !507)
!563 = !DILocation(line: 874, column: 36, scope: !507)
!564 = !DILocation(line: 874, column: 29, scope: !507)
!565 = !DILocation(line: 874, column: 61, scope: !507)
!566 = !DILocation(line: 875, column: 11, scope: !507)
!567 = !DILocation(line: 876, column: 24, scope: !507)
!568 = !DILocation(line: 875, column: 3, scope: !507)
!569 = !DILocation(line: 877, column: 11, scope: !507)
!570 = !DILocation(line: 878, column: 11, scope: !507)
!571 = !DILocation(line: 878, column: 17, scope: !507)
!572 = !DILocation(line: 878, column: 25, scope: !507)
!573 = !DILocation(line: 878, column: 22, scope: !507)
!574 = !DILocation(line: 877, column: 3, scope: !507)
!575 = !DILocation(line: 879, column: 1, scope: !507)
!576 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 53, type: !577, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !33)
!577 = !DISubroutineType(types: !578)
!578 = !{!30, !30, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!580 = !DILocalVariable(name: "argc", arg: 1, scope: !576, file: !10, line: 53, type: !30)
!581 = !DILocation(line: 53, column: 11, scope: !576)
!582 = !DILocalVariable(name: "argv", arg: 2, scope: !576, file: !10, line: 53, type: !579)
!583 = !DILocation(line: 53, column: 24, scope: !576)
!584 = !DILocation(line: 56, column: 21, scope: !576)
!585 = !DILocation(line: 56, column: 3, scope: !576)
!586 = !DILocation(line: 57, column: 3, scope: !576)
!587 = !DILocation(line: 58, column: 3, scope: !576)
!588 = !DILocation(line: 59, column: 3, scope: !576)
!589 = !DILocation(line: 61, column: 3, scope: !576)
!590 = !DILocation(line: 63, column: 36, scope: !576)
!591 = !DILocation(line: 63, column: 42, scope: !576)
!592 = !DILocation(line: 64, column: 36, scope: !576)
!593 = !DILocation(line: 64, column: 58, scope: !576)
!594 = !DILocation(line: 63, column: 3, scope: !576)
!595 = !DILocation(line: 67, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !576, file: !10, line: 67, column: 7)
!597 = !DILocation(line: 67, column: 16, scope: !596)
!598 = !DILocation(line: 67, column: 14, scope: !596)
!599 = !DILocation(line: 67, column: 7, scope: !576)
!600 = !DILocation(line: 69, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !10, line: 68, column: 5)
!602 = !DILocation(line: 70, column: 7, scope: !601)
!603 = !DILocalVariable(name: "id", scope: !576, file: !10, line: 76, type: !14)
!604 = !DILocation(line: 76, column: 16, scope: !576)
!605 = !DILocation(line: 76, column: 21, scope: !576)
!606 = !DILocation(line: 76, column: 34, scope: !576)
!607 = !DILocation(line: 78, column: 21, scope: !576)
!608 = !DILocation(line: 78, column: 3, scope: !576)
!609 = !DILocation(line: 80, column: 3, scope: !576)
!610 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !42, file: !42, line: 50, type: !508, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !33)
!611 = !DILocalVariable(name: "file", arg: 1, scope: !610, file: !42, line: 50, type: !6)
!612 = !DILocation(line: 50, column: 41, scope: !610)
!613 = !DILocation(line: 52, column: 15, scope: !610)
!614 = !DILocation(line: 52, column: 13, scope: !610)
!615 = !DILocation(line: 53, column: 1, scope: !610)
!616 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !42, file: !42, line: 87, type: !617, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !33)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !46}
!619 = !DILocalVariable(name: "ignore", arg: 1, scope: !616, file: !42, line: 87, type: !46)
!620 = !DILocation(line: 87, column: 37, scope: !616)
!621 = !DILocation(line: 89, column: 18, scope: !616)
!622 = !DILocation(line: 89, column: 16, scope: !616)
!623 = !DILocation(line: 90, column: 1, scope: !616)
!624 = distinct !DISubprogram(name: "close_stdout", scope: !42, file: !42, line: 116, type: !79, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !33)
!625 = !DILocation(line: 118, column: 21, scope: !626)
!626 = distinct !DILexicalBlock(scope: !624, file: !42, line: 118, column: 7)
!627 = !DILocation(line: 118, column: 7, scope: !626)
!628 = !DILocation(line: 118, column: 29, scope: !626)
!629 = !DILocation(line: 119, column: 7, scope: !626)
!630 = !DILocation(line: 119, column: 12, scope: !626)
!631 = !DILocation(line: 119, column: 25, scope: !626)
!632 = !DILocation(line: 119, column: 28, scope: !626)
!633 = !DILocation(line: 119, column: 34, scope: !626)
!634 = !DILocation(line: 118, column: 7, scope: !624)
!635 = !DILocalVariable(name: "write_error", scope: !636, file: !42, line: 121, type: !6)
!636 = distinct !DILexicalBlock(scope: !626, file: !42, line: 120, column: 5)
!637 = !DILocation(line: 121, column: 19, scope: !636)
!638 = !DILocation(line: 121, column: 33, scope: !636)
!639 = !DILocation(line: 122, column: 11, scope: !640)
!640 = distinct !DILexicalBlock(scope: !636, file: !42, line: 122, column: 11)
!641 = !DILocation(line: 122, column: 11, scope: !636)
!642 = !DILocation(line: 123, column: 9, scope: !640)
!643 = !DILocation(line: 126, column: 9, scope: !640)
!644 = !DILocation(line: 128, column: 14, scope: !636)
!645 = !DILocation(line: 128, column: 7, scope: !636)
!646 = !DILocation(line: 133, column: 42, scope: !647)
!647 = distinct !DILexicalBlock(scope: !624, file: !42, line: 133, column: 7)
!648 = !DILocation(line: 133, column: 28, scope: !647)
!649 = !DILocation(line: 133, column: 50, scope: !647)
!650 = !DILocation(line: 133, column: 7, scope: !624)
!651 = !DILocation(line: 134, column: 12, scope: !647)
!652 = !DILocation(line: 134, column: 5, scope: !647)
!653 = !DILocation(line: 135, column: 1, scope: !624)
!654 = distinct !DISubprogram(name: "verror", scope: !50, file: !50, line: 251, type: !655, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !33)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !30, !30, !6, !58}
!657 = !DILocalVariable(name: "status", arg: 1, scope: !654, file: !50, line: 251, type: !30)
!658 = !DILocation(line: 251, column: 1, scope: !654)
!659 = !DILocalVariable(name: "errnum", arg: 2, scope: !654, file: !50, line: 251, type: !30)
!660 = !DILocalVariable(name: "message", arg: 3, scope: !654, file: !50, line: 251, type: !6)
!661 = !DILocalVariable(name: "args", arg: 4, scope: !654, file: !50, line: 251, type: !58)
!662 = !DILocation(line: 261, column: 3, scope: !654)
!663 = !DILocation(line: 265, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !654, file: !50, line: 265, column: 7)
!665 = !DILocation(line: 265, column: 7, scope: !654)
!666 = !DILocation(line: 266, column: 7, scope: !664)
!667 = !DILocation(line: 266, column: 5, scope: !664)
!668 = !DILocation(line: 272, column: 16, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !50, line: 268, column: 5)
!670 = !DILocation(line: 272, column: 32, scope: !669)
!671 = !DILocation(line: 272, column: 7, scope: !669)
!672 = !DILocation(line: 276, column: 3, scope: !654)
!673 = !DILocation(line: 282, column: 1, scope: !654)
!674 = distinct !DISubprogram(name: "flush_stdout", scope: !50, file: !50, line: 163, type: !79, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!675 = !DILocalVariable(name: "stdout_fd", scope: !674, file: !50, line: 166, type: !30)
!676 = !DILocation(line: 166, column: 7, scope: !674)
!677 = !DILocation(line: 172, column: 13, scope: !674)
!678 = !DILocation(line: 182, column: 12, scope: !679)
!679 = distinct !DILexicalBlock(scope: !674, file: !50, line: 182, column: 7)
!680 = !DILocation(line: 182, column: 9, scope: !679)
!681 = !DILocation(line: 182, column: 22, scope: !679)
!682 = !DILocation(line: 182, column: 34, scope: !679)
!683 = !DILocation(line: 182, column: 25, scope: !679)
!684 = !DILocation(line: 182, column: 7, scope: !674)
!685 = !DILocation(line: 184, column: 5, scope: !679)
!686 = !DILocation(line: 185, column: 1, scope: !674)
!687 = distinct !DISubprogram(name: "error_tail", scope: !50, file: !50, line: 219, type: !655, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!688 = !DILocalVariable(name: "status", arg: 1, scope: !687, file: !50, line: 219, type: !30)
!689 = !DILocation(line: 219, column: 1, scope: !687)
!690 = !DILocalVariable(name: "errnum", arg: 2, scope: !687, file: !50, line: 219, type: !30)
!691 = !DILocalVariable(name: "message", arg: 3, scope: !687, file: !50, line: 219, type: !6)
!692 = !DILocalVariable(name: "args", arg: 4, scope: !687, file: !50, line: 219, type: !58)
!693 = !DILocation(line: 229, column: 13, scope: !687)
!694 = !DILocation(line: 229, column: 21, scope: !687)
!695 = !DILocation(line: 229, column: 3, scope: !687)
!696 = !DILocation(line: 232, column: 3, scope: !687)
!697 = !DILocation(line: 233, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !687, file: !50, line: 233, column: 7)
!699 = !DILocation(line: 233, column: 7, scope: !687)
!700 = !DILocation(line: 234, column: 26, scope: !698)
!701 = !DILocation(line: 234, column: 5, scope: !698)
!702 = !DILocation(line: 238, column: 3, scope: !687)
!703 = !DILocation(line: 240, column: 3, scope: !687)
!704 = !DILocation(line: 241, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !687, file: !50, line: 241, column: 7)
!706 = !DILocation(line: 241, column: 7, scope: !687)
!707 = !DILocation(line: 242, column: 11, scope: !705)
!708 = !DILocation(line: 242, column: 5, scope: !705)
!709 = !DILocation(line: 243, column: 1, scope: !687)
!710 = distinct !DISubprogram(name: "print_errno_message", scope: !50, file: !50, line: 188, type: !300, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!711 = !DILocalVariable(name: "errnum", arg: 1, scope: !710, file: !50, line: 188, type: !30)
!712 = !DILocation(line: 188, column: 26, scope: !710)
!713 = !DILocalVariable(name: "s", scope: !710, file: !50, line: 190, type: !6)
!714 = !DILocation(line: 190, column: 15, scope: !710)
!715 = !DILocalVariable(name: "errbuf", scope: !710, file: !50, line: 193, type: !716)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 1024)
!719 = !DILocation(line: 193, column: 8, scope: !710)
!720 = !DILocation(line: 195, column: 21, scope: !710)
!721 = !DILocation(line: 195, column: 29, scope: !710)
!722 = !DILocation(line: 195, column: 7, scope: !710)
!723 = !DILocation(line: 195, column: 5, scope: !710)
!724 = !DILocation(line: 207, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !710, file: !50, line: 207, column: 7)
!726 = !DILocation(line: 207, column: 7, scope: !710)
!727 = !DILocation(line: 208, column: 9, scope: !725)
!728 = !DILocation(line: 208, column: 7, scope: !725)
!729 = !DILocation(line: 208, column: 5, scope: !725)
!730 = !DILocation(line: 214, column: 12, scope: !710)
!731 = !DILocation(line: 214, column: 28, scope: !710)
!732 = !DILocation(line: 214, column: 3, scope: !710)
!733 = !DILocation(line: 216, column: 1, scope: !710)
!734 = distinct !DISubprogram(name: "is_open", scope: !50, file: !50, line: 145, type: !735, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !49, retainedNodes: !33)
!735 = !DISubroutineType(types: !736)
!736 = !{!30, !30}
!737 = !DILocalVariable(name: "fd", arg: 1, scope: !734, file: !50, line: 145, type: !30)
!738 = !DILocation(line: 145, column: 14, scope: !734)
!739 = !DILocation(line: 157, column: 22, scope: !734)
!740 = !DILocation(line: 157, column: 15, scope: !734)
!741 = !DILocation(line: 157, column: 12, scope: !734)
!742 = !DILocation(line: 157, column: 3, scope: !734)
!743 = distinct !DISubprogram(name: "error", scope: !50, file: !50, line: 285, type: !744, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !33)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !30, !30, !6, null}
!746 = !DILocalVariable(name: "status", arg: 1, scope: !743, file: !50, line: 285, type: !30)
!747 = !DILocation(line: 285, column: 12, scope: !743)
!748 = !DILocalVariable(name: "errnum", arg: 2, scope: !743, file: !50, line: 285, type: !30)
!749 = !DILocation(line: 285, column: 24, scope: !743)
!750 = !DILocalVariable(name: "message", arg: 3, scope: !743, file: !50, line: 285, type: !6)
!751 = !DILocation(line: 285, column: 44, scope: !743)
!752 = !DILocalVariable(name: "ap", scope: !743, file: !50, line: 287, type: !58)
!753 = !DILocation(line: 287, column: 11, scope: !743)
!754 = !DILocation(line: 288, column: 3, scope: !743)
!755 = !DILocation(line: 289, column: 3, scope: !743)
!756 = !DILocation(line: 290, column: 3, scope: !743)
!757 = !DILocation(line: 291, column: 1, scope: !743)
!758 = !DILocalVariable(name: "status", arg: 1, scope: !55, file: !50, line: 298, type: !30)
!759 = !DILocation(line: 298, column: 1, scope: !55)
!760 = !DILocalVariable(name: "errnum", arg: 2, scope: !55, file: !50, line: 298, type: !30)
!761 = !DILocalVariable(name: "file_name", arg: 3, scope: !55, file: !50, line: 298, type: !6)
!762 = !DILocalVariable(name: "line_number", arg: 4, scope: !55, file: !50, line: 298, type: !14)
!763 = !DILocalVariable(name: "message", arg: 5, scope: !55, file: !50, line: 298, type: !6)
!764 = !DILocalVariable(name: "args", arg: 6, scope: !55, file: !50, line: 298, type: !58)
!765 = !DILocation(line: 302, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !55, file: !50, line: 302, column: 7)
!767 = !DILocation(line: 302, column: 7, scope: !55)
!768 = !DILocation(line: 307, column: 11, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !50, line: 307, column: 11)
!770 = distinct !DILexicalBlock(scope: !766, file: !50, line: 303, column: 5)
!771 = !DILocation(line: 307, column: 30, scope: !769)
!772 = !DILocation(line: 307, column: 27, scope: !769)
!773 = !DILocation(line: 308, column: 11, scope: !769)
!774 = !DILocation(line: 308, column: 15, scope: !769)
!775 = !DILocation(line: 308, column: 28, scope: !769)
!776 = !DILocation(line: 308, column: 25, scope: !769)
!777 = !DILocation(line: 309, column: 15, scope: !769)
!778 = !DILocation(line: 309, column: 19, scope: !769)
!779 = !DILocation(line: 309, column: 33, scope: !769)
!780 = !DILocation(line: 310, column: 19, scope: !769)
!781 = !DILocation(line: 310, column: 22, scope: !769)
!782 = !DILocation(line: 310, column: 32, scope: !769)
!783 = !DILocation(line: 311, column: 19, scope: !769)
!784 = !DILocation(line: 311, column: 30, scope: !769)
!785 = !DILocation(line: 311, column: 45, scope: !769)
!786 = !DILocation(line: 311, column: 22, scope: !769)
!787 = !DILocation(line: 311, column: 56, scope: !769)
!788 = !DILocation(line: 307, column: 11, scope: !770)
!789 = !DILocation(line: 314, column: 9, scope: !769)
!790 = !DILocation(line: 316, column: 23, scope: !770)
!791 = !DILocation(line: 316, column: 21, scope: !770)
!792 = !DILocation(line: 317, column: 25, scope: !770)
!793 = !DILocation(line: 317, column: 23, scope: !770)
!794 = !DILocation(line: 318, column: 5, scope: !770)
!795 = !DILocation(line: 327, column: 3, scope: !55)
!796 = !DILocation(line: 331, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !55, file: !50, line: 331, column: 7)
!798 = !DILocation(line: 331, column: 7, scope: !55)
!799 = !DILocation(line: 332, column: 7, scope: !797)
!800 = !DILocation(line: 332, column: 5, scope: !797)
!801 = !DILocation(line: 338, column: 16, scope: !802)
!802 = distinct !DILexicalBlock(scope: !797, file: !50, line: 334, column: 5)
!803 = !DILocation(line: 338, column: 31, scope: !802)
!804 = !DILocation(line: 338, column: 7, scope: !802)
!805 = !DILocation(line: 346, column: 12, scope: !55)
!806 = !DILocation(line: 346, column: 20, scope: !55)
!807 = !DILocation(line: 346, column: 30, scope: !55)
!808 = !DILocation(line: 347, column: 12, scope: !55)
!809 = !DILocation(line: 347, column: 23, scope: !55)
!810 = !DILocation(line: 346, column: 3, scope: !55)
!811 = !DILocation(line: 350, column: 3, scope: !55)
!812 = !DILocation(line: 356, column: 1, scope: !55)
!813 = distinct !DISubprogram(name: "error_at_line", scope: !50, file: !50, line: 359, type: !814, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !33)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !30, !30, !6, !14, !6, null}
!816 = !DILocalVariable(name: "status", arg: 1, scope: !813, file: !50, line: 359, type: !30)
!817 = !DILocation(line: 359, column: 20, scope: !813)
!818 = !DILocalVariable(name: "errnum", arg: 2, scope: !813, file: !50, line: 359, type: !30)
!819 = !DILocation(line: 359, column: 32, scope: !813)
!820 = !DILocalVariable(name: "file_name", arg: 3, scope: !813, file: !50, line: 359, type: !6)
!821 = !DILocation(line: 359, column: 52, scope: !813)
!822 = !DILocalVariable(name: "line_number", arg: 4, scope: !813, file: !50, line: 360, type: !14)
!823 = !DILocation(line: 360, column: 29, scope: !813)
!824 = !DILocalVariable(name: "message", arg: 5, scope: !813, file: !50, line: 360, type: !6)
!825 = !DILocation(line: 360, column: 54, scope: !813)
!826 = !DILocalVariable(name: "ap", scope: !813, file: !50, line: 362, type: !58)
!827 = !DILocation(line: 362, column: 11, scope: !813)
!828 = !DILocation(line: 363, column: 3, scope: !813)
!829 = !DILocation(line: 364, column: 3, scope: !813)
!830 = !DILocation(line: 366, column: 3, scope: !813)
!831 = !DILocation(line: 367, column: 1, scope: !813)
!832 = distinct !DISubprogram(name: "getprogname", scope: !229, file: !229, line: 54, type: !833, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !228, retainedNodes: !33)
!833 = !DISubroutineType(types: !834)
!834 = !{!6}
!835 = !DILocation(line: 58, column: 10, scope: !832)
!836 = !DILocation(line: 58, column: 3, scope: !832)
!837 = distinct !DISubprogram(name: "parse_long_options", scope: !84, file: !84, line: 45, type: !838, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !33)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !30, !579, !6, !6, !6, !840, null}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!841 = !DILocalVariable(name: "argc", arg: 1, scope: !837, file: !84, line: 45, type: !30)
!842 = !DILocation(line: 45, column: 25, scope: !837)
!843 = !DILocalVariable(name: "argv", arg: 2, scope: !837, file: !84, line: 46, type: !579)
!844 = !DILocation(line: 46, column: 28, scope: !837)
!845 = !DILocalVariable(name: "command_name", arg: 3, scope: !837, file: !84, line: 47, type: !6)
!846 = !DILocation(line: 47, column: 33, scope: !837)
!847 = !DILocalVariable(name: "package", arg: 4, scope: !837, file: !84, line: 48, type: !6)
!848 = !DILocation(line: 48, column: 33, scope: !837)
!849 = !DILocalVariable(name: "version", arg: 5, scope: !837, file: !84, line: 49, type: !6)
!850 = !DILocation(line: 49, column: 33, scope: !837)
!851 = !DILocalVariable(name: "usage_func", arg: 6, scope: !837, file: !84, line: 50, type: !840)
!852 = !DILocation(line: 50, column: 28, scope: !837)
!853 = !DILocalVariable(name: "saved_opterr", scope: !837, file: !84, line: 53, type: !30)
!854 = !DILocation(line: 53, column: 7, scope: !837)
!855 = !DILocation(line: 53, column: 22, scope: !837)
!856 = !DILocation(line: 56, column: 10, scope: !837)
!857 = !DILocation(line: 58, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !837, file: !84, line: 58, column: 7)
!859 = !DILocation(line: 58, column: 12, scope: !858)
!860 = !DILocation(line: 58, column: 7, scope: !837)
!861 = !DILocalVariable(name: "c", scope: !862, file: !84, line: 60, type: !30)
!862 = distinct !DILexicalBlock(scope: !858, file: !84, line: 59, column: 5)
!863 = !DILocation(line: 60, column: 11, scope: !862)
!864 = !DILocation(line: 60, column: 28, scope: !862)
!865 = !DILocation(line: 60, column: 34, scope: !862)
!866 = !DILocation(line: 60, column: 15, scope: !862)
!867 = !DILocation(line: 61, column: 11, scope: !868)
!868 = distinct !DILexicalBlock(scope: !862, file: !84, line: 61, column: 11)
!869 = !DILocation(line: 61, column: 13, scope: !868)
!870 = !DILocation(line: 61, column: 11, scope: !862)
!871 = !DILocation(line: 63, column: 19, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !84, line: 62, column: 9)
!873 = !DILocation(line: 63, column: 11, scope: !872)
!874 = !DILocation(line: 66, column: 17, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !84, line: 64, column: 13)
!876 = !DILocation(line: 66, column: 15, scope: !875)
!877 = !DILocation(line: 67, column: 15, scope: !875)
!878 = !DILocalVariable(name: "authors", scope: !879, file: !84, line: 71, type: !880)
!879 = distinct !DILexicalBlock(scope: !875, file: !84, line: 70, column: 15)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !59, line: 52, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !61, line: 32, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !883, baseType: !884)
!883 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !65, size: 256, elements: !885)
!885 = !{!886, !887, !888, !889, !890}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !884, file: !883, line: 71, baseType: !29, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !884, file: !883, line: 71, baseType: !29, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !884, file: !883, line: 71, baseType: !29, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !884, file: !883, line: 71, baseType: !30, size: 32, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !884, file: !883, line: 71, baseType: !30, size: 32, offset: 224)
!891 = !DILocation(line: 71, column: 25, scope: !879)
!892 = !DILocation(line: 72, column: 17, scope: !879)
!893 = !DILocation(line: 73, column: 33, scope: !879)
!894 = !DILocation(line: 73, column: 41, scope: !879)
!895 = !DILocation(line: 73, column: 55, scope: !879)
!896 = !DILocation(line: 73, column: 64, scope: !879)
!897 = !DILocation(line: 73, column: 17, scope: !879)
!898 = !DILocation(line: 74, column: 17, scope: !879)
!899 = !DILocation(line: 79, column: 15, scope: !875)
!900 = !DILocation(line: 81, column: 9, scope: !872)
!901 = !DILocation(line: 82, column: 5, scope: !862)
!902 = !DILocation(line: 85, column: 12, scope: !837)
!903 = !DILocation(line: 85, column: 10, scope: !837)
!904 = !DILocation(line: 89, column: 10, scope: !837)
!905 = !DILocation(line: 90, column: 1, scope: !837)
!906 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !84, file: !84, line: 98, type: !907, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !33)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !30, !579, !6, !6, !6, !46, !840, null}
!909 = !DILocalVariable(name: "argc", arg: 1, scope: !906, file: !84, line: 98, type: !30)
!910 = !DILocation(line: 98, column: 38, scope: !906)
!911 = !DILocalVariable(name: "argv", arg: 2, scope: !906, file: !84, line: 99, type: !579)
!912 = !DILocation(line: 99, column: 41, scope: !906)
!913 = !DILocalVariable(name: "command_name", arg: 3, scope: !906, file: !84, line: 100, type: !6)
!914 = !DILocation(line: 100, column: 46, scope: !906)
!915 = !DILocalVariable(name: "package", arg: 4, scope: !906, file: !84, line: 101, type: !6)
!916 = !DILocation(line: 101, column: 46, scope: !906)
!917 = !DILocalVariable(name: "version", arg: 5, scope: !906, file: !84, line: 102, type: !6)
!918 = !DILocation(line: 102, column: 46, scope: !906)
!919 = !DILocalVariable(name: "scan_all", arg: 6, scope: !906, file: !84, line: 103, type: !46)
!920 = !DILocation(line: 103, column: 39, scope: !906)
!921 = !DILocalVariable(name: "usage_func", arg: 7, scope: !906, file: !84, line: 104, type: !840)
!922 = !DILocation(line: 104, column: 41, scope: !906)
!923 = !DILocalVariable(name: "saved_opterr", scope: !906, file: !84, line: 107, type: !30)
!924 = !DILocation(line: 107, column: 7, scope: !906)
!925 = !DILocation(line: 107, column: 22, scope: !906)
!926 = !DILocation(line: 110, column: 10, scope: !906)
!927 = !DILocalVariable(name: "optstring", scope: !906, file: !84, line: 112, type: !6)
!928 = !DILocation(line: 112, column: 15, scope: !906)
!929 = !DILocation(line: 112, column: 27, scope: !906)
!930 = !DILocalVariable(name: "c", scope: !906, file: !84, line: 114, type: !30)
!931 = !DILocation(line: 114, column: 7, scope: !906)
!932 = !DILocation(line: 114, column: 24, scope: !906)
!933 = !DILocation(line: 114, column: 30, scope: !906)
!934 = !DILocation(line: 114, column: 36, scope: !906)
!935 = !DILocation(line: 114, column: 11, scope: !906)
!936 = !DILocation(line: 115, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !906, file: !84, line: 115, column: 7)
!938 = !DILocation(line: 115, column: 9, scope: !937)
!939 = !DILocation(line: 115, column: 7, scope: !906)
!940 = !DILocation(line: 117, column: 15, scope: !941)
!941 = distinct !DILexicalBlock(scope: !937, file: !84, line: 116, column: 5)
!942 = !DILocation(line: 117, column: 7, scope: !941)
!943 = !DILocation(line: 120, column: 13, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !84, line: 118, column: 9)
!945 = !DILocation(line: 120, column: 11, scope: !944)
!946 = !DILocation(line: 121, column: 11, scope: !944)
!947 = !DILocalVariable(name: "authors", scope: !948, file: !84, line: 125, type: !880)
!948 = distinct !DILexicalBlock(scope: !944, file: !84, line: 124, column: 11)
!949 = !DILocation(line: 125, column: 21, scope: !948)
!950 = !DILocation(line: 126, column: 13, scope: !948)
!951 = !DILocation(line: 127, column: 29, scope: !948)
!952 = !DILocation(line: 127, column: 37, scope: !948)
!953 = !DILocation(line: 127, column: 51, scope: !948)
!954 = !DILocation(line: 127, column: 60, scope: !948)
!955 = !DILocation(line: 127, column: 13, scope: !948)
!956 = !DILocation(line: 128, column: 13, scope: !948)
!957 = !DILocation(line: 132, column: 13, scope: !944)
!958 = !DILocation(line: 132, column: 26, scope: !944)
!959 = !DILocation(line: 132, column: 11, scope: !944)
!960 = !DILocation(line: 133, column: 11, scope: !944)
!961 = !DILocation(line: 135, column: 5, scope: !941)
!962 = !DILocation(line: 138, column: 12, scope: !906)
!963 = !DILocation(line: 138, column: 10, scope: !906)
!964 = !DILocation(line: 139, column: 1, scope: !906)
!965 = distinct !DISubprogram(name: "set_program_name", scope: !101, file: !101, line: 37, type: !508, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !33)
!966 = !DILocalVariable(name: "argv0", arg: 1, scope: !965, file: !101, line: 37, type: !6)
!967 = !DILocation(line: 37, column: 31, scope: !965)
!968 = !DILocalVariable(name: "slash", scope: !965, file: !101, line: 44, type: !6)
!969 = !DILocation(line: 44, column: 15, scope: !965)
!970 = !DILocation(line: 44, column: 32, scope: !965)
!971 = !DILocation(line: 44, column: 23, scope: !965)
!972 = !DILocalVariable(name: "base", scope: !965, file: !101, line: 45, type: !6)
!973 = !DILocation(line: 45, column: 15, scope: !965)
!974 = !DILocation(line: 45, column: 22, scope: !965)
!975 = !DILocation(line: 45, column: 30, scope: !965)
!976 = !DILocation(line: 45, column: 36, scope: !965)
!977 = !DILocation(line: 45, column: 42, scope: !965)
!978 = !DILocation(line: 46, column: 12, scope: !979)
!979 = distinct !DILexicalBlock(scope: !965, file: !101, line: 46, column: 7)
!980 = !DILocation(line: 46, column: 19, scope: !979)
!981 = !DILocation(line: 46, column: 17, scope: !979)
!982 = !DILocation(line: 46, column: 9, scope: !979)
!983 = !DILocation(line: 46, column: 25, scope: !979)
!984 = !DILocation(line: 46, column: 35, scope: !979)
!985 = !DILocation(line: 46, column: 40, scope: !979)
!986 = !DILocation(line: 46, column: 28, scope: !979)
!987 = !DILocation(line: 46, column: 7, scope: !965)
!988 = !DILocation(line: 48, column: 15, scope: !989)
!989 = distinct !DILexicalBlock(scope: !979, file: !101, line: 47, column: 5)
!990 = !DILocation(line: 48, column: 13, scope: !989)
!991 = !DILocation(line: 49, column: 20, scope: !992)
!992 = distinct !DILexicalBlock(scope: !989, file: !101, line: 49, column: 11)
!993 = !DILocation(line: 49, column: 11, scope: !992)
!994 = !DILocation(line: 49, column: 36, scope: !992)
!995 = !DILocation(line: 49, column: 11, scope: !989)
!996 = !DILocation(line: 51, column: 16, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !101, line: 50, column: 9)
!998 = !DILocation(line: 52, column: 19, scope: !997)
!999 = !DILocation(line: 52, column: 17, scope: !997)
!1000 = !DILocation(line: 53, column: 9, scope: !997)
!1001 = !DILocation(line: 54, column: 5, scope: !989)
!1002 = !DILocation(line: 65, column: 18, scope: !965)
!1003 = !DILocation(line: 65, column: 16, scope: !965)
!1004 = !DILocation(line: 71, column: 38, scope: !965)
!1005 = !DILocation(line: 71, column: 27, scope: !965)
!1006 = !DILocation(line: 74, column: 44, scope: !965)
!1007 = !DILocation(line: 74, column: 33, scope: !965)
!1008 = !DILocation(line: 76, column: 1, scope: !965)
!1009 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !107, file: !108, line: 38, type: !6)
!1010 = !DILocation(line: 38, column: 31, scope: !107)
!1011 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !107, file: !108, line: 38, type: !6)
!1012 = !DILocation(line: 38, column: 66, scope: !107)
!1013 = !DILocalVariable(name: "translation", scope: !107, file: !108, line: 40, type: !6)
!1014 = !DILocation(line: 40, column: 15, scope: !107)
!1015 = !DILocation(line: 40, column: 38, scope: !107)
!1016 = !DILocation(line: 40, column: 29, scope: !107)
!1017 = !DILocation(line: 41, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !107, file: !108, line: 41, column: 7)
!1019 = !DILocation(line: 41, column: 22, scope: !1018)
!1020 = !DILocation(line: 41, column: 19, scope: !1018)
!1021 = !DILocation(line: 41, column: 7, scope: !107)
!1022 = !DILocation(line: 42, column: 12, scope: !1018)
!1023 = !DILocation(line: 42, column: 5, scope: !1018)
!1024 = !DILocalVariable(name: "w", scope: !107, file: !108, line: 47, type: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1026, line: 37, baseType: !1027)
!1026 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1028, line: 57, baseType: !1029)
!1028 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1028, line: 42, baseType: !14)
!1030 = !DILocation(line: 47, column: 12, scope: !107)
!1031 = !DILocalVariable(name: "mbs", scope: !107, file: !108, line: 48, type: !1032)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1034, file: !217, line: 15, baseType: !30, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1034, file: !217, line: 20, baseType: !1038, size: 32, offset: 32)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1034, file: !217, line: 16, size: 32, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1038, file: !217, line: 18, baseType: !14, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1038, file: !217, line: 19, baseType: !226, size: 32)
!1042 = !DILocation(line: 48, column: 13, scope: !107)
!1043 = !DILocation(line: 48, column: 18, scope: !107)
!1044 = !DILocation(line: 49, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !107, file: !108, line: 49, column: 7)
!1046 = !DILocation(line: 49, column: 39, scope: !1045)
!1047 = !DILocation(line: 49, column: 44, scope: !1045)
!1048 = !DILocation(line: 49, column: 47, scope: !1045)
!1049 = !DILocation(line: 49, column: 49, scope: !1045)
!1050 = !DILocation(line: 49, column: 7, scope: !107)
!1051 = !DILocation(line: 50, column: 12, scope: !1045)
!1052 = !DILocation(line: 50, column: 5, scope: !1045)
!1053 = !DILocation(line: 53, column: 10, scope: !107)
!1054 = !DILocation(line: 53, column: 3, scope: !107)
!1055 = !DILocation(line: 54, column: 1, scope: !107)
!1056 = distinct !DISubprogram(name: "clone_quoting_options", scope: !119, file: !119, line: 113, type: !1057, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!1059, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1060 = !DILocalVariable(name: "o", arg: 1, scope: !1056, file: !119, line: 113, type: !1059)
!1061 = !DILocation(line: 113, column: 48, scope: !1056)
!1062 = !DILocalVariable(name: "saved_errno", scope: !1056, file: !119, line: 115, type: !30)
!1063 = !DILocation(line: 115, column: 7, scope: !1056)
!1064 = !DILocation(line: 115, column: 21, scope: !1056)
!1065 = !DILocalVariable(name: "p", scope: !1056, file: !119, line: 116, type: !1059)
!1066 = !DILocation(line: 116, column: 27, scope: !1056)
!1067 = !DILocation(line: 116, column: 40, scope: !1056)
!1068 = !DILocation(line: 116, column: 44, scope: !1056)
!1069 = !DILocation(line: 116, column: 31, scope: !1056)
!1070 = !DILocation(line: 118, column: 11, scope: !1056)
!1071 = !DILocation(line: 118, column: 3, scope: !1056)
!1072 = !DILocation(line: 118, column: 9, scope: !1056)
!1073 = !DILocation(line: 119, column: 10, scope: !1056)
!1074 = !DILocation(line: 119, column: 3, scope: !1056)
!1075 = distinct !DISubprogram(name: "get_quoting_style", scope: !119, file: !119, line: 124, type: !1076, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!121, !1078}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1080 = !DILocalVariable(name: "o", arg: 1, scope: !1075, file: !119, line: 124, type: !1078)
!1081 = !DILocation(line: 124, column: 50, scope: !1075)
!1082 = !DILocation(line: 126, column: 11, scope: !1075)
!1083 = !DILocation(line: 126, column: 15, scope: !1075)
!1084 = !DILocation(line: 126, column: 46, scope: !1075)
!1085 = !DILocation(line: 126, column: 3, scope: !1075)
!1086 = distinct !DISubprogram(name: "set_quoting_style", scope: !119, file: !119, line: 132, type: !1087, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !1059, !121}
!1089 = !DILocalVariable(name: "o", arg: 1, scope: !1086, file: !119, line: 132, type: !1059)
!1090 = !DILocation(line: 132, column: 44, scope: !1086)
!1091 = !DILocalVariable(name: "s", arg: 2, scope: !1086, file: !119, line: 132, type: !121)
!1092 = !DILocation(line: 132, column: 66, scope: !1086)
!1093 = !DILocation(line: 134, column: 47, scope: !1086)
!1094 = !DILocation(line: 134, column: 4, scope: !1086)
!1095 = !DILocation(line: 134, column: 8, scope: !1086)
!1096 = !DILocation(line: 134, column: 39, scope: !1086)
!1097 = !DILocation(line: 134, column: 45, scope: !1086)
!1098 = !DILocation(line: 135, column: 1, scope: !1086)
!1099 = distinct !DISubprogram(name: "set_char_quoting", scope: !119, file: !119, line: 143, type: !1100, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!30, !1059, !8, !30}
!1102 = !DILocalVariable(name: "o", arg: 1, scope: !1099, file: !119, line: 143, type: !1059)
!1103 = !DILocation(line: 143, column: 43, scope: !1099)
!1104 = !DILocalVariable(name: "c", arg: 2, scope: !1099, file: !119, line: 143, type: !8)
!1105 = !DILocation(line: 143, column: 51, scope: !1099)
!1106 = !DILocalVariable(name: "i", arg: 3, scope: !1099, file: !119, line: 143, type: !30)
!1107 = !DILocation(line: 143, column: 58, scope: !1099)
!1108 = !DILocalVariable(name: "uc", scope: !1099, file: !119, line: 145, type: !212)
!1109 = !DILocation(line: 145, column: 17, scope: !1099)
!1110 = !DILocation(line: 145, column: 22, scope: !1099)
!1111 = !DILocalVariable(name: "p", scope: !1099, file: !119, line: 146, type: !1112)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1113 = !DILocation(line: 146, column: 17, scope: !1099)
!1114 = !DILocation(line: 147, column: 6, scope: !1099)
!1115 = !DILocation(line: 147, column: 10, scope: !1099)
!1116 = !DILocation(line: 147, column: 41, scope: !1099)
!1117 = !DILocation(line: 147, column: 5, scope: !1099)
!1118 = !DILocation(line: 147, column: 59, scope: !1099)
!1119 = !DILocation(line: 147, column: 62, scope: !1099)
!1120 = !DILocation(line: 147, column: 57, scope: !1099)
!1121 = !DILocalVariable(name: "shift", scope: !1099, file: !119, line: 148, type: !30)
!1122 = !DILocation(line: 148, column: 7, scope: !1099)
!1123 = !DILocation(line: 148, column: 15, scope: !1099)
!1124 = !DILocation(line: 148, column: 18, scope: !1099)
!1125 = !DILocalVariable(name: "r", scope: !1099, file: !119, line: 149, type: !14)
!1126 = !DILocation(line: 149, column: 16, scope: !1099)
!1127 = !DILocation(line: 149, column: 22, scope: !1099)
!1128 = !DILocation(line: 149, column: 21, scope: !1099)
!1129 = !DILocation(line: 149, column: 27, scope: !1099)
!1130 = !DILocation(line: 149, column: 24, scope: !1099)
!1131 = !DILocation(line: 149, column: 34, scope: !1099)
!1132 = !DILocation(line: 150, column: 11, scope: !1099)
!1133 = !DILocation(line: 150, column: 13, scope: !1099)
!1134 = !DILocation(line: 150, column: 21, scope: !1099)
!1135 = !DILocation(line: 150, column: 19, scope: !1099)
!1136 = !DILocation(line: 150, column: 27, scope: !1099)
!1137 = !DILocation(line: 150, column: 24, scope: !1099)
!1138 = !DILocation(line: 150, column: 4, scope: !1099)
!1139 = !DILocation(line: 150, column: 6, scope: !1099)
!1140 = !DILocation(line: 151, column: 10, scope: !1099)
!1141 = !DILocation(line: 151, column: 3, scope: !1099)
!1142 = distinct !DISubprogram(name: "set_quoting_flags", scope: !119, file: !119, line: 159, type: !1143, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!30, !1059, !30}
!1145 = !DILocalVariable(name: "o", arg: 1, scope: !1142, file: !119, line: 159, type: !1059)
!1146 = !DILocation(line: 159, column: 44, scope: !1142)
!1147 = !DILocalVariable(name: "i", arg: 2, scope: !1142, file: !119, line: 159, type: !30)
!1148 = !DILocation(line: 159, column: 51, scope: !1142)
!1149 = !DILocation(line: 161, column: 8, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1142, file: !119, line: 161, column: 7)
!1151 = !DILocation(line: 161, column: 7, scope: !1142)
!1152 = !DILocation(line: 162, column: 7, scope: !1150)
!1153 = !DILocation(line: 162, column: 5, scope: !1150)
!1154 = !DILocalVariable(name: "r", scope: !1142, file: !119, line: 163, type: !30)
!1155 = !DILocation(line: 163, column: 7, scope: !1142)
!1156 = !DILocation(line: 163, column: 11, scope: !1142)
!1157 = !DILocation(line: 163, column: 14, scope: !1142)
!1158 = !DILocation(line: 164, column: 14, scope: !1142)
!1159 = !DILocation(line: 164, column: 3, scope: !1142)
!1160 = !DILocation(line: 164, column: 6, scope: !1142)
!1161 = !DILocation(line: 164, column: 12, scope: !1142)
!1162 = !DILocation(line: 165, column: 10, scope: !1142)
!1163 = !DILocation(line: 165, column: 3, scope: !1142)
!1164 = distinct !DISubprogram(name: "set_custom_quoting", scope: !119, file: !119, line: 169, type: !1165, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !1059, !6, !6}
!1167 = !DILocalVariable(name: "o", arg: 1, scope: !1164, file: !119, line: 169, type: !1059)
!1168 = !DILocation(line: 169, column: 45, scope: !1164)
!1169 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1164, file: !119, line: 170, type: !6)
!1170 = !DILocation(line: 170, column: 33, scope: !1164)
!1171 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1164, file: !119, line: 170, type: !6)
!1172 = !DILocation(line: 170, column: 57, scope: !1164)
!1173 = !DILocation(line: 172, column: 8, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1164, file: !119, line: 172, column: 7)
!1175 = !DILocation(line: 172, column: 7, scope: !1164)
!1176 = !DILocation(line: 173, column: 7, scope: !1174)
!1177 = !DILocation(line: 173, column: 5, scope: !1174)
!1178 = !DILocation(line: 174, column: 3, scope: !1164)
!1179 = !DILocation(line: 174, column: 6, scope: !1164)
!1180 = !DILocation(line: 174, column: 12, scope: !1164)
!1181 = !DILocation(line: 175, column: 8, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1164, file: !119, line: 175, column: 7)
!1183 = !DILocation(line: 175, column: 19, scope: !1182)
!1184 = !DILocation(line: 175, column: 23, scope: !1182)
!1185 = !DILocation(line: 175, column: 7, scope: !1164)
!1186 = !DILocation(line: 176, column: 5, scope: !1182)
!1187 = !DILocation(line: 177, column: 19, scope: !1164)
!1188 = !DILocation(line: 177, column: 3, scope: !1164)
!1189 = !DILocation(line: 177, column: 6, scope: !1164)
!1190 = !DILocation(line: 177, column: 17, scope: !1164)
!1191 = !DILocation(line: 178, column: 20, scope: !1164)
!1192 = !DILocation(line: 178, column: 3, scope: !1164)
!1193 = !DILocation(line: 178, column: 6, scope: !1164)
!1194 = !DILocation(line: 178, column: 18, scope: !1164)
!1195 = !DILocation(line: 179, column: 1, scope: !1164)
!1196 = distinct !DISubprogram(name: "quotearg_buffer", scope: !119, file: !119, line: 774, type: !1197, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!141, !103, !141, !6, !141, !1078}
!1199 = !DILocalVariable(name: "buffer", arg: 1, scope: !1196, file: !119, line: 774, type: !103)
!1200 = !DILocation(line: 774, column: 24, scope: !1196)
!1201 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1196, file: !119, line: 774, type: !141)
!1202 = !DILocation(line: 774, column: 39, scope: !1196)
!1203 = !DILocalVariable(name: "arg", arg: 3, scope: !1196, file: !119, line: 775, type: !6)
!1204 = !DILocation(line: 775, column: 30, scope: !1196)
!1205 = !DILocalVariable(name: "argsize", arg: 4, scope: !1196, file: !119, line: 775, type: !141)
!1206 = !DILocation(line: 775, column: 42, scope: !1196)
!1207 = !DILocalVariable(name: "o", arg: 5, scope: !1196, file: !119, line: 776, type: !1078)
!1208 = !DILocation(line: 776, column: 48, scope: !1196)
!1209 = !DILocalVariable(name: "p", scope: !1196, file: !119, line: 778, type: !1078)
!1210 = !DILocation(line: 778, column: 33, scope: !1196)
!1211 = !DILocation(line: 778, column: 37, scope: !1196)
!1212 = !DILocation(line: 778, column: 41, scope: !1196)
!1213 = !DILocalVariable(name: "saved_errno", scope: !1196, file: !119, line: 779, type: !30)
!1214 = !DILocation(line: 779, column: 7, scope: !1196)
!1215 = !DILocation(line: 779, column: 21, scope: !1196)
!1216 = !DILocalVariable(name: "r", scope: !1196, file: !119, line: 780, type: !141)
!1217 = !DILocation(line: 780, column: 10, scope: !1196)
!1218 = !DILocation(line: 780, column: 40, scope: !1196)
!1219 = !DILocation(line: 780, column: 48, scope: !1196)
!1220 = !DILocation(line: 780, column: 60, scope: !1196)
!1221 = !DILocation(line: 780, column: 65, scope: !1196)
!1222 = !DILocation(line: 781, column: 40, scope: !1196)
!1223 = !DILocation(line: 781, column: 43, scope: !1196)
!1224 = !DILocation(line: 781, column: 50, scope: !1196)
!1225 = !DILocation(line: 781, column: 53, scope: !1196)
!1226 = !DILocation(line: 781, column: 60, scope: !1196)
!1227 = !DILocation(line: 781, column: 63, scope: !1196)
!1228 = !DILocation(line: 782, column: 40, scope: !1196)
!1229 = !DILocation(line: 782, column: 43, scope: !1196)
!1230 = !DILocation(line: 782, column: 55, scope: !1196)
!1231 = !DILocation(line: 782, column: 58, scope: !1196)
!1232 = !DILocation(line: 780, column: 14, scope: !1196)
!1233 = !DILocation(line: 783, column: 11, scope: !1196)
!1234 = !DILocation(line: 783, column: 3, scope: !1196)
!1235 = !DILocation(line: 783, column: 9, scope: !1196)
!1236 = !DILocation(line: 784, column: 10, scope: !1196)
!1237 = !DILocation(line: 784, column: 3, scope: !1196)
!1238 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !119, file: !119, line: 251, type: !1239, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !33)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!141, !103, !141, !6, !141, !121, !30, !1241, !6, !6}
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1243 = !DILocalVariable(name: "buffer", arg: 1, scope: !1238, file: !119, line: 251, type: !103)
!1244 = !DILocation(line: 251, column: 33, scope: !1238)
!1245 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1238, file: !119, line: 251, type: !141)
!1246 = !DILocation(line: 251, column: 48, scope: !1238)
!1247 = !DILocalVariable(name: "arg", arg: 3, scope: !1238, file: !119, line: 252, type: !6)
!1248 = !DILocation(line: 252, column: 39, scope: !1238)
!1249 = !DILocalVariable(name: "argsize", arg: 4, scope: !1238, file: !119, line: 252, type: !141)
!1250 = !DILocation(line: 252, column: 51, scope: !1238)
!1251 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1238, file: !119, line: 253, type: !121)
!1252 = !DILocation(line: 253, column: 46, scope: !1238)
!1253 = !DILocalVariable(name: "flags", arg: 6, scope: !1238, file: !119, line: 253, type: !30)
!1254 = !DILocation(line: 253, column: 65, scope: !1238)
!1255 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1238, file: !119, line: 254, type: !1241)
!1256 = !DILocation(line: 254, column: 47, scope: !1238)
!1257 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1238, file: !119, line: 255, type: !6)
!1258 = !DILocation(line: 255, column: 39, scope: !1238)
!1259 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1238, file: !119, line: 256, type: !6)
!1260 = !DILocation(line: 256, column: 39, scope: !1238)
!1261 = !DILocalVariable(name: "unibyte_locale", scope: !1238, file: !119, line: 258, type: !46)
!1262 = !DILocation(line: 258, column: 8, scope: !1238)
!1263 = !DILocation(line: 258, column: 25, scope: !1238)
!1264 = !DILocation(line: 258, column: 36, scope: !1238)
!1265 = !DILocalVariable(name: "len", scope: !1238, file: !119, line: 260, type: !141)
!1266 = !DILocation(line: 260, column: 10, scope: !1238)
!1267 = !DILocalVariable(name: "orig_buffersize", scope: !1238, file: !119, line: 261, type: !141)
!1268 = !DILocation(line: 261, column: 10, scope: !1238)
!1269 = !DILocalVariable(name: "quote_string", scope: !1238, file: !119, line: 262, type: !6)
!1270 = !DILocation(line: 262, column: 15, scope: !1238)
!1271 = !DILocalVariable(name: "quote_string_len", scope: !1238, file: !119, line: 263, type: !141)
!1272 = !DILocation(line: 263, column: 10, scope: !1238)
!1273 = !DILocalVariable(name: "backslash_escapes", scope: !1238, file: !119, line: 264, type: !46)
!1274 = !DILocation(line: 264, column: 8, scope: !1238)
!1275 = !DILocalVariable(name: "elide_outer_quotes", scope: !1238, file: !119, line: 265, type: !46)
!1276 = !DILocation(line: 265, column: 8, scope: !1238)
!1277 = !DILocation(line: 265, column: 30, scope: !1238)
!1278 = !DILocation(line: 265, column: 36, scope: !1238)
!1279 = !DILocation(line: 265, column: 61, scope: !1238)
!1280 = !DILocalVariable(name: "encountered_single_quote", scope: !1238, file: !119, line: 266, type: !46)
!1281 = !DILocation(line: 266, column: 8, scope: !1238)
!1282 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1238, file: !119, line: 267, type: !46)
!1283 = !DILocation(line: 267, column: 8, scope: !1238)
!1284 = !DILocation(line: 267, column: 3, scope: !1238)
!1285 = !DILabel(scope: !1238, name: "process_input", file: !119, line: 308)
!1286 = !DILocation(line: 308, column: 2, scope: !1238)
!1287 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1238, file: !119, line: 309, type: !46)
!1288 = !DILocation(line: 309, column: 8, scope: !1238)
!1289 = !DILocation(line: 311, column: 11, scope: !1238)
!1290 = !DILocation(line: 311, column: 3, scope: !1238)
!1291 = !DILocation(line: 314, column: 21, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1238, file: !119, line: 312, column: 5)
!1293 = !DILocation(line: 315, column: 26, scope: !1292)
!1294 = !DILocation(line: 315, column: 7, scope: !1292)
!1295 = !DILocation(line: 318, column: 12, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !119, line: 318, column: 11)
!1297 = !DILocation(line: 318, column: 11, scope: !1292)
!1298 = !DILocation(line: 319, column: 9, scope: !1296)
!1299 = !DILocation(line: 319, column: 9, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !119, line: 319, column: 9)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !119, line: 319, column: 9)
!1302 = !DILocation(line: 319, column: 9, scope: !1301)
!1303 = !DILocation(line: 320, column: 25, scope: !1292)
!1304 = !DILocation(line: 321, column: 20, scope: !1292)
!1305 = !DILocation(line: 322, column: 24, scope: !1292)
!1306 = !DILocation(line: 323, column: 7, scope: !1292)
!1307 = !DILocation(line: 326, column: 25, scope: !1292)
!1308 = !DILocation(line: 327, column: 26, scope: !1292)
!1309 = !DILocation(line: 328, column: 7, scope: !1292)
!1310 = !DILocation(line: 334, column: 13, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !119, line: 334, column: 13)
!1312 = distinct !DILexicalBlock(scope: !1292, file: !119, line: 333, column: 7)
!1313 = !DILocation(line: 334, column: 27, scope: !1311)
!1314 = !DILocation(line: 334, column: 13, scope: !1312)
!1315 = !DILocation(line: 357, column: 50, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !119, line: 335, column: 11)
!1317 = !DILocation(line: 357, column: 26, scope: !1316)
!1318 = !DILocation(line: 357, column: 24, scope: !1316)
!1319 = !DILocation(line: 358, column: 51, scope: !1316)
!1320 = !DILocation(line: 358, column: 27, scope: !1316)
!1321 = !DILocation(line: 358, column: 25, scope: !1316)
!1322 = !DILocation(line: 359, column: 11, scope: !1316)
!1323 = !DILocation(line: 360, column: 14, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1312, file: !119, line: 360, column: 13)
!1325 = !DILocation(line: 360, column: 13, scope: !1312)
!1326 = !DILocalVariable(name: "lq", scope: !1327, file: !119, line: 361, type: !6)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !119, line: 361, column: 11)
!1328 = !DILocation(line: 361, column: 28, scope: !1327)
!1329 = !DILocation(line: 361, column: 33, scope: !1327)
!1330 = !DILocation(line: 361, column: 16, scope: !1327)
!1331 = !DILocation(line: 361, column: 46, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !119, line: 361, column: 11)
!1333 = !DILocation(line: 361, column: 45, scope: !1332)
!1334 = !DILocation(line: 361, column: 11, scope: !1327)
!1335 = !DILocation(line: 362, column: 13, scope: !1332)
!1336 = !DILocation(line: 362, column: 13, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !119, line: 362, column: 13)
!1338 = distinct !DILexicalBlock(scope: !1332, file: !119, line: 362, column: 13)
!1339 = !DILocation(line: 362, column: 13, scope: !1338)
!1340 = !DILocation(line: 361, column: 52, scope: !1332)
!1341 = !DILocation(line: 361, column: 11, scope: !1332)
!1342 = distinct !{!1342, !1334, !1343, !391}
!1343 = !DILocation(line: 362, column: 13, scope: !1327)
!1344 = !DILocation(line: 363, column: 27, scope: !1312)
!1345 = !DILocation(line: 364, column: 24, scope: !1312)
!1346 = !DILocation(line: 364, column: 22, scope: !1312)
!1347 = !DILocation(line: 365, column: 36, scope: !1312)
!1348 = !DILocation(line: 365, column: 28, scope: !1312)
!1349 = !DILocation(line: 365, column: 26, scope: !1312)
!1350 = !DILocation(line: 367, column: 7, scope: !1292)
!1351 = !DILocation(line: 370, column: 25, scope: !1292)
!1352 = !DILocation(line: 370, column: 7, scope: !1292)
!1353 = !DILocation(line: 373, column: 26, scope: !1292)
!1354 = !DILocation(line: 373, column: 7, scope: !1292)
!1355 = !DILocation(line: 376, column: 12, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1292, file: !119, line: 376, column: 11)
!1357 = !DILocation(line: 376, column: 11, scope: !1292)
!1358 = !DILocation(line: 377, column: 27, scope: !1356)
!1359 = !DILocation(line: 377, column: 9, scope: !1356)
!1360 = !DILocation(line: 380, column: 21, scope: !1292)
!1361 = !DILocation(line: 381, column: 12, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1292, file: !119, line: 381, column: 11)
!1363 = !DILocation(line: 381, column: 11, scope: !1292)
!1364 = !DILocation(line: 382, column: 9, scope: !1362)
!1365 = !DILocation(line: 382, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !119, line: 382, column: 9)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !119, line: 382, column: 9)
!1368 = !DILocation(line: 382, column: 9, scope: !1367)
!1369 = !DILocation(line: 383, column: 20, scope: !1292)
!1370 = !DILocation(line: 384, column: 24, scope: !1292)
!1371 = !DILocation(line: 385, column: 7, scope: !1292)
!1372 = !DILocation(line: 388, column: 26, scope: !1292)
!1373 = !DILocation(line: 389, column: 7, scope: !1292)
!1374 = !DILocation(line: 392, column: 7, scope: !1292)
!1375 = !DILocalVariable(name: "i", scope: !1376, file: !119, line: 395, type: !141)
!1376 = distinct !DILexicalBlock(scope: !1238, file: !119, line: 395, column: 3)
!1377 = !DILocation(line: 395, column: 15, scope: !1376)
!1378 = !DILocation(line: 395, column: 8, scope: !1376)
!1379 = !DILocation(line: 395, column: 26, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !119, line: 395, column: 3)
!1381 = !DILocation(line: 395, column: 34, scope: !1380)
!1382 = !DILocation(line: 395, column: 48, scope: !1380)
!1383 = !DILocation(line: 395, column: 52, scope: !1380)
!1384 = !DILocation(line: 395, column: 55, scope: !1380)
!1385 = !DILocation(line: 395, column: 65, scope: !1380)
!1386 = !DILocation(line: 395, column: 70, scope: !1380)
!1387 = !DILocation(line: 395, column: 67, scope: !1380)
!1388 = !DILocation(line: 395, column: 23, scope: !1380)
!1389 = !DILocation(line: 395, column: 3, scope: !1376)
!1390 = !DILocalVariable(name: "is_right_quote", scope: !1391, file: !119, line: 397, type: !46)
!1391 = distinct !DILexicalBlock(scope: !1380, file: !119, line: 396, column: 5)
!1392 = !DILocation(line: 397, column: 12, scope: !1391)
!1393 = !DILocalVariable(name: "escaping", scope: !1391, file: !119, line: 398, type: !46)
!1394 = !DILocation(line: 398, column: 12, scope: !1391)
!1395 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1391, file: !119, line: 399, type: !46)
!1396 = !DILocation(line: 399, column: 12, scope: !1391)
!1397 = !DILocation(line: 401, column: 11, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1391, file: !119, line: 401, column: 11)
!1399 = !DILocation(line: 402, column: 11, scope: !1398)
!1400 = !DILocation(line: 402, column: 14, scope: !1398)
!1401 = !DILocation(line: 402, column: 28, scope: !1398)
!1402 = !DILocation(line: 403, column: 11, scope: !1398)
!1403 = !DILocation(line: 403, column: 14, scope: !1398)
!1404 = !DILocation(line: 404, column: 11, scope: !1398)
!1405 = !DILocation(line: 404, column: 15, scope: !1398)
!1406 = !DILocation(line: 404, column: 19, scope: !1398)
!1407 = !DILocation(line: 404, column: 17, scope: !1398)
!1408 = !DILocation(line: 405, column: 19, scope: !1398)
!1409 = !DILocation(line: 405, column: 27, scope: !1398)
!1410 = !DILocation(line: 405, column: 39, scope: !1398)
!1411 = !DILocation(line: 405, column: 46, scope: !1398)
!1412 = !DILocation(line: 405, column: 44, scope: !1398)
!1413 = !DILocation(line: 409, column: 40, scope: !1398)
!1414 = !DILocation(line: 409, column: 32, scope: !1398)
!1415 = !DILocation(line: 409, column: 30, scope: !1398)
!1416 = !DILocation(line: 409, column: 48, scope: !1398)
!1417 = !DILocation(line: 405, column: 15, scope: !1398)
!1418 = !DILocation(line: 410, column: 11, scope: !1398)
!1419 = !DILocation(line: 410, column: 21, scope: !1398)
!1420 = !DILocation(line: 410, column: 27, scope: !1398)
!1421 = !DILocation(line: 410, column: 25, scope: !1398)
!1422 = !DILocation(line: 410, column: 30, scope: !1398)
!1423 = !DILocation(line: 410, column: 44, scope: !1398)
!1424 = !DILocation(line: 410, column: 14, scope: !1398)
!1425 = !DILocation(line: 401, column: 11, scope: !1391)
!1426 = !DILocation(line: 412, column: 15, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !119, line: 412, column: 15)
!1428 = distinct !DILexicalBlock(scope: !1398, file: !119, line: 411, column: 9)
!1429 = !DILocation(line: 412, column: 15, scope: !1428)
!1430 = !DILocation(line: 413, column: 13, scope: !1427)
!1431 = !DILocation(line: 414, column: 26, scope: !1428)
!1432 = !DILocation(line: 415, column: 9, scope: !1428)
!1433 = !DILocalVariable(name: "c", scope: !1391, file: !119, line: 417, type: !212)
!1434 = !DILocation(line: 417, column: 21, scope: !1391)
!1435 = !DILocation(line: 417, column: 25, scope: !1391)
!1436 = !DILocation(line: 417, column: 29, scope: !1391)
!1437 = !DILocation(line: 418, column: 15, scope: !1391)
!1438 = !DILocation(line: 418, column: 7, scope: !1391)
!1439 = !DILocation(line: 421, column: 15, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !119, line: 421, column: 15)
!1441 = distinct !DILexicalBlock(scope: !1391, file: !119, line: 419, column: 9)
!1442 = !DILocation(line: 421, column: 15, scope: !1441)
!1443 = !DILocation(line: 423, column: 15, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !119, line: 422, column: 13)
!1445 = !DILocation(line: 423, column: 15, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !119, line: 423, column: 15)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !119, line: 423, column: 15)
!1448 = !DILocation(line: 423, column: 15, scope: !1447)
!1449 = !DILocation(line: 423, column: 15, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !119, line: 423, column: 15)
!1451 = !DILocation(line: 423, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1450, file: !119, line: 423, column: 15)
!1453 = !DILocation(line: 423, column: 15, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !119, line: 423, column: 15)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !119, line: 423, column: 15)
!1456 = !DILocation(line: 423, column: 15, scope: !1455)
!1457 = !DILocation(line: 423, column: 15, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !119, line: 423, column: 15)
!1459 = distinct !DILexicalBlock(scope: !1452, file: !119, line: 423, column: 15)
!1460 = !DILocation(line: 423, column: 15, scope: !1459)
!1461 = !DILocation(line: 423, column: 15, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !119, line: 423, column: 15)
!1463 = distinct !DILexicalBlock(scope: !1452, file: !119, line: 423, column: 15)
!1464 = !DILocation(line: 423, column: 15, scope: !1463)
!1465 = !DILocation(line: 423, column: 15, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !119, line: 423, column: 15)
!1467 = distinct !DILexicalBlock(scope: !1447, file: !119, line: 423, column: 15)
!1468 = !DILocation(line: 423, column: 15, scope: !1467)
!1469 = !DILocation(line: 430, column: 19, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1444, file: !119, line: 430, column: 19)
!1471 = !DILocation(line: 430, column: 33, scope: !1470)
!1472 = !DILocation(line: 431, column: 19, scope: !1470)
!1473 = !DILocation(line: 431, column: 22, scope: !1470)
!1474 = !DILocation(line: 431, column: 24, scope: !1470)
!1475 = !DILocation(line: 431, column: 30, scope: !1470)
!1476 = !DILocation(line: 431, column: 28, scope: !1470)
!1477 = !DILocation(line: 431, column: 38, scope: !1470)
!1478 = !DILocation(line: 431, column: 48, scope: !1470)
!1479 = !DILocation(line: 431, column: 52, scope: !1470)
!1480 = !DILocation(line: 431, column: 54, scope: !1470)
!1481 = !DILocation(line: 431, column: 45, scope: !1470)
!1482 = !DILocation(line: 431, column: 59, scope: !1470)
!1483 = !DILocation(line: 431, column: 62, scope: !1470)
!1484 = !DILocation(line: 431, column: 66, scope: !1470)
!1485 = !DILocation(line: 431, column: 68, scope: !1470)
!1486 = !DILocation(line: 431, column: 73, scope: !1470)
!1487 = !DILocation(line: 430, column: 19, scope: !1444)
!1488 = !DILocation(line: 433, column: 19, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1470, file: !119, line: 432, column: 17)
!1490 = !DILocation(line: 433, column: 19, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !119, line: 433, column: 19)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !119, line: 433, column: 19)
!1493 = !DILocation(line: 433, column: 19, scope: !1492)
!1494 = !DILocation(line: 434, column: 19, scope: !1489)
!1495 = !DILocation(line: 434, column: 19, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !119, line: 434, column: 19)
!1497 = distinct !DILexicalBlock(scope: !1489, file: !119, line: 434, column: 19)
!1498 = !DILocation(line: 434, column: 19, scope: !1497)
!1499 = !DILocation(line: 435, column: 17, scope: !1489)
!1500 = !DILocation(line: 436, column: 17, scope: !1444)
!1501 = !DILocation(line: 441, column: 13, scope: !1444)
!1502 = !DILocation(line: 442, column: 20, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1440, file: !119, line: 442, column: 20)
!1504 = !DILocation(line: 442, column: 26, scope: !1503)
!1505 = !DILocation(line: 442, column: 20, scope: !1440)
!1506 = !DILocation(line: 443, column: 13, scope: !1503)
!1507 = !DILocation(line: 444, column: 11, scope: !1441)
!1508 = !DILocation(line: 447, column: 20, scope: !1441)
!1509 = !DILocation(line: 447, column: 11, scope: !1441)
!1510 = !DILocation(line: 450, column: 19, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !119, line: 450, column: 19)
!1512 = distinct !DILexicalBlock(scope: !1441, file: !119, line: 448, column: 13)
!1513 = !DILocation(line: 450, column: 19, scope: !1512)
!1514 = !DILocation(line: 451, column: 17, scope: !1511)
!1515 = !DILocation(line: 452, column: 15, scope: !1512)
!1516 = !DILocation(line: 455, column: 20, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !119, line: 455, column: 19)
!1518 = !DILocation(line: 455, column: 26, scope: !1517)
!1519 = !DILocation(line: 456, column: 19, scope: !1517)
!1520 = !DILocation(line: 456, column: 22, scope: !1517)
!1521 = !DILocation(line: 456, column: 24, scope: !1517)
!1522 = !DILocation(line: 456, column: 30, scope: !1517)
!1523 = !DILocation(line: 456, column: 28, scope: !1517)
!1524 = !DILocation(line: 456, column: 38, scope: !1517)
!1525 = !DILocation(line: 456, column: 41, scope: !1517)
!1526 = !DILocation(line: 456, column: 45, scope: !1517)
!1527 = !DILocation(line: 456, column: 47, scope: !1517)
!1528 = !DILocation(line: 456, column: 52, scope: !1517)
!1529 = !DILocation(line: 455, column: 19, scope: !1512)
!1530 = !DILocation(line: 457, column: 25, scope: !1517)
!1531 = !DILocation(line: 457, column: 29, scope: !1517)
!1532 = !DILocation(line: 457, column: 31, scope: !1517)
!1533 = !DILocation(line: 457, column: 17, scope: !1517)
!1534 = !DILocation(line: 464, column: 25, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !119, line: 464, column: 25)
!1536 = distinct !DILexicalBlock(scope: !1517, file: !119, line: 458, column: 19)
!1537 = !DILocation(line: 464, column: 25, scope: !1536)
!1538 = !DILocation(line: 465, column: 23, scope: !1535)
!1539 = !DILocation(line: 466, column: 25, scope: !1536)
!1540 = !DILocation(line: 466, column: 29, scope: !1536)
!1541 = !DILocation(line: 466, column: 31, scope: !1536)
!1542 = !DILocation(line: 466, column: 23, scope: !1536)
!1543 = !DILocation(line: 467, column: 23, scope: !1536)
!1544 = !DILocation(line: 468, column: 21, scope: !1536)
!1545 = !DILocation(line: 468, column: 21, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !119, line: 468, column: 21)
!1547 = distinct !DILexicalBlock(scope: !1536, file: !119, line: 468, column: 21)
!1548 = !DILocation(line: 468, column: 21, scope: !1547)
!1549 = !DILocation(line: 469, column: 21, scope: !1536)
!1550 = !DILocation(line: 469, column: 21, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !119, line: 469, column: 21)
!1552 = distinct !DILexicalBlock(scope: !1536, file: !119, line: 469, column: 21)
!1553 = !DILocation(line: 469, column: 21, scope: !1552)
!1554 = !DILocation(line: 470, column: 21, scope: !1536)
!1555 = !DILocation(line: 470, column: 21, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !119, line: 470, column: 21)
!1557 = distinct !DILexicalBlock(scope: !1536, file: !119, line: 470, column: 21)
!1558 = !DILocation(line: 470, column: 21, scope: !1557)
!1559 = !DILocation(line: 471, column: 21, scope: !1536)
!1560 = !DILocation(line: 471, column: 21, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !119, line: 471, column: 21)
!1562 = distinct !DILexicalBlock(scope: !1536, file: !119, line: 471, column: 21)
!1563 = !DILocation(line: 471, column: 21, scope: !1562)
!1564 = !DILocation(line: 472, column: 21, scope: !1536)
!1565 = !DILocation(line: 473, column: 19, scope: !1536)
!1566 = !DILocation(line: 474, column: 15, scope: !1512)
!1567 = !DILocation(line: 476, column: 11, scope: !1441)
!1568 = !DILocation(line: 481, column: 26, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1441, file: !119, line: 478, column: 9)
!1570 = !DILocation(line: 481, column: 33, scope: !1569)
!1571 = !DILocation(line: 482, column: 26, scope: !1569)
!1572 = !DILocation(line: 482, column: 33, scope: !1569)
!1573 = !DILocation(line: 483, column: 26, scope: !1569)
!1574 = !DILocation(line: 483, column: 33, scope: !1569)
!1575 = !DILocation(line: 484, column: 26, scope: !1569)
!1576 = !DILocation(line: 484, column: 33, scope: !1569)
!1577 = !DILocation(line: 485, column: 26, scope: !1569)
!1578 = !DILocation(line: 485, column: 33, scope: !1569)
!1579 = !DILocation(line: 486, column: 26, scope: !1569)
!1580 = !DILocation(line: 486, column: 33, scope: !1569)
!1581 = !DILocation(line: 487, column: 26, scope: !1569)
!1582 = !DILocation(line: 487, column: 33, scope: !1569)
!1583 = !DILocation(line: 488, column: 28, scope: !1569)
!1584 = !DILocation(line: 488, column: 26, scope: !1569)
!1585 = !DILocation(line: 490, column: 17, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1569, file: !119, line: 490, column: 17)
!1587 = !DILocation(line: 490, column: 31, scope: !1586)
!1588 = !DILocation(line: 490, column: 17, scope: !1569)
!1589 = !DILocation(line: 492, column: 21, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !119, line: 492, column: 21)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !119, line: 491, column: 15)
!1592 = !DILocation(line: 492, column: 21, scope: !1591)
!1593 = !DILocation(line: 493, column: 19, scope: !1590)
!1594 = !DILocation(line: 494, column: 17, scope: !1591)
!1595 = !DILocation(line: 499, column: 17, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1569, file: !119, line: 499, column: 17)
!1597 = !DILocation(line: 499, column: 35, scope: !1596)
!1598 = !DILocation(line: 499, column: 38, scope: !1596)
!1599 = !DILocation(line: 499, column: 57, scope: !1596)
!1600 = !DILocation(line: 499, column: 60, scope: !1596)
!1601 = !DILocation(line: 499, column: 17, scope: !1569)
!1602 = !DILocation(line: 500, column: 15, scope: !1596)
!1603 = !DILabel(scope: !1569, name: "c_and_shell_escape", file: !119, line: 502)
!1604 = !DILocation(line: 502, column: 11, scope: !1569)
!1605 = !DILocation(line: 503, column: 17, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1569, file: !119, line: 503, column: 17)
!1607 = !DILocation(line: 503, column: 31, scope: !1606)
!1608 = !DILocation(line: 504, column: 17, scope: !1606)
!1609 = !DILocation(line: 504, column: 20, scope: !1606)
!1610 = !DILocation(line: 503, column: 17, scope: !1569)
!1611 = !DILocation(line: 505, column: 15, scope: !1606)
!1612 = !DILabel(scope: !1569, name: "c_escape", file: !119, line: 507)
!1613 = !DILocation(line: 507, column: 11, scope: !1569)
!1614 = !DILocation(line: 508, column: 17, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1569, file: !119, line: 508, column: 17)
!1616 = !DILocation(line: 508, column: 17, scope: !1569)
!1617 = !DILocation(line: 510, column: 21, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !119, line: 509, column: 15)
!1619 = !DILocation(line: 510, column: 19, scope: !1618)
!1620 = !DILocation(line: 511, column: 17, scope: !1618)
!1621 = !DILocation(line: 513, column: 13, scope: !1569)
!1622 = !DILocation(line: 517, column: 18, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1441, file: !119, line: 517, column: 15)
!1624 = !DILocation(line: 517, column: 26, scope: !1623)
!1625 = !DILocation(line: 517, column: 15, scope: !1441)
!1626 = !DILocation(line: 517, column: 40, scope: !1623)
!1627 = !DILocation(line: 517, column: 47, scope: !1623)
!1628 = !DILocation(line: 517, column: 57, scope: !1623)
!1629 = !DILocation(line: 517, column: 65, scope: !1623)
!1630 = !DILocation(line: 518, column: 13, scope: !1623)
!1631 = !DILocation(line: 517, column: 69, scope: !1623)
!1632 = !DILocation(line: 521, column: 15, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1441, file: !119, line: 521, column: 15)
!1634 = !DILocation(line: 521, column: 17, scope: !1633)
!1635 = !DILocation(line: 521, column: 15, scope: !1441)
!1636 = !DILocation(line: 522, column: 13, scope: !1633)
!1637 = !DILocation(line: 521, column: 20, scope: !1633)
!1638 = !DILocation(line: 525, column: 36, scope: !1441)
!1639 = !DILocation(line: 525, column: 11, scope: !1441)
!1640 = !DILocation(line: 536, column: 15, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1441, file: !119, line: 536, column: 15)
!1642 = !DILocation(line: 536, column: 29, scope: !1641)
!1643 = !DILocation(line: 537, column: 15, scope: !1641)
!1644 = !DILocation(line: 537, column: 18, scope: !1641)
!1645 = !DILocation(line: 536, column: 15, scope: !1441)
!1646 = !DILocation(line: 538, column: 13, scope: !1641)
!1647 = !DILocation(line: 539, column: 11, scope: !1441)
!1648 = !DILocation(line: 542, column: 36, scope: !1441)
!1649 = !DILocation(line: 543, column: 36, scope: !1441)
!1650 = !DILocation(line: 544, column: 15, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1441, file: !119, line: 544, column: 15)
!1652 = !DILocation(line: 544, column: 29, scope: !1651)
!1653 = !DILocation(line: 544, column: 15, scope: !1441)
!1654 = !DILocation(line: 546, column: 19, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !119, line: 546, column: 19)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !119, line: 545, column: 13)
!1657 = !DILocation(line: 546, column: 19, scope: !1656)
!1658 = !DILocation(line: 547, column: 17, scope: !1655)
!1659 = !DILocation(line: 549, column: 19, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !119, line: 549, column: 19)
!1661 = !DILocation(line: 549, column: 30, scope: !1660)
!1662 = !DILocation(line: 549, column: 35, scope: !1660)
!1663 = !DILocation(line: 549, column: 19, scope: !1656)
!1664 = !DILocation(line: 554, column: 37, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !119, line: 550, column: 17)
!1666 = !DILocation(line: 554, column: 35, scope: !1665)
!1667 = !DILocation(line: 555, column: 30, scope: !1665)
!1668 = !DILocation(line: 556, column: 17, scope: !1665)
!1669 = !DILocation(line: 558, column: 15, scope: !1656)
!1670 = !DILocation(line: 558, column: 15, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !119, line: 558, column: 15)
!1672 = distinct !DILexicalBlock(scope: !1656, file: !119, line: 558, column: 15)
!1673 = !DILocation(line: 558, column: 15, scope: !1672)
!1674 = !DILocation(line: 559, column: 15, scope: !1656)
!1675 = !DILocation(line: 559, column: 15, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !119, line: 559, column: 15)
!1677 = distinct !DILexicalBlock(scope: !1656, file: !119, line: 559, column: 15)
!1678 = !DILocation(line: 559, column: 15, scope: !1677)
!1679 = !DILocation(line: 560, column: 15, scope: !1656)
!1680 = !DILocation(line: 560, column: 15, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !119, line: 560, column: 15)
!1682 = distinct !DILexicalBlock(scope: !1656, file: !119, line: 560, column: 15)
!1683 = !DILocation(line: 560, column: 15, scope: !1682)
!1684 = !DILocation(line: 561, column: 40, scope: !1656)
!1685 = !DILocation(line: 562, column: 13, scope: !1656)
!1686 = !DILocation(line: 563, column: 11, scope: !1441)
!1687 = !DILocation(line: 587, column: 36, scope: !1441)
!1688 = !DILocation(line: 588, column: 11, scope: !1441)
!1689 = !DILocalVariable(name: "m", scope: !1690, file: !119, line: 598, type: !141)
!1690 = distinct !DILexicalBlock(scope: !1441, file: !119, line: 596, column: 11)
!1691 = !DILocation(line: 598, column: 20, scope: !1690)
!1692 = !DILocalVariable(name: "printable", scope: !1690, file: !119, line: 600, type: !46)
!1693 = !DILocation(line: 600, column: 18, scope: !1690)
!1694 = !DILocation(line: 602, column: 17, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1690, file: !119, line: 602, column: 17)
!1696 = !DILocation(line: 602, column: 17, scope: !1690)
!1697 = !DILocation(line: 604, column: 19, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !119, line: 603, column: 15)
!1699 = !DILocation(line: 605, column: 29, scope: !1698)
!1700 = !DILocation(line: 605, column: 41, scope: !1698)
!1701 = !DILocation(line: 605, column: 27, scope: !1698)
!1702 = !DILocation(line: 606, column: 15, scope: !1698)
!1703 = !DILocalVariable(name: "mbs", scope: !1704, file: !119, line: 609, type: !1705)
!1704 = distinct !DILexicalBlock(scope: !1695, file: !119, line: 608, column: 15)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !1706)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1707, file: !217, line: 15, baseType: !30, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1707, file: !217, line: 20, baseType: !1711, size: 32, offset: 32)
!1711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1707, file: !217, line: 16, size: 32, elements: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1711, file: !217, line: 18, baseType: !14, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1711, file: !217, line: 19, baseType: !226, size: 32)
!1715 = !DILocation(line: 609, column: 27, scope: !1704)
!1716 = !DILocation(line: 609, column: 32, scope: !1704)
!1717 = !DILocation(line: 611, column: 19, scope: !1704)
!1718 = !DILocation(line: 612, column: 27, scope: !1704)
!1719 = !DILocation(line: 613, column: 21, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1704, file: !119, line: 613, column: 21)
!1721 = !DILocation(line: 613, column: 29, scope: !1720)
!1722 = !DILocation(line: 613, column: 21, scope: !1704)
!1723 = !DILocation(line: 614, column: 37, scope: !1720)
!1724 = !DILocation(line: 614, column: 29, scope: !1720)
!1725 = !DILocation(line: 614, column: 27, scope: !1720)
!1726 = !DILocation(line: 614, column: 19, scope: !1720)
!1727 = !DILocation(line: 616, column: 17, scope: !1704)
!1728 = !DILocalVariable(name: "w", scope: !1729, file: !119, line: 618, type: !1025)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !119, line: 617, column: 19)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !119, line: 616, column: 17)
!1731 = distinct !DILexicalBlock(scope: !1704, file: !119, line: 616, column: 17)
!1732 = !DILocation(line: 618, column: 30, scope: !1729)
!1733 = !DILocalVariable(name: "bytes", scope: !1729, file: !119, line: 619, type: !141)
!1734 = !DILocation(line: 619, column: 28, scope: !1729)
!1735 = !DILocation(line: 619, column: 51, scope: !1729)
!1736 = !DILocation(line: 619, column: 55, scope: !1729)
!1737 = !DILocation(line: 619, column: 59, scope: !1729)
!1738 = !DILocation(line: 619, column: 57, scope: !1729)
!1739 = !DILocation(line: 620, column: 46, scope: !1729)
!1740 = !DILocation(line: 620, column: 57, scope: !1729)
!1741 = !DILocation(line: 620, column: 61, scope: !1729)
!1742 = !DILocation(line: 620, column: 59, scope: !1729)
!1743 = !DILocation(line: 620, column: 54, scope: !1729)
!1744 = !DILocation(line: 619, column: 36, scope: !1729)
!1745 = !DILocation(line: 621, column: 25, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1729, file: !119, line: 621, column: 25)
!1747 = !DILocation(line: 621, column: 31, scope: !1746)
!1748 = !DILocation(line: 621, column: 25, scope: !1729)
!1749 = !DILocation(line: 622, column: 23, scope: !1746)
!1750 = !DILocation(line: 623, column: 30, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1746, file: !119, line: 623, column: 30)
!1752 = !DILocation(line: 623, column: 36, scope: !1751)
!1753 = !DILocation(line: 623, column: 30, scope: !1746)
!1754 = !DILocation(line: 625, column: 35, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1751, file: !119, line: 624, column: 23)
!1756 = !DILocation(line: 626, column: 25, scope: !1755)
!1757 = !DILocation(line: 628, column: 30, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1751, file: !119, line: 628, column: 30)
!1759 = !DILocation(line: 628, column: 36, scope: !1758)
!1760 = !DILocation(line: 628, column: 30, scope: !1751)
!1761 = !DILocation(line: 630, column: 35, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !119, line: 629, column: 23)
!1763 = !DILocation(line: 631, column: 25, scope: !1762)
!1764 = !DILocation(line: 631, column: 32, scope: !1762)
!1765 = !DILocation(line: 631, column: 36, scope: !1762)
!1766 = !DILocation(line: 631, column: 34, scope: !1762)
!1767 = !DILocation(line: 631, column: 40, scope: !1762)
!1768 = !DILocation(line: 631, column: 38, scope: !1762)
!1769 = !DILocation(line: 631, column: 48, scope: !1762)
!1770 = !DILocation(line: 631, column: 51, scope: !1762)
!1771 = !DILocation(line: 631, column: 55, scope: !1762)
!1772 = !DILocation(line: 631, column: 59, scope: !1762)
!1773 = !DILocation(line: 631, column: 57, scope: !1762)
!1774 = !DILocation(line: 0, scope: !1762)
!1775 = !DILocation(line: 632, column: 28, scope: !1762)
!1776 = distinct !{!1776, !1763, !1775, !391}
!1777 = !DILocation(line: 633, column: 25, scope: !1762)
!1778 = !DILocation(line: 645, column: 44, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !119, line: 645, column: 29)
!1780 = distinct !DILexicalBlock(scope: !1758, file: !119, line: 636, column: 23)
!1781 = !DILocation(line: 646, column: 29, scope: !1779)
!1782 = !DILocation(line: 646, column: 32, scope: !1779)
!1783 = !DILocation(line: 646, column: 46, scope: !1779)
!1784 = !DILocation(line: 645, column: 29, scope: !1780)
!1785 = !DILocalVariable(name: "j", scope: !1786, file: !119, line: 648, type: !141)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !119, line: 648, column: 29)
!1787 = distinct !DILexicalBlock(scope: !1779, file: !119, line: 647, column: 27)
!1788 = !DILocation(line: 648, column: 41, scope: !1786)
!1789 = !DILocation(line: 648, column: 34, scope: !1786)
!1790 = !DILocation(line: 648, column: 48, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1786, file: !119, line: 648, column: 29)
!1792 = !DILocation(line: 648, column: 52, scope: !1791)
!1793 = !DILocation(line: 648, column: 50, scope: !1791)
!1794 = !DILocation(line: 648, column: 29, scope: !1786)
!1795 = !DILocation(line: 649, column: 39, scope: !1791)
!1796 = !DILocation(line: 649, column: 43, scope: !1791)
!1797 = !DILocation(line: 649, column: 47, scope: !1791)
!1798 = !DILocation(line: 649, column: 45, scope: !1791)
!1799 = !DILocation(line: 649, column: 51, scope: !1791)
!1800 = !DILocation(line: 649, column: 49, scope: !1791)
!1801 = !DILocation(line: 649, column: 31, scope: !1791)
!1802 = !DILocation(line: 653, column: 35, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1791, file: !119, line: 650, column: 33)
!1804 = !DILocation(line: 654, column: 33, scope: !1803)
!1805 = !DILocation(line: 648, column: 60, scope: !1791)
!1806 = !DILocation(line: 648, column: 29, scope: !1791)
!1807 = distinct !{!1807, !1794, !1808, !391}
!1808 = !DILocation(line: 654, column: 33, scope: !1786)
!1809 = !DILocation(line: 655, column: 27, scope: !1787)
!1810 = !DILocation(line: 657, column: 43, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1780, file: !119, line: 657, column: 29)
!1812 = !DILocation(line: 657, column: 31, scope: !1811)
!1813 = !DILocation(line: 657, column: 29, scope: !1780)
!1814 = !DILocation(line: 658, column: 37, scope: !1811)
!1815 = !DILocation(line: 658, column: 27, scope: !1811)
!1816 = !DILocation(line: 659, column: 30, scope: !1780)
!1817 = !DILocation(line: 659, column: 27, scope: !1780)
!1818 = !DILocation(line: 664, column: 23, scope: !1729)
!1819 = !DILocation(line: 668, column: 40, scope: !1690)
!1820 = !DILocation(line: 668, column: 38, scope: !1690)
!1821 = !DILocation(line: 670, column: 21, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1690, file: !119, line: 670, column: 17)
!1823 = !DILocation(line: 670, column: 19, scope: !1822)
!1824 = !DILocation(line: 670, column: 23, scope: !1822)
!1825 = !DILocation(line: 670, column: 27, scope: !1822)
!1826 = !DILocation(line: 670, column: 45, scope: !1822)
!1827 = !DILocation(line: 670, column: 50, scope: !1822)
!1828 = !DILocation(line: 670, column: 17, scope: !1690)
!1829 = !DILocalVariable(name: "ilim", scope: !1830, file: !119, line: 674, type: !141)
!1830 = distinct !DILexicalBlock(scope: !1822, file: !119, line: 671, column: 15)
!1831 = !DILocation(line: 674, column: 24, scope: !1830)
!1832 = !DILocation(line: 674, column: 31, scope: !1830)
!1833 = !DILocation(line: 674, column: 35, scope: !1830)
!1834 = !DILocation(line: 674, column: 33, scope: !1830)
!1835 = !DILocation(line: 676, column: 17, scope: !1830)
!1836 = !DILocation(line: 678, column: 25, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !119, line: 678, column: 25)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !119, line: 677, column: 19)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !119, line: 676, column: 17)
!1840 = distinct !DILexicalBlock(scope: !1830, file: !119, line: 676, column: 17)
!1841 = !DILocation(line: 678, column: 43, scope: !1837)
!1842 = !DILocation(line: 678, column: 48, scope: !1837)
!1843 = !DILocation(line: 678, column: 25, scope: !1838)
!1844 = !DILocation(line: 680, column: 25, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1837, file: !119, line: 679, column: 23)
!1846 = !DILocation(line: 680, column: 25, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !119, line: 680, column: 25)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !119, line: 680, column: 25)
!1849 = !DILocation(line: 680, column: 25, scope: !1848)
!1850 = !DILocation(line: 680, column: 25, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !119, line: 680, column: 25)
!1852 = !DILocation(line: 680, column: 25, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1851, file: !119, line: 680, column: 25)
!1854 = !DILocation(line: 680, column: 25, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !119, line: 680, column: 25)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !119, line: 680, column: 25)
!1857 = !DILocation(line: 680, column: 25, scope: !1856)
!1858 = !DILocation(line: 680, column: 25, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !119, line: 680, column: 25)
!1860 = distinct !DILexicalBlock(scope: !1853, file: !119, line: 680, column: 25)
!1861 = !DILocation(line: 680, column: 25, scope: !1860)
!1862 = !DILocation(line: 680, column: 25, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !119, line: 680, column: 25)
!1864 = distinct !DILexicalBlock(scope: !1853, file: !119, line: 680, column: 25)
!1865 = !DILocation(line: 680, column: 25, scope: !1864)
!1866 = !DILocation(line: 680, column: 25, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !119, line: 680, column: 25)
!1868 = distinct !DILexicalBlock(scope: !1848, file: !119, line: 680, column: 25)
!1869 = !DILocation(line: 680, column: 25, scope: !1868)
!1870 = !DILocation(line: 681, column: 25, scope: !1845)
!1871 = !DILocation(line: 681, column: 25, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !119, line: 681, column: 25)
!1873 = distinct !DILexicalBlock(scope: !1845, file: !119, line: 681, column: 25)
!1874 = !DILocation(line: 681, column: 25, scope: !1873)
!1875 = !DILocation(line: 682, column: 25, scope: !1845)
!1876 = !DILocation(line: 682, column: 25, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !119, line: 682, column: 25)
!1878 = distinct !DILexicalBlock(scope: !1845, file: !119, line: 682, column: 25)
!1879 = !DILocation(line: 682, column: 25, scope: !1878)
!1880 = !DILocation(line: 683, column: 36, scope: !1845)
!1881 = !DILocation(line: 683, column: 38, scope: !1845)
!1882 = !DILocation(line: 683, column: 33, scope: !1845)
!1883 = !DILocation(line: 683, column: 29, scope: !1845)
!1884 = !DILocation(line: 683, column: 27, scope: !1845)
!1885 = !DILocation(line: 684, column: 23, scope: !1845)
!1886 = !DILocation(line: 685, column: 30, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1837, file: !119, line: 685, column: 30)
!1888 = !DILocation(line: 685, column: 30, scope: !1837)
!1889 = !DILocation(line: 687, column: 25, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1887, file: !119, line: 686, column: 23)
!1891 = !DILocation(line: 687, column: 25, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !119, line: 687, column: 25)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !119, line: 687, column: 25)
!1894 = !DILocation(line: 687, column: 25, scope: !1893)
!1895 = !DILocation(line: 688, column: 40, scope: !1890)
!1896 = !DILocation(line: 689, column: 23, scope: !1890)
!1897 = !DILocation(line: 690, column: 25, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1838, file: !119, line: 690, column: 25)
!1899 = !DILocation(line: 690, column: 33, scope: !1898)
!1900 = !DILocation(line: 690, column: 35, scope: !1898)
!1901 = !DILocation(line: 690, column: 30, scope: !1898)
!1902 = !DILocation(line: 690, column: 25, scope: !1838)
!1903 = !DILocation(line: 691, column: 23, scope: !1898)
!1904 = !DILocation(line: 692, column: 21, scope: !1838)
!1905 = !DILocation(line: 692, column: 21, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !119, line: 692, column: 21)
!1907 = distinct !DILexicalBlock(scope: !1838, file: !119, line: 692, column: 21)
!1908 = !DILocation(line: 692, column: 21, scope: !1907)
!1909 = !DILocation(line: 692, column: 21, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1906, file: !119, line: 692, column: 21)
!1911 = !DILocation(line: 692, column: 21, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !119, line: 692, column: 21)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !119, line: 692, column: 21)
!1914 = !DILocation(line: 692, column: 21, scope: !1913)
!1915 = !DILocation(line: 692, column: 21, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !119, line: 692, column: 21)
!1917 = distinct !DILexicalBlock(scope: !1910, file: !119, line: 692, column: 21)
!1918 = !DILocation(line: 692, column: 21, scope: !1917)
!1919 = !DILocation(line: 693, column: 21, scope: !1838)
!1920 = !DILocation(line: 693, column: 21, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !119, line: 693, column: 21)
!1922 = distinct !DILexicalBlock(scope: !1838, file: !119, line: 693, column: 21)
!1923 = !DILocation(line: 693, column: 21, scope: !1922)
!1924 = !DILocation(line: 694, column: 25, scope: !1838)
!1925 = !DILocation(line: 694, column: 29, scope: !1838)
!1926 = !DILocation(line: 694, column: 23, scope: !1838)
!1927 = !DILocation(line: 676, column: 17, scope: !1839)
!1928 = distinct !{!1928, !1929, !1930}
!1929 = !DILocation(line: 676, column: 17, scope: !1840)
!1930 = !DILocation(line: 695, column: 19, scope: !1840)
!1931 = !DILocation(line: 697, column: 17, scope: !1830)
!1932 = !DILocation(line: 700, column: 9, scope: !1441)
!1933 = !DILocation(line: 702, column: 16, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1391, file: !119, line: 702, column: 11)
!1935 = !DILocation(line: 702, column: 34, scope: !1934)
!1936 = !DILocation(line: 702, column: 37, scope: !1934)
!1937 = !DILocation(line: 702, column: 51, scope: !1934)
!1938 = !DILocation(line: 703, column: 15, scope: !1934)
!1939 = !DILocation(line: 703, column: 18, scope: !1934)
!1940 = !DILocation(line: 704, column: 14, scope: !1934)
!1941 = !DILocation(line: 704, column: 17, scope: !1934)
!1942 = !DILocation(line: 705, column: 14, scope: !1934)
!1943 = !DILocation(line: 705, column: 17, scope: !1934)
!1944 = !DILocation(line: 705, column: 33, scope: !1934)
!1945 = !DILocation(line: 705, column: 35, scope: !1934)
!1946 = !DILocation(line: 705, column: 51, scope: !1934)
!1947 = !DILocation(line: 705, column: 53, scope: !1934)
!1948 = !DILocation(line: 705, column: 47, scope: !1934)
!1949 = !DILocation(line: 705, column: 65, scope: !1934)
!1950 = !DILocation(line: 706, column: 11, scope: !1934)
!1951 = !DILocation(line: 706, column: 15, scope: !1934)
!1952 = !DILocation(line: 702, column: 11, scope: !1391)
!1953 = !DILocation(line: 707, column: 9, scope: !1934)
!1954 = !DILabel(scope: !1391, name: "store_escape", file: !119, line: 709)
!1955 = !DILocation(line: 709, column: 5, scope: !1391)
!1956 = !DILocation(line: 710, column: 7, scope: !1391)
!1957 = !DILocation(line: 710, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !119, line: 710, column: 7)
!1959 = distinct !DILexicalBlock(scope: !1391, file: !119, line: 710, column: 7)
!1960 = !DILocation(line: 710, column: 7, scope: !1959)
!1961 = !DILocation(line: 710, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !119, line: 710, column: 7)
!1963 = !DILocation(line: 710, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1962, file: !119, line: 710, column: 7)
!1965 = !DILocation(line: 710, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !119, line: 710, column: 7)
!1967 = distinct !DILexicalBlock(scope: !1964, file: !119, line: 710, column: 7)
!1968 = !DILocation(line: 710, column: 7, scope: !1967)
!1969 = !DILocation(line: 710, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !119, line: 710, column: 7)
!1971 = distinct !DILexicalBlock(scope: !1964, file: !119, line: 710, column: 7)
!1972 = !DILocation(line: 710, column: 7, scope: !1971)
!1973 = !DILocation(line: 710, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !119, line: 710, column: 7)
!1975 = distinct !DILexicalBlock(scope: !1964, file: !119, line: 710, column: 7)
!1976 = !DILocation(line: 710, column: 7, scope: !1975)
!1977 = !DILocation(line: 710, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !119, line: 710, column: 7)
!1979 = distinct !DILexicalBlock(scope: !1959, file: !119, line: 710, column: 7)
!1980 = !DILocation(line: 710, column: 7, scope: !1979)
!1981 = !DILabel(scope: !1391, name: "store_c", file: !119, line: 712)
!1982 = !DILocation(line: 712, column: 5, scope: !1391)
!1983 = !DILocation(line: 713, column: 7, scope: !1391)
!1984 = !DILocation(line: 713, column: 7, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !119, line: 713, column: 7)
!1986 = distinct !DILexicalBlock(scope: !1391, file: !119, line: 713, column: 7)
!1987 = !DILocation(line: 713, column: 7, scope: !1986)
!1988 = !DILocation(line: 713, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !119, line: 713, column: 7)
!1990 = !DILocation(line: 713, column: 7, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !119, line: 713, column: 7)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !119, line: 713, column: 7)
!1993 = !DILocation(line: 713, column: 7, scope: !1992)
!1994 = !DILocation(line: 713, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !119, line: 713, column: 7)
!1996 = distinct !DILexicalBlock(scope: !1989, file: !119, line: 713, column: 7)
!1997 = !DILocation(line: 713, column: 7, scope: !1996)
!1998 = !DILocation(line: 714, column: 7, scope: !1391)
!1999 = !DILocation(line: 714, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !119, line: 714, column: 7)
!2001 = distinct !DILexicalBlock(scope: !1391, file: !119, line: 714, column: 7)
!2002 = !DILocation(line: 714, column: 7, scope: !2001)
!2003 = !DILocation(line: 716, column: 13, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1391, file: !119, line: 716, column: 11)
!2005 = !DILocation(line: 716, column: 11, scope: !1391)
!2006 = !DILocation(line: 717, column: 38, scope: !2004)
!2007 = !DILocation(line: 717, column: 9, scope: !2004)
!2008 = !DILocation(line: 718, column: 5, scope: !1391)
!2009 = !DILocation(line: 395, column: 82, scope: !1380)
!2010 = !DILocation(line: 395, column: 3, scope: !1380)
!2011 = distinct !{!2011, !1389, !2012, !391}
!2012 = !DILocation(line: 718, column: 5, scope: !1376)
!2013 = !DILocation(line: 720, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1238, file: !119, line: 720, column: 7)
!2015 = !DILocation(line: 720, column: 11, scope: !2014)
!2016 = !DILocation(line: 720, column: 16, scope: !2014)
!2017 = !DILocation(line: 720, column: 19, scope: !2014)
!2018 = !DILocation(line: 720, column: 33, scope: !2014)
!2019 = !DILocation(line: 721, column: 7, scope: !2014)
!2020 = !DILocation(line: 721, column: 10, scope: !2014)
!2021 = !DILocation(line: 720, column: 7, scope: !1238)
!2022 = !DILocation(line: 722, column: 5, scope: !2014)
!2023 = !DILocation(line: 728, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1238, file: !119, line: 728, column: 7)
!2025 = !DILocation(line: 728, column: 21, scope: !2024)
!2026 = !DILocation(line: 728, column: 51, scope: !2024)
!2027 = !DILocation(line: 728, column: 56, scope: !2024)
!2028 = !DILocation(line: 729, column: 7, scope: !2024)
!2029 = !DILocation(line: 729, column: 10, scope: !2024)
!2030 = !DILocation(line: 728, column: 7, scope: !1238)
!2031 = !DILocation(line: 731, column: 11, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !119, line: 731, column: 11)
!2033 = distinct !DILexicalBlock(scope: !2024, file: !119, line: 730, column: 5)
!2034 = !DILocation(line: 731, column: 11, scope: !2033)
!2035 = !DILocation(line: 732, column: 42, scope: !2032)
!2036 = !DILocation(line: 732, column: 50, scope: !2032)
!2037 = !DILocation(line: 732, column: 67, scope: !2032)
!2038 = !DILocation(line: 732, column: 72, scope: !2032)
!2039 = !DILocation(line: 734, column: 42, scope: !2032)
!2040 = !DILocation(line: 734, column: 49, scope: !2032)
!2041 = !DILocation(line: 735, column: 42, scope: !2032)
!2042 = !DILocation(line: 735, column: 54, scope: !2032)
!2043 = !DILocation(line: 732, column: 16, scope: !2032)
!2044 = !DILocation(line: 732, column: 9, scope: !2032)
!2045 = !DILocation(line: 736, column: 18, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2032, file: !119, line: 736, column: 16)
!2047 = !DILocation(line: 736, column: 29, scope: !2046)
!2048 = !DILocation(line: 736, column: 32, scope: !2046)
!2049 = !DILocation(line: 736, column: 16, scope: !2032)
!2050 = !DILocation(line: 739, column: 24, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !119, line: 737, column: 9)
!2052 = !DILocation(line: 739, column: 22, scope: !2051)
!2053 = !DILocation(line: 740, column: 15, scope: !2051)
!2054 = !DILocation(line: 741, column: 11, scope: !2051)
!2055 = !DILocation(line: 743, column: 5, scope: !2033)
!2056 = !DILocation(line: 745, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1238, file: !119, line: 745, column: 7)
!2058 = !DILocation(line: 745, column: 20, scope: !2057)
!2059 = !DILocation(line: 745, column: 24, scope: !2057)
!2060 = !DILocation(line: 745, column: 7, scope: !1238)
!2061 = !DILocation(line: 746, column: 5, scope: !2057)
!2062 = !DILocation(line: 746, column: 13, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !119, line: 746, column: 5)
!2064 = distinct !DILexicalBlock(scope: !2057, file: !119, line: 746, column: 5)
!2065 = !DILocation(line: 746, column: 12, scope: !2063)
!2066 = !DILocation(line: 746, column: 5, scope: !2064)
!2067 = !DILocation(line: 747, column: 7, scope: !2063)
!2068 = !DILocation(line: 747, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !119, line: 747, column: 7)
!2070 = distinct !DILexicalBlock(scope: !2063, file: !119, line: 747, column: 7)
!2071 = !DILocation(line: 747, column: 7, scope: !2070)
!2072 = !DILocation(line: 746, column: 39, scope: !2063)
!2073 = !DILocation(line: 746, column: 5, scope: !2063)
!2074 = distinct !{!2074, !2066, !2075, !391}
!2075 = !DILocation(line: 747, column: 7, scope: !2064)
!2076 = !DILocation(line: 749, column: 7, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1238, file: !119, line: 749, column: 7)
!2078 = !DILocation(line: 749, column: 13, scope: !2077)
!2079 = !DILocation(line: 749, column: 11, scope: !2077)
!2080 = !DILocation(line: 749, column: 7, scope: !1238)
!2081 = !DILocation(line: 750, column: 5, scope: !2077)
!2082 = !DILocation(line: 750, column: 12, scope: !2077)
!2083 = !DILocation(line: 750, column: 17, scope: !2077)
!2084 = !DILocation(line: 751, column: 10, scope: !1238)
!2085 = !DILocation(line: 751, column: 3, scope: !1238)
!2086 = !DILabel(scope: !1238, name: "force_outer_quoting_style", file: !119, line: 753)
!2087 = !DILocation(line: 753, column: 2, scope: !1238)
!2088 = !DILocation(line: 756, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1238, file: !119, line: 756, column: 7)
!2090 = !DILocation(line: 756, column: 21, scope: !2089)
!2091 = !DILocation(line: 756, column: 51, scope: !2089)
!2092 = !DILocation(line: 756, column: 54, scope: !2089)
!2093 = !DILocation(line: 756, column: 7, scope: !1238)
!2094 = !DILocation(line: 757, column: 19, scope: !2089)
!2095 = !DILocation(line: 757, column: 5, scope: !2089)
!2096 = !DILocation(line: 758, column: 36, scope: !1238)
!2097 = !DILocation(line: 758, column: 44, scope: !1238)
!2098 = !DILocation(line: 758, column: 56, scope: !1238)
!2099 = !DILocation(line: 758, column: 61, scope: !1238)
!2100 = !DILocation(line: 759, column: 36, scope: !1238)
!2101 = !DILocation(line: 760, column: 36, scope: !1238)
!2102 = !DILocation(line: 760, column: 42, scope: !1238)
!2103 = !DILocation(line: 761, column: 36, scope: !1238)
!2104 = !DILocation(line: 761, column: 48, scope: !1238)
!2105 = !DILocation(line: 758, column: 10, scope: !1238)
!2106 = !DILocation(line: 758, column: 3, scope: !1238)
!2107 = !DILocation(line: 762, column: 1, scope: !1238)
!2108 = !DILocalVariable(name: "msgid", arg: 1, scope: !172, file: !119, line: 197, type: !6)
!2109 = !DILocation(line: 197, column: 28, scope: !172)
!2110 = !DILocalVariable(name: "s", arg: 2, scope: !172, file: !119, line: 197, type: !121)
!2111 = !DILocation(line: 197, column: 54, scope: !172)
!2112 = !DILocalVariable(name: "translation", scope: !172, file: !119, line: 199, type: !6)
!2113 = !DILocation(line: 199, column: 15, scope: !172)
!2114 = !DILocation(line: 199, column: 29, scope: !172)
!2115 = !DILocation(line: 201, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !172, file: !119, line: 201, column: 7)
!2117 = !DILocation(line: 201, column: 22, scope: !2116)
!2118 = !DILocation(line: 201, column: 19, scope: !2116)
!2119 = !DILocation(line: 201, column: 7, scope: !172)
!2120 = !DILocation(line: 202, column: 12, scope: !2116)
!2121 = !DILocation(line: 202, column: 5, scope: !2116)
!2122 = !DILocalVariable(name: "w", scope: !172, file: !119, line: 229, type: !1025)
!2123 = !DILocation(line: 229, column: 12, scope: !172)
!2124 = !DILocalVariable(name: "mbs", scope: !172, file: !119, line: 230, type: !1705)
!2125 = !DILocation(line: 230, column: 13, scope: !172)
!2126 = !DILocation(line: 230, column: 18, scope: !172)
!2127 = !DILocation(line: 231, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !172, file: !119, line: 231, column: 7)
!2129 = !DILocation(line: 231, column: 40, scope: !2128)
!2130 = !DILocation(line: 231, column: 45, scope: !2128)
!2131 = !DILocation(line: 231, column: 48, scope: !2128)
!2132 = !DILocation(line: 231, column: 50, scope: !2128)
!2133 = !DILocation(line: 231, column: 7, scope: !172)
!2134 = !DILocation(line: 232, column: 18, scope: !2128)
!2135 = !DILocation(line: 232, column: 27, scope: !2128)
!2136 = !DILocation(line: 232, column: 12, scope: !2128)
!2137 = !DILocation(line: 232, column: 5, scope: !2128)
!2138 = !DILocation(line: 234, column: 11, scope: !172)
!2139 = !DILocation(line: 234, column: 13, scope: !172)
!2140 = !DILocation(line: 234, column: 3, scope: !172)
!2141 = !DILocation(line: 235, column: 1, scope: !172)
!2142 = distinct !DISubprogram(name: "quotearg_alloc", scope: !119, file: !119, line: 788, type: !2143, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!103, !6, !141, !1078}
!2145 = !DILocalVariable(name: "arg", arg: 1, scope: !2142, file: !119, line: 788, type: !6)
!2146 = !DILocation(line: 788, column: 29, scope: !2142)
!2147 = !DILocalVariable(name: "argsize", arg: 2, scope: !2142, file: !119, line: 788, type: !141)
!2148 = !DILocation(line: 788, column: 41, scope: !2142)
!2149 = !DILocalVariable(name: "o", arg: 3, scope: !2142, file: !119, line: 789, type: !1078)
!2150 = !DILocation(line: 789, column: 47, scope: !2142)
!2151 = !DILocation(line: 791, column: 30, scope: !2142)
!2152 = !DILocation(line: 791, column: 35, scope: !2142)
!2153 = !DILocation(line: 791, column: 50, scope: !2142)
!2154 = !DILocation(line: 791, column: 10, scope: !2142)
!2155 = !DILocation(line: 791, column: 3, scope: !2142)
!2156 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !119, file: !119, line: 801, type: !2157, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!103, !6, !141, !245, !1078}
!2159 = !DILocalVariable(name: "arg", arg: 1, scope: !2156, file: !119, line: 801, type: !6)
!2160 = !DILocation(line: 801, column: 33, scope: !2156)
!2161 = !DILocalVariable(name: "argsize", arg: 2, scope: !2156, file: !119, line: 801, type: !141)
!2162 = !DILocation(line: 801, column: 45, scope: !2156)
!2163 = !DILocalVariable(name: "size", arg: 3, scope: !2156, file: !119, line: 801, type: !245)
!2164 = !DILocation(line: 801, column: 62, scope: !2156)
!2165 = !DILocalVariable(name: "o", arg: 4, scope: !2156, file: !119, line: 802, type: !1078)
!2166 = !DILocation(line: 802, column: 51, scope: !2156)
!2167 = !DILocalVariable(name: "p", scope: !2156, file: !119, line: 804, type: !1078)
!2168 = !DILocation(line: 804, column: 33, scope: !2156)
!2169 = !DILocation(line: 804, column: 37, scope: !2156)
!2170 = !DILocation(line: 804, column: 41, scope: !2156)
!2171 = !DILocalVariable(name: "saved_errno", scope: !2156, file: !119, line: 805, type: !30)
!2172 = !DILocation(line: 805, column: 7, scope: !2156)
!2173 = !DILocation(line: 805, column: 21, scope: !2156)
!2174 = !DILocalVariable(name: "flags", scope: !2156, file: !119, line: 807, type: !30)
!2175 = !DILocation(line: 807, column: 7, scope: !2156)
!2176 = !DILocation(line: 807, column: 15, scope: !2156)
!2177 = !DILocation(line: 807, column: 18, scope: !2156)
!2178 = !DILocation(line: 807, column: 27, scope: !2156)
!2179 = !DILocation(line: 807, column: 24, scope: !2156)
!2180 = !DILocalVariable(name: "bufsize", scope: !2156, file: !119, line: 808, type: !141)
!2181 = !DILocation(line: 808, column: 10, scope: !2156)
!2182 = !DILocation(line: 808, column: 55, scope: !2156)
!2183 = !DILocation(line: 808, column: 60, scope: !2156)
!2184 = !DILocation(line: 808, column: 69, scope: !2156)
!2185 = !DILocation(line: 808, column: 72, scope: !2156)
!2186 = !DILocation(line: 809, column: 46, scope: !2156)
!2187 = !DILocation(line: 809, column: 53, scope: !2156)
!2188 = !DILocation(line: 809, column: 56, scope: !2156)
!2189 = !DILocation(line: 810, column: 46, scope: !2156)
!2190 = !DILocation(line: 810, column: 49, scope: !2156)
!2191 = !DILocation(line: 811, column: 46, scope: !2156)
!2192 = !DILocation(line: 811, column: 49, scope: !2156)
!2193 = !DILocation(line: 808, column: 20, scope: !2156)
!2194 = !DILocation(line: 811, column: 62, scope: !2156)
!2195 = !DILocalVariable(name: "buf", scope: !2156, file: !119, line: 812, type: !103)
!2196 = !DILocation(line: 812, column: 9, scope: !2156)
!2197 = !DILocation(line: 812, column: 27, scope: !2156)
!2198 = !DILocation(line: 812, column: 15, scope: !2156)
!2199 = !DILocation(line: 813, column: 29, scope: !2156)
!2200 = !DILocation(line: 813, column: 34, scope: !2156)
!2201 = !DILocation(line: 813, column: 43, scope: !2156)
!2202 = !DILocation(line: 813, column: 48, scope: !2156)
!2203 = !DILocation(line: 813, column: 57, scope: !2156)
!2204 = !DILocation(line: 813, column: 60, scope: !2156)
!2205 = !DILocation(line: 813, column: 67, scope: !2156)
!2206 = !DILocation(line: 814, column: 29, scope: !2156)
!2207 = !DILocation(line: 814, column: 32, scope: !2156)
!2208 = !DILocation(line: 815, column: 29, scope: !2156)
!2209 = !DILocation(line: 815, column: 32, scope: !2156)
!2210 = !DILocation(line: 815, column: 44, scope: !2156)
!2211 = !DILocation(line: 815, column: 47, scope: !2156)
!2212 = !DILocation(line: 813, column: 3, scope: !2156)
!2213 = !DILocation(line: 816, column: 11, scope: !2156)
!2214 = !DILocation(line: 816, column: 3, scope: !2156)
!2215 = !DILocation(line: 816, column: 9, scope: !2156)
!2216 = !DILocation(line: 817, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2156, file: !119, line: 817, column: 7)
!2218 = !DILocation(line: 817, column: 7, scope: !2156)
!2219 = !DILocation(line: 818, column: 13, scope: !2217)
!2220 = !DILocation(line: 818, column: 21, scope: !2217)
!2221 = !DILocation(line: 818, column: 6, scope: !2217)
!2222 = !DILocation(line: 818, column: 11, scope: !2217)
!2223 = !DILocation(line: 818, column: 5, scope: !2217)
!2224 = !DILocation(line: 819, column: 10, scope: !2156)
!2225 = !DILocation(line: 819, column: 3, scope: !2156)
!2226 = distinct !DISubprogram(name: "quotearg_free", scope: !119, file: !119, line: 837, type: !79, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2227 = !DILocalVariable(name: "sv", scope: !2226, file: !119, line: 839, type: !180)
!2228 = !DILocation(line: 839, column: 19, scope: !2226)
!2229 = !DILocation(line: 839, column: 24, scope: !2226)
!2230 = !DILocalVariable(name: "i", scope: !2231, file: !119, line: 840, type: !30)
!2231 = distinct !DILexicalBlock(scope: !2226, file: !119, line: 840, column: 3)
!2232 = !DILocation(line: 840, column: 12, scope: !2231)
!2233 = !DILocation(line: 840, column: 8, scope: !2231)
!2234 = !DILocation(line: 840, column: 19, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !119, line: 840, column: 3)
!2236 = !DILocation(line: 840, column: 23, scope: !2235)
!2237 = !DILocation(line: 840, column: 21, scope: !2235)
!2238 = !DILocation(line: 840, column: 3, scope: !2231)
!2239 = !DILocation(line: 841, column: 11, scope: !2235)
!2240 = !DILocation(line: 841, column: 14, scope: !2235)
!2241 = !DILocation(line: 841, column: 17, scope: !2235)
!2242 = !DILocation(line: 841, column: 5, scope: !2235)
!2243 = !DILocation(line: 840, column: 32, scope: !2235)
!2244 = !DILocation(line: 840, column: 3, scope: !2235)
!2245 = distinct !{!2245, !2238, !2246, !391}
!2246 = !DILocation(line: 841, column: 20, scope: !2231)
!2247 = !DILocation(line: 842, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2226, file: !119, line: 842, column: 7)
!2249 = !DILocation(line: 842, column: 13, scope: !2248)
!2250 = !DILocation(line: 842, column: 17, scope: !2248)
!2251 = !DILocation(line: 842, column: 7, scope: !2226)
!2252 = !DILocation(line: 844, column: 13, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2248, file: !119, line: 843, column: 5)
!2254 = !DILocation(line: 844, column: 19, scope: !2253)
!2255 = !DILocation(line: 844, column: 7, scope: !2253)
!2256 = !DILocation(line: 845, column: 21, scope: !2253)
!2257 = !DILocation(line: 846, column: 20, scope: !2253)
!2258 = !DILocation(line: 847, column: 5, scope: !2253)
!2259 = !DILocation(line: 848, column: 7, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2226, file: !119, line: 848, column: 7)
!2261 = !DILocation(line: 848, column: 10, scope: !2260)
!2262 = !DILocation(line: 848, column: 7, scope: !2226)
!2263 = !DILocation(line: 850, column: 13, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !119, line: 849, column: 5)
!2265 = !DILocation(line: 850, column: 7, scope: !2264)
!2266 = !DILocation(line: 851, column: 15, scope: !2264)
!2267 = !DILocation(line: 852, column: 5, scope: !2264)
!2268 = !DILocation(line: 853, column: 10, scope: !2226)
!2269 = !DILocation(line: 854, column: 1, scope: !2226)
!2270 = distinct !DISubprogram(name: "quotearg_n", scope: !119, file: !119, line: 919, type: !2271, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!103, !30, !6}
!2273 = !DILocalVariable(name: "n", arg: 1, scope: !2270, file: !119, line: 919, type: !30)
!2274 = !DILocation(line: 919, column: 17, scope: !2270)
!2275 = !DILocalVariable(name: "arg", arg: 2, scope: !2270, file: !119, line: 919, type: !6)
!2276 = !DILocation(line: 919, column: 32, scope: !2270)
!2277 = !DILocation(line: 921, column: 30, scope: !2270)
!2278 = !DILocation(line: 921, column: 33, scope: !2270)
!2279 = !DILocation(line: 921, column: 10, scope: !2270)
!2280 = !DILocation(line: 921, column: 3, scope: !2270)
!2281 = distinct !DISubprogram(name: "quotearg_n_options", scope: !119, file: !119, line: 866, type: !2282, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!103, !30, !6, !141, !1078}
!2284 = !DILocalVariable(name: "n", arg: 1, scope: !2281, file: !119, line: 866, type: !30)
!2285 = !DILocation(line: 866, column: 25, scope: !2281)
!2286 = !DILocalVariable(name: "arg", arg: 2, scope: !2281, file: !119, line: 866, type: !6)
!2287 = !DILocation(line: 866, column: 40, scope: !2281)
!2288 = !DILocalVariable(name: "argsize", arg: 3, scope: !2281, file: !119, line: 866, type: !141)
!2289 = !DILocation(line: 866, column: 52, scope: !2281)
!2290 = !DILocalVariable(name: "options", arg: 4, scope: !2281, file: !119, line: 867, type: !1078)
!2291 = !DILocation(line: 867, column: 51, scope: !2281)
!2292 = !DILocalVariable(name: "saved_errno", scope: !2281, file: !119, line: 869, type: !30)
!2293 = !DILocation(line: 869, column: 7, scope: !2281)
!2294 = !DILocation(line: 869, column: 21, scope: !2281)
!2295 = !DILocalVariable(name: "sv", scope: !2281, file: !119, line: 871, type: !180)
!2296 = !DILocation(line: 871, column: 19, scope: !2281)
!2297 = !DILocation(line: 871, column: 24, scope: !2281)
!2298 = !DILocalVariable(name: "nslots_max", scope: !2281, file: !119, line: 873, type: !30)
!2299 = !DILocation(line: 873, column: 7, scope: !2281)
!2300 = !DILocation(line: 874, column: 15, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2281, file: !119, line: 874, column: 7)
!2302 = !DILocation(line: 874, column: 12, scope: !2301)
!2303 = !DILocation(line: 874, column: 17, scope: !2301)
!2304 = !DILocation(line: 874, column: 20, scope: !2301)
!2305 = !DILocation(line: 874, column: 24, scope: !2301)
!2306 = !DILocation(line: 874, column: 22, scope: !2301)
!2307 = !DILocation(line: 874, column: 7, scope: !2281)
!2308 = !DILocation(line: 875, column: 5, scope: !2301)
!2309 = !DILocation(line: 877, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2281, file: !119, line: 877, column: 7)
!2311 = !DILocation(line: 877, column: 17, scope: !2310)
!2312 = !DILocation(line: 877, column: 14, scope: !2310)
!2313 = !DILocation(line: 877, column: 7, scope: !2281)
!2314 = !DILocalVariable(name: "preallocated", scope: !2315, file: !119, line: 879, type: !46)
!2315 = distinct !DILexicalBlock(scope: !2310, file: !119, line: 878, column: 5)
!2316 = !DILocation(line: 879, column: 12, scope: !2315)
!2317 = !DILocation(line: 879, column: 28, scope: !2315)
!2318 = !DILocation(line: 879, column: 31, scope: !2315)
!2319 = !DILocalVariable(name: "new_nslots", scope: !2315, file: !119, line: 880, type: !253)
!2320 = !DILocation(line: 880, column: 13, scope: !2315)
!2321 = !DILocation(line: 880, column: 26, scope: !2315)
!2322 = !DILocation(line: 882, column: 31, scope: !2315)
!2323 = !DILocation(line: 882, column: 53, scope: !2315)
!2324 = !DILocation(line: 883, column: 31, scope: !2315)
!2325 = !DILocation(line: 883, column: 35, scope: !2315)
!2326 = !DILocation(line: 883, column: 33, scope: !2315)
!2327 = !DILocation(line: 883, column: 42, scope: !2315)
!2328 = !DILocation(line: 883, column: 47, scope: !2315)
!2329 = !DILocation(line: 882, column: 22, scope: !2315)
!2330 = !DILocation(line: 882, column: 20, scope: !2315)
!2331 = !DILocation(line: 882, column: 15, scope: !2315)
!2332 = !DILocation(line: 884, column: 11, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2315, file: !119, line: 884, column: 11)
!2334 = !DILocation(line: 884, column: 11, scope: !2315)
!2335 = !DILocation(line: 885, column: 10, scope: !2333)
!2336 = !DILocation(line: 885, column: 15, scope: !2333)
!2337 = !DILocation(line: 885, column: 9, scope: !2333)
!2338 = !DILocation(line: 886, column: 15, scope: !2315)
!2339 = !DILocation(line: 886, column: 20, scope: !2315)
!2340 = !DILocation(line: 886, column: 18, scope: !2315)
!2341 = !DILocation(line: 886, column: 7, scope: !2315)
!2342 = !DILocation(line: 886, column: 32, scope: !2315)
!2343 = !DILocation(line: 886, column: 45, scope: !2315)
!2344 = !DILocation(line: 886, column: 43, scope: !2315)
!2345 = !DILocation(line: 886, column: 53, scope: !2315)
!2346 = !DILocation(line: 887, column: 16, scope: !2315)
!2347 = !DILocation(line: 887, column: 14, scope: !2315)
!2348 = !DILocation(line: 888, column: 5, scope: !2315)
!2349 = !DILocalVariable(name: "size", scope: !2350, file: !119, line: 891, type: !141)
!2350 = distinct !DILexicalBlock(scope: !2281, file: !119, line: 890, column: 3)
!2351 = !DILocation(line: 891, column: 12, scope: !2350)
!2352 = !DILocation(line: 891, column: 19, scope: !2350)
!2353 = !DILocation(line: 891, column: 22, scope: !2350)
!2354 = !DILocation(line: 891, column: 25, scope: !2350)
!2355 = !DILocalVariable(name: "val", scope: !2350, file: !119, line: 892, type: !103)
!2356 = !DILocation(line: 892, column: 11, scope: !2350)
!2357 = !DILocation(line: 892, column: 17, scope: !2350)
!2358 = !DILocation(line: 892, column: 20, scope: !2350)
!2359 = !DILocation(line: 892, column: 23, scope: !2350)
!2360 = !DILocalVariable(name: "flags", scope: !2350, file: !119, line: 894, type: !30)
!2361 = !DILocation(line: 894, column: 9, scope: !2350)
!2362 = !DILocation(line: 894, column: 17, scope: !2350)
!2363 = !DILocation(line: 894, column: 26, scope: !2350)
!2364 = !DILocation(line: 894, column: 32, scope: !2350)
!2365 = !DILocalVariable(name: "qsize", scope: !2350, file: !119, line: 895, type: !141)
!2366 = !DILocation(line: 895, column: 12, scope: !2350)
!2367 = !DILocation(line: 895, column: 46, scope: !2350)
!2368 = !DILocation(line: 895, column: 51, scope: !2350)
!2369 = !DILocation(line: 895, column: 57, scope: !2350)
!2370 = !DILocation(line: 895, column: 62, scope: !2350)
!2371 = !DILocation(line: 896, column: 46, scope: !2350)
!2372 = !DILocation(line: 896, column: 55, scope: !2350)
!2373 = !DILocation(line: 896, column: 62, scope: !2350)
!2374 = !DILocation(line: 897, column: 46, scope: !2350)
!2375 = !DILocation(line: 897, column: 55, scope: !2350)
!2376 = !DILocation(line: 898, column: 46, scope: !2350)
!2377 = !DILocation(line: 898, column: 55, scope: !2350)
!2378 = !DILocation(line: 899, column: 46, scope: !2350)
!2379 = !DILocation(line: 899, column: 55, scope: !2350)
!2380 = !DILocation(line: 895, column: 20, scope: !2350)
!2381 = !DILocation(line: 901, column: 9, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2350, file: !119, line: 901, column: 9)
!2383 = !DILocation(line: 901, column: 17, scope: !2382)
!2384 = !DILocation(line: 901, column: 14, scope: !2382)
!2385 = !DILocation(line: 901, column: 9, scope: !2350)
!2386 = !DILocation(line: 903, column: 29, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2382, file: !119, line: 902, column: 7)
!2388 = !DILocation(line: 903, column: 35, scope: !2387)
!2389 = !DILocation(line: 903, column: 27, scope: !2387)
!2390 = !DILocation(line: 903, column: 9, scope: !2387)
!2391 = !DILocation(line: 903, column: 12, scope: !2387)
!2392 = !DILocation(line: 903, column: 15, scope: !2387)
!2393 = !DILocation(line: 903, column: 20, scope: !2387)
!2394 = !DILocation(line: 904, column: 13, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2387, file: !119, line: 904, column: 13)
!2396 = !DILocation(line: 904, column: 17, scope: !2395)
!2397 = !DILocation(line: 904, column: 13, scope: !2387)
!2398 = !DILocation(line: 905, column: 17, scope: !2395)
!2399 = !DILocation(line: 905, column: 11, scope: !2395)
!2400 = !DILocation(line: 906, column: 39, scope: !2387)
!2401 = !DILocation(line: 906, column: 27, scope: !2387)
!2402 = !DILocation(line: 906, column: 25, scope: !2387)
!2403 = !DILocation(line: 906, column: 9, scope: !2387)
!2404 = !DILocation(line: 906, column: 12, scope: !2387)
!2405 = !DILocation(line: 906, column: 15, scope: !2387)
!2406 = !DILocation(line: 906, column: 19, scope: !2387)
!2407 = !DILocation(line: 907, column: 35, scope: !2387)
!2408 = !DILocation(line: 907, column: 40, scope: !2387)
!2409 = !DILocation(line: 907, column: 46, scope: !2387)
!2410 = !DILocation(line: 907, column: 51, scope: !2387)
!2411 = !DILocation(line: 907, column: 60, scope: !2387)
!2412 = !DILocation(line: 907, column: 69, scope: !2387)
!2413 = !DILocation(line: 908, column: 35, scope: !2387)
!2414 = !DILocation(line: 908, column: 42, scope: !2387)
!2415 = !DILocation(line: 908, column: 51, scope: !2387)
!2416 = !DILocation(line: 909, column: 35, scope: !2387)
!2417 = !DILocation(line: 909, column: 44, scope: !2387)
!2418 = !DILocation(line: 910, column: 35, scope: !2387)
!2419 = !DILocation(line: 910, column: 44, scope: !2387)
!2420 = !DILocation(line: 907, column: 9, scope: !2387)
!2421 = !DILocation(line: 911, column: 7, scope: !2387)
!2422 = !DILocation(line: 913, column: 13, scope: !2350)
!2423 = !DILocation(line: 913, column: 5, scope: !2350)
!2424 = !DILocation(line: 913, column: 11, scope: !2350)
!2425 = !DILocation(line: 914, column: 12, scope: !2350)
!2426 = !DILocation(line: 914, column: 5, scope: !2350)
!2427 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !119, file: !119, line: 925, type: !2428, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!103, !30, !6, !141}
!2430 = !DILocalVariable(name: "n", arg: 1, scope: !2427, file: !119, line: 925, type: !30)
!2431 = !DILocation(line: 925, column: 21, scope: !2427)
!2432 = !DILocalVariable(name: "arg", arg: 2, scope: !2427, file: !119, line: 925, type: !6)
!2433 = !DILocation(line: 925, column: 36, scope: !2427)
!2434 = !DILocalVariable(name: "argsize", arg: 3, scope: !2427, file: !119, line: 925, type: !141)
!2435 = !DILocation(line: 925, column: 48, scope: !2427)
!2436 = !DILocation(line: 927, column: 30, scope: !2427)
!2437 = !DILocation(line: 927, column: 33, scope: !2427)
!2438 = !DILocation(line: 927, column: 38, scope: !2427)
!2439 = !DILocation(line: 927, column: 10, scope: !2427)
!2440 = !DILocation(line: 927, column: 3, scope: !2427)
!2441 = distinct !DISubprogram(name: "quotearg", scope: !119, file: !119, line: 931, type: !2442, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!103, !6}
!2444 = !DILocalVariable(name: "arg", arg: 1, scope: !2441, file: !119, line: 931, type: !6)
!2445 = !DILocation(line: 931, column: 23, scope: !2441)
!2446 = !DILocation(line: 933, column: 25, scope: !2441)
!2447 = !DILocation(line: 933, column: 10, scope: !2441)
!2448 = !DILocation(line: 933, column: 3, scope: !2441)
!2449 = distinct !DISubprogram(name: "quotearg_mem", scope: !119, file: !119, line: 937, type: !2450, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!103, !6, !141}
!2452 = !DILocalVariable(name: "arg", arg: 1, scope: !2449, file: !119, line: 937, type: !6)
!2453 = !DILocation(line: 937, column: 27, scope: !2449)
!2454 = !DILocalVariable(name: "argsize", arg: 2, scope: !2449, file: !119, line: 937, type: !141)
!2455 = !DILocation(line: 937, column: 39, scope: !2449)
!2456 = !DILocation(line: 939, column: 29, scope: !2449)
!2457 = !DILocation(line: 939, column: 34, scope: !2449)
!2458 = !DILocation(line: 939, column: 10, scope: !2449)
!2459 = !DILocation(line: 939, column: 3, scope: !2449)
!2460 = distinct !DISubprogram(name: "quotearg_n_style", scope: !119, file: !119, line: 943, type: !2461, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!103, !30, !121, !6}
!2463 = !DILocalVariable(name: "n", arg: 1, scope: !2460, file: !119, line: 943, type: !30)
!2464 = !DILocation(line: 943, column: 23, scope: !2460)
!2465 = !DILocalVariable(name: "s", arg: 2, scope: !2460, file: !119, line: 943, type: !121)
!2466 = !DILocation(line: 943, column: 45, scope: !2460)
!2467 = !DILocalVariable(name: "arg", arg: 3, scope: !2460, file: !119, line: 943, type: !6)
!2468 = !DILocation(line: 943, column: 60, scope: !2460)
!2469 = !DILocalVariable(name: "o", scope: !2460, file: !119, line: 945, type: !1079)
!2470 = !DILocation(line: 945, column: 32, scope: !2460)
!2471 = !DILocation(line: 945, column: 64, scope: !2460)
!2472 = !DILocation(line: 945, column: 36, scope: !2460)
!2473 = !DILocation(line: 946, column: 30, scope: !2460)
!2474 = !DILocation(line: 946, column: 33, scope: !2460)
!2475 = !DILocation(line: 946, column: 10, scope: !2460)
!2476 = !DILocation(line: 946, column: 3, scope: !2460)
!2477 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !119, file: !119, line: 183, type: !2478, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!153, !121}
!2480 = !DILocalVariable(name: "style", arg: 1, scope: !2477, file: !119, line: 183, type: !121)
!2481 = !DILocation(line: 183, column: 48, scope: !2477)
!2482 = !DILocalVariable(name: "o", scope: !2477, file: !119, line: 185, type: !153)
!2483 = !DILocation(line: 185, column: 26, scope: !2477)
!2484 = !DILocation(line: 186, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2477, file: !119, line: 186, column: 7)
!2486 = !DILocation(line: 186, column: 13, scope: !2485)
!2487 = !DILocation(line: 186, column: 7, scope: !2477)
!2488 = !DILocation(line: 187, column: 5, scope: !2485)
!2489 = !DILocation(line: 188, column: 13, scope: !2477)
!2490 = !DILocation(line: 188, column: 5, scope: !2477)
!2491 = !DILocation(line: 188, column: 11, scope: !2477)
!2492 = !DILocation(line: 189, column: 3, scope: !2477)
!2493 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !119, file: !119, line: 950, type: !2494, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!103, !30, !121, !6, !141}
!2496 = !DILocalVariable(name: "n", arg: 1, scope: !2493, file: !119, line: 950, type: !30)
!2497 = !DILocation(line: 950, column: 27, scope: !2493)
!2498 = !DILocalVariable(name: "s", arg: 2, scope: !2493, file: !119, line: 950, type: !121)
!2499 = !DILocation(line: 950, column: 49, scope: !2493)
!2500 = !DILocalVariable(name: "arg", arg: 3, scope: !2493, file: !119, line: 951, type: !6)
!2501 = !DILocation(line: 951, column: 35, scope: !2493)
!2502 = !DILocalVariable(name: "argsize", arg: 4, scope: !2493, file: !119, line: 951, type: !141)
!2503 = !DILocation(line: 951, column: 47, scope: !2493)
!2504 = !DILocalVariable(name: "o", scope: !2493, file: !119, line: 953, type: !1079)
!2505 = !DILocation(line: 953, column: 32, scope: !2493)
!2506 = !DILocation(line: 953, column: 64, scope: !2493)
!2507 = !DILocation(line: 953, column: 36, scope: !2493)
!2508 = !DILocation(line: 954, column: 30, scope: !2493)
!2509 = !DILocation(line: 954, column: 33, scope: !2493)
!2510 = !DILocation(line: 954, column: 38, scope: !2493)
!2511 = !DILocation(line: 954, column: 10, scope: !2493)
!2512 = !DILocation(line: 954, column: 3, scope: !2493)
!2513 = distinct !DISubprogram(name: "quotearg_style", scope: !119, file: !119, line: 958, type: !2514, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!103, !121, !6}
!2516 = !DILocalVariable(name: "s", arg: 1, scope: !2513, file: !119, line: 958, type: !121)
!2517 = !DILocation(line: 958, column: 36, scope: !2513)
!2518 = !DILocalVariable(name: "arg", arg: 2, scope: !2513, file: !119, line: 958, type: !6)
!2519 = !DILocation(line: 958, column: 51, scope: !2513)
!2520 = !DILocation(line: 960, column: 31, scope: !2513)
!2521 = !DILocation(line: 960, column: 34, scope: !2513)
!2522 = !DILocation(line: 960, column: 10, scope: !2513)
!2523 = !DILocation(line: 960, column: 3, scope: !2513)
!2524 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !119, file: !119, line: 964, type: !2525, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!103, !121, !6, !141}
!2527 = !DILocalVariable(name: "s", arg: 1, scope: !2524, file: !119, line: 964, type: !121)
!2528 = !DILocation(line: 964, column: 40, scope: !2524)
!2529 = !DILocalVariable(name: "arg", arg: 2, scope: !2524, file: !119, line: 964, type: !6)
!2530 = !DILocation(line: 964, column: 55, scope: !2524)
!2531 = !DILocalVariable(name: "argsize", arg: 3, scope: !2524, file: !119, line: 964, type: !141)
!2532 = !DILocation(line: 964, column: 67, scope: !2524)
!2533 = !DILocation(line: 966, column: 35, scope: !2524)
!2534 = !DILocation(line: 966, column: 38, scope: !2524)
!2535 = !DILocation(line: 966, column: 43, scope: !2524)
!2536 = !DILocation(line: 966, column: 10, scope: !2524)
!2537 = !DILocation(line: 966, column: 3, scope: !2524)
!2538 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !119, file: !119, line: 970, type: !2539, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!103, !6, !141, !8}
!2541 = !DILocalVariable(name: "arg", arg: 1, scope: !2538, file: !119, line: 970, type: !6)
!2542 = !DILocation(line: 970, column: 32, scope: !2538)
!2543 = !DILocalVariable(name: "argsize", arg: 2, scope: !2538, file: !119, line: 970, type: !141)
!2544 = !DILocation(line: 970, column: 44, scope: !2538)
!2545 = !DILocalVariable(name: "ch", arg: 3, scope: !2538, file: !119, line: 970, type: !8)
!2546 = !DILocation(line: 970, column: 58, scope: !2538)
!2547 = !DILocalVariable(name: "options", scope: !2538, file: !119, line: 972, type: !153)
!2548 = !DILocation(line: 972, column: 26, scope: !2538)
!2549 = !DILocation(line: 973, column: 13, scope: !2538)
!2550 = !DILocation(line: 974, column: 31, scope: !2538)
!2551 = !DILocation(line: 974, column: 3, scope: !2538)
!2552 = !DILocation(line: 975, column: 33, scope: !2538)
!2553 = !DILocation(line: 975, column: 38, scope: !2538)
!2554 = !DILocation(line: 975, column: 10, scope: !2538)
!2555 = !DILocation(line: 975, column: 3, scope: !2538)
!2556 = distinct !DISubprogram(name: "quotearg_char", scope: !119, file: !119, line: 979, type: !2557, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!103, !6, !8}
!2559 = !DILocalVariable(name: "arg", arg: 1, scope: !2556, file: !119, line: 979, type: !6)
!2560 = !DILocation(line: 979, column: 28, scope: !2556)
!2561 = !DILocalVariable(name: "ch", arg: 2, scope: !2556, file: !119, line: 979, type: !8)
!2562 = !DILocation(line: 979, column: 38, scope: !2556)
!2563 = !DILocation(line: 981, column: 29, scope: !2556)
!2564 = !DILocation(line: 981, column: 44, scope: !2556)
!2565 = !DILocation(line: 981, column: 10, scope: !2556)
!2566 = !DILocation(line: 981, column: 3, scope: !2556)
!2567 = distinct !DISubprogram(name: "quotearg_colon", scope: !119, file: !119, line: 985, type: !2442, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2568 = !DILocalVariable(name: "arg", arg: 1, scope: !2567, file: !119, line: 985, type: !6)
!2569 = !DILocation(line: 985, column: 29, scope: !2567)
!2570 = !DILocation(line: 987, column: 25, scope: !2567)
!2571 = !DILocation(line: 987, column: 10, scope: !2567)
!2572 = !DILocation(line: 987, column: 3, scope: !2567)
!2573 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !119, file: !119, line: 991, type: !2450, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2574 = !DILocalVariable(name: "arg", arg: 1, scope: !2573, file: !119, line: 991, type: !6)
!2575 = !DILocation(line: 991, column: 33, scope: !2573)
!2576 = !DILocalVariable(name: "argsize", arg: 2, scope: !2573, file: !119, line: 991, type: !141)
!2577 = !DILocation(line: 991, column: 45, scope: !2573)
!2578 = !DILocation(line: 993, column: 29, scope: !2573)
!2579 = !DILocation(line: 993, column: 34, scope: !2573)
!2580 = !DILocation(line: 993, column: 10, scope: !2573)
!2581 = !DILocation(line: 993, column: 3, scope: !2573)
!2582 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !119, file: !119, line: 997, type: !2461, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2583 = !DILocalVariable(name: "n", arg: 1, scope: !2582, file: !119, line: 997, type: !30)
!2584 = !DILocation(line: 997, column: 29, scope: !2582)
!2585 = !DILocalVariable(name: "s", arg: 2, scope: !2582, file: !119, line: 997, type: !121)
!2586 = !DILocation(line: 997, column: 51, scope: !2582)
!2587 = !DILocalVariable(name: "arg", arg: 3, scope: !2582, file: !119, line: 997, type: !6)
!2588 = !DILocation(line: 997, column: 66, scope: !2582)
!2589 = !DILocalVariable(name: "options", scope: !2582, file: !119, line: 999, type: !153)
!2590 = !DILocation(line: 999, column: 26, scope: !2582)
!2591 = !DILocation(line: 1000, column: 41, scope: !2582)
!2592 = !DILocation(line: 1000, column: 13, scope: !2582)
!2593 = !DILocation(line: 1001, column: 3, scope: !2582)
!2594 = !DILocation(line: 1002, column: 30, scope: !2582)
!2595 = !DILocation(line: 1002, column: 33, scope: !2582)
!2596 = !DILocation(line: 1002, column: 10, scope: !2582)
!2597 = !DILocation(line: 1002, column: 3, scope: !2582)
!2598 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !119, file: !119, line: 1006, type: !2599, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!103, !30, !6, !6, !6}
!2601 = !DILocalVariable(name: "n", arg: 1, scope: !2598, file: !119, line: 1006, type: !30)
!2602 = !DILocation(line: 1006, column: 24, scope: !2598)
!2603 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2598, file: !119, line: 1006, type: !6)
!2604 = !DILocation(line: 1006, column: 39, scope: !2598)
!2605 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2598, file: !119, line: 1007, type: !6)
!2606 = !DILocation(line: 1007, column: 32, scope: !2598)
!2607 = !DILocalVariable(name: "arg", arg: 4, scope: !2598, file: !119, line: 1007, type: !6)
!2608 = !DILocation(line: 1007, column: 57, scope: !2598)
!2609 = !DILocation(line: 1009, column: 33, scope: !2598)
!2610 = !DILocation(line: 1009, column: 36, scope: !2598)
!2611 = !DILocation(line: 1009, column: 48, scope: !2598)
!2612 = !DILocation(line: 1009, column: 61, scope: !2598)
!2613 = !DILocation(line: 1009, column: 10, scope: !2598)
!2614 = !DILocation(line: 1009, column: 3, scope: !2598)
!2615 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !119, file: !119, line: 1014, type: !2616, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!103, !30, !6, !6, !6, !141}
!2618 = !DILocalVariable(name: "n", arg: 1, scope: !2615, file: !119, line: 1014, type: !30)
!2619 = !DILocation(line: 1014, column: 28, scope: !2615)
!2620 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2615, file: !119, line: 1014, type: !6)
!2621 = !DILocation(line: 1014, column: 43, scope: !2615)
!2622 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2615, file: !119, line: 1015, type: !6)
!2623 = !DILocation(line: 1015, column: 36, scope: !2615)
!2624 = !DILocalVariable(name: "arg", arg: 4, scope: !2615, file: !119, line: 1016, type: !6)
!2625 = !DILocation(line: 1016, column: 36, scope: !2615)
!2626 = !DILocalVariable(name: "argsize", arg: 5, scope: !2615, file: !119, line: 1016, type: !141)
!2627 = !DILocation(line: 1016, column: 48, scope: !2615)
!2628 = !DILocalVariable(name: "o", scope: !2615, file: !119, line: 1018, type: !153)
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
!2639 = distinct !DISubprogram(name: "quotearg_custom", scope: !119, file: !119, line: 1024, type: !2640, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!103, !6, !6, !6}
!2642 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2639, file: !119, line: 1024, type: !6)
!2643 = !DILocation(line: 1024, column: 30, scope: !2639)
!2644 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2639, file: !119, line: 1024, type: !6)
!2645 = !DILocation(line: 1024, column: 54, scope: !2639)
!2646 = !DILocalVariable(name: "arg", arg: 3, scope: !2639, file: !119, line: 1025, type: !6)
!2647 = !DILocation(line: 1025, column: 30, scope: !2639)
!2648 = !DILocation(line: 1027, column: 32, scope: !2639)
!2649 = !DILocation(line: 1027, column: 44, scope: !2639)
!2650 = !DILocation(line: 1027, column: 57, scope: !2639)
!2651 = !DILocation(line: 1027, column: 10, scope: !2639)
!2652 = !DILocation(line: 1027, column: 3, scope: !2639)
!2653 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !119, file: !119, line: 1031, type: !2654, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!103, !6, !6, !6, !141}
!2656 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2653, file: !119, line: 1031, type: !6)
!2657 = !DILocation(line: 1031, column: 34, scope: !2653)
!2658 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2653, file: !119, line: 1031, type: !6)
!2659 = !DILocation(line: 1031, column: 58, scope: !2653)
!2660 = !DILocalVariable(name: "arg", arg: 3, scope: !2653, file: !119, line: 1032, type: !6)
!2661 = !DILocation(line: 1032, column: 34, scope: !2653)
!2662 = !DILocalVariable(name: "argsize", arg: 4, scope: !2653, file: !119, line: 1032, type: !141)
!2663 = !DILocation(line: 1032, column: 46, scope: !2653)
!2664 = !DILocation(line: 1034, column: 36, scope: !2653)
!2665 = !DILocation(line: 1034, column: 48, scope: !2653)
!2666 = !DILocation(line: 1034, column: 61, scope: !2653)
!2667 = !DILocation(line: 1035, column: 33, scope: !2653)
!2668 = !DILocation(line: 1034, column: 10, scope: !2653)
!2669 = !DILocation(line: 1034, column: 3, scope: !2653)
!2670 = distinct !DISubprogram(name: "quote_n_mem", scope: !119, file: !119, line: 1049, type: !2671, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!6, !30, !6, !141}
!2673 = !DILocalVariable(name: "n", arg: 1, scope: !2670, file: !119, line: 1049, type: !30)
!2674 = !DILocation(line: 1049, column: 18, scope: !2670)
!2675 = !DILocalVariable(name: "arg", arg: 2, scope: !2670, file: !119, line: 1049, type: !6)
!2676 = !DILocation(line: 1049, column: 33, scope: !2670)
!2677 = !DILocalVariable(name: "argsize", arg: 3, scope: !2670, file: !119, line: 1049, type: !141)
!2678 = !DILocation(line: 1049, column: 45, scope: !2670)
!2679 = !DILocation(line: 1051, column: 30, scope: !2670)
!2680 = !DILocation(line: 1051, column: 33, scope: !2670)
!2681 = !DILocation(line: 1051, column: 38, scope: !2670)
!2682 = !DILocation(line: 1051, column: 10, scope: !2670)
!2683 = !DILocation(line: 1051, column: 3, scope: !2670)
!2684 = distinct !DISubprogram(name: "quote_mem", scope: !119, file: !119, line: 1055, type: !2685, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!6, !6, !141}
!2687 = !DILocalVariable(name: "arg", arg: 1, scope: !2684, file: !119, line: 1055, type: !6)
!2688 = !DILocation(line: 1055, column: 24, scope: !2684)
!2689 = !DILocalVariable(name: "argsize", arg: 2, scope: !2684, file: !119, line: 1055, type: !141)
!2690 = !DILocation(line: 1055, column: 36, scope: !2684)
!2691 = !DILocation(line: 1057, column: 26, scope: !2684)
!2692 = !DILocation(line: 1057, column: 31, scope: !2684)
!2693 = !DILocation(line: 1057, column: 10, scope: !2684)
!2694 = !DILocation(line: 1057, column: 3, scope: !2684)
!2695 = distinct !DISubprogram(name: "quote_n", scope: !119, file: !119, line: 1061, type: !2696, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!6, !30, !6}
!2698 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !119, line: 1061, type: !30)
!2699 = !DILocation(line: 1061, column: 14, scope: !2695)
!2700 = !DILocalVariable(name: "arg", arg: 2, scope: !2695, file: !119, line: 1061, type: !6)
!2701 = !DILocation(line: 1061, column: 29, scope: !2695)
!2702 = !DILocation(line: 1063, column: 23, scope: !2695)
!2703 = !DILocation(line: 1063, column: 26, scope: !2695)
!2704 = !DILocation(line: 1063, column: 10, scope: !2695)
!2705 = !DILocation(line: 1063, column: 3, scope: !2695)
!2706 = distinct !DISubprogram(name: "quote", scope: !119, file: !119, line: 1067, type: !2707, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !33)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!6, !6}
!2709 = !DILocalVariable(name: "arg", arg: 1, scope: !2706, file: !119, line: 1067, type: !6)
!2710 = !DILocation(line: 1067, column: 20, scope: !2706)
!2711 = !DILocation(line: 1069, column: 22, scope: !2706)
!2712 = !DILocation(line: 1069, column: 10, scope: !2706)
!2713 = !DILocation(line: 1069, column: 3, scope: !2706)
!2714 = distinct !DISubprogram(name: "streq", scope: !2715, file: !2715, line: 1359, type: !2716, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !33)
!2715 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!46, !6, !6}
!2718 = !DILocalVariable(name: "__s1", arg: 1, scope: !2714, file: !2715, line: 1359, type: !6)
!2719 = !DILocation(line: 1359, column: 20, scope: !2714)
!2720 = !DILocalVariable(name: "__s2", arg: 2, scope: !2714, file: !2715, line: 1359, type: !6)
!2721 = !DILocation(line: 1359, column: 38, scope: !2714)
!2722 = !DILocation(line: 1361, column: 19, scope: !2714)
!2723 = !DILocation(line: 1361, column: 25, scope: !2714)
!2724 = !DILocation(line: 1361, column: 11, scope: !2714)
!2725 = !DILocation(line: 1361, column: 10, scope: !2714)
!2726 = !DILocation(line: 1361, column: 3, scope: !2714)
!2727 = distinct !DISubprogram(name: "version_etc_arn", scope: !233, file: !233, line: 61, type: !2728, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !33)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{null, !2730, !6, !6, !6, !2783, !141}
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2732, line: 7, baseType: !2733)
!2732 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2734, line: 49, size: 1728, elements: !2735)
!2734 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2751, !2753, !2754, !2755, !2757, !2758, !2760, !2764, !2767, !2769, !2772, !2775, !2776, !2777, !2778, !2779}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2733, file: !2734, line: 51, baseType: !30, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2733, file: !2734, line: 54, baseType: !103, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2733, file: !2734, line: 55, baseType: !103, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2733, file: !2734, line: 56, baseType: !103, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2733, file: !2734, line: 57, baseType: !103, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2733, file: !2734, line: 58, baseType: !103, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2733, file: !2734, line: 59, baseType: !103, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2733, file: !2734, line: 60, baseType: !103, size: 64, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2733, file: !2734, line: 61, baseType: !103, size: 64, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2733, file: !2734, line: 64, baseType: !103, size: 64, offset: 576)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2733, file: !2734, line: 65, baseType: !103, size: 64, offset: 640)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2733, file: !2734, line: 66, baseType: !103, size: 64, offset: 704)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2733, file: !2734, line: 68, baseType: !2749, size: 64, offset: 768)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2734, line: 36, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2733, file: !2734, line: 70, baseType: !2752, size: 64, offset: 832)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2733, file: !2734, line: 72, baseType: !30, size: 32, offset: 896)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2733, file: !2734, line: 73, baseType: !30, size: 32, offset: 928)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2733, file: !2734, line: 74, baseType: !2756, size: 64, offset: 960)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1028, line: 152, baseType: !256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2733, file: !2734, line: 77, baseType: !31, size: 16, offset: 1024)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2733, file: !2734, line: 78, baseType: !2759, size: 8, offset: 1040)
!2759 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2733, file: !2734, line: 79, baseType: !2761, size: 8, offset: 1048)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2762)
!2762 = !{!2763}
!2763 = !DISubrange(count: 1)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2733, file: !2734, line: 81, baseType: !2765, size: 64, offset: 1088)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2734, line: 43, baseType: null)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2733, file: !2734, line: 89, baseType: !2768, size: 64, offset: 1152)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1028, line: 153, baseType: !256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2733, file: !2734, line: 91, baseType: !2770, size: 64, offset: 1216)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2734, line: 37, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2733, file: !2734, line: 92, baseType: !2773, size: 64, offset: 1280)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2734, line: 38, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2733, file: !2734, line: 93, baseType: !2752, size: 64, offset: 1344)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2733, file: !2734, line: 94, baseType: !29, size: 64, offset: 1408)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2733, file: !2734, line: 95, baseType: !141, size: 64, offset: 1472)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2733, file: !2734, line: 96, baseType: !30, size: 32, offset: 1536)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2733, file: !2734, line: 98, baseType: !2780, size: 160, offset: 1568)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2781)
!2781 = !{!2782}
!2782 = !DISubrange(count: 20)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!2784 = !DILocalVariable(name: "stream", arg: 1, scope: !2727, file: !233, line: 61, type: !2730)
!2785 = !DILocation(line: 61, column: 24, scope: !2727)
!2786 = !DILocalVariable(name: "command_name", arg: 2, scope: !2727, file: !233, line: 62, type: !6)
!2787 = !DILocation(line: 62, column: 30, scope: !2727)
!2788 = !DILocalVariable(name: "package", arg: 3, scope: !2727, file: !233, line: 62, type: !6)
!2789 = !DILocation(line: 62, column: 56, scope: !2727)
!2790 = !DILocalVariable(name: "version", arg: 4, scope: !2727, file: !233, line: 63, type: !6)
!2791 = !DILocation(line: 63, column: 30, scope: !2727)
!2792 = !DILocalVariable(name: "authors", arg: 5, scope: !2727, file: !233, line: 64, type: !2783)
!2793 = !DILocation(line: 64, column: 39, scope: !2727)
!2794 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2727, file: !233, line: 64, type: !141)
!2795 = !DILocation(line: 64, column: 55, scope: !2727)
!2796 = !DILocation(line: 66, column: 7, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2727, file: !233, line: 66, column: 7)
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
!2819 = distinct !DILexicalBlock(scope: !2727, file: !233, line: 98, column: 5)
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
!2915 = distinct !DISubprogram(name: "version_etc_ar", scope: !233, file: !233, line: 183, type: !2916, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !33)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{null, !2730, !6, !6, !6, !2783}
!2918 = !DILocalVariable(name: "stream", arg: 1, scope: !2915, file: !233, line: 183, type: !2730)
!2919 = !DILocation(line: 183, column: 23, scope: !2915)
!2920 = !DILocalVariable(name: "command_name", arg: 2, scope: !2915, file: !233, line: 184, type: !6)
!2921 = !DILocation(line: 184, column: 29, scope: !2915)
!2922 = !DILocalVariable(name: "package", arg: 3, scope: !2915, file: !233, line: 184, type: !6)
!2923 = !DILocation(line: 184, column: 55, scope: !2915)
!2924 = !DILocalVariable(name: "version", arg: 4, scope: !2915, file: !233, line: 185, type: !6)
!2925 = !DILocation(line: 185, column: 29, scope: !2915)
!2926 = !DILocalVariable(name: "authors", arg: 5, scope: !2915, file: !233, line: 185, type: !2783)
!2927 = !DILocation(line: 185, column: 59, scope: !2915)
!2928 = !DILocalVariable(name: "n_authors", scope: !2915, file: !233, line: 187, type: !141)
!2929 = !DILocation(line: 187, column: 10, scope: !2915)
!2930 = !DILocation(line: 189, column: 18, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2915, file: !233, line: 189, column: 3)
!2932 = !DILocation(line: 189, column: 8, scope: !2931)
!2933 = !DILocation(line: 189, column: 23, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2931, file: !233, line: 189, column: 3)
!2935 = !DILocation(line: 189, column: 31, scope: !2934)
!2936 = !DILocation(line: 189, column: 3, scope: !2931)
!2937 = !DILocation(line: 189, column: 52, scope: !2934)
!2938 = !DILocation(line: 189, column: 3, scope: !2934)
!2939 = distinct !{!2939, !2936, !2940, !391}
!2940 = !DILocation(line: 190, column: 5, scope: !2931)
!2941 = !DILocation(line: 191, column: 20, scope: !2915)
!2942 = !DILocation(line: 191, column: 28, scope: !2915)
!2943 = !DILocation(line: 191, column: 42, scope: !2915)
!2944 = !DILocation(line: 191, column: 51, scope: !2915)
!2945 = !DILocation(line: 191, column: 60, scope: !2915)
!2946 = !DILocation(line: 191, column: 69, scope: !2915)
!2947 = !DILocation(line: 191, column: 3, scope: !2915)
!2948 = !DILocation(line: 192, column: 1, scope: !2915)
!2949 = distinct !DISubprogram(name: "version_etc_va", scope: !233, file: !233, line: 199, type: !2950, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !33)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !2730, !6, !6, !6, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !59, line: 52, baseType: !2953)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !61, line: 32, baseType: !2954)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2955, baseType: !2956)
!2955 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !65, size: 256, elements: !2957)
!2957 = !{!2958, !2959, !2960, !2961, !2962}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2956, file: !2955, line: 192, baseType: !29, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2956, file: !2955, line: 192, baseType: !29, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2956, file: !2955, line: 192, baseType: !29, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2956, file: !2955, line: 192, baseType: !30, size: 32, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2956, file: !2955, line: 192, baseType: !30, size: 32, offset: 224)
!2963 = !DILocalVariable(name: "stream", arg: 1, scope: !2949, file: !233, line: 199, type: !2730)
!2964 = !DILocation(line: 199, column: 23, scope: !2949)
!2965 = !DILocalVariable(name: "command_name", arg: 2, scope: !2949, file: !233, line: 200, type: !6)
!2966 = !DILocation(line: 200, column: 29, scope: !2949)
!2967 = !DILocalVariable(name: "package", arg: 3, scope: !2949, file: !233, line: 200, type: !6)
!2968 = !DILocation(line: 200, column: 55, scope: !2949)
!2969 = !DILocalVariable(name: "version", arg: 4, scope: !2949, file: !233, line: 201, type: !6)
!2970 = !DILocation(line: 201, column: 29, scope: !2949)
!2971 = !DILocalVariable(name: "authors", arg: 5, scope: !2949, file: !233, line: 201, type: !2952)
!2972 = !DILocation(line: 201, column: 46, scope: !2949)
!2973 = !DILocalVariable(name: "n_authors", scope: !2949, file: !233, line: 203, type: !141)
!2974 = !DILocation(line: 203, column: 10, scope: !2949)
!2975 = !DILocalVariable(name: "authtab", scope: !2949, file: !233, line: 204, type: !2976)
!2976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !149)
!2977 = !DILocation(line: 204, column: 15, scope: !2949)
!2978 = !DILocation(line: 206, column: 18, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2949, file: !233, line: 206, column: 3)
!2980 = !DILocation(line: 206, column: 8, scope: !2979)
!2981 = !DILocation(line: 207, column: 8, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2979, file: !233, line: 206, column: 3)
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
!2994 = distinct !{!2994, !2991, !2995, !391}
!2995 = !DILocation(line: 210, column: 5, scope: !2979)
!2996 = !DILocation(line: 211, column: 20, scope: !2949)
!2997 = !DILocation(line: 211, column: 28, scope: !2949)
!2998 = !DILocation(line: 211, column: 42, scope: !2949)
!2999 = !DILocation(line: 211, column: 51, scope: !2949)
!3000 = !DILocation(line: 212, column: 20, scope: !2949)
!3001 = !DILocation(line: 212, column: 29, scope: !2949)
!3002 = !DILocation(line: 211, column: 3, scope: !2949)
!3003 = !DILocation(line: 213, column: 1, scope: !2949)
!3004 = distinct !DISubprogram(name: "version_etc", scope: !233, file: !233, line: 230, type: !3005, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !33)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !2730, !6, !6, !6, null}
!3007 = !DILocalVariable(name: "stream", arg: 1, scope: !3004, file: !233, line: 230, type: !2730)
!3008 = !DILocation(line: 230, column: 20, scope: !3004)
!3009 = !DILocalVariable(name: "command_name", arg: 2, scope: !3004, file: !233, line: 231, type: !6)
!3010 = !DILocation(line: 231, column: 26, scope: !3004)
!3011 = !DILocalVariable(name: "package", arg: 3, scope: !3004, file: !233, line: 231, type: !6)
!3012 = !DILocation(line: 231, column: 52, scope: !3004)
!3013 = !DILocalVariable(name: "version", arg: 4, scope: !3004, file: !233, line: 232, type: !6)
!3014 = !DILocation(line: 232, column: 26, scope: !3004)
!3015 = !DILocalVariable(name: "authors", scope: !3004, file: !233, line: 234, type: !2952)
!3016 = !DILocation(line: 234, column: 11, scope: !3004)
!3017 = !DILocation(line: 235, column: 3, scope: !3004)
!3018 = !DILocation(line: 236, column: 19, scope: !3004)
!3019 = !DILocation(line: 236, column: 27, scope: !3004)
!3020 = !DILocation(line: 236, column: 41, scope: !3004)
!3021 = !DILocation(line: 236, column: 50, scope: !3004)
!3022 = !DILocation(line: 236, column: 3, scope: !3004)
!3023 = !DILocation(line: 237, column: 3, scope: !3004)
!3024 = !DILocation(line: 238, column: 1, scope: !3004)
!3025 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !233, file: !233, line: 241, type: !79, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !33)
!3026 = !DILocation(line: 243, column: 3, scope: !3025)
!3027 = !DILocation(line: 248, column: 11, scope: !3025)
!3028 = !DILocation(line: 248, column: 3, scope: !3025)
!3029 = !DILocation(line: 254, column: 11, scope: !3025)
!3030 = !DILocation(line: 254, column: 3, scope: !3025)
!3031 = !DILocation(line: 259, column: 11, scope: !3025)
!3032 = !DILocation(line: 259, column: 3, scope: !3025)
!3033 = !DILocation(line: 261, column: 1, scope: !3025)
!3034 = distinct !DISubprogram(name: "xnrealloc", scope: !3035, file: !3035, line: 147, type: !3036, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3035 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!29, !29, !141, !141}
!3038 = !DILocalVariable(name: "p", arg: 1, scope: !3034, file: !3035, line: 147, type: !29)
!3039 = !DILocation(line: 147, column: 18, scope: !3034)
!3040 = !DILocalVariable(name: "n", arg: 2, scope: !3034, file: !3035, line: 147, type: !141)
!3041 = !DILocation(line: 147, column: 28, scope: !3034)
!3042 = !DILocalVariable(name: "s", arg: 3, scope: !3034, file: !3035, line: 147, type: !141)
!3043 = !DILocation(line: 147, column: 38, scope: !3034)
!3044 = !DILocation(line: 149, column: 25, scope: !3034)
!3045 = !DILocation(line: 149, column: 28, scope: !3034)
!3046 = !DILocation(line: 149, column: 31, scope: !3034)
!3047 = !DILocation(line: 149, column: 10, scope: !3034)
!3048 = !DILocation(line: 149, column: 3, scope: !3034)
!3049 = distinct !DISubprogram(name: "xreallocarray", scope: !239, file: !239, line: 83, type: !3036, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3050 = !DILocalVariable(name: "p", arg: 1, scope: !3049, file: !239, line: 83, type: !29)
!3051 = !DILocation(line: 83, column: 22, scope: !3049)
!3052 = !DILocalVariable(name: "n", arg: 2, scope: !3049, file: !239, line: 83, type: !141)
!3053 = !DILocation(line: 83, column: 32, scope: !3049)
!3054 = !DILocalVariable(name: "s", arg: 3, scope: !3049, file: !239, line: 83, type: !141)
!3055 = !DILocation(line: 83, column: 42, scope: !3049)
!3056 = !DILocation(line: 85, column: 39, scope: !3049)
!3057 = !DILocation(line: 85, column: 42, scope: !3049)
!3058 = !DILocation(line: 85, column: 45, scope: !3049)
!3059 = !DILocation(line: 85, column: 25, scope: !3049)
!3060 = !DILocation(line: 85, column: 10, scope: !3049)
!3061 = !DILocation(line: 85, column: 3, scope: !3049)
!3062 = distinct !DISubprogram(name: "check_nonnull", scope: !239, file: !239, line: 37, type: !3063, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!29, !29}
!3065 = !DILocalVariable(name: "p", arg: 1, scope: !3062, file: !239, line: 37, type: !29)
!3066 = !DILocation(line: 37, column: 22, scope: !3062)
!3067 = !DILocation(line: 39, column: 8, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3062, file: !239, line: 39, column: 7)
!3069 = !DILocation(line: 39, column: 7, scope: !3062)
!3070 = !DILocation(line: 40, column: 5, scope: !3068)
!3071 = !DILocation(line: 41, column: 10, scope: !3062)
!3072 = !DILocation(line: 41, column: 3, scope: !3062)
!3073 = distinct !DISubprogram(name: "xmalloc", scope: !239, file: !239, line: 47, type: !3074, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!29, !141}
!3076 = !DILocalVariable(name: "s", arg: 1, scope: !3073, file: !239, line: 47, type: !141)
!3077 = !DILocation(line: 47, column: 17, scope: !3073)
!3078 = !DILocation(line: 49, column: 33, scope: !3073)
!3079 = !DILocation(line: 49, column: 25, scope: !3073)
!3080 = !DILocation(line: 49, column: 10, scope: !3073)
!3081 = !DILocation(line: 49, column: 3, scope: !3073)
!3082 = distinct !DISubprogram(name: "ximalloc", scope: !239, file: !239, line: 53, type: !3083, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!29, !253}
!3085 = !DILocalVariable(name: "s", arg: 1, scope: !3082, file: !239, line: 53, type: !253)
!3086 = !DILocation(line: 53, column: 17, scope: !3082)
!3087 = !DILocation(line: 55, column: 34, scope: !3082)
!3088 = !DILocation(line: 55, column: 25, scope: !3082)
!3089 = !DILocation(line: 55, column: 10, scope: !3082)
!3090 = !DILocation(line: 55, column: 3, scope: !3082)
!3091 = distinct !DISubprogram(name: "xcharalloc", scope: !239, file: !239, line: 59, type: !3092, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!103, !141}
!3094 = !DILocalVariable(name: "n", arg: 1, scope: !3091, file: !239, line: 59, type: !141)
!3095 = !DILocation(line: 59, column: 20, scope: !3091)
!3096 = !DILocation(line: 61, column: 10, scope: !3091)
!3097 = !DILocation(line: 61, column: 3, scope: !3091)
!3098 = distinct !DISubprogram(name: "xrealloc", scope: !239, file: !239, line: 68, type: !3099, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!29, !29, !141}
!3101 = !DILocalVariable(name: "p", arg: 1, scope: !3098, file: !239, line: 68, type: !29)
!3102 = !DILocation(line: 68, column: 17, scope: !3098)
!3103 = !DILocalVariable(name: "s", arg: 2, scope: !3098, file: !239, line: 68, type: !141)
!3104 = !DILocation(line: 68, column: 27, scope: !3098)
!3105 = !DILocation(line: 70, column: 34, scope: !3098)
!3106 = !DILocation(line: 70, column: 37, scope: !3098)
!3107 = !DILocation(line: 70, column: 25, scope: !3098)
!3108 = !DILocation(line: 70, column: 10, scope: !3098)
!3109 = !DILocation(line: 70, column: 3, scope: !3098)
!3110 = distinct !DISubprogram(name: "xirealloc", scope: !239, file: !239, line: 74, type: !3111, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!29, !29, !253}
!3113 = !DILocalVariable(name: "p", arg: 1, scope: !3110, file: !239, line: 74, type: !29)
!3114 = !DILocation(line: 74, column: 18, scope: !3110)
!3115 = !DILocalVariable(name: "s", arg: 2, scope: !3110, file: !239, line: 74, type: !253)
!3116 = !DILocation(line: 74, column: 27, scope: !3110)
!3117 = !DILocation(line: 76, column: 35, scope: !3110)
!3118 = !DILocation(line: 76, column: 38, scope: !3110)
!3119 = !DILocation(line: 76, column: 25, scope: !3110)
!3120 = !DILocation(line: 76, column: 10, scope: !3110)
!3121 = !DILocation(line: 76, column: 3, scope: !3110)
!3122 = distinct !DISubprogram(name: "xireallocarray", scope: !239, file: !239, line: 89, type: !3123, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!29, !29, !253, !253}
!3125 = !DILocalVariable(name: "p", arg: 1, scope: !3122, file: !239, line: 89, type: !29)
!3126 = !DILocation(line: 89, column: 23, scope: !3122)
!3127 = !DILocalVariable(name: "n", arg: 2, scope: !3122, file: !239, line: 89, type: !253)
!3128 = !DILocation(line: 89, column: 32, scope: !3122)
!3129 = !DILocalVariable(name: "s", arg: 3, scope: !3122, file: !239, line: 89, type: !253)
!3130 = !DILocation(line: 89, column: 41, scope: !3122)
!3131 = !DILocation(line: 91, column: 40, scope: !3122)
!3132 = !DILocation(line: 91, column: 43, scope: !3122)
!3133 = !DILocation(line: 91, column: 46, scope: !3122)
!3134 = !DILocation(line: 91, column: 25, scope: !3122)
!3135 = !DILocation(line: 91, column: 10, scope: !3122)
!3136 = !DILocation(line: 91, column: 3, scope: !3122)
!3137 = distinct !DISubprogram(name: "xnmalloc", scope: !239, file: !239, line: 98, type: !3138, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!29, !141, !141}
!3140 = !DILocalVariable(name: "n", arg: 1, scope: !3137, file: !239, line: 98, type: !141)
!3141 = !DILocation(line: 98, column: 18, scope: !3137)
!3142 = !DILocalVariable(name: "s", arg: 2, scope: !3137, file: !239, line: 98, type: !141)
!3143 = !DILocation(line: 98, column: 28, scope: !3137)
!3144 = !DILocation(line: 100, column: 31, scope: !3137)
!3145 = !DILocation(line: 100, column: 34, scope: !3137)
!3146 = !DILocation(line: 100, column: 10, scope: !3137)
!3147 = !DILocation(line: 100, column: 3, scope: !3137)
!3148 = distinct !DISubprogram(name: "xinmalloc", scope: !239, file: !239, line: 104, type: !3149, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!29, !253, !253}
!3151 = !DILocalVariable(name: "n", arg: 1, scope: !3148, file: !239, line: 104, type: !253)
!3152 = !DILocation(line: 104, column: 18, scope: !3148)
!3153 = !DILocalVariable(name: "s", arg: 2, scope: !3148, file: !239, line: 104, type: !253)
!3154 = !DILocation(line: 104, column: 27, scope: !3148)
!3155 = !DILocation(line: 106, column: 32, scope: !3148)
!3156 = !DILocation(line: 106, column: 35, scope: !3148)
!3157 = !DILocation(line: 106, column: 10, scope: !3148)
!3158 = !DILocation(line: 106, column: 3, scope: !3148)
!3159 = distinct !DISubprogram(name: "x2realloc", scope: !239, file: !239, line: 116, type: !3160, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!29, !29, !245}
!3162 = !DILocalVariable(name: "p", arg: 1, scope: !3159, file: !239, line: 116, type: !29)
!3163 = !DILocation(line: 116, column: 18, scope: !3159)
!3164 = !DILocalVariable(name: "ps", arg: 2, scope: !3159, file: !239, line: 116, type: !245)
!3165 = !DILocation(line: 116, column: 29, scope: !3159)
!3166 = !DILocation(line: 118, column: 22, scope: !3159)
!3167 = !DILocation(line: 118, column: 25, scope: !3159)
!3168 = !DILocation(line: 118, column: 10, scope: !3159)
!3169 = !DILocation(line: 118, column: 3, scope: !3159)
!3170 = !DILocalVariable(name: "p", arg: 1, scope: !242, file: !239, line: 176, type: !29)
!3171 = !DILocation(line: 176, column: 19, scope: !242)
!3172 = !DILocalVariable(name: "pn", arg: 2, scope: !242, file: !239, line: 176, type: !245)
!3173 = !DILocation(line: 176, column: 30, scope: !242)
!3174 = !DILocalVariable(name: "s", arg: 3, scope: !242, file: !239, line: 176, type: !141)
!3175 = !DILocation(line: 176, column: 41, scope: !242)
!3176 = !DILocalVariable(name: "n", scope: !242, file: !239, line: 178, type: !141)
!3177 = !DILocation(line: 178, column: 10, scope: !242)
!3178 = !DILocation(line: 178, column: 15, scope: !242)
!3179 = !DILocation(line: 178, column: 14, scope: !242)
!3180 = !DILocation(line: 180, column: 9, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !242, file: !239, line: 180, column: 7)
!3182 = !DILocation(line: 180, column: 7, scope: !242)
!3183 = !DILocation(line: 182, column: 13, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !239, line: 182, column: 11)
!3185 = distinct !DILexicalBlock(scope: !3181, file: !239, line: 181, column: 5)
!3186 = !DILocation(line: 182, column: 11, scope: !3185)
!3187 = !DILocation(line: 190, column: 32, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3184, file: !239, line: 183, column: 9)
!3189 = !DILocation(line: 190, column: 30, scope: !3188)
!3190 = !DILocation(line: 190, column: 13, scope: !3188)
!3191 = !DILocation(line: 191, column: 17, scope: !3188)
!3192 = !DILocation(line: 191, column: 16, scope: !3188)
!3193 = !DILocation(line: 191, column: 13, scope: !3188)
!3194 = !DILocation(line: 192, column: 9, scope: !3188)
!3195 = !DILocation(line: 193, column: 5, scope: !3185)
!3196 = !DILocation(line: 197, column: 11, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !239, line: 197, column: 11)
!3198 = distinct !DILexicalBlock(scope: !3181, file: !239, line: 195, column: 5)
!3199 = !DILocation(line: 197, column: 11, scope: !3198)
!3200 = !DILocation(line: 198, column: 9, scope: !3197)
!3201 = !DILocation(line: 201, column: 22, scope: !242)
!3202 = !DILocation(line: 201, column: 25, scope: !242)
!3203 = !DILocation(line: 201, column: 28, scope: !242)
!3204 = !DILocation(line: 201, column: 7, scope: !242)
!3205 = !DILocation(line: 201, column: 5, scope: !242)
!3206 = !DILocation(line: 202, column: 9, scope: !242)
!3207 = !DILocation(line: 202, column: 4, scope: !242)
!3208 = !DILocation(line: 202, column: 7, scope: !242)
!3209 = !DILocation(line: 203, column: 10, scope: !242)
!3210 = !DILocation(line: 203, column: 3, scope: !242)
!3211 = !DILocalVariable(name: "pa", arg: 1, scope: !249, file: !239, line: 223, type: !29)
!3212 = !DILocation(line: 223, column: 16, scope: !249)
!3213 = !DILocalVariable(name: "pn", arg: 2, scope: !249, file: !239, line: 223, type: !252)
!3214 = !DILocation(line: 223, column: 27, scope: !249)
!3215 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !249, file: !239, line: 223, type: !253)
!3216 = !DILocation(line: 223, column: 37, scope: !249)
!3217 = !DILocalVariable(name: "n_max", arg: 4, scope: !249, file: !239, line: 223, type: !255)
!3218 = !DILocation(line: 223, column: 59, scope: !249)
!3219 = !DILocalVariable(name: "s", arg: 5, scope: !249, file: !239, line: 223, type: !253)
!3220 = !DILocation(line: 223, column: 72, scope: !249)
!3221 = !DILocalVariable(name: "n0", scope: !249, file: !239, line: 230, type: !253)
!3222 = !DILocation(line: 230, column: 9, scope: !249)
!3223 = !DILocation(line: 230, column: 15, scope: !249)
!3224 = !DILocation(line: 230, column: 14, scope: !249)
!3225 = !DILocalVariable(name: "n", scope: !249, file: !239, line: 237, type: !253)
!3226 = !DILocation(line: 237, column: 9, scope: !249)
!3227 = !DILocation(line: 238, column: 7, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !249, file: !239, line: 238, column: 7)
!3229 = !DILocation(line: 238, column: 7, scope: !249)
!3230 = !DILocation(line: 239, column: 7, scope: !3228)
!3231 = !DILocation(line: 239, column: 5, scope: !3228)
!3232 = !DILocation(line: 240, column: 12, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !249, file: !239, line: 240, column: 7)
!3234 = !DILocation(line: 240, column: 9, scope: !3233)
!3235 = !DILocation(line: 240, column: 18, scope: !3233)
!3236 = !DILocation(line: 240, column: 21, scope: !3233)
!3237 = !DILocation(line: 240, column: 29, scope: !3233)
!3238 = !DILocation(line: 240, column: 27, scope: !3233)
!3239 = !DILocation(line: 240, column: 7, scope: !249)
!3240 = !DILocation(line: 241, column: 9, scope: !3233)
!3241 = !DILocation(line: 241, column: 7, scope: !3233)
!3242 = !DILocation(line: 241, column: 5, scope: !3233)
!3243 = !DILocalVariable(name: "nbytes", scope: !249, file: !239, line: 248, type: !253)
!3244 = !DILocation(line: 248, column: 9, scope: !249)
!3245 = !DILocalVariable(name: "adjusted_nbytes", scope: !249, file: !239, line: 252, type: !253)
!3246 = !DILocation(line: 252, column: 9, scope: !249)
!3247 = !DILocation(line: 253, column: 8, scope: !249)
!3248 = !DILocation(line: 255, column: 10, scope: !249)
!3249 = !DILocation(line: 255, column: 17, scope: !249)
!3250 = !DILocation(line: 256, column: 7, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !249, file: !239, line: 256, column: 7)
!3252 = !DILocation(line: 256, column: 7, scope: !249)
!3253 = !DILocation(line: 258, column: 11, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3251, file: !239, line: 257, column: 5)
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
!3266 = distinct !DILexicalBlock(scope: !249, file: !239, line: 262, column: 7)
!3267 = !DILocation(line: 262, column: 7, scope: !249)
!3268 = !DILocation(line: 263, column: 6, scope: !3266)
!3269 = !DILocation(line: 263, column: 9, scope: !3266)
!3270 = !DILocation(line: 263, column: 5, scope: !3266)
!3271 = !DILocation(line: 264, column: 7, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !249, file: !239, line: 264, column: 7)
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
!3288 = !DILocation(line: 264, column: 7, scope: !249)
!3289 = !DILocation(line: 268, column: 5, scope: !3272)
!3290 = !DILocation(line: 269, column: 18, scope: !249)
!3291 = !DILocation(line: 269, column: 22, scope: !249)
!3292 = !DILocation(line: 269, column: 8, scope: !249)
!3293 = !DILocation(line: 269, column: 6, scope: !249)
!3294 = !DILocation(line: 270, column: 9, scope: !249)
!3295 = !DILocation(line: 270, column: 4, scope: !249)
!3296 = !DILocation(line: 270, column: 7, scope: !249)
!3297 = !DILocation(line: 271, column: 10, scope: !249)
!3298 = !DILocation(line: 271, column: 3, scope: !249)
!3299 = distinct !DISubprogram(name: "xzalloc", scope: !239, file: !239, line: 279, type: !3074, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3300 = !DILocalVariable(name: "s", arg: 1, scope: !3299, file: !239, line: 279, type: !141)
!3301 = !DILocation(line: 279, column: 17, scope: !3299)
!3302 = !DILocation(line: 281, column: 19, scope: !3299)
!3303 = !DILocation(line: 281, column: 10, scope: !3299)
!3304 = !DILocation(line: 281, column: 3, scope: !3299)
!3305 = distinct !DISubprogram(name: "xcalloc", scope: !239, file: !239, line: 294, type: !3138, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3306 = !DILocalVariable(name: "n", arg: 1, scope: !3305, file: !239, line: 294, type: !141)
!3307 = !DILocation(line: 294, column: 17, scope: !3305)
!3308 = !DILocalVariable(name: "s", arg: 2, scope: !3305, file: !239, line: 294, type: !141)
!3309 = !DILocation(line: 294, column: 27, scope: !3305)
!3310 = !DILocation(line: 296, column: 33, scope: !3305)
!3311 = !DILocation(line: 296, column: 36, scope: !3305)
!3312 = !DILocation(line: 296, column: 25, scope: !3305)
!3313 = !DILocation(line: 296, column: 10, scope: !3305)
!3314 = !DILocation(line: 296, column: 3, scope: !3305)
!3315 = distinct !DISubprogram(name: "xizalloc", scope: !239, file: !239, line: 285, type: !3083, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3316 = !DILocalVariable(name: "s", arg: 1, scope: !3315, file: !239, line: 285, type: !253)
!3317 = !DILocation(line: 285, column: 17, scope: !3315)
!3318 = !DILocation(line: 287, column: 20, scope: !3315)
!3319 = !DILocation(line: 287, column: 10, scope: !3315)
!3320 = !DILocation(line: 287, column: 3, scope: !3315)
!3321 = distinct !DISubprogram(name: "xicalloc", scope: !239, file: !239, line: 300, type: !3149, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3321, file: !239, line: 300, type: !253)
!3323 = !DILocation(line: 300, column: 17, scope: !3321)
!3324 = !DILocalVariable(name: "s", arg: 2, scope: !3321, file: !239, line: 300, type: !253)
!3325 = !DILocation(line: 300, column: 26, scope: !3321)
!3326 = !DILocation(line: 302, column: 34, scope: !3321)
!3327 = !DILocation(line: 302, column: 37, scope: !3321)
!3328 = !DILocation(line: 302, column: 25, scope: !3321)
!3329 = !DILocation(line: 302, column: 10, scope: !3321)
!3330 = !DILocation(line: 302, column: 3, scope: !3321)
!3331 = distinct !DISubprogram(name: "xmemdup", scope: !239, file: !239, line: 310, type: !3332, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!29, !3334, !141}
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3336 = !DILocalVariable(name: "p", arg: 1, scope: !3331, file: !239, line: 310, type: !3334)
!3337 = !DILocation(line: 310, column: 22, scope: !3331)
!3338 = !DILocalVariable(name: "s", arg: 2, scope: !3331, file: !239, line: 310, type: !141)
!3339 = !DILocation(line: 310, column: 32, scope: !3331)
!3340 = !DILocation(line: 312, column: 27, scope: !3331)
!3341 = !DILocation(line: 312, column: 18, scope: !3331)
!3342 = !DILocation(line: 312, column: 31, scope: !3331)
!3343 = !DILocation(line: 312, column: 34, scope: !3331)
!3344 = !DILocation(line: 312, column: 10, scope: !3331)
!3345 = !DILocation(line: 312, column: 3, scope: !3331)
!3346 = distinct !DISubprogram(name: "ximemdup", scope: !239, file: !239, line: 316, type: !3347, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!29, !3334, !253}
!3349 = !DILocalVariable(name: "p", arg: 1, scope: !3346, file: !239, line: 316, type: !3334)
!3350 = !DILocation(line: 316, column: 23, scope: !3346)
!3351 = !DILocalVariable(name: "s", arg: 2, scope: !3346, file: !239, line: 316, type: !253)
!3352 = !DILocation(line: 316, column: 32, scope: !3346)
!3353 = !DILocation(line: 318, column: 28, scope: !3346)
!3354 = !DILocation(line: 318, column: 18, scope: !3346)
!3355 = !DILocation(line: 318, column: 32, scope: !3346)
!3356 = !DILocation(line: 318, column: 35, scope: !3346)
!3357 = !DILocation(line: 318, column: 10, scope: !3346)
!3358 = !DILocation(line: 318, column: 3, scope: !3346)
!3359 = distinct !DISubprogram(name: "ximemdup0", scope: !239, file: !239, line: 325, type: !3360, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!103, !3334, !253}
!3362 = !DILocalVariable(name: "p", arg: 1, scope: !3359, file: !239, line: 325, type: !3334)
!3363 = !DILocation(line: 325, column: 24, scope: !3359)
!3364 = !DILocalVariable(name: "s", arg: 2, scope: !3359, file: !239, line: 325, type: !253)
!3365 = !DILocation(line: 325, column: 33, scope: !3359)
!3366 = !DILocalVariable(name: "result", scope: !3359, file: !239, line: 327, type: !103)
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
!3379 = distinct !DISubprogram(name: "xstrdup", scope: !239, file: !239, line: 335, type: !2442, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !33)
!3380 = !DILocalVariable(name: "string", arg: 1, scope: !3379, file: !239, line: 335, type: !6)
!3381 = !DILocation(line: 335, column: 22, scope: !3379)
!3382 = !DILocation(line: 337, column: 19, scope: !3379)
!3383 = !DILocation(line: 337, column: 35, scope: !3379)
!3384 = !DILocation(line: 337, column: 27, scope: !3379)
!3385 = !DILocation(line: 337, column: 43, scope: !3379)
!3386 = !DILocation(line: 337, column: 10, scope: !3379)
!3387 = !DILocation(line: 337, column: 3, scope: !3379)
!3388 = distinct !DISubprogram(name: "xalloc_die", scope: !259, file: !259, line: 32, type: !79, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !33)
!3389 = !DILocalVariable(name: "__errstatus", scope: !3390, file: !259, line: 34, type: !3391)
!3390 = distinct !DILexicalBlock(scope: !3388, file: !259, line: 34, column: 3)
!3391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!3392 = !DILocation(line: 34, column: 3, scope: !3390)
!3393 = !DILocation(line: 40, column: 3, scope: !3388)
!3394 = distinct !DISubprogram(name: "c32isprint", scope: !3395, file: !3395, line: 41, type: !3396, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !33)
!3395 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!30, !3398}
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3399, line: 20, baseType: !14)
!3399 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3400 = !DILocalVariable(name: "wc", arg: 1, scope: !3394, file: !3395, line: 41, type: !3398)
!3401 = !DILocation(line: 41, column: 14, scope: !3394)
!3402 = !DILocation(line: 66, column: 22, scope: !3394)
!3403 = !DILocation(line: 66, column: 10, scope: !3394)
!3404 = !DILocation(line: 66, column: 3, scope: !3394)
!3405 = distinct !DISubprogram(name: "close_stream", scope: !263, file: !263, line: 55, type: !3406, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !33)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!30, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2732, line: 7, baseType: !3410)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2734, line: 49, size: 1728, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3410, file: !2734, line: 51, baseType: !30, size: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3410, file: !2734, line: 54, baseType: !103, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3410, file: !2734, line: 55, baseType: !103, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3410, file: !2734, line: 56, baseType: !103, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3410, file: !2734, line: 57, baseType: !103, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3410, file: !2734, line: 58, baseType: !103, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3410, file: !2734, line: 59, baseType: !103, size: 64, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3410, file: !2734, line: 60, baseType: !103, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3410, file: !2734, line: 61, baseType: !103, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3410, file: !2734, line: 64, baseType: !103, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3410, file: !2734, line: 65, baseType: !103, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3410, file: !2734, line: 66, baseType: !103, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3410, file: !2734, line: 68, baseType: !2749, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3410, file: !2734, line: 70, baseType: !3426, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3410, file: !2734, line: 72, baseType: !30, size: 32, offset: 896)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3410, file: !2734, line: 73, baseType: !30, size: 32, offset: 928)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3410, file: !2734, line: 74, baseType: !2756, size: 64, offset: 960)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3410, file: !2734, line: 77, baseType: !31, size: 16, offset: 1024)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3410, file: !2734, line: 78, baseType: !2759, size: 8, offset: 1040)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3410, file: !2734, line: 79, baseType: !2761, size: 8, offset: 1048)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3410, file: !2734, line: 81, baseType: !2765, size: 64, offset: 1088)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3410, file: !2734, line: 89, baseType: !2768, size: 64, offset: 1152)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3410, file: !2734, line: 91, baseType: !2770, size: 64, offset: 1216)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3410, file: !2734, line: 92, baseType: !2773, size: 64, offset: 1280)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3410, file: !2734, line: 93, baseType: !3426, size: 64, offset: 1344)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3410, file: !2734, line: 94, baseType: !29, size: 64, offset: 1408)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3410, file: !2734, line: 95, baseType: !141, size: 64, offset: 1472)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3410, file: !2734, line: 96, baseType: !30, size: 32, offset: 1536)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3410, file: !2734, line: 98, baseType: !2780, size: 160, offset: 1568)
!3442 = !DILocalVariable(name: "stream", arg: 1, scope: !3405, file: !263, line: 55, type: !3408)
!3443 = !DILocation(line: 55, column: 21, scope: !3405)
!3444 = !DILocalVariable(name: "some_pending", scope: !3405, file: !263, line: 57, type: !3445)
!3445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!3446 = !DILocation(line: 57, column: 14, scope: !3405)
!3447 = !DILocation(line: 57, column: 42, scope: !3405)
!3448 = !DILocation(line: 57, column: 30, scope: !3405)
!3449 = !DILocation(line: 57, column: 50, scope: !3405)
!3450 = !DILocalVariable(name: "prev_fail", scope: !3405, file: !263, line: 58, type: !3445)
!3451 = !DILocation(line: 58, column: 14, scope: !3405)
!3452 = !DILocation(line: 58, column: 27, scope: !3405)
!3453 = !DILocation(line: 58, column: 43, scope: !3405)
!3454 = !DILocalVariable(name: "fclose_fail", scope: !3405, file: !263, line: 59, type: !3445)
!3455 = !DILocation(line: 59, column: 14, scope: !3405)
!3456 = !DILocation(line: 59, column: 37, scope: !3405)
!3457 = !DILocation(line: 59, column: 29, scope: !3405)
!3458 = !DILocation(line: 59, column: 45, scope: !3405)
!3459 = !DILocation(line: 69, column: 7, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3405, file: !263, line: 69, column: 7)
!3461 = !DILocation(line: 69, column: 17, scope: !3460)
!3462 = !DILocation(line: 69, column: 21, scope: !3460)
!3463 = !DILocation(line: 69, column: 33, scope: !3460)
!3464 = !DILocation(line: 69, column: 37, scope: !3460)
!3465 = !DILocation(line: 69, column: 50, scope: !3460)
!3466 = !DILocation(line: 69, column: 53, scope: !3460)
!3467 = !DILocation(line: 69, column: 59, scope: !3460)
!3468 = !DILocation(line: 69, column: 7, scope: !3405)
!3469 = !DILocation(line: 71, column: 13, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !263, line: 71, column: 11)
!3471 = distinct !DILexicalBlock(scope: !3460, file: !263, line: 70, column: 5)
!3472 = !DILocation(line: 71, column: 11, scope: !3471)
!3473 = !DILocation(line: 72, column: 9, scope: !3470)
!3474 = !DILocation(line: 72, column: 15, scope: !3470)
!3475 = !DILocation(line: 73, column: 7, scope: !3471)
!3476 = !DILocation(line: 76, column: 3, scope: !3405)
!3477 = !DILocation(line: 77, column: 1, scope: !3405)
!3478 = distinct !DISubprogram(name: "rpl_fclose", scope: !265, file: !265, line: 58, type: !3479, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !33)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!30, !3481}
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2732, line: 7, baseType: !3483)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2734, line: 49, size: 1728, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3483, file: !2734, line: 51, baseType: !30, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3483, file: !2734, line: 54, baseType: !103, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3483, file: !2734, line: 55, baseType: !103, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3483, file: !2734, line: 56, baseType: !103, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3483, file: !2734, line: 57, baseType: !103, size: 64, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3483, file: !2734, line: 58, baseType: !103, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3483, file: !2734, line: 59, baseType: !103, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3483, file: !2734, line: 60, baseType: !103, size: 64, offset: 448)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3483, file: !2734, line: 61, baseType: !103, size: 64, offset: 512)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3483, file: !2734, line: 64, baseType: !103, size: 64, offset: 576)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3483, file: !2734, line: 65, baseType: !103, size: 64, offset: 640)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3483, file: !2734, line: 66, baseType: !103, size: 64, offset: 704)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3483, file: !2734, line: 68, baseType: !2749, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3483, file: !2734, line: 70, baseType: !3499, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3483, file: !2734, line: 72, baseType: !30, size: 32, offset: 896)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3483, file: !2734, line: 73, baseType: !30, size: 32, offset: 928)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3483, file: !2734, line: 74, baseType: !2756, size: 64, offset: 960)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3483, file: !2734, line: 77, baseType: !31, size: 16, offset: 1024)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3483, file: !2734, line: 78, baseType: !2759, size: 8, offset: 1040)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3483, file: !2734, line: 79, baseType: !2761, size: 8, offset: 1048)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3483, file: !2734, line: 81, baseType: !2765, size: 64, offset: 1088)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3483, file: !2734, line: 89, baseType: !2768, size: 64, offset: 1152)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3483, file: !2734, line: 91, baseType: !2770, size: 64, offset: 1216)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3483, file: !2734, line: 92, baseType: !2773, size: 64, offset: 1280)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3483, file: !2734, line: 93, baseType: !3499, size: 64, offset: 1344)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3483, file: !2734, line: 94, baseType: !29, size: 64, offset: 1408)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3483, file: !2734, line: 95, baseType: !141, size: 64, offset: 1472)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3483, file: !2734, line: 96, baseType: !30, size: 32, offset: 1536)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3483, file: !2734, line: 98, baseType: !2780, size: 160, offset: 1568)
!3515 = !DILocalVariable(name: "fp", arg: 1, scope: !3478, file: !265, line: 58, type: !3481)
!3516 = !DILocation(line: 58, column: 19, scope: !3478)
!3517 = !DILocalVariable(name: "saved_errno", scope: !3478, file: !265, line: 60, type: !30)
!3518 = !DILocation(line: 60, column: 7, scope: !3478)
!3519 = !DILocalVariable(name: "fd", scope: !3478, file: !265, line: 63, type: !30)
!3520 = !DILocation(line: 63, column: 7, scope: !3478)
!3521 = !DILocation(line: 63, column: 20, scope: !3478)
!3522 = !DILocation(line: 63, column: 12, scope: !3478)
!3523 = !DILocation(line: 64, column: 7, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3478, file: !265, line: 64, column: 7)
!3525 = !DILocation(line: 64, column: 10, scope: !3524)
!3526 = !DILocation(line: 64, column: 7, scope: !3478)
!3527 = !DILocation(line: 65, column: 28, scope: !3524)
!3528 = !DILocation(line: 65, column: 12, scope: !3524)
!3529 = !DILocation(line: 65, column: 5, scope: !3524)
!3530 = !DILocation(line: 70, column: 9, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3478, file: !265, line: 70, column: 7)
!3532 = !DILocation(line: 70, column: 23, scope: !3531)
!3533 = !DILocation(line: 70, column: 41, scope: !3531)
!3534 = !DILocation(line: 70, column: 33, scope: !3531)
!3535 = !DILocation(line: 70, column: 26, scope: !3531)
!3536 = !DILocation(line: 70, column: 59, scope: !3531)
!3537 = !DILocation(line: 71, column: 7, scope: !3531)
!3538 = !DILocation(line: 71, column: 18, scope: !3531)
!3539 = !DILocation(line: 71, column: 10, scope: !3531)
!3540 = !DILocation(line: 70, column: 7, scope: !3478)
!3541 = !DILocation(line: 72, column: 19, scope: !3531)
!3542 = !DILocation(line: 72, column: 17, scope: !3531)
!3543 = !DILocation(line: 72, column: 5, scope: !3531)
!3544 = !DILocalVariable(name: "result", scope: !3478, file: !265, line: 74, type: !30)
!3545 = !DILocation(line: 74, column: 7, scope: !3478)
!3546 = !DILocation(line: 100, column: 28, scope: !3478)
!3547 = !DILocation(line: 100, column: 12, scope: !3478)
!3548 = !DILocation(line: 100, column: 10, scope: !3478)
!3549 = !DILocation(line: 105, column: 7, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3478, file: !265, line: 105, column: 7)
!3551 = !DILocation(line: 105, column: 19, scope: !3550)
!3552 = !DILocation(line: 105, column: 7, scope: !3478)
!3553 = !DILocation(line: 107, column: 15, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3550, file: !265, line: 106, column: 5)
!3555 = !DILocation(line: 107, column: 7, scope: !3554)
!3556 = !DILocation(line: 107, column: 13, scope: !3554)
!3557 = !DILocation(line: 108, column: 14, scope: !3554)
!3558 = !DILocation(line: 109, column: 5, scope: !3554)
!3559 = !DILocation(line: 111, column: 10, scope: !3478)
!3560 = !DILocation(line: 111, column: 3, scope: !3478)
!3561 = !DILocation(line: 112, column: 1, scope: !3478)
!3562 = distinct !DISubprogram(name: "rpl_fflush", scope: !267, file: !267, line: 130, type: !3563, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !33)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!30, !3565}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2732, line: 7, baseType: !3567)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2734, line: 49, size: 1728, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3567, file: !2734, line: 51, baseType: !30, size: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3567, file: !2734, line: 54, baseType: !103, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3567, file: !2734, line: 55, baseType: !103, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3567, file: !2734, line: 56, baseType: !103, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3567, file: !2734, line: 57, baseType: !103, size: 64, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3567, file: !2734, line: 58, baseType: !103, size: 64, offset: 320)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3567, file: !2734, line: 59, baseType: !103, size: 64, offset: 384)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3567, file: !2734, line: 60, baseType: !103, size: 64, offset: 448)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3567, file: !2734, line: 61, baseType: !103, size: 64, offset: 512)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3567, file: !2734, line: 64, baseType: !103, size: 64, offset: 576)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3567, file: !2734, line: 65, baseType: !103, size: 64, offset: 640)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3567, file: !2734, line: 66, baseType: !103, size: 64, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3567, file: !2734, line: 68, baseType: !2749, size: 64, offset: 768)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3567, file: !2734, line: 70, baseType: !3583, size: 64, offset: 832)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3567, file: !2734, line: 72, baseType: !30, size: 32, offset: 896)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3567, file: !2734, line: 73, baseType: !30, size: 32, offset: 928)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3567, file: !2734, line: 74, baseType: !2756, size: 64, offset: 960)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3567, file: !2734, line: 77, baseType: !31, size: 16, offset: 1024)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3567, file: !2734, line: 78, baseType: !2759, size: 8, offset: 1040)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3567, file: !2734, line: 79, baseType: !2761, size: 8, offset: 1048)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3567, file: !2734, line: 81, baseType: !2765, size: 64, offset: 1088)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3567, file: !2734, line: 89, baseType: !2768, size: 64, offset: 1152)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3567, file: !2734, line: 91, baseType: !2770, size: 64, offset: 1216)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3567, file: !2734, line: 92, baseType: !2773, size: 64, offset: 1280)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3567, file: !2734, line: 93, baseType: !3583, size: 64, offset: 1344)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3567, file: !2734, line: 94, baseType: !29, size: 64, offset: 1408)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3567, file: !2734, line: 95, baseType: !141, size: 64, offset: 1472)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3567, file: !2734, line: 96, baseType: !30, size: 32, offset: 1536)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3567, file: !2734, line: 98, baseType: !2780, size: 160, offset: 1568)
!3599 = !DILocalVariable(name: "stream", arg: 1, scope: !3562, file: !267, line: 130, type: !3565)
!3600 = !DILocation(line: 130, column: 19, scope: !3562)
!3601 = !DILocation(line: 151, column: 7, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3562, file: !267, line: 151, column: 7)
!3603 = !DILocation(line: 151, column: 14, scope: !3602)
!3604 = !DILocation(line: 151, column: 22, scope: !3602)
!3605 = !DILocation(line: 151, column: 27, scope: !3602)
!3606 = !DILocation(line: 151, column: 7, scope: !3562)
!3607 = !DILocation(line: 152, column: 20, scope: !3602)
!3608 = !DILocation(line: 152, column: 12, scope: !3602)
!3609 = !DILocation(line: 152, column: 5, scope: !3602)
!3610 = !DILocation(line: 157, column: 44, scope: !3562)
!3611 = !DILocation(line: 157, column: 3, scope: !3562)
!3612 = !DILocation(line: 159, column: 18, scope: !3562)
!3613 = !DILocation(line: 159, column: 10, scope: !3562)
!3614 = !DILocation(line: 159, column: 3, scope: !3562)
!3615 = !DILocation(line: 236, column: 1, scope: !3562)
!3616 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !267, file: !267, line: 42, type: !3617, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !266, retainedNodes: !33)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !3565}
!3619 = !DILocalVariable(name: "fp", arg: 1, scope: !3616, file: !267, line: 42, type: !3565)
!3620 = !DILocation(line: 42, column: 48, scope: !3616)
!3621 = !DILocation(line: 44, column: 7, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3616, file: !267, line: 44, column: 7)
!3623 = !DILocation(line: 44, column: 12, scope: !3622)
!3624 = !DILocation(line: 44, column: 19, scope: !3622)
!3625 = !DILocation(line: 44, column: 7, scope: !3616)
!3626 = !DILocation(line: 46, column: 13, scope: !3622)
!3627 = !DILocation(line: 46, column: 5, scope: !3622)
!3628 = !DILocation(line: 47, column: 1, scope: !3616)
!3629 = distinct !DISubprogram(name: "rpl_fseeko", scope: !269, file: !269, line: 28, type: !3630, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !33)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!30, !3632, !3666, !30}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2732, line: 7, baseType: !3634)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2734, line: 49, size: 1728, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3634, file: !2734, line: 51, baseType: !30, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3634, file: !2734, line: 54, baseType: !103, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3634, file: !2734, line: 55, baseType: !103, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3634, file: !2734, line: 56, baseType: !103, size: 64, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3634, file: !2734, line: 57, baseType: !103, size: 64, offset: 256)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3634, file: !2734, line: 58, baseType: !103, size: 64, offset: 320)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3634, file: !2734, line: 59, baseType: !103, size: 64, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3634, file: !2734, line: 60, baseType: !103, size: 64, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3634, file: !2734, line: 61, baseType: !103, size: 64, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3634, file: !2734, line: 64, baseType: !103, size: 64, offset: 576)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3634, file: !2734, line: 65, baseType: !103, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3634, file: !2734, line: 66, baseType: !103, size: 64, offset: 704)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3634, file: !2734, line: 68, baseType: !2749, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3634, file: !2734, line: 70, baseType: !3650, size: 64, offset: 832)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3634, file: !2734, line: 72, baseType: !30, size: 32, offset: 896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3634, file: !2734, line: 73, baseType: !30, size: 32, offset: 928)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3634, file: !2734, line: 74, baseType: !2756, size: 64, offset: 960)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3634, file: !2734, line: 77, baseType: !31, size: 16, offset: 1024)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3634, file: !2734, line: 78, baseType: !2759, size: 8, offset: 1040)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3634, file: !2734, line: 79, baseType: !2761, size: 8, offset: 1048)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3634, file: !2734, line: 81, baseType: !2765, size: 64, offset: 1088)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3634, file: !2734, line: 89, baseType: !2768, size: 64, offset: 1152)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3634, file: !2734, line: 91, baseType: !2770, size: 64, offset: 1216)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3634, file: !2734, line: 92, baseType: !2773, size: 64, offset: 1280)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3634, file: !2734, line: 93, baseType: !3650, size: 64, offset: 1344)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3634, file: !2734, line: 94, baseType: !29, size: 64, offset: 1408)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3634, file: !2734, line: 95, baseType: !141, size: 64, offset: 1472)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3634, file: !2734, line: 96, baseType: !30, size: 32, offset: 1536)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3634, file: !2734, line: 98, baseType: !2780, size: 160, offset: 1568)
!3666 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !59, line: 63, baseType: !2756)
!3667 = !DILocalVariable(name: "fp", arg: 1, scope: !3629, file: !269, line: 28, type: !3632)
!3668 = !DILocation(line: 28, column: 15, scope: !3629)
!3669 = !DILocalVariable(name: "offset", arg: 2, scope: !3629, file: !269, line: 28, type: !3666)
!3670 = !DILocation(line: 28, column: 25, scope: !3629)
!3671 = !DILocalVariable(name: "whence", arg: 3, scope: !3629, file: !269, line: 28, type: !30)
!3672 = !DILocation(line: 28, column: 37, scope: !3629)
!3673 = !DILocation(line: 55, column: 7, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3629, file: !269, line: 55, column: 7)
!3675 = !DILocation(line: 55, column: 12, scope: !3674)
!3676 = !DILocation(line: 55, column: 28, scope: !3674)
!3677 = !DILocation(line: 55, column: 33, scope: !3674)
!3678 = !DILocation(line: 55, column: 25, scope: !3674)
!3679 = !DILocation(line: 56, column: 7, scope: !3674)
!3680 = !DILocation(line: 56, column: 10, scope: !3674)
!3681 = !DILocation(line: 56, column: 15, scope: !3674)
!3682 = !DILocation(line: 56, column: 32, scope: !3674)
!3683 = !DILocation(line: 56, column: 37, scope: !3674)
!3684 = !DILocation(line: 56, column: 29, scope: !3674)
!3685 = !DILocation(line: 57, column: 7, scope: !3674)
!3686 = !DILocation(line: 57, column: 10, scope: !3674)
!3687 = !DILocation(line: 57, column: 15, scope: !3674)
!3688 = !DILocation(line: 57, column: 29, scope: !3674)
!3689 = !DILocation(line: 55, column: 7, scope: !3629)
!3690 = !DILocalVariable(name: "pos", scope: !3691, file: !269, line: 123, type: !3666)
!3691 = distinct !DILexicalBlock(scope: !3674, file: !269, line: 119, column: 5)
!3692 = !DILocation(line: 123, column: 13, scope: !3691)
!3693 = !DILocation(line: 123, column: 34, scope: !3691)
!3694 = !DILocation(line: 123, column: 26, scope: !3691)
!3695 = !DILocation(line: 123, column: 39, scope: !3691)
!3696 = !DILocation(line: 123, column: 47, scope: !3691)
!3697 = !DILocation(line: 123, column: 19, scope: !3691)
!3698 = !DILocation(line: 124, column: 11, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3691, file: !269, line: 124, column: 11)
!3700 = !DILocation(line: 124, column: 15, scope: !3699)
!3701 = !DILocation(line: 124, column: 11, scope: !3691)
!3702 = !DILocation(line: 130, column: 11, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3699, file: !269, line: 125, column: 9)
!3704 = !DILocation(line: 135, column: 7, scope: !3691)
!3705 = !DILocation(line: 135, column: 12, scope: !3691)
!3706 = !DILocation(line: 135, column: 19, scope: !3691)
!3707 = !DILocation(line: 136, column: 22, scope: !3691)
!3708 = !DILocation(line: 136, column: 7, scope: !3691)
!3709 = !DILocation(line: 136, column: 12, scope: !3691)
!3710 = !DILocation(line: 136, column: 20, scope: !3691)
!3711 = !DILocation(line: 167, column: 7, scope: !3691)
!3712 = !DILocation(line: 169, column: 18, scope: !3629)
!3713 = !DILocation(line: 169, column: 22, scope: !3629)
!3714 = !DILocation(line: 169, column: 30, scope: !3629)
!3715 = !DILocation(line: 169, column: 10, scope: !3629)
!3716 = !DILocation(line: 169, column: 3, scope: !3629)
!3717 = !DILocation(line: 170, column: 1, scope: !3629)
!3718 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3719, file: !3719, line: 43, type: !3720, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !33)
!3719 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3720 = !DISubroutineType(types: !51)
!3721 = !DILocation(line: 45, column: 3, scope: !3718)
!3722 = !DILocation(line: 45, column: 9, scope: !3718)
!3723 = !DILocation(line: 46, column: 3, scope: !3718)
!3724 = distinct !DISubprogram(name: "imalloc", scope: !3719, file: !3719, line: 55, type: !3083, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !33)
!3725 = !DILocalVariable(name: "s", arg: 1, scope: !3724, file: !3719, line: 55, type: !253)
!3726 = !DILocation(line: 55, column: 16, scope: !3724)
!3727 = !DILocation(line: 57, column: 10, scope: !3724)
!3728 = !DILocation(line: 57, column: 12, scope: !3724)
!3729 = !DILocation(line: 57, column: 34, scope: !3724)
!3730 = !DILocation(line: 57, column: 26, scope: !3724)
!3731 = !DILocation(line: 57, column: 39, scope: !3724)
!3732 = !DILocation(line: 57, column: 3, scope: !3724)
!3733 = distinct !DISubprogram(name: "irealloc", scope: !3719, file: !3719, line: 66, type: !3111, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !33)
!3734 = !DILocalVariable(name: "p", arg: 1, scope: !3733, file: !3719, line: 66, type: !29)
!3735 = !DILocation(line: 66, column: 17, scope: !3733)
!3736 = !DILocalVariable(name: "s", arg: 2, scope: !3733, file: !3719, line: 66, type: !253)
!3737 = !DILocation(line: 66, column: 26, scope: !3733)
!3738 = !DILocation(line: 68, column: 10, scope: !3733)
!3739 = !DILocation(line: 68, column: 12, scope: !3733)
!3740 = !DILocation(line: 68, column: 35, scope: !3733)
!3741 = !DILocation(line: 68, column: 38, scope: !3733)
!3742 = !DILocation(line: 68, column: 26, scope: !3733)
!3743 = !DILocation(line: 68, column: 43, scope: !3733)
!3744 = !DILocation(line: 68, column: 3, scope: !3733)
!3745 = distinct !DISubprogram(name: "icalloc", scope: !3719, file: !3719, line: 77, type: !3149, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !33)
!3746 = !DILocalVariable(name: "n", arg: 1, scope: !3745, file: !3719, line: 77, type: !253)
!3747 = !DILocation(line: 77, column: 16, scope: !3745)
!3748 = !DILocalVariable(name: "s", arg: 2, scope: !3745, file: !3719, line: 77, type: !253)
!3749 = !DILocation(line: 77, column: 25, scope: !3745)
!3750 = !DILocation(line: 79, column: 18, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3745, file: !3719, line: 79, column: 7)
!3752 = !DILocation(line: 79, column: 16, scope: !3751)
!3753 = !DILocation(line: 79, column: 7, scope: !3745)
!3754 = !DILocation(line: 81, column: 11, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !3719, line: 81, column: 11)
!3756 = distinct !DILexicalBlock(scope: !3751, file: !3719, line: 80, column: 5)
!3757 = !DILocation(line: 81, column: 13, scope: !3755)
!3758 = !DILocation(line: 81, column: 11, scope: !3756)
!3759 = !DILocation(line: 82, column: 16, scope: !3755)
!3760 = !DILocation(line: 82, column: 9, scope: !3755)
!3761 = !DILocation(line: 83, column: 9, scope: !3756)
!3762 = !DILocation(line: 84, column: 5, scope: !3756)
!3763 = !DILocation(line: 85, column: 18, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3745, file: !3719, line: 85, column: 7)
!3765 = !DILocation(line: 85, column: 16, scope: !3764)
!3766 = !DILocation(line: 85, column: 7, scope: !3745)
!3767 = !DILocation(line: 87, column: 11, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !3719, line: 87, column: 11)
!3769 = distinct !DILexicalBlock(scope: !3764, file: !3719, line: 86, column: 5)
!3770 = !DILocation(line: 87, column: 13, scope: !3768)
!3771 = !DILocation(line: 87, column: 11, scope: !3769)
!3772 = !DILocation(line: 88, column: 16, scope: !3768)
!3773 = !DILocation(line: 88, column: 9, scope: !3768)
!3774 = !DILocation(line: 89, column: 9, scope: !3769)
!3775 = !DILocation(line: 90, column: 5, scope: !3769)
!3776 = !DILocation(line: 91, column: 18, scope: !3745)
!3777 = !DILocation(line: 91, column: 21, scope: !3745)
!3778 = !DILocation(line: 91, column: 10, scope: !3745)
!3779 = !DILocation(line: 91, column: 3, scope: !3745)
!3780 = !DILocation(line: 92, column: 1, scope: !3745)
!3781 = distinct !DISubprogram(name: "ireallocarray", scope: !3719, file: !3719, line: 98, type: !3123, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !33)
!3782 = !DILocalVariable(name: "p", arg: 1, scope: !3781, file: !3719, line: 98, type: !29)
!3783 = !DILocation(line: 98, column: 22, scope: !3781)
!3784 = !DILocalVariable(name: "n", arg: 2, scope: !3781, file: !3719, line: 98, type: !253)
!3785 = !DILocation(line: 98, column: 31, scope: !3781)
!3786 = !DILocalVariable(name: "s", arg: 3, scope: !3781, file: !3719, line: 98, type: !253)
!3787 = !DILocation(line: 98, column: 40, scope: !3781)
!3788 = !DILocation(line: 100, column: 11, scope: !3781)
!3789 = !DILocation(line: 100, column: 13, scope: !3781)
!3790 = !DILocation(line: 100, column: 25, scope: !3781)
!3791 = !DILocation(line: 100, column: 28, scope: !3781)
!3792 = !DILocation(line: 100, column: 30, scope: !3781)
!3793 = !DILocation(line: 101, column: 27, scope: !3781)
!3794 = !DILocation(line: 101, column: 30, scope: !3781)
!3795 = !DILocation(line: 101, column: 33, scope: !3781)
!3796 = !DILocation(line: 101, column: 13, scope: !3781)
!3797 = !DILocation(line: 102, column: 13, scope: !3781)
!3798 = !DILocation(line: 100, column: 3, scope: !3781)
!3799 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !210, file: !210, line: 100, type: !3800, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !33)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!141, !3802, !6, !141, !3803}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!3804 = !DILocalVariable(name: "pwc", arg: 1, scope: !3799, file: !210, line: 100, type: !3802)
!3805 = !DILocation(line: 100, column: 21, scope: !3799)
!3806 = !DILocalVariable(name: "s", arg: 2, scope: !3799, file: !210, line: 100, type: !6)
!3807 = !DILocation(line: 100, column: 38, scope: !3799)
!3808 = !DILocalVariable(name: "n", arg: 3, scope: !3799, file: !210, line: 100, type: !141)
!3809 = !DILocation(line: 100, column: 48, scope: !3799)
!3810 = !DILocalVariable(name: "ps", arg: 4, scope: !3799, file: !210, line: 100, type: !3803)
!3811 = !DILocation(line: 100, column: 62, scope: !3799)
!3812 = !DILocation(line: 105, column: 7, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3799, file: !210, line: 105, column: 7)
!3814 = !DILocation(line: 105, column: 9, scope: !3813)
!3815 = !DILocation(line: 105, column: 7, scope: !3799)
!3816 = !DILocation(line: 107, column: 11, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3813, file: !210, line: 106, column: 5)
!3818 = !DILocation(line: 108, column: 9, scope: !3817)
!3819 = !DILocation(line: 109, column: 9, scope: !3817)
!3820 = !DILocation(line: 110, column: 5, scope: !3817)
!3821 = !DILocation(line: 117, column: 7, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3799, file: !210, line: 117, column: 7)
!3823 = !DILocation(line: 117, column: 10, scope: !3822)
!3824 = !DILocation(line: 117, column: 7, scope: !3799)
!3825 = !DILocation(line: 118, column: 8, scope: !3822)
!3826 = !DILocation(line: 118, column: 5, scope: !3822)
!3827 = !DILocalVariable(name: "ret", scope: !3799, file: !210, line: 130, type: !141)
!3828 = !DILocation(line: 130, column: 10, scope: !3799)
!3829 = !DILocation(line: 130, column: 26, scope: !3799)
!3830 = !DILocation(line: 130, column: 31, scope: !3799)
!3831 = !DILocation(line: 130, column: 34, scope: !3799)
!3832 = !DILocation(line: 130, column: 37, scope: !3799)
!3833 = !DILocation(line: 130, column: 16, scope: !3799)
!3834 = !DILocation(line: 135, column: 7, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3799, file: !210, line: 135, column: 7)
!3836 = !DILocation(line: 135, column: 11, scope: !3835)
!3837 = !DILocation(line: 135, column: 25, scope: !3835)
!3838 = !DILocation(line: 135, column: 39, scope: !3835)
!3839 = !DILocation(line: 135, column: 30, scope: !3835)
!3840 = !DILocation(line: 135, column: 7, scope: !3799)
!3841 = !DILocation(line: 137, column: 14, scope: !3835)
!3842 = !DILocation(line: 137, column: 5, scope: !3835)
!3843 = !DILocation(line: 138, column: 7, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3799, file: !210, line: 138, column: 7)
!3845 = !DILocation(line: 138, column: 11, scope: !3844)
!3846 = !DILocation(line: 138, column: 7, scope: !3799)
!3847 = !DILocation(line: 139, column: 5, scope: !3844)
!3848 = !DILocation(line: 143, column: 22, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3799, file: !210, line: 143, column: 7)
!3850 = !DILocation(line: 143, column: 19, scope: !3849)
!3851 = !DILocation(line: 143, column: 26, scope: !3849)
!3852 = !DILocation(line: 143, column: 29, scope: !3849)
!3853 = !DILocation(line: 143, column: 31, scope: !3849)
!3854 = !DILocation(line: 143, column: 36, scope: !3849)
!3855 = !DILocation(line: 143, column: 41, scope: !3849)
!3856 = !DILocation(line: 143, column: 7, scope: !3799)
!3857 = !DILocation(line: 145, column: 11, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !210, line: 145, column: 11)
!3859 = distinct !DILexicalBlock(scope: !3849, file: !210, line: 144, column: 5)
!3860 = !DILocation(line: 145, column: 15, scope: !3858)
!3861 = !DILocation(line: 145, column: 11, scope: !3859)
!3862 = !DILocation(line: 146, column: 33, scope: !3858)
!3863 = !DILocation(line: 146, column: 32, scope: !3858)
!3864 = !DILocation(line: 146, column: 16, scope: !3858)
!3865 = !DILocation(line: 146, column: 10, scope: !3858)
!3866 = !DILocation(line: 146, column: 14, scope: !3858)
!3867 = !DILocation(line: 146, column: 9, scope: !3858)
!3868 = !DILocation(line: 147, column: 7, scope: !3859)
!3869 = !DILocation(line: 151, column: 10, scope: !3799)
!3870 = !DILocation(line: 151, column: 3, scope: !3799)
!3871 = !DILocation(line: 286, column: 1, scope: !3799)
!3872 = distinct !DISubprogram(name: "mbszero", scope: !3873, file: !3873, line: 1135, type: !3874, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !272, retainedNodes: !33)
!3873 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !3878)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !3879)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !3880)
!3880 = !{!3881, !3882}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3879, file: !217, line: 15, baseType: !30, size: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3879, file: !217, line: 20, baseType: !3883, size: 32, offset: 32)
!3883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3879, file: !217, line: 16, size: 32, elements: !3884)
!3884 = !{!3885, !3886}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3883, file: !217, line: 18, baseType: !14, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3883, file: !217, line: 19, baseType: !226, size: 32)
!3887 = !DILocalVariable(name: "ps", arg: 1, scope: !3872, file: !3873, line: 1135, type: !3876)
!3888 = !DILocation(line: 1135, column: 21, scope: !3872)
!3889 = !DILocation(line: 1137, column: 11, scope: !3872)
!3890 = !DILocation(line: 1137, column: 3, scope: !3872)
!3891 = !DILocation(line: 1138, column: 1, scope: !3872)
!3892 = distinct !DISubprogram(name: "memeq", scope: !2715, file: !2715, line: 974, type: !3893, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !33)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!46, !3334, !3334, !141}
!3895 = !DILocalVariable(name: "__s1", arg: 1, scope: !3892, file: !2715, line: 974, type: !3334)
!3896 = !DILocation(line: 974, column: 20, scope: !3892)
!3897 = !DILocalVariable(name: "__s2", arg: 2, scope: !3892, file: !2715, line: 974, type: !3334)
!3898 = !DILocation(line: 974, column: 38, scope: !3892)
!3899 = !DILocalVariable(name: "__n", arg: 3, scope: !3892, file: !2715, line: 974, type: !141)
!3900 = !DILocation(line: 974, column: 51, scope: !3892)
!3901 = !DILocation(line: 976, column: 19, scope: !3892)
!3902 = !DILocation(line: 976, column: 25, scope: !3892)
!3903 = !DILocation(line: 976, column: 31, scope: !3892)
!3904 = !DILocation(line: 976, column: 11, scope: !3892)
!3905 = !DILocation(line: 976, column: 10, scope: !3892)
!3906 = !DILocation(line: 976, column: 3, scope: !3892)
!3907 = distinct !DISubprogram(name: "rpl_realloc", scope: !3908, file: !3908, line: 2057, type: !3099, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !33)
!3908 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3909 = !DILocalVariable(name: "ptr", arg: 1, scope: !3907, file: !3908, line: 2057, type: !29)
!3910 = !DILocation(line: 2057, column: 20, scope: !3907)
!3911 = !DILocalVariable(name: "size", arg: 2, scope: !3907, file: !3908, line: 2057, type: !141)
!3912 = !DILocation(line: 2057, column: 32, scope: !3907)
!3913 = !DILocation(line: 2059, column: 19, scope: !3907)
!3914 = !DILocation(line: 2059, column: 24, scope: !3907)
!3915 = !DILocation(line: 2059, column: 31, scope: !3907)
!3916 = !DILocation(line: 2059, column: 10, scope: !3907)
!3917 = !DILocation(line: 2059, column: 3, scope: !3907)
!3918 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !279, file: !279, line: 27, type: !3036, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !33)
!3919 = !DILocalVariable(name: "ptr", arg: 1, scope: !3918, file: !279, line: 27, type: !29)
!3920 = !DILocation(line: 27, column: 21, scope: !3918)
!3921 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3918, file: !279, line: 27, type: !141)
!3922 = !DILocation(line: 27, column: 33, scope: !3918)
!3923 = !DILocalVariable(name: "size", arg: 3, scope: !3918, file: !279, line: 27, type: !141)
!3924 = !DILocation(line: 27, column: 47, scope: !3918)
!3925 = !DILocalVariable(name: "nbytes", scope: !3918, file: !279, line: 29, type: !141)
!3926 = !DILocation(line: 29, column: 10, scope: !3918)
!3927 = !DILocation(line: 30, column: 7, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3918, file: !279, line: 30, column: 7)
!3929 = !DILocation(line: 30, column: 7, scope: !3918)
!3930 = !DILocation(line: 32, column: 7, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3928, file: !279, line: 31, column: 5)
!3932 = !DILocation(line: 32, column: 13, scope: !3931)
!3933 = !DILocation(line: 33, column: 7, scope: !3931)
!3934 = !DILocation(line: 37, column: 19, scope: !3918)
!3935 = !DILocation(line: 37, column: 24, scope: !3918)
!3936 = !DILocation(line: 37, column: 10, scope: !3918)
!3937 = !DILocation(line: 37, column: 3, scope: !3918)
!3938 = !DILocation(line: 38, column: 1, scope: !3918)
!3939 = distinct !DISubprogram(name: "hard_locale", scope: !282, file: !282, line: 28, type: !3940, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !33)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!46, !30}
!3942 = !DILocalVariable(name: "category", arg: 1, scope: !3939, file: !282, line: 28, type: !30)
!3943 = !DILocation(line: 28, column: 18, scope: !3939)
!3944 = !DILocalVariable(name: "locale", scope: !3939, file: !282, line: 30, type: !3945)
!3945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3946)
!3946 = !{!3947}
!3947 = !DISubrange(count: 257)
!3948 = !DILocation(line: 30, column: 8, scope: !3939)
!3949 = !DILocation(line: 32, column: 25, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3939, file: !282, line: 32, column: 7)
!3951 = !DILocation(line: 32, column: 35, scope: !3950)
!3952 = !DILocation(line: 32, column: 7, scope: !3950)
!3953 = !DILocation(line: 32, column: 7, scope: !3939)
!3954 = !DILocation(line: 33, column: 5, scope: !3950)
!3955 = !DILocation(line: 35, column: 16, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3939, file: !282, line: 35, column: 7)
!3957 = !DILocation(line: 35, column: 9, scope: !3956)
!3958 = !DILocation(line: 35, column: 29, scope: !3956)
!3959 = !DILocation(line: 35, column: 39, scope: !3956)
!3960 = !DILocation(line: 35, column: 32, scope: !3956)
!3961 = !DILocation(line: 35, column: 7, scope: !3939)
!3962 = !DILocation(line: 36, column: 5, scope: !3956)
!3963 = !DILocation(line: 46, column: 3, scope: !3939)
!3964 = !DILocation(line: 47, column: 1, scope: !3939)
!3965 = distinct !DISubprogram(name: "setlocale_null_r", scope: !284, file: !284, line: 154, type: !3966, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !33)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!30, !30, !103, !141}
!3968 = !DILocalVariable(name: "category", arg: 1, scope: !3965, file: !284, line: 154, type: !30)
!3969 = !DILocation(line: 154, column: 23, scope: !3965)
!3970 = !DILocalVariable(name: "buf", arg: 2, scope: !3965, file: !284, line: 154, type: !103)
!3971 = !DILocation(line: 154, column: 39, scope: !3965)
!3972 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3965, file: !284, line: 154, type: !141)
!3973 = !DILocation(line: 154, column: 51, scope: !3965)
!3974 = !DILocation(line: 159, column: 37, scope: !3965)
!3975 = !DILocation(line: 159, column: 47, scope: !3965)
!3976 = !DILocation(line: 159, column: 52, scope: !3965)
!3977 = !DILocation(line: 159, column: 10, scope: !3965)
!3978 = !DILocation(line: 159, column: 3, scope: !3965)
!3979 = distinct !DISubprogram(name: "setlocale_null", scope: !284, file: !284, line: 186, type: !3980, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !33)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!6, !30}
!3982 = !DILocalVariable(name: "category", arg: 1, scope: !3979, file: !284, line: 186, type: !30)
!3983 = !DILocation(line: 186, column: 21, scope: !3979)
!3984 = !DILocation(line: 189, column: 35, scope: !3979)
!3985 = !DILocation(line: 189, column: 10, scope: !3979)
!3986 = !DILocation(line: 189, column: 3, scope: !3979)
!3987 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !286, file: !286, line: 35, type: !3980, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !33)
!3988 = !DILocalVariable(name: "category", arg: 1, scope: !3987, file: !286, line: 35, type: !30)
!3989 = !DILocation(line: 35, column: 30, scope: !3987)
!3990 = !DILocalVariable(name: "result", scope: !3987, file: !286, line: 37, type: !6)
!3991 = !DILocation(line: 37, column: 15, scope: !3987)
!3992 = !DILocation(line: 37, column: 35, scope: !3987)
!3993 = !DILocation(line: 37, column: 24, scope: !3987)
!3994 = !DILocation(line: 62, column: 10, scope: !3987)
!3995 = !DILocation(line: 62, column: 3, scope: !3987)
!3996 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !286, file: !286, line: 66, type: !3966, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !33)
!3997 = !DILocalVariable(name: "category", arg: 1, scope: !3996, file: !286, line: 66, type: !30)
!3998 = !DILocation(line: 66, column: 32, scope: !3996)
!3999 = !DILocalVariable(name: "buf", arg: 2, scope: !3996, file: !286, line: 66, type: !103)
!4000 = !DILocation(line: 66, column: 48, scope: !3996)
!4001 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3996, file: !286, line: 66, type: !141)
!4002 = !DILocation(line: 66, column: 60, scope: !3996)
!4003 = !DILocalVariable(name: "result", scope: !3996, file: !286, line: 111, type: !6)
!4004 = !DILocation(line: 111, column: 15, scope: !3996)
!4005 = !DILocation(line: 111, column: 49, scope: !3996)
!4006 = !DILocation(line: 111, column: 24, scope: !3996)
!4007 = !DILocation(line: 113, column: 7, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3996, file: !286, line: 113, column: 7)
!4009 = !DILocation(line: 113, column: 14, scope: !4008)
!4010 = !DILocation(line: 113, column: 7, scope: !3996)
!4011 = !DILocation(line: 116, column: 11, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !286, line: 116, column: 11)
!4013 = distinct !DILexicalBlock(scope: !4008, file: !286, line: 114, column: 5)
!4014 = !DILocation(line: 116, column: 19, scope: !4012)
!4015 = !DILocation(line: 116, column: 11, scope: !4013)
!4016 = !DILocation(line: 120, column: 9, scope: !4012)
!4017 = !DILocation(line: 120, column: 16, scope: !4012)
!4018 = !DILocation(line: 121, column: 7, scope: !4013)
!4019 = !DILocalVariable(name: "length", scope: !4020, file: !286, line: 125, type: !141)
!4020 = distinct !DILexicalBlock(scope: !4008, file: !286, line: 124, column: 5)
!4021 = !DILocation(line: 125, column: 14, scope: !4020)
!4022 = !DILocation(line: 125, column: 31, scope: !4020)
!4023 = !DILocation(line: 125, column: 23, scope: !4020)
!4024 = !DILocation(line: 126, column: 11, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4020, file: !286, line: 126, column: 11)
!4026 = !DILocation(line: 126, column: 20, scope: !4025)
!4027 = !DILocation(line: 126, column: 18, scope: !4025)
!4028 = !DILocation(line: 126, column: 11, scope: !4020)
!4029 = !DILocation(line: 128, column: 19, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4025, file: !286, line: 127, column: 9)
!4031 = !DILocation(line: 128, column: 24, scope: !4030)
!4032 = !DILocation(line: 128, column: 32, scope: !4030)
!4033 = !DILocation(line: 128, column: 39, scope: !4030)
!4034 = !DILocation(line: 128, column: 11, scope: !4030)
!4035 = !DILocation(line: 129, column: 11, scope: !4030)
!4036 = !DILocation(line: 133, column: 15, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !286, line: 133, column: 15)
!4038 = distinct !DILexicalBlock(scope: !4025, file: !286, line: 132, column: 9)
!4039 = !DILocation(line: 133, column: 23, scope: !4037)
!4040 = !DILocation(line: 133, column: 15, scope: !4038)
!4041 = !DILocation(line: 138, column: 23, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4037, file: !286, line: 134, column: 13)
!4043 = !DILocation(line: 138, column: 28, scope: !4042)
!4044 = !DILocation(line: 138, column: 36, scope: !4042)
!4045 = !DILocation(line: 138, column: 44, scope: !4042)
!4046 = !DILocation(line: 138, column: 15, scope: !4042)
!4047 = !DILocation(line: 139, column: 15, scope: !4042)
!4048 = !DILocation(line: 139, column: 19, scope: !4042)
!4049 = !DILocation(line: 139, column: 27, scope: !4042)
!4050 = !DILocation(line: 139, column: 32, scope: !4042)
!4051 = !DILocation(line: 140, column: 13, scope: !4042)
!4052 = !DILocation(line: 141, column: 11, scope: !4038)
!4053 = !DILocation(line: 145, column: 1, scope: !3996)
